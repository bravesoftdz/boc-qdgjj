unit untUtil;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus, ComCtrls, ToolWin, StdCtrls,
  ExtCtrls, ADODB, DateUtils, scExcelExport, FileCtrl, ShellApi, UntMain;

//log & confirm
function sysconfirm(msg: String): Boolean;
procedure syserror(msg: String);
procedure sysinfo(msg: String);
procedure errorlog(msg: String);

//DB
procedure opensql(sqlstr: String; AQ: TADOQuery);
procedure execsql(sqlstr: String;exceptAbort:boolean=true);
function DBS(value: String): String;

//String & change
//人民币小写转大写
function Changdx(mmje: Double): String;
//获得姓名中的姓
function getLastName(name: String): String;
//获得姓名中的名
function getFirstName(name: String): String;


//file io
function DelDirectory(const Source: string): boolean;
function getDirectoryFiles(path:String):TStrings;

//tools
//DBGRID导EXCEL
procedure exportDBGridtoXLS(DBGrid:TDBGrid; exportTitle:Boolean;
  exportExistsFile:String;exportBeginRow:Integer;exportAllFields:Boolean);
//调用外部程序并等待它执行结束
function WinExecExW(cmd, workdir: pchar; visiable: integer): DWORD;

implementation

function sysconfirm(msg: String): Boolean;
begin
  result := Application.MessageBox(PChar(msg),
    PChar('提示'),MB_YESNO+MB_ICONINFORMATION) = IDYES;
end;

procedure syserror(msg: String);
begin
  Application.MessageBox(PChar(msg),PChar('.'),MB_OK+MB_ICONSTOP);
end;

procedure sysinfo(msg: String);
begin
  Application.MessageBox(PChar(msg),PChar('.'),MB_OK+MB_ICONInformation);
end;

procedure errorlog(msg: String);
var f:TextFile;
FileName:String;
begin
    FileName := ExtractFilePath(Application.ExeName)+'error.log';

    if not FileExists(FileName) then
        CreateFile(PChar(FileName),0,FILE_SHARE_WRITE,nil,CREATE_NEW,FILE_ATTRIBUTE_NORMAL,0);
    try
        assignFile(f, FileName);
        append(f);
        Writeln(f, FormatDateTime('yyyy-mm-dd hh:mm:ss', now)+'   '+msg);
    finally
        closeFile(f);
    end;
end;

procedure opensql(sqlstr: String; AQ: TADOQuery);
begin
    try
        AQ.Close;
        AQ.SQL.Text := sqlstr;
        AQ.Open;
    except
        on E: Exception do begin
            syserror('打开数据时发生错误!');
            errorlog('[error:query]'+sqlstr+#13#10+E.Message);
            abort;
        end;
    end;
end;

procedure execsql(sqlstr: String; exceptAbort:boolean=true);
begin
    try
        FrmMain.AQExec.SQL.Text := sqlstr;
        FrmMain.AQExec.ExecSQL;
    except
        on E: Exception do begin
            errorlog('[error:update]'+sqlstr+#13#10+E.Message);
            if exceptAbort then begin
              syserror('执行更新时发生错误!');
              abort;
            end;
        end;
    end;
end;

function DBS(value:String): String;
begin
  value := StringReplace(value, '`','', [rfReplaceAll]);
  value := StringReplace(value, '''','''''', [rfReplaceAll]);
  result := value;
end;


function Changdx(mmje: Double): String;
const s1: String = '零壹贰叁肆伍陆柒捌玖';
s2: String = '分角元拾佰仟万拾佰仟亿拾佰仟万';
var s, dx: String; i, Len: Integer; 
function StrTran(const S, S1, S2: String): String;
begin
Result := StringReplace(S, S1, S2, [rfReplaceAll]);
end;
begin
  if mmje < 0 then begin dx := '负'; mmje := -mmje; end;
  s := Format('%.0f', [mmje*100]); Len := Length(s);
  for i := 1 to Len do dx := dx + Copy(s1, (Ord(s[i]) - Ord('0'))*2 + 1, 2) + Copy(s2, (Len - i)*2 + 1, 2);
  dx := StrTran(StrTran(StrTran(StrTran(StrTran(dx, '零仟', '零'), '零佰', '零'), '零拾', '零'), '零角', '零'), '零分', '整');
  dx := StrTran(StrTran(StrTran(StrTran(StrTran(dx, '零零', '零'), '零零', '零'), '零亿', '亿'), '零万', '万'), '零元', '元');
  if dx = '整' then Result := '零元整' else Result := StrTran(StrTran(dx, '亿万', '亿'), '零整', '整');
end;


function DelDirectory(const Source: string): boolean;
var
    fo: TSHFILEOPSTRUCT;
begin
    FillChar(fo, SizeOf(fo), 0);
    with fo do
    begin
      Wnd    := 0;
      wFunc := FO_DELETE;
      pFrom := PChar(Source + #0);
      pTo    := #0#0;
      fFlags := FOF_NOCONFIRMATION + FOF_SILENT;
    end;
    Result := (SHFileOperation(fo) = 0);
end;

function getDirectoryFiles(path:String):TStrings;
var
  SearchRec:TSearchRec;
  found:integer;
begin
  result := TStringList.Create;
  found:=FindFirst(path+'\*.*',faAnyFile,SearchRec);
  while found=0 do begin
    if  (SearchRec.Name<>'.') and  (SearchRec.Name<>'..') and (SearchRec.Attr<>faDirectory) then
    begin
      result.Add(SearchRec.Name);
    end;
    found:=FindNext(SearchRec);
  end;
  FindClose(SearchRec);
end;

procedure exportDBGridtoXLS(DBGrid:TDBGrid; exportTitle:Boolean;
  exportExistsFile:String;exportBeginRow:Integer;exportAllFields:Boolean);
function getCell(row, col: Integer): String;
var icol:Integer;
begin
  result := '';
  icol := col;
  //row col 1 base
  while icol>0 do begin

    if icol>26 then
      result := result+'A'
    else
      result := result+chr(ord('A')+icol-1);
    icol := icol-26;

  end;
  result := result+InttoStr(row);

end;
var

sd:TSaveDialog;
exportfile :String;
scEE:TscExcelExport;
i, irow:Integer;
cell:String;
begin

  //定义输出文件
  if exportExistsFile = '' then begin
    sd := TSaveDialog.Create(nil);
    sd.DefaultExt := '.xls';
    sd.Filter := 'Excel Files|*.xls|All Files|*.*';
    if sd.Execute then begin
      exportfile := sd.FileName;
      sd.Free;
    end else begin
      sd.Free;
      exit;
    end;

  end else
    exportfile := exportExistsFile;
    
  scEE := TscExcelExport.Create(nil);
  try
    //初始化输出控件

    scEE.LoadDefaultProperties;
    scEE.ExcelVisible:=false;
    scEE.ConnectTo:=ctNewExcel;
    if exportExistsFile<> '' then
      scEE.FileName := exportExistsFile;
    scEE.WorksheetName:='Sheet1';
    scEE.Connect;
    //从第X行开始输出
    irow := 1+exportBeginRow;
    //输出标题
    if exportTitle then begin
      for i:= 0 to DBGrid.Columns.Count-1 do begin
        if (DBGrid.Columns[i].Visible or exportAllFields) then begin
          cell := getCell(irow, i+1);
          scEE.ExcelWorkSheet.Range[cell,cell].Value := DBGrid.Columns[i].Title.Caption;
        end;
      end;
      inc(irow);
    end;


    //输出内容
    DBGrid.DataSource.DataSet.First;
    DBGrid.DataSource.DataSet.DisableControls;
    while not DBGrid.DataSource.DataSet.Eof do begin
       for i:= 0 to DBGrid.Columns.Count-1 do begin
        if (DBGrid.Columns[i].Visible or exportAllFields) then begin
          cell := getCell(irow, i+1);
          scEE.ExcelWorkSheet.Range[cell,cell].Value :=
            DBGrid.DataSource.DataSet.FieldByName(DBGrid.Columns[i].FieldName).AsString;
        end;
      end;
      DBGrid.DataSource.DataSet.Next;
      inc(irow);
    end;
    DBGrid.DataSource.DataSet.EnableControls;

    scEE.SaveAs(exportfile,ffxls);
    scEE.Disconnect;
    showmessage('已经输出完毕！');
  finally
    scEE.Free;
  end;
end;


Function WinExecExW(cmd,workdir:pchar;visiable:integer):DWORD;
var
StartupInfo:TStartupInfo;
ProcessInfo:TProcessInformation;
begin
  FillChar(StartupInfo,SizeOf(StartupInfo),#0);
  StartupInfo.cb:=SizeOf(StartupInfo);
  StartupInfo.dwFlags:=STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow:=visiable;
  if not CreateProcess(nil,cmd,nil,nil,false,Create_new_console or Normal_priority_class,nil,nil,StartupInfo,ProcessInfo) then
    result:=0
  else
  begin
    waitforsingleobject(processinfo.hProcess,INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess,result);
    result := 1;
  end;
end;

//获得姓名中的姓
function getLastName(name: String): String;
begin
  if (length(name) > 6) then result := copy(name, 1,4)
  else result := copy(name, 1,2);
end;

//获得姓名中的名
function getFirstName(name: String): String;
begin
  if (length(name) > 6) then result := copy(name, 5, length(name))
  else result := copy(name, 3, length(name));
end;


end.

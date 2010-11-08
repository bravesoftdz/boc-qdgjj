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
//�����Сдת��д
function Changdx(mmje: Double): String;
//��������е���
function getLastName(name: String): String;
//��������е���
function getFirstName(name: String): String;


//file io
function DelDirectory(const Source: string): boolean;
function getDirectoryFiles(path:String):TStrings;

//tools
//DBGRID��EXCEL
procedure exportDBGridtoXLS(DBGrid:TDBGrid; exportTitle:Boolean;
  exportExistsFile:String;exportBeginRow:Integer;exportAllFields:Boolean);
//�����ⲿ���򲢵ȴ���ִ�н���
function WinExecExW(cmd, workdir: pchar; visiable: integer): DWORD;

implementation

function sysconfirm(msg: String): Boolean;
begin
  result := Application.MessageBox(PChar(msg),
    PChar('��ʾ'),MB_YESNO+MB_ICONINFORMATION) = IDYES;
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
            syserror('������ʱ��������!');
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
              syserror('ִ�и���ʱ��������!');
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
const s1: String = '��Ҽ��������½��ƾ�';
s2: String = '�ֽ�Ԫʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��';
var s, dx: String; i, Len: Integer; 
function StrTran(const S, S1, S2: String): String;
begin
Result := StringReplace(S, S1, S2, [rfReplaceAll]);
end;
begin
  if mmje < 0 then begin dx := '��'; mmje := -mmje; end;
  s := Format('%.0f', [mmje*100]); Len := Length(s);
  for i := 1 to Len do dx := dx + Copy(s1, (Ord(s[i]) - Ord('0'))*2 + 1, 2) + Copy(s2, (Len - i)*2 + 1, 2);
  dx := StrTran(StrTran(StrTran(StrTran(StrTran(dx, '��Ǫ', '��'), '���', '��'), '��ʰ', '��'), '���', '��'), '���', '��');
  dx := StrTran(StrTran(StrTran(StrTran(StrTran(dx, '����', '��'), '����', '��'), '����', '��'), '����', '��'), '��Ԫ', 'Ԫ');
  if dx = '��' then Result := '��Ԫ��' else Result := StrTran(StrTran(dx, '����', '��'), '����', '��');
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

  //��������ļ�
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
    //��ʼ������ؼ�

    scEE.LoadDefaultProperties;
    scEE.ExcelVisible:=false;
    scEE.ConnectTo:=ctNewExcel;
    if exportExistsFile<> '' then
      scEE.FileName := exportExistsFile;
    scEE.WorksheetName:='Sheet1';
    scEE.Connect;
    //�ӵ�X�п�ʼ���
    irow := 1+exportBeginRow;
    //�������
    if exportTitle then begin
      for i:= 0 to DBGrid.Columns.Count-1 do begin
        if (DBGrid.Columns[i].Visible or exportAllFields) then begin
          cell := getCell(irow, i+1);
          scEE.ExcelWorkSheet.Range[cell,cell].Value := DBGrid.Columns[i].Title.Caption;
        end;
      end;
      inc(irow);
    end;


    //�������
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
    showmessage('�Ѿ������ϣ�');
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

//��������е���
function getLastName(name: String): String;
begin
  if (length(name) > 6) then result := copy(name, 1,4)
  else result := copy(name, 1,2);
end;

//��������е���
function getFirstName(name: String): String;
begin
  if (length(name) > 6) then result := copy(name, 5, length(name))
  else result := copy(name, 3, length(name));
end;


end.

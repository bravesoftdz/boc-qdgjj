unit UntMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Menus, ComCtrls, ToolWin, StdCtrls,
  ExtCtrls, ADODB, ImgList, untEdt, Registry, DateUtils, scExcelExport,
  inifiles, xmldom, XMLIntf, msxmldom, XMLDoc, FileCtrl, ShellApi;

type
  TFrmMain = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DSList: TDataSource;
    AQList: TADOQuery;
    Panel1: TPanel;
    Label2: TLabel;
    EdtName: TEdit;
    Button1: TButton;
    Button2: TButton;
    ImageList1: TImageList;
    ToolButton3: TToolButton;
    AQExec: TADOQuery;
    ADOConnection1: TADOConnection;
    AQOpen: TADOQuery;
    AQXiangMu: TADOQuery;
    DSXiangMu: TDataSource;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    cd1: TDateTimePicker;
    cd2: TDateTimePicker;
    PageControl1: TPageControl;                  
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DSCXList: TDataSource;
    AQCXList: TADOQuery;
    DBGridCX: TDBGrid;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    SaveDialog1: TSaveDialog;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label3: TLabel;
    CBBJingBanRen: TComboBox;
    PopupMenu1: TPopupMenu;
    mnew1: TMenuItem;
    mnew2: TMenuItem;
    mnew3: TMenuItem;
    mnew4: TMenuItem;
    AQQiTaZhengXin: TADOQuery;
    DSQiTaZhengXin: TDataSource;
    mnew5: TMenuItem;
    cb: TCheckBox;
    MainMenu1: TMainMenu;
    N11: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    N33: TMenuItem;
    N6: TMenuItem;
    AQCXListid: TIntegerField;
    AQCXListmainid: TWideStringField;
    AQCXListinputdate: TWideStringField;
    AQCXListDSDesigner: TWideStringField;
    AQCXListDSDesigner2: TWideStringField;
    AQCXListDSDesigner3: TWideStringField;
    AQCXListDSDesigner4: TWideStringField;
    AQCXListDSDesigner5: TWideStringField;
    AQCXListDSDesigner6: TWideStringField;
    AQCXListDSDesigner7: TWideStringField;
    AQCXListDSDesigner8: TWideStringField;
    AQCXListDSDesigner9: TWideStringField;
    AQCXListDSDesigner10: TWideStringField;
    AQCXListDSDesigner11: TWideStringField;
    AQCXListDSDesigner12: TWideStringField;
    AQCXListDSDesigner13: TWideStringField;
    AQCXListxh: TStringField;
    N2: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    TabSheet7: TTabSheet;
    N21: TMenuItem;
    N22: TMenuItem;
    TabSheet8: TTabSheet;
    DBGridList: TDBGrid;
    N23: TMenuItem;
    N24: TMenuItem;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    scEE: TscExcelExport;
    od: TOpenDialog;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    PMPrintEmpty: TPopupMenu;
    N26: TMenuItem;
    N27: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    ToolButton15: TToolButton;
    N25: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N141: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    PMExportEmpty: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    ToolButton16: TToolButton;
    odDir: TOpenDialog;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    Label1: TLabel;
    CBBState: TComboBox;
    Label4: TLabel;
    CBBProxy: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AQCXListCalcFields(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure mnew1Click(Sender: TObject);
    procedure mnew2Click(Sender: TObject);
    procedure mnew3Click(Sender: TObject);
    procedure mnew4Click(Sender: TObject);
    procedure DBGridCXDblClick(Sender: TObject);
    procedure mnew5Click(Sender: TObject);
    procedure cbClick(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);

    procedure PrintEmptyClick(Sender: TObject);
    procedure ExportEmptyClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure DBGridListTitleClick(Column: TColumn);
    procedure DBGridCXTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    login:Boolean;

    //窗体消息传递
    clienthandle:THandle;
    lastfindname, lastfindshenfenzheng:String;
    procedure Mymessage(var t:TWmCopyData);message WM_COPYDATA;
    procedure SendMsg(msg:String; frmcap: string='');

    procedure conn(dataFile:String='');

    procedure opensql(sqlstr: String; AQ: TADOQuery);
    procedure execsql(sqlstr: String;exceptAbort:boolean=true);
    procedure errorlog(msg: String);

    function loadStringsFromDict(leixing: String): String;

    //find
    function find(name, shenfenzheng: String): String;
    function importfind(name, shenfenzheng: String): String;
    function import(msg: String): String;

    procedure importFromXML(fileName:String='');

    //自动更新数据库
    procedure updateDB();
    //明细，procedure 太长拆出
    procedure updateDB20091130;
    procedure updateDB20091209;
    procedure updateDB20091221;
    procedure updateDB20091230;
    procedure updateDB20100509;
    //创建字典
    procedure initDict();
    //调用外部程序并等待它执行结束
    function WinExecExW(cmd, workdir: pchar; visiable: integer): DWORD;
  end;
  function sysconfirm(msg: String): Boolean;
  procedure syserror(msg: String);
  procedure sysinfo(msg: String);
  //DBGRID导EXCEL
  procedure exportDBGridtoXLS(DBGrid:TDBGrid; exportTitle:Boolean;
    exportExistsFile:String;exportBeginRow:Integer;exportAllFields:Boolean);
  //人民币小写转大写
  function Changdx(mmje: Double): String;
  function DelDirectory(const Source: string): boolean;
  function getDirectoryFiles(path:String):TStrings;

  function DBS(value: String): String;

var
  FrmMain: TFrmMain;
  FrmEdt :TFrmEdt;
implementation

uses  UntLogin, reg, UntXiangMu, untExplorer, UntQiTaZhengXin, untSysSet,
  untDict, wordtest, UntEmailData, UntUpload, UntUserLogin, UntUser;

{$R *.dfm}

procedure TFrmMain.opensql(sqlstr: String; AQ: TADOQuery);
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

procedure TFrmMain.execsql(sqlstr: String; exceptAbort:boolean=true);
begin
    try
        AQExec.SQL.Text := sqlstr;
        AQExec.ExecSQL;
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

procedure TFrmMain.errorlog(msg: String);
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

function DBS(value:String): String;
begin
  value := StringReplace(value, '`','', [rfReplaceAll]);
  value := StringReplace(value, '''','''''', [rfReplaceAll]);
  result := value;
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

procedure TFrmMain.Button1Click(Sender: TObject);
var sqlstr,name, jingbanren, state, proxy:String;
begin
  name := EdtName.Text;
  jingbanren := CBBJingBanRen.Text;
  state := CBBState.Text;
  proxy := CBBProxy.Text;
  sqlstr :='select id, inputdate, state, proxy, jiekuanrenxingming, hetonghao, daikuanjine, qixian, diyalv,'+
            'jiekuanshijian, jiekuanrencunzhezhanghao, pinggujigoumingcheng, fangwudiliweizhi,'+
            'jiekuanrengongzuodanwei, jiekuanrenjiatingdianhua,'+
            'xiangmubianhao, dailiren, jiekuanzhonglei from viewall '+
          ' where 1=1 ';
  if EdtName.Text <> '' then
    sqlstr := sqlstr+ ' and ((jiekuanrenxingming like ''%'+DBS(name)+'%'') or '
              +'(jiekuanrenpeiouxingming like ''%'+DBS(name)+'%'') or '
              +'(shoufangrenxingming like ''%'+DBS(name)+'%'') or '
              +'(fangchangongyourenxingming like ''%'+DBS(name)+'%''))';
  if CBBjingBanren.Text <>'' then
    sqlstr := sqlstr+ ' and dailiren like ''%'+DBS(jingbanren)+'%''';
  if CBBState.Text <>'' then
    sqlstr := sqlstr+ ' and state = '''+DBS(state)+'''';
  if CBBProxy.Text <>'' then
    sqlstr := sqlstr+ ' and proxy like ''%'+DBS(proxy)+'%''';
  if cb.Checked then 
    sqlstr := sqlstr+ ' and inputdate>='''+
          FormatDateTime('yyyy-mm-dd', cd1.Date)+' 00:00:00'' and inputdate<='''+
          FormatDateTime('yyyy-mm-dd', cd2.Date)+' 23:59:59''';
  sqlstr := sqlstr +' order by hetonghao desc';
  opensql(sqlstr, AQList);
  sqlstr := 'select * from 征信查询 where 1=1 ';
  if EdtName.Text <> '' then
    sqlstr := sqlstr+ ' and 查询申请人姓名 like ''%'+DBS(name)+'%''';
  if cb.Checked then 
    sqlstr := sqlstr+ ' and inputdate>='''+
          FormatDateTime('yyyy-mm-dd', cd1.Date)+' 00:00:00'' and inputdate<='''+
          FormatDateTime('yyyy-mm-dd', cd2.Date)+' 23:59:59''';
  sqlstr := sqlstr+'order by 查询时间, id';
  opensql(sqlstr, AQCXList);
  PageControl1Change(self);
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

procedure TFrmMain.conn(dataFile:String='');
begin
  ADOConnection1.Connected := false;
  if (dataFile = '') then begin
    ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source="' + ExtractFilePath(Application.ExeName) + '\data.mdb";Persist Security Info=False';
  end else begin
    ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source="' + dataFile + '";Persist Security Info=False';
  end;
  ADOConnection1.Connected := true;
end;

procedure TFrmMain.ToolButton2Click(Sender: TObject);
begin
  if not AQList.Eof then begin
    FrmEdt := TFrmEdt.Create(self);
    FrmEdt.edit(AQList.FieldByName('id').AsString);
  end;
end;

procedure TFrmMain.Button2Click(Sender: TObject);
var sqlstr:String;
begin
  sqlstr :='select id, inputdate, state, proxy, jiekuanrenxingming, hetonghao, daikuanjine, qixian, diyalv,'+
            'jiekuanshijian, jiekuanrencunzhezhanghao, pinggujigoumingcheng, fangwudiliweizhi,'+
            'jiekuanrengongzuodanwei, jiekuanrenjiatingdianhua,'+
            'xiangmubianhao, dailiren,jiekuanzhonglei from viewall '+
          ' order by hetonghao desc';
  opensql(sqlstr, AQList);
  sqlstr := 'select * from 征信查询 order by 查询时间, id';
  opensql(sqlstr, AQCXList);
  PageControl1Change(self);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  checkreg();
  login := false;
  conn;
  updateDB;
  initDict;
end;

procedure TFrmMain.ToolButton3Click(Sender: TObject);
var sqlstr:String;
begin
  if (not (DBGridList.DataSource.DataSet.Eof and DBGridList.DataSource.DataSet.bof) ) and sysconfirm('确定要删除么?') then  begin
    //只删除main中的记录 以防误删
    {sqlstr := 'delete from t_daikuan where mainid='+AQList.FieldByName('id').AsString;
    FrmMain.execsql(sqlstr);
    sqlstr := 'delete from t_fangwu where mainid='+AQList.FieldByName('id').AsString;
    FrmMain.execsql(sqlstr);
    sqlstr := 'delete from t_jiekuanren where mainid='+AQList.FieldByName('id').AsString;
    FrmMain.execsql(sqlstr);    }
    sqlstr := 'delete from t_main where id='+AQList.FieldByName('id').AsString;
    FrmMain.execsql(sqlstr);
    AQList.Requery();
  end;
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin  
  if not FrmUser.logon then FrmUserLogin.ShowModal;
end;

procedure TFrmMain.DBGrid1DblClick(Sender: TObject);
begin
  ToolButton2Click(self);
end;


procedure TFrmMain.ToolButton5Click(Sender: TObject);
begin
  close;
end;

procedure TFrmMain.N4Click(Sender: TObject);
begin
  FrmXiangMu.ShowModal;
end;



procedure TFrmMain.FormShow(Sender: TObject);
begin
  cd2.DateTime := now;
  cd1.DateTime := IncDay(now ,-30);
  PageControl1.ActivePageIndex := 0;
  if not FrmMain.AQXiangMu.Active then
    FrmMain.AQXiangMu.Active := true;
  if not FrmMain.AQQiTaZhengXin.Active then
    FrmMain.AQQiTaZhengXin.Active := true;
end;

procedure TFrmMain.AQCXListCalcFields(DataSet: TDataSet);
begin
  if AQCXList.RecNo<> -1 then
    AQCXList.FieldByName('xh').AsInteger := AQCXList.RecNo
  else
    AQCXList.FieldByName('xh').AsInteger := 1;
end;

procedure TFrmMain.N3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmMain.N6Click(Sender: TObject);
begin
  showmessage('中行市南分行住房贷款管理系统 ver091224 by hety');
end;

procedure TFrmMain.ToolButton6Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 7 then begin
    if not AQCXList.Active then
      showmessage('请先查询再导出')
    else begin
      SaveDialog1.FileName := '个人信用信息基础数据库查询台账.xls';
      if SaveDialog1.Execute then begin
        copyfile(PCHAR(ExtractFilePath(Application.ExeName)+'\templet\个人信用信息基础数据库查询台账.xls'),
          PCHAR(SaveDialog1.FileName),false);
        UntMain.exportDBGridtoXLS(DBGridCX,false, SaveDialog1.FileName,4,false);
      end;
    end;
  end else begin
    if not AQList.Active then
      showmessage('请先查询再导出')
    else begin
      SaveDialog1.FileName := pagecontrol1.activepage.caption+'.xls';
      if SaveDialog1.Execute then begin
        copyfile(PCHAR(ExtractFilePath(Application.ExeName)+'\templet\贷款记录.xls'),
          PCHAR(SaveDialog1.FileName),false);

        UntMain.exportDBGridtoXLS(DBGridList,false, SaveDialog1.FileName,1,true)
      end;
    end;
  end;
end;

procedure TFrmMain.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex = 7 then
    DBGridCX.BringToFront
  else
    DBGridList.BringToFront;
  if pagecontrol1.ActivePageIndex<6 then begin
    AQList.Filter := 'jiekuanzhonglei = '''+pagecontrol1.ActivePage.Caption+'''';
    AQList.Filtered := true;
  end else begin
    AQList.Filtered := false;
  end; 
end;

procedure TFrmMain.mnew1Click(Sender: TObject);
begin
    FrmEdt := TFrmEdt.Create(self);
    FrmEdt.new(1);
end;

procedure TFrmMain.mnew2Click(Sender: TObject);
begin
  FrmEdt := TFrmEdt.Create(self);
  FrmEdt.new(2);
end;

procedure TFrmMain.mnew3Click(Sender: TObject);
begin
  FrmEdt := TFrmEdt.Create(self);
  FrmEdt.new(3);
end;

procedure TFrmMain.mnew4Click(Sender: TObject);
begin
  FrmEdt := TFrmEdt.Create(self);
  FrmEdt.new(4);
end;

procedure TFrmMain.DBGridCXDblClick(Sender: TObject);
begin
  if not AQCXList.Eof then begin
    if AQCXList.FieldByName('mainid').AsString <> '' then begin
      FrmEdt := TFrmEdt.Create(self);
      FrmEdt.edit(AQCXList.FieldByName('mainid').AsString);
    end else if AQCXList.FieldByName('id').AsString <> '-1' then begin
      FrmQiTaZhengXin.openandlocate(AQCXList.FieldByName('id').AsString);
    end;
  end;
end;

procedure TFrmMain.mnew5Click(Sender: TObject);
begin
  FrmQiTaZhengXin.ShowModal;
end;

procedure TFrmMain.cbClick(Sender: TObject);
begin
  cd1.Enabled := cb.Checked;
  cd2.Enabled := cb.Checked;
end;

procedure TFrmMain.Mymessage(var t: TWmCopyData);
var msg:String;
begin
  clienthandle := t.From;
  //memo1.lines.add(trim(StrPas(t.CopyDataStruct^.lpData)));
  msg := trim(StrPas(t.CopyDataStruct^.lpData));
  if copy(msg,1,4)='find' then begin
    msg := find(copy(msg,pos(':',msg)+1,pos(',',msg)-pos(':',msg)-1),
                copy(msg,pos(',',msg)+1,length(msg)));
  end else if copy(msg,1,10)='importfind' then begin
    msg := importfind(copy(msg,pos(':',msg)+1,pos(',',msg)-pos(':',msg)-1),
                copy(msg,pos(',',msg)+1,length(msg)));
  end else if copy(msg,1,6)='import' then begin
    msg := import(msg);
  end;
  sendmsg(msg);
end;

function TFrmMain.import(msg:String):String;
var sqlstr,fn, mainid:String;
msgs:TStrings;
begin
  mainid := '';

  fn := ExtractFilePath(Application.ExeName)+'tmp.ini';
  msgs := TStringList.Create;
  msgs.Text := msg;
  msgs[0]:= '[import]';
  msgs.SaveToFile(fn);
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if lastfindname <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(lastfindname)+'''';
  if lastfindshenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(lastfindshenfenzheng)+'''';
  opensql(sqlstr ,AQOpen);

  if (AQOpen.eof and AQOpen.bof) then begin
    mainid := '';
  end else begin
    mainid := AQOpen.FieldByName('mainid').AsString;
  end;
  
  FrmEdt := TFrmEdt.Create(self);
  if mainid = '' then
    FrmEdt.new(0)
  else
    FrmEdt.edit(mainid, false);

    //CCAS_PLAATRN.CBICUSNM 姓名
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID 性别
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA 出生日期
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT 现居住时间
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY 证件类别
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO 证件号码
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD 通讯地址
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD 邮政编码
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO 手机号码
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD 现住地址
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL 单位电话
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL 其它电话
    //CCAS_PLAATRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK 教育程度
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS 居住状况
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA 参加工作时间
    msgs.Add('CCAS_PLAATRN.PERWOKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsString);
    //CCAS_PLAATRN.PERNWKDA 现职年数
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY 单位所属行业
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD 现单位地址
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT 企业注册资本
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA 职 业
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE 职 称
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE 客户户籍
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR 客户特征
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN 月收入
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_PLAATRN.PERHMCAD 信用卡数量
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK 开户银行
    //CCAS_PLAATRN.SALARYACC 工资帐号
    //CCAS_PLAATRN.BOCCLIENT 成为BOC客户的时间
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF 银行往来情况
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG 提供任职单位营业执照
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG 购买两套以上住房
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID 房产证
    //CCAS_PLAATRN.HSAGE 楼 龄
    //CCAS_PLAATRN.HSUSESTATUS 物业使用状况
    //CCAS_PLAATRN.HSKIND 物业性质
    //CCAS_PLAATRN.HSUSE 物业用途
    //CCAS_PLAATRN.LINKNM 联系人姓名
    //CCAS_PLAATRN.LINKADDR 性 别
    //CCAS_PLAATRN.LINKCERTY 证件类别
    //CCAS_PLAATRN.LINKCERNO 证件号码
    //CCAS_PLAATRN.LINKHOMAD 联系地址
    //CCAS_PLAATRN.LINKHMTEL 住宅电话
    //CCAS_PLAATRN.LINKMBLNO 手机号码
    //CCAS_PLAATRN.HVTWOHSFLG 提供居留证明
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER 供养人数
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG 关联客户标记
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC 客户来源
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG 是否有违法记录
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   档案上的名字与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的名字与客户提供相符').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   档案上的地址与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的地址与客户提供相符').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   由公安部身份认证中心确认
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('由公安部身份认证中心确认').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    借款人资信情况
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   配偶资信情况
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 目前贷款笔数
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('目前贷款笔数').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 其中中行贷款笔数
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('其中中行贷款笔数').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 总贷款金额
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('总贷款金额').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 未偿贷款余额
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('未偿贷款余额').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 月供
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('月供').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 总欠款
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('总欠款').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 目前欠款期数
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('目前欠款期数').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 两年内欠款最长期数
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('两年内欠款最长期数').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 借记卡数量
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('借记卡数量').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 信用卡数量
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('信用卡数量').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 其中中行信用卡数量
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('其中中行信用卡数量').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 透支额度
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('透支额度').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 未偿还余额
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('未偿还余额').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 本月应还款额
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('本月应还款额').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 逾期金额
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('逾期金额').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 目前逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('目前逾期未还笔数').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 两年内最高逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('两年内最高逾期未还笔数').AsString);
    //CCAS_PERCREDIT.REMARK_1 备注
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('备注').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME 配偶姓名
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY 配偶证件类别
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO 配偶证件号码
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN 配偶月收入
    msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_PLAATRN.FAMILYOTSALARY 家庭其他成员月收入
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT 每月支出合计
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN 家庭总收入
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID 楼盘编号
    //CCAS_RETAILTRAN.HAFHUSNA 楼宇名称
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE 类型
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG 物业状态
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.PRICE 评估价
    msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.LCTBCTNO 购房合同号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE 购房用途
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价


    //5
    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      if pos('组',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY 借款货币
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=人民币');
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    //CCAS_PLAATRN.TMPINT 基准利率
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE 利率浮动值
    //CCAS_PLAATRN.LAFRATVL 利 率
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+frmEdt.ATDaiKuan.FieldByName('lilv').AsString);
    //CCAS_PLAATRN.LAFRATVD 利率调整周期
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER 还款间隔
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD 还款宽限期
    //CCAS_PLAATRN.LAFPACTT 还款帐号类型
    msgs.Add('CCAS_PLAATRN.LAFPACTT=个人结算帐户');
    //CCAS_PLAATRN.LAFPACT 还款帐号
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE 还款日类型
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=不变更还款日');
    //CCAS_PLAATRN.FIRRET 每期固定还款日
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN 首期供款额
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl 抵押率
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE 贷款成数


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
    //CCAS_CCTCBITRN.CBICUSNM_1 联名客户姓名
    msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('联名客户姓名').AsString);
    //CCAS_CCTPERTRN.PEREDUBK_1 最高学历
    msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('最高学历').AsString);
    //CCAS_CCTCBITRN.CBICERTY_1 证件类别
    msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件类别').AsString);
    //CCAS_CCTCBITRN.CBICERNO_1 证件号码
    msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件号码').AsString);
    //CCAS_CCTCBITRN.CBICTADD_1 联系地址
    msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系地址').AsString);
    //CCAS_CCTCBITRN.CBIPSTCD_1 邮政编码
    msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('邮政编码').AsString);
    //CCAS_CCTPERTRN.PEROCCPA_1 职 业
    msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('职业').AsString);
    //CCAS_CCTPERTRN.PERCMPNM_1 工作单位   CCAS_CCTPERTRN.PERCMPNM_1
    msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('工作单位').AsString);
    //CCAS_CCTCBITRN.CBIRID12_1 与主申请人关系
    msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('与主申请人关系').AsString);
    //CCAS_CCTPERTRN.WKIMONIN_1 月收入
    msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('月收入').AsString);
    //CCAS_CCTPERTRN.PERPGRNO_1 联系电话
    msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系电话').AsString);
    //CCAS_CCTPERTRN.PERHMTEL_1 住宅电话
    msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('住宅电话').AsString);
    //CCAS_CCTPERTRN.PERMBLNO_1 手机号码
    msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('手机号码').AsString);
    //CCAS_CCTPERTRN.PERCMTEL_1 单位电话
    msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('单位电话').AsString);
    //CCAS_CCTPERTRN.OTHERTEL_1 其它电话
    msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('其它电话').AsString);
      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
    //CCAS_CCTCTI.IMPADDR_1 楼宇名称
    msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('楼宇名称').AsString);
    //CCAS_CCTCTI.IMPNAME_1 房号/铺号
    msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('房号').AsString);
    //CCAS_CCTCTI.IMPPER_1 权属人
    msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('权属人').AsString);
    //CCAS_CCTCTI.IMPTYPE_1 性质
    msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('性质').AsString);
    //CCAS_CCTCTI.IMPAREA_1 面积
    msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('面积').AsString);
    //CCAS_CCTCTI.LIMYEAR_1 土地使用年限
    msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('土地使用年限').AsString);
    //CCAS_CCTCTI.PRICE_1 权利价值
    msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('权利价值').AsString);
    //CCAS_CCTCTI.ISAUTO_1 权属证类别
    msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证1').AsString);
    //CCAS_CCTCTI.LCTHIDNO_1 权属证
    msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证2').AsString);
    //CCAS_CCTCTI.OTHERTYPE_1 抵押证明 类别
    msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明1').AsString);
    //CCAS_CCTCTI.OTRIGHTNO_1  抵押证明
    msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明2').AsString);
    //CCAS_CCTCTI.INSURENO_1 保险单号
    msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('保险单号').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;
    msg := 'msg已经导入成功!';
    frmedt.Free;
    msgs.Free;
  result := msg;
end;

function TFrmMain.find(name, shenfenzheng:String):String;
var sqlstr, msg, mainid:String;
msgs:TStrings;
begin
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if name <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(name)+'''';
  if shenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(shenfenzheng)+'''';
  opensql(sqlstr ,AQOpen);

  if (AQOpen.eof and AQOpen.bof) then begin
    msg := 'msg系统未找到此人数据。';
  end else begin
    mainid := AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(self);
    FrmEdt.edit(mainid, false);
    //CCAS_PLAATRN.CBICUSNM 姓名
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID 性别
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA 出生日期
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT 现居住时间
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY 证件类别
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO 证件号码
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD 通讯地址
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD 邮政编码
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO 手机号码
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD 现住地址
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL 单位电话
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL 其它电话
    //CCAS_PLAATRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK 教育程度
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS 居住状况
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA 参加工作时间
    try
      msgs.Add('CCAS_PLAATRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.PERNWKDA 现职年数
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY 单位所属行业
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD 现单位地址
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT 企业注册资本
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA 职 业
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE 职 称
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE 客户户籍
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR 客户特征
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN 月收入
    //msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_PLAATRN.PERHMCAD 信用卡数量
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK 开户银行
    //CCAS_PLAATRN.SALARYACC 工资帐号
    //CCAS_PLAATRN.BOCCLIENT 成为BOC客户的时间
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF 银行往来情况
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG 提供任职单位营业执照
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG 购买两套以上住房
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID 房产证
    //CCAS_PLAATRN.HSAGE 楼 龄
    //CCAS_PLAATRN.HSUSESTATUS 物业使用状况
    //CCAS_PLAATRN.HSKIND 物业性质
    //CCAS_PLAATRN.HSUSE 物业用途
    //CCAS_PLAATRN.LINKNM 联系人姓名
    //CCAS_PLAATRN.LINKADDR 性 别
    //CCAS_PLAATRN.LINKCERTY 证件类别
    //CCAS_PLAATRN.LINKCERNO 证件号码
    //CCAS_PLAATRN.LINKHOMAD 联系地址
    //CCAS_PLAATRN.LINKHMTEL 住宅电话
    //CCAS_PLAATRN.LINKMBLNO 手机号码
    //CCAS_PLAATRN.HVTWOHSFLG 提供居留证明
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER 供养人数
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG 关联客户标记
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC 客户来源
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG 是否有违法记录
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   档案上的名字与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的名字与客户提供相符').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   档案上的地址与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的地址与客户提供相符').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   由公安部身份认证中心确认
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('由公安部身份认证中心确认').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    借款人资信情况
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   配偶资信情况
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 目前贷款笔数
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('目前贷款笔数').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 其中中行贷款笔数
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('其中中行贷款笔数').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 总贷款金额
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('总贷款金额').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 未偿贷款余额
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('未偿贷款余额').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 月供
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('月供').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 总欠款
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('总欠款').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 目前欠款期数
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('目前欠款期数').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 两年内欠款最长期数
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('两年内欠款最长期数').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 借记卡数量
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('借记卡数量').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 信用卡数量
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('信用卡数量').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 其中中行信用卡数量
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('其中中行信用卡数量').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 透支额度
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('透支额度').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 未偿还余额
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('未偿还余额').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 本月应还款额
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('本月应还款额').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 逾期金额
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('逾期金额').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 目前逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('目前逾期未还笔数').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 两年内最高逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('两年内最高逾期未还笔数').AsString);
    //CCAS_PERCREDIT.REMARK_1 备注
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('备注').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME 配偶姓名
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY 配偶证件类别
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO 配偶证件号码
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN 配偶月收入
    //msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    if FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString<>'' then
      msgs.Add('CCAS_PLAATRN.SPSMNIN=0');
    //CCAS_PLAATRN.FAMILYOTSALARY 家庭其他成员月收入
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT 每月支出合计
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN 家庭总收入
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID 楼盘编号
    //CCAS_RETAILTRAN.HAFHUSNA 楼宇名称
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE 类型
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG 物业状态
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE 评估价
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO 购房合同号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE 购房用途
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价


    //5
    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      if pos('组',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY 借款货币
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=人民币');
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.TMPINT 基准利率
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE 利率浮动值
    //CCAS_PLAATRN.LAFRATVL 利 率
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+StringReplace(frmEdt.ATDaiKuan.FieldByName('lilv').AsString,'‰','',[rfReplaceAll]));
    //CCAS_PLAATRN.LAFRATVD 利率调整周期
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER 还款间隔
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD 还款宽限期
    //CCAS_PLAATRN.LAFPACTT 还款帐号类型
    msgs.Add('CCAS_PLAATRN.LAFPACTT=个人结算帐户');
    //CCAS_PLAATRN.LAFPACT 还款帐号
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE 还款日类型
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=不变更还款日');
    //CCAS_PLAATRN.FIRRET 每期固定还款日
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN 首期供款额
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl 抵押率
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE 贷款成数


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
      //CCAS_CCTCBITRN.CBICUSNM_1 联名客户姓名
      msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('联名客户姓名').AsString);
      //CCAS_CCTPERTRN.PEREDUBK_1 最高学历
      msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('最高学历').AsString);
      //CCAS_CCTCBITRN.CBICERTY_1 证件类别
      msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件类别').AsString);
      //CCAS_CCTCBITRN.CBICERNO_1 证件号码
      msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件号码').AsString);
      //CCAS_CCTCBITRN.CBICTADD_1 联系地址
      msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系地址').AsString);
      //CCAS_CCTCBITRN.CBIPSTCD_1 邮政编码
      msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('邮政编码').AsString);
      //CCAS_CCTPERTRN.PEROCCPA_1 职 业
      msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('职业').AsString);
      //CCAS_CCTPERTRN.PERCMPNM_1 工作单位   CCAS_CCTPERTRN.PERCMPNM_1
      msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('工作单位').AsString);
      //CCAS_CCTCBITRN.CBIRID12_1 与主申请人关系
      msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('与主申请人关系').AsString);
      //CCAS_CCTPERTRN.WKIMONIN_1 月收入
      msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('月收入').AsString);
      //CCAS_CCTPERTRN.PERPGRNO_1 联系电话
      msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系电话').AsString);
      //CCAS_CCTPERTRN.PERHMTEL_1 住宅电话
      msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('住宅电话').AsString);
      //CCAS_CCTPERTRN.PERMBLNO_1 手机号码
      msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('手机号码').AsString);
      //CCAS_CCTPERTRN.PERCMTEL_1 单位电话
      msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('单位电话').AsString);
      //CCAS_CCTPERTRN.OTHERTEL_1 其它电话
      msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('其它电话').AsString);

      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
      //CCAS_CCTCTI.IMPADDR_1 楼宇名称
      msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('楼宇名称').AsString);
      //CCAS_CCTCTI.IMPNAME_1 房号/铺号
      msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('房号').AsString);
      //CCAS_CCTCTI.IMPPER_1 权属人
      msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('权属人').AsString);
      //CCAS_CCTCTI.IMPTYPE_1 性质
      msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('性质').AsString);
      //CCAS_CCTCTI.IMPAREA_1 面积
      msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('面积').AsString);
      //CCAS_CCTCTI.LIMYEAR_1 土地使用年限
      msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('土地使用年限').AsString);
      //CCAS_CCTCTI.PRICE_1 权利价值
      msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('权利价值').AsString);
      //CCAS_CCTCTI.ISAUTO_1 权属证类别
      msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证1').AsString);
      //CCAS_CCTCTI.LCTHIDNO_1 权属证
      msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证2').AsString);
      //CCAS_CCTCTI.OTHERTYPE_1 抵押证明 类别
      msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明1').AsString);
      //CCAS_CCTCTI.OTRIGHTNO_1  抵押证明
      msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明2').AsString);
      //CCAS_CCTCTI.INSURENO_1 保险单号
      msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('保险单号').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;

    //8
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D101=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D103=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D105=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D106=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D108=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D109=Y');

    msg := msgs.Text;
    frmedt.Free;
    msgs.Free;
    
  end;
  result := msg;
end;

procedure Tfrmmain.SendMsg(msg: string; frmcap: string='');
var
  ds: TCopyDataStruct;
  //hd: THandle;
begin
{     测试程序段
使用该消息涉及一个TcopyDataStruct结构类型的指针。该结构中有三个成员：
dwData 是一个32位的附加参数
cbData 表示要传递的数据区的大小
lpData 表示要传递的数据区的指针
}
  {
  //用查找窗口的方法获得句柄
  if frmcap = '' then begin
    hd := FindWindow (nil, pChar(pluginformname)); // 获得接受窗口的句柄
  end else begin
    //WinExec(pChar(ExtractFilePath(Application.ExeName)+'popmsg.exe'), SW_SHOWNORMAL);

    //hd := FindWindow(nil, pChar(frmcap));
  end;
  
  if hd=0 then exit;   //没找到插件程序 }

  //用接收消息时获得的句柄
  if clienthandle=0 then exit;

  ds.cbData := Length (msg) + 1;
  GetMem (ds.lpData, ds.cbData ); //为传递的数据区分配内存
  StrCopy (ds.lpData, PChar (msg));

  SendMessage (clienthandle, WM_COPYDATA, Application.Handle, Cardinal(@ds)); // 发送WM_COPYDATA消息
  FreeMem(ds.lpData); //释放资源
end;

function TFrmMain.importfind(name, shenfenzheng: String): String;
var sqlstr, msg:String;
//msgs:TStrings;
begin
  lastfindname := name;
  lastfindshenfenzheng := shenfenzheng;
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if name <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(name)+'''';
  if shenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(shenfenzheng)+'''';
  opensql(sqlstr ,AQOpen);
  if (AQOpen.eof and AQOpen.bof) then begin
    msg := 'importfind系统未找到此人数据,要新建吗？';
  end else begin
    msg := 'importfind系统已找到此人数据,要覆盖吗？';
  end;
  result := msg;
end;

procedure TFrmMain.N16Click(Sender: TObject);
begin
  FrmSysset.showmodal;
end;

procedure TFrmMain.N20Click(Sender: TObject);
var frmDict:TfrmDict;
begin
  frmDict:=TfrmDict.Create(self);
  frmDict.ShowModal;
end;

procedure TFrmMain.N21Click(Sender: TObject);
begin
  FrmEdt := TFrmEdt.Create(self);
  FrmEdt.new(5);
end;

procedure TFrmMain.N23Click(Sender: TObject);
begin
    FrmEdt := TFrmEdt.Create(self);
    FrmEdt.new(0);
end;

procedure TFrmMain.importFromXML(fileName:String='');
var
xml: TXMLDocument;
datalist: IXMLNodeList;
node: IXMLNode;
od:TOpenDialog;
i, j:integer;
mainid, sql:String;
files:TStrings;
begin
  files := TStringList.Create;
  if fileName = '' then begin
    od := TOpenDialog.Create(nil);
    try
      od.Filter := '*.gjj';
      od.Options := od.Options + [ofAllowMultiSelect];
      if od.Execute then begin
        files := od.Files;
      end else abort;
    finally
      od.Free;
    end;
  end else begin
    files.add(fileName);
  end;


  for j:= 0 to files.Count -1 do begin
    xml := TXMLDocument.Create(application);
    try
      xml.active := true;
      try
        xml.LoadFromFile(files[j]);
        datalist := xml.DocumentElement.ChildNodes;
        // find t_main
        for i := 0 to datalist.Count - 1 do begin
          node := datalist.Get(i);
          if lowercase(node.NodeName) = 't_main' then begin
            sql := node.NodeValue;
            AQExec.Close;
            AQExec.SQL.Clear;
            AQExec.SQL.Text := sql;
            AQExec.ExecSQL;

            sql := 'select max(id) from t_main';
            AQOpen.Close;
            AQOpen.SQL.Clear;
            AQOpen.SQL.Text := sql;
            AQOpen.Open;
            mainid := AQOpen.Fields[0].AsString;

            break;
          end;
        end;

        //other
        for i := 0 to datalist.Count - 1 do begin
          node := datalist.Get(i);
          if lowercase(node.NodeName) <> 't_main' then begin
            sql := node.NodeValue;

            sql := StringReplace(sql,'$mainid$',mainid,[]);

            if  copy(sql, 1, 6)='insert' then begin
              AQExec.Close;
              AQExec.SQL.Clear;
              AQExec.SQL.Text := sql;
              AQExec.ExecSQL;
            end;
          end;
        end;

      except
        showmessage(files[j]+' - 导入失败，可能是格式错误，请选择正确的导入文件'+#13#10+'导出文件时请使用系统最新版本。');
      end;
    finally
      xml.Free;
    end;
  end;
end;

procedure TFrmMain.ToolButton11Click(Sender: TObject);
begin
  importFromXML;
  showmessage('导入完毕');
end;

procedure TFrmMain.ToolButton12Click(Sender: TObject);
var i:Integer;
xingming, row, ffdate, jingbanren:String;
year, month, day:word;
begin
  jingbanren := CBBJingBanRen.Text;
  showmessage('导出押品台账受查询条件（录入时间，经办人）影响');
  if od.Execute then begin
    try                                                               

      scEE.LoadDefaultProperties;
      scEE.ExcelVisible:=false;
      scEE.ConnectTo:=ctNewExcel;
      scEE.Filename:= od.FileName;
      // Add data to existing worksheet
      scEE.WorksheetName := 'Sheet1';
      scEE.Connect;

      if scEE.ExcelWorkSheet.Range['A2','A2'].Value <> '序号' then begin
        showmessage('文件格式可能不正确,导出取消!');
      end else begin
        for i:= 2 to scEE.ExcelWorkSheet.Rows.Count - 1 do begin
          row := InttoStr(i+1);
          xingming := scEE.ExcelWorkSheet.Range['E'+row,'E'+row].Value;
          if xingming <> '' then begin
            AQOpen.Close;
            AQOpen.SQL.Clear;
            AQOpen.SQL.Text := 'select * from viewall where jiekuanrenxingming = '''+
                              DBS(xingming)+ ''' ';
            if CBBjingBanren.Text <>'' then
              AQOpen.SQL.Text := AQOpen.SQL.Text+ ' and dailiren like ''%'+DBS(jingbanren)+'%''';
            if cb.Checked then
              AQOpen.SQL.Text := AQOpen.SQL.Text+ ' and inputdate>='''+
                FormatDateTime('yyyy-mm-dd', cd1.Date)+' 00:00:00'' and inputdate<='''+
                FormatDateTime('yyyy-mm-dd', cd2.Date)+' 23:59:59''';
            AQOpen.SQL.Text  := AQOpen.SQL.Text +' order by inputdate desc';

            AQOpen.Open;

            if not ((AQOpen.Eof and AQOpen.Bof) or (AQOpen.RecordCount>1))then begin
              try
                //eg:2009.1.5
                ffdate := scEE.ExcelWorkSheet.Range['J'+row,'J'+row].Value;
                //to:2009.1.5+qixian-1
                year := StrtoInt(copy(ffdate, 1,4));
                ffdate := copy(ffdate, pos('.', ffdate) + 1, length(ffdate));
                month := StrtoInt(copy(ffdate, 1, pos('.', ffdate) - 1));
                ffdate := copy(ffdate, pos('.', ffdate)+1, length(ffdate));
                day := StrtoInt(ffdate);
                decodeDate(
                  incDay(
                    incYear(encodeDate(year,month,day), AQOpen.fieldByname('qixian').AsInteger),-1),
                    year, month, day);
                ffdate := InttoStr(year) + '.' + InttoStr(month) + '.' + InttoStr(day);

                scEE.ExcelWorkSheet.Range['K'+row,'K'+row].Value := ffdate;
              except
              end;
              scEE.ExcelWorkSheet.Range['M'+row,'M'+row].Value := AQOpen.FieldByName('fangwudiliweizhi').AsString;
              scEE.ExcelWorkSheet.Range['P'+row,'P'+row].Value := AQOpen.FieldByName('dailiren').AsString;

              ffdate := AQOpen.FieldByName('jiekuanshijian').AsString;
              ffdate := StringReplace(ffdate, '-', '.', [rfReplaceAll]);
              ffdate := StringReplace(ffdate, '年', '.', [rfReplaceAll]);
              ffdate := StringReplace(ffdate, '月', '.', [rfReplaceAll]);
              ffdate := StringReplace(ffdate, '日', '.', [rfReplaceAll]);
              scEE.ExcelWorkSheet.Range['U'+row,'U'+row].Value := ffdate;
            end;
          end;
        end;
        scEE.SaveAs(od.FileName, ffxls);
        showmessage('已导出成功');
      end;
    finally
      scEE.Disconnect;
    end;
  end;
end;

procedure TFrmMain.ExportEmptyClick(Sender: TObject);
var menuItem:TMenuItem;
kind, filename:String;
begin
  menuItem := TMenuItem(Sender);
  if menuItem.Parent <> nil then begin
    kind := menuItem.Parent.Caption;
  end;

  filename := ExtractFilePath(Application.ExeName)+'\templet\empty\'+kind+'\'+menuItem.Caption+'.doc';
  SaveDialog1.FileName := ExtractFileName(filename);

  if SaveDialog1.Execute then begin
    copyFile(PChar(filename), PChar(SaveDialog1.FileName), false);
  end;

end;

procedure TFrmMain.PrintEmptyClick(Sender: TObject);
var menuItem:TMenuItem;
kind, filename:String;
begin
  menuItem := TMenuItem(Sender);
  if menuItem.Parent <> nil then begin
    kind := menuItem.Parent.Caption;
  end;

  filename := ExtractFilePath(Application.ExeName)+'\templet\empty\'+kind+'\'+menuItem.Caption+'.doc';

  try
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmMain.ToolButton16Click(Sender: TObject);
var FrmEdt:TFrmEdt;
  Dir: string;
begin
  Dir := 'C:\';
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then begin
    if not (AQList.Eof and AQList.Bof) then begin
      AQList.First;
      while not AQList.Eof do begin
        FrmEdt := TFrmEdt.Create(self);
        FrmEdt.edit(AQList.FieldByName('id').AsString, false);
        FrmEdt.exportToXML(Dir);
        FrmEdt.Free;
        AQList.Next;
      end;
      showmessage('导出完毕');
    end;
  end;
end;

procedure TFrmMain.updateDB();
var currentVer:String;
begin
  //获得当前版本号
  try
    aqOpen.Close;
    aqOpen.SQL.Text := 'select v from t_ver';
    aqOpen.Open;
    currentVer := aqOpen.FieldByName('v').AsString;
  except
    //版本库未建
    currentVer := '20090101';
  end;

  //20091130
  if currentVer < '20091130' then updateDB20091130;

  //20091209
  if currentVer < '20091209' then updateDB20091209;

  //20091221
  if currentVer < '20091221' then updateDB20091221;

  //20091229
  if currentVer < '20091230' then updateDB20091230;

  //20100509
  if currentVer < '20100509' then updateDB20100509;
end;

Function TFrmMain.WinExecExW(cmd,workdir:pchar;visiable:integer):DWORD;
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

procedure TFrmMain.N62Click(Sender: TObject);
begin
  FrmEmailData.ShowModal;  
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

procedure TFrmMain.initDict;
begin
  loadStringsFromDict('业务编号');
  loadStringsFromDict('项目号');
  loadStringsFromDict('利率');
  loadStringsFromDict('合同号');
  CBBProxy.items.Text := loadStringsFromDict('代办');
  loadStringsFromDict('借款支行');
  loadStringsFromDict('借款支行负责人');
  loadStringsFromDict('借款支行地址');
  loadStringsFromDict('借款支行电话');
  loadStringsFromDict('信贷员');
  loadStringsFromDict('信贷员身份证');
  loadStringsFromDict('信贷员电话');
end;

function TFrmMain.loadStringsFromDict(leixing: String): String;
var sqlstr:String;
begin
  sqlstr := 'select * from t_dict where leixing='''+leixing+'''';
  frmMain.opensql(sqlstr, frmMain.AQOpen);
  if not (frmMain.AQOpen.Eof and frmMain.AQOpen.Bof) then
    result := frmMain.AQOpen.FieldByName('value').AsString
  else
    frmMain.execsql('insert into t_dict (leixing) values ('''+leixing+''')');
end;

procedure TFrmMain.N60Click(Sender: TObject);
begin
  FrmUpload.ShowModal;
end;

procedure TFrmMain.DBGridListTitleClick(Column: TColumn);
var
  DataSet:   TDataSet;
begin
  DataSet   :=   Column.Field.DataSet;
  if   not   DataSet.Active   then   exit;

  if   DataSet   is   TCustomADODataSet   then
  with   TCustomADODataSet(DataSet)   do
  begin
      if   (Pos(Column.Field.FieldName,   Sort)   =   1)   and   (Pos('   DESC',   Sort)   =   0)   then
            begin
                Sort   :=   Column.Field.FieldName   +   '   DESC';
            end
      else
            begin
                Sort   :=   Column.Field.FieldName   +   '   ASC';
            end;
  end;
end;

procedure TFrmMain.DBGridCXTitleClick(Column: TColumn);
var
  DataSet:   TDataSet;
begin
  DataSet   :=   Column.Field.DataSet;
  if   not   DataSet.Active   then   exit;

  if   DataSet   is   TCustomADODataSet   then
  with   TCustomADODataSet(DataSet)   do
  begin
      if   (Pos(Column.Field.FieldName,   Sort)   =   1)   and   (Pos('   DESC',   Sort)   =   0)   then
            begin
                Sort   :=   Column.Field.FieldName   +   '   DESC';
            end
      else
            begin
                Sort   :=   Column.Field.FieldName   +   '   ASC';
            end;
  end;

end;


procedure TFrmMain.updateDB20091221;
begin
  //t_daikuan jiekuanzhihangfuzeren ,jiekuanzhihangdizhi , jiekuanzhihangdianhua, dailirendianhua
  execsql('alter table t_daikuan add jiekuanzhihangfuzeren varchar(50) ', false);
  execsql('alter table t_daikuan add jiekuanzhihangdizhi varchar(200) ', false);
  execsql('alter table t_daikuan add jiekuanzhihangdianhua varchar(100) ', false);
  execsql('alter table t_daikuan add dailirendianhua varchar(50) ', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang,    '+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          ,false);
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang ,'+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        , false);
  //更新版本号
  execsql('update t_ver set v = ''20091221''');
end;

procedure TFrmMain.updateDB20091230;
begin
    //t_fangwu yingshougongbenfei ,yingshoupinggufei , yingshoudanbaofei
  execsql('alter table t_fangwu add yingshougongbenfei varchar(50) ', false);
  execsql('alter table t_fangwu add yingshoupinggufei varchar(50) ', false);
  execsql('alter table t_fangwu add yingshoudanbaofei varchar(50) ', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang,    '+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          );
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang ,'+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        , false);
  //更新版本号
  execsql('update t_ver set v = ''20091230''');
end;

procedure TFrmMain.updateDB20100509;
begin
  execsql('alter table t_main add createUser varchar(50)', false);

  execsql('create table t_user (id COUNTER CONSTRAINT PrimaryKey PRIMARY KEY, [user] varchar(50), [pass] varchar(50), [admin] int default 0 )', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_main.createUser, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang,    '+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          );
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_main.createUser, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang ,'+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        , false);
  //更新版本号
  execsql('update t_ver set v = ''20100509''');
end;

procedure TFrmMain.updateDB20091209;
begin
  //t_main lastUpdateTime ,state , proxy
  execsql('alter table t_main add lastUpdateTime varchar(50) ', false);
  execsql('alter table t_main add state varchar(100) ', false);
  execsql('alter table t_main add proxy varchar(100) ', false);
  //t_ver lastExportTime
  execsql('alter table t_ver add lastExportTime varchar(50) ', false);
  //更新版本号
  execsql('update t_ver set v = ''20091209''');
end;

procedure TFrmMain.updateDB20091130;
begin
  //1.创建版本库，初始化版本号
  execsql('create table t_ver(v varchar(8))', false);
  execsql('insert into t_ver (v) values(''20091130'')', false);
  //2.t_dict添加 remark varchar(200) 插件新记录评估流水号
  execsql('alter table t_dict add remark varchar(200)', false);
  execsql('insert into t_dict (leixing, [value], [remark]) values (''评估流水号'',''1600'',''每保存一条自动加1'')', false);
  //3.t_fangwu 添加 pinggubianhao varchar(50)   louconggong varchar(50)  fangwujiegoujichaoxiang rename fangwujiegou
  //chaoxiang varchar(50)
  execsql('alter table t_fangwu add pinggubianhao varchar(50) ', false);
  execsql('alter table t_fangwu add louconggong varchar(50) ', false);
  execsql('update t_fangwu set fangwujiegou = fangwujiegoujichaoxiang ', false);
  execsql('alter table t_fangwu drop fangwujiegoujichaoxiang ', false);
  execsql('alter table t_fangwu add chaoxiang varchar(50) ', false);
  execsql('alter table t_fangwu add pingmianbuju varchar(50) ', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang    '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          ,false);
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang                                                  '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        ,false);
end;

end.

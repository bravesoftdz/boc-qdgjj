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
    AQCCASValue: TADOQuery;
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
    procedure Mymessage(var t:TWmCopyData);message WM_COPYDATA;
    procedure SendMsg(msg:String; frmcap: string='');

    procedure conn(dataFile:String='');
    function loadStringsFromDict(leixing: String): String;
    procedure importFromXML(fileName:String='');

    //创建字典
    procedure initDict();

  end;



var
  FrmMain: TFrmMain;
  FrmEdt :TFrmEdt;
implementation

uses  UntLogin, reg, UntXiangMu, untExplorer, UntQiTaZhengXin, untSysSet,
  untDict, wordtest, UntEmailData, UntUpload, UntUserLogin, UntUser, untUtil,
  untUpdate, UntCCASImport;

{$R *.dfm}



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
    execsql(sqlstr);
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
        exportDBGridtoXLS(DBGridCX,false, SaveDialog1.FileName,4,false);
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

        exportDBGridtoXLS(DBGridList,false, SaveDialog1.FileName,1,true)
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


procedure TFrmMain.N62Click(Sender: TObject);
begin
  FrmEmailData.ShowModal;  
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
  opensql(sqlstr, frmMain.AQOpen);
  if not (frmMain.AQOpen.Eof and frmMain.AQOpen.Bof) then
    result := frmMain.AQOpen.FieldByName('value').AsString
  else
    execsql('insert into t_dict (leixing) values ('''+leixing+''')');
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


end.

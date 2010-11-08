unit untExplorer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, StdCtrls, MSHTML, DB, ADODB, untUtil;

type
  TFrmExplorer = class(TForm)
    Panel1: TPanel;
    wb: TWebBrowser;
    Label1: TLabel;
    EdtAddress: TEdit;
    Button1: TButton;
    EdtName: TEdit;
    ADOQuery1: TADOQuery;
    Button3: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    function findObj(doc: IHtmlDocument2; Objname: String): IDispatch;
    function getFrameDocument(doc: IHtmlDocument2;
      framename: string): IHTMLDocument2;
    { Private declarations }
  public
    { Public declarations }
    procedure enter(id:String);
    procedure setvalue(objname, value:String);
  end;

var
  FrmExplorer: TFrmExplorer;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmExplorer.Button2Click(Sender: TObject);
begin
  setvalue('CCAS_PLAATRN.CBICUSNM', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.CBISEXID 性别
  setvalue('CCAS_PLAATRN.CBISEXID', ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
  //CCAS_PLAATRN.CBIBTHDA 出生日期
  setvalue('CCAS_PLAATRN.CBIBTHDA', ADOQuery1.FieldByName('jiekuanrenchushengnianyue').AsString);
  //CCAS_PLAATRN.LCLIVEYRLMT 现居住时间
  setvalue('CCAS_PLAATRN.LCLIVEYRLMT', '3');
  //CCAS_PLAATRN.CBICERTY 证件名称 default :身份证 value: 0
  setvalue('CCAS_PLAATRN.CBICUSNM', '0');
  //CCAS_PLAATRN.CBICERNO 证件号码
  setvalue('CCAS_PLAATRN.CBICERNO', ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
  //CCAS_PLAATRN.CBICTADD 通讯地址
  setvalue('CCAS_PLAATRN.CBICTADD', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
  //CCAS_PLAATRN.CBIPSTCD 邮政编码
  setvalue('CCAS_PLAATRN.CBIPSTCD', ADOQuery1.FieldByName('jiekuanrenyoubian').AsString);
  //CCAS_PLAATRN.PERHMTEL 住宅电话
  setvalue('CCAS_PLAATRN.PERHMTEL', ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
  //CCAS_PLAATRN.PERMBLNO 手机号码
  setvalue('CCAS_PLAATRN.PERMBLNO', ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
  //CCAS_PLAATRN.PERHOMAD 现住地址
  setvalue('CAS_PLAATRN.PERHOMAD', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
  //CCAS_PLAATRN.PERCMTEL 单位电话
  setvalue('CCAS_PLAATRN.PERCMTEL', ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
  //CCAS_PLAATRN.OTHERTEL 其他电话
  //setvalue('CCAS_PLAATRN.CBICUSNM', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.CUSDMCLR 户籍所在地
  //setvalue('CCAS_PLAATRN.CBICUSNM', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.PEREDUBK 教育程度 default :请选择 value:
  //setvalue('CCAS_PLAATRN.PEREDUBK', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.LIVESTUS 居住状况   选项同网站
  //setvalue('CCAS_PLAATRN.LIVESTUS', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.LIVESTUS 参加工作时间

  //CCAS_PLAATRN.PERNWKDA 现职年数

  //CCAS_PLAATRN.PERCMPNM 现工作单位
  setvalue('CCAS_PLAATRN.PERCMTEL', ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString);
  //CCAS_PLAATRN.WKIBUSTY 单位所属行业 选项同网站

  //CCAS_PLAATRN.PERRGCPT 企业注册资本

  //CCAS_PLAATRN.PEROCCPA 职业

  //CCAS_PLAATRN.PERTITLE 职称

  //CCAS_PLAATRN.DOMICILE 客户户籍

  //CCAS_PLAATRN.CLIENTCHR 客户特征

  //CCAS_PLAATRN.WKIMONIN 月收入    家庭总收入
  setvalue('CCAS_PLAATRN.WKIMONIN', ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
  //CCAS_PLAATRN.PERHMCAD信用卡数量


  //...省几
  //CCAS_PLAATRN.HVLIVEPRAVEFLG 购买两套以上住房

  //CCAS_PLAATRN.PERHMPER 供养人数
  setvalue('CCAS_PLAATRN.WKIMONIN', ADOQuery1.FieldByName('gongyangrenrenshu').AsString);

  //CCAS_PLAATRN.PERSOURC 客户来源


  //CCAS_PLAATRN.PERMRTST 婚姻状况

  //CCAS_PLAATRN.SPSNAME 配偶姓名
  setvalue('CCAS_PLAATRN.SPSNAME', ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
  //CCAS_PLAATRN.SPSCERTY 配偶证件类型 0身份证
  setvalue('CCAS_PLAATRN.SPSCERTY', '0');
  //CCAS_PLAATRN.SPSCERNO  配偶证件号码
  setvalue('CCAS_PLAATRN.SPSCERNO', ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
  //CCAS_RETAILTRAN.HAFHUSNA 楼宇名称 小系统限制20个字符
  setvalue('CCAS_RETAILTRAN.HAFHUSNA', ADOQuery1.FieldByName('fangwulouyumingcheng').AsString);
  //CCAS_RETAILTRAN.TYPE类型

  //CCAS_RETAILTRAN.TOTPRICE 购房总价
  setvalue('CCAS_RETAILTRAN.TOTPRICE', vartostr(ADOQuery1.FieldByName('pinggujiage').AsCurrency*10000));
  //CCAS_RETAILTRAN.PRICE 评估价
  setvalue('CCAS_RETAILTRAN.PRICE', vartostr(ADOQuery1.FieldByName('pinggujiage').AsCurrency*10000));
  //CCAS_RETAILTRAN.LCTBCTNO 购房合同号
  setvalue('CCAS_RETAILTRAN.LCTBCTNO', ADOQuery1.FieldByName('hetonghao').AsString);
  //CCAS_RETAILTRAN.LCTBLDAR 面积
  setvalue('CCAS_RETAILTRAN.LCTBLDAR', ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
  //CCAS_RETAILTRAN.LCTBLDAR 已交首付款
  //组合贷款，首付款=首付款+公积金贷款金额
  setvalue('CCAS_RETAILTRAN.LCTBLDAR', ADOQuery1.FieldByName('shoufukuanjine').AsString);
  //CCAS_PLAATRN.LAFDRAMT贷款金额
  setvalue('CCAS_PLAATRN.LAFDRAMT', ADOQuery1.FieldByName('shoufukuanjine').AsString);
  //CCAS_PLAATRN.LAFTERM申请贷款期限
  setvalue('CCAS_PLAATRN.LAFTERM', Vartostr(ADOQuery1.FieldByName('qixian').AsInteger*12));
  //CCAS_PLAATRN.FLRATESCA利率浮动比例

  //CCAS_PLAATRN.LAFRATVD利率调整周期
  setvalue('CCAS_PLAATRN.LAFRATVD',  '12');
  //CCAS_PLAATRN.LAFRTMOD还款方式

  //CCAS_PLAATRN.LAFPACTT还款账号类型
  setvalue('CCAS_PLAATRN.LAFPACTT',  'S');
  //CCAS_PLAATRN.LAFPACT还款账号
  setvalue('CCAS_PLAATRN.LAFPACT',  ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
  //CCAS_PLAATRN.RETDTTYPE还款日类型
  setvalue('CCAS_PLAATRN.RETDTTYPE',  'N');
  //CCAS_PLAATRN.FIRRET每期固定还款日  空

  //CCAS_PLAATRN.RECEIVEPER 收款人
  setvalue('CCAS_PLAATRN.RECEIVEPER',  ADOQuery1.FieldByName('shoufangrenxingming').AsString);
  //CCAS_PLAATRN.RECEIVEACCNO 收款人账号
  setvalue('CCAS_PLAATRN.RECEIVEACCNO',  ADOQuery1.FieldByName('shoufangrencunzhezhanghao').AsString);

  //担保信息一
  //CCAS_CCTCTI.IMPADDR_1 楼宇名称
  setvalue('CCAS_CCTCTI.LIMYEAR_1',  ADOQuery1.FieldByName('fangwulouyumingcheng').AsString);
  //CCAS_CCTCTI.IMPNAME_1 房号
  setvalue('CCAS_CCTCTI.IMPNAME_1',  ADOQuery1.FieldByName('fangwufanghao').AsString);
  //CCAS_CCTCTI.LIMYEAR_1 土地使用年限      固定
  setvalue('CCAS_CCTCTI.LIMYEAR_1', '50');
  //CCAS_CCTCTI.ISAUTO_1 权属证 固定    房产证号
  setvalue('CCAS_CCTCTI.ISAUTO_1', '0');

  showmessage('已导入');
end;

procedure TFrmExplorer.Button1Click(Sender: TObject);
begin
  wb.Navigate(edtaddress.Text);
end;

procedure TFrmExplorer.enter(id: String);
var sqlstr:String;
begin
  sqlstr := ' select * from viewall where id='+id;
  opensql(sqlstr, ADOQuery1);
end;

procedure TFrmExplorer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;


function TFrmExplorer.findObj(doc:IHtmlDocument2;  Objname: String): IDispatch;
var i:integer;
frameindex: Olevariant;
frame_dispatch: IDispatch;
frame_win: IHTMLWindow2;
frame_doc: IHTMLDocument2;

begin
  result := nil;

  if assigned(doc.all.item(Objname, 0)) then begin
    result := doc.all.item(Objname, 0);
    exit;
  end;
  for i:=0 to doc.frames.length-1 do begin
    frameindex := i;
    frame_dispatch := doc.frames.Item(frameindex);
    if frame_dispatch <> nil then
    begin
      frame_win := frame_dispatch as IHTMLWindow2;
      frame_doc := frame_win.document;
      result := findObj(frame_doc, Objname);
      if assigned(result) then break;
    end;
  end;
end;


function TFrmExplorer.getFrameDocument(doc:IHtmlDocument2; framename: string): IHTMLDocument2;
var i:integer;
frameindex: Olevariant;
frame_dispatch: IDispatch;
frame_win: IHTMLWindow2;

begin
  for i:=0 to doc.frames.length-1 do begin
    frameindex := i;
    frame_dispatch := doc.frames.Item(frameindex);
    frame_win := frame_dispatch as IHTMLWindow2;
    if frame_win.name=framename then
    begin
      if (pos('frame',trim(lowercase(frame_win.document.activeElement.tagName)))=0) then begin
        result := frame_win.document;
        break;
      end else begin
        result := getFrameDocument(frame_win.document, frame_win.document.activeElement.id);
        break;
      end;
    end;
  end;
end;



procedure TFrmExplorer.setvalue(objname, value: String);
var hdoc:IHtmlDocument2 ;
 o: Olevariant;

begin
  try
    hdoc := wb.document as IHtmlDocument2;
    o := findObj(hdoc, objname);
    o.value := value;
  except
  end;
end;

procedure TFrmExplorer.Button3Click(Sender: TObject);
begin
  setvalue('CBICERNO', ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
end;

end.

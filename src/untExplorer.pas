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
  //CCAS_PLAATRN.CBISEXID �Ա�
  setvalue('CCAS_PLAATRN.CBISEXID', ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
  //CCAS_PLAATRN.CBIBTHDA ��������
  setvalue('CCAS_PLAATRN.CBIBTHDA', ADOQuery1.FieldByName('jiekuanrenchushengnianyue').AsString);
  //CCAS_PLAATRN.LCLIVEYRLMT �־�סʱ��
  setvalue('CCAS_PLAATRN.LCLIVEYRLMT', '3');
  //CCAS_PLAATRN.CBICERTY ֤������ default :���֤ value: 0
  setvalue('CCAS_PLAATRN.CBICUSNM', '0');
  //CCAS_PLAATRN.CBICERNO ֤������
  setvalue('CCAS_PLAATRN.CBICERNO', ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
  //CCAS_PLAATRN.CBICTADD ͨѶ��ַ
  setvalue('CCAS_PLAATRN.CBICTADD', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
  //CCAS_PLAATRN.CBIPSTCD ��������
  setvalue('CCAS_PLAATRN.CBIPSTCD', ADOQuery1.FieldByName('jiekuanrenyoubian').AsString);
  //CCAS_PLAATRN.PERHMTEL סլ�绰
  setvalue('CCAS_PLAATRN.PERHMTEL', ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
  //CCAS_PLAATRN.PERMBLNO �ֻ�����
  setvalue('CCAS_PLAATRN.PERMBLNO', ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
  //CCAS_PLAATRN.PERHOMAD ��ס��ַ
  setvalue('CAS_PLAATRN.PERHOMAD', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
  //CCAS_PLAATRN.PERCMTEL ��λ�绰
  setvalue('CCAS_PLAATRN.PERCMTEL', ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
  //CCAS_PLAATRN.OTHERTEL �����绰
  //setvalue('CCAS_PLAATRN.CBICUSNM', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.CUSDMCLR �������ڵ�
  //setvalue('CCAS_PLAATRN.CBICUSNM', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.PEREDUBK �����̶� default :��ѡ�� value:
  //setvalue('CCAS_PLAATRN.PEREDUBK', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.LIVESTUS ��ס״��   ѡ��ͬ��վ
  //setvalue('CCAS_PLAATRN.LIVESTUS', ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
  //CCAS_PLAATRN.LIVESTUS �μӹ���ʱ��

  //CCAS_PLAATRN.PERNWKDA ��ְ����

  //CCAS_PLAATRN.PERCMPNM �ֹ�����λ
  setvalue('CCAS_PLAATRN.PERCMTEL', ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString);
  //CCAS_PLAATRN.WKIBUSTY ��λ������ҵ ѡ��ͬ��վ

  //CCAS_PLAATRN.PERRGCPT ��ҵע���ʱ�

  //CCAS_PLAATRN.PEROCCPA ְҵ

  //CCAS_PLAATRN.PERTITLE ְ��

  //CCAS_PLAATRN.DOMICILE �ͻ�����

  //CCAS_PLAATRN.CLIENTCHR �ͻ�����

  //CCAS_PLAATRN.WKIMONIN ������    ��ͥ������
  setvalue('CCAS_PLAATRN.WKIMONIN', ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
  //CCAS_PLAATRN.PERHMCAD���ÿ�����


  //...ʡ��
  //CCAS_PLAATRN.HVLIVEPRAVEFLG ������������ס��

  //CCAS_PLAATRN.PERHMPER ��������
  setvalue('CCAS_PLAATRN.WKIMONIN', ADOQuery1.FieldByName('gongyangrenrenshu').AsString);

  //CCAS_PLAATRN.PERSOURC �ͻ���Դ


  //CCAS_PLAATRN.PERMRTST ����״��

  //CCAS_PLAATRN.SPSNAME ��ż����
  setvalue('CCAS_PLAATRN.SPSNAME', ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
  //CCAS_PLAATRN.SPSCERTY ��ż֤������ 0���֤
  setvalue('CCAS_PLAATRN.SPSCERTY', '0');
  //CCAS_PLAATRN.SPSCERNO  ��ż֤������
  setvalue('CCAS_PLAATRN.SPSCERNO', ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
  //CCAS_RETAILTRAN.HAFHUSNA ¥������ Сϵͳ����20���ַ�
  setvalue('CCAS_RETAILTRAN.HAFHUSNA', ADOQuery1.FieldByName('fangwulouyumingcheng').AsString);
  //CCAS_RETAILTRAN.TYPE����

  //CCAS_RETAILTRAN.TOTPRICE �����ܼ�
  setvalue('CCAS_RETAILTRAN.TOTPRICE', vartostr(ADOQuery1.FieldByName('pinggujiage').AsCurrency*10000));
  //CCAS_RETAILTRAN.PRICE ������
  setvalue('CCAS_RETAILTRAN.PRICE', vartostr(ADOQuery1.FieldByName('pinggujiage').AsCurrency*10000));
  //CCAS_RETAILTRAN.LCTBCTNO ������ͬ��
  setvalue('CCAS_RETAILTRAN.LCTBCTNO', ADOQuery1.FieldByName('hetonghao').AsString);
  //CCAS_RETAILTRAN.LCTBLDAR ���
  setvalue('CCAS_RETAILTRAN.LCTBLDAR', ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
  //CCAS_RETAILTRAN.LCTBLDAR �ѽ��׸���
  //��ϴ���׸���=�׸���+�����������
  setvalue('CCAS_RETAILTRAN.LCTBLDAR', ADOQuery1.FieldByName('shoufukuanjine').AsString);
  //CCAS_PLAATRN.LAFDRAMT������
  setvalue('CCAS_PLAATRN.LAFDRAMT', ADOQuery1.FieldByName('shoufukuanjine').AsString);
  //CCAS_PLAATRN.LAFTERM�����������
  setvalue('CCAS_PLAATRN.LAFTERM', Vartostr(ADOQuery1.FieldByName('qixian').AsInteger*12));
  //CCAS_PLAATRN.FLRATESCA���ʸ�������

  //CCAS_PLAATRN.LAFRATVD���ʵ�������
  setvalue('CCAS_PLAATRN.LAFRATVD',  '12');
  //CCAS_PLAATRN.LAFRTMOD���ʽ

  //CCAS_PLAATRN.LAFPACTT�����˺�����
  setvalue('CCAS_PLAATRN.LAFPACTT',  'S');
  //CCAS_PLAATRN.LAFPACT�����˺�
  setvalue('CCAS_PLAATRN.LAFPACT',  ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
  //CCAS_PLAATRN.RETDTTYPE����������
  setvalue('CCAS_PLAATRN.RETDTTYPE',  'N');
  //CCAS_PLAATRN.FIRRETÿ�ڹ̶�������  ��

  //CCAS_PLAATRN.RECEIVEPER �տ���
  setvalue('CCAS_PLAATRN.RECEIVEPER',  ADOQuery1.FieldByName('shoufangrenxingming').AsString);
  //CCAS_PLAATRN.RECEIVEACCNO �տ����˺�
  setvalue('CCAS_PLAATRN.RECEIVEACCNO',  ADOQuery1.FieldByName('shoufangrencunzhezhanghao').AsString);

  //������Ϣһ
  //CCAS_CCTCTI.IMPADDR_1 ¥������
  setvalue('CCAS_CCTCTI.LIMYEAR_1',  ADOQuery1.FieldByName('fangwulouyumingcheng').AsString);
  //CCAS_CCTCTI.IMPNAME_1 ����
  setvalue('CCAS_CCTCTI.IMPNAME_1',  ADOQuery1.FieldByName('fangwufanghao').AsString);
  //CCAS_CCTCTI.LIMYEAR_1 ����ʹ������      �̶�
  setvalue('CCAS_CCTCTI.LIMYEAR_1', '50');
  //CCAS_CCTCTI.ISAUTO_1 Ȩ��֤ �̶�    ����֤��
  setvalue('CCAS_CCTCTI.ISAUTO_1', '0');

  showmessage('�ѵ���');
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

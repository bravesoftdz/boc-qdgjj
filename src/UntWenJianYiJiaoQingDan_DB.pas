unit UntWenJianYiJiaoQingDan_DB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBClient, ADODB, Provider, dateutils;

type
  TFrmWenJianYiJiaoQingDan_DB = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape35: TQRShape;
    QRLabel35: TQRLabel;
    QRShape36: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel65: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape48: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel127: TQRLabel;
    QRDBText4: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    cds: TClientDataSet;
    AQPrintYJ: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    qrhj: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure init();
  end;

var
  FrmWenJianYiJiaoQingDan_DB: TFrmWenJianYiJiaoQingDan_DB;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmWenJianYiJiaoQingDan_DB.init;
var tmp:String;
begin

  AQPrintYJ.Active := true;
  cds.Active := true;
  cds.AddIndex('id','id',[]);
  cds.IndexName := 'id';
  if cds.Locate('page','print1',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print1').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print2',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print2').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print3',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print3').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print4',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print4').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print5',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print5').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print6',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print6').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print7',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print7').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print8',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print8').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;
  if cds.Locate('page','print9',[]) then begin
    cds.Edit;
    cds.FieldByName('page').AsString := FrmEdt.ADOQuery1.FieldByName('print9').AsString;
    if cds.FieldByName('page').AsString='0' then
      cds.FieldByName('num').AsString := '0';
    cds.Post;
  end;


  cds.Filter := 'num <> ''0''';
  cds.Filtered := true;

  cds.First;
  while not cds.Eof do begin
    cds.edit;
    cds.FieldByName('printorder').AsString := 'II-'+InttoStr(cds.RecNo+1)+'-'+
      cds.FieldByName('page').AsString ;
    cds.post;
    cds.Next;
  end;

  try
    QRLabel12.Caption := FrmEdt.ADOQuery1.FieldByName('fangkuanri').AsString+'≡'+
      formatdatetime('yyyy-mm-dd',
      IncYear(FrmEdt.ADOQuery1.FieldByName('fangkuanri').AsDateTime,
              FrmEdt.ADOQuery1.FieldByName('qixian').AsInteger));
  except
    showmessage('贷款期限或放款日格式错误！');
  end;
  qrhj.Caption := '合计:'+InttoStr(cds.RecordCount+1)+'份';
end;

procedure TFrmWenJianYiJiaoQingDan_DB.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  QRMemo1.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('hetonghao').AsString, round(QRMemo1.Width/13));  
end;

procedure TFrmWenJianYiJiaoQingDan_DB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

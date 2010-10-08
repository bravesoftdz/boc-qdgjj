unit UntDaiKuanShenQingShu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmDaiKuanShenQingShu1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRMemo1: TQRMemo;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRMemo4: TQRMemo;
    QRShape8: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape30: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel22: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape47: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape48: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape18: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRMemo5: TQRMemo;
    QRMemo6: TQRMemo;
    QRDBText11: TQRDBText;
    QRMemo7: TQRMemo;
    QRMemo8: TQRMemo;
    QRMemo9: TQRMemo;
    QRMemo10: TQRMemo;
    QRDBText3: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel3: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText18Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText16Print(sender: TObject; var Value: String);
    procedure QRDBText20Print(sender: TObject; var Value: String);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText21Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDaiKuanShenQingShu1: TFrmDaiKuanShenQingShu1;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmDaiKuanShenQingShu1.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  QRMemo8.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString, round(QRMemo8.Width/15.5));
  QRMemo5.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString, round(QRMemo5.Width/13.5));
  QRMemo6.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString, round(QRMemo6.Width/13.5));
  QRMemo7.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString, round(QRMemo7.Width/13.5));
  QRMemo10.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrendanweidizhi').AsString+' '+
                            untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrendanweiyoubian').AsString, round(QRMemo10.Width/13.5));
  QRMemo9.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString, round(QRMemo9.Width/13.5));
  
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText18Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='----';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText19Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='-----';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='-----';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='--';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText20Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText22Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='----';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='----';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText21Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmDaiKuanShenQingShu1.QRDBText13Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='----';
end;

end.

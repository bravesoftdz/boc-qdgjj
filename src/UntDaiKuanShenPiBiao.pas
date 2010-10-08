unit UntDaiKuanShenPiBiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmDaiKuanShenPiBiao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel3: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape4: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRMemo3: TQRMemo;
    QRMemo4: TQRMemo;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRMemo5: TQRMemo;
    QRShape8: TQRShape;
    QRDBText3: TQRDBText;
    QRShape18: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRMemo6: TQRMemo;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRMemo7: TQRMemo;
    QRMemo8: TQRMemo;
    QRShape24: TQRShape;
    c: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRMemo11: TQRMemo;
    QRMemo13: TQRMemo;
    QRMemo14: TQRMemo;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRMemo15: TQRMemo;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText19: TQRDBText;
    LD: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape21: TQRShape;
    QRMemo16: TQRMemo;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRMemo12: TQRMemo;
    QRShape28: TQRShape;
    QRMemo17: TQRMemo;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel33: TQRLabel;
    QRShape34: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRMemo18: TQRMemo;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRMemo19: TQRMemo;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRMemo9: TQRMemo;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRMemo20: TQRMemo;
    QRMemo21: TQRMemo;
    QRShape38: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape25: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape26: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRDBText17: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText21: TQRDBText;
    LBL: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDaiKuanShenPiBiao: TFrmDaiKuanShenPiBiao;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmDaiKuanShenPiBiao.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  try
    QRMemo15.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString, round(QRMemo15.Width/16));
    QRMemo6.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString, round(QRMemo6.Width/16));
    QRMemo16.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString, round(QRMemo6.Width/16));
    LD.Caption := Changdx2(untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjineall').AsCurrency*10000);
    LBL.Caption :=  VartoStr(formatcurr('0.00',untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjineall').AsCurrency/untMain.FrmEdt.ADOQuery1.FieldByName('pinggujiage2').AsCurrency*100))+'%'
  finally
  end;
end;

end.

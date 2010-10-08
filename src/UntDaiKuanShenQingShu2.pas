unit UntDaiKuanShenQingShu2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmDaiKuanShenQingShu2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRMemo1: TQRMemo;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
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
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape30: TQRShape;
    QRShape43: TQRShape;
    QRLabel25: TQRLabel;
    QRShape22: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRMemo5: TQRMemo;
    QRLabel23: TQRLabel;
    QRShape7: TQRShape;
    QRShape19: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape23: TQRShape;
    QRLabel19: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape28: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape12: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape13: TQRShape;
    QRLabel26: TQRLabel;
    QRShape14: TQRShape;
    QRMemo4: TQRMemo;
    QRLabel29: TQRLabel;
    QRMemo6: TQRMemo;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDaiKuanShenQingShu2: TFrmDaiKuanShenQingShu2;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmDaiKuanShenQingShu2.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
    QRMemo5.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('fangwudiliweizhi').AsString, round(QRMemo5.Width/13.5));
end;

end.

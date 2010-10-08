unit UntShenPiXinXi2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmShenPiXinXi2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRMemo4: TQRMemo;
    QRShape23: TQRShape;
    QRLabel25: TQRLabel;
    QRShape24: TQRShape;
    QRMemo6: TQRMemo;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRMemo7: TQRMemo;
    QRShape30: TQRShape;
    QRMemo8: TQRMemo;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRMemo9: TQRMemo;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRMemo10: TQRMemo;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRMemo11: TQRMemo;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRMemo12: TQRMemo;
    QRShape43: TQRShape;
    QRMemo13: TQRMemo;
    QRMemo14: TQRMemo;
    QRShape45: TQRShape;
    QRMemo15: TQRMemo;
    QRMemo16: TQRMemo;
    QRMemo21: TQRMemo;
    QRMemo24: TQRMemo;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape53: TQRShape;
    QRShape55: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape62: TQRShape;
    QRShape65: TQRShape;
    QRMemo28: TQRMemo;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape31: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
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
    QRShape32: TQRShape;
    QRShape41: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRShape42: TQRShape;
    QRShape46: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape44: TQRShape;
    QRShape47: TQRShape;
    QRLabel80: TQRLabel;
    QRShape52: TQRShape;
    QRLabel81: TQRLabel;
    QRShape54: TQRShape;
    QRShape56: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape67: TQRShape;
    QRShape51: TQRShape;
    QRShape61: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape2: TQRShape;
    QRShape59: TQRShape;
    QRMemo17: TQRMemo;
    QRMemo18: TQRMemo;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRMemo19: TQRMemo;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape63: TQRShape;
    QRLabel44: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText17: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShenPiXinXi2: TFrmShenPiXinXi2;

implementation

uses untEdt;

{$R *.dfm}

end.

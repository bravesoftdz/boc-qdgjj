unit UntBuChengXieYi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmBuChengXieYi = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuChengXieYi: TFrmBuChengXieYi;

implementation

uses untEdt;

{$R *.dfm}

end.

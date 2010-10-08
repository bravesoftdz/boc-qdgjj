unit UntShouQuanWeiTuoShu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmShouQuanWeiTuoShu = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShouQuanWeiTuoShu: TfrmShouQuanWeiTuoShu;

implementation

uses untEdt;

{$R *.dfm}

end.

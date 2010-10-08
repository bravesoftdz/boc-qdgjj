unit UntYiJianBiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmYiJianBiao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel20: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmYiJianBiao: TFrmYiJianBiao;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmYiJianBiao.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  QRMemo1.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('diaocha').AsString, round(QRMemo1.Width/14));
end;      

end.

unit UntDaiKuanChengNuoHan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, untUtil;

type
  TFrmDaiKuanChengNuoHan = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRDBText6: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    Label1: TLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    LD: TQRLabel;
    LX: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    procedure LDPrint(sender: TObject; var Value: String);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDaiKuanChengNuoHan: TFrmDaiKuanChengNuoHan;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmDaiKuanChengNuoHan.LDPrint(sender: TObject;
  var Value: String);
begin
  try
  finally
  end;
end;

procedure TFrmDaiKuanChengNuoHan.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  try
    LD.Caption := Changdx(FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000);
    LD.Caption := StringReplace(LD.Caption,'ÔªÕû','',[]);
    LX.Caption := VartoStr(FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000);
  finally
  end;
end;

end.

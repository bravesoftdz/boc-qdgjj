unit UntGongTongZhaiWuRenChengNuoShu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFrmGongTongZhaiWuRenChengNuoShu = class(TForm)
    QuickRep1: TQuickRep;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand1: TQRBand;
    QRShape9: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGongTongZhaiWuRenChengNuoShu: TFrmGongTongZhaiWuRenChengNuoShu;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmGongTongZhaiWuRenChengNuoShu.QuickRep1NeedData(
  Sender: TObject; var MoreData: Boolean);
begin
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%jiekuanrenxingming',
    untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenxingming').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%daikuanjine',
    untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%jiekuanshijian',
    untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanshijian').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%jiekuanrenpeiouxingming',
    untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString,[]);
end;

end.

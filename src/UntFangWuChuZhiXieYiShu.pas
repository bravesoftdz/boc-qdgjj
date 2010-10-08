unit UntFangWuChuZhiXieYiShu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmFangWuChuZhiXieYiShu = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFangWuChuZhiXieYiShu: TFrmFangWuChuZhiXieYiShu;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmFangWuChuZhiXieYiShu.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  QRLabel5.Caption := StringReplace(QRLabel5.Caption,'%daikuanjine',
    untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%yunhuankuane',
    untMain.FrmEdt.ADOQuery1.FieldByName('yunhuankuane').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%jiekuanrenjiatingdianhua',
    untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString,[]);
end;

end.

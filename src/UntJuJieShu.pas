unit UntJuJieShu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmJuJieShu = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJuJieShu: TFrmJuJieShu;

implementation

uses UntMain, untEdt;

{$R *.dfm}

procedure TFrmJuJieShu.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  FrmMain.AQXiangMu.First;
  FrmMain.AQXiangMu.Locate('xiangmumingcheng',
    untMain.FrmEdt.ATFangwu.FieldByName('xiangmumingcheng').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%kaifashang',FrmMain.AQXiangMu.FieldByName('kaifashang').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%xiangmumingcheng',FrmMain.AQXiangMu.FieldByName('xiangmumingcheng').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%zhangdi',FrmMain.AQXiangMu.FieldByName('zhangdi').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%tudizhenghao',FrmMain.AQXiangMu.FieldByName('tudizhenghao').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%yushouxukezhenghao',FrmMain.AQXiangMu.FieldByName('yushouxukezhenghao').AsString,[]);
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'%fangwudiliweizhi',untMain.FrmEdt.ATFangwu.FieldByName('fangwudiliweizhi').AsString,[]);
  QRMemo1.Lines := divStr(QRMemo1.Lines.Text, round(QRMemo1.Width/20),'|');
  QRMemo1.Lines.Text := StringReplace(QRMemo1.Lines.Text,'|',#13#10#13#10,[rfReplaceAll]);
end;

end.

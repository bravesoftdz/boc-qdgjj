unit UntGeRenShouXinYeWuShenQingBiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls;

type
  TFrmGeRenShouXinYeWuShenQingBiao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
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
    QRShape21: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRMemo6: TQRMemo;
    QRShape22: TQRShape;
    QRLabel18: TQRLabel;
    QRShape23: TQRShape;
    QRMemo7: TQRMemo;
    QRMemo8: TQRMemo;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRMemo9: TQRMemo;
    c: TQRLabel;
    QRLabel19: TQRLabel;
    QRMemo10: TQRMemo;
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
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRMemo16: TQRMemo;
    QRMemo12: TQRMemo;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGeRenShouXinYeWuShenQingBiao: TFrmGeRenShouXinYeWuShenQingBiao;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmGeRenShouXinYeWuShenQingBiao.QuickRep1NeedData(
  Sender: TObject; var MoreData: Boolean);
begin
  QRMemo15.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString, round(QRMemo15.Width/15.5));
  QRMemo6.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString, round(QRMemo6.Width/15.5));
  QRMemo16.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString, round(QRMemo6.Width/15.5));
  QRMemo12.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('danbaoren').AsString+' '+
                            untMain.FrmEdt.ADOQuery1.FieldByName('diyawumingcheng').AsString,
                            round(QRMemo6.Width/15.5));
end;

end.

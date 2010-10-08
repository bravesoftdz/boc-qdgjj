unit UntJieKuanDiYaHeTong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DateUtils;

type
  TFrmJieKuanDiYaHeTong = class(TForm)
    QuickRep1: TQuickRep;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRMemo1: TQRMemo;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
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
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel28: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel29: TQRLabel;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJieKuanDiYaHeTong: TFrmJieKuanDiYaHeTong;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmJieKuanDiYaHeTong.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
  var tmp:String;
begin
  try
    QRLabel7.Caption := Changdx2(strtoCurr(untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsString)*10000);
  except
  end;
  try
    tmp := copy(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanshijian').AsString, 1,
                pos('Äê',untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanshijian').AsString)-1);
    QRLabel28.Caption := tmp;
    QRLabel22.Caption := InttoStr(StrtoInt(tmp)+untMain.FrmEdt.ADOQuery1.FieldByName('qixian').AsInteger);

  except
  end;
  try
    QRLabel21.Caption := Changdx2(strtoCurr(untMain.FrmEdt.ADOQuery1.FieldByName('yunhuankuane').AsString));
    if pos('·Ö',QRLabel21.Caption)=0 then
      QRLabel21.Caption := QRLabel21.Caption+'Áã·Ö';
  except
  end;
end;

procedure TFrmJieKuanDiYaHeTong.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  Value:='---------';
end;

procedure TFrmJieKuanDiYaHeTong.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---------';
end;

procedure TFrmJieKuanDiYaHeTong.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  if untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString='' then
    value := '----------';
end;

end.

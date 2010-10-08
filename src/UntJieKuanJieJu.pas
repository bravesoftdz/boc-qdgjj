unit UntJieKuanJieJu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmJieKuanJieJu = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape13: TQRShape;
    QRLabel8: TQRLabel;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRLabel15: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape23: TQRShape;
    QRShape27: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRQISHU: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRMONEY1: TQRLabel;
    QRRIQI: TQRLabel;
    QRMoney: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FrmJieKuanJieJu: TFrmJieKuanJieJu;

implementation

uses untEdt, UntMain;

{$R *.dfm}

procedure TFrmJieKuanJieJu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmJieKuanJieJu.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var i:integer;
  tmp :String;
begin
  try
    QRMoney.Caption := Changdx2(FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000);
    tmp := formatcurr('0.00',FrmEdt.ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000);
    tmp := stringreplace(tmp,'.','0',[]);
    QRMoney1.Caption := '';
    for i := 0 to length(tmp)-1 do begin
        QRMoney1.Caption := QRMoney1.Caption+'  '+tmp[i]
    end;
    QRMoney1.Caption := '£¤ '+trim(QRMoney1.Caption);
    QRQISHU.Caption := InttoStr(FrmEdt.ADOQuery1.FieldByName('qixian').AsInteger*12);
    QRRIQI.Caption := formatdatetime('yyyy-mm-dd',FrmEdt.ADOQuery1.FieldByName('fangkuanri').AsDateTime);
    QRRIQI.Caption := stringreplace(QRRIQI.Caption,'-','Äê',[]);
    QRRIQI.Caption := stringreplace(QRRIQI.Caption,'-','ÔÂ',[]);
    QRRIQI.Caption := QRRIQI.Caption+'ÈÕ';
  except

  end;
end;

end.

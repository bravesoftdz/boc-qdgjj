unit UntShenPiXinXi1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFrmShenPiXinXi1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
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
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRMemo4: TQRMemo;
    QRMemo5: TQRMemo;
    QRShape23: TQRShape;
    QRLabel25: TQRLabel;
    QRShape24: TQRShape;
    QRMemo6: TQRMemo;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRMemo7: TQRMemo;
    QRShape30: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRMemo8: TQRMemo;
    QRLabel16: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRMemo9: TQRMemo;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRMemo10: TQRMemo;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRMemo11: TQRMemo;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRMemo12: TQRMemo;
    QRShape43: TQRShape;
    QRMemo13: TQRMemo;
    QRMemo14: TQRMemo;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRMemo15: TQRMemo;
    QRMemo16: TQRMemo;
    QRMemo17: TQRMemo;
    QRMemo18: TQRMemo;
    QRMemo19: TQRMemo;
    QRMemo20: TQRMemo;
    QRMemo21: TQRMemo;
    QRMemo22: TQRMemo;
    QRMemo23: TQRMemo;
    QRMemo24: TQRMemo;
    QRMemo25: TQRMemo;
    QRMemo26: TQRMemo;
    QRMemo27: TQRMemo;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape66: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRMemo28: TQRMemo;
    QRLabel44: TQRLabel;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRMemo29: TQRMemo;
    QRMemo30: TQRMemo;
    QRLabel48: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRMemo31: TQRMemo;
    QRMemo32: TQRMemo;
    QRMemo33: TQRMemo;
    QRMemo34: TQRMemo;
    QRDBText11: TQRDBText;
    QRDBText17: TQRDBText;
    QRMemo35: TQRMemo;
    QRMemo36: TQRMemo;
    QRDBText18: TQRDBText;
    QRMemo377: TQRMemo;
    QRMemo38: TQRMemo;
    QRMemo39: TQRMemo;
    QRDBText28: TQRDBText;
    QRLabel49: TQRLabel;
    QRMemo37: TQRMemo;
    QRMemo40: TQRMemo;
    QRMemo41: TQRMemo;
    QRLabel50: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRMemo42: TQRMemo;
    QRShape67: TQRShape;
    QRLabel51: TQRLabel;
    QRShape77: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape39: TQRShape;
    QRLabel64: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel65: TQRLabel;
    QRShape42: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRMemo43: TQRMemo;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRMemo44: TQRMemo;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel60: TQRLabel;
    QRDBText36: TQRDBText;
    QRShape85: TQRShape;
    QRLabel67: TQRLabel;
    QRMemo45: TQRMemo;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText40: TQRDBText;
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure QRDBText24Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText21Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText20Print(sender: TObject; var Value: String);
    procedure QRDBText50Print(sender: TObject; var Value: String);
    procedure QRDBText52Print(sender: TObject; var Value: String);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShenPiXinXi1: TFrmShenPiXinXi1;

implementation

uses untEdt, UntMain;

{$R *.dfm}



procedure TFrmShenPiXinXi1.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  QRMemo31.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrendanweiall').AsString, round(QRMemo31.Width/13.5));
  QRMemo32.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhiall').AsString, round(QRMemo32.Width/15.5));
  QRMemo33.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString, round(QRMemo33.Width/15.5));
  QRMemo34.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString, round(QRMemo34.Width/15.5));
  QRMemo35.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString, round(QRMemo35.Width/15.5));
  QRMemo36.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('fangchangongyourenshenfenzhenghaoma').AsString, round(QRMemo36.Width/15.5));
  QRMemo377.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('fangwudiliweizhi').AsString, round(QRMemo377.Width/15.5));
  QRMemo37.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString, round(QRMemo37.Width/15.5));
  QRMemo41.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('peitaosheshi').AsString, round(QRMemo41.Width/15.5));
  QRMemo40.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('pinggujiageall').AsString, round(QRMemo40.Width/15.5));
  QRMemo39.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('pinggujiageall').AsString, round(QRMemo39.Width/15.5));
  QRMemo38.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('jiagehelixingpingjia').AsString, round(QRMemo38.Width/15.5));

  QRMemo42.Lines := divStr(untMain.FrmEdt.ADOQuery1.FieldByName('goufangyongtu').AsString, round(QRMemo42.Width/15.5));
end;

procedure TFrmShenPiXinXi1.QRDBText9Print(sender: TObject;
  var Value: String);
begin
    if Value='' then Value:='---';
end;

procedure TFrmShenPiXinXi1.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='----';
end;

procedure TFrmShenPiXinXi1.QRDBText19Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='0';
end;

procedure TFrmShenPiXinXi1.QRDBText12Print(sender: TObject;
  var Value: String);
begin
if Value='' then Value:='---';
end;

procedure TFrmShenPiXinXi1.QRDBText25Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmShenPiXinXi1.QRDBText24Print(sender: TObject;
  var Value: String);
begin
if Value='' then Value:='-';
end;

procedure TFrmShenPiXinXi1.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='---';
end;

procedure TFrmShenPiXinXi1.QRDBText22Print(sender: TObject;
  var Value: String);
begin
if Value='' then Value:='-';
end;

procedure TFrmShenPiXinXi1.QRDBText21Print(sender: TObject;
  var Value: String);
begin
if Value='' then Value:='-';
end;

procedure TFrmShenPiXinXi1.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='----------';
end;

procedure TFrmShenPiXinXi1.QRDBText20Print(sender: TObject;
  var Value: String);
begin
if Value='' then Value:='-----';
end;

procedure TFrmShenPiXinXi1.QRDBText50Print(sender: TObject;
  var Value: String);
begin
  if Value='' then Value:='--';
end;

procedure TFrmShenPiXinXi1.QRDBText52Print(sender: TObject;
  var Value: String);
begin
    if Value='' then Value:='---';
end;

end.

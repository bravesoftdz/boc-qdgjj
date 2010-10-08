object FrmSysSet: TFrmSysSet
  Left = 259
  Top = 351
  BorderStyle = bsDialog
  Caption = #31995#32479#35774#32622
  ClientHeight = 78
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 22
    Width = 78
    Height = 13
    Caption = #25554#20214#30417#35270#32593#39029
  end
  object Button1: TButton
    Left = 344
    Top = 48
    Width = 65
    Height = 25
    Caption = #27880#20876#25554#20214
    TabOrder = 0
    OnClick = Button1Click
  end
  object EdtWebPage: TEdit
    Left = 99
    Top = 19
    Width = 406
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 416
    Top = 48
    Width = 75
    Height = 25
    Caption = #21368#36733#25554#20214
    TabOrder = 2
    OnClick = Button2Click
  end
end

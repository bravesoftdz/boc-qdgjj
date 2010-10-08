object FrmUser: TFrmUser
  Left = 633
  Top = 413
  Width = 311
  Height = 163
  Caption = #29992#25143#20449#24687
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 42
    Height = 13
    Caption = #29992#25143#21517
  end
  object Label2: TLabel
    Left = 29
    Top = 47
    Width = 28
    Height = 13
    Caption = #23494#30721
  end
  object Label3: TLabel
    Left = 198
    Top = 14
    Width = 91
    Height = 13
    Caption = '*'#20320#30340#30495#23454#22995#21517
  end
  object EdtUser: TEdit
    Left = 72
    Top = 11
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtPass: TEdit
    Left = 72
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 144
    Top = 96
    Width = 65
    Height = 25
    Caption = #20445#23384
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 96
    Width = 65
    Height = 25
    Caption = #21462#28040
    TabOrder = 3
    OnClick = Button2Click
  end
end

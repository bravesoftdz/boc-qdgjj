object FrmUserLogin: TFrmUserLogin
  Left = 446
  Top = 179
  BorderStyle = bsDialog
  Caption = #29992#25143#30331#24405
  ClientHeight = 172
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 40
    Width = 42
    Height = 13
    Caption = #29992#25143#21517
  end
  object Label2: TLabel
    Left = 119
    Top = 86
    Width = 28
    Height = 13
    Caption = #23494#30721
  end
  object Image1: TImage
    Left = 16
    Top = 32
    Width = 73
    Height = 81
  end
  object Button1: TButton
    Left = 184
    Top = 136
    Width = 57
    Height = 25
    Caption = #30331#24405
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 136
    Width = 89
    Height = 25
    Caption = #27880#20876#26032#29992#25143
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 136
    Width = 57
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = Button3Click
  end
  object cbbUser: TComboBox
    Left = 152
    Top = 34
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object EdtPass: TEdit
    Left = 152
    Top = 80
    Width = 144
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
end

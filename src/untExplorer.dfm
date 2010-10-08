object FrmExplorer: TFrmExplorer
  Left = 13
  Top = 29
  Width = 998
  Height = 645
  Caption = 'FrmExplorer'
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 26
      Height = 13
      Caption = #22320#22336
    end
    object EdtAddress: TEdit
      Left = 38
      Top = 6
      Width = 659
      Height = 21
      TabOrder = 0
      Text = 'http://22.12.35.73/CCAS'
    end
    object Button1: TButton
      Left = 703
      Top = 5
      Width = 49
      Height = 25
      Caption = #36716#21040
      TabOrder = 1
      OnClick = Button1Click
    end
    object EdtName: TEdit
      Left = 11
      Top = 37
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Button3: TButton
      Left = 80
      Top = 35
      Width = 75
      Height = 25
      Caption = #26032#22686#36151#27454
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 160
      Top = 35
      Width = 75
      Height = 25
      Caption = #22522#26412#36164#26009
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object wb: TWebBrowser
    Left = 0
    Top = 65
    Width = 990
    Height = 545
    Align = alClient
    TabOrder = 1
    ControlData = {
      4C00000052660000543800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620E000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object ADOQuery1: TADOQuery
    Connection = FrmMain.ADOConnection1
    Parameters = <>
    Left = 320
    Top = 160
  end
end

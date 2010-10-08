object FrmQiTaZhengXin: TFrmQiTaZhengXin
  Left = 141
  Top = 194
  Width = 766
  Height = 475
  Caption = #20854#23427#35777#20449#21488#36134
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = FrmMain.DSQiTaZhengXin
    Hints.Strings = (
      #31532#19968#26465
      #19978#19968#26465
      #19979#19968#26465
      #26368#21518#19968#26465
      #25554#20837
      #21024#38500
      #32534#36753
      #25552#20132
      #21462#28040
      #21047#26032)
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 48
    Width = 753
    Height = 385
    DataSource = FrmMain.DSQiTaZhengXin
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'xingming'
        Title.Caption = #22995#21517
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chaxunshijian'
        Title.Caption = #26597#35810#26102#38388
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shenfenzhenghao'
        Title.Caption = #36523#20221#35777#21495
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dailiren'
        PickList.Strings = (
          #21346#23803#23725
          #24352#20908
          #38472#20853)
        Title.Caption = #20195#29702#20154
        Width = 138
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 672
    Top = 16
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 2
    OnClick = Button1Click
  end
end

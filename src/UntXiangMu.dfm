object FrmXiangMu: TFrmXiangMu
  Left = 161
  Top = 142
  Width = 770
  Height = 480
  Caption = #39033#30446#31649#29702
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 244
    Width = 52
    Height = 13
    Caption = #39033#30446#21517#31216
  end
  object Label2: TLabel
    Left = 286
    Top = 238
    Width = 52
    Height = 13
    Caption = #39033#30446#20171#32461
  end
  object Label3: TLabel
    Left = 8
    Top = 273
    Width = 39
    Height = 13
    Caption = #24320#21457#21830
  end
  object Label4: TLabel
    Left = 8
    Top = 305
    Width = 26
    Height = 13
    Caption = #21344#22320
  end
  object Label5: TLabel
    Left = 8
    Top = 337
    Width = 52
    Height = 13
    Caption = #22303#22320#35777#21495
  end
  object Label6: TLabel
    Left = 8
    Top = 369
    Width = 52
    Height = 13
    Caption = #35768#21487#35777#21495
  end
  object Label7: TLabel
    Left = 8
    Top = 401
    Width = 26
    Height = 13
    Caption = #36134#21495
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 16
    Width = 240
    Height = 25
    DataSource = FrmMain.DSXiangMu
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
    Left = 8
    Top = 48
    Width = 753
    Height = 177
    DataSource = FrmMain.DSXiangMu
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #32534#21495
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'xiangmumingcheng'
        Title.Caption = #39033#30446#21517#31216
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kaifashang'
        Title.Caption = #24320#21457#21830
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zhangdi'
        Title.Caption = #21344#22320
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tudizhenghao'
        Title.Caption = #22303#22320#35777#21495
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yushouxukezhenghao'
        Title.Caption = #39044#21806#35768#21487#35777#21495
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
  object DBEdit1: TDBEdit
    Left = 64
    Top = 240
    Width = 185
    Height = 21
    DataField = 'xiangmumingcheng'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 272
    Width = 185
    Height = 21
    DataField = 'kaifashang'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 64
    Top = 302
    Width = 185
    Height = 21
    DataField = 'zhangdi'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 334
    Width = 185
    Height = 21
    DataField = 'tudizhenghao'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 64
    Top = 368
    Width = 185
    Height = 21
    DataField = 'yushouxukezhenghao'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 64
    Top = 400
    Width = 185
    Height = 21
    DataField = 'zhanghao'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 8
  end
  object DBMemo1: TDBMemo
    Left = 280
    Top = 256
    Width = 473
    Height = 185
    DataField = 'memo'
    DataSource = FrmMain.DSXiangMu
    TabOrder = 9
  end
end

object FrmDict: TFrmDict
  Left = 206
  Top = 125
  Width = 510
  Height = 557
  Caption = #36873#39033#32534#36753
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 432
    Width = 462
    Height = 13
    Caption = #27880#24847':'#20511#27454#25903#34892#65292#20511#27454#25903#34892#36131#20219#20154#65292#20511#27454#25903#34892#22320#22336#65292#20511#27454#25903#34892#30005#35805#34892#25968#35201#19968#19968#23545#24212
  end
  object Label2: TLabel
    Left = 17
    Top = 448
    Width = 455
    Height = 13
    Caption = #20197#20415#22312#26356#25913#20511#27454#25903#34892#26102#33258#21160#26356#25913#20511#27454#25903#34892#36131#20219#20154#65292#20511#27454#25903#34892#22320#22336#65292#20511#27454#25903#34892#30005#35805
  end
  object Label3: TLabel
    Left = 18
    Top = 470
    Width = 332
    Height = 13
    Caption = #27880#24847':'#20449#36151#21592#65292#20449#36151#21592#36523#20221#35777#65292#20449#36151#21592#30005#35805#34892#25968#35201#19968#19968#23545#24212
  end
  object Label4: TLabel
    Left = 18
    Top = 488
    Width = 377
    Height = 13
    Caption = #20197#20415#22312#26356#25913#20449#36151#21592#26102#33258#21160#26356#25913#20449#36151#21592#65292#20449#36151#21592#36523#20221#35777#65292#20449#36151#21592#30005#35805
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 0
    Width = 224
    Height = 25
    DataSource = DSDict
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
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
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 473
    Height = 161
    DataSource = DSDict
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'leixing'
        Title.Caption = #31867#22411
        Width = 229
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 208
    Width = 473
    Height = 217
    DataField = 'value'
    DataSource = DSDict
    TabOrder = 2
  end
  object Button1: TButton
    Left = 392
    Top = 0
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 3
    OnClick = Button1Click
  end
  object DSDict: TDataSource
    DataSet = ATDict
    Left = 136
    Top = 104
  end
  object ATDict: TADOTable
    Connection = FrmMain.ADOConnection1
    CursorType = ctStatic
    TableName = 't_dict'
    Left = 176
    Top = 104
  end
end

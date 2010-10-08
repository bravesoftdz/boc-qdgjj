object FrmShenPiXinXi1: TFrmShenPiXinXi1
  Left = 73
  Top = -12
  Width = 916
  Height = 685
  HorzScrollBar.Position = 367
  VertScrollBar.Position = 185
  Caption = 'FrmShenPiXinXi1'
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -231
    Top = -161
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    OnNeedData = QuickRep1NeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      50
      2100
      50
      2970
      70
      60
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 26
      Top = 19
      Width = 1074
      Height = 758
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2005.54166666667
        2841.625)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRDBText68: TQRDBText
        Left = 94
        Top = 725
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          248.708333333333
          1918.22916666667
          235.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'daikuanjine'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText64: TQRDBText
        Left = 984
        Top = 728
        Width = 233
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2603.5
          1926.16666666667
          616.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'yuehuankuanezhanyueshourubili'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText63: TQRDBText
        Left = 904
        Top = 680
        Width = 241
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2391.83333333333
          1799.16666666667
          637.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiaoyibeijingzhenshixingqueren'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText61: TQRDBText
        Left = 464
        Top = 680
        Width = 225
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1227.66666666667
          1799.16666666667
          595.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shoufouqiandinggoufanghetong'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText38: TQRDBText
        Left = 464
        Top = 589
        Width = 113
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1227.66666666667
          1558.39583333333
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'pinggurenzizhi'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText40: TQRDBText
        Left = 834
        Top = 249
        Width = 225
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2206.625
          658.8125
          595.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiougongjijinjiaocune'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 672
        Top = 249
        Width = 241
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1778
          658.8125
          637.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiouyuegongzishouru'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText21Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText36: TQRDBText
        Left = 869
        Top = 80
        Width = 190
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2299.22916666667
          211.666666666667
          502.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrengongjijinjiaocune'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 816
        Top = 635
        Width = 245
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2159
          1680.10416666667
          648.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26131#21464#29616','#25269#25276#29575'      ,'#31526#21512#25105#34892#35268#23450
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText66: TQRDBText
        Left = 643
        Top = 724
        Width = 121
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1701.27083333333
          1915.58333333333
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'huankuanfangshi'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText41: TQRDBText
        Left = 274
        Top = 488
        Width = 153
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          724.958333333333
          1291.16666666667
          404.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'fangwujianzhumianji'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText59: TQRDBText
        Left = 128
        Top = 680
        Width = 113
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          338.666666666667
          1799.16666666667
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shoufukuanbili'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText18: TQRDBText
        Left = 232
        Top = 448
        Width = 97
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          613.833333333333
          1185.33333333333
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shifoutongyi'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText28: TQRDBText
        Left = 231
        Top = 488
        Width = 92
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          611.1875
          1291.16666666667
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'fangwuxingzhi'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText39: TQRDBText
        Left = 644
        Top = 588
        Width = 97
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1703.91666666667
          1555.75
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shifouzhunru'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText52: TQRDBText
        Left = 563
        Top = 489
        Width = 70
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1489.60416666667
          1293.8125
          185.208333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'fushufangwujianzhumianji'
        OnPrint = QRDBText52Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText54: TQRDBText
        Left = 304
        Top = 400
        Width = 145
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          804.333333333333
          1058.33333333333
          383.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shoufangrenxingbie'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText43: TQRDBText
        Left = 712
        Top = 488
        Width = 57
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1883.83333333333
          1291.16666666667
          150.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'loucong'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText11: TQRDBText
        Left = 236
        Top = 277
        Width = 309
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          624.416666666667
          732.895833333333
          817.5625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiouchengxinxitongchaxunqingkuang'
        OnPrint = QRDBText11Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText31: TQRDBText
        Left = 455
        Top = 309
        Width = 161
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1203.85416666667
          817.5625
          425.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiatingyuezongshouru'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText22: TQRDBText
        Left = 496
        Top = 250
        Width = 265
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1312.33333333333
          661.458333333333
          701.145833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiourenxianzhinianxian'
        OnPrint = QRDBText22Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText23: TQRDBText
        Left = 556
        Top = 252
        Width = 77
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1471.08333333333
          666.75
          203.729166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiougongzuogangwei'
        OnPrint = QRDBText23Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText24: TQRDBText
        Left = 176
        Top = 251
        Width = 241
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          465.666666666667
          664.104166666667
          637.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiougongzuonianxian'
        OnPrint = QRDBText24Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText25: TQRDBText
        Left = 232
        Top = 250
        Width = 65
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          613.833333333333
          661.458333333333
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiouxueli'
        OnPrint = QRDBText25Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText19: TQRDBText
        Left = 648
        Top = 279
        Width = 161
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1714.5
          738.1875
          425.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'gongyangrenqingkuang'
        OnPrint = QRDBText19Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText12: TQRDBText
        Left = 232
        Top = 205
        Width = 65
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          613.833333333333
          542.395833333333
          171.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiouxingming'
        OnPrint = QRDBText12Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText10: TQRDBText
        Left = 738
        Top = 80
        Width = 176
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1952.625
          211.666666666667
          465.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenyuegongzishouru'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 721
        Top = 80
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1907.64583333333
          211.666666666667
          193.145833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenjishuzige'
        OnPrint = QRDBText9Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText8: TQRDBText
        Left = 395
        Top = 80
        Width = 225
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1045.10416666667
          211.666666666667
          595.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenrenxianzhinianxian'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Left = 376
        Top = 80
        Width = 137
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          994.833333333333
          211.666666666667
          362.479166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrengongzuogangwei'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 72
        Top = 80
        Width = 201
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          190.5
          211.666666666667
          531.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrengongzuonianxian'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText60: TQRDBText
        Left = 227
        Top = 680
        Width = 113
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          600.604166666667
          1799.16666666667
          298.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shoufukuanjine'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 984
        Top = 56
        Width = 129
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2603.5
          148.166666666667
          341.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenhunfou'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Left = 808
        Top = 56
        Width = 121
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2137.83333333333
          148.166666666667
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenxueli'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 552
        Top = 56
        Width = 217
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1460.5
          148.166666666667
          574.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenshenfenzhenghaoma'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 376
        Top = 56
        Width = 137
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          994.833333333333
          148.166666666667
          362.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenxingbie'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText1: TQRDBText
        Left = 232
        Top = 56
        Width = 145
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          613.833333333333
          148.166666666667
          383.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenxingming'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 156
        Top = 56
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          412.75
          148.166666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel2: TQRLabel
        Left = 322
        Top = 57
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          851.958333333333
          150.8125
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 738
        Top = 56
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1952.625
          148.166666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23398#21382
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 912
        Top = 56
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2413
          148.166666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23130#21542
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 744
        Top = 32
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1968.5
          84.6666666666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19994#21153#32534#21495#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 140
        Top = 80
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          370.416666666667
          211.666666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20316#24180#38480
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 308
        Top = 80
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          814.916666666667
          211.666666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20855#20307#23703#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 519
        Top = 80
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1373.1875
          211.666666666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20219#29616#32844#24180#38480
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 651
        Top = 80
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1722.4375
          211.666666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25216#26415#36164#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 641
        Top = 121
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1695.97916666667
          320.145833333333
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29616#23621#20303#29366#20917
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 560
        Top = 280
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1481.66666666667
          740.833333333333
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20379#20859#20154#24773#20917
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel15: TQRLabel
        Left = 136
        Top = 163
        Width = 151
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          359.833333333333
          431.270833333333
          399.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20010#20154#24449#20449#31995#32479#26597#35810#24773#20917#9
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel17: TQRLabel
        Left = 458
        Top = 311
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1211.79166666667
          822.854166666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23478#24237#26376#24635#25910#20837
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel19: TQRLabel
        Left = 240
        Top = 400
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          635
          1058.33333333333
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel20: TQRLabel
        Left = 144
        Top = 538
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          381
          1423.45833333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37197#22871#35774#26045
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel21: TQRLabel
        Left = 576
        Top = 400
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          1058.33333333333
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23130#21542
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 567
        Top = 446
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1500.1875
          1180.04166666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22320#29702#20301#32622
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 455
        Top = 56
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1203.85416666667
          148.166666666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36523#20221#35777#20214#21495#30721
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo1: TQRMemo
        Left = 8
        Top = 200
        Width = 46
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          21.1666666666667
          529.166666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20511#27454#20154
          ' '#24773#20917#9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo2: TQRMemo
        Left = 60
        Top = 104
        Width = 61
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          158.75
          275.166666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20511#27454#20154#22522
          ' '#26412#24773#20917#9#13
          #9#13
          #9
          #9
          #9
          #9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo3: TQRMemo
        Left = 129
        Top = 114
        Width = 97
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          341.3125
          301.625
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #24037#20316#21333#20301#21450#31616
          ' '#35201#24773#20917#35828#26126#9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 50
        Width = 1075
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          132.291666666667
          2844.27083333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 59
        Top = 665
        Width = 1013
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          156.104166666667
          1759.47916666667
          2680.22916666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 124
        Top = 74
        Width = 949
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          328.083333333333
          195.791666666667
          2510.89583333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 52
        Width = 3
        Height = 703
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1860.02083333333
          0
          137.583333333333
          7.9375)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 1072
        Top = 52
        Width = 3
        Height = 702
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1857.375
          2836.33333333333
          137.583333333333
          7.9375)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 56
        Top = 52
        Width = 3
        Height = 702
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1857.375
          148.166666666667
          137.583333333333
          7.9375)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 124
        Top = 52
        Width = 2
        Height = 286
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          756.708333333333
          328.083333333333
          137.583333333333
          5.29166666666667)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 228
        Top = 52
        Width = 1
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          248.708333333333
          603.25
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 124
        Top = 99
        Width = 950
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          328.083333333333
          261.9375
          2513.54166666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 124
        Top = 158
        Width = 949
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          328.083333333333
          418.041666666667
          2510.89583333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 300
        Top = 52
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          793.75
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 372
        Top = 52
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          984.25
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 549
        Top = 52
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1452.5625
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 451
        Top = 52
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1193.27083333333
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 718
        Top = 52
        Width = 1
        Height = 106
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          280.458333333333
          1899.70833333333
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 796
        Top = 53
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          2106.08333333333
          140.229166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 897
        Top = 100
        Width = 1
        Height = 144
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          381
          2373.3125
          264.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 974
        Top = 52
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2577.04166666667
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 639
        Top = 77
        Width = 1
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.3125
          1690.6875
          203.729166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 898
        Top = 118
        Width = 174
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          2375.95833333333
          312.208333333333
          460.375)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 904
        Top = 101
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2391.83333333333
          267.229166666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301#30005#35805
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Left = 904
        Top = 121
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2391.83333333333
          320.145833333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23478#24237#30005#35805
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape21: TQRShape
        Left = 974
        Top = 102
        Width = 1
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          2577.04166666667
          269.875
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 60
        Top = 183
        Width = 1014
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          158.75
          484.1875
          2682.875)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRMemo4: TQRMemo
        Left = 806
        Top = 164
        Width = 91
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          2132.54166666667
          433.916666666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #36926#26399#35760#24405#24773#20917)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo5: TQRMemo
        Left = 60
        Top = 222
        Width = 61
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          158.75
          587.375
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20511#27454#20154#37197
          ' '#20598#24773#20917#9#13
          #9#13
          #9
          #9
          #9
          #9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape23: TQRShape
        Left = 795
        Top = 159
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          2103.4375
          420.6875
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 156
        Top = 207
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          412.75
          547.6875
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape24: TQRShape
        Left = 124
        Top = 241
        Width = 949
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          328.083333333333
          637.645833333333
          2510.89583333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRMemo6: TQRMemo
        Left = 306
        Top = 196
        Width = 64
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          809.625
          518.583333333333
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #36523#20221#35777#20214
          '  '#21495#30721)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape25: TQRShape
        Left = 300
        Top = 159
        Width = 1
        Height = 109
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          288.395833333333
          793.75
          420.6875
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 228
        Top = 52
        Width = 1
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.8125
          603.25
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 228
        Top = 185
        Width = 1
        Height = 115
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          304.270833333333
          603.25
          489.479166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 372
        Top = 184
        Width = 1
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          984.25
          486.833333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 453
        Top = 184
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          222.25
          1198.5625
          486.833333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo7: TQRMemo
        Left = 457
        Top = 196
        Width = 92
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          1209.14583333333
          518.583333333333
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #24037#20316#21333#20301#21450#31616
          ' '#35201#24773#20917#35828#26126#9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape30: TQRShape
        Left = 551
        Top = 186
        Width = 1
        Height = 153
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          404.8125
          1457.85416666667
          492.125
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo8: TQRMemo
        Left = 810
        Top = 270
        Width = 80
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          2143.125
          714.375
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #36926#26399#35760#24405#24773
          '    '#20917)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel16: TQRLabel
        Left = 797
        Top = 250
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2108.72916666667
          661.458333333333
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26376#24037#36164#25910#20837
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 162
        Top = 251
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          428.625
          664.104166666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23398#21382
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel29: TQRLabel
        Left = 308
        Top = 250
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          814.916666666667
          661.458333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20316#24180#38480
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel30: TQRLabel
        Left = 473
        Top = 252
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1251.47916666667
          666.75
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20855#20307#23703#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel31: TQRLabel
        Left = 644
        Top = 252
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1703.91666666667
          666.75
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20219#29616#32844#24180#38480
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo9: TQRMemo
        Left = 129
        Top = 271
        Width = 97
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          341.3125
          717.020833333333
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20010#20154#24449#20449#31995#32479
          '  '#26597#35810#24773#20917)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape33: TQRShape
        Left = 124
        Top = 267
        Width = 949
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          328.083333333333
          706.4375
          2510.89583333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 57
        Top = 302
        Width = 1016
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          150.8125
          799.041666666667
          2688.16666666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRMemo10: TQRMemo
        Left = 60
        Top = 305
        Width = 61
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          158.75
          806.979166666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #23478#24237#20854#20182
          #25910#20837#26469#28304#13
          #9
          #9
          #9
          #9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape35: TQRShape
        Left = 57
        Top = 340
        Width = 1016
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          150.8125
          899.583333333333
          2688.16666666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 3
        Top = 380
        Width = 1070
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          7.9375
          1005.41666666667
          2831.04166666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRMemo11: TQRMemo
        Left = 60
        Top = 345
        Width = 166
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          158.75
          912.8125
          439.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #23478#24237#25910#20837#30495#23454#24615#21450#21512#29702#24615
          '        '#35780#20215#9#9
          ''
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape37: TQRShape
        Left = 639
        Top = 244
        Width = 1
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333
          1690.6875
          645.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 794
        Top = 245
        Width = 1
        Height = 95
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          251.354166666667
          2100.79166666667
          648.229166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 724
        Top = 244
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          1915.58333333333
          645.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 453
        Top = 302
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.8958333333333
          1198.5625
          799.041666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo12: TQRMemo
        Left = 652
        Top = 306
        Width = 133
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          1725.08333333333
          809.625
          351.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20854#20182#36127#20538#21450#25903#20986
          #65288#21253#25324#25110#26377#36127#20538#65289)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape43: TQRShape
        Left = 228
        Top = 340
        Width = 1
        Height = 326
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          862.541666666667
          603.25
          899.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo13: TQRMemo
        Left = 8
        Top = 520
        Width = 46
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          21.1666666666667
          1375.83333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20132#26131#32972
          #26223#24773#20917#9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo14: TQRMemo
        Left = 60
        Top = 390
        Width = 61
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          158.75
          1031.875
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #21806#25151#20154#22995
          '   '#21517#13
          #9
          #9
          #9
          #9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape44: TQRShape
        Left = 57
        Top = 431
        Width = 1016
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          150.8125
          1140.35416666667
          2688.16666666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 0
        Top = 753
        Width = 1075
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          1992.3125
          2844.27083333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRMemo15: TQRMemo
        Left = 375
        Top = 390
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          992.1875
          1031.875
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #36523#20221#35777#20214#21495
          '    '#30721
          #9
          #9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo16: TQRMemo
        Left = 728
        Top = 390
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1926.16666666667
          1031.875
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #25151#20135#20849#26377#20154
          '   '#22995#21517)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo18: TQRMemo
        Left = 60
        Top = 440
        Width = 166
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          158.75
          1164.16666666667
          439.208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20849#26377#20154#26159#21542#20986#20855#21516#24847#20986#21806
          '     '#25151#23627#20070#38754#35777#26126#9#9)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo19: TQRMemo
        Left = 304
        Top = 438
        Width = 61
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          804.333333333333
          1158.875
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20135#26435#35777#32534
          '   '#21495)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo20: TQRMemo
        Left = 459
        Top = 485
        Width = 91
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          1214.4375
          1283.22916666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #38468#23646#25151#24314#31569#38754
          '     '#31215)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo21: TQRMemo
        Left = 305
        Top = 482
        Width = 61
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          806.979166666667
          1275.29166666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20027#25151#24314#31569
          '  '#38754#31215)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo22: TQRMemo
        Left = 814
        Top = 675
        Width = 76
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          2153.70833333333
          1785.9375
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20132#26131#32972#26223#30495
          ' '#23454#24615#30830#35748)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo23: TQRMemo
        Left = 374
        Top = 672
        Width = 76
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          989.541666666667
          1778
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #26159#21542#31614#35746#36141
          '  '#25151#21512#21516)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo24: TQRMemo
        Left = 60
        Top = 677
        Width = 61
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          158.75
          1791.22916666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #39318#20184#27454#27604
          '   '#20363)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo25: TQRMemo
        Left = 729
        Top = 629
        Width = 76
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1928.8125
          1664.22916666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #25269#25276#29575#21450#25285
          #20445#33021#21147#35780#20215)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo26: TQRMemo
        Left = 729
        Top = 532
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1928.8125
          1407.58333333333
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #21464#29616#33021#21147#35780
          '    '#20215)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 212
        Top = 680
        Width = 76
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          560.916666666667
          1799.16666666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39318#20184#27454#37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel18: TQRLabel
        Left = 144
        Top = 636
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          381
          1682.75
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20132#26131#20215#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel32: TQRLabel
        Left = 132
        Top = 589
        Width = 91
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          349.25
          1558.39583333333
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35780#20272#26426#26500#21517#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel33: TQRLabel
        Left = 144
        Top = 488
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          381
          1291.16666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25151#23627#24615#36136
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel34: TQRLabel
        Left = 62
        Top = 561
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          164.041666666667
          1484.3125
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25152#36141#25151#23627
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel35: TQRLabel
        Left = 458
        Top = 539
        Width = 91
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1211.79166666667
          1426.10416666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22303#22320#26435#21033#24773#20917
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel36: TQRLabel
        Left = 664
        Top = 489
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1756.83333333333
          1293.8125
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27004#23618
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 906
        Top = 445
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2397.125
          1177.39583333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24314#25104#24180#20195
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape46: TQRShape
        Left = 124
        Top = 381
        Width = 1
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          328.083333333333
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 124
        Top = 381
        Width = 1
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          328.083333333333
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 300
        Top = 381
        Width = 1
        Height = 139
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          367.770833333333
          793.75
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 371
        Top = 381
        Width = 1
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125
          981.604166666667
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 455
        Top = 381
        Width = 1
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.9375
          1203.85416666667
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 551
        Top = 381
        Width = 1
        Height = 237
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          627.0625
          1457.85416666667
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 639
        Top = 382
        Width = 1
        Height = 139
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          367.770833333333
          1690.6875
          1010.70833333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 725
        Top = 381
        Width = 1
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          1918.22916666667
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 806
        Top = 381
        Width = 1
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666667
          2132.54166666667
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo27: TQRMemo
        Left = 815
        Top = 482
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          2156.35416666667
          1275.29166666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #25151#23627#32467#26500#21450
          '   '#26397#21521)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape55: TQRShape
        Left = 896
        Top = 381
        Width = 1
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125
          2370.66666666667
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 979
        Top = 381
        Width = 1
        Height = 92
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          243.416666666667
          2590.27083333333
          1008.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 57
        Top = 473
        Width = 1016
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          150.8125
          1251.47916666667
          2688.16666666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 128
        Top = 520
        Width = 945
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          338.666666666667
          1375.83333333333
          2500.3125)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 126
        Top = 571
        Width = 946
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          333.375
          1510.77083333333
          2502.95833333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 126
        Top = 618
        Width = 946
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          333.375
          1635.125
          2502.95833333333)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape61: TQRShape
        Left = 805
        Top = 474
        Width = 1
        Height = 279
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          738.1875
          2129.89583333333
          1254.125
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape62: TQRShape
        Left = 726
        Top = 473
        Width = 2
        Height = 280
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          740.833333333333
          1920.875
          1251.47916666667
          5.29166666666667)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape63: TQRShape
        Left = 455
        Top = 473
        Width = 1
        Height = 145
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          383.645833333333
          1203.85416666667
          1251.47916666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape64: TQRShape
        Left = 124
        Top = 474
        Width = 1
        Height = 279
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          738.1875
          328.083333333333
          1254.125
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape65: TQRShape
        Left = 1
        Top = 710
        Width = 1074
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          2.64583333333333
          1878.54166666667
          2841.625)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel38: TQRLabel
        Left = 398
        Top = 725
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1053.04166666667
          1918.22916666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21033#29575
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel39: TQRLabel
        Left = 249
        Top = 723
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          658.8125
          1912.9375
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26399#38480
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel40: TQRLabel
        Left = 904
        Top = 587
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2391.83333333333
          1553.10416666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35780#20272#20215#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel41: TQRLabel
        Left = 564
        Top = 587
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1492.25
          1553.10416666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26159#21542#20934#20837
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel42: TQRLabel
        Left = 736
        Top = 588
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1947.33333333333
          1555.75
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20272#20215#26041#27861
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel43: TQRLabel
        Left = 376
        Top = 588
        Width = 76
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          994.833333333333
          1555.75
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35780#20272#20154#36164#36136
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape66: TQRShape
        Left = 372
        Top = 572
        Width = 1
        Height = 180
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          476.25
          984.25
          1513.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 640
        Top = 572
        Width = 1
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333
          1693.33333333333
          1513.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape69: TQRShape
        Left = 896
        Top = 572
        Width = 1
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333
          2370.66666666667
          1513.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 981
        Top = 572
        Width = 1
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333
          2595.5625
          1513.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo28: TQRMemo
        Left = 7
        Top = 716
        Width = 46
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.6666666666667
          18.5208333333333
          1894.41666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #36151#27454#24773
          '  '#20917)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape71: TQRShape
        Left = 309
        Top = 620
        Width = 1
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          817.5625
          1640.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape72: TQRShape
        Left = 455
        Top = 668
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          222.25
          1203.85416666667
          1767.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape73: TQRShape
        Left = 551
        Top = 711
        Width = 1
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1457.85416666667
          1881.1875
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape74: TQRShape
        Left = 639
        Top = 668
        Width = 1
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          1690.6875
          1767.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel45: TQRLabel
        Left = 564
        Top = 723
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1492.25
          1912.9375
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36824#27454#26041#24335
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel46: TQRLabel
        Left = 734
        Top = 725
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1942.04166666667
          1918.22916666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26376#36824#27454#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel47: TQRLabel
        Left = 648
        Top = 680
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1714.5
          1799.16666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36141#25151#29992#36884
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape76: TQRShape
        Left = 896
        Top = 669
        Width = 1
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          219.604166666667
          2370.66666666667
          1770.0625
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape75: TQRShape
        Left = 981
        Top = 711
        Width = 1
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          2595.5625
          1881.1875
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo29: TQRMemo
        Left = 902
        Top = 715
        Width = 76
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          2386.54166666667
          1891.77083333333
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #26376#36824#27454#39069#21344
          #26376#25910#20837#27604#20363)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo30: TQRMemo
        Left = 311
        Top = 628
        Width = 61
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          822.854166666667
          1661.58333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          #20215#26684#21512#29702
          ' '#24615#35780#20215)
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 903
        Top = 189
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2389.1875
          500.0625
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301#30005#35805
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape31: TQRShape
        Left = 898
        Top = 211
        Width = 174
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          2375.95833333333
          558.270833333333
          460.375)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 974
        Top = 183
        Width = 2
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          156.104166666667
          2577.04166666667
          484.1875
          5.29166666666667)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel27: TQRLabel
        Left = 903
        Top = 219
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2389.1875
          579.4375
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23478#24237#30005#35805
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel48: TQRLabel
        Left = 880
        Top = 6
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2328.33333333333
          15.875
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532'1'#39029', '#20849'2'#39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText13: TQRDBText
        Left = 308
        Top = 164
        Width = 313
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          814.916666666667
          433.916666666667
          828.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenchengxinxitongchaxunqingkuang'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText14: TQRDBText
        Left = 903
        Top = 163
        Width = 167
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2389.1875
          431.270833333333
          441.854166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenyuqijiluqingkuang'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText15: TQRDBText
        Left = 976
        Top = 119
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2582.33333333333
          314.854166666667
          248.708333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenjiatingdianhua'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText16: TQRDBText
        Left = 976
        Top = 100
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2582.33333333333
          264.583333333333
          248.708333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrendanweidianhua'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText20: TQRDBText
        Left = 904
        Top = 281
        Width = 169
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2391.83333333333
          743.479166666667
          447.145833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeiouyuqijiluqingkuang'
        OnPrint = QRDBText20Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText26: TQRDBText
        Left = 978
        Top = 219
        Width = 93
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2587.625
          579.4375
          246.0625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeioujiatingdianhua'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText27: TQRDBText
        Left = 977
        Top = 189
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2584.97916666667
          500.0625
          248.708333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenpeioudanweidianhua'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText32: TQRDBText
        Left = 808
        Top = 312
        Width = 257
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2137.83333333333
          825.5
          679.979166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiatingqitafuzhaijizhichu'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText33: TQRDBText
        Left = 240
        Top = 352
        Width = 825
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          635
          931.333333333334
          2182.8125)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiatingshouruzhenshixingjihelipingjia'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText44: TQRDBText
        Left = 816
        Top = 536
        Width = 169
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2159
          1418.16666666667
          447.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'bianxiannenglipingjia'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText42: TQRDBText
        Left = 864
        Top = 444
        Width = 177
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2286
          1174.75
          468.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'fangwujianchengniandai'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText37: TQRDBText
        Left = 231
        Top = 588
        Width = 138
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          611.1875
          1555.75
          365.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'pinggujigoumingcheng'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText35: TQRDBText
        Left = 648
        Top = 400
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1714.5
          1058.33333333333
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'hunfou'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText48: TQRDBText
        Left = 376
        Top = 448
        Width = 161
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          994.833333333333
          1185.33333333333
          425.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'chanquanzhengbianhao'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText49: TQRDBText
        Left = 809
        Top = 587
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2140.47916666667
          1553.10416666667
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'gujiafangfa'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText50: TQRDBText
        Left = 808
        Top = 400
        Width = 86
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2137.83333333333
          1058.33333333333
          227.541666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'fangchangongyourenxingming'
        OnPrint = QRDBText50Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText51: TQRDBText
        Left = 558
        Top = 539
        Width = 153
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1476.375
          1426.10416666667
          404.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'tudiquanliqingkuang'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText55: TQRDBText
        Left = 130
        Top = 395
        Width = 95
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          343.958333333333
          1045.10416666667
          251.354166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'shoufangrenxingming'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText58: TQRDBText
        Left = 916
        Top = 635
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2423.58333333333
          1680.10416666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'diyalv'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText65: TQRDBText
        Left = 808
        Top = 724
        Width = 65
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2137.83333333333
          1915.58333333333
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'yunhuankuane'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText67: TQRDBText
        Left = 461
        Top = 725
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1219.72916666667
          1918.22916666667
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'lilv'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText69: TQRDBText
        Left = 298
        Top = 724
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          788.458333333333
          1915.58333333333
          129.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'qixian'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo31: TQRMemo
        Left = 230
        Top = 100
        Width = 408
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667
          608.541666666667
          264.583333333333
          1079.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRMemo32: TQRMemo
        Left = 725
        Top = 100
        Width = 171
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.8125
          1918.22916666667
          264.583333333333
          452.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRMemo33: TQRMemo
        Left = 374
        Top = 185
        Width = 77
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667
          989.541666666667
          489.479166666667
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRMemo34: TQRMemo
        Left = 553
        Top = 186
        Width = 342
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667
          1463.14583333333
          492.125
          904.875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 132
        Top = 313
        Width = 317
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          349.25
          828.145833333333
          838.729166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiatingqitashourulaiyuan'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo35: TQRMemo
        Left = 458
        Top = 382
        Width = 91
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333
          1211.79166666667
          1010.70833333333
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRMemo377: TQRMemo
        Left = 641
        Top = 432
        Width = 254
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.1875
          1695.97916666667
          1143
          672.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo38: TQRMemo
        Left = 374
        Top = 622
        Width = 351
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          989.541666666667
          1645.70833333333
          928.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo39: TQRMemo
        Left = 230
        Top = 622
        Width = 75
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          608.541666666667
          1645.70833333333
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel49: TQRLabel
        Left = 429
        Top = 488
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1135.0625
          1291.16666666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #13217
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo37: TQRMemo
        Left = 900
        Top = 475
        Width = 168
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333
          2381.25
          1256.77083333333
          444.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo40: TQRMemo
        Left = 984
        Top = 574
        Width = 88
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333
          2603.5
          1518.70833333333
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo41: TQRMemo
        Left = 230
        Top = 522
        Width = 222
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127
          608.541666666667
          1381.125
          587.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo36: TQRMemo
        Left = 981
        Top = 382
        Width = 91
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333
          2595.5625
          1010.70833333333
          240.770833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 371
        Top = 16
        Width = 84
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          981.604166666667
          42.3333333333333
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23457#25209#20449#24687#34920'1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText29: TQRDBText
        Left = 40
        Top = 16
        Width = 329
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          105.833333333333
          42.3333333333333
          870.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'hetonghao'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText30: TQRDBText
        Left = 824
        Top = 32
        Width = 227
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2180.16666666667
          84.6666666666667
          600.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'yewubianhao'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo42: TQRMemo
        Left = 729
        Top = 668
        Width = 74
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125
          1928.8125
          1767.41666666667
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape67: TQRShape
        Left = 597
        Top = 77
        Width = 1
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          1579.5625
          203.729166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel51: TQRLabel
        Left = 622
        Top = 80
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1645.70833333333
          211.666666666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape77: TQRShape
        Left = 518
        Top = 77
        Width = 1
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          1370.54166666667
          203.729166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel52: TQRLabel
        Left = 276
        Top = 80
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          730.25
          211.666666666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel53: TQRLabel
        Left = 417
        Top = 250
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1103.3125
          661.458333333333
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel54: TQRLabel
        Left = 761
        Top = 251
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2013.47916666667
          664.104166666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel55: TQRLabel
        Left = 1041
        Top = 444
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2754.3125
          1174.75
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel56: TQRLabel
        Left = 772
        Top = 489
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2042.58333333333
          1293.8125
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27004
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel57: TQRLabel
        Left = 341
        Top = 680
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          902.229166666667
          1799.16666666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19975#20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel58: TQRLabel
        Left = 349
        Top = 724
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          923.395833333333
          1915.58333333333
          42.3333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel59: TQRLabel
        Left = 188
        Top = 725
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          497.416666666667
          1918.22916666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19975#20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel44: TQRLabel
        Left = 62
        Top = 724
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          164.041666666667
          1915.58333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36151#27454#37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel62: TQRLabel
        Left = 952
        Top = 80
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2518.83333333333
          211.666666666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel63: TQRLabel
        Left = 619
        Top = 310
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1637.77083333333
          820.208333333334
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape39: TQRShape
        Left = 898
        Top = 138
        Width = 174
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          2375.95833333333
          365.125
          460.375)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel64: TQRLabel
        Left = 919
        Top = 141
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2431.52083333333
          373.0625
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25163#26426
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText34: TQRDBText
        Left = 976
        Top = 140
        Width = 95
        Height = 16
        Cursor = crHandPoint
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          2582.33333333333
          370.416666666667
          251.354166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'jiekuanrenshouji'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel65: TQRLabel
        Left = 877
        Top = 724
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2320.39583333333
          1915.58333333333
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo17: TQRMemo
        Left = 901
        Top = 392
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          2383.89583333333
          1037.16666666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Lines.Strings = (
          #36523#20221#35777#20214#21495
          '    '#30721)
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape42: TQRShape
        Left = 207
        Top = 668
        Width = 1
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333
          547.6875
          1767.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape78: TQRShape
        Left = 228
        Top = 713
        Width = 1
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          603.25
          1886.47916666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape79: TQRShape
        Left = 290
        Top = 668
        Width = 1
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333
          767.291666666667
          1767.41666666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo43: TQRMemo
        Left = 799
        Top = 81
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2114.02083333333
          214.3125
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Lines.Strings = (
          #26376#24037#36164#25910#20837)
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape80: TQRShape
        Left = 897
        Top = 52
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2373.3125
          137.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape81: TQRShape
        Left = 897
        Top = 268
        Width = 1
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          2373.3125
          709.083333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo44: TQRMemo
        Left = 931
        Top = 81
        Width = 80
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2463.27083333333
          214.3125
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Lines.Strings = (
          #20844#31215#37329#32564#23384#39069)
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape82: TQRShape
        Left = 865
        Top = 76
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2288.64583333333
          201.083333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape83: TQRShape
        Left = 1011
        Top = 76
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          2674.9375
          201.083333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape84: TQRShape
        Left = 929
        Top = 76
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          2457.97916666667
          201.083333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 914
        Top = 80
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2418.29166666667
          211.666666666667
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel60: TQRLabel
        Left = 1059
        Top = 80
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2801.9375
          211.666666666667
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape85: TQRShape
        Left = 865
        Top = 244
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          2288.64583333333
          645.583333333333
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel67: TQRLabel
        Left = 952
        Top = 249
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2518.83333333333
          658.8125
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRMemo45: TQRMemo
        Left = 931
        Top = 250
        Width = 80
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          2463.27083333333
          661.458333333333
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Lines.Strings = (
          #20844#31215#37329#32564#23384#39069)
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape86: TQRShape
        Left = 1011
        Top = 245
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          2674.9375
          648.229166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape87: TQRShape
        Left = 929
        Top = 245
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          2457.97916666667
          648.229166666667
          2.64583333333333)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel68: TQRLabel
        Left = 914
        Top = 249
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2418.29166666667
          658.8125
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel69: TQRLabel
        Left = 1059
        Top = 249
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2801.9375
          658.8125
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end

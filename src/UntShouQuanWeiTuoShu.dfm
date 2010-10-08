object frmShouQuanWeiTuoShu: TfrmShouQuanWeiTuoShu
  Left = 164
  Top = 32
  Width = 797
  Height = 554
  VertScrollBar.Position = 567
  Caption = 'frmShouQuanWeiTuoShu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 13
    Top = -563
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = FrmEdt.ADOQuery1
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
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
      Left = 38
      Top = 38
      Width = 718
      Height = 1043
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
        2759.60416666667
        1899.70833333333)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRMemo1: TQRMemo
        Left = 48
        Top = 242
        Width = 625
        Height = 679
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1796.52083333333
          127
          640.291666666667
          1653.64583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        Lines.Strings = (
          '    '#20170#22996#25176'       '#21516#24535'('#24615#21035#65306'    '#24180#40836#65306'     '#32844#21153#65306'       '#65289
          ''
          #20026#25105#21333#20301#30340#20195#29702#20154#65292#20840#26435#20195#34920#25105#21333#20301#21150#29702
          '    '
          ''
          ''
          #25151#23627#25269#25276#30331#35760#25163#32493#12290
          ''
          '    '#25105#21333#20301#23545#20195#29702#20154#20381#35268#23450#21150#29702#30340#26377#20851#25151#23627#25269#25276#30331#35760#20107#23452#65292#22343#25215
          ''
          #25285#27665#20107#36131#20219#12290
          ''
          ''
          '                 '#22996'  '#25176'  '#21333'  '#20301#65288#30422#31456#65289#65306
          ''
          '                 '#21333#20301#27861#23450#20195#34920#20154#65288#30422#31456#65289#65306
          ''
          '                 '#21463'  '#22996'  '#25176'  '#20154#65288#30422#31456#65289#65306
          ''
          '                 '#22996#25176#26085#26399#65306'     '#24180'   '#26376'   '#26085
          ''
          ''
          ''
          #38468#27880#65306
          '     '
          '    '#21463#22996#25176#20154#21150#20844#22320#28857#65306
          ''
          '    '#32852#31995#30005#35805#65306)
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape1: TQRShape
        Left = 155
        Top = 264
        Width = 78
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          410.104166666667
          698.5
          206.375)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 272
        Top = 72
        Width = 126
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          719.666666666667
          190.5
          333.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25480#26435#22996#25176#20070
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRShape9: TQRShape
        Left = 50
        Top = 208
        Width = 255
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          132.291666666667
          550.333333333333
          674.6875)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 48
        Top = 320
        Width = 177
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          127
          846.666666666667
          468.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmEdt.ADOQuery1
        DataField = 'fangwudiliweizhi'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
end

object FrmEmailData: TFrmEmailData
  Left = 507
  Top = 411
  Width = 472
  Height = 210
  Caption = #29983#25104'Email'#25968#25454#21253
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 104
    Height = 13
    Caption = #19978#27425#29983#25104#25968#25454#26102#38388
  end
  object Label2: TLabel
    Left = 40
    Top = 24
    Width = 91
    Height = 13
    Caption = #26412#27425#25968#25454#23558#29983#25104
  end
  object Label3: TLabel
    Left = 152
    Top = 24
    Width = 145
    Height = 13
    Caption = '2009-01-01 00'#65306'00'#65306'00'
  end
  object Label4: TLabel
    Left = 152
    Top = 8
    Width = 145
    Height = 13
    Caption = '2009-01-01 00'#65306'00'#65306'00'
  end
  object Label5: TLabel
    Left = 304
    Top = 24
    Width = 78
    Height = 13
    Caption = #21518#20462#25913#30340#25968#25454
  end
  object Label6: TLabel
    Left = 88
    Top = 152
    Width = 299
    Height = 13
    Caption = #23548#20986#25968#25454#35831#36890#36807#20013#34892#20869#37096#37038#20214#31995#32479#21457#36865#32473#32593#31449#31649#29702#21592
  end
  object Button1: TButton
    Left = 136
    Top = 112
    Width = 75
    Height = 25
    Caption = #29983#25104
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 80
    Width = 425
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 1
  end
  object Button2: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = #20851#38381
    TabOrder = 2
    OnClick = Button2Click
  end
  object cb: TCheckBox
    Left = 21
    Top = 48
    Width = 127
    Height = 17
    Caption = #23548#20986#25351#23450#26102#38388#21518#30340
    TabOrder = 3
  end
  object dtpDate: TDateTimePicker
    Left = 151
    Top = 46
    Width = 99
    Height = 21
    CalAlignment = dtaLeft
    Date = 40308.8675173843
    Time = 40308.8675173843
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object dtpTime: TDateTimePicker
    Left = 251
    Top = 46
    Width = 99
    Height = 21
    CalAlignment = dtaLeft
    Date = 40308
    Time = 40308
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 5
  end
  object sd: TSaveDialog
    DefaultExt = 'gar'
    Filter = 'gar|*.gar'
    Title = #20445#23384'Email'#25968#25454#21253
    Left = 384
    Top = 8
  end
  object AQExport: TADOQuery
    Connection = FrmMain.ADOConnection1
    Parameters = <>
    Left = 64
    Top = 104
  end
  object zip: TZipMaster19
    AddOptions = []
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR, assJPG, assJPEG, ass7Zp, assMP3, assWMV, assWMA, assDVR, assAVI]
    ConfirmErase = False
    DLLDirectory = './'
    DLL_Load = True
    ExtrOptions = []
    KeepFreeOnAllDisks = 0
    KeepFreeOnDisk1 = 0
    MaxVolumeSize = 0
    MaxVolumeSizeKb = 0
    NoReadAux = False
    SFXOptions = []
    SFXOverwriteMode = ovrAlways
    SpanOptions = []
    Trace = False
    Unattended = False
    UseUTF8 = False
    Verbose = False
    Version = '1.9.0.0102'
    WriteOptions = []
    Left = 328
    Top = 104
  end
end

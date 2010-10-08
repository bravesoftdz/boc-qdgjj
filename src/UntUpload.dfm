object FrmUpload: TFrmUpload
  Left = 303
  Top = 186
  Width = 572
  Height = 374
  Caption = #29983#25104#19978#20256#25968#25454
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 312
    Width = 416
    Height = 13
    Caption = #32593#31449#31649#29702#21592#35831#23558#29983#25104#30340#19978#20256#25991#20214#19978#20256#33267#32593#31449#65292#26412#26426#25968#25454#35831#29983#25104#37038#20214#25968#25454#21253
  end
  object LBFileList: TListBox
    Left = 16
    Top = 32
    Width = 529
    Height = 185
    ItemHeight = 13
    TabOrder = 0
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 248
    Width = 513
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 1
  end
  object Button1: TButton
    Left = 176
    Top = 280
    Width = 105
    Height = 25
    Caption = #29983#25104#19978#20256#25991#20214
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 280
    Width = 75
    Height = 25
    Caption = #20851#38381
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 18
    Top = 6
    Width = 127
    Height = 25
    Caption = ' + '#28155#21152#37038#20214#25968#25454#21253
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 19
    Top = 219
    Width = 75
    Height = 25
    Caption = ' - '#21024#38500
    TabOrder = 5
    OnClick = Button4Click
  end
  object od: TOpenDialog
    DefaultExt = 'gar'
    Filter = 'gar|*.gar'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 216
  end
  object sd: TSaveDialog
    DefaultExt = 'zip'
    Filter = 'zip|*.zip'
    Left = 432
    Top = 272
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
    Version = '1.9.0.0091'
    WriteOptions = []
    Left = 480
    Top = 272
  end
end

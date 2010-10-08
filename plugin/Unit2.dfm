object frmplugin: Tfrmplugin
  Left = 714
  Top = 234
  BorderStyle = bsNone
  Caption = 'frmplugin'
  ClientHeight = 167
  ClientWidth = 197
  Color = clSilver
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 28
    Width = 26
    Height = 13
    Caption = #22995#21517
  end
  object Label2: TLabel
    Left = 2
    Top = 50
    Width = 52
    Height = 13
    Caption = #35777#20214#21495#30721
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 197
    Height = 17
    Align = alTop
    Color = clBackground
    TabOrder = 0
  end
  object EdtName: TEdit
    Left = 56
    Top = 24
    Width = 137
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'EdtName'
  end
  object EdtShenFenZhengHao: TEdit
    Left = 56
    Top = 48
    Width = 137
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    Text = '370205198208215012'
  end
  object Button1: TButton
    Left = 40
    Top = 96
    Width = 121
    Height = 25
    Caption = #20174#31995#32479#23548#20837#33267#32593#39029
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 128
    Width = 121
    Height = 25
    Caption = #20174#32593#39029#23548#20837#33267#31995#32479
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 72
    Width = 177
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
    Visible = False
    OnClick = Edit1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 128
  end
end

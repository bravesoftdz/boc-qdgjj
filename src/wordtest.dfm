object WordControlFrm: TWordControlFrm
  Left = 221
  Top = 102
  Width = 698
  Height = 484
  Caption = 'WordControlFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 112
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 104
    Top = 160
    Width = 369
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Left = 232
    Top = 96
  end
end

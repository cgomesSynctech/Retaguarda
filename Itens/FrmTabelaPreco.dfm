object Form1: TForm1
  Left = 220
  Top = 103
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ZReport1: TZReport
    Left = 10
    Top = 12
    Width = 74
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options.LineSpacing = zrd16
    Options.AutoHeight = False
    object ZReport1Header: TZRBand
      Left = 2
      Top = 1
      Width = 71
      Height = 2
      Stretch = False
      BandType = zbtHeader
    end
    object ZReport1Detail: TZRBand
      Left = 2
      Top = 3
      Width = 71
      Height = 2
      Stretch = False
      BandType = zbtDetail
    end
    object ZReport1Footer: TZRBand
      Left = 2
      Top = 5
      Width = 71
      Height = 2
      Stretch = False
      BandType = zbtFooter
    end
  end
end

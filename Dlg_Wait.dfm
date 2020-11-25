object DlgWait: TDlgWait
  Left = 444
  Top = 227
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'DlgWait'
  ClientHeight = 78
  ClientWidth = 395
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Shape1: TTS_Shape
    Left = 0
    Top = 0
    Width = 395
    Height = 78
    Align = alClient
    Pen.Color = clGray
    Transparent = False
  end
  object lblMsg: TTS_Label
    Left = 0
    Top = 0
    Width = 395
    Height = 78
    Align = alClient
    Alignment = taCenter
    Caption = 'Fazendo Backup, aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 13001472
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
end

object dlgDivulgacao: TdlgDivulgacao
  Left = 267
  Top = 14
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'dlgDivulgacao'
  ClientHeight = 605
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnDivulgacao: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 574
    Align = alClient
    Caption = 'pnDivulgacao'
    TabOrder = 0
    object wbDivulgacao: TWebBrowser
      Left = 1
      Top = 1
      Width = 815
      Height = 572
      TabStop = False
      Align = alClient
      TabOrder = 0
      ControlData = {
        4C0000003C5400001E3B00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126200000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 574
    Width = 817
    Height = 31
    Align = alBottom
    TabOrder = 1
    object btnFechar: TButton
      Left = 738
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object tmDivulgacao: TTimer
    Enabled = False
    Left = 216
    Top = 110
  end
end

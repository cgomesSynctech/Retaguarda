object DlgEscolherTax: TDlgEscolherTax
  Left = 331
  Top = 206
  ActiveControl = lbTax
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Escolha o Tax'
  ClientHeight = 107
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbTax: TDBLookupListBox
    Left = 0
    Top = 0
    Width = 255
    Height = 106
    Align = alClient
    Ctl3D = False
    DataField = 'lkTax'
    DataSource = DMSaidas.C_TabelaDS
    ParentCtl3D = False
    TabOrder = 0
    OnDblClick = lbTaxDblClick
    OnKeyPress = lbTaxKeyPress
  end
end

object DlgRemoverCampos: TDlgRemoverCampos
  Left = 227
  Top = 207
  BorderStyle = bsDialog
  Caption = 'Remover Campo'
  ClientHeight = 116
  ClientWidth = 309
  Color = 13233660
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label1: TTS_Label
    Left = 0
    Top = 32
    Width = 105
    Caption = 'Remover o campo:'
    FormatoTabela = False
    LinkToResult = 0
  end
  object cmbCampos: TTS_ComboBox
    Left = 107
    Top = 30
    Width = 186
    Style.BorderColor = 7918072
    Style.BorderStyle = xbsSingle
    TabOrder = 0
    DropDownListStyle = True
    Height = 19
  end
  object TS_BitBtn1: TTS_BitBtn
    Left = 71
    Top = 74
    Width = 78
    Height = 26
    Caption = 'Remover'
    TabOrder = 1
    OnClick = TS_BitBtn1Click
    Transparent = False
  end
  object TS_BitBtn2: TTS_BitBtn
    Left = 159
    Top = 74
    Width = 78
    Height = 26
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
    Transparent = False
  end
end

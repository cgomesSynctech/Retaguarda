object DlgCriarRelacionamentos: TDlgCriarRelacionamentos
  Left = 168
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Criar Relacionamento'
  ClientHeight = 211
  ClientWidth = 314
  Color = 13757946
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
    Left = 40
    Top = 23
    Width = 97
    Caption = 'Nome da Tabela:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label2: TTS_Label
    Left = 40
    Top = 46
    Width = 97
    Caption = 'Alias para a Tabela:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label3: TTS_Label
    Left = 6
    Top = 68
    Width = 131
    Caption = 'Chave Prim'#225'ria da Tabela:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label4: TTS_Label
    Left = 7
    Top = 123
    Width = 130
    Caption = 'Relaciona com a Tabela:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label5: TTS_Label
    Left = 5
    Top = 145
    Width = 132
    Caption = 'Campo do Relacionamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label6: TTS_Label
    Left = 6
    Top = 100
    Width = 131
    Caption = 'Tipo do Relacionamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object edNome: TTS_Edit
    Left = 139
    Top = 21
    Width = 137
    Style.BorderColor = 7588080
    Style.BorderStyle = xbsSingle
    TabOrder = 0
    Height = 19
  end
  object edAlias: TTS_Edit
    Left = 139
    Top = 43
    Width = 137
    Style.BorderColor = 7588080
    Style.BorderStyle = xbsSingle
    TabOrder = 1
    Height = 19
  end
  object edChave: TTS_Edit
    Left = 139
    Top = 65
    Width = 137
    Style.BorderColor = 7588080
    Style.BorderStyle = xbsSingle
    TabOrder = 2
    Height = 19
  end
  object edCampo: TTS_Edit
    Left = 139
    Top = 142
    Width = 137
    Style.BorderColor = 7588080
    Style.BorderStyle = xbsSingle
    TabOrder = 5
    Height = 19
  end
  object cmbRelaciona: TTS_ComboBox
    Left = 139
    Top = 120
    Width = 137
    Style.BorderColor = 7588080
    Style.BorderStyle = xbsSingle
    TabOrder = 4
    Height = 19
  end
  object btCancelar: TTS_BitBtn
    Left = 124
    Top = 179
    Width = 74
    Height = 26
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 6
    Transparent = False
  end
  object btConfirmar: TTS_BitBtn
    Left = 44
    Top = 179
    Width = 77
    Height = 26
    Caption = 'Criar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btConfirmarClick
    Transparent = False
  end
  object cmbTipoRelacionamento: TTS_ComboBox
    Left = 139
    Top = 98
    Width = 137
    Style.BorderColor = 7588080
    Style.BorderStyle = xbsSingle
    TabOrder = 3
    DropDownListStyle = True
    Items.Strings = (
      'inner join'
      'left join')
    Height = 19
  end
  object TS_BitBtn1: TTS_BitBtn
    Left = 202
    Top = 179
    Width = 76
    Height = 26
    Caption = 'Remover'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnMouseUp = TS_BitBtn1MouseUp
    Glyph.Data = {
      7E030000424D7E030000000000003600000028000000130000000E0000000100
      1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
      00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
      BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
      003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
      BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
      3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
      FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
      BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
      3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
      003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
      0000}
    Layout = blGlyphRight
    Transparent = False
  end
  object ppmRemover: TTS_PopupMenu
    Left = 200
    Top = 80
  end
end

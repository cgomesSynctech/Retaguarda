inherited DlgAplicarCalculos: TDlgAplicarCalculos
  Left = 269
  Top = 178
  Height = 333
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Height = 256
    Color = 14542583
    object TS_Label1: TTS_Label
      Left = 16
      Top = 55
      Width = 65
      Caption = 'Quantidade:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 16
      Top = 183
      Width = 65
      Caption = 'Pre'#231'o Unit.:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape1: TTS_Shape
      Left = 102
      Top = 19
      Width = 1
      Height = 91
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 89
      Top = 62
      Width = 12
      Height = 2
      Transparent = False
    end
    object TS_Shape3: TTS_Shape
      Left = 102
      Top = 147
      Width = 1
      Height = 91
      Transparent = False
    end
    object TS_Shape4: TTS_Shape
      Left = 89
      Top = 190
      Width = 12
      Height = 2
      Transparent = False
    end
    object dfQtd: TTS_MaskEdit
      Left = 203
      Top = 19
      Width = 71
      TabOrder = 0
      Visible = False
      Alignment = taRightJustify
      IgnoreMaskBlank = False
      StyleController = DMProjeto.esGeral
      Text = '0'
      Height = 19
      StoredValues = 1
    end
    object dfPreco: TTS_MaskEdit
      Left = 203
      Top = 220
      Width = 71
      TabOrder = 1
      Visible = False
      Alignment = taRightJustify
      IgnoreMaskBlank = False
      StyleController = DMProjeto.esGeral
      Text = '0'
      Height = 19
      StoredValues = 1
    end
    object cbmq: TdxfCheckBox
      Left = 107
      Top = 19
      Width = 92
      Height = 18
      Checked = False
      GroupIndex = 1
      Style = 5
      Caption = 'Multiplicar Por:'
      TabOrder = 2
      OnClick = cbmqClick
    end
    object cbdq: TdxfCheckBox
      Left = 107
      Top = 44
      Width = 74
      Height = 18
      Checked = False
      GroupIndex = 1
      Style = 5
      Caption = 'Dividir Por:'
      TabOrder = 3
      OnClick = cbmqClick
    end
    object cbsq: TdxfCheckBox
      Left = 107
      Top = 68
      Width = 81
      Height = 18
      Checked = False
      GroupIndex = 1
      Style = 5
      Caption = 'Somar com: '
      TabOrder = 4
      OnClick = cbmqClick
    end
    object cbuq: TdxfCheckBox
      Left = 107
      Top = 92
      Width = 79
      Height = 18
      Checked = False
      GroupIndex = 1
      Style = 5
      Caption = 'Subtrair de:'
      TabOrder = 5
      OnClick = cbmqClick
    end
    object cbmp: TdxfCheckBox
      Left = 107
      Top = 147
      Width = 92
      Height = 18
      Checked = False
      GroupIndex = 2
      Style = 5
      Caption = 'Multiplicar Por:'
      TabOrder = 6
      OnClick = cbmpClick
    end
    object cbdp: TdxfCheckBox
      Left = 107
      Top = 172
      Width = 74
      Height = 18
      Checked = False
      GroupIndex = 2
      Style = 5
      Caption = 'Dividir Por:'
      TabOrder = 7
      OnClick = cbmpClick
    end
    object cbsp: TdxfCheckBox
      Left = 107
      Top = 196
      Width = 81
      Height = 18
      Checked = False
      GroupIndex = 2
      Style = 5
      Caption = 'Somar com: '
      TabOrder = 8
      OnClick = cbmpClick
    end
    object cbup: TdxfCheckBox
      Left = 107
      Top = 220
      Width = 79
      Height = 18
      Checked = False
      GroupIndex = 2
      Style = 5
      Caption = 'Subtrair de:'
      TabOrder = 9
      OnClick = cbmpClick
    end
  end
  inherited pnNavigator: TTS_Panel
    Height = 256
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 222
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Aplicar'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000010000EF9C2100F7A5
        5A00636B6B00FFB56B008C8C8C00949494009C9C94009C9C9C00A5A5A500ADAD
        AD00ADB5B500B5B5B500296BC600527BC600D6D6D600DEDEDE00397BE700E7E7
        E700317BEF00EFEFEF000073F700F7F7F700FF00FF00007BFF00008CFF000094
        FF00009CFF0000A5FF0039A5FF0052A5FF005AA5FF0000ADFF0029ADFF0000B5
        FF0008BDFF0010BDFF0000C6FF0008C6FF0018CEFF0000D6FF0010D6FF0031D6
        FF0000DEFF0042DEFF0039E7FF0000EFFF0039EFFF004AEFFF0000F7FF0008F7
        FF0031F7FF0042F7FF0000FFFF0008FFFF0018FFFF0021FFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00161616161616
        1616161616161616161616161616161616161616160202020202020202020202
        0202020202021616161616161604383838383838383838383838383838041616
        161616161605380303030303030303030303030338051616161616161605380D
        3838033838033838033838033805161616161616160538120D0C033838033838
        0338380338051616161616161605381017140D03030303030303030338051616
        16161616160538011A18180D3801383801383801380516161616161616063801
        382118190D0D383801383801380616161616161616073801010121251A1A0D01
        0101010138071616161616161608380038380021221F1A0D0038380038081616
        16161616160815000D0D0D243532231F0D0D1500150816161616161616081500
        20242D3030342F261B0D00001508161616161616160913001C242D302D2A3434
        2E250D0013091616161616161609110011252C2F3336343435370D0011091616
        16161616160911000000002931343027210D00001109161616161616160A0F0F
        0F0F0F0F0F29302D1F1B0D0F0F0A161616161616160B0E0E0E0E0E0E0E0E0E29
        2B281E0D0E0B161616161616160B0E0E0E0E0E0E0E0E0E0E0E291D0D0E0B1616
        16161616160B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B16161616161616161616
        1616161616161616161616161616161616161616161616161616161616161616
        1616161616161616161616161616161616161616161616161616161616161616
        1616161616161616161616161616161616161616161616161616}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 152
      Caption = 'Aplicar Calculos'
      Effect3D.ShadowedColor = 11911142
    end
    inherited lbEstadoForm: TTS_Label
      Width = 328
      Caption = 
        'Possibilita realizar opera'#231#245'es matem'#225'ticas nos Precos e Quantida' +
        'des'
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 389
    Top = 395
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 383
    Top = 399
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 381
    Top = 175
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Aplicar Calculos'
    Left = 384
    Top = 228
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 387
    Top = 403
  end
  inherited FormStorage: TFormStorage
    Left = 383
    Top = 404
  end
end

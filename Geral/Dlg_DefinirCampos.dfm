inherited DlgDefinirCampos: TDlgDefinirCampos
  Left = 140
  Top = 64
  HelpContext = 0
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Cadastros Gerais'
  ClientHeight = 390
  ClientWidth = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 381
    Height = 347
    Color = 13359603
    object TS_Label1: TTS_Label
      Left = 17
      Top = 8
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 01:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 17
      Top = 42
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 02:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 17
      Top = 109
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 04:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 17
      Top = 142
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 05:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label5: TTS_Label
      Left = 17
      Top = 75
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 03:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label6: TTS_Label
      Left = 17
      Top = 176
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 06:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label7: TTS_Label
      Left = 17
      Top = 209
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 07:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label8: TTS_Label
      Left = 17
      Top = 243
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 08:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label9: TTS_Label
      Left = 17
      Top = 276
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 09:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label10: TTS_Label
      Left = 17
      Top = 310
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 10:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dfCampo1: TTS_Edit
      Left = 18
      Top = 22
      Width = 136
      TabOrder = 0
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo2: TTS_Edit
      Left = 18
      Top = 56
      Width = 136
      TabOrder = 1
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo4: TTS_Edit
      Left = 18
      Top = 123
      Width = 136
      TabOrder = 3
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo3: TTS_Edit
      Left = 18
      Top = 89
      Width = 136
      TabOrder = 2
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo10: TTS_Edit
      Left = 18
      Top = 324
      Width = 136
      TabOrder = 9
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo5: TTS_Edit
      Left = 18
      Top = 156
      Width = 136
      TabOrder = 4
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo6: TTS_Edit
      Left = 18
      Top = 190
      Width = 136
      TabOrder = 5
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo7: TTS_Edit
      Left = 18
      Top = 223
      Width = 136
      TabOrder = 6
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo8: TTS_Edit
      Left = 18
      Top = 257
      Width = 136
      TabOrder = 7
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfCampo9: TTS_Edit
      Left = 18
      Top = 290
      Width = 136
      TabOrder = 8
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object rgTipoCampo1: TTS_RadioGroup
      Left = 162
      Top = 10
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 01'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 10
      Transparent = True
    end
    object rgTipoCampo2: TTS_RadioGroup
      Left = 162
      Top = 44
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 02'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 11
      Transparent = True
    end
    object rgTipoCampo3: TTS_RadioGroup
      Left = 162
      Top = 77
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 03'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 12
      Transparent = True
    end
    object rgTipoCampo4: TTS_RadioGroup
      Left = 162
      Top = 111
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 04'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 13
      Transparent = True
    end
    object rgTipoCampo5: TTS_RadioGroup
      Left = 162
      Top = 144
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 05'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 14
      Transparent = True
    end
    object rgTipoCampo6: TTS_RadioGroup
      Left = 162
      Top = 179
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 06'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 15
      Transparent = True
    end
    object rgTipoCampo7: TTS_RadioGroup
      Left = 162
      Top = 211
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 07'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 16
      Transparent = True
    end
    object rgTipoCampo8: TTS_RadioGroup
      Left = 162
      Top = 245
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 08'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 17
      Transparent = True
    end
    object rgTipoCampo9: TTS_RadioGroup
      Left = 162
      Top = 278
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 09'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 18
      Transparent = True
    end
    object rgTipoCampo10: TTS_RadioGroup
      Left = 162
      Top = 312
      Width = 213
      Height = 30
      Caption = 'Tipo do Campo 10'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Dados'
        'Escolha'
        'Check')
      TabOrder = 19
      Transparent = True
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 381
    Height = 347
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 313
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      OnClick = TS_BitBtn1Click
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 499
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 200
      Caption = 'Defini'#231#227'o de Campos'
      Effect3D.ShadowedColor = 9741530
    end
    inherited lbUpperHint: TTS_Label
      Left = 491
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 178
    Top = 369
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 20
    Top = 359
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 330
    Top = 342
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Defini'#231#227'o de Campos'
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 646
    end
  end
end

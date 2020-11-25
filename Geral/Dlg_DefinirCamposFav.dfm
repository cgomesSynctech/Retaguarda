inherited DlgDefinirCamposFav: TDlgDefinirCamposFav
  Left = 16
  Top = 96
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Cadastros Gerais'
  ClientHeight = 393
  ClientWidth = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 601
    Height = 350
    Color = 13359603
    object TS_Label1: TTS_Label
      Left = 18
      Top = 8
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 01:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 18
      Top = 42
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 02:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 18
      Top = 109
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 04:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 18
      Top = 142
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 05:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label5: TTS_Label
      Left = 18
      Top = 75
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 03:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label6: TTS_Label
      Left = 18
      Top = 176
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 06:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label7: TTS_Label
      Left = 18
      Top = 209
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 07:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label8: TTS_Label
      Left = 18
      Top = 243
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 08:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label9: TTS_Label
      Left = 18
      Top = 276
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 09:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label10: TTS_Label
      Left = 18
      Top = 310
      Width = 129
      Alignment = taLeftJustify
      Caption = 'T'#237'tulo do Campo 10:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label11: TTS_Label
      Left = 376
      Top = 6
      Width = 65
      Alignment = taCenter
      Caption = 'Clientes'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label12: TTS_Label
      Left = 530
      Top = 6
      Width = 65
      Caption = 'Funcion'#225'rios'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label13: TTS_Label
      Left = 448
      Top = 6
      Width = 73
      Alignment = taCenter
      Caption = 'Fornecedores'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dfCampo1: TTS_Edit
      Left = 18
      Top = 22
      Width = 136
      TabOrder = 0
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo2: TTS_Edit
      Left = 18
      Top = 56
      Width = 136
      TabOrder = 1
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo4: TTS_Edit
      Left = 18
      Top = 123
      Width = 136
      TabOrder = 2
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo3: TTS_Edit
      Left = 18
      Top = 89
      Width = 136
      TabOrder = 3
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo10: TTS_Edit
      Left = 18
      Top = 324
      Width = 136
      TabOrder = 4
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo5: TTS_Edit
      Left = 18
      Top = 156
      Width = 136
      TabOrder = 5
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo6: TTS_Edit
      Left = 18
      Top = 190
      Width = 136
      TabOrder = 6
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo7: TTS_Edit
      Left = 18
      Top = 223
      Width = 136
      TabOrder = 7
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo8: TTS_Edit
      Left = 18
      Top = 257
      Width = 136
      TabOrder = 8
      StyleController = DMProjeto.esGeral
      Height = 18
    end
    object dfCampo9: TTS_Edit
      Left = 18
      Top = 290
      Width = 136
      TabOrder = 9
      StyleController = DMProjeto.esGeral
      Height = 18
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
    object cbClientes1: TTS_CheckBox
      Left = 399
      Top = 21
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 20
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn1: TTS_CheckBox
      Left = 480
      Top = 21
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 21
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc1: TTS_CheckBox
      Left = 556
      Top = 21
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 22
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes2: TTS_CheckBox
      Left = 399
      Top = 54
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 23
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn2: TTS_CheckBox
      Left = 480
      Top = 55
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 24
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc2: TTS_CheckBox
      Left = 556
      Top = 55
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 25
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes3: TTS_CheckBox
      Left = 399
      Top = 88
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 26
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn3: TTS_CheckBox
      Left = 480
      Top = 88
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 27
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc3: TTS_CheckBox
      Left = 556
      Top = 88
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 28
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes4: TTS_CheckBox
      Left = 399
      Top = 122
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 29
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn4: TTS_CheckBox
      Left = 480
      Top = 122
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 30
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc4: TTS_CheckBox
      Left = 556
      Top = 122
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 31
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes5: TTS_CheckBox
      Left = 399
      Top = 155
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 32
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn5: TTS_CheckBox
      Left = 480
      Top = 156
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 33
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc5: TTS_CheckBox
      Left = 557
      Top = 155
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 34
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes6: TTS_CheckBox
      Left = 399
      Top = 189
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 35
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn6: TTS_CheckBox
      Left = 480
      Top = 189
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 36
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc6: TTS_CheckBox
      Left = 556
      Top = 189
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 37
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes7: TTS_CheckBox
      Left = 399
      Top = 222
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 38
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn7: TTS_CheckBox
      Left = 480
      Top = 223
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 39
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc7: TTS_CheckBox
      Left = 556
      Top = 222
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 40
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes8: TTS_CheckBox
      Left = 399
      Top = 256
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 41
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn8: TTS_CheckBox
      Left = 480
      Top = 257
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 42
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc8: TTS_CheckBox
      Left = 556
      Top = 256
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 43
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes9: TTS_CheckBox
      Left = 399
      Top = 289
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 44
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn9: TTS_CheckBox
      Left = 480
      Top = 290
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 45
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc9: TTS_CheckBox
      Left = 556
      Top = 289
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 46
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbClientes10: TTS_CheckBox
      Left = 399
      Top = 323
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 47
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbForn10: TTS_CheckBox
      Left = 480
      Top = 323
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 48
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
    object cbFunc10: TTS_CheckBox
      Left = 556
      Top = 323
      Width = 20
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = False
      TabOrder = 49
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 17
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 601
    Width = 108
    Height = 350
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 316
      Width = 106
    end
    inherited btComando2: TTS_SpeedButton
      Width = 106
    end
    inherited btComando1: TTS_SpeedButton
      Width = 106
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 106
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 106
      OnClick = TS_BitBtn1Click
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 106
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 709
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Caption = 'Campos Customizados'
      Effect3D.ShadowedColor = 9741530
    end
    inherited lbUpperHint: TTS_Label
      Left = 701
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
    Caption = 'Campos Customizados'
  end
end

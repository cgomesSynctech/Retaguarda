inherited dlgEtiquetaItem: TdlgEtiquetaItem
  Left = 35
  Top = 104
  Width = 1069
  Height = 570
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 944
    Width = 117
    Height = 500
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 466
      Width = 115
    end
    inherited btComando2: TTS_SpeedButton
      Top = 140
      Width = 115
    end
    inherited btComando1: TTS_SpeedButton
      Top = 107
      Width = 115
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 1
      Width = 115
    end
    inherited btGravar: TTS_SpeedButton
      Top = 34
      Width = 115
      Caption = 'Imprimir'
      Enabled = False
      Glyph.Data = {
        4E030000424D4E030000000000007600000028000000340000001A0000000100
        040000000000D802000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDDDDDDDD88
        8888888888888888888888880000DDD00000000000000000DDDDDD8887777777
        77777777778888880000DDD0FF88887777777000DDDDDD8887FFFFFFFF888887
        778888880000DDD0FF888877777770700DDDDD8887FFFFFFFF88888787788888
        0000DDD0FF8888777777707700DDDD8887FFFFFFFF888887887788880000DD00
        0000000000000007700DDD887777777777777777788778880000DD0FF8888877
        77777700770DDD887FFFFFFFFF888888778878880000DD0FF888887777777707
        070DDD887FFFFFFFFF8888887F7878880000DD0FF888887777799907700DDD88
        7FFFFFFFFF8888887FF778880000DD0000000000000000077700DD8877777777
        777777777FFF77880000DD00FF888877777777700770DD8877FFFFFFFF888888
        877FF7880000DDD000000000000000077070DD8887777777777777777FF7F788
        0000DDD000FFFFFFFFFFF3007700DD888777FFFFFFFFFFF877FF77880000DDDD
        D0FFAAAAAAAAFF070700DD888887FF88888888FF7F7F77880000DDDDD01FFFFF
        FFFFFF00700DDD8888877FFFFFFFFFFF77F778880000DDDDDD0FFCCCCCCCCCF0
        000DDD8888887FF888888888F77778880000DDDDDD00FFFFFFFFFFF00DDDDD88
        888877FFFFFFFFFFF77888880000DDDDDDD00F999999999F0DDDDD888888877F
        888888888F7888880000DDDDDDDD0FFFFFFFFFFF00DDDD888888887FFFFFFFFF
        FF7788880000DDDDDDDD00FBBBBBBBBBF00DDD8888888877F888888888F77888
        0000DDDDDDDDD00555555555500DDD888888888777777777777778880000DDDD
        DDDDDDDDDDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000}
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 102
      Width = 115
    end
    object spImprimirDireto: TTS_SpeedButton
      Left = 1
      Top = 68
      Width = 115
      Height = 34
      Caption = 'Imprimir &Direto'
      Enabled = False
      Glyph.Data = {
        4E030000424D4E030000000000007600000028000000340000001A0000000100
        040000000000D802000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDDDDDDDD88
        8888888888888888888888880000DDD00000000000000000DDDDDD8887777777
        77777777778888880000DDD0FF88887777777000DDDDDD8887FFFFFFFF888887
        778888880000DDD0FF888877777770700DDDDD8887FFFFFFFF88888787788888
        0000DDD0FF8888777777707700DDDD8887FFFFFFFF888887887788880000DD00
        0000000000000007700DDD887777777777777777788778880000DD0FF8888877
        77777700770DDD887FFFFFFFFF888888778878880000DD0FF888887777777707
        070DDD887FFFFFFFFF8888887F7878880000DD0FF888887777799907700DDD88
        7FFFFFFFFF8888887FF778880000DD0000000000000000077700DD8877777777
        777777777FFF77880000DD00FF888877777777700770DD8877FFFFFFFF888888
        877FF7880000DDD000000000000000077070DD8887777777777777777FF7F788
        0000DDD000FFFFFFFFFFF3007700DD888777FFFFFFFFFFF877FF77880000DDDD
        D0FFAAAAAAAAFF070700DD888887FF88888888FF7F7F77880000DDDDD01FFFFF
        FFFFFF00700DDD8888877FFFFFFFFFFF77F778880000DDDDDD0FFCCCCCCCCCF0
        000DDD8888887FF888888888F77778880000DDDDDD00FFFFFFFFFFF00DDDDD88
        888877FFFFFFFFFFF77888880000DDDDDDD00F999999999F0DDDDD888888877F
        888888888F7888880000DDDDDDDD0FFFFFFFFFFF00DDDD888888887FFFFFFFFF
        FF7788880000DDDDDDDD00FBBBBBBBBBF00DDD8888888877F888888888F77888
        0000DDDDDDDDD00555555555500DDD888888888777777777777778880000DDDD
        DDDDDDDDDDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000}
      NumGlyphs = 2
      OnClick = spImprimirDiretoClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1061
    Gradient.ColorStart = 9027548
    inherited imgModulo: TTS_Image
      Height = 39
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1025
    end
    inherited lbCaption: TdxfLabel
      Width = 186
      AutoSize = True
      Caption = 'Etiquetas dos Itens'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 944
    Height = 500
    Color = 14019327
    object TS_Label1: TTS_Label
      Left = 5
      Top = 4
      Width = 97
      Caption = 'Selecione os Itens:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label1: TLabel
      Left = 439
      Top = 91
      Width = 59
      Height = 13
      Caption = 'Linha Inicial:'
    end
    object PopupFiltroItens: TTS_PopupFiltrarItens
      Left = 106
      Top = 3
      Width = 94
      Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      AutoSelect = False
      StyleController = DMProjeto.esItens
      Text = 'Filtrar itens...'
      HideEditCursor = True
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      LookupKeyValue = 0
      TS_DB_Projeto = DMProjeto.DB_Projeto
      TS_TipoEstoque = 0
      TS_FornecedorSelecionado = 0
      TS_FornPrefSelecionado = 0
      TS_NaoPossuiEstoque = False
      TS_EstoqueMinimo = False
      TS_EstoqueMaximo = False
      TS_EstoquePontoPedido = False
      TS_EstoqueNegativo = False
      TS_ItensDesativado = False
      TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
      TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
      TS_PossuiEstoque = False
      TS_TipoItem = 0
      TS_AliasItens = 'i'
      TS_ItemAlterado = False
      OnSelecionou = PopupFiltroItensSelecionou
      Height = 19
    end
    object dbgItens: TTS_QDBGrid
      Left = 1
      Top = 279
      Width = 942
      Height = 220
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = Q_ItensDs
      Filter.Criteria = {00000000}
      GroupPanelColor = 15461355
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_AppendOnEnter = True
      RowFooterNodeFont.Charset = DEFAULT_CHARSET
      RowFooterNodeFont.Color = clWindowText
      RowFooterNodeFont.Height = -11
      RowFooterNodeFont.Name = 'Tahoma'
      RowFooterNodeFont.Style = [fsBold]
      TS_AccountFooterStyle = False
      TS_HideGroupHeader = False
      TS_AnotherColor = clWindow
      TS_ReportHeaderStyle = False
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Tahoma'
      GroupNodeFont.Style = []
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clWindowText
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = []
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = []
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_ChaveEstrangeira = 'item'
      TS_TipoItem = '1'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'codigo;referencia;descricao'
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgItensITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgItensCODIGO: TdxDBGridMaskColumn
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgItensREFERENCIA: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgItensDESCRICAO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgItensFABRICANTE: TdxDBGridMaskColumn
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgItensESTOQUE: TdxDBGridCurrencyColumn
        Caption = 'N'#186' Etq.'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        DisplayFormat = '0'
        Nullable = False
      end
    end
    object TS_Panel1: TTS_Panel
      Left = 415
      Top = 3
      Width = 341
      Height = 84
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 14019327
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      Versoes = 'S,P,E'
      object TS_Label2: TTS_Label
        Left = 0
        Top = 3
        Width = 52
        Caption = 'Etiqueta:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 28
        Top = 40
        Width = 57
        Caption = 'Indexador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTitulo: TTS_Label
        Left = 11
        Top = 60
        Width = 74
        Alignment = taLeftJustify
        Caption = 'Titulo Etiqueta:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_ComboBox1: TTS_ComboBox
        Left = 358
        Top = 5
        Width = 149
        TabOrder = 0
        StyleController = DMProjeto.esItens
        Items.Strings = (
          '1 - PIMACO, 2 Col. Continuo')
        Height = 19
      end
      object cbTipoEtiqueta: TTS_ComboBox
        Left = 54
        Top = 1
        Width = 211
        TabOrder = 1
        StyleController = DMProjeto.esItens
        OnChange = cbTipoEtiquetaChange
        Items.Strings = (
          '1 - PIMACO, 2 Col. Continuo'
          '2 - PIMACO, 6282 CARTA (GONDOLAS)'
          '3 - PIMACO, 6089 4 COLUNAS '
          '4 - ETIQUETAS ROUPAS'
          '5 - RIBON (4 inch model)'
          '6 - 08 Cm X 04 Cm 2 Colunas'
          '7 - 08 Cm X 2.5 Cm 2 Colunas'
          '8 - 06 Cm X 03 Cm 3 Colunas'
          '9 - 06 Cm X 03 Cm 1 Coluna (Ribon)'
          'A - 03.3 Cm X 02.1 3 Colunas (Ribon)'
          'B - 05 Col. Matricial'
          'C - 02 Col. Matricial'
          'D - 06 X 04 (A4-Gondolas)'
          'E - ETIQUETAS JOIAS'
          'F - 5 Colunas Pre'#231'o Grande (Matricial)'
          'G - Gondolas (Matricial)'
          'H - RIBON (4 inch model) Bolsa '
          'I  - RIBON (Gondolas 5 x 10 CM).'
          'J - RIBON (Gondolas M'#233'dia 5 x 7 CM).'
          'K - 03.3 Cm X 02.1 3 Colunas (Ribon - Argox)'
          'L - ETIQUETAS ROUPAS 2 COLUNAS'
          'M - Gondolas Horizontal (11 X 2.8 CM)'
          'N - ETIQUETAS ROUPAS 3 COL.'
          'O - ETIQUETAS ROUPAS 3 COL. STILLO'
          'P - ETIQUETAS ROUPAS 3 COL. FASHION'
          'Q - Gondola Horizontal ( 10 X 2.8 CM )'
          'R - ETIQUETAS PIMACO 6283 50,8 X 101,6'
          'S - ETIQUETAS PIMACO A4255 3 COLUNAS'
          'T - Etiqueta 2,5 X 1,5  Uma Colula Ribbon'
          'U - Etiqueta Roupa com Logo'
          'V - Etiqueta Pino Joia'
          'Z - Etiqueta Joia Imp Jato de Tinta'
          'E1 - ETIQUETA JOIA - 30X30X12'
          'E2 - ETIQUETA JOIA - 30X30X12 ( logo )')
        Height = 19
      end
      object cbUmaEtiqueta: TTS_CheckBox
        Left = -1
        Top = 19
        Width = 104
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        Caption = '1 Etq. Por Item'
        OnChange = cbUmaEtiquetaChange
        DisableEdit = False
        Height = 18
      end
      object cbLogo: TTS_CheckBox
        Left = 222
        Top = 19
        Width = 115
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 3
        Caption = 'Imp. Logo-Marca.'
        OnChange = cbUmaEtiquetaChange
        DisableEdit = False
        Height = 19
      end
      object cbBorda: TTS_CheckBox
        Left = 108
        Top = 19
        Width = 95
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 4
        Caption = 'Mostrar Borda.'
        OnChange = cbUmaEtiquetaChange
        NullStyle = nsInactive
        DisableEdit = False
        Height = 19
      end
      object cmbIndex: TTS_LookupComboBox
        Left = 89
        Top = 37
        Width = 126
        TabOrder = 5
        StyleController = DMProjeto.esItens
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'INDEXADOR'
        ListSource = C_IndexadoresDS
        LookupKeyValue = Null
        Height = 19
      end
      object edtTitulo: TTS_Edit
        Left = 91
        Top = 58
        Width = 176
        TabOrder = 6
        StyleController = DMProjeto.esItens
        Height = 19
      end
      object cbComPreco: TTS_CheckBox
        Left = 222
        Top = 36
        Width = 115
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 7
        Caption = 'Imprimir Pre'#231'o.'
        OnChange = cbComPrecoChange
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
    end
    object Barra: TdxfProgressBar
      Left = -1
      Top = 88
      Width = 402
      Height = 11
      BarBevelOuter = bvRaised
      BeginColor = clWhite
      BevelOuter = bvNone
      EndColor = clRed
      Max = 0
      Min = 0
      Orientation = orHorizontal
      Position = 0
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 1
      Style = sExSolid
      TabOrder = 3
      TransparentGlyph = True
      Visible = False
    end
    object rgOrdem: TTS_RadioGroup
      Left = 5
      Top = 22
      Width = 198
      Height = 65
      Caption = '&Ordem Impress'#227'o'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&C'#243'digo'
        '&Refer.'
        '&Desc.'
        '&Fabric.')
      TabOrder = 4
      Transparent = True
    end
    object zrEtiquetaItem: TZReport
      Left = 80
      Top = 204
      Width = 59
      Height = 6
      Columns.Count = 2
      DataSet = Q_Etiquetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Options.LineSpacing = zrd16
      Options.AutoHeight = False
      Options.PaperType = zptSheet
      Title = 'Etiquetas Itens'
      Margins.Left = 1
      Margins.Top = 0
      object zrvITEM: TZRField
        Format.Width = 10
        DataField = 'ITEM'
        DataSet = Q_Etiquetas
      end
      object zrvCODIGO: TZRField
        Format.Width = 13
        DataField = 'CODIGO'
        DataSet = Q_Etiquetas
      end
      object zrvREFERENCIA: TZRField
        Format.Width = 25
        DataField = 'REFERENCIA'
        DataSet = Q_Etiquetas
      end
      object zrvDESCRICAO: TZRField
        Format.Width = 50
        DataField = 'DESCRICAO'
        DataSet = Q_Etiquetas
      end
      object zrvESTOQUE: TZRField
        Format.Width = 19
        DataField = 'ESTOQUE'
        DataSet = Q_Etiquetas
      end
      object zrvFABRICANTE: TZRField
        Format.Width = 30
        DataField = 'FABRICANTE'
        DataSet = Q_Etiquetas
      end
      object zrvNOMEEMPRESA: TZRField
        Format.Width = 1
        DataField = 'NOMEEMPRESA'
        DataSet = Q_Etiquetas
      end
      object zrvEmpresa: TZRField
        Format.Width = 20
        DataField = 'Empresa'
        DataSet = Q_Etiquetas
      end
      object zrvLOCALIZACAO: TZRField
        Format.Width = 10
        DataField = 'LOCALIZACAO'
        DataSet = Q_Etiquetas
      end
      object zrEtiquetaItemDetail: TZRBand
        Left = 1
        Top = 0
        Width = 27
        Height = 5
        ForceKind = [zfkColumnAfter]
        Stretch = False
        BandType = zbtDetail
        object ZRLabel1: TZRLabel
          Left = 2
          Top = 1
          Width = 12
          Height = 1
          Caption = 'ZRLabel1'
          Variable = zrvCODIGO
        end
        object Empresa: TZRLabel
          Left = 0
          Top = 0
          Width = 27
          Height = 1
          Alignment.X = zawCenter
          Caption = 'Empresa'
          Variable = zrvEmpresa
        end
        object ZRLabel3: TZRLabel
          Left = 0
          Top = 2
          Width = 2
          Height = 1
          Caption = 'R-'
        end
        object ZRLabel5: TZRLabel
          Left = 0
          Top = 3
          Width = 27
          Height = 2
          Caption = 'ZRLabel1'
          Variable = zrvDESCRICAO
          WordWrap = True
        end
        object ZRLabel6: TZRLabel
          Left = 0
          Top = 1
          Width = 2
          Height = 1
          Caption = 'C-'
        end
        object ZRLabel7: TZRLabel
          Left = 2
          Top = 2
          Width = 25
          Height = 1
          Caption = 'ZRLabel1'
          Variable = zrvREFERENCIA
        end
        object ZRLabel2: TZRLabel
          Left = 14
          Top = 1
          Width = 4
          Height = 1
          Caption = 'Loc:'
        end
        object ZRLabel4: TZRLabel
          Left = 18
          Top = 1
          Width = 9
          Height = 1
          Caption = 'ZRLabel1'
          Variable = zrvLOCALIZACAO
        end
      end
    end
    object edNumeroSaida: TTS_Edit
      Left = 756
      Top = 18
      Width = 176
      Hint = 
        'Digite o n'#250'mero da opera'#231#227'o de sa'#237'da.'#13#10'* Para cupom fiscal digit' +
        'e no formato: COO:999999'
      TabOrder = 6
      OnKeyDown = edNumeroSaidaKeyDown
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object rgCodigoImpressao: TTS_RadioGroup
      Left = 210
      Top = -1
      Width = 199
      Height = 87
      Hint = 
        'Selecione qual c'#243'digo dever'#225' ser impresso. Esse recurso est'#225' dis' +
        'pon'#237'vel apenas para os '#13#10'seguintes modelos de Etiqueta:'#13#10'* Model' +
        'o S - ETIQUETAS PIMACO A4255 3 COLUNAS'#13#10#13#10'Observa'#231#227'o:'#13#10'- Se o ca' +
        'mpo C'#243'digo de Barras n'#227'o possuir valor, ser'#225' atribu'#237'do o campo C' +
        #243'digo a impress'#227'o;'#13#10'- Se o campo C'#243'digo de Venda n'#227'o possuir val' +
        'or, ser'#225' atribu'#237'do o campo C'#243'digo a impress'#227'o;'
      Caption = '&C'#243'digo Impress'#227'o'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&C'#243'digo'
        'C'#243'digo &Barras'
        'C'#243'digo &Venda')
      TabOrder = 7
      Transparent = True
    end
    object LInhaInicial: TTS_Edit
      Left = 507
      Top = 88
      Width = 63
      TabOrder = 8
      Text = '1'
      StyleController = DMProjeto.esItens
      Height = 18
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 858
    Top = 5
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 886
    Top = 5
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 774
    Top = 5
  end
  inherited Beep: TBTBeeper
    Left = 718
    Top = 5
  end
  inherited FormStorage: TFormStorage
    Left = 746
    Top = 5
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Etiquetas dos Itens'
    Left = 830
    Top = 5
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 802
    Top = 5
  end
  object Q_ItensDs: TDataSource
    DataSet = Q_Itens
    Left = 559
    Top = 207
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT I.ITEM,'
      '       I.CODIGO,'
      '       I.REFERENCIA,'
      '       I.DESCRICAO,'
      '       I.estoque,'
      '       f.descricao AS FABRICANTE'
      'FROM ITENS I'
      '    LEFT JOIN fabricantes F ON F.fabricante = I.fabricante')
    UpdateObject = U_itens
    Left = 560
    Top = 153
    object Q_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object Q_ItensCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object Q_ItensREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object Q_ItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_ItensESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object Q_ItensFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
  end
  object U_itens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ITEM,'
      '  TIPOITEM,'
      '  CODIGO,'
      '  DESCRICAOCOMPRA,'
      '  GRUPO,'
      '  DESCRICAO,'
      '  TAXAVEL,'
      '  CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR,'
      '  QTDEMINIMO,'
      '  QTDEMAXIMO,'
      '  PONTOPEDIDO,'
      '  PERCENTUAL,'
      '  APLICARANTESTAX,'
      '  UNIDADE,'
      '  LOCALIZACAO,'
      '  DESATIVADO,'
      '  ESTOQUE,'
      '  IMPORTACAO,'
      '  COMISSAO,'
      '  DESCONTOMAXIMO,'
      '  TAXINCLUSO,'
      '  CONTA_VENDA,'
      '  CONTA_CUSTO,'
      '  CONTA_INVENT,'
      '  FABRICANTE,'
      '  BALANCO,'
      '  CAMPO01,'
      '  CAMPO02,'
      '  CAMPO03,'
      '  CAMPO04,'
      '  CAMPO05,'
      '  PRECOCOMPRA,'
      '  CAMPO06,'
      '  CUSTOCONTABIL,'
      '  ISITEMCOMPRA,'
      '  CAMPO07,'
      '  CAMPO08,'
      '  PTAXINCLUSO,'
      '  CAMPO09,'
      '  CUSTODESPESAS,'
      '  CAMPO10,'
      '  FOTO,'
      '  PROMOCAO,'
      '  FATORLUCRO,'
      '  HASCHILDREN,'
      '  REFERENCIA,'
      '  SEMLUCRO,'
      '  PRI_CUSTOMEDIO,'
      '  PRI_CUSTOCONTABIL,'
      '  PRI_PRECOCOMPRA,'
      '  DATACADASTRO,'
      '  CUSTOPRODUTO,'
      '  CONTROLEVALIDADE,'
      '  TEMPOMEDIOVALIDADE,'
      '  FORNECPREFERENCIA,'
      '  REVENDA,'
      '  ULTIMACOMPRA,'
      '  COMPENSACUSTO,'
      '  COMLUCRO,'
      '  UNIDADEENTRADA,'
      '  UNIDADECARGA,'
      '  UNIDADEVAREJO,'
      '  ULTQTDECOMPRA,'
      '  UNIDADEMINIMA,'
      '  FATORUNDVENDA,'
      '  FATORUNDCOMPRA,'
      '  ULTIMAVENDA,'
      '  ESTOQUECONSIGSAIDA,'
      '  ESTOQUECONSIGENTRADA,'
      '  ABC,'
      '  DESCRICAOCOMPLEMENTAR,'
      '  DESCRICAOTECNICA,'
      '  CST,'
      '  REDUCAOCST,'
      '  IPICOMPRA,'
      '  IPIVENDA,'
      '  PESOBRUTO,'
      '  PESOLIQUIDO,'
      '  ALIQICMS,'
      '  SITUACAOECF,'
      '  TVA,'
      '  TVAFONTE,'
      '  CLASFISCAL,'
      '  LEITURAATUAL,'
      '  LEITURAMAXIMA,'
      '  IDENTIFICACAO,'
      '  ULTDESCONTO,'
      '  CODIGOBARRAS,'
      '  ENCERRANTE,'
      '  AGENDARCONTATO'
      'from ITENS '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update ITENS'
      'set'
      '  ITEM = :ITEM,'
      '  CODIGO = :CODIGO,'
      '  REFERENCIA = :REFERENCIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESTOQUE = :ESTOQUE,'
      '  FABRICANTE = :FABRICANTE'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into ITENS'
      '  (ITEM, CODIGO, REFERENCIA, DESCRICAO, ESTOQUE, FABRICANTE)'
      'values'
      
        '  (:ITEM, :CODIGO, :REFERENCIA, :DESCRICAO, :ESTOQUE, :FABRICANT' +
        'E)')
    DeleteSQL.Strings = (
      'delete from ITENS'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 556
    Top = 258
  end
  object Q_GerarEtiquetas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT I.ITEM,'
      '       I.CODIGO,'
      '       I.REFERENCIA,'
      '       I.DESCRICAO,'
      '       I.estoque,'
      '       f.descricao AS FABRICANTE'
      'FROM ITENS I'
      '    LEFT JOIN fabricantes F ON F.fabricante = I.fabricante')
    Left = 709
    Top = 154
  end
  object Q_Etiquetas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    OnCalcFields = Q_EtiquetasCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'select i.codigo, i.referencia, i.descricao, f.descricao as fabri' +
        'cante, '
      'i.item,'
      'case  when  i.codigo is null then i.codigobarras'
      '      else  i.codigo end as codigobarras ,'
      'i.codigovenda,'
      'i.localizacao, i.estoque,'
      
        'i.percentual, i.fatorundvenda, p.preco as precotemp, p.precoprom' +
        'ocao, '
      
        'iu.percentual as percund, iu.precomanual as precomanund, iu.unid' +
        'ade,'
      
        'i.unidade as undvenda, pr.preco as preconormal, iu.fator as Fato' +
        'rItemUnd,'
      'i.indexador, iu.qtdembalagem,'
      
        '(select Max(px.preco) from produtospreco px where px.item = i.it' +
        'em and px.Unidade = iu.Unidade and px.tabelapreco > 0 ) as Preco' +
        '2'
      'from etiquetasitens e '
      'inner join itens i on i.item = e.item '
      
        'inner join itensunidades iu on iu.item = i.item and i.unidade = ' +
        'iu.unidade'
      'left join fabricantes f on f.fabricante = i.fabricante'
      
        'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.' +
        'Unidade'
      'and p.tabelapreco = 0'
      
        'left join produtospreco pr on pr.item = i.item and pr.unidade = ' +
        'i.unidade'
      'and pr.tabelapreco = 0')
    Left = 508
    Top = 155
    object Q_EtiquetasEmpresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'Empresa'
      Calculated = True
    end
    object Q_EtiquetasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object Q_EtiquetasREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object Q_EtiquetasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_EtiquetasFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
    object Q_EtiquetasITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object Q_EtiquetasCODIGOBARRAS: TIBStringField
      FieldName = 'CODIGOBARRAS'
      Origin = 'ITENS.CODIGOBARRAS'
      Size = 13
    end
    object Q_EtiquetasESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasPERCENTUAL: TIBBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'ITENS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object Q_EtiquetasFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
      Origin = 'ITENS.FATORUNDVENDA'
    end
    object Q_EtiquetasPRECOTEMP: TIBBCDField
      FieldName = 'PRECOTEMP'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasPRECOPROMOCAO: TIBBCDField
      FieldName = 'PRECOPROMOCAO'
      Origin = 'PRODUTOSPRECO.PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasPERCUND: TIBBCDField
      FieldName = 'PERCUND'
      Origin = 'ITENSUNIDADES.PERCENTUAL'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasPRECOMANUND: TIBBCDField
      FieldName = 'PRECOMANUND'
      Origin = 'ITENSUNIDADES.PRECOMANUAL'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSUNIDADES.UNIDADE'
      Size = 6
    end
    object Q_EtiquetasUNDVENDA: TIBStringField
      FieldName = 'UNDVENDA'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object Q_EtiquetasPRECONORMAL: TIBBCDField
      FieldName = 'PRECONORMAL'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasFATORITEMUND: TFloatField
      FieldName = 'FATORITEMUND'
      Origin = 'ITENSUNIDADES.FATOR'
    end
    object Q_EtiquetasINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'ITENS.INDEXADOR'
    end
    object Q_EtiquetasPRECO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRECO'
      Calculated = True
    end
    object Q_EtiquetasLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'ITENS.LOCALIZACAO'
    end
    object Q_EtiquetasQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Origin = 'ITENSUNIDADES.QTDEMBALAGEM'
    end
    object Q_EtiquetasPRECO2: TIBBCDField
      FieldName = 'PRECO2'
      Precision = 18
      Size = 3
    end
    object Q_EtiquetasCODIGOVENDA: TIBStringField
      FieldName = 'CODIGOVENDA'
      Origin = 'ITENS.CODIGOVENDA'
      Size = 14
    end
  end
  object Q_GerarEtiquetasDs: TDataSource
    DataSet = Q_GerarEtiquetas
    Left = 711
    Top = 204
  end
  object ppDBEtiquetas: TppDBPipeline
    DataSource = Q_EtiquetasDs
    UserName = 'DBEtiquetas'
    Left = 511
    Top = 207
    object ppDBEtiquetasppField1: TppField
      FieldAlias = 'Empresa'
      FieldName = 'Empresa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField3: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField4: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField5: TppField
      FieldAlias = 'FABRICANTE'
      FieldName = 'FABRICANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField6: TppField
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField7: TppField
      FieldAlias = 'CODIGOBARRAS'
      FieldName = 'CODIGOBARRAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField8: TppField
      FieldAlias = 'ESTOQUE'
      FieldName = 'ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField9: TppField
      FieldAlias = 'PERCENTUAL'
      FieldName = 'PERCENTUAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField10: TppField
      FieldAlias = 'FATORUNDVENDA'
      FieldName = 'FATORUNDVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField11: TppField
      FieldAlias = 'PRECOTEMP'
      FieldName = 'PRECOTEMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField12: TppField
      FieldAlias = 'PRECOPROMOCAO'
      FieldName = 'PRECOPROMOCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField13: TppField
      FieldAlias = 'PERCUND'
      FieldName = 'PERCUND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField14: TppField
      FieldAlias = 'PRECOMANUND'
      FieldName = 'PRECOMANUND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField15: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField16: TppField
      FieldAlias = 'UNDVENDA'
      FieldName = 'UNDVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField17: TppField
      FieldAlias = 'PRECONORMAL'
      FieldName = 'PRECONORMAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField18: TppField
      FieldAlias = 'FATORITEMUND'
      FieldName = 'FATORITEMUND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField19: TppField
      FieldAlias = 'INDEXADOR'
      FieldName = 'INDEXADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField20: TppField
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField21: TppField
      FieldAlias = 'LOCALIZACAO'
      FieldName = 'LOCALIZACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField22: TppField
      FieldAlias = 'QTDEMBALAGEM'
      FieldName = 'QTDEMBALAGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField23: TppField
      FieldAlias = 'PRECO2'
      FieldName = 'PRECO2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBEtiquetasppField24: TppField
      FieldAlias = 'CODIGOVENDA'
      FieldName = 'CODIGOVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object Q_EtiquetasDs: TDataSource
    DataSet = Q_Etiquetas
    Left = 624
    Top = 207
  end
  object ppEtiquetas6282: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '4000'
      '109000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 22200
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 649
    Top = 353
    Version = '6.02'
    mmColumnWidth = 105000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppBorda: TppShape
        UserName = 'Borda'
        mmHeight = 33867
        mmLeft = 0
        mmTop = 0
        mmWidth = 102659
        BandType = 4
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 19844
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 14552
        mmLeft = 28840
        mmTop = 1588
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 26
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10848
        mmLeft = 57415
        mmTop = 21167
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Cod:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2469
        mmLeft = 29104
        mmTop = 16669
        mmWidth = 4657
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Ref:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2469
        mmLeft = 48948
        mmTop = 16669
        mmWidth = 4022
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fab:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2469
        mmLeft = 71967
        mmTop = 16669
        mmWidth = 4445
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'FABRICANTE'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 16669
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3175
        mmLeft = 53446
        mmTop = 16669
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3175
        mmLeft = 35454
        mmTop = 16669
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        OnGetText = ppDBText6GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 26
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10054
        mmLeft = 1588
        mmTop = 21431
        mmWidth = 48154
        BandType = 4
      end
      object ppLabel4: TppLabel
        OnPrint = ppLabel4Print
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5165
        mmLeft = 50800
        mmTop = 26194
        mmWidth = 5556
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
    end
  end
  object ppEtiquetaJoiaPino: TppReport
    AutoStop = False
    Columns = 15
    ColumnPositions.Strings = (
      '15000'
      '28000'
      '41000'
      '54000'
      '67000'
      '80000'
      '93000'
      '106000'
      '119000'
      '132000'
      '145000'
      '158000'
      '171000'
      '184000'
      '197000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 15000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'S:\Fontes\Retaguarda\ilton.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 137
    Top = 352
    Version = '6.02'
    mmColumnWidth = 13000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand2: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText7GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2646
        mmLeft = 529
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2646
        mmLeft = 2910
        mmTop = 5027
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2646
        mmLeft = 529
        mmTop = 2381
        mmWidth = 12171
        BandType = 4
      end
      object ppMonetario: TppLabel
        OnPrint = ppMonetarioPrint
        UserName = 'Monetario'
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 265
        mmTop = 5027
        mmWidth = 2646
        BandType = 4
      end
      object ppLabel21: TppLabel
        OnPrint = ppMonetarioPrint
        UserName = 'Monetario1'
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 794
        mmWidth = 9260
        BandType = 4
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiquetasRoupas: TppReport
    AutoStop = False
    Columns = 5
    ColumnPositions.Strings = (
      '14000'
      '53000'
      '91000'
      '126000'
      '164000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 649
    Top = 402
    Version = '6.02'
    mmColumnWidth = 40000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand3: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 51065
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8467
        mmLeft = 794
        mmTop = 21431
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 5821
        mmTop = 30692
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        OnGetText = ppDBText12GetText
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7938
        mmLeft = 794
        mmTop = 12435
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 6879
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText1'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2117
        mmLeft = 6085
        mmTop = 40217
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText15GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8202
        mmLeft = 1058
        mmTop = 42598
        mmWidth = 33338
        BandType = 4
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
  end
  object pp5RIBON4inchmodel: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 28000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 43
    Top = 468
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 26988
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Borda1'
        mmHeight = 26458
        mmLeft = 0
        mmTop = 0
        mmWidth = 105834
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO2'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 24
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8731
        mmLeft = 71967
        mmTop = 17463
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5027
        mmLeft = 35983
        mmTop = 19579
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 20
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 15610
        mmLeft = 2910
        mmTop = 1588
        mmWidth = 101336
        BandType = 4
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        DataField = 'PRECOTEMP'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9525
        mmLeft = 2910
        mmTop = 16933
        mmWidth = 32015
        BandType = 4
      end
    end
  end
  object ppEtiquetas08X04_2Col: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '10000'
      '110000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 6000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 244
    Top = 357
    Version = '6.02'
    mmColumnWidth = 80000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand4: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Borda'
        mmHeight = 39688
        mmLeft = 0
        mmTop = 0
        mmWidth = 79904
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 22225
        mmLeft = 794
        mmTop = 529
        mmWidth = 78052
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 36
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 15325
        mmLeft = 18521
        mmTop = 23813
        mmWidth = 59796
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 36
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 15081
        mmLeft = 1058
        mmTop = 24077
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppColumnFooterBand4: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object daDataModule2: TdaDataModule
    end
  end
  object ppEtiquetas08X25_2Col: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '10000'
      '110000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 6000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 746
    Top = 47
    Version = '6.02'
    mmColumnWidth = 80000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand5: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Borda'
        mmHeight = 25135
        mmLeft = 0
        mmTop = 0
        mmWidth = 79904
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11906
        mmLeft = 794
        mmTop = 529
        mmWidth = 78052
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 22
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8731
        mmLeft = 35719
        mmTop = 15875
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 22
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 18785
        mmTop = 15875
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText601'
        DataField = 'QTDEMBALAGEM'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3969
        mmLeft = 35983
        mmTop = 12171
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Qtd por Embalagem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 12171
        mmWidth = 34660
        BandType = 4
      end
    end
    object ppColumnFooterBand5: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object daDataModule3: TdaDataModule
    end
  end
  object ppEtiquetas06X03_3Col: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '10000'
      '76000'
      '142000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 228
    Top = 450
    Version = '6.02'
    mmColumnWidth = 66000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand6: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand7: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Borda'
        mmHeight = 29633
        mmLeft = 0
        mmTop = 0
        mmWidth = 65617
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11906
        mmLeft = 794
        mmTop = 529
        mmWidth = 64294
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 26
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10583
        mmLeft = 17727
        mmTop = 18521
        mmWidth = 47361
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel6GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 26
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 10583
        mmLeft = 529
        mmTop = 18521
        mmWidth = 16669
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Qtd por Embalagem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 4233
        mmTop = 13494
        mmWidth = 34713
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'QTDEMBALAGEM'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4586
        mmLeft = 39423
        mmTop = 12965
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppColumnFooterBand6: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiqueta06X03_1Col: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 30000
    PrinterSetup.mmPaperWidth = 60000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 340
    Top = 353
    Version = '6.02'
    mmColumnWidth = 215000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand8: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppDBText25: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7938
        mmLeft = 2117
        mmTop = 529
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7673
        mmLeft = 17727
        mmTop = 8731
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel6GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        OnGetText = ppDBText27GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 30
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10541
        mmLeft = 2117
        mmTop = 16669
        mmWidth = 55827
        BandType = 4
      end
    end
  end
  object ppEtiquetas33X21_3Col: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '0'
      '36666'
      '73332')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 20000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 428
    Top = 457
    Version = '6.02'
    mmColumnWidth = 36666
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand7: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand9: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 20000
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 2646
        mmTop = 3969
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$ ###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3302
        mmLeft = 2646
        mmTop = 8996
        mmWidth = 29633
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6879
        mmLeft = 3175
        mmTop = 12700
        mmWidth = 28310
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 794
        mmWidth = 29633
        BandType = 4
      end
    end
    object ppColumnFooterBand7: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiqueta5ColMatricial: TppReport
    AutoStop = False
    Columns = 5
    ColumnPositions.Strings = (
      '3000'
      '32000'
      '64000'
      '95000'
      '126000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 341
    Top = 402
    Version = '6.02'
    mmColumnWidth = 32000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand8: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand10: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 794
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3302
        mmLeft = 7938
        mmTop = 8996
        mmWidth = 15875
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3302
        mmLeft = 794
        mmTop = 8996
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        CharWrap = True
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 5556
        mmWidth = 28575
        BandType = 4
      end
    end
    object ppColumnFooterBand8: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiqueta2ColMatricial: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '0'
      '112500')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 3000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 224000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 537
    Top = 338
    Version = '6.02'
    mmColumnWidth = 112000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand9: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand11: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 26000
      mmPrintPosition = 0
      object ppDBText34: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 14552
        mmLeft = 794
        mmTop = 0
        mmWidth = 110596
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5821
        mmLeft = 66146
        mmTop = 15081
        mmWidth = 21431
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 48683
        mmTop = 15081
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 15081
        mmWidth = 43921
        BandType = 4
      end
    end
    object ppColumnFooterBand9: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object C_IndexadoresDS: TDataSource
    DataSet = C_Indexadores
    Left = 623
    Top = 258
  end
  object Q_Indexadores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao, cifrao'
      'from indexadores '
      'order by descricao')
    Left = 626
    Top = 153
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 628
    Top = 306
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 555
    Top = 306
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_IndexadoresCIFRAO: TStringField
      FieldName = 'CIFRAO'
      Size = 10
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 457
    Top = 155
  end
  object ppEtiquetas6X4_A4: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '8000'
      '78000'
      '148000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 130
    Top = 450
    Version = '6.02'
    mmColumnWidth = 60000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand10: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand12: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 43127
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape1'
        mmHeight = 39423
        mmLeft = 265
        mmTop = 265
        mmWidth = 58738
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5165
        mmLeft = 529
        mmTop = 33073
        mmWidth = 58000
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        OnGetText = ppDBText12GetText
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8202
        mmLeft = 529
        mmTop = 19315
        mmWidth = 58000
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText13'
        OnGetText = ppDBText40GetText
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4741
        mmLeft = 529
        mmTop = 794
        mmWidth = 58000
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText14'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 5821
        mmWidth = 58000
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText15'
        DataField = 'UNIDADE'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3969
        mmLeft = 529
        mmTop = 28046
        mmWidth = 58000
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText1'
        OnGetText = ppDBText37GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8759
        mmLeft = 529
        mmTop = 10319
        mmWidth = 58000
        BandType = 4
      end
    end
    object ppColumnFooterBand10: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiquetasJoias: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 12700
    PrinterSetup.mmPaperWidth = 51857
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    Left = 441
    Top = 346
    Version = '6.02'
    mmColumnWidth = 51857
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand13: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        CharWrap = True
        OnGetText = ppDBText43GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9525
        mmLeft = 1852
        mmTop = 2117
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 27252
        mmTop = 1058
        mmWidth = 23876
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        CharWrap = True
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2381
        mmLeft = 27252
        mmTop = 6615
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2910
        mmLeft = 27252
        mmTop = 9260
        mmWidth = 23813
        BandType = 4
      end
    end
  end
  object pp5ColPrecoGrandeMatricial: TppReport
    AutoStop = False
    Columns = 5
    ColumnPositions.Strings = (
      '5000'
      '35000'
      '65000'
      '95000'
      '125000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 7000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 641
    Top = 451
    Version = '6.02'
    mmColumnWidth = 43200
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand11: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand14: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppDBText47: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9760
        mmLeft = 794
        mmTop = 3440
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText33'
        CharWrap = True
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3440
        mmLeft = 794
        mmTop = 13494
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        CharWrap = True
        DataField = 'UNDVENDA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 13494
        mmWidth = 11113
        BandType = 4
      end
    end
    object ppColumnFooterBand11: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppGondolaMatricial: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6000'
      '121000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 224000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 634
    Top = 492
    Version = '6.02'
    mmColumnWidth = 110000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand12: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand15: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppDBText49: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 16669
        mmLeft = 794
        mmTop = 1588
        mmWidth = 99219
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6350
        mmLeft = 15346
        mmTop = 18521
        mmWidth = 24606
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6381
        mmLeft = 1323
        mmTop = 18521
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'UNDVENDA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6350
        mmLeft = 41010
        mmTop = 18521
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6350
        mmLeft = 67998
        mmTop = 18521
        mmWidth = 31750
        BandType = 4
      end
    end
    object ppColumnFooterBand12: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppBolsa2Col: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '0'
      '52000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 80000
    PrinterSetup.mmPaperWidth = 108000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 55
    Top = 349
    Version = '6.02'
    mmColumnWidth = 50000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand13: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand16: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 79640
      mmPrintPosition = 0
      object ppDBText53: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12965
        mmLeft = 794
        mmTop = 2381
        mmWidth = 48683
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText2'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8467
        mmLeft = 18256
        mmTop = 15610
        mmWidth = 31221
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8467
        mmLeft = 1323
        mmTop = 15610
        mmWidth = 15875
        BandType = 4
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode2'
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12435
        mmLeft = 1058
        mmTop = 24342
        mmWidth = 48154
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8467
        mmLeft = 1058
        mmTop = 53446
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8467
        mmLeft = 18256
        mmTop = 53446
        mmWidth = 31221
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.75
        mmHeight = 529
        mmLeft = 0
        mmTop = 37835
        mmWidth = 48948
        BandType = 4
      end
      object ppDBBarCode3: TppDBBarCode
        UserName = 'DBBarCode3'
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12435
        mmLeft = 1058
        mmTop = 62442
        mmWidth = 48154
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12965
        mmLeft = 529
        mmTop = 40217
        mmWidth = 48683
        BandType = 4
      end
    end
    object ppColumnFooterBand13: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object daDataModule4: TdaDataModule
    end
  end
  object ppGondolasRIBON: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 50000
    PrinterSetup.mmPaperWidth = 100000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 43
    Top = 403
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand17: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 46831
      mmPrintPosition = 0
      object ppDBText57: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 17198
        mmLeft = 1852
        mmTop = 1323
        mmWidth = 93134
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText6'
        OnGetText = ppDBText21GetText
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 40
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 14817
        mmLeft = 1852
        mmTop = 28046
        mmWidth = 93134
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        OnGetText = ppDBText21GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 28
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10054
        mmLeft = 1852
        mmTop = 18256
        mmWidth = 93134
        BandType = 4
      end
    end
  end
  object C_GerarEtiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GerarEtiquetas'
    Left = 710
    Top = 257
    object C_GerarEtiquetasITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_GerarEtiquetasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_GerarEtiquetasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_GerarEtiquetasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_GerarEtiquetasESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_GerarEtiquetasFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
  end
  object P_GerarEtiquetas: TDataSetProvider
    DataSet = Q_GerarEtiquetas
    Constraints = True
    Left = 707
    Top = 310
  end
  object ppGondola_Media: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 30000
    PrinterSetup.mmPaperWidth = 75000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 339
    Top = 453
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand18: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppDBText62: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9790
        mmLeft = 5821
        mmTop = 265
        mmWidth = 68527
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText58'
        OnGetText = ppDBText21GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 5821
        mmTop = 22754
        mmWidth = 68527
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        OnGetText = ppDBText21GetText
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6615
        mmLeft = 5821
        mmTop = 10319
        mmWidth = 68263
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        OnGetText = ppDBText21GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 5821
        mmTop = 17198
        mmWidth = 68527
        BandType = 4
      end
    end
  end
  object ppEtiquetas33X21_3Col_Argox: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '2000'
      '37000'
      '72000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 20000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 129
    Top = 400
    Version = '6.02'
    mmColumnWidth = 32000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand14: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand19: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 20000
      mmPrintPosition = 0
      object ppDBText66: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 529
        mmTop = 529
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText29'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$ ###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 5821
        mmWidth = 25400
        BandType = 4
      end
      object ppDBBarCode4: TppDBBarCode
        UserName = 'DBBarCode1'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7408
        mmLeft = 4498
        mmTop = 9525
        mmWidth = 25400
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand14: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiquetasRoupa2Col: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '0'
      '40000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 60000
    PrinterSetup.mmPaperWidth = 80000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 437
    Top = 394
    Version = '6.02'
    mmColumnWidth = 40000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand15: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand20: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 57415
      mmPrintPosition = 0
      object ppDBText68: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8508
        mmLeft = 2910
        mmTop = 27517
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4129
        mmLeft = 8202
        mmTop = 36777
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        OnGetText = ppDBText70GetText
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11113
        mmLeft = 2910
        mmTop = 16140
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText13'
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5005
        mmLeft = 2910
        mmTop = 10583
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText72: TppDBText
        UserName = 'DBText1'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2002
        mmLeft = 8202
        mmTop = 46567
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText15GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8258
        mmLeft = 1588
        mmTop = 48948
        mmWidth = 35983
        BandType = 4
      end
    end
    object ppColumnFooterBand15: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppGondolaHorizontal: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 29000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 255
    Top = 399
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand21: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 28000
      mmPrintPosition = 0
      object ppDBText74: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8202
        mmLeft = 3969
        mmTop = 18521
        mmWidth = 105040
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText6'
        CharWrap = True
        OnGetText = ppDBText21GetText
        AutoSize = True
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 36
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 15081
        mmLeft = 34396
        mmTop = 2646
        mmWidth = 61119
        BandType = 4
      end
      object ppDBBarCode5: TppDBBarCode
        UserName = 'DBBarCode5'
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10848
        mmLeft = 4498
        mmTop = 2646
        mmWidth = 29104
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        AutoSize = True
        DataField = 'UNIDADE'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6615
        mmLeft = 96309
        mmTop = 6615
        mmWidth = 20108
        BandType = 4
      end
    end
  end
  object ppEtiquetasRoupas3Colunas: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '0'
      '38000'
      '75000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 68000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 529
    Top = 419
    Version = '6.02'
    mmColumnWidth = 35000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand16: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand22: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 65352
      mmPrintPosition = 0
      object ppDBText77: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 24
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8467
        mmLeft = 794
        mmTop = 25400
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 5821
        mmTop = 34660
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        OnGetText = ppDBText12GetText
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7938
        mmLeft = 794
        mmTop = 16404
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText13'
        CharWrap = True
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10583
        mmLeft = 794
        mmTop = 4763
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText1'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2117
        mmLeft = 6085
        mmTop = 51858
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText15GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 24
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 8213
        mmLeft = 1058
        mmTop = 54240
        mmWidth = 33338
        BandType = 4
      end
    end
    object ppColumnFooterBand16: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
  end
  object ppEtiquetasRoupas3ColunasStillo: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4000'
      '39333'
      '74666')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 68000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 533
    Top = 376
    Version = '6.02'
    mmColumnWidth = 35333
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand17: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand23: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 65352
      mmPrintPosition = 0
      object ppDBText83: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 14012
        mmLeft = 1058
        mmTop = 12171
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 5821
        mmTop = 44450
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 13229
        mmLeft = 1058
        mmTop = 30692
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText13'
        CharWrap = True
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10583
        mmLeft = 1058
        mmTop = 794
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText15GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11906
        mmLeft = 1058
        mmTop = 49477
        mmWidth = 33338
        BandType = 4
      end
    end
    object ppColumnFooterBand17: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
  end
  object ppEtiquetasRoupas3ColunasFashion: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4000'
      '39333'
      '74666')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 49000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 122
    Top = 170
    Version = '6.02'
    mmColumnWidth = 35333
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand18: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand24: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 48154
      mmPrintPosition = 0
      object ppDBText87: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5556
        mmLeft = 1058
        mmTop = 4763
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 5292
        mmTop = 41010
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText90: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9790
        mmLeft = 1323
        mmTop = 30692
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText91: TppDBText
        UserName = 'DBText13'
        CharWrap = True
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 0
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10936
        mmLeft = 1323
        mmTop = 20108
        mmWidth = 32015
        BandType = 4
      end
    end
    object ppColumnFooterBand18: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
  end
  object ppGondolaHorizontal100: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 29000
    PrinterSetup.mmPaperWidth = 100000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 569
    Top = 15
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand25: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 28000
      mmPrintPosition = 0
      object ppDBText95: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12171
        mmLeft = 7938
        mmTop = 14817
        mmWidth = 88636
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText6'
        CharWrap = True
        OnGetText = ppDBText21GetText
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11113
        mmLeft = 38100
        mmTop = 2646
        mmWidth = 44186
        BandType = 4
      end
      object ppDBBarCode6: TppDBBarCode
        UserName = 'DBBarCode5'
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11906
        mmLeft = 7673
        mmTop = 2646
        mmWidth = 32544
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText97: TppDBText
        UserName = 'DBText76'
        AutoSize = True
        DataField = 'UNIDADE'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 81492
        mmTop = 4763
        mmWidth = 15346
        BandType = 4
      end
    end
  end
  object ppEtiquetaPimaco6283: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6350'
      '107950')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 712
    Top = 91
    Version = '6.02'
    mmColumnWidth = 101600
    DataPipelineName = 'ppDBEtiquetas'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand19: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand26: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Borda2'
        mmHeight = 50271
        mmLeft = 1058
        mmTop = 0
        mmWidth = 99748
        BandType = 4
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 15875
        mmLeft = 2381
        mmTop = 6350
        mmWidth = 97102
        BandType = 4
      end
      object ppDBText100: TppDBText
        UserName = 'DBText100'
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 97367
        BandType = 4
      end
      object ppLabel8: TppLabel
        OnPrint = ppLabel8Print
        UserName = 'Label8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 76994
        mmTop = 42598
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Sequ'#234'ncia: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 50800
        mmTop = 42598
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel18: TppLabel
        OnPrint = ppLabel18Print
        UserName = 'Label18'
        Caption = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 18256
        mmLeft = 2381
        mmTop = 23019
        mmWidth = 97102
        BandType = 4
      end
      object ppLabel19: TppLabel
        OnPrint = ppLabel19Print
        UserName = 'Label19'
        Caption = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 42333
        mmWidth = 46831
        BandType = 4
      end
    end
    object ppColumnFooterBand19: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object Q_SAIDAS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select'
      'si.saidaitem,'
      'si.saida,'
      'i.codigo,'
      'si.descricao,'
      'i.unidade,'
      
        'cast((si.quantidade*cast(SI.FATOR as numeric(15,3))/i.fatorundve' +
        'nda) as Numeric(15,3)) as quantidade,'
      'si.preco,'
      'si.subtotalitem,'
      'f.nome as nomecliente,'
      's.data,'
      's.numero,'
      's.favorecido,'
      'F.ENDERECO,'
      'F.CIDADE,'
      'F.BAIRRO,'
      'F.UF'
      'from'
      'Saidas s   inner join SaidasItens si on si.saida = s.saida'
      'inner join Itens i on i.item = si.item'
      'left join Favorecidos f on f.favorecido = s.favorecido'
      'left join Favorecidos v on v.favorecido = s.vendedor'
      'left join favorecidos m on m.favorecido = s.medico'
      'left join Favorecidos fn on fn.favorecido = i.ultimofornecedor'
      'left join Fabricantes fb on fb.fabricante = i.fabricante'
      'left join Grupos gi on gi.grupo = i.grupo'
      
        'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomiss' +
        'ao'
      
        'left Join TIPOTRIBUTACAOFEDERAL tf on si.IDTRIBFEDERAL = tf.IDTR' +
        'IBFEDERAL'
      'where s.NUMERO = :NUMERO')
    Left = 408
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMERO'
        ParamType = ptUnknown
      end>
  end
  object Q_SAIDASDS: TDataSource
    DataSet = Q_SAIDAS
    Left = 410
    Top = 209
  end
  object C_SAIDAS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SAIDAS'
    Left = 411
    Top = 260
    object C_SAIDASSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Required = True
    end
    object C_SAIDASSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_SAIDASCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_SAIDASDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_SAIDASUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_SAIDASQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_SAIDASPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_SAIDASSUBTOTALITEM: TBCDField
      FieldName = 'SUBTOTALITEM'
      Precision = 18
      Size = 3
    end
    object C_SAIDASNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object C_SAIDASDATA: TDateField
      FieldName = 'DATA'
    end
    object C_SAIDASNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_SAIDASFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_SAIDASENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_SAIDASCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_SAIDASBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_SAIDASUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object P_SAIDAS: TDataSetProvider
    DataSet = Q_SAIDAS
    Constraints = True
    Left = 412
    Top = 314
  end
  object ppPimaco_A4225: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '6000'
      '73500'
      '140000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 8000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 479
    Top = 31
    Version = '6.02'
    mmColumnWidth = 63500
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand20: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand27: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 31000
      mmPrintPosition = 0
      object ppDBText99: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12700
        mmLeft = 5292
        mmTop = 15875
        mmWidth = 57679
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText6'
        CharWrap = True
        OnGetText = ppDBText21GetText
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10583
        mmLeft = 36777
        mmTop = 4498
        mmWidth = 26458
        BandType = 4
      end
      object ppDBBarCode7: TppDBBarCode
        OnPrint = ppDBBarCode7Print
        UserName = 'DBBarCode5'
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10848
        mmLeft = 5292
        mmTop = 4498
        mmWidth = 29104
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand20: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppModeloT25x15: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 30000
    PrinterSetup.mmPaperWidth = 50000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 532
    Top = 467
    Version = '6.02'
    mmColumnWidth = 50000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand28: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppDBText102: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7938
        mmLeft = 5292
        mmTop = 3175
        mmWidth = 44715
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText29'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$ ###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 11906
        mmWidth = 47361
        BandType = 4
      end
      object ppDBBarCode8: TppDBBarCode
        UserName = 'DBBarCode1'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7144
        mmLeft = 15875
        mmTop = 18256
        mmWidth = 34131
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
  end
  object ppEtiquetaRoupaLogomarca: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4000'
      '39333'
      '74666')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 67000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 290
    Top = 162
    Version = '6.02'
    mmColumnWidth = 35333
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand21: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand29: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 66940
      mmPrintPosition = 0
      object ppDBText104: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 7408
        mmLeft = 1323
        mmTop = 32015
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 4233
        mmTop = 56621
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9790
        mmLeft = 2117
        mmTop = 14288
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText13'
        CharWrap = True
        DataField = 'Empresa'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 0
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText92'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3378
        mmLeft = 2381
        mmTop = 24077
        mmWidth = 32015
        BandType = 4
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        mmHeight = 10848
        mmLeft = 794
        mmTop = 2381
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 52917
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9790
        mmLeft = 1058
        mmTop = 43127
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        OnGetText = ppDBText10GetText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5556
        mmLeft = 529
        mmTop = 61119
        mmWidth = 32015
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Em Caso de Troca Manter a Etiqueta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 27781
        mmWidth = 34660
        BandType = 4
      end
    end
    object ppColumnFooterBand21: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {00}
    end
  end
  object ppEtiquetas6089: TppReport
    AutoStop = False
    Columns = 4
    ColumnPositions.Strings = (
      '15000'
      '63000'
      '111000'
      '159000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 15000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 17
    Top = 336
    Version = '6.02'
    mmColumnWidth = 46000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand22: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand30: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 17000
      mmPrintPosition = 0
      object ppDBText109: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText7GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 9483
        mmLeft = 529
        mmTop = 0
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4995
        mmLeft = 33338
        mmTop = 4498
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 529
        mmTop = 9790
        mmWidth = 42333
        BandType = 4
      end
      object ppLabel20: TppLabel
        OnPrint = ppMonetarioPrint
        UserName = 'Monetario'
        AutoSize = False
        Caption = 'Monetario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 33602
        mmTop = 265
        mmWidth = 3598
        BandType = 4
      end
    end
    object ppColumnFooterBand22: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiquetaJoiaJatoTinta: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '15000'
      '97000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 15000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'S:\Fontes\Retaguarda\ilton.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 193
    Top = 328
    Version = '6.02'
    mmColumnWidth = 82000
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand23: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand31: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 12800
      mmPrintPosition = 0
      object ppDBText115: TppDBText
        UserName = 'DBText7'
        OnGetText = ppDBText7GetText
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3246
        mmLeft = 13229
        mmTop = 1323
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBText8'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 3440
        mmLeft = 18785
        mmTop = 4763
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText9'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6879
        mmLeft = 39952
        mmTop = 1852
        mmWidth = 27781
        BandType = 4
      end
      object ppLabel24: TppLabel
        OnPrint = ppMonetarioPrint
        UserName = 'Monetario'
        AutoSize = False
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 14023
        mmTop = 4763
        mmWidth = 4498
        BandType = 4
      end
    end
    object ppColumnFooterBand23: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEtiquetasJoias2: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 12700
    PrinterSetup.mmPaperWidth = 68580
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    Left = 809
    Top = 346
    Version = '6.02'
    mmColumnWidth = 51857
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand32: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppDBText118: TppDBText
        UserName = 'DBText43'
        CharWrap = True
        OnGetText = ppDBText43GetText
        DataField = 'CODIGOBARRAS'
        DataPipeline = ppDBEtiquetas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 28
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2646
        mmLeft = 265
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText119: TppDBText
        UserName = 'DBText44'
        CharWrap = True
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 34925
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText120: TppDBText
        UserName = 'DBText45'
        CharWrap = True
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2381
        mmLeft = 40481
        mmTop = 5292
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText121: TppDBText
        UserName = 'DBText46'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2910
        mmLeft = 43127
        mmTop = 8202
        mmWidth = 19579
        BandType = 4
      end
      object ppDBBarCode9: TppDBBarCode
        UserName = 'DBBarCode9'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6879
        mmLeft = 5027
        mmTop = 3704
        mmWidth = 28310
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppCifrao: TppLabel
        UserName = 'Cifrao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 34396
        mmTop = 8202
        mmWidth = 8202
        BandType = 4
      end
    end
  end
  object ppEtiquetaJoiaLogo: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 12700
    PrinterSetup.mmPaperWidth = 68580
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    Left = 849
    Top = 426
    Version = '6.02'
    mmColumnWidth = 51857
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand33: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppDBText125: TppDBText
        UserName = 'DBText46'
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 2910
        mmLeft = 43127
        mmTop = 8202
        mmWidth = 19579
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Cifrao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 34396
        mmTop = 8202
        mmWidth = 8202
        BandType = 4
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        MaintainAspectRatio = False
        mmHeight = 9260
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 29898
        BandType = 4
      end
      object ppDBBarCode10: TppDBBarCode
        UserName = 'DBBarCode10'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6879
        mmLeft = 36777
        mmTop = 794
        mmWidth = 28310
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
  end
end

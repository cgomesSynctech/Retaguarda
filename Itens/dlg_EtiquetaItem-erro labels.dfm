inherited dlgEtiquetaItem: TdlgEtiquetaItem
  Left = 209
  Top = 75
  Width = 1328
  Height = 697
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 1203
    Width = 117
    Height = 626
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 592
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
    Width = 1320
    Gradient.ColorStart = 9027548
    inherited imgModulo: TTS_Image
      Height = 39
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1284
    end
    inherited lbCaption: TdxfLabel
      Width = 186
      AutoSize = True
      Caption = 'Etiquetas dos Itens'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 1203
    Height = 626
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
      Left = 652
      Top = 115
      Width = 59
      Height = 13
      Caption = 'Linha Inicial:'
    end
    object Label2: TLabel
      Left = 420
      Top = 91
      Width = 110
      Height = 13
      Caption = 'Desconto A Vista (%) :'
    end
    object Label3: TLabel
      Left = 427
      Top = 113
      Width = 28
      Height = 13
      Caption = 'Lote :'
    end
    object Label4: TLabel
      Left = 531
      Top = 115
      Width = 47
      Height = 13
      Caption = 'Validade :'
    end
    object Label5: TLabel
      Left = 589
      Top = 91
      Width = 99
      Height = 13
      Caption = 'Desc. Atacado (%) :'
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
      Top = 405
      Width = 1201
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
        Sorted = csDown
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
        Items.Strings = (
          '1 - PIMACO, 2 Col. Continuo')
        Height = 19
      end
      object cbTipoEtiqueta: TTS_ComboBox
        Left = 54
        Top = 1
        Width = 211
        TabOrder = 1
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
          'E2 - ETIQUETA JOIA - 30X30X12 ( logo )'
          'A.1 - 03.3 Cm X 02.1 3 Colunas (Ribon)'
          'C2 - Etiqueta Ribon Duas Colunas'
          'L2 - Etiqueta Duas Colunas Elgin L42'
          'O1 - Etiqueta Joia (imp Zebra)'
          'G1 - Etiqueta Gondola ( 7cm x 3cm )  '
          'G2 - Etiqueta Gondola ( 7cm x 3cm )  - Modelo 2'
          'K1 - 03.3 Cm X 02.1 3 Colunas (Ribon - Elgin)'
          'Z1 - Etiqueta Joia Imp Jato de Tinta ( C'#243'digo e Referencia )'
          'Q1 - Gondola Horizontal - Lote e Validade'
          'A1 - 3 Colunas ribon Loja'
          'A2 - 03.3 Cm X 02.1 3 Colunas Com Data de entrada'
          'G3 - Etiqueta Gondola ( 7cm x 3cm )  - Modelo 3'
          'A.2 - 03.3 Cm X 02.1 3 Colunas (Ribon) ( sem Preco)'
          'K2 - 03.3 Cm X 02.1 3 Colunas sem Preco (Ribon - Elgin)'
          'S1 - 3 Colunas jato de tinta '
          'S2 - ETIQUETAS PIMACO A4255 3 COLUNAS Com Logo'
          'S3 - ETIQUETAS 3 COLUNAS Com Logo '
          'M1 - Etiqueta Gondola 10cm ( Elgin ) '
          '')
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
      Height = 19
    end
    object LInhaInicial: TTS_Edit
      Left = 714
      Top = 112
      Width = 41
      TabOrder = 7
      Text = '1'
      Height = 18
    end
    object TS_Edit1: TTS_Edit
      Left = 535
      Top = 89
      Width = 42
      TabOrder = 8
      Text = '0'
      Height = 18
    end
    object TS_Validade: TTS_Edit
      Left = 585
      Top = 112
      Width = 63
      TabOrder = 10
      Height = 18
    end
    object TS_Lote: TTS_Edit
      Left = 464
      Top = 112
      Width = 63
      TabOrder = 9
      Height = 18
    end
    object TS_Edit2: TTS_Edit
      Left = 695
      Top = 89
      Width = 50
      TabOrder = 11
      Text = '0'
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
    Left = 368
    Top = 193
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
    Left = 588
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
    Left = 373
    Top = 138
  end
  object Q_Etiquetas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    OnCalcFields = Q_EtiquetasCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      '')
    Left = 308
    Top = 187
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
    object Q_EtiquetasPRECODESCONTO: TFloatField
      FieldName = 'PRECODESCONTO'
    end
    object Q_Etiquetasultimacompra: TDateField
      FieldName = 'ultimacompra'
      Origin = 'ITENS.ultimacompra'
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
    Left = 351
    Top = 63
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
    object ppDBEtiquetasppField25: TppField
      FieldAlias = 'PRECODESCONTO'
      FieldName = 'PRECODESCONTO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 24
    end
    object ppDBEtiquetasppField26: TppField
      FieldAlias = 'LOTE'
      FieldName = 'LOTE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object ppDBEtiquetasppField27: TppField
      FieldAlias = 'VALIDADE'
      FieldName = 'VALIDADE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object ppDBEtiquetasppField28: TppField
      FieldAlias = 'ultimacompra'
      FieldName = 'ultimacompra'
      FieldLength = 10
      DataType = dtDate
      DisplayWidth = 10
      Position = 27
    end
  end
  object Q_EtiquetasDs: TDataSource
    DataSet = Q_Etiquetas
    Left = 280
    Top = 119
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
    PrinterSetup.PaperName = 'Carta'
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
    Left = 281
    Top = 65
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
    Left = 521
    Top = 418
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
    Left = 647
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
    Left = 442
    Top = 185
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 676
    Top = 322
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 595
    Top = 330
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
    Left = 249
    Top = 187
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
    PrinterSetup.PaperName = 'A4'
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
    Left = 250
    Top = 490
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
    Left = 810
    Top = 44
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
  object C_GerarEtiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GerarEtiquetas'
    Left = 726
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
    Left = 747
    Top = 318
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
    Left = 803
    Top = 245
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
    Left = 799
    Top = 151
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
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 32
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 13229
        mmLeft = 44715
        mmTop = 2646
        mmWidth = 40481
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
        mmLeft = 93927
        mmTop = 6879
        mmWidth = 13758
        BandType = 4
      end
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
    Left = 825
    Top = 103
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
        Font.Size = 13
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 11377
        mmLeft = 7408
        mmTop = 15610
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
        Font.Size = 26
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 12435
        mmLeft = 42069
        mmTop = 2646
        mmWidth = 46038
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
        mmLeft = 7408
        mmTop = 2646
        mmWidth = 35454
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
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4233
        mmLeft = 88371
        mmTop = 4763
        mmWidth = 8467
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
    PrinterSetup.PaperName = 'Carta'
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
    Left = 328
    Top = 339
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
    Left = 200
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMERO'
        ParamType = ptUnknown
      end>
  end
  object Q_SAIDASDS: TDataSource
    DataSet = Q_SAIDAS
    Left = 506
    Top = 281
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
    Left = 351
    Top = 407
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
    PrinterSetup.PaperName = 'Carta'
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
    Left = 25
    Top = 416
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
  object ppGondolaPequena: TppReport
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
    Left = 135
    Top = 391
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand47: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 28000
      mmPrintPosition = 0
      object ppDBText158: TppDBText
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
        mmHeight = 9790
        mmLeft = 2381
        mmTop = 18256
        mmWidth = 64558
        BandType = 4
      end
      object ppDBText159: TppDBText
        UserName = 'DBText6'
        CharWrap = True
        OnGetText = ppDBText21GetText
        AutoSize = True
        DataField = 'PRECO'
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
        mmHeight = 6085
        mmLeft = 36248
        mmTop = 1058
        mmWidth = 28840
        BandType = 4
      end
      object ppDBBarCode16: TppDBBarCode
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
        mmHeight = 9525
        mmLeft = 3175
        mmTop = 794
        mmWidth = 25135
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText160: TppDBText
        UserName = 'DBText76'
        AutoSize = True
        DataField = 'UNIDADE'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 18256
        mmTop = 11113
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'A Vista Por :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 40746
        mmTop = 7144
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText161'
        AutoSize = True
        DataField = 'CODIGO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 5292
        mmLeft = 2910
        mmTop = 11113
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText164: TppDBText
        UserName = 'DBText164'
        CharWrap = True
        OnGetText = ppDBText21GetText
        AutoSize = True
        DataField = 'PRECOPROMOCAO'
        DataPipeline = ppDBEtiquetas
        DisplayFormat = 'R$,0.00;-R$,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6085
        mmLeft = 35719
        mmTop = 12171
        mmWidth = 29369
        BandType = 4
      end
    end
  end
  object ppGondolaHorizontalLote: TppReport
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
    Left = 537
    Top = 143
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand51: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 28000
      mmPrintPosition = 0
      object ppDBText170: TppDBText
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
        mmHeight = 13494
        mmLeft = 3175
        mmTop = 265
        mmWidth = 93663
        BandType = 4
      end
      object ppDBBarCode19: TppDBBarCode
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
        mmLeft = 51065
        mmTop = 15610
        mmWidth = 44186
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Lote :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11642
        mmTop = 16140
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Val :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 13494
        mmTop = 22754
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Cifrao1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 22490
        mmTop = 15610
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 22490
        mmTop = 22754
        mmWidth = 22490
        BandType = 4
      end
    end
  end
  object ppLoja: TppReport
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
    Left = 172
    Top = 497
    Version = '6.02'
    mmColumnWidth = 36666
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand37: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand52: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 20000
      mmPrintPosition = 0
      object ppDBText171: TppDBText
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
      object ppDBText173: TppDBText
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
        mmHeight = 4163
        mmLeft = 2646
        mmTop = 8996
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText174: TppDBText
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
      object ppDBText175: TppDBText
        UserName = 'DBText175'
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
        mmHeight = 4163
        mmLeft = 2646
        mmTop = 14023
        mmWidth = 29633
        BandType = 4
      end
    end
    object ppColumnFooterBand37: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppPimaco3ColunasLogo: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '6000'
      '73500'
      '143000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 11000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 39
    Top = 151
    Version = '6.02'
    mmColumnWidth = 63500
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand42: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand58: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppDBText189: TppDBText
        UserName = 'DBText1'
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
        mmHeight = 8467
        mmLeft = 1852
        mmTop = 11377
        mmWidth = 57415
        BandType = 4
      end
      object ppDBBarCode25: TppDBBarCode
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
        mmHeight = 8467
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 21431
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppImage7: TppImage
        UserName = 'Image7'
        MaintainAspectRatio = False
        mmHeight = 10848
        mmLeft = 26458
        mmTop = 529
        mmWidth = 33338
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 20108
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText190: TppDBText
        UserName = 'DBText190'
        CharWrap = True
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 20108
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppColumnFooterBand42: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object pp3ColunasLogo: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '8000'
      '75000'
      '140000')
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 11000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 39
    Top = 215
    Version = '6.02'
    mmColumnWidth = 62500
    DataPipelineName = 'ppDBEtiquetas'
    object ppColumnHeaderBand43: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand59: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppDBText191: TppDBText
        UserName = 'DBText1'
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
        mmHeight = 8996
        mmLeft = 1852
        mmTop = 14552
        mmWidth = 57415
        BandType = 4
      end
      object ppDBBarCode26: TppDBBarCode
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
        mmHeight = 10319
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 21431
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppImage8: TppImage
        UserName = 'Image7'
        MaintainAspectRatio = False
        mmHeight = 12700
        mmLeft = 26458
        mmTop = 529
        mmWidth = 33338
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label43'
        Caption = 'R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 24077
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText192: TppDBText
        UserName = 'DBText190'
        CharWrap = True
        DataField = 'PRECO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 24077
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppColumnFooterBand43: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end

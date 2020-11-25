inherited RptPrecosMultiUnidades: TRptPrecosMultiUnidades
  Left = 75
  Top = 65
  Width = 860
  Height = 474
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 852
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 312
      Caption = 'Tabela de Pre'#231'os Multi-Unidades'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 818
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 766
    end
    inherited lbTemplate: TTS_Label
      Left = 417
    end
  end
  inherited pnGrid: TPanel
    Width = 799
    Height = 409
    inherited pnDados: TTS_Panel
      Width = 799
      Height = 24
      Color = 14019327
      object TS_Label2: TTS_Label
        Left = -2
        Top = 5
        Width = 91
        Caption = 'Tabela de Pre'#231'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 502
        Top = 5
        Width = 53
        Caption = 'Indexador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbTabelaPreco: TTS_PopupEdit
        Left = 92
        Top = 3
        Width = 205
        Style.BorderStyle = xbsSingle
        TabOrder = 0
        StyleController = DMProjeto.esItens
        PopupControl = gridTabelasPreco
        PopupFormBorderStyle = pbsSysPanel
        PopupFormCaption = 'Tabelas de Pre'#231'o'
        OnCloseUp = cmbTabelaPrecoCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 305
        Top = 3
        Width = 121
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        AutoSelect = False
        StyleController = DMProjeto.esItens
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
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
      object cmbIndex: TTS_LookupComboBox
        Left = 559
        Top = 3
        Width = 100
        TabOrder = 2
        StyleController = DMProjeto.esItens
        OnSelectionChange = cmbIndexSelectionChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'INDEXADOR'
        ListSource = C_IndexadoresDS
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 799
      Height = 366
      KeyField = 'CODIGO'
      Filter.Criteria = {00000000}
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaQTDEMBALAGEM: TdxDBGridColumn
        Caption = 'Emb.X'
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMBALAGEM'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Sorted = csDown
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Und.'
        HeaderAlignment = taCenter
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaFator: TdxDBGridColumn
        Caption = 'Ftr'
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORITEMUND'
      end
      object dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaicEstoque: TdxDBGridMaskColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icEstoque'
      end
      object dbgConsultaDESCFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFABRICANTE'
      end
      object dbgConsultaNOMEULTIMOFORNECEDOR: TdxDBGridMaskColumn
        Caption = #218'ltimo Fornecedor'
        HeaderAlignment = taCenter
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEULTIMOFORNECEDOR'
      end
      object dbgConsultaicPreco: TdxDBGridColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPreco'
      end
      object dbgConsultaDESCGRPComissao: TdxDBGridColumn
        Caption = 'Grp.Com.'
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCGRPCOMISSAO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 390
      Width = 799
      TabOrder = 4
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object gridTabelasPreco: TTS_QDBGrid
      Left = 279
      Top = 51
      Width = 294
      Height = 136
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TABELAPRECO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_TabelasPrecoDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_AppendOnEnter = False
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
      TS_SummaryFooterFont.Style = [fsBold]
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = [fsBold]
      TS_MultiSelection = False
      TS_ShowSelectionColumn = True
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tabela'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn
        Caption = '% Em Rela'#231#227'o a Normal'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUAL'
        EditMask = '##0.00 %'
      end
      object gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn
        DisableEditor = True
        MinWidth = 20
        Visible = False
        Width = 263
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESATIVADO'
        ValueChecked = 'S'
        ValueGrayed = 'null'
        ValueUnchecked = 'N'
      end
      object gridTabelasPrecoBASEADA: TdxDBGridCheckColumn
        DisableEditor = True
        MinWidth = 20
        Visible = False
        Width = 221
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEADA'
        ValueChecked = 'S'
        ValueGrayed = 'null'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 409
    inherited btSair: TTS_SpeedButton
      Top = 364
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 431
    Top = 314
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 520
    Top = 315
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 398
    Top = 315
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select i.item, i.codigo, i.descricao, iu.unidade,'
      'i.estoque, i.referencia, i.percentual, i.fatorundvenda,'
      'p.Preco, p.PrecoManual,'
      'p.PrecoPromocao,'
      'g.DescricaoGrupo,'
      'f.descricao as descfabricante,'
      'ultf.Nome as NomeUltimoFornecedor,'
      'fpf.Nome as NomeFornPreferencia,'
      'iu.percentual as percund, iu.precomanual as precomanund,'
      
        'i.unidade as undvenda, pr.preco as preconormal, iu.fator as Fato' +
        'rItemUnd,'
      
        'iu.PercentualMinimo, i.indexador, iu.qtdembalagem, gc.descricao ' +
        'as DescGrpComissao'
      'from itens i'
      'left join Grupos g on g.Grupo = i.Grupo'
      'left join Fabricantes f ON f.Fabricante = i.Fabricante'
      'left join itensunidades iu on iu.item = i.item'
      
        'left join Favorecidos ultf ON ultf.Favorecido = i.UltimoForneced' +
        'or'
      
        'left join Favorecidos fpf ON fpf.Favorecido = i.FornecPreferenci' +
        'a'
      
        'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.' +
        'Unidade'
      'and p.tabelapreco = :tabelapreco'
      
        'left join produtospreco pr on pr.item = i.item and pr.unidade = ' +
        'i.unidade'
      'and pr.tabelapreco = :tabelapreco'
      
        'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomiss' +
        'ao')
    Left = 339
    Top = 126
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tabelapreco'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tabelapreco'
        ParamType = ptUnknown
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Left = 481
    Top = 244
  end
  inherited P_Consulta: TDataSetProvider
    Left = 415
    Top = 175
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 417
    Top = 256
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Size = 1
    end
    object C_ConsultaPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Size = 30
    end
    object C_ConsultaNOMEULTIMOFORNECEDOR: TStringField
      FieldName = 'NOMEULTIMOFORNECEDOR'
      Size = 50
    end
    object C_ConsultaNOMEFORNPREFERENCIA: TStringField
      FieldName = 'NOMEFORNPREFERENCIA'
      Size = 50
    end
    object C_ConsultaPERCUND: TBCDField
      FieldName = 'PERCUND'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRECOMANUND: TBCDField
      FieldName = 'PRECOMANUND'
      Precision = 18
      Size = 3
    end
    object C_ConsultaUNDVENDA: TStringField
      FieldName = 'UNDVENDA'
      Size = 6
    end
    object C_ConsultaPRECONORMAL: TBCDField
      FieldName = 'PRECONORMAL'
      Precision = 18
      Size = 3
    end
    object C_ConsultaFATORITEMUND: TFloatField
      FieldName = 'FATORITEMUND'
    end
    object C_ConsultaPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ConsultaFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaicPreco: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPreco'
    end
    object C_ConsultaicEstoque: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoque'
    end
    object C_ConsultaQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
    end
    object C_ConsultaDESCGRPCOMISSAO: TStringField
      FieldName = 'DESCGRPCOMISSAO'
      Size = 30
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 568
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3671144907
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 637
    Top = 129
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Tabela de Pre'#231'os Multi-Unidades'
    Left = 557
    Top = 316
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 592
    Top = 271
  end
  object C_TabelasPrecoDS: TDataSource
    DataSet = C_TabelasPreco
    Left = 420
    Top = 128
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 419
    Top = 77
    object C_TabelasPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelasPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
  end
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco'
      'where desativado = '#39'N'#39)
    Left = 510
    Top = 98
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Left = 617
    Top = 76
  end
  object Q_Indexadores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores '
      'order by descricao')
    Left = 140
    Top = 83
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 636
    Top = 169
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 636
    Top = 234
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_IndexadoresDS: TDataSource
    DataSet = C_Indexadores
    Left = 222
    Top = 90
  end
end

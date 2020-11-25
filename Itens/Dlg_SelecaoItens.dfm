inherited DlgSelecaoItens: TDlgSelecaoItens
  Left = 117
  Top = 121
  Width = 517
  Height = 347
  Caption = 'Módulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 403
    Height = 277
    Color = 14019327
    object TS_GroupBox1: TTS_GroupBox
      Left = 4
      Top = 3
      Width = 394
      Height = 66
      Caption = 'Filtros para Seleção dos Itens'
      TabOrder = 0
      object TS_Label2: TTS_Label
        Left = 14
        Top = 20
        Width = 45
        Caption = 'Grupo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 3
        Top = 42
        Width = 56
        Caption = 'Fabricante:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbGrupo: TTS_LookupComboBox
        Left = 65
        Top = 18
        Width = 283
        TabOrder = 0
        StyleController = DMProjeto.esItens
        OnChange = cmbGrupoChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAOGRUPO'
        KeyFieldName = 'GRUPO'
        ListSource = C_GruposDS
        LookupKeyValue = Null
        Height = 19
      end
      object cmbFabricante: TTS_LookupComboBox
        Left = 65
        Top = 41
        Width = 283
        TabOrder = 1
        StyleController = DMProjeto.esItens
        OnChange = cmbGrupoChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'FABRICANTE'
        ListSource = C_FabricantesDS
        LookupKeyValue = Null
        Height = 19
      end
    end
    object dbgSelecao: TTS_QDBGrid
      Left = 1
      Top = 77
      Width = 401
      Height = 199
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM'
      SummaryGroups = <>
      SummarySeparator = '|'
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
      DataSource = Q_ItensDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
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
      object dbgSelecaoCodigo: TdxDBGridColumn
        Caption = 'Código'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgSelecaoDescricao: TdxDBGridColumn
        Caption = 'Descrição'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 291
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 403
    Width = 106
    Height = 277
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 243
      Width = 104
    end
    inherited btComando2: TTS_SpeedButton
      Width = 104
    end
    inherited btComando1: TTS_SpeedButton
      Width = 104
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 104
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 104
      Caption = 'Selecionar'
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000
        0000000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F0000
        BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBF000000
        FFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF00000000BFBFBF7F00007F00007F
        00007F00007F00007F00007F0000BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BF
        BFBFBFBFBF000000FFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF00000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF7F0000BFBFBFBFBFBFBFBFBF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFF
        FFFF00000000BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
        BF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFF000000BFBFBF0000000000000000000000
        0000000000000000000000000000BFBFBF000000000000000000000000000000
        FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBF000000FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F
        7F7FFFFFFF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F7F7FFFFFFF000000000000BF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF000000FFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
        00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 104
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 509
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 158
      Caption = 'Seleção de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 473
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'Módulo de Itens'
    Caption = 'Seleção de Itens'
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.item,i.codigo, i.descricao, i.unidade, i.grupo, i.fabri' +
        'cante'
      'from itens i'
      'where i.tipoitem = 1 and i.desativado = '#39'N'#39
      'order by i.descricao')
    Left = 77
    Top = 130
  end
  object Q_ItensProvider: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 39
    Top = 147
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ItensProvider'
    Left = 38
    Top = 199
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ItensGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_ItensFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_Itens_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object Q_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 38
    Top = 255
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOS where tipoitem = 1'
      'order by descricaogrupo')
    Left = 205
    Top = 121
    object Q_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object Q_GruposCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object Q_GruposDESCRICAOGRUPO: TIBStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object Q_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
  end
  object Q_GruposProvider: TDataSetProvider
    DataSet = Q_Grupos
    Constraints = True
    Left = 198
    Top = 182
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_GruposProvider'
    Left = 196
    Top = 241
    object C_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object C_GruposCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object C_GruposDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object C_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
  end
  object C_GruposDS: TDataSource
    DataSet = C_Grupos
    Left = 187
    Top = 299
  end
  object C_FabricantesDS: TDataSource
    DataSet = C_Fabricantes
    Left = 328
    Top = 279
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_FabricantesProvider'
    Left = 327
    Top = 227
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_FabricantesProvider: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 322
    Top = 168
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes')
    Left = 325
    Top = 122
  end
end

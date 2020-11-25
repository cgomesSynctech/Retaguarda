inherited FrmAcompanharItens: TFrmAcompanharItens
  Left = 180
  Top = 138
  Width = 750
  Height = 177
  Caption = 'M'#243'dulo de Itens'
  FormStyle = fsStayOnTop
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 624
    Height = 107
    Color = 14019327
    object dbgItens: TTS_QDBGrid
      Left = 3
      Top = 5
      Width = 617
      Height = 99
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM'
      SummaryGroups = <>
      SummarySeparator = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmGrid
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ItensDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      HideSelectionColor = 15726591
      HideSelectionTextColor = clWindowText
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      TS_DescriptionCanChange = False
      TS_ReportTitle = 'Acompanhamento de Itens'
      TS_GridMenuOptions = [gmLayout, gmImprimir, gmExportar]
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
      GroupNodeFont.Style = [fsBold]
      TS_BeforeLocalizar = dbgItensTS_BeforeLocalizar
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
      TS_AfterNewRecord = dbgItensTS_AfterNewRecord
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'ITEM'
      TS_ID = 0
      TS_ChaveEstrangeira = 'ITEM'
      TS_TipoItem = '1,2,3'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'Codigo;Descricao;Referencia'
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgItensITEM: TdxDBGridMaskColumn
        Caption = 'I.C.'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgItensCODIGO: TdxDBGridButtonColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgItensDESCRICAO: TdxDBGridButtonColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 201
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgItensREFERENCIA: TdxDBGridButtonColumn
        Caption = 'Referencia'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgItensUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unidade'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgItensESTOQUE: TdxDBGridColumn
        Caption = 'Estoque'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
      end
      object dbgItensCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo Medio'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgItensCUSTOCONTABIL: TdxDBGridMaskColumn
        Caption = 'Custo Contabil'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgItensFATORLUCRO: TdxDBGridMaskColumn
        Caption = 'Lucro'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORLUCRO'
      end
      object dbgItensHASCHILDREN: TdxDBGridCheckColumn
        Caption = 'Composto'
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HASCHILDREN'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbgItensPreco: TdxDBGridColumn
        Caption = 'Pre'#231'o'
        DisableEditor = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        DisableGrouping = True
        FieldName = 'PRECO'
        DisableFilter = True
      end
    end
    object dbgEstoque: TTS_QDBGrid
      Left = 227
      Top = 23
      Width = 393
      Height = 81
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TRANSACAOESTOQUE'
      SummaryGroups = <>
      SummarySeparator = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_EstoqueDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      GroupNodeFont.Style = [fsBold]
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
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'DATA'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgEstoqueDATA: TdxDBGridDateColumn
        Caption = 'Data'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgEstoqueQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Quantidade'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object dbgEstoqueDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Origem'
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 624
    Height = 107
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 73
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = 'Movimenta'#231#245'es'
      Glyph.Data = {00000000}
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Atualizar Itens'
      Glyph.Data = {00000000}
    end
    inherited TS_Bevel1: TTS_Bevel
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 742
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 257
      Caption = 'Acompanhamento de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited lbEstadoForm: TTS_Label
      Width = 205
      Caption = 'Selecione os Itens que deseja acompanhar'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 706
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 472
    Top = 443
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 488
    Top = 439
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 472
    Top = 437
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Acompanhamento de Itens'
    OnRefresh = FormsComponentRefresh
    Left = 673
    Top = 185
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 485
    Top = 439
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select i.Item, i.Codigo, i.Descricao, i.Referencia, i.Estoque, i' +
        '.CustoMedio, i.CustoContabil, i.SemLucro, i.FatorLucro, i.HASCHI' +
        'LDREN, i.UNIDADE,'
      'pp.preco'
      'From Itens i inner join produtospreco pp on pp.item = i.item'
      'where i.Item is null and pp.tabelapreco = 0')
    Left = 200
    Top = 123
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 199
    Top = 168
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 199
    Top = 216
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
      OnChange = C_ItensITEMChange
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_ItensESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ItensCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object C_ItensCUSTOCONTABIL: TBCDField
      FieldName = 'CUSTOCONTABIL'
      Precision = 18
      Size = 2
    end
    object C_ItensFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
    end
    object C_ItensHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ItensPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
    object C_ItensQ_Estoque: TDataSetField
      FieldName = 'Q_Estoque'
    end
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 145
    Top = 213
  end
  object ppmGrid: TTS_PopupMenu
    Left = 62
    Top = 131
  end
  object Q_Estoque: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = MasterDS
    SQL.Strings = (
      'Select t.*, o.Descricao  '
      
        'from TransacoesEstoque t LEFT JOIN TiposOrigens o ON o.Origem = ' +
        't.TipoOrigem'
      'Where Item = :ITEM'
      'Order by Data Desc, TransacaoEstoque Desc')
    Left = 260
    Top = 123
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
      end>
  end
  object MasterDS: TDataSource
    DataSet = Q_Itens
    Left = 145
    Top = 154
  end
  object C_Estoque: TClientDataSet
    Aggregates = <>
    DataSetField = C_ItensQ_Estoque
    Params = <>
    Left = 260
    Top = 168
    object C_EstoqueTRANSACAOESTOQUE: TIntegerField
      FieldName = 'TRANSACAOESTOQUE'
      Required = True
    end
    object C_EstoqueDATA: TDateField
      FieldName = 'DATA'
    end
    object C_EstoqueITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_EstoqueQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_EstoqueIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_EstoqueTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
    end
    object C_EstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object C_EstoqueDS: TDataSource
    DataSet = C_Estoque
    Left = 318
    Top = 168
  end
end

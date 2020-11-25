inherited FrmUltimasEntradas: TFrmUltimasEntradas
  Left = 185
  Top = 115
  Width = 682
  Height = 433
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 566
    Width = 100
    Height = 352
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 318
      Width = 98
    end
    inherited btComando2: TTS_SpeedButton
      Width = 98
    end
    inherited btComando1: TTS_SpeedButton
      Width = 98
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 98
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 98
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 98
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 666
    Gradient.ColorStart = 11775972
    inherited btHelp: TTS_SpeedButton
      Left = 638
    end
    inherited lbCaption: TdxfLabel
      Width = 163
      AutoSize = True
      Caption = #218'ltimas Entradas'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnDados: TTS_Panel
    Width = 566
    Height = 352
    Color = 15196656
    object Splitter1: TSplitter
      Left = 1
      Top = 151
      Width = 564
      Height = 2
      Cursor = crVSplit
      Align = alTop
    end
    object dbgEntradas: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 564
      Height = 150
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ENTRADA'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 0
      OnDblClick = dbgEntradasDblClick
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_EntradasDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
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
      TS_SelectedColumn = 'NUMERO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgEntradasNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#186' Doc.'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgEntradasDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgEntradasNOME: TdxDBGridMaskColumn
        Caption = 'Nome do Fornecedor'
        HeaderAlignment = taCenter
        Width = 400
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgEntradasENTRADA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgEntradasQ_Itens: TdxDBGridColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Q_Itens'
      end
      object dbgEntradasColumn7: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgEntradasTOTAL: TdxDBGridColumn
        Caption = 'Total'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
      end
    end
    object dbgItens: TTS_QDBGrid
      Left = 1
      Top = 153
      Width = 564
      Height = 198
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ENTRADAITEM'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = TS_PopupMenu1
      TabOrder = 1
      OnDblClick = dbgItensDblClick
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ItensDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
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
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgItensCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgItensREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgItensDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        HeaderAlignment = taCenter
        Width = 213
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgItensUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgItensQUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        Nullable = False
      end
      object dbgItensPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgItensENTRADAITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADAITEM'
      end
      object dbgItensColumn9: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgItensSUBTOTAL: TdxDBGridColumn
        Caption = 'Sub-Total'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
      end
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = #218'ltimas Entradas'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 65
    Top = 107
  end
  object Q_Entradas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select e.numero, f.nome, e.data, e.entrada, e.favorecido, e.tota' +
        'l'
      'from entradas e, favorecidos f'
      'where e.favorecido = f.favorecido and e.tipopadrao = 101'
      'and e.situacao = '#39'N'#39' and e.data >= :dData'
      'order by e.entrada desc')
    Left = 356
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dData'
        ParamType = ptUnknown
      end>
  end
  object C_EntradasDS: TDataSource
    DataSet = C_Entradas
    Left = 360
    Top = 238
  end
  object P_Entradas: TDataSetProvider
    DataSet = Q_Entradas
    Constraints = True
    Left = 354
    Top = 88
  end
  object C_Entradas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Entradas'
    Left = 353
    Top = 36
    object C_EntradasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'ENTRADAS.NUMERO'
      Size = 12
    end
    object C_EntradasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_EntradasDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ENTRADAS.DATA'
      Required = True
    end
    object C_EntradasENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADAS.ENTRADA'
      Required = True
    end
    object C_EntradasQ_Itens: TDataSetField
      FieldName = 'Q_Itens'
    end
    object C_EntradasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'ENTRADAS.FAVORECIDO'
    end
    object C_EntradasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'ENTRADAS.TOTAL'
    end
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 434
    Top = 58
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = C_EntradasQ_Itens
    Params = <>
    Left = 467
    Top = 84
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ENTRADASITENS.DESCRICAO'
      Size = 255
    end
    object C_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADASITENS.UNIDADE'
      Size = 6
    end
    object C_ItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_ItensPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'ENTRADASITENS.PRECO'
    end
    object C_ItensENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
      Origin = 'ENTRADASITENS.ENTRADAITEM'
      Required = True
    end
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ENTRADASITENS.ITEM'
    end
    object C_ItensSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
  end
  object Q_MasterDS: TDataSource
    DataSet = Q_Entradas
    Left = 405
    Top = 273
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select i.codigo, ei.descricao, i.referencia, ei.unidade, ei.quan' +
        'tidade, ei.preco, ei.entradaitem, ei.item, ei.subtotalitem'
      'from entradasitens ei, itens i'
      'where ei.entrada = :ENTRADA and ei.item = i.item')
    Left = 469
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ENTRADA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object TS_PopupMenu1: TTS_PopupMenu
    Left = 244
    Top = 234
  end
end

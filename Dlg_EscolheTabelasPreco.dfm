inherited DlgEscolheTabelasPreco: TDlgEscolheTabelasPreco
  Left = 227
  Top = 150
  Width = 540
  Height = 281
  Caption = 'Módulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 414
    Height = 211
    Color = 14019327
    object gridTabelasPreco: TTS_QDBGrid
      Left = 11
      Top = 11
      Width = 390
      Height = 190
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
      TabOrder = 0
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_TabelaPrecoDS
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
      TS_OnSelection = gridTabelasPrecoTS_OnSelection
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn
        DisableEditor = True
        Sorted = csUp
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUAL'
      end
      object gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn
        DisableEditor = True
        MinWidth = 20
        Width = 67
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
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEADA'
        ValueChecked = 'S'
        ValueGrayed = 'null'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 414
    Height = 211
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 177
    end
    inherited btComando2: TTS_SpeedButton
      Top = 35
      Height = 0
      Enabled = False
    end
    inherited btComando1: TTS_SpeedButton
      Top = 35
      Height = 0
      Enabled = False
    end
    inherited btLimpar: TTS_SpeedButton
      Height = 0
      Enabled = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Selecionar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 35
      Height = 0
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 532
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 240
      Caption = 'Escolhe Tabelas de Preço'
      Effect3D.ShadowedColor = 9027548
    end
    inherited lbUpperHint: TTS_Label
      Left = 327
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 70
    Top = 149
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 208
    Top = 149
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 33
    Top = 149
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'Módulo de Itens'
    Caption = 'Escolhe Tabelas de Preço'
    FormHeight = 281
    FirstEditField = gridTabelasPreco
    Left = 106
    Top = 149
  end
  object Q_TabelaPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From TABELASPRECO'
      'Order By Descricao')
    Left = 296
    Top = 89
  end
  object C_TabelaPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TabelaPrecoProvider'
    Left = 128
    Top = 89
    object C_TabelaPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
    object C_TabelaPrecoDESCRICAO: TStringField
      DisplayLabel = 'Tabela de Preço'
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelaPrecoPERCENTUAL: TBCDField
      DisplayLabel = 'Percentual'
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelaPrecoDESATIVADO: TStringField
      DisplayLabel = 'Desativada'
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaPrecoBASEADA: TStringField
      DisplayLabel = 'Baseada'
      FieldName = 'BASEADA'
      Size = 1
    end
    object C_TabelaPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object Q_TabelaPrecoProvider: TDataSetProvider
    DataSet = Q_TabelaPreco
    Constraints = True
    Options = [poAllowCommandText]
    Left = 224
    Top = 89
  end
  object C_TabelaPrecoDS: TDataSource
    DataSet = C_TabelaPreco
    Left = 40
    Top = 89
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 328
    Top = 145
  end
end

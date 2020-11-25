inherited DlgItensIdentificacaoSaida: TDlgItensIdentificacaoSaida
  Left = 552
  Top = 208
  Width = 526
  Height = 382
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 392
    Height = 301
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 267
    end
    inherited btComando2: TTS_SpeedButton
      Top = 72
    end
    inherited btComando1: TTS_SpeedButton
      Top = 1
      Hint = 'Confirmar a sa'#237'da dos produtos selecionados'
      Caption = 'Gravar'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 34
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Top = 105
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 67
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 510
    inherited btHelp: TTS_SpeedButton
      Left = 482
    end
    inherited lbCaption: TdxfLabel
      Width = 282
      AutoSize = True
      Caption = 'Identifica'#231#227'o de Itens - Sa'#237'da'
    end
  end
  inherited pnDados: TTS_Panel
    Width = 392
    Height = 301
    Color = 16116702
    object dbgItensIdentificacaoSaida: TTS_QDBGrid
      Left = 10
      Top = 15
      Width = 371
      Height = 277
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEMIDENT'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ItensIdentificacaoSaidaDS
      Filter.Criteria = {00000000}
      GroupPanelColor = 15461355
      HeaderColor = 15461355
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -15
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      object dbgItensIdentificacaoSaidaSerial: TdxDBGridMaskColumn
        Caption = 'N'#250'mero de Identifica'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERIAL'
        SummaryFooterType = cstCount
      end
    end
  end
  inherited FormsComponent: TFormsComponent
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Identifica'#231#227'o de Itens - Sa'#237'da'
  end
  object Q_ItensIdentificacaoSaida: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    ObjectView = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM ITENSIDENTS')
    Left = 357
    Top = 13
  end
  object C_ItensIdentificacaoSaida: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ItensIdentificacaoSaida'
    Left = 364
    Top = 77
    object C_ItensIdentificacaoSaida_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
      KeyFields = '_icSelecionado'
    end
    object C_ItensIdentificacaoSaidaITEMIDENT: TIntegerField
      FieldName = 'ITEMIDENT'
      Required = True
    end
    object C_ItensIdentificacaoSaidaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ItensIdentificacaoSaidaSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object C_ItensIdentificacaoSaidaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_ItensIdentificacaoSaida_selecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_selecionado'
    end
  end
  object C_ItensIdentificacaoSaidaDS: TDataSource
    DataSet = C_ItensIdentificacaoSaida
    Left = 363
    Top = 134
  end
  object P_ItensIdentificacaoSaida: TDataSetProvider
    DataSet = Q_ItensIdentificacaoSaida
    Constraints = True
    Options = [poAllowCommandText]
    Left = 362
    Top = 193
  end
end

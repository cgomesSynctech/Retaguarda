inherited DlgQtdAlmoxarifado: TDlgQtdAlmoxarifado
  Left = 103
  Top = 84
  Width = 473
  Height = 245
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 347
    Height = 175
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 141
    end
    inherited btComando2: TTS_SpeedButton
      OnClick = btComando2Click
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 465
    Gradient.ColorStart = 9027548
    inherited btHelp: TTS_SpeedButton
      Left = 429
    end
    inherited lbCaption: TdxfLabel
      Width = 137
      AutoSize = True
      Caption = 'Almoxarifados'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 347
    Height = 175
    Color = 14019327
    object Grid: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 345
      Height = 173
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEMALMOX'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'icEstoqueAlmox'
              SummaryFormat = '>icEstoqueAlmox=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
      DataSource = C_ItensAlmoxDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
      GroupNodeFont.Style = [fsBold]
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clRed
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
      TS_SelectedColumn = 'DESCRICAO'
      TS_ID = 0
      TS_ChaveEstrangeira = 'SUBITEM'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'Codigo;Descricao'
      TS_TipoDescricao = tdVenda
      TS_WhereAdicional = ' and i.HasChildren = '#39'N'#39' '
      TS_SummaryFields.Strings = (
        'icEstoqueAlmox;Sum;')
      TS_SummaryFooterText = 'Custo M'#233'dio dos SubItens:'
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Almoxarifado'
        DisableCustomizing = True
        DisableEditor = True
        Width = 257
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridESTOQUEALMOX: TdxDBGridMaskColumn
        Caption = 'Estoque'
        DisableCustomizing = True
        DisableEditor = True
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEALMOX'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 156
    Top = 0
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 116
    Top = 3
  end
  inherited FormStorage: TFormStorage
    Left = 126
    Top = 158
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Almoxarifados'
    Left = 72
    Top = 65534
  end
  inherited ppmHelp: TTS_PopupMenu
    Top = 94
  end
  object Q_ItensAlmox: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ia.itemalmox, ia.item, ia.almoxarifado, ia.estoquealmox, ' +
        'a.descricao'
      'from itensalmox ia'
      'left join almoxarifados a on a.almoxarifado = ia.almoxarifado'
      'where ia.item = :ITEM')
    UpdateObject = U_ItensAlmox
    Left = 216
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensAlmox: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ItensAlmox'
    Left = 216
    Top = 100
    object C_ItensAlmoxITEMALMOX: TIntegerField
      FieldName = 'ITEMALMOX'
      Required = True
    end
    object C_ItensAlmoxITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ItensAlmoxALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
    object C_ItensAlmoxESTOQUEALMOX: TBCDField
      FieldName = 'ESTOQUEALMOX'
      Precision = 18
      Size = 3
    end
    object C_ItensAlmoxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object U_ItensAlmox: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensalmox '
      'where'
      '  ITEMALMOX = :ITEMALMOX')
    ModifySQL.Strings = (
      'update itensalmox'
      'set'
      '  ITEMALMOX = :ITEMALMOX,'
      '  ITEM = :ITEM,'
      '  ALMOXARIFADO = :ALMOXARIFADO,'
      '  ESTOQUEALMOX = :ESTOQUEALMOX'
      'where'
      '  ITEMALMOX = :OLD_ITEMALMOX')
    InsertSQL.Strings = (
      'insert into itensalmox'
      '  (ITEMALMOX, ITEM, ALMOXARIFADO, ESTOQUEALMOX)'
      'values'
      '  (:ITEMALMOX, :ITEM, :ALMOXARIFADO, :ESTOQUEALMOX)')
    DeleteSQL.Strings = (
      'delete from itensalmox'
      'where'
      '  ITEMALMOX = :OLD_ITEMALMOX')
    Left = 294
    Top = 154
  end
  object C_ItensAlmoxDS: TDataSource
    DataSet = C_ItensAlmox
    Left = 216
    Top = 148
  end
  object P_ItensAlmox: TDataSetProvider
    DataSet = Q_ItensAlmox
    Constraints = True
    Left = 218
    Top = 50
  end
end

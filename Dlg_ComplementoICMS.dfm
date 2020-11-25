inherited DlgComplementoICMS: TDlgComplementoICMS
  Left = 340
  Top = 191
  Width = 785
  Height = 351
  Caption = 'Complemento ICMS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 651
    Height = 270
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 236
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'btcomando1'
      Visible = True
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 769
    inherited imgModulo: TTS_Image
      Left = 49
      Top = 97
    end
    inherited btHelp: TTS_SpeedButton
      Left = 741
    end
    inherited lbCaption: TdxfLabel
      Width = 223
      Caption = 'Complemento de ICMS'
    end
  end
  inherited pnDados: TTS_Panel
    Width = 651
    Height = 270
    Color = clBtnFace
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 60
      Height = 13
      Caption = 'Data Inicial :'
    end
    object Label2: TLabel
      Left = 223
      Top = 22
      Width = 55
      Height = 13
      Caption = 'Data Final :'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 88
      Top = 16
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 41103.4019608912
      Time = 41103.4019608912
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 291
      Top = 16
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 41103.4020800579
      Time = 41103.4020800579
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object dbgSaidasItens: TTS_QDBGrid
      Tag = -2
      Left = 1
      Top = 37
      Width = 650
      Height = 233
      HelpContext = -2
      Bands = <
        item
          Caption = 'dsfadsfasdfa'
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SAIDA'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = '|'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 2
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_SaidasItensDS
      Filter.Criteria = {00000000}
      GroupPanelColor = 16247774
      GroupNodeColor = 15461355
      GroupNodeTextColor = 16309210
      HeaderColor = 14859922
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      HighlightColor = 14859922
      OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = True
      TS_GridMenuOptions = [gmLayout, gmDados, gmImprimir, gmExportar]
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
      TS_ChaveEstrangeira = 'ITEM'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'I_Codigo=Codigo;Descricao;I_Referencia=Referencia'
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgSaidasItensSaida: TdxDBGridColumn
        Caption = 'Sa'#237'da'
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgSaidasItensCodItem: TdxDBGridColumn
        Caption = 'Cod. Item'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgSaidasItensDescricao: TdxDBGridColumn
        Caption = 'Descri'#231#227'o'
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgSaidasItenaliqicms: TdxDBGridColumn
        Caption = 'Aliq. ICMS'
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
      end
      object dbgSaidasItensQuantidade: TdxDBGridColumn
        Caption = 'Quantidade'
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object dbgSaidasItensPreco: TdxDBGridColumn
        Caption = 'Pre'#231'o'
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgSaidasItensSubTotalItem: TdxDBGridColumn
        Caption = 'Subtotal Item'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
      end
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 144
      Width = 641
      Height = 113
      DataSource = dsTeste
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 648
    Top = 234
  end
  inherited Beep: TBTBeeper
    Left = 648
    Top = 184
  end
  inherited FormStorage: TFormStorage
    Left = 576
    Top = 184
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Left = 138
    Top = 178
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 615
    Top = 186
  end
  object C_Tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tabela'
    Left = 792
    Top = 8
  end
  object C_TabelaDS: TDataSource
    DataSet = C_Tabela
    Left = 856
    Top = 8
  end
  object Q_SaidasItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select si.saida,si.item ,i.descricao, si.aliqicms, si.quantidade' +
        ', si.preco,si.subtotalitem  from saidasitens si inner join itens' +
        ' i on i.item = si.item where si.saida = :saida')
    UpdateObject = U_SaidasItens
    Left = 290
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'saida'
        ParamType = ptUnknown
      end>
  end
  object U_SaidasItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidasitens '
      'where'
      '  SAIDA = :SAIDA and'
      '  ITEM = :ITEM and'
      '  DESCRICAO = :DESCRICAO and'
      '  ALIQICMS = :ALIQICMS and'
      '  QUANTIDADE = :QUANTIDADE and'
      '  PRECO = :PRECO and'
      '  SUBTOTALITEM = :SUBTOTALITEM')
    ModifySQL.Strings = (
      'update saidasitens'
      'set'
      '  SAIDA = :SAIDA,'
      '  ITEM = :ITEM,'
      '  DESCRICAO = :DESCRICAO,'
      '  ALIQICMS = :ALIQICMS,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRECO = :PRECO,'
      '  SUBTOTALITEM = :SUBTOTALITEM'
      'where'
      '  SAIDA = :OLD_SAIDA and'
      '  ITEM = :OLD_ITEM and'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  ALIQICMS = :OLD_ALIQICMS and'
      '  QUANTIDADE = :OLD_QUANTIDADE and'
      '  PRECO = :OLD_PRECO and'
      '  SUBTOTALITEM = :OLD_SUBTOTALITEM')
    InsertSQL.Strings = (
      'insert into saidasitens'
      
        '  (SAIDA, ITEM, DESCRICAO, ALIQICMS, QUANTIDADE, PRECO, SUBTOTAL' +
        'ITEM)'
      'values'
      '  (:SAIDA, :ITEM, :DESCRICAO, :ALIQICMS, :QUANTIDADE, :PRECO, '
      ':SUBTOTALITEM)')
    DeleteSQL.Strings = (
      'delete from saidasitens'
      'where'
      '  SAIDA = :OLD_SAIDA and'
      '  ITEM = :OLD_ITEM and'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  ALIQICMS = :OLD_ALIQICMS and'
      '  QUANTIDADE = :OLD_QUANTIDADE and'
      '  PRECO = :OLD_PRECO and'
      '  SUBTOTALITEM = :OLD_SUBTOTALITEM')
    Left = 344
    Top = 3
  end
  object P_SaidasItens: TDataSetProvider
    DataSet = Q_SaidasItens
    Constraints = True
    Left = 400
    Top = 5
  end
  object C_SaidasItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SaidasItens'
    Left = 456
    Top = 5
    object C_SaidasItensSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_SaidasItensITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_SaidasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_SaidasItensALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_SaidasItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_SaidasItensPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_SaidasItensSUBTOTALITEM: TBCDField
      FieldName = 'SUBTOTALITEM'
      Precision = 18
      Size = 3
    end
  end
  object C_SaidasItensDS: TDataSource
    Tag = 100
    DataSet = C_SaidasItens
    Left = 540
    Top = 7
  end
  object teste: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 648
    Top = 8
  end
  object dsTeste: TDataSource
    DataSet = teste
    Left = 704
    Top = 16
  end
end

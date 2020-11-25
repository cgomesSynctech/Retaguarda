object DlgParcelas: TDlgParcelas
  Left = 280
  Top = 236
  Width = 496
  Height = 218
  Caption = 'Selecione as Parcelas a receber para emitir o Recibo'
  Color = 15921906
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TS_SpeedButton1: TTS_SpeedButton
    Left = 146
    Top = 157
    Height = 23
    Caption = 'Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = TS_SpeedButton1Click
    RepeatedClick = False
    Border = True
  end
  object TS_SpeedButton2: TTS_SpeedButton
    Left = 237
    Top = 157
    Height = 23
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = TS_SpeedButton2Click
    RepeatedClick = False
    Border = True
  end
  object dbgParcelas: TTS_QDBGrid
    Left = 0
    Top = 0
    Width = 488
    Height = 153
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ID'
    SummaryGroups = <>
    SummarySeparator = '|'
    Align = alTop
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
    DataSource = C_ParcelasDS
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
    object dbgParcelasPARCELA: TdxDBGridMaskColumn
      Alignment = taCenter
      Caption = 'Parcela'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PARCELA'
    end
    object dbgParcelasTITULO: TdxDBGridMaskColumn
      Caption = 'T'#237'tulo'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TITULO'
    end
    object dbgParcelasVENCIMENTO: TdxDBGridDateColumn
      Caption = 'Vencimento'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VENCIMENTO'
    end
    object dbgParcelasSALDO: TdxDBGridCurrencyColumn
      Caption = 'Valor'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SALDO'
      Nullable = False
    end
    object dbgParcelasTIPOCOBRANCA: TdxDBGridMaskColumn
      Caption = 'Tipo de Cobran'#231'a'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 173
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TIPOCOBRANCA'
    end
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.id, t.parcela, t.vencimento, t.faltareceber as saldo, t' +
        '.titulo, tc.descricao as tipocobranca'
      'from titulosareceber t '
      'left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca'
      'where t.venda = :saida and t.status >0 and t.status < 50')
    Left = 96
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'saida'
        ParamType = ptUnknown
      end>
  end
  object C_Parcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Parcelas'
    Left = 176
    Top = 40
    object C_ParcelasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ParcelasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_ParcelasTIPOCOBRANCA: TStringField
      FieldName = 'TIPOCOBRANCA'
      Size = 50
    end
    object C_Parcelas_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object P_Parcelas: TDataSetProvider
    DataSet = Q_Parcelas
    Constraints = True
    Left = 264
    Top = 40
  end
  object C_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 352
    Top = 40
  end
end

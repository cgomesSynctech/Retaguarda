object DlgPagamentos: TDlgPagamentos
  Left = 167
  Top = 246
  BorderStyle = bsDialog
  Caption = 'Pago a '
  ClientHeight = 146
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBRecebido: TTS_QDBGrid
    Left = 0
    Top = 0
    Width = 483
    Height = 146
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'IDDOC'
    SummaryGroups = <>
    SummarySeparator = '|'
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDblClick = DBRecebidoDblClick
    AutoSearchColor = 6611199
    AutoSearchTextColor = clBlue
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = Q_RecebidoDS
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
    HideSelectionColor = 16247774
    HideSelectionTextColor = clBlack
    HighlightColor = 16247774
    HighlightTextColor = clBlack
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    OnCustomDrawCell = DBRecebidoCustomDrawCell
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
    object DBRecebidoIDDOC: TdxDBGridMaskColumn
      DisableCustomizing = True
      Visible = False
      Width = 29
      BandIndex = 0
      RowIndex = 0
      FieldName = 'IDDOC'
    end
    object DBRecebidoDATA: TdxDBGridDateColumn
      Caption = 'Data'
      HeaderAlignment = taCenter
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DATA'
    end
    object DBRecebidoNOMECONTA: TdxDBGridMaskColumn
      Caption = 'Conta'
      HeaderAlignment = taCenter
      Width = 162
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMECONTA'
    end
    object DBRecebidoVENCIMENTO: TdxDBGridDateColumn
      Caption = 'Vencimento'
      HeaderAlignment = taCenter
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VENCIMENTO'
    end
    object DBRecebidoVALOR: TdxDBGridMaskColumn
      Caption = 'Valor'
      HeaderAlignment = taCenter
      Width = 75
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VALOR'
    end
    object DBRecebidoDESCFORMAPAG: TdxDBGridMaskColumn
      Caption = 'Forma Pagamento'
      HeaderAlignment = taCenter
      Width = 96
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DESCFORMAPAG'
    end
    object DBRecebidoDESCSTATUS: TdxDBGridMaskColumn
      Caption = 'Status'
      HeaderAlignment = taCenter
      Visible = False
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DESCSTATUS'
    end
    object DBRecebidoSTATUS: TdxDBGridMaskColumn
      DisableCustomizing = True
      Visible = False
      Width = 29
      BandIndex = 0
      RowIndex = 0
      FieldName = 'STATUS'
    end
  end
  object Q_Pago: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select rd.Retirada, rd.IDDoc, rd.Valor, rd.Vencimento, c.Descric' +
        'ao as NomeConta, r.Data, f.descricao as descFormaPag, st.descric' +
        'ao as DescStatus, rd.Status'
      
        'from RetiradasDuplicatas rdd, Retiradas r, RetiradasDoc rd, Cont' +
        'as c, FormasPagamento f, StatusDoc st'
      'where rdd.duplicata = :ID and '
      '           rdd.retirada = r.retirada and'
      '           rdd.retirada = rd.retirada and'
      '           rd.formapagamento = f.formapagamento and '
      '           rd.status = st.status and '
      '           rd.Conta = c.Conta')
    Left = 200
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object Q_PagoIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_PagoVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_PagoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_PagoNOMECONTA: TIBStringField
      FieldName = 'NOMECONTA'
      Size = 50
    end
    object Q_PagoDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_PagoDESCFORMAPAG: TIBStringField
      FieldName = 'DESCFORMAPAG'
      Required = True
      Size = 50
    end
    object Q_PagoDESCSTATUS: TIBStringField
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object Q_PagoSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object Q_PagoRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Required = True
    end
  end
  object Q_RecebidoDS: TDataSource
    DataSet = Q_Pago
    Left = 260
    Top = 32
  end
end

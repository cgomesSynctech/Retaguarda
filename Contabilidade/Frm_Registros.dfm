inherited FrmRegistros: TFrmRegistros
  Left = 18
  Top = 157
  Width = 683
  Caption = 'Contabilidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 579
    Color = 14733792
    object dbgRegistros: TTS_QDBGrid
      Left = 4
      Top = 5
      Width = 571
      Height = 238
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'LANCAMENTO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnDblClick = dbgRegistrosDblClick
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_RegistrosDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      HighlightColor = clInfoBk
      HighlightTextColor = clWindowText
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnChangeNode = dbgRegistrosChangeNode
      OnCustomDrawCell = dbgRegistrosCustomDrawCell
      OnEdited = dbgRegistrosEdited
      TS_AppendOnEnter = False
      RowFooterNodeFont.Charset = DEFAULT_CHARSET
      RowFooterNodeFont.Color = clWindowText
      RowFooterNodeFont.Height = -11
      RowFooterNodeFont.Name = 'Tahoma'
      RowFooterNodeFont.Style = [fsBold]
      TS_AccountFooterStyle = False
      TS_TipoLocalizar = tlFavorecidos
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
      TS_ChaveEstrangeira = 'FAVORECIDO'
      TS_C_Localizar = DMProjeto.C_LocalizarFav
      TS_ItemColumns = 'Nome'
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgRegistrosLANCAMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LANCAMENTO'
      end
      object dbgRegistrosCODIGOREDUZIDO: TdxDBGridMaskColumn
        Caption = 'Código'
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOREDUZIDO'
      end
      object dbgRegistrosDATA: TdxDBGridDateColumn
        Caption = 'Data'
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgRegistrosDESCORIGEM: TdxDBGridMaskColumn
        Caption = 'Tipo'
        DisableEditor = True
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCORIGEM'
      end
      object dbgRegistrosDESCCONTA: TdxDBGridMaskColumn
        Caption = 'Conta'
        Visible = False
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
      end
      object dbgRegistrosREFERENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgRegistrosIDGERADOR: TdxDBGridMaskColumn
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDGERADOR'
      end
      object dbgRegistrosORIGEM: TdxDBGridMaskColumn
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGEM'
      end
      object dbgRegistrosNUMERO: TdxDBGridColumn
        Caption = '# Doc.'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgRegistrosNome: TdxDBGridButtonColumn
        Caption = 'Favorecido'
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgRegistrosVALOR: TdxDBGridMaskColumn
        Caption = 'Valor'
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object dbgRegistrosSALDO: TdxDBGridMaskColumn
        Caption = 'Saldo'
        DisableEditor = True
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        SummaryFooterFormat = '###,##0.00'
      end
      object dbgRegistrosHISTORICO: TdxDBGridMaskColumn
        Caption = 'Histórico'
        Width = 240
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object dbgRegistrosCONTA: TdxDBGridPopupColumn
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA'
      end
      object dbgRegistrosLANCAMENTOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LANCAMENTOITEM'
      end
      object dbgRegistrosTIPO: TdxDBGridMaskColumn
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
      end
      object dbgRegistrosFORMNAME: TdxDBGridMaskColumn
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMNAME'
      end
    end
    object pnContraPartida: TTS_Panel
      Left = 5
      Top = 43
      Width = 570
      Height = 182
      Color = 14733792
      TabOrder = 1
      Visible = False
      object dbgLancamentos: TTS_QDBGrid
        Left = 5
        Top = 7
        Width = 516
        Height = 169
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'LANCAMENTOITEM'
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
        DataSource = C_ContraPartidaDS
        Filter.Criteria = {00000000}
        HeaderColor = 15461355
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideSelection = True
        HighlightColor = clInfoBk
        HighlightTextColor = clWindowText
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        OnCustomDrawCell = dbgLancamentosCustomDrawCell
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
        TS_SummaryFooterFont.Style = []
        TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
        TS_SummaryFooterSelFont.Color = clWindowText
        TS_SummaryFooterSelFont.Height = -11
        TS_SummaryFooterSelFont.Name = 'Tahoma'
        TS_SummaryFooterSelFont.Style = []
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'lkConta'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgLancamentosContax: TdxDBGridPopupColumn
          Caption = 'Conta'
          Width = 158
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkConta'
          PopupControl = DlgPopupContas.pnPopup
          PopupFormBorderStyle = pbsSysPanel
        end
        object dbgLancamentosColumn1: TdxDBGridLookupColumn
          Alignment = taLeftJustify
          Caption = 'Conta'
          HeaderAlignment = taCenter
          Visible = False
          Width = 182
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkConta'
          DropDownRows = 12
          DropDownWidth = 340
          ListFieldName = 'descricao;desctipo'
        end
        object dbgLancamentosColumn5: TdxDBGridColumn
          Caption = 'Histórico'
          Width = 262
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 0
          FieldName = 'HISTORICO'
          DisableFilter = True
        end
        object dbgLancamentosValor: TdxDBGridColumn
          Caption = 'Valor'
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          SummaryFooterType = cstSum
        end
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 579
    Width = 96
    inherited btFecharCadastro: TTS_SpeedButton
      Width = 94
    end
    inherited btComando2: TTS_SpeedButton
      Width = 94
    end
    inherited btComando1: TTS_SpeedButton
      Width = 94
      AllowAllUp = True
      Caption = 'Contra-Partida'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777770000000000700000007777770FFFFFFFF0700000007777
        770FFFFFFFF0700000007777770FFFFFFFF07000000077700000000000007000
        00007770FF07CCCCCCC0700000007770FF0000000000700000007770FFFFFFFF
        07777000000070000000000007777000000070F07CCCCCCC07777000000070F0
        0000000007777000000070FFFFFFFF0777777000000070000000000777777000
        0000707CCCCCCC07777770000000700000000007777770000000777777777777
        777770000000}
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 94
    end
    inherited btGravar: TTS_SpeedButton
      Width = 94
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 94
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 675
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Width = 91
      Caption = 'Registros'
      Effect3D.ShadowedColor = 12689345
    end
    inherited lbUpperHint: TTS_Label
      Left = 667
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Registros'
  end
  object Q_RegistrosProvider: TDataSetProvider
    DataSet = Q_Registros
    Constraints = True
    Left = 321
    Top = 78
  end
  object C_Registros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_RegistrosProvider'
    BeforePost = C_RegistrosBeforePost
    AfterPost = C_RegistrosAfterPost
    OnNewRecord = C_RegistrosNewRecord
    Left = 322
    Top = 126
    object C_RegistrosLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
      Required = True
    end
    object C_RegistrosCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_RegistrosDESCCONTA: TStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_RegistrosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 12
    end
    object C_RegistrosIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_RegistrosORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object C_RegistrosDESCORIGEM: TStringField
      FieldName = 'DESCORIGEM'
      Size = 40
    end
    object C_RegistrosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_RegistrosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 255
    end
    object C_RegistrosVALOR: TBCDField
      FieldName = 'VALOR'
      OnChange = C_RegistrosVALORChange
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_RegistrosSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_RegistrosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_RegistrosLANCAMENTOITEM: TIntegerField
      FieldName = 'LANCAMENTOITEM'
      Required = True
    end
    object C_RegistrosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_RegistrosFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Size = 30
    end
    object C_RegistrosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_RegistrosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_RegistrosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
  end
  object Q_Registros: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select l.lancamento, c.codigoreduzido, c.descricao as DescConta,' +
        ' l.referencia, l.idgerador, o.origem,o.descricao as DescOrigem, ' +
        'l.data, li.historico, li.valor, c.saldo, li.conta ,li.lancamento' +
        'item, t.tipo, o.formname,'
      'l.numero, f.nome, li.favorecido'
      'from ((((lancamentos l'
      'inner join lancamentositens li on l.lancamento = li.lancamento)'
      'inner join contas c on li.conta = c.conta)'
      'inner join tiposcontas t on c.tipoconta = t.tipoconta)'
      'inner join tiposorigens o on l.origem = o.origem)'
      'left join favorecidos f on li.favorecido = f.favorecido'
      'where li.conta = :conta'
      '')
    Left = 323
    Top = 31
    ParamData = <
      item
        DataType = ftInteger
        Name = 'conta'
        ParamType = ptUnknown
      end>
  end
  object C_RegistrosDS: TDataSource
    DataSet = C_Registros
    Left = 323
    Top = 174
  end
  object Q_ContraPartida: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select l.lancamento, c.codigoreduzido, c.descricao as DescConta,' +
        ' l.referencia, l.idgerador, o.origem,o.descricao as DescOrigem, ' +
        'l.data, li.historico, li.valor, c.saldo, li.conta ,li.lancamento' +
        'item, t.tipo, o.formname'
      'from ((((lancamentos l'
      'inner join lancamentositens li on l.lancamento = li.lancamento)'
      'inner join contas c on li.conta = c.conta)'
      'inner join tiposcontas t on c.tipoconta = t.tipoconta)'
      'inner join tiposorigens o on l.origem = o.origem)'
      'where l.lancamento = :lancamento and li.conta <> :conta'
      '')
    Left = 445
    Top = 29
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lancamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'conta'
        ParamType = ptUnknown
      end>
  end
  object Q_ContraPartidaProvider: TDataSetProvider
    DataSet = Q_ContraPartida
    Constraints = True
    Left = 444
    Top = 75
  end
  object C_ContraPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ContraPartidaProvider'
    OnNewRecord = C_ContraPartidaNewRecord
    Left = 446
    Top = 124
    object C_ContraPartidalkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
    end
    object C_ContraPartidaLANCAMENTOITEM: TIntegerField
      FieldName = 'LANCAMENTOITEM'
      Required = True
    end
    object C_ContraPartidaLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
      Required = True
    end
    object C_ContraPartidaCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContraPartidaDESCCONTA: TStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_ContraPartidaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 12
    end
    object C_ContraPartidaIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_ContraPartidaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object C_ContraPartidaDESCORIGEM: TStringField
      FieldName = 'DESCORIGEM'
      Size = 40
    end
    object C_ContraPartidaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ContraPartidaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 255
    end
    object C_ContraPartidaVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContraPartidaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContraPartidaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ContraPartidaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_ContraPartidaFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Size = 30
    end
  end
  object C_ContraPartidaDS: TDataSource
    DataSet = C_ContraPartida
    Left = 445
    Top = 172
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.conta,c.descricao, t.descricao as DescTipo, c.contapai,'
      'c.saldo'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    Left = 56
    Top = 67
  end
  object Q_ContasProvider: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 57
    Top = 115
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ContasProvider'
    Left = 57
    Top = 166
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 59
    Top = 221
  end
  object Q_AtualizaRegistros: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 194
    Top = 214
  end
  object Q_AtualizaCPartida: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 338
    Top = 231
  end
end

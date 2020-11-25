inherited FrmEncerrantes: TFrmEncerrantes
  Left = 34
  Top = 102
  Width = 740
  Height = 336
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 637
    Height = 266
    Color = 15724519
    object TS_Label1: TTS_Label
      Left = 6
      Top = 5
      Width = 35
      Caption = 'Data:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblData: TTS_Label
      Left = 44
      Top = 5
      Width = 85
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 133
      Top = 5
      Width = 65
      Caption = 'Funcion'#225'rio:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblFunc: TTS_Label
      Left = 203
      Top = 5
      Width = 209
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 419
      Top = 5
      Width = 46
      Caption = 'Caixa:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCaixa: TTS_Label
      Left = 467
      Top = 5
      Width = 111
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object dbgEncerrantes: TTS_QDBGrid
      Left = 1
      Top = 30
      Width = 635
      Height = 235
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BOMBA'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'LEITURAINICIAL'
              SummaryFormat = '>LEITURAINICIAL=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'LEITURAFINAL'
              SummaryFormat = '>LEITURAFINAL=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QTDVENDA'
              SummaryFormat = '>QTDVENDA=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'AFATURAR'
              SummaryFormat = '>AFATURAR=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Align = alBottom
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
      DataSource = C_EncerrantesDS
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
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'DESCRICAO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'LEITURAINICIAL;SUM'
        'LEITURAFINAL;SUM'
        'QTDVENDA;SUM'
        'AFATURAR;SUM')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgEncerrantesDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Item'
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgEncerrantesPRECO: TdxDBGridCurrencyColumn
        Caption = 'Pre'#231'o'
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        Nullable = False
      end
      object dbgEncerrantesLEITURAINICIAL: TdxDBGridCurrencyColumn
        Caption = 'Leitura Inicial'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEITURAINICIAL'
        SummaryFooterType = cstSum
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgEncerrantesAFERICAO: TdxDBGridCurrencyColumn
        Caption = 'Aferi'#231#227'o'
        TabStop = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AFERICAO'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgEncerrantesQTDVENDA: TdxDBGridColumn
        Caption = 'Vendas'
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDVENDA'
        SummaryFooterType = cstSum
      end
      object dbgEncerrantesENCERRANTE: TdxDBGridMaskColumn
        TabStop = False
        Visible = False
        Width = 1014079
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENCERRANTE'
      end
      object dbgEncerrantesFUNCIONARIO: TdxDBGridMaskColumn
        TabStop = False
        Visible = False
        Width = 1117043
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCIONARIO'
      end
      object dbgEncerrantesDATA: TdxDBGridDateColumn
        TabStop = False
        Visible = False
        Width = 897186
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgEncerrantesBOMBA: TdxDBGridMaskColumn
        TabStop = False
        Visible = False
        Width = 897186
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BOMBA'
      end
      object dbgEncerrantesLEITURAMAXIMA: TdxDBGridCurrencyColumn
        Caption = 'Maior Leitura'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        TabStop = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEITURAMAXIMA'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgEncerrantesLEITURAFINAL: TdxDBGridCurrencyColumn
        Caption = 'Leitura Final'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LEITURAFINAL'
        SummaryFooterType = cstSum
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgEncerrantesAFATURAR: TdxDBGridColumn
        Caption = 'A Faturar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 61
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = dbgEncerrantesAFATURARCustomDrawCell
        FieldName = 'AFATURAR'
        SummaryFooterType = cstSum
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 637
    Width = 95
    Height = 266
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 232
      Width = 93
    end
    inherited btComando2: TTS_SpeedButton
      Width = 93
    end
    inherited btComando1: TTS_SpeedButton
      Width = 93
      Caption = 'Check Vendas'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666886666
        666666666666666666666666000066666CC8866666666666666888F666666666
        00006666C22C886666666666668F668F666666660000666A2222C88666666666
        68F66668F6666666000066A222222C88666666668F6666668F666666000066A2
        22A222C8866666668F668F6668F66666000066A22C2A222C866666688F68F8F6
        668F666600006AA22C22A22C8866668F8F68F68F668F666600006A2A2C222A22
        C886668F68F8F668F668F66600006A22AAA222A22C88668F688FF6668F668F66
        00006A22C86A22CA22C8868F68F68F6688F668F6000066A2C666A22CA22C8668
        F8F668F6668F668F0000666AA6666A22CA2C86668F66668F6668F68F00006666
        666666A22CAC666666666668F6688F86000066666666666A22C8666666666666
        8F6688660000666666666666A2C866666666666668F68F660000666666666666
        6AC6666666666666668F86660000666666666666666666666666666666686666
        0000}
      NumGlyphs = 2
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 93
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 93
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 93
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 732
    Gradient.ColorStart = 13223591
    inherited imgModulo: TTS_Image
      Top = 0
      Width = 52
      Height = 41
    end
    inherited btHelp: TTS_SpeedButton
      Left = 696
    end
    inherited lbCaption: TdxfLabel
      Width = 113
      AutoSize = True
      Caption = 'Encerrantes'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 74
    Top = 140
  end
  inherited Beep: TBTBeeper
    Left = 32
    Top = 138
  end
  inherited FormStorage: TFormStorage
    Top = 146
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Encerrantes'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 115
    Top = 142
  end
  object Q_Encerrantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select e.*, p.descricao '
      'From Encerrantes e, Itens p'
      'where e.bomba = p.item and e.Data = :Data ')
    UpdateObject = U_Encerrantes
    Left = 270
    Top = 101
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end>
  end
  object U_Encerrantes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Encerrantes '
      'where'
      '  ENCERRANTE = :ENCERRANTE')
    ModifySQL.Strings = (
      'update Encerrantes'
      'set'
      '  DATA = :DATA,'
      '  BOMBA = :BOMBA,'
      '  PRECO = :PRECO,'
      '  AFERICAO = :AFERICAO,'
      '  LEITURAINICIAL = :LEITURAINICIAL,'
      '  LEITURAFINAL = :LEITURAFINAL,'
      '  LEITURAMAXIMA = :LEITURAMAXIMA,'
      '  QTDVENDA = :QTDVENDA'
      'where'
      '  ENCERRANTE = :OLD_ENCERRANTE')
    InsertSQL.Strings = (
      'insert into Encerrantes'
      '  (DATA, BOMBA, PRECO, AFERICAO, LEITURAINICIAL, LEITURAFINAL, '
      '   LEITURAMAXIMA, QTDVENDA)'
      'values'
      
        '  ( :DATA, :BOMBA, :PRECO, :AFERICAO, :LEITURAINICIAL, :LEITURAF' +
        'INAL, '
      '   :LEITURAMAXIMA, :QTDVENDA)')
    DeleteSQL.Strings = (
      'delete from Encerrantes'
      'where'
      '  ENCERRANTE = :OLD_ENCERRANTE')
    Left = 358
    Top = 176
  end
  object C_EncerrantesDS: TDataSource
    DataSet = C_Encerrantes
    Left = 358
    Top = 223
  end
  object C_Encerrantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Encerrantes'
    OnCalcFields = C_EncerrantesCalcFields
    Left = 359
    Top = 132
    object C_EncerrantesENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Required = True
    end
    object C_EncerrantesFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object C_EncerrantesDATA: TDateField
      FieldName = 'DATA'
    end
    object C_EncerrantesBOMBA: TIntegerField
      FieldName = 'BOMBA'
    end
    object C_EncerrantesPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
    object C_EncerrantesLEITURAINICIAL: TBCDField
      FieldName = 'LEITURAINICIAL'
      Precision = 18
      Size = 2
    end
    object C_EncerrantesLEITURAFINAL: TBCDField
      FieldName = 'LEITURAFINAL'
      Precision = 18
      Size = 2
    end
    object C_EncerrantesLEITURAMAXIMA: TBCDField
      FieldName = 'LEITURAMAXIMA'
      Precision = 18
      Size = 2
    end
    object C_EncerrantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_EncerrantesQTDVENDA: TBCDField
      FieldName = 'QTDVENDA'
      Precision = 18
      Size = 3
    end
    object C_EncerrantesAFATURAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AFATURAR'
      Calculated = True
    end
    object C_EncerrantesAFERICAO: TBCDField
      FieldName = 'AFERICAO'
      Precision = 18
      Size = 2
    end
  end
  object P_Encerrantes: TDataSetProvider
    DataSet = Q_Encerrantes
    Constraints = True
    Left = 356
    Top = 88
  end
  object Q_Bombas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select p.item,p.descricao,pp.preco,p.leituraatual,p.leituramaxim' +
        'a'
      'from Itens p, ProdutosPreco pp, Grupos g'
      
        'where p.grupo = g.grupo and p.item = pp.item and pp.tabelapreco ' +
        '= 0')
    Left = 526
    Top = 111
    object Q_BombasITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object Q_BombasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_BombasLEITURAATUAL: TIBBCDField
      FieldName = 'LEITURAATUAL'
      Origin = 'ITENS.LEITURAATUAL'
      Precision = 18
      Size = 2
    end
    object Q_BombasLEITURAMAXIMA: TIBBCDField
      FieldName = 'LEITURAMAXIMA'
      Origin = 'ITENS.LEITURAMAXIMA'
      Precision = 18
      Size = 2
    end
    object Q_BombasPRECO: TIBBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
  end
  object Q_CheckVendas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select sum(sp.quantidade) as QuantTotal,sum(sp.quantidade * sp.p' +
        'reco) as SubTotal'
      'from Saidas s, SaidasItens sp, Itens p'
      
        'where s.saida = sp.saida and sp.item = p.item and s.tipopadrao i' +
        'n (1,7)'
      
        'and s.data = :dData and s.caixa = :nCaixa and sp.item = :nProdut' +
        'o'
      'and s.situacao = '#39'N'#39)
    Left = 528
    Top = 159
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dData'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'nCaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'nProduto'
        ParamType = ptUnknown
      end>
    object Q_CheckVendasQUANTTOTAL: TIBBCDField
      FieldName = 'QUANTTOTAL'
      Precision = 18
      Size = 3
    end
    object Q_CheckVendasSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
  end
  object Q_PPEncerrantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'EXECUTE  PROCEDURE PP_ENCERRANTES_GERAR  :Data  :funcionario')
    Left = 230
    Top = 203
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'funcionario'
        ParamType = ptUnknown
      end>
  end
end

inherited DlgBaixaTitulosBoletoBancario: TDlgBaixaTitulosBoletoBancario
  Left = 157
  Top = 151
  Width = 667
  Height = 343
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 541
    Height = 273
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 239
    end
    inherited btLimpar: TTS_SpeedButton
      Glyph.Data = {00000000}
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = ' Baixar'
      Glyph.Data = {
        52030000424D5203000000000000120100002800000018000000180000000100
        08000000000040020000D10E0000D10E00003700000037000000504848005098
        4800384050005850500058585000485058005050580058585800606058005058
        6000606A60006A6A600058606A0060606A006A736A0073737300737B73007B7B
        730073AB73006A737B0073737B007B7B7B007B847B007B7B84007B8484008484
        8400848F840084B6840084848F007B8F8F00848F8F0084988F008F988F008F98
        98008FA1980098A198008F98A10098A1A10098ABA100A1ABA10098C0A100A1AB
        AB00A1B6AB00A1B6B600ABB6B600ABC0B600B6C0C000B6CAC000B6CACA00C0CA
        CA00C0E0D400CAE0E000D4EAEA00FF00FF00FFFFFF0035353535353535353535
        3535353535353535353535353535353535353535353535353535353535353535
        3535353535353535353535353535353535353535353535353535353535353535
        353535353535353535353535353535351C171C1C353535353535353535353535
        353535353535351C020506131C35353535353535353535353535353535353509
        290C0D21253510080808080808080808080808080808080C2E2B240C21081029
        292521252523262925292A292929291C142E2929310810210B3434343426252E
        0B0B1A15231A342C1C13130B1908100B213434343434341000072A0B0B343434
        3434342C0B0810103434342E2E343410030A1A040F3432011B34343411081016
        34342E0F0F2E3410040B270F10341201013434331608100B2C342E0F1D2E3434
        0A212A1A1E3432122834342F1A0810160B31342E2E3434340E2930082E343434
        343434200B08101E25253434343434342B221F263434343434342D1029081018
        1021212129212121252221251F26232021290B101E0810182125181821212118
        1821212118182121181821212108101010101010101010101010101010101010
        1010101010103510183131343434343431212118101010353535353535353535
        1021213131312121181010103535353535353535353535351018212121181010
        1035353535353535353535353535353535101810101035353535353535353535
        3535353535353535351010353535353535353535353535353535353535353535
        35353535353535353535353535353535353535353535}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 659
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 178
      Caption = 'Selecione os t'#237'tulos que deseja quitar'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 623
    end
    inherited lbCaption: TdxfLabel
      Width = 324
      AutoSize = True
      Caption = 'Baixa de T'#237'tulos - Boleto Banc'#225'rio'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 541
    Height = 273
    Color = 15724519
    object dbgTitulos: TTS_QDBGrid
      Left = 1
      Top = 25
      Width = 539
      Height = 247
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=#,###,##0.00'
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
      DataSource = C_TitulosDS
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
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
      TS_SummaryFields.Strings = (
        'Valor;Sum')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgTitulosID: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgTitulosTITULO: TdxDBGridMaskColumn
        Caption = 'T'#237'tulo'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
      end
      object dbgTitulosCOMPETENCIA: TdxDBGridDateColumn
        Caption = 'Data'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgTitulosNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 224
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgTitulosVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgTitulosVALOR: TdxDBGridCurrencyColumn
        Caption = 'Valor'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgTitulosCPF_CNPJ: TdxDBGridMaskColumn
        Caption = 'CPF/CNPJ'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgTitulosCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'd.Cliente'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 539
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = 15724519
      TabOrder = 1
      object TS_Label1: TTS_Label
        Left = 8
        Top = 5
        Width = 52
        Caption = 'Carteira:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbCarteira: TTS_LookupComboBox
        Left = 64
        Top = 2
        Width = 73
        TabOrder = 0
        StyleController = DMProjeto.esFinanceiro
        OnChange = cmbCarteiraChange
        ClearKey = 32
        ListFieldName = 'NUMEROCARTEIRA'
        KeyFieldName = 'CARTEIRA'
        ListSource = C_CarteirasDS
        LookupKeyValue = 0
        Height = 19
      end
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Baixa de T'#237'tulos - Boleto Banc'#225'rio'
  end
  object C_TitulosDS: TDataSource
    DataSet = C_Titulos
    Left = 408
    Top = 216
  end
  object P_Titulos: TDataSetProvider
    DataSet = Q_Titulos
    Constraints = True
    Left = 408
    Top = 168
  end
  object C_Titulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Titulos'
    Left = 408
    Top = 72
    object C_Titulos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TitulosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TitulosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_TitulosCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_TitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_TitulosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_TitulosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TitulosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_TitulosCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_TitulosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TitulosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object Q_Titulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.id, t.titulo, t.competencia, t.vencimento, t.faltareceb' +
        'er as valor, f.nome, f.cpf_cnpj, f.codigo, cnt.conta, t.cliente'
      'from titulosareceber t'
      'inner join favorecidos f on t.cliente = f.favorecido'
      'left join carteiras cart on t.carteira = cart.carteira'
      'left join contas cnt on cart.conta = cnt.conta'
      
        'where t.status > 0 and t.status < 50 and t.tipocobranca = 3 and ' +
        't.carteira = :carteira'
      'order by t.id')
    Left = 408
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'carteira'
        ParamType = ptUnknown
      end>
  end
  object C_CarteirasDS: TDataSource
    DataSet = C_Carteiras
    Left = 56
    Top = 208
  end
  object C_Carteiras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Carteiras'
    Left = 56
    Top = 72
    object C_CarteirasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Required = True
    end
    object C_CarteirasNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
    end
  end
  object P_Carteiras: TDataSetProvider
    DataSet = Q_Carteiras
    Constraints = True
    Left = 56
    Top = 117
  end
  object Q_Carteiras: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select carteira, numerocarteira from carteiras'
      'where desativado = '#39'N'#39
      'order by numerocarteira')
    Left = 56
    Top = 163
  end
end

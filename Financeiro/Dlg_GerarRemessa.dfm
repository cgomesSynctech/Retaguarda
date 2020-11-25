inherited DlgGerarRemessa: TDlgGerarRemessa
  Left = 542
  Top = 171
  Width = 667
  Height = 362
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 533
    Height = 281
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 247
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 1
      Caption = '&Pesquisar'
      Glyph.Data = {00000000}
    end
    inherited btGravar: TTS_SpeedButton
      Top = 34
      Caption = 'Gerar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 651
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 495
      Caption = 
        'Selecione os t'#237'tulos que emitiram boletos banc'#225'rios, os quais vo' +
        'c'#234' deseja incluir no arquivo de remessa.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 623
    end
    inherited lbCaption: TdxfLabel
      Width = 255
      AutoSize = True
      Caption = 'Gerar Remessa Para Banco'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 533
    Height = 281
    Color = 15724519
    object dbgTitulos: TTS_QDBGrid
      Left = 1
      Top = 25
      Width = 531
      Height = 255
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
        SummaryFooterType = cstCount
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
      Width = 531
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
        ClearKey = 32
        ListFieldName = 'NUMEROCARTEIRA'
        KeyFieldName = 'CARTEIRA'
        ListSource = C_CarteirasDS
        LookupKeyValue = 0
        Height = 19
      end
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 242
    Top = 199
  end
  inherited FormStorage: TFormStorage
    Left = 216
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Gerar Remessa Para Banco'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 159
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
    OnCalcFields = C_TitulosCalcFields
    Left = 408
    Top = 120
    object C_Titulos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TitulosNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_TitulosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 15
    end
    object C_TitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_TitulosCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
    end
    object C_TitulosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object C_TitulosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
    end
    object C_TitulosFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_TitulosFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_TitulosPLANOPAGAMENTO: TStringField
      FieldName = 'PLANOPAGAMENTO'
      Size = 30
    end
    object C_TitulosCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_TitulosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TitulosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_TitulosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TitulosNRO: TStringField
      FieldName = 'NRO'
      LookupDataSet = C_Carteiras
      Size = 4
    end
    object C_TitulosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_TitulosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_TitulosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TitulosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_TitulosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_TitulosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_TitulosINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Size = 14
    end
    object C_TitulosDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
    end
    object C_TitulosDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_TitulosPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object C_TitulosMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object C_TitulosTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
    end
    object C_TitulosDESCTIPOCOBRANCA: TStringField
      FieldName = 'DESCTIPOCOBRANCA'
      Size = 50
    end
    object C_TitulosNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 15
    end
    object C_TitulosCODBANCO: TStringField
      FieldName = 'CODBANCO'
    end
    object C_TitulosDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Size = 50
    end
    object C_TitulosLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_TitulosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TitulosOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TitulosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TitulosNOME_AVAL: TStringField
      FieldName = 'NOME_AVAL'
      Size = 50
    end
    object C_TitulosENDERECO_AVAL: TStringField
      FieldName = 'ENDERECO_AVAL'
      Size = 50
    end
    object C_TitulosCIDADE_AVAL: TStringField
      FieldName = 'CIDADE_AVAL'
      Size = 30
    end
    object C_TitulosCEP_AVAL: TStringField
      FieldName = 'CEP_AVAL'
      Size = 10
    end
    object C_TitulosCPF_AVAL: TStringField
      FieldName = 'CPF_AVAL'
      Size = 11
    end
    object C_TitulosRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object C_TitulosOBSSAIDA: TStringField
      FieldName = 'OBSSAIDA'
      Size = 255
    end
    object C_TitulosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object C_TitulosNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
    end
    object C_TitulosLOCALDEPAGAMENTO: TStringField
      FieldName = 'LOCALDEPAGAMENTO'
      Size = 100
    end
    object C_TitulosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object C_TitulosESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 10
    end
    object C_TitulosACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object C_TitulosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object C_TitulosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object C_TitulosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object C_TitulosQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object C_TitulosINSTRUCOES_TEMP: TStringField
      FieldName = 'INSTRUCOES_TEMP'
      Size = 2000
    end
    object C_TitulosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TitulosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      FixedChar = True
      Size = 1
    end
    object C_TitulosBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_TitulosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TitulosJUROSINSTRUCOES: TFloatField
      FieldName = 'JUROSINSTRUCOES'
    end
    object C_TitulosCOBRAREMISSAO: TStringField
      FieldName = 'COBRAREMISSAO'
      Size = 1
    end
    object C_TitulosPREIMPRESSO: TStringField
      FieldName = 'PREIMPRESSO'
      Size = 1
    end
    object C_TitulosDIGITOCODIGO: TStringField
      FieldName = 'DIGITOCODIGO'
      Size = 1
    end
    object C_TitulosTIPOCARTEIRA: TStringField
      FieldName = 'TIPOCARTEIRA'
      Size = 2
    end
    object C_TitulosDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 1
    end
    object C_TitulosCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 10
    end
    object C_TitulosSACADOR_NOME: TStringField
      FieldName = 'SACADOR_NOME'
      Size = 50
    end
    object C_TitulosSACADOR_CPFCNPJ: TStringField
      FieldName = 'SACADOR_CPFCNPJ'
      Size = 14
    end
    object C_TitulosCEDENTE_NOME: TStringField
      FieldName = 'CEDENTE_NOME'
      Size = 50
    end
    object C_TitulosCEDENTE_CPFCNPJ: TStringField
      FieldName = 'CEDENTE_CPFCNPJ'
      Size = 14
    end
    object C_TitulosIMGBOLETOIMPRESSO: TStringField
      FieldName = 'IMGBOLETOIMPRESSO'
      FixedChar = True
      Size = 1
    end
    object C_TitulosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TitulosDIGITONOSSONUMERO: TStringField
      FieldName = 'DIGITONOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object C_TitulosVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_TitulosVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_TitulosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_TitulosTARIFAEMISSAO: TBCDField
      FieldName = 'TARIFAEMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TitulosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object Q_Titulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '    t.notafiscal,'
      '    t.titulo,'
      '    t.valor ,'
      '    t.vencimento,'
      '    v.codigo as codvendedor,'
      '    v.nome as vendedor,'
      '    f.codigo as codcliente,'
      '    f.fone1,'
      '    f.fone2,'
      '    p.descricao as planopagamento,'
      '    t.competencia,'
      '    t.valordescantecipado,'
      '    t.valorjurosmora,'
      '    f.razao as nome,'
      '    f.endereco,'
      '    f.email,'
      '    f.nro,'
      '    f.favorecido,'
      '    f.bairro,'
      '    f.cidade,'
      '    f.uf,'
      '    f.cep,'
      '    f.cpf_cnpj,'
      '    f.inscricao_est,'
      '    t.dataantecipacao,'
      '    f.datanasc,'
      '    c.pai,'
      '    c.mae,'
      '    t.tipocobranca,'
      '    tc.descricao as desctipocobranca,'
      '    cnt.numconta,'
      '    b.codigo as codbanco,'
      '    b.nome as descbanco,'
      '    b.logotipo,'
      '    t.id,'
      '    t.obs,'
      '    s.total,'
      '    s.data,'
      '    c.nome_aval,'
      '    c.endereco_aval,'
      '    c.cidade_aval,'
      '    c.cep_aval,'
      '    c.ssn_aval as cpf_aval,'
      '    f.rg,'
      '    s.obs as obssaida,'
      '    cart.carteira,'
      '    cart.numerocarteira,'
      '    cart.localdepagamento,'
      '    cart.especie,'
      '    cart.especiedoc,'
      '    cart.aceite,'
      '    cart.agencia,'
      '    cart.codigo,'
      '    t.nossonumero,'
      '    t.digitonossonumero,'
      '    cart.quantidade,'
      '    cart.instrucoes as instrucoes_temp,'
      '    cart.descricao,'
      '    cart.desativado,'
      '    cart.banco,'
      '    cart.conta,'
      '    cart.jurosinstrucoes,'
      '    cart.cobraremissao,'
      '    cart.tarifaemissao,'
      '    cart.preimpresso,'
      '    cart.digitocodigo,'
      '    cart.tipocarteira,'
      '    cart.digitoagencia,'
      '    cart.convenio,'
      '    ava.nome as sacador_nome,'
      '    ava.cpf_cnpj as sacador_cpfcnpj,'
      '    ced.nome as cedente_nome,'
      '    ced.cpf_cnpj as cedente_cpfcnpj,'
      '    cart.imgboletoimpresso,'
      '    s.numero'
      'from favorecidos b'
      '   left outer join contas cnt on (b.favorecido = cnt.banco)'
      '   right outer join carteiras cart on (cnt.conta = cart.conta)'
      
        '   right outer join titulosareceber t on (cart.carteira = t.cart' +
        'eira)'
      '   inner join saidas s on (t.venda = s.saida)'
      '   left outer join favorecidos v on (s.vendedor = v.favorecido)'
      
        '   left outer join planospagamento p on (s.planopagamento = p.pl' +
        'anopagamento)'
      '   left outer join favorecidos f on (t.cliente = f.favorecido)'
      '   left outer join clientes c on (t.cliente = c.favorecido)'
      
        '   left outer join tiposcobranca tc on (t.tipocobranca = tc.tipo' +
        'cobranca)'
      
        '   inner join favorecidos ced on (ced.favorecido = cart.idcedent' +
        'e)'
      
        '   inner join favorecidos ava on (ava.favorecido = cart.idsacado' +
        'r)'
      '   where'
      '   t.status > 0'
      '   and t.status < 50'
      '   and t.tipocobranca = 3'
      '   and t.carteira = :carteira'
      '   and (remessa is null or remessa = '#39'N'#39')'
      'order by t.id'
      ''
      '')
    Left = 408
    Top = 72
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
  object gbTitulo1: TgbTitulo
    BoletoComImagem = False
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    Sacador.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edRecibo
    EmissaoBoleto = ebClienteEmite
    Left = 320
    Top = 128
  end
  object gbRemessa: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 344
    Top = 200
  end
end

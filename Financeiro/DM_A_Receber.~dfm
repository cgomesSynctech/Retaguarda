inherited DMA_Receber: TDMA_Receber
  Left = 208
  Top = 114
  Height = 370
  Width = 788
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select r.*, r.Status as OldStatus, f.Nome, f.TipoFavorecido'
      
        'from TitulosAReceber r INNER JOIN Favorecidos f ON r.Cliente = f' +
        '.Favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TitulosAReceber '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update TitulosAReceber'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  VALORPAGO = :VALORPAGO,'
      '  OBS = :OBS,'
      '  VENDA = :VENDA,'
      '  CLIENTE = :CLIENTE,'
      '  NUMBOLETO = :NUMBOLETO,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  STATUS = :STATUS,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO,'
      '  VALORDESCANTECIPADO = :VALORDESCANTECIPADO,'
      '  PERCENTUALMULTA = :PERCENTUALMULTA,'
      '  PERCENTUALMORA = :PERCENTUALMORA,'
      '  USUARIO = :USUARIO,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROSRECEBIDOS = :JUROSRECEBIDOS,'
      '  DATAATRASADO = :DATAATRASADO,'
      '  VALORMULTA = :VALORMULTA,'
      '  CREDITOUTILIZADO = :CREDITOUTILIZADO,'
      '  DATACANCELAMENTO = :DATACANCELAMENTO,'
      '  FUNCCANCELAMENTO = :FUNCCANCELAMENTO,'
      '  CREDITOGERADO = :CREDITOGERADO,'
      '  ORIGEM_ARECEBER = :ORIGEM_ARECEBER,'
      '  IDGERADOR_ARECEBER = :IDGERADOR_ARECEBER,'
      '  CONTAARECEBER = :CONTAARECEBER,'
      '  TIPOCOBRANCA = :TIPOCOBRANCA,'
      '  DATAPRORROGACAO = :DATAPRORROGACAO,'
      '  EMPRESA = :EMPRESA,'
      '  CARTEIRA = :CARTEIRA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TitulosAReceber'
      
        '  (ID, TITULO, PARCELA, VALOR, VENCIMENTO, COMPETENCIA, VALORPAG' +
        'O, '
      'OBS, '
      
        '   VENDA, CLIENTE, NUMBOLETO, NOTAFISCAL, STATUS, DATAANTECIPACA' +
        'O, '
      'VALORDESCANTECIPADO, '
      '   PERCENTUALMULTA, PERCENTUALMORA, USUARIO, DESCONTOS, '
      'JUROSRECEBIDOS, '
      '   DATAATRASADO, VALORMULTA, CREDITOUTILIZADO, '
      'DATACANCELAMENTO, FUNCCANCELAMENTO, '
      '   CREDITOGERADO, ORIGEM_ARECEBER, IDGERADOR_ARECEBER, '
      'CONTAARECEBER, TIPOCOBRANCA, '
      '   DATAPRORROGACAO, EMPRESA, CARTEIRA, PDV, IMPORTACAO)'
      'values'
      '  (:ID, :TITULO, :PARCELA, :VALOR, :VENCIMENTO, :COMPETENCIA, '
      ':VALORPAGO, '
      '   :OBS, :VENDA, :CLIENTE, :NUMBOLETO, :NOTAFISCAL, :STATUS, '
      ':DATAANTECIPACAO, '
      '   :VALORDESCANTECIPADO, :PERCENTUALMULTA, :PERCENTUALMORA, '
      ':USUARIO, :DESCONTOS, '
      
        '   :JUROSRECEBIDOS, :DATAATRASADO, :VALORMULTA, :CREDITOUTILIZAD' +
        'O, '
      ':DATACANCELAMENTO, '
      '   :FUNCCANCELAMENTO, :CREDITOGERADO, :ORIGEM_ARECEBER, '
      ':IDGERADOR_ARECEBER, '
      '   :CONTAARECEBER, :TIPOCOBRANCA, :DATAPRORROGACAO, :EMPRESA, '
      ':CARTEIRA, :PDV, :IMPORTACAO)')
    DeleteSQL.Strings = (
      'delete from TitulosAReceber'
      'where'
      '  ID = :OLD_ID')
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Pesquisar2_SQLFinal = DMComponentPesquisar2_SQLFinal
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'TitulosAReceber'
    Tabela_Nome = 'TitulosAReceber'
    Tabela_Chave = 'ID'
    MestreDetalhe = True
    Left = 33
    Top = 269
  end
  inherited P_Tabela: TDataSetProvider
    Left = 29
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    Top = 153
    object C_TabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TabelaTITULO: TStringField
      FieldName = 'TITULO'
      OnChange = C_TabelaTITULOChange
      Size = 15
    end
    object C_TabelaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      OnChange = C_TabelaPARCELAChange
    end
    object C_TabelaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      OnChange = C_TabelaVENCIMENTOChange
      OnValidate = C_TabelaVENCIMENTOValidate
      EditMask = '##/##/####;1; '
    end
    object C_TabelaCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
      EditMask = '##/##/####;1; '
    end
    object C_TabelaDATAPAGO: TDateField
      FieldName = 'DATAPAGO'
      OnValidate = C_TabelaVENCIMENTOValidate
      EditMask = '##/##/####'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object C_TabelaVENDA: TIntegerField
      FieldName = 'VENDA'
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      OnChange = C_TabelaCLIENTEChange
    end
    object C_TabelaNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object C_TabelaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 12
    end
    object C_TabelaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_TabelaDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
      EditMask = '##/##/####'
    end
    object C_TabelaIDCOMISSAO: TIntegerField
      FieldName = 'IDCOMISSAO'
    end
    object C_TabelaDATAATRASADO: TDateField
      FieldName = 'DATAATRASADO'
      EditMask = '##/##/####'
    end
    object C_TabelaDATACANCELAMENTO: TDateField
      FieldName = 'DATACANCELAMENTO'
    end
    object C_TabelaFUNCCANCELAMENTO: TIntegerField
      FieldName = 'FUNCCANCELAMENTO'
    end
    object C_TabelaOPENBALANCE: TStringField
      FieldName = 'OPENBALANCE'
      Size = 1
    end
    object C_TabelaOLDSTATUS: TIntegerField
      FieldName = 'OLDSTATUS'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaDescStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'DescStatus'
      LookupDataSet = C_StatusTitulos
      LookupKeyFields = 'STATUS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUS'
      Lookup = True
    end
    object C_TabelaQtdDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QtdDias'
      Calculated = True
    end
    object C_TabelaDiasRest: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DiasRest'
      Calculated = True
    end
    object C_TabelaValorBaseJuros: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorBaseJuros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object C_TabelaJurosPrevistos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosPrevistos'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object C_TabelaJurosRealizados: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosRealizados'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object C_TabelaValorACreditar: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ValorACreditar'
      DisplayFormat = '###,###,##0.00'
    end
    object C_TabelaDescTipoADescontar: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescTipoADescontar'
      Calculated = True
    end
    object C_TabelaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_TabelaPERCENTUALMULTA: TBCDField
      FieldName = 'PERCENTUALMULTA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaPERCENTUALMORA: TBCDField
      FieldName = 'PERCENTUALMORA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_TabelaCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALOR: TBCDField
      FieldName = 'VALOR'
      OnChange = C_TabelaVALORChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_TabelaVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaJUROSPLANO: TBCDField
      FieldName = 'JUROSPLANO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaJUROSRECEBIDOS: TBCDField
      FieldName = 'JUROSRECEBIDOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaFALTARECEBER: TBCDField
      FieldName = 'FALTARECEBER'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTAARECEBER: TIntegerField
      FieldName = 'CONTAARECEBER'
    end
    object C_TabelaORIGEM_ARECEBER: TIntegerField
      FieldName = 'ORIGEM_ARECEBER'
    end
    object C_TabelaIDGERADOR_ARECEBER: TIntegerField
      FieldName = 'IDGERADOR_ARECEBER'
    end
    object C_TabelaDOC_GARANTIA: TStringField
      FieldName = 'DOC_GARANTIA'
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_TabelaTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
    end
    object C_TabelaDATAPRORROGACAO: TDateField
      FieldName = 'DATAPRORROGACAO'
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object C_TabelaDescTipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTipoCobranca'
      LookupDataSet = C_TiposCobranca
      LookupKeyFields = 'TIPOCOBRANCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOCOBRANCA'
      Lookup = True
    end
    object C_TabelaDiasEmAtraso: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DiasEmAtraso'
    end
    object C_TabelaCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object C_TabelaDescCarteira: TStringField
      FieldKind = fkLookup
      FieldName = 'DescCarteira'
      LookupDataSet = C_Carteiras
      LookupKeyFields = 'CARTEIRA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARTEIRA'
      Size = 50
      Lookup = True
    end
    object C_TabelaNomeEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEmpresa'
      LookupDataSet = C_Empresas
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'EMPRESA'
      Size = 50
      Lookup = True
    end
    object C_TabelaPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
  end
  inherited C_TabelaDS: TDataSource
    Top = 203
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object Q_StatusTitulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from StatusTitulos'
      'order by Status')
    Left = 170
    Top = 51
  end
  object C_StatusTitulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_StatusTitulosProvider'
    Left = 171
    Top = 3
    object C_StatusTitulosSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
    object C_StatusTitulosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object Q_StatusTitulosProvider: TDataSetProvider
    DataSet = Q_StatusTitulos
    Constraints = True
    Left = 168
    Top = 100
  end
  object C_ContasOperacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasOperacao'
    BeforeOpen = C_ContasOperacaoBeforeOpen
    AfterPost = C_ContasOperacaoAfterPost
    OnNewRecord = C_ContasOperacaoNewRecord
    Left = 281
    Top = 3
    object C_ContasOperacaoCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ContasOperacaoVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#########0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasOperacaoDescConta: TStringField
      FieldKind = fkLookup
      FieldName = 'DescConta'
      LookupDataSet = DMFinanceiro.C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 50
      Lookup = True
    end
    object C_ContasOperacaoCONTAOPERACAO: TIntegerField
      FieldName = 'CONTAOPERACAO'
      Required = True
    end
    object C_ContasOperacaoID: TIntegerField
      FieldName = 'ID'
    end
    object C_ContasOperacaoNOMECLIENTEREF: TStringField
      FieldName = 'NOMECLIENTEREF'
      Size = 50
    end
    object C_ContasOperacaoCLIENTEREF: TIntegerField
      FieldName = 'CLIENTEREF'
    end
    object C_ContasOperacaoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_ContasOperacaoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object C_ContasOperacaoPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
  end
  object C_ContasOperacaoDS: TDataSource
    DataSet = C_ContasOperacao
    Left = 282
    Top = 147
  end
  object Q_ContasOperacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select c.ContaOperacao, c.Conta, c.IDGerador as ID, c.Valor , f.' +
        'nome as NomeClienteRef, c.ClienteRef, c.Historico, c.Origem, c.P' +
        'DV'
      'from ContasOperacao c'
      '        Left join Favorecidos f on c.clienteref = f.favorecido'
      'Where IDGerador = :ID')
    UpdateObject = U_ContasOperacao
    Left = 282
    Top = 51
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Q_DepositosDoc: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select dd.Deposito, d.TipoDeposito, dd.IDDoc, dd.Valor, dd.Venci' +
        'mento, c.Descricao as NomeConta, d.Data, f.descricao as descForm' +
        'aPag, st.descricao as DescStatus, dd.Status'
      
        'from DepositosTitulos dt, Depositos d, DepositosDoc dd, Contas c' +
        ', FormasPagamento f, StatusDoc st'
      'where dt.titulo = :ID and '
      '           dt.deposito = d.deposito and'
      '           dt.deposito = dd.deposito and'
      '           dd.formapagamento = f.formapagamento and '
      '           dd.status = st.status and '
      '           d.Conta = c.Conta')
    Left = 394
    Top = 50
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object Q_DepositosDocIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_DepositosDocVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_DepositosDocVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_DepositosDocNOMECONTA: TIBStringField
      FieldName = 'NOMECONTA'
      Size = 50
    end
    object Q_DepositosDocDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_DepositosDocDESCFORMAPAG: TIBStringField
      FieldName = 'DESCFORMAPAG'
      Required = True
      Size = 50
    end
    object Q_DepositosDocDESCSTATUS: TIBStringField
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object Q_DepositosDocSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object Q_DepositosDocDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object Q_DepositosDocTIPODEPOSITO: TIntegerField
      FieldName = 'TIPODEPOSITO'
    end
  end
  object C_DepositosDoc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Idioma'
        ParamType = ptUnknown
        Value = 1
      end>
    ProviderName = 'P_DepositosDoc'
    BeforeOpen = C_DepositosDocBeforeOpen
    Left = 393
    Top = 2
    object C_DepositosDocIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_DepositosDocVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_DepositosDocVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_DepositosDocNOMECONTA: TStringField
      FieldName = 'NOMECONTA'
      Size = 50
    end
    object C_DepositosDocDATA: TDateField
      FieldName = 'DATA'
    end
    object C_DepositosDocDESCFORMAPAG: TStringField
      FieldName = 'DESCFORMAPAG'
      Required = True
      Size = 50
    end
    object C_DepositosDocDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object C_DepositosDocSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_DepositosDocDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object C_DepositosDocTIPODEPOSITO: TIntegerField
      FieldName = 'TIPODEPOSITO'
    end
  end
  object C_DepositosDocDS: TDataSource
    DataSet = C_DepositosDoc
    Left = 399
    Top = 147
  end
  object U_ContasOperacao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ContasOperacao '
      'where'
      '  CONTAOPERACAO = :CONTAOPERACAO')
    ModifySQL.Strings = (
      'update ContasOperacao'
      'set'
      '  CONTA = :CONTA,'
      '  IDGerador = :ID,'
      '  VALOR = :VALOR,'
      '  CLIENTEREF = :CLIENTEREF,'
      '  HISTORICO = :HISTORICO,'
      '  ORIGEM = :ORIGEM'
      'where'
      '  CONTAOPERACAO = :OLD_CONTAOPERACAO')
    InsertSQL.Strings = (
      'insert into ContasOperacao'
      
        '  (CONTAOPERACAO, CONTA, IDGerador, VALOR, CLIENTEREF, HISTORICO' +
        ', '
      'ORIGEM, PDV)'
      'values'
      
        '  (:CONTAOPERACAO, :CONTA, :ID, :VALOR, :CLIENTEREF, :HISTORICO,' +
        ' '
      ':ORIGEM, :PDV)')
    DeleteSQL.Strings = (
      'delete from ContasOperacao'
      'where'
      '  CONTAOPERACAO = :OLD_CONTAOPERACAO')
    Left = 283
    Top = 195
  end
  object P_DepositosDoc: TDataSetProvider
    DataSet = Q_DepositosDoc
    Constraints = True
    Left = 400
    Top = 98
  end
  object P_ContasOperacao: TDataSetProvider
    DataSet = Q_ContasOperacao
    Constraints = True
    Left = 283
    Top = 98
  end
  object C_TiposCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposCobranca'
    Left = 506
    Top = 2
    object C_TiposCobrancaTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Required = True
    end
    object C_TiposCobrancaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TiposCobrancaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
  end
  object Q_TiposCobranca: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tiposcobranca')
    Left = 506
    Top = 50
  end
  object P_TiposCobranca: TDataSetProvider
    DataSet = Q_TiposCobranca
    Constraints = True
    Left = 506
    Top = 101
  end
  object C_TiposCobrancaDS: TDataSource
    DataSet = C_TiposCobranca
    Left = 506
    Top = 150
  end
  object C_Carteiras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Carteiras'
    Left = 606
    Top = 3
    object C_CarteirasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Required = True
    end
    object C_CarteirasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object C_Empresas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Empresas'
    Left = 694
    Top = 3
    object C_EmpresasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_EmpresasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_CarteirasDS: TDataSource
    DataSet = C_Carteiras
    Left = 608
    Top = 150
  end
  object C_EmpresasDS: TDataSource
    DataSet = C_Empresas
    Left = 696
    Top = 150
  end
  object P_Carteiras: TDataSetProvider
    DataSet = Q_Carteiras
    Constraints = True
    Left = 608
    Top = 102
  end
  object P_Empresas: TDataSetProvider
    DataSet = Q_Empresas
    Constraints = True
    Left = 696
    Top = 102
  end
  object Q_Carteiras: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from carteiras'
      'where desativado = '#39'N'#39)
    Left = 608
    Top = 51
  end
  object Q_Empresas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select f.favorecido, f.nome from favorecidos f'
      'where tipofavorecido = -1')
    Left = 696
    Top = 51
  end
end

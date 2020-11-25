object DMBBClientes: TDMBBClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 422
  Top = 198
  Height = 407
  Width = 800
  object U_Clientes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from favorecidos '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update favorecidos'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  RAZAO = :RAZAO,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  CAIXAPOSTAL = :CAIXAPOSTAL,'
      '  PAIS = :PAIS,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  EMAIL = :EMAIL,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  VENDEDOR = :VENDEDOR,'
      '  LIMITECREDITO = :LIMITECREDITO,'
      '  TAXAVEL = :TAXAVEL,'
      '  EIN = :EIN,'
      '  SSN = :SSN,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  DESATIVADO = :DESATIVADO,'
      '  EXIGIVEL1099 = :EXIGIVEL1099,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  SITE = :SITE,'
      '  SITUACAO = :SITUACAO,'
      '  LOGOTIPO = :LOGOTIPO,'
      '  CONTA = :CONTA,'
      '  DATANASC = :DATANASC,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  CAMPO06 = :CAMPO06,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  CAMPO09 = :CAMPO09,'
      '  CAMPO10 = :CAMPO10,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_EST = :INSCRICAO_EST,'
      '  BAIRRO = :BAIRRO,'
      '  MUNICIPIO = :MUNICIPIO,'
      '  NRO = :NRO'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into favorecidos'
      '  ('
      '  FAVORECIDO,'
      '  CODIGO,'
      '  NOME,'
      '  RAZAO,'
      '  ENDERECO,'
      '  CIDADE,'
      '  UF,'
      '  CEP, '
      '  CAIXAPOSTAL,'
      '  PAIS,'
      '  FONE1,'
      '  FONE2,'
      '  FAX,'
      '  CELULAR,'
      '  EMAIL,'
      '  TIPOFAVORECIDO,'
      '  VENDEDOR,'
      '  LIMITECREDITO,'
      '  TAXAVEL,'
      '  EIN,'
      '  SSN,'
      '  TABELAPRECO,'
      '  DESATIVADO,'
      '  EXIGIVEL1099,'
      '  DATACADASTRO,'
      '  SITE,'
      '  SITUACAO,'
      '  LOGOTIPO,'
      '  CONTA,'
      '  DATANASC,'
      '  CAMPO01,'
      '  CAMPO02,'
      '  CAMPO03,'
      '  CAMPO04,'
      '  CAMPO05,'
      '  CAMPO06,'
      '  CAMPO07,'
      '  CAMPO08,'
      '  CAMPO09,'
      '  CAMPO10,'
      '  CPF_CNPJ,'
      '  INSCRICAO_EST,'
      '  BAIRRO,'
      '  MUNICIPIO,'
      '  NRO)'
      'values'
      '  ('
      '  :FAVORECIDO,'
      '  :CODIGO,'
      '  :NOME,'
      '  :RAZAO,'
      '  :ENDERECO,'
      '  :CIDADE,'
      '  :UF,'
      '  :CEP, '
      '  :CAIXAPOSTAL,'
      '  :PAIS,'
      '  :FONE1,'
      '  :FONE2,'
      '  :FAX,'
      '  :CELULAR,'
      '  :EMAIL,'
      '  :TIPOFAVORECIDO,'
      '  :VENDEDOR,'
      '  :LIMITECREDITO,'
      '  :TAXAVEL,'
      '  :EIN,'
      '  :SSN,'
      '  :TABELAPRECO,'
      '  :DESATIVADO,'
      '  :EXIGIVEL1099,'
      '  :DATACADASTRO,'
      '  :SITE,'
      '  :SITUACAO,'
      '  :LOGOTIPO,'
      '  :CONTA,'
      '  :DATANASC,'
      '  :CAMPO01,'
      '  :CAMPO02,'
      '  :CAMPO03,'
      '  :CAMPO04,'
      '  :CAMPO05,'
      '  :CAMPO06,'
      '  :CAMPO07,'
      '  :CAMPO08,'
      '  :CAMPO09,'
      '  :CAMPO10,'
      '  :CPF_CNPJ,'
      '  :INSCRICAO_EST,'
      '  :BAIRRO,'
      '  :MUNICIPIO,'
      '  :NRO)'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from favorecidos'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 28
    Top = 204
  end
  object Q_Clientes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 5000
    CachedUpdates = False
    SQL.Strings = (
      'select f.*, credito as creditoold from favorecidos f '
      'where tipofavorecido = 1 and (favorecido is null or :bOk = 1)'
      'order by nome')
    UniDirectional = True
    UpdateObject = U_Clientes
    Left = 27
    Top = 102
    ParamData = <
      item
        DataType = ftInteger
        Name = 'bOk'
        ParamType = ptUnknown
      end>
  end
  object P_Clientes: TDataSetProvider
    DataSet = Q_Clientes
    Constraints = True
    Left = 25
    Top = 151
  end
  object C_ClientesDS: TDataSource
    DataSet = C_Clientes
    Left = 27
    Top = 52
  end
  object C_Clientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'P_Clientes'
    BeforePost = C_ClientesBeforePost
    OnNewRecord = C_ClientesNewRecord
    Left = 26
    Top = 4
    object C_ClientesFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_ClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
      OnValidate = C_ClientesCODIGOValidate
    end
    object C_ClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      OnChange = C_ClientesNOMEChange
      Size = 50
    end
    object C_ClientesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object C_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ClientesUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ClientesFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ClientesFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ClientesFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAVORECIDOS.FAX'
    end
    object C_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'FAVORECIDOS.EMAIL'
      Size = 40
    end
    object C_ClientesTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ClientesTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Origin = 'FAVORECIDOS.TAXAVEL'
      Size = 1
    end
    object C_ClientesEIN: TStringField
      FieldName = 'EIN'
      Origin = 'FAVORECIDOS.EIN'
      Size = 10
    end
    object C_ClientesSSN: TStringField
      FieldName = 'SSN'
      Origin = 'FAVORECIDOS.SSN'
      Size = 11
    end
    object C_ClientesDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'FAVORECIDOS.DESATIVADO'
      Size = 1
    end
    object C_ClientesEXIGIVEL1099: TStringField
      FieldName = 'EXIGIVEL1099'
      Origin = 'FAVORECIDOS.EXIGIVEL1099'
      Size = 1
    end
    object C_ClientesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'FAVORECIDOS.DATACADASTRO'
    end
    object C_ClientesSITE: TStringField
      FieldName = 'SITE'
      Origin = 'FAVORECIDOS.SITE'
      Size = 80
    end
    object C_ClientesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'FAVORECIDOS.SITUACAO'
      Size = 1
    end
    object C_ClientesCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'FAVORECIDOS.CONTA'
    end
    object C_ClientesDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'FAVORECIDOS.DATANASC'
    end
    object C_ClienteslkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Size = 25
      Lookup = True
    end
    object C_ClienteslkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
    end
    object C_ClientesLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Origin = 'FAVORECIDOS.LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_ClientesLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Origin = 'FAVORECIDOS.LOGOTIPO'
      Size = 150
    end
    object C_ClientesCREDITOOLD: TBCDField
      FieldName = 'CREDITOOLD'
      Origin = 'FAVORECIDOS.CREDITOOLD'
      Precision = 18
      Size = 2
    end
    object C_ClientesID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
    end
    object C_ClientesCREDITO: TBCDField
      FieldName = 'CREDITO'
      Origin = 'FAVORECIDOS.CREDITO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ClientesCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Origin = 'FAVORECIDOS.CAMPO01'
      Size = 255
    end
    object C_ClientesCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Origin = 'FAVORECIDOS.CAMPO02'
      Size = 255
    end
    object C_ClientesCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Origin = 'FAVORECIDOS.CAMPO03'
      Size = 255
    end
    object C_ClientesCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Origin = 'FAVORECIDOS.CAMPO04'
      Size = 255
    end
    object C_ClientesCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Origin = 'FAVORECIDOS.CAMPO05'
      Size = 255
    end
    object C_ClientesCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Origin = 'FAVORECIDOS.CAMPO06'
      Size = 255
    end
    object C_ClientesCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Origin = 'FAVORECIDOS.CAMPO07'
      Size = 255
    end
    object C_ClientesCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Origin = 'FAVORECIDOS.CAMPO08'
      Size = 255
    end
    object C_ClientesCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Origin = 'FAVORECIDOS.CAMPO09'
      Size = 255
    end
    object C_ClientesCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'FAVORECIDOS.CAMPO10'
      Size = 255
    end
    object C_ClientesCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Origin = 'FAVORECIDOS.CAIXAPOSTAL'
      Size = 25
    end
    object C_ClientesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
    end
    object C_ClienteslkVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkVendedor'
      LookupDataSet = C_Vendedor
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'VENDEDOR'
      Lookup = True
    end
    object C_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      Size = 14
    end
    object C_ClientesINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Origin = 'FAVORECIDOS.INSCRICAO_EST'
      Size = 14
    end
    object C_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_ClientesTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'FAVORECIDOS.TABELAPRECO'
    end
    object C_ClientesEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_ClientesPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object C_ClientesMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
    end
    object C_ClientesNRO: TStringField
      FieldName = 'NRO'
      Size = 4
    end
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 84
    Top = 151
  end
  object DlgMsg: TDlgMsg
    Left = 43
    Top = 284
  end
  object Q_UFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS')
    Left = 93
    Top = 6
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 92
    Top = 52
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 92
    Top = 97
    object C_UFsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UFS.DESCRICAO'
      Required = True
      Size = 50
    end
    object C_UFsUF: TStringField
      FieldName = 'UF'
      Origin = 'UFS.UF'
      Required = True
      Size = 2
    end
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 220
    Top = 7
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Origin = 'CONTAS.CODIGOREDUZIDO'
      Size = 12
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 219
    Top = 58
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.conta,c.descricao, t.descricao as DescTipo, c.saldo, c.' +
        'contapai,'
      'c.tipoconta, c.codigoreduzido'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    Left = 216
    Top = 103
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 217
    Top = 153
  end
  object U_Parcelas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from titulosareceber '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update titulosareceber'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  VALORPAGO = :VALORPAGO,'
      '  DATAPAGO = :DATAPAGO,'
      '  OBS = :OBS,'
      '  VENDA = :VENDA,'
      '  CLIENTE = :CLIENTE,'
      '  NUMBOLETO = :NUMBOLETO,'
      '  BANCO = :BANCO,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  STATUS = :STATUS,'
      '  VENDEDOR = :VENDEDOR,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO,'
      '  VALORDESCANTECIPADO = :VALORDESCANTECIPADO,'
      '  PERCENTUALMULTA = :PERCENTUALMULTA,'
      '  PERCENTUALMORA = :PERCENTUALMORA,'
      '  JUROSPLANO = :JUROSPLANO,'
      '  USUARIO = :USUARIO,'
      '  IDCOMISSAO = :IDCOMISSAO,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROSRECEBIDOS = :JUROSRECEBIDOS,'
      '  DATAATRASADO = :DATAATRASADO,'
      '  VALORJUROSMORA = :VALORJUROSMORA,'
      '  VALORMULTA = :VALORMULTA,'
      '  CREDITOUTILIZADO = :CREDITOUTILIZADO,'
      '  DATACANCELAMENTO = :DATACANCELAMENTO,'
      '  FUNCCANCELAMENTO = :FUNCCANCELAMENTO,'
      '  OPENBALANCE = :OPENBALANCE,'
      '  CREDITOGERADO = :CREDITOGERADO,'
      '  FALTARECEBER = :FALTARECEBER,'
      '  TIPOCOBRANCA = :TIPOCOBRANCA,'
      '  EMPRESA = -1,'
      '  PDV = 0'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into titulosareceber'
      
        '  (ID, TITULO, PARCELA, VALOR, VENCIMENTO, COMPETENCIA, VALORPAG' +
        'O, '
      'DATAPAGO, '
      '   OBS, VENDA, CLIENTE, NUMBOLETO, BANCO, NOTAFISCAL, STATUS, '
      'VENDEDOR, '
      '   DATAANTECIPACAO, VALORDESCANTECIPADO, PERCENTUALMULTA, '
      'PERCENTUALMORA, '
      '   JUROSPLANO, USUARIO, IDCOMISSAO, DESCONTOS, JUROSRECEBIDOS, '
      'DATAATRASADO, '
      '   VALORJUROSMORA, VALORMULTA, CREDITOUTILIZADO, '
      'DATACANCELAMENTO, FUNCCANCELAMENTO, '
      
        '   OPENBALANCE, CREDITOGERADO, FALTARECEBER, TIPOCOBRANCA, EMPRE' +
        'SA, PDV)'
      'values'
      '  (:ID, :TITULO, :PARCELA, :VALOR, :VENCIMENTO, :COMPETENCIA, '
      ':VALORPAGO, '
      
        '   :DATAPAGO, :OBS, :VENDA, :CLIENTE, :NUMBOLETO, :BANCO, :NOTAF' +
        'ISCAL, '
      '   :STATUS, :VENDEDOR, :DATAANTECIPACAO, :VALORDESCANTECIPADO, '
      ':PERCENTUALMULTA, '
      
        '   :PERCENTUALMORA, :JUROSPLANO, :USUARIO, :IDCOMISSAO, :DESCONT' +
        'OS, '
      ':JUROSRECEBIDOS, '
      '   :DATAATRASADO, :VALORJUROSMORA, :VALORMULTA, '
      ':CREDITOUTILIZADO, :DATACANCELAMENTO, '
      '   :FUNCCANCELAMENTO, :OPENBALANCE, :CREDITOGERADO, '
      ':FALTARECEBER, :TIPOCOBRANCA, -1, 0)')
    DeleteSQL.Strings = (
      'delete from titulosareceber'
      'where'
      '  ID = :OLD_ID')
    Left = 299
    Top = 196
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tr.*, f.nome, f.conta, tr.valor as valorold,'
      
        '(select conta from contasoperacao where idgerador = tr.id) as Co' +
        'ntaReceita,'
      '(select li.conta from lancamentos l, lancamentositens li'
      
        'where l.idgerador = tr.id and l.lancamento = li.lancamento and l' +
        'i.valor < 0) as ContaReceber'
      
        'from titulosareceber TR left join favorecidos f on tr.cliente = ' +
        'f.favorecido'
      'where tr.competencia = :dData '
      'and tr.status > 0'
      'order by f.nome, tr.vencimento')
    UpdateObject = U_Parcelas
    Left = 299
    Top = 102
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dData'
        ParamType = ptUnknown
      end>
  end
  object P_Parcelas: TDataSetProvider
    DataSet = Q_Parcelas
    Constraints = True
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 300
    Top = 151
  end
  object C_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 300
    Top = 51
  end
  object C_Parcelas: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'P_Parcelas'
    AfterOpen = C_ParcelasAfterOpen
    BeforePost = C_ParcelasBeforePost
    OnNewRecord = C_ParcelasNewRecord
    Left = 299
    Top = 6
    object C_ParcelasID: TIntegerField
      FieldName = 'ID'
      Origin = 'TITULOSARECEBER.ID'
      Required = True
    end
    object C_ParcelasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULOSARECEBER.TITULO'
      Size = 10
    end
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'TITULOSARECEBER.PARCELA'
      OnChange = C_ParcelasNOTAFISCALChange
    end
    object C_ParcelasVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'TITULOSARECEBER.VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
      OnChange = C_ParcelasVENCIMENTOChange
    end
    object C_ParcelasCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
      Origin = 'TITULOSARECEBER.COMPETENCIA'
    end
    object C_ParcelasVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Origin = 'TITULOSARECEBER.VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAPAGO: TDateField
      FieldName = 'DATAPAGO'
      Origin = 'TITULOSARECEBER.DATAPAGO'
    end
    object C_ParcelasOBS: TStringField
      FieldName = 'OBS'
      Origin = 'TITULOSARECEBER.OBS'
      Size = 255
    end
    object C_ParcelasVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'TITULOSARECEBER.VENDA'
    end
    object C_ParcelasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'TITULOSARECEBER.CLIENTE'
      OnChange = C_ParcelasCLIENTEChange
    end
    object C_ParcelasNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
      Origin = 'TITULOSARECEBER.NUMBOLETO'
    end
    object C_ParcelasBANCO: TIntegerField
      FieldName = 'BANCO'
      Origin = 'TITULOSARECEBER.BANCO'
    end
    object C_ParcelasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'TITULOSARECEBER.NOTAFISCAL'
      OnChange = C_ParcelasNOTAFISCALChange
      Size = 15
    end
    object C_ParcelasSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'TITULOSARECEBER.STATUS'
    end
    object C_ParcelasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'TITULOSARECEBER.VENDEDOR'
    end
    object C_ParcelasDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
      Origin = 'TITULOSARECEBER.DATAANTECIPACAO'
    end
    object C_ParcelasVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Origin = 'TITULOSARECEBER.VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasPERCENTUALMULTA: TBCDField
      FieldName = 'PERCENTUALMULTA'
      Origin = 'TITULOSARECEBER.PERCENTUALMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasPERCENTUALMORA: TBCDField
      FieldName = 'PERCENTUALMORA'
      Origin = 'TITULOSARECEBER.PERCENTUALMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSPLANO: TBCDField
      FieldName = 'JUROSPLANO'
      Origin = 'TITULOSARECEBER.JUROSPLANO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'TITULOSARECEBER.USUARIO'
    end
    object C_ParcelasIDCOMISSAO: TIntegerField
      FieldName = 'IDCOMISSAO'
      Origin = 'TITULOSARECEBER.IDCOMISSAO'
    end
    object C_ParcelasDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'TITULOSARECEBER.DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSRECEBIDOS: TBCDField
      FieldName = 'JUROSRECEBIDOS'
      Origin = 'TITULOSARECEBER.JUROSRECEBIDOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAATRASADO: TDateField
      FieldName = 'DATAATRASADO'
      Origin = 'TITULOSARECEBER.DATAATRASADO'
    end
    object C_ParcelasVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Origin = 'TITULOSARECEBER.VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      Origin = 'TITULOSARECEBER.VALORMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      Origin = 'TITULOSARECEBER.CREDITOUTILIZADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATACANCELAMENTO: TDateField
      FieldName = 'DATACANCELAMENTO'
      Origin = 'TITULOSARECEBER.DATACANCELAMENTO'
    end
    object C_ParcelasFUNCCANCELAMENTO: TIntegerField
      FieldName = 'FUNCCANCELAMENTO'
      Origin = 'TITULOSARECEBER.FUNCCANCELAMENTO'
    end
    object C_ParcelasOPENBALANCE: TStringField
      FieldName = 'OPENBALANCE'
      Origin = 'TITULOSARECEBER.OPENBALANCE'
      Size = 1
    end
    object C_ParcelasCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      Origin = 'TITULOSARECEBER.CREDITOGERADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasFALTARECEBER: TBCDField
      FieldName = 'FALTARECEBER'
      Origin = 'TITULOSARECEBER.FALTARECEBER'
      Precision = 18
      Size = 2
    end
    object C_ParcelasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ParcelasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'FAVORECIDOS.CONTA'
    end
    object C_ParcelasIDNovo: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDNovo'
    end
    object C_ParcelasVALOROLD: TBCDField
      FieldName = 'VALOROLD'
      Origin = 'TITULOSARECEBER.VALOROLD'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCONTARECEITA: TIntegerField
      FieldName = 'CONTARECEITA'
    end
    object C_ParcelasContaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ContaLookup'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTARECEITA'
      Size = 30
      Lookup = True
    end
    object C_ParcelasCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
    object C_ParcelaslkContaReceber: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaReceber'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTARECEBER'
      Size = 30
      Lookup = True
    end
    object C_ParcelasQ_ContasOperacao: TDataSetField
      FieldName = 'Q_ContasOperacao'
    end
    object C_ParcelasTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TITULOSARECEBER.TIPOCOBRANCA'
    end
    object C_ParcelasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'TITULOSARECEBER.EMPRESA'
      Required = True
    end
    object C_ParcelasPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'TITULOSARECEBER.PDV'
      Required = True
    end
  end
  object C_ContasOperacao: TClientDataSet
    Aggregates = <>
    DataSetField = C_ParcelasQ_ContasOperacao
    PacketRecords = 100
    Params = <>
    OnNewRecord = C_ContasOperacaoNewRecord
    Left = 395
    Top = 5
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
    object C_ContasOperacaoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_ContasOperacaoPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
  end
  object Q_ContasOperacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterParcelas
    SQL.Strings = (
      
        'Select c.ContaOperacao, c.Conta, c.IDGerador as ID, c.Valor , f.' +
        'nome as NomeClienteRef, c.ClienteRef, c.Historico, c.Origem,c.Em' +
        'presa, c.PDV'
      'from ContasOperacao c'
      '        Left join Favorecidos f on c.clienteref = f.favorecido'
      'Where IDGerador = :ID')
    UpdateObject = U_ContasOperacao
    Left = 395
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ContasOperacaoDS: TDataSource
    DataSet = C_ContasOperacao
    Left = 394
    Top = 104
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
      '  ORIGEM = :ORIGEM,'
      '  EMPRESA = -1,'
      '  PDV = 0;'
      'where'
      '  CONTAOPERACAO = :OLD_CONTAOPERACAO')
    InsertSQL.Strings = (
      'insert into ContasOperacao'
      
        '  (CONTAOPERACAO, CONTA, IDGerador, VALOR, CLIENTEREF, HISTORICO' +
        ', '
      'ORIGEM, EMPRESA, PDV)'
      'values'
      
        '  (:CONTAOPERACAO, :CONTA, :ID, :VALOR, :CLIENTEREF, :HISTORICO,' +
        ' '
      ':ORIGEM, -1, 0)')
    DeleteSQL.Strings = (
      'delete from ContasOperacao'
      'where'
      '  CONTAOPERACAO = :OLD_CONTAOPERACAO')
    Left = 394
    Top = 152
  end
  object Q_MasterParcelas: TDataSource
    DataSet = Q_Parcelas
    Left = 395
    Top = 222
  end
  object C_Cheques: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'P_Cheques'
    BeforePost = C_ChequesBeforePost
    OnNewRecord = C_ChequesNewRecord
    Left = 490
    Top = 3
    object C_ChequesNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ChequesVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_ChequesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      OnChange = C_ChequesVENCIMENTOChange
      EditMask = '!99/99/9999;1; '
    end
    object C_ChequesFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ChequesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ChequesNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_ChequesTITULARCHEQUE: TStringField
      FieldName = 'TITULARCHEQUE'
      Size = 50
    end
    object C_ChequesCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
      OnValidate = C_ChequesCONTARECEBERValidate
    end
    object C_ChequesCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ChequesCONTARECEITA: TIntegerField
      FieldName = 'CONTARECEITA'
    end
    object C_ChequeslkContaReceita: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaReceita'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTARECEITA'
      Size = 30
      Lookup = True
    end
    object C_ChequeslkContaAReceber: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaAReceber'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTARECEBER'
      Size = 30
      Lookup = True
    end
    object C_ChequeslkBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'lkBanco'
      LookupDataSet = C_Bancos
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'BANCO'
      Size = 30
      Lookup = True
    end
    object C_ChequesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ChequesDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ChequesVALOROLD: TBCDField
      FieldName = 'VALOROLD'
      Precision = 18
      Size = 2
    end
    object C_ChequesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object C_ChequesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ChequesEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_ChequesPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
  end
  object P_Cheques: TDataSetProvider
    DataSet = Q_Cheques
    Constraints = True
    Left = 489
    Top = 151
  end
  object C_ChequesDS: TDataSource
    DataSet = C_Cheques
    Left = 490
    Top = 100
  end
  object Q_Cheques: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    ObjectView = True
    AfterCancel = C_ChequesBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select tr.id, tr.notafiscal, dd.valor, dd.banco, dd.vencimento, ' +
        'd.favorecido,'
      
        'f.nome, dd.numcheque, dd.titularcheque, dd.contareceber, f.conta' +
        ', d.data,'
      'dd.valor as valorold, d.deposito, dd.iddoc,'
      
        '(select conta from contasoperacao co where co.idgerador = tr.id)' +
        ' as ContaReceita, d.Empresa, d.PDV'
      
        'from Depositos d inner join DepositosDoc dd on d.deposito = dd.d' +
        'eposito'
      'inner join DepositosTitulos dt on dd.deposito = dt.deposito'
      'inner join TitulosAReceber tr on dt.titulo = tr.id'
      'left join Favorecidos f on d.favorecido = f.favorecido'
      'where tr.competencia = :dData '
      'order by f.nome, tr.vencimento')
    UniDirectional = True
    Left = 489
    Top = 52
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dData'
        ParamType = ptUnknown
      end>
  end
  object Q_Bancos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from favorecidos where tipofavorecido = 4'
      'order by nome')
    Left = 149
    Top = 8
  end
  object P_Bancos: TDataSetProvider
    DataSet = Q_Bancos
    Constraints = True
    Left = 147
    Top = 55
  end
  object C_Bancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Bancos'
    Left = 147
    Top = 100
    object C_BancosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_BancosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object Q_Vendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from favorecidos where tipofavorecido = 3 and isvendedo' +
        'r = '#39'S'#39
      'order by nome')
    Left = 148
    Top = 164
  end
  object P_Vendedor: TDataSetProvider
    DataSet = Q_Vendedor
    Constraints = True
    Left = 147
    Top = 211
  end
  object C_Vendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedor'
    Left = 147
    Top = 256
    object C_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_VendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
end

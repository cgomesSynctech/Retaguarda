object DMBBFornecedores: TDMBBFornecedores
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 298
  Top = 141
  Height = 407
  Width = 800
  object U_Fornecedores: TIBUpdateSQL
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
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  EMAIL = :EMAIL,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  LIMITECREDITO = :LIMITECREDITO,'
      '  TAXAVEL = :TAXAVEL,'
      '  EIN = :EIN,'
      '  SSN = :SSN,'
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
      '  CAIXAPOSTAL = :CAIXAPOSTAL,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_EST = :INSCRICAO_EST,'
      '  BAIRRO = :BAIRRO'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into favorecidos'
      '  (FAVORECIDO, CODIGO, NOME, RAZAO, ENDERECO, CIDADE, UF, CEP, '
      
        '   FONE1, FONE2, FAX, CELULAR, EMAIL, TIPOFAVORECIDO, LIMITECRED' +
        'ITO, '
      'TAXAVEL, '
      
        '   EIN, SSN, DESATIVADO, EXIGIVEL1099, DATACADASTRO, SITE, SITUA' +
        'CAO, '
      'LOGOTIPO, '
      
        '   CONTA, DATANASC, CAMPO01, CAMPO02, CAMPO03, CAMPO04, CAMPO05,' +
        ' '
      'CAMPO06, '
      '   CAMPO07, CAMPO08, CAMPO09, CAMPO10, CAIXAPOSTAL, CPF_CNPJ, '
      'INSCRICAO_EST, BAIRRO, EMPRESA, MUNICIPIO, NRO, PAIS)'
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP, '
      ' :FONE1, :FONE2, :FAX, :CELULAR, :EMAIL, :TIPOFAVORECIDO, '
      
        '   :LIMITECREDITO, :TAXAVEL, :EIN, :SSN, :DESATIVADO, :EXIGIVEL1' +
        '099, '
      ':DATACADASTRO, '
      
        '   :SITE, :SITUACAO, :LOGOTIPO, :CONTA, :DATANASC, :CAMPO01, :CA' +
        'MPO02, '
      '   :CAMPO03, :CAMPO04, :CAMPO05, :CAMPO06, :CAMPO07, :CAMPO08, '
      ':CAMPO09, '
      
        '   :CAMPO10, :CAIXAPOSTAL, :CPF_CNPJ, :INSCRICAO_EST, :BAIRRO, -' +
        '1, :MUNICIPIO, :NRO, :PAIS)')
    DeleteSQL.Strings = (
      'delete from favorecidos'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 26
    Top = 203
  end
  object Q_Fornecedores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 5000
    CachedUpdates = False
    SQL.Strings = (
      'select f.*, credito as creditoold from favorecidos f '
      'where tipofavorecido = 2 and (favorecido is null or :bOk = 1)'
      'order by nome')
    UniDirectional = True
    UpdateObject = U_Fornecedores
    Left = 25
    Top = 102
    ParamData = <
      item
        DataType = ftInteger
        Name = 'bOk'
        ParamType = ptUnknown
      end>
  end
  object P_Fornecedores: TDataSetProvider
    DataSet = Q_Fornecedores
    Constraints = True
    Left = 25
    Top = 151
  end
  object C_FornecedoresDS: TDataSource
    DataSet = C_Fornecedores
    Left = 25
    Top = 52
  end
  object C_Fornecedores: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'P_Fornecedores'
    BeforePost = C_FornecedoresBeforePost
    OnNewRecord = C_FornecedoresNewRecord
    Left = 26
    Top = 4
    object C_FornecedoresFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_FornecedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      OnValidate = C_FornecedoresCODIGOValidate
    end
    object C_FornecedoresNOME: TStringField
      FieldName = 'NOME'
      OnChange = C_FornecedoresNOMEChange
      Size = 50
    end
    object C_FornecedoresRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_FornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_FornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_FornecedoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_FornecedoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_FornecedoresFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_FornecedoresFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_FornecedoresFAX: TStringField
      FieldName = 'FAX'
    end
    object C_FornecedoresCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_FornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_FornecedoresTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_FornecedoresTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_FornecedoresEIN: TStringField
      FieldName = 'EIN'
      Size = 10
    end
    object C_FornecedoresSSN: TStringField
      FieldName = 'SSN'
      Size = 11
    end
    object C_FornecedoresDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_FornecedoresEXIGIVEL1099: TStringField
      FieldName = 'EXIGIVEL1099'
      Size = 1
    end
    object C_FornecedoresDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object C_FornecedoresSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object C_FornecedoresSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_FornecedoresCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_FornecedoresDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_FornecedoreslkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Size = 25
      Lookup = True
    end
    object C_FornecedoreslkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
    end
    object C_FornecedoresLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_FornecedoresLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_FornecedoresCREDITOOLD: TBCDField
      FieldName = 'CREDITOOLD'
      Precision = 18
      Size = 2
    end
    object C_FornecedoresID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
    end
    object C_FornecedoresCREDITO: TBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_FornecedoresCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_FornecedoresCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_FornecedoresCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_FornecedoresCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_FornecedoresCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_FornecedoresCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_FornecedoresCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_FornecedoresCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_FornecedoresCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_FornecedoresCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_FornecedoresCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_FornecedoresCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_FornecedoresINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Size = 14
    end
    object C_FornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_FornecedoresEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_FornecedoresMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
    end
    object C_FornecedoresNRO: TStringField
      FieldName = 'NRO'
      Size = 4
    end
    object C_FornecedoresPAIS: TIntegerField
      FieldName = 'PAIS'
    end
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 118
    Top = 190
  end
  object DlgMsg: TDlgMsg
    Left = 169
    Top = 192
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
      Required = True
      Size = 50
    end
    object C_UFsUF: TStringField
      FieldName = 'UF'
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
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
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
      'update DuplicatasAPagar'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  VALORPAGO = :VALORPAGO,'
      '  DATAPAGO = :DATAPAGO,'
      '  OBS = :OBS,'
      '  NATUREZA = :NATUREZA,'
      '  COMPRA = :COMPRA,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  NUMBOLETO = :NUMBOLETO,'
      '  BANCO = :BANCO,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  STATUS = :STATUS,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO,'
      '  VALORDESCANTECIPADO = :VALORDESCANTECIPADO,'
      '  MULTA = :MULTA,'
      '  JUROSMORA = :JUROSMORA,'
      '  ENCARGOSDIVERSOS = :ENCARGOSDIVERSOS,'
      '  USUARIO = :USUARIO,'
      '  DATAATRASADO = :DATAATRASADO,'
      '  DESCONTOS = :DESCONTOS,'
      '  CREDITOUTILIZADO = :CREDITOUTILIZADO,'
      '  JUROSPAGOS = :JUROSPAGOS,'
      '  CREDITOGERADO = :CREDITOGERADO,'
      '  JUROSPLANO = :JUROSPLANO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into DuplicatasAPagar'
      
        '  (ID, TITULO, PARCELA, VALOR, VENCIMENTO, COMPETENCIA, VALORPAG' +
        'O, '
      'DATAPAGO, '
      '   OBS, NATUREZA, COMPRA, FORNECEDOR, NUMBOLETO, BANCO, '
      'NOTAFISCAL, STATUS, '
      '   DATAANTECIPACAO, VALORDESCANTECIPADO, MULTA, JUROSMORA, '
      'ENCARGOSDIVERSOS, '
      '   USUARIO, DATAATRASADO, DESCONTOS, CREDITOUTILIZADO, '
      'JUROSPAGOS, CREDITOGERADO, JUROSPLANO)'
      'values'
      '  (:ID, :TITULO, :PARCELA, :VALOR, :VENCIMENTO, :COMPETENCIA, '
      ':VALORPAGO, '
      
        '   :DATAPAGO, :OBS, :NATUREZA, :COMPRA, :FORNECEDOR, :NUMBOLETO,' +
        ' '
      ':BANCO, '
      
        '   :NOTAFISCAL, :STATUS, :DATAANTECIPACAO, :VALORDESCANTECIPADO,' +
        ' '
      ':MULTA, '
      '   :JUROSMORA, :ENCARGOSDIVERSOS, :USUARIO, :DATAATRASADO, '
      ':DESCONTOS,  :CREDITOUTILIZADO, :JUROSPAGOS, :CREDITOGERADO, '
      ':JUROSPLANO)')
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
        'ntaDespesa,'
      '(select li.conta from lancamentos l, lancamentositens li'
      
        'where l.idgerador = tr.id and l.lancamento = li.lancamento and l' +
        'i.valor > 0) as ContaPagar'
      
        'from duplicatasapagar tr left join favorecidos f on tr.fornecedo' +
        'r = f.favorecido'
      'where tr.competencia = :dData and tr.status > 0'
      'order by f.nome, tr.vencimento')
    UpdateObject = U_Parcelas
    Left = 299
    Top = 101
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
    Top = 5
    object C_ParcelasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ParcelasTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      OnChange = C_ParcelasNOTAFISCALChange
    end
    object C_ParcelasVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      OnChange = C_ParcelasVENCIMENTOChange
    end
    object C_ParcelasCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_ParcelasVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAPAGO: TDateField
      FieldName = 'DATAPAGO'
    end
    object C_ParcelasOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ParcelasNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object C_ParcelasBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_ParcelasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      OnChange = C_ParcelasNOTAFISCALChange
      Size = 15
    end
    object C_ParcelasSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_ParcelasDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
    end
    object C_ParcelasVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSPLANO: TBCDField
      FieldName = 'JUROSPLANO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_ParcelasDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAATRASADO: TDateField
      FieldName = 'DATAATRASADO'
    end
    object C_ParcelasVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATACANCELAMENTO: TDateField
      FieldName = 'DATACANCELAMENTO'
    end
    object C_ParcelasFUNCCANCELAMENTO: TIntegerField
      FieldName = 'FUNCCANCELAMENTO'
    end
    object C_ParcelasOPENBALANCE: TStringField
      FieldName = 'OPENBALANCE'
      Size = 1
    end
    object C_ParcelasCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ParcelasCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ParcelasIDNovo: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDNovo'
    end
    object C_ParcelasVALOROLD: TBCDField
      FieldName = 'VALOROLD'
      Precision = 18
      Size = 2
    end
    object C_ParcelasContaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ContaLookup'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTADESPESA'
      Size = 30
      Lookup = True
    end
    object C_ParcelaslkContaPagar: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaPagar'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAGAR'
      Size = 30
      Lookup = True
    end
    object C_ParcelasQ_ContasOperacao: TDataSetField
      FieldName = 'Q_ContasOperacao'
    end
    object C_ParcelasCONTADESPESA: TIntegerField
      FieldName = 'CONTADESPESA'
    end
    object C_ParcelasCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
    end
    object C_ParcelasCOMPRA: TIntegerField
      FieldName = 'COMPRA'
    end
    object C_ParcelasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      OnChange = C_ParcelasFORNECEDORChange
    end
    object C_ParcelasFALTAPAGAR: TBCDField
      FieldName = 'FALTAPAGAR'
      Precision = 18
      Size = 2
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
  end
  object Q_ContasOperacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterParcelas
    SQL.Strings = (
      
        'Select c.ContaOperacao, c.Conta, c.IDGerador as ID, c.Valor , f.' +
        'nome as NomeClienteRef, c.ClienteRef, c.Historico, c.Origem'
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
      '  ORIGEM = :ORIGEM'
      'where'
      '  CONTAOPERACAO = :OLD_CONTAOPERACAO')
    InsertSQL.Strings = (
      'insert into ContasOperacao'
      
        '  (CONTAOPERACAO, CONTA, IDGerador, VALOR, CLIENTEREF, HISTORICO' +
        ', '
      'ORIGEM)'
      'values'
      
        '  (:CONTAOPERACAO, :CONTA, :ID, :VALOR, :CLIENTEREF, :HISTORICO,' +
        ' '
      ':ORIGEM)')
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
    Left = 491
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
    object C_ChequesCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ChequeslkContaDespesa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaDespesa'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTADESPESA'
      Size = 30
      Lookup = True
    end
    object C_ChequeslkContaAPagar: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaAPagar'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAGAR'
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
    object C_ChequesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ChequesCONTACHEQUE: TIntegerField
      FieldName = 'CONTACHEQUE'
    end
    object C_ChequesCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
      OnValidate = C_ChequesCONTAPAGARValidate
    end
    object C_ChequesRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Required = True
    end
    object C_ChequesCONTADESPESA: TIntegerField
      FieldName = 'CONTADESPESA'
    end
    object C_ChequeslkContaBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaBanco'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
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
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select tr.id, tr.notafiscal, dd.valor, dd.conta as ContaCheque, ' +
        'dd.vencimento, dd.favorecidodoc as favorecido,'
      'f.nome, dd.numcheque, dd.contapagar, f.conta, d.data,'
      'dd.valor as valorold, d.retirada, dd.iddoc,'
      
        '(select conta from contasoperacao co where co.idgerador = tr.id)' +
        ' as ContaDespesa'
      'from Retiradas d'
      'inner join RetiradasDoc dd on d.retirada = dd.retirada'
      'inner join RetiradasDuplicatas dt on dd.retirada = dt.retirada'
      'inner join DuplicatasAPagar tr on dt.duplicata = tr.id'
      'left join Favorecidos f on tr.fornecedor = f.favorecido'
      'where tr.competencia = :dData'
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
      'select * from favorecidos where tipofavorecido = 4')
    Left = 148
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
      Required = True
    end
    object C_BancosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
end

inherited DMFactory: TDMFactory
  Left = 58
  Top = 110
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Favorecidos'
      'Where TipoFavorecido = 5')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Favorecidos '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update Favorecidos'
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
      '  CONTATO = :CONTATO,'
      '  EMAIL = :EMAIL,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  TIPOATIVIDADE = :TIPOATIVIDADE,'
      '  PLANOPAGAMENTO = :PLANOPAGAMENTO,'
      '  VENDEDOR = :VENDEDOR,'
      '  LIMITECREDITO = :LIMITECREDITO,'
      '  TAXAVEL = :TAXAVEL,'
      '  TAX = :TAX,'
      '  EIN = :EIN,'
      '  SSN = :SSN,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  DESATIVADO = :DESATIVADO,'
      '  EXIGIVEL1099 = :EXIGIVEL1099,'
      '  TIPOENTREGA = :TIPOENTREGA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  SITE = :SITE,'
      '  OBS = :OBS,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  SITUACAO = :SITUACAO,'
      '  CARGO = :CARGO,'
      '  LOGOTIPO = :LOGOTIPO,'
      '  JUROSFACTORY = :JUROSFACTORY,'
      '  TAXASFACTORY = :TAXASFACTORY,'
      '  FLOATINGFACTORY = :FLOATINGFACTORY,'
      '  MEMO_CHECK = :MEMO_CHECK,'
      '  CREDITO = :CREDITO,'
      '  CONTA = :CONTA,'
      '  NUMERO_REVENDA = :NUMERO_REVENDA,'
      '  TIPO_FUNC = :TIPO_FUNC,'
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
      '  COMISSAO = :COMISSAO,'
      '  ISVENDEDOR = :ISVENDEDOR,'
      '  CONTAPAGAMENTO = :CONTAPAGAMENTO,'
      '  CONTADESPESAS = :CONTADESPESAS,'
      '  EMPRESA = :EMPRESA'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into Favorecidos'
      
        '  (FAVORECIDO, CODIGO, NOME, RAZAO, ENDERECO, CIDADE, UF, CEP, C' +
        'AIXAPOSTAL, '
      
        '   PAIS, FONE1, FONE2, FAX, CELULAR, CONTATO, EMAIL, TIPOFAVOREC' +
        'IDO, TIPOATIVIDADE, '
      
        '   PLANOPAGAMENTO, VENDEDOR, LIMITECREDITO, TAXAVEL, TAX, EIN, S' +
        'SN, TABELAPRECO, '
      
        '   DESATIVADO, EXIGIVEL1099, TIPOENTREGA, DATACADASTRO, SITE, OB' +
        'S, IMPORTACAO, '
      
        '   SITUACAO, CARGO, LOGOTIPO, JUROSFACTORY, TAXASFACTORY, FLOATI' +
        'NGFACTORY, '
      
        '   MEMO_CHECK, CREDITO, CONTA, NUMERO_REVENDA, TIPO_FUNC, DATANA' +
        'SC, CAMPO01, '
      
        '   CAMPO02, CAMPO03, CAMPO04, CAMPO05, CAMPO06, CAMPO07, CAMPO08' +
        ', CAMPO09, '
      
        '   CAMPO10, COMISSAO, ISVENDEDOR, CONTAPAGAMENTO, CONTADESPESAS,' +
        ' EMPRESA)'
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP, '
      
        '   :CAIXAPOSTAL, :PAIS, :FONE1, :FONE2, :FAX, :CELULAR, :CONTATO' +
        ', :EMAIL, '
      
        '   :TIPOFAVORECIDO, :TIPOATIVIDADE, :PLANOPAGAMENTO, :VENDEDOR, ' +
        ':LIMITECREDITO, '
      
        '   :TAXAVEL, :TAX, :EIN, :SSN, :TABELAPRECO, :DESATIVADO, :EXIGI' +
        'VEL1099, '
      
        '   :TIPOENTREGA, :DATACADASTRO, :SITE, :OBS, :IMPORTACAO, :SITUA' +
        'CAO, :CARGO, '
      
        '   :LOGOTIPO, :JUROSFACTORY, :TAXASFACTORY, :FLOATINGFACTORY, :M' +
        'EMO_CHECK, '
      
        '   :CREDITO, :CONTA, :NUMERO_REVENDA, :TIPO_FUNC, :DATANASC, :CA' +
        'MPO01, '
      
        '   :CAMPO02, :CAMPO03, :CAMPO04, :CAMPO05, :CAMPO06, :CAMPO07, :' +
        'CAMPO08, '
      
        '   :CAMPO09, :CAMPO10, :COMISSAO, :ISVENDEDOR, :CONTAPAGAMENTO, ' +
        ':CONTADESPESAS, :EMPRESA)')
    DeleteSQL.Strings = (
      'delete from Favorecidos'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Favorecido'
    Tabela_Nome = 'Favorecidos'
    Tabela_Chave = 'Favorecido'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_TabelaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_TabelaPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object C_TabelaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_TabelaFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_TabelaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_TabelaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_TabelaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
    end
    object C_TabelaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_TabelaLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_TabelaTAX: TIntegerField
      FieldName = 'TAX'
    end
    object C_TabelaEIN: TStringField
      FieldName = 'EIN'
      Size = 10
    end
    object C_TabelaSSN: TStringField
      FieldName = 'SSN'
      Size = 11
    end
    object C_TabelaTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaEXIGIVEL1099: TStringField
      FieldName = 'EXIGIVEL1099'
      Size = 1
    end
    object C_TabelaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
    end
    object C_TabelaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object C_TabelaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_TabelaCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object C_TabelaLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_TabelaJUROSFACTORY: TBCDField
      FieldName = 'JUROSFACTORY'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXASFACTORY: TBCDField
      FieldName = 'TAXASFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaMEMO_CHECK: TStringField
      FieldName = 'MEMO_CHECK'
      Size = 255
    end
    object C_TabelaCREDITO: TBCDField
      FieldName = 'CREDITO'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaNUMERO_REVENDA: TStringField
      FieldName = 'NUMERO_REVENDA'
    end
    object C_TabelaTIPO_FUNC: TStringField
      FieldName = 'TIPO_FUNC'
      Size = 1
    end
    object C_TabelaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_TabelaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaISVENDEDOR: TStringField
      FieldName = 'ISVENDEDOR'
      Size = 1
    end
    object C_TabelaCONTAPAGAMENTO: TIntegerField
      FieldName = 'CONTAPAGAMENTO'
    end
    object C_TabelaCONTADESPESAS: TIntegerField
      FieldName = 'CONTADESPESAS'
    end
    object C_TabelaFLOATINGFACTORY: TBCDField
      FieldName = 'FLOATINGFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelalkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UF
      LookupKeyFields = 'UF'
      LookupResultField = 'UF'
      KeyFields = 'UF'
      Size = 30
      Lookup = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelalkpContaDespesa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpContaDespesa'
      LookupDataSet = C_ContaDespesas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTADESPESAS'
      Size = 50
      Lookup = True
    end
  end
  object Q_UF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ufs'
      'order by uf')
    Left = 176
    Top = 50
  end
  object C_UF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UF'
    Left = 176
    Top = 4
    object C_UFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object C_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object P_UF: TDataSetProvider
    DataSet = Q_UF
    Constraints = True
    Left = 176
    Top = 97
  end
  object Q_ContaDespesas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.*, t.descricao as DescTipo'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      ''
      'order by c.tipoconta, c.descricao')
    Left = 313
    Top = 32
  end
  object P_ContaDespesas: TDataSetProvider
    DataSet = Q_ContaDespesas
    Constraints = True
    Left = 313
    Top = 80
  end
  object C_ContaDespesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContaDespesas'
    Left = 313
    Top = 127
    object C_ContaDespesasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContaDespesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContaDespesasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContaDespesasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContaDespesasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContaDespesasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContaDespesasCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_ContaDespesasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
  end
  object C_ContaDespesasDS: TDataSource
    DataSet = C_ContaDespesas
    Left = 315
    Top = 175
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.*, t.descricao as DescTipo'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      ''
      'order by c.tipoconta, c.descricao')
    Left = 437
    Top = 41
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 437
    Top = 89
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 436
    Top = 136
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 436
    Top = 184
  end
end

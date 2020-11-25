inherited DMFormasPagamento: TDMFormasPagamento
  Left = 503
  Top = 98
  Height = 435
  Width = 528
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select fp.*, f.nome, f.tipofavorecido from FormasPagamento fp'
      
        '                     left join Favorecidos f on fp.fornecedor = ' +
        'f.favorecido'
      'where formapagamento > 0'
      'order by fp.descricao'
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from FormasPagamento '
      'where'
      '  FORMAPAGAMENTO = :FORMAPAGAMENTO')
    ModifySQL.Strings = (
      'update FormasPagamento'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  ESPECIE = :ESPECIE,'
      '  REFCREDITO = :REFCREDITO,'
      '  CARENCIACREDITO = :CARENCIACREDITO,'
      '  CONTALIBERACAO = :CONTALIBERACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  MENORPARCELA = :MENORPARCELA,'
      '  ENCARGOS = :ENCARGOS,'
      '  SIGLA = :SIGLA,'
      '  CODIGOECF = :CODIGOECF,'
      '  MELHORDIACOMPRA = :MELHORDIACOMPRA,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  CONTA = :CONTA,'
      '  CONTARECEBER = :CONTARECEBER,'
      '  CONTAPAGAR = :CONTAPAGAR,'
      '  INTERVALOPARCELAS = :INTERVALOPARCELAS,'
      '  CARTAOTEF = :CARTAOTEF,'
      '  BANDEIRACARTAO = :BANDEIRACARTAO'
      'where'
      '  FORMAPAGAMENTO = :OLD_FORMAPAGAMENTO')
    InsertSQL.Strings = (
      'insert into FormasPagamento'
      '  (FORMAPAGAMENTO, DESCRICAO, ESPECIE, REFCREDITO, '
      'CARENCIACREDITO, CONTALIBERACAO, '
      '   DESATIVADO, MENORPARCELA, ENCARGOS, SIGLA, CODIGOECF, '
      'MELHORDIACOMPRA, '
      '   FORNECEDOR, CONTA, CONTARECEBER, '
      'CONTAPAGAR,INTERVALOPARCELAS,   CARTAOTEF, BANDEIRACARTAO)'
      'values'
      '  (:FORMAPAGAMENTO, :DESCRICAO, :ESPECIE, :REFCREDITO, '
      ':CARENCIACREDITO, '
      
        '   :CONTALIBERACAO, :DESATIVADO, :MENORPARCELA, :ENCARGOS, :SIGL' +
        'A, '
      ':CODIGOECF, '
      '   :MELHORDIACOMPRA, :FORNECEDOR, :CONTA, :CONTARECEBER, '
      ':CONTAPAGAR,:INTERVALOPARCELAS, :CARTAOTEF, :BANDEIRACARTAO)')
    DeleteSQL.Strings = (
      'delete from FormasPagamento'
      'where'
      '  FORMAPAGAMENTO = :OLD_FORMAPAGAMENTO')
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    Gravar4_AposCommit = DMComponentGravar4_AposCommit
    OnRefresh = DMComponentRefresh
    KeyForIDs = 'FormasPagamento'
    Tabela_Nome = 'FormasPagamento'
    Tabela_Chave = 'FormaPagamento'
    DeleteValidate.Strings = (
      'DepositosDoc=FormaPagamento'
      'RetiradasDoc=FormaPagamento')
    Left = 28
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    Left = 31
    object C_TabelaFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaREFCREDITO: TStringField
      FieldName = 'REFCREDITO'
      Size = 1
    end
    object C_TabelaCARENCIACREDITO: TIntegerField
      FieldName = 'CARENCIACREDITO'
    end
    object C_TabelaCONTALIBERACAO: TIntegerField
      FieldName = 'CONTALIBERACAO'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaESPECIE: TIntegerField
      FieldName = 'ESPECIE'
    end
    object C_TabelaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object C_TabelaCODIGOECF: TStringField
      FieldName = 'CODIGOECF'
      Size = 3
    end
    object C_TabelaMELHORDIACOMPRA: TIntegerField
      FieldName = 'MELHORDIACOMPRA'
    end
    object C_TabelaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_TabelaDescEspecie: TStringField
      FieldKind = fkLookup
      FieldName = 'DescEspecie'
      LookupDataSet = C_Especies
      LookupKeyFields = 'ESPECIE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ESPECIE'
      Size = 30
      Lookup = True
    end
    object C_TabelaDescContaCart: TStringField
      FieldKind = fkLookup
      FieldName = 'DescContaCart'
      LookupDataSet = DMFinanceiro.C_ContasBc
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTALIBERACAO'
      Size = 40
      Lookup = True
    end
    object C_TabelaMENORPARCELA: TBCDField
      FieldName = 'MENORPARCELA'
      Precision = 18
      Size = 2
    end
    object C_TabelaENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      DisplayFormat = '###,##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaDescContaCartao: TStringField
      FieldKind = fkLookup
      FieldName = 'DescContaCartao'
      LookupDataSet = DMFinanceiro.C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 50
      Lookup = True
    end
    object C_TabelaCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
    object C_TabelaDescContaReceber: TStringField
      FieldKind = fkLookup
      FieldName = 'DescContaReceber'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTARECEBER'
      Size = 30
      Lookup = True
    end
    object C_TabelaCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
    end
    object C_TabelaDescContaPagar: TStringField
      FieldKind = fkLookup
      FieldName = 'DescContaPagar'
      LookupDataSet = DMFinanceiro.C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAGAR'
      Size = 30
      Lookup = True
    end
    object C_TabelaINTERVALOPARCELAS: TIntegerField
      FieldName = 'INTERVALOPARCELAS'
    end
    object C_TabelalkpContaDespesa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpContaDespesa'
      LookupDataSet = C_Despesa
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAGAR'
      Size = 50
      Lookup = True
    end
    object C_TabelaCARTAOTEF: TStringField
      FieldName = 'CARTAOTEF'
      FixedChar = True
      Size = 1
    end
    object C_TabelaBANDEIRACARTAO: TIntegerField
      FieldName = 'BANDEIRACARTAO'
    end
    object C_TabelalkBandeirasCartao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkBandeirasCartao'
      LookupDataSet = C_BandeirasCartao
      LookupKeyFields = 'BANDEIRA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'BANDEIRACARTAO'
      Size = 50
      Lookup = True
    end
  end
  object Q_Especies: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from EspeciesTitulos'
      'where Desativado = '#39'N'#39
      'order by Descricao')
    Left = 160
    Top = 3
  end
  object C_Especies: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Especies'
    Left = 160
    Top = 56
    object C_EspeciesESPECIE: TIntegerField
      FieldName = 'ESPECIE'
      Required = True
    end
    object C_EspeciesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_EspeciesSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 15
    end
    object C_EspeciesDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
  end
  object P_Especies: TDataSetProvider
    DataSet = Q_Especies
    Constraints = True
    Left = 160
    Top = 104
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 308
    Top = 8
  end
  object C_EspeciesDS: TDataSource
    DataSet = C_Especies
    Left = 160
    Top = 154
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 244
    Top = 1
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.Conta, c.Descricao, c.TipoConta, c.ContaPai, c.Saldo, '
      '           t.descricao as DescTipo, CodigoReduzido'
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.TipoConta = 3 and c.Desativado = '#39'N'#39
      'Order by c.tipoconta, c.Descricao')
    Left = 244
    Top = 46
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 244
    Top = 92
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 244
    Top = 136
  end
  object C_Despesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Despesa'
    Left = 348
    Top = 91
    object IntegerField1: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object BCDField1: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object StringField3: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
  end
  object Q_Despesa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.Conta, c.Descricao, c.TipoConta, c.ContaPai, c.Saldo, '
      '           t.descricao as DescTipo, CodigoReduzido'
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.TipoConta = 15 and c.Desativado = '#39'N'#39
      'Order by c.tipoconta, c.Descricao')
    Left = 346
    Top = 138
  end
  object P_Despesa: TDataSetProvider
    DataSet = Q_Despesa
    Constraints = True
    Left = 348
    Top = 186
  end
  object C_DespesaDs: TDataSource
    DataSet = C_Despesa
    Left = 348
    Top = 230
  end
  object Q_BandeirasCartao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from bandeirascartao where desativado = '#39'N'#39)
    Left = 421
    Top = 45
  end
  object P_BandeirasCartao: TDataSetProvider
    DataSet = Q_BandeirasCartao
    Constraints = True
    Left = 421
    Top = 96
  end
  object C_BandeirasCartao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_BandeirasCartao'
    Left = 421
    Top = 146
    object C_BandeirasCartaoBANDEIRA: TIntegerField
      FieldName = 'BANDEIRA'
      Required = True
    end
    object C_BandeirasCartaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_BandeirasCartaoDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      FixedChar = True
      Size = 1
    end
  end
end

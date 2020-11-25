inherited DMContas: TDMContas
  Left = 327
  Top = 90
  Height = 369
  Width = 547
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select c.*, c.Descricao as DescricaoAtual '
      'from Contas c '
      '')
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Contas '
      'where'
      '  CONTA = :CONTA')
    ModifySQL.Strings = (
      'update Contas'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  BANCO = :BANCO,'
      '  NUMCONTA = :NUMCONTA,'
      '  AGENCIA = :AGENCIA,'
      '  SALDOINICIAL = :SALDOINICIAL,'
      '  DESATIVADO = :DESATIVADO,'
      '  TIPOCONTA = :TIPOCONTA,'
      '  GERENTE = :GERENTE,'
      '  NUMCHEQUEBASE = :NUMCHEQUEBASE,'
      '  DATASALDOINICIAL = :DATASALDOINICIAL,'
      '  SITUACAO = :SITUACAO,'
      '  MOVIMENTOCORRENTE = :MOVIMENTOCORRENTE,'
      '  LIMITECREDITO = :LIMITECREDITO,'
      '  CONTAPAI = :CONTAPAI,'
      '  OBS = :OBS,'
      '  CODIGOREDUZIDO = :CODIGOREDUZIDO,'
      '  CODIGOCONTA = :CODIGOCONTA,'
      '  DATACONCILIACAO = :DATACONCILIACAO,'
      '  SALDOCONCILIACAO = :SALDOCONCILIACAO,'
      '  USUARIOCAIXA = :USUARIOCAIXA,'
      '  SINTETICO = :SINTETICO,'
      '  NIVEL = :NIVEL,'
      '  DESPESAFIXA = :DESPESAFIXA'
      'where'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into Contas'
      '  (CONTA, DESCRICAO, BANCO, NUMCONTA, AGENCIA, SALDOINICIAL, '
      'DESATIVADO, '
      
        '   TIPOCONTA, GERENTE, NUMCHEQUEBASE, DATASALDOINICIAL, SITUACAO' +
        ', '
      'MOVIMENTOCORRENTE, '
      '   LIMITECREDITO, CONTAPAI, OBS, '
      'CODIGOREDUZIDO, '
      
        '   CODIGOCONTA, DATACONCILIACAO, SALDOCONCILIACAO, USUARIOCAIXA,' +
        ' '
      'SINTETICO, NIVEL, SALDO, DESPESAFIXA)'
      'values'
      
        '  (:CONTA, :DESCRICAO, :BANCO, :NUMCONTA, :AGENCIA, :SALDOINICIA' +
        'L, '
      ':DESATIVADO, '
      '   :TIPOCONTA, :GERENTE, :NUMCHEQUEBASE, :DATASALDOINICIAL, '
      ':SITUACAO, '
      '   :MOVIMENTOCORRENTE, :LIMITECREDITO, '
      ':CONTAPAI, '
      '   :OBS, :CODIGOREDUZIDO, :CODIGOCONTA, :DATACONCILIACAO, '
      ':SALDOCONCILIACAO, '
      '   :USUARIOCAIXA, :SINTETICO, :NIVEL, :SALDO, :DESPESAFIXA)')
    DeleteSQL.Strings = (
      'delete from Contas'
      'where'
      '  CONTA = :OLD_CONTA')
    Top = 50
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Exclusao = DMComponentExclusao
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar4_AposCommit = DMComponentGravar4_AposCommit
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'Contas'
    Tabela_Nome = 'Contas'
    Tabela_Chave = 'Conta'
    MestreDetalhe = True
    DeleteValidate.Strings = (
      'lancamentositens=conta'
      'formaspagamento=contareceber'
      'formaspagamento=contapagar'
      'formaspagamento=conta')
    Left = 31
    Top = 271
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    OnCalcFields = C_TabelaCalcFields
    Left = 32
    object C_TabelaDescBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'DescBanco'
      LookupDataSet = C_Bancos
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'BANCO'
      Lookup = True
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object C_TabelaNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 12
    end
    object C_TabelaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object C_TabelaGERENTE: TStringField
      FieldName = 'GERENTE'
      Size = 50
    end
    object C_TabelaDATASALDOINICIAL: TDateField
      FieldName = 'DATASALDOINICIAL'
      EditMask = '##/##/####;1; '
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object C_TabelaMOVIMENTOCORRENTE: TDateField
      FieldName = 'MOVIMENTOCORRENTE'
    end
    object C_TabelaBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_TabelaSALDOINICIAL: TBCDField
      FieldName = 'SALDOINICIAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      OnValidate = C_TabelaDESATIVADOValidate
      Size = 1
    end
    object C_TabelaNUMCHEQUEBASE: TIntegerField
      FieldName = 'NUMCHEQUEBASE'
    end
    object C_TabelaDESCRICAOATUAL: TStringField
      FieldName = 'DESCRICAOATUAL'
      Size = 50
    end
    object C_TabelaLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_TabelaTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_TabelalkTipoConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoConta'
      LookupDataSet = C_TiposContas
      LookupKeyFields = 'TIPOCONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOCONTA'
      Size = 25
      Lookup = True
    end
    object C_TabelaDATACONCILIACAO: TDateField
      FieldName = 'DATACONCILIACAO'
    end
    object C_TabelaSALDOCONCILIACAO: TBCDField
      FieldName = 'SALDOCONCILIACAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      OnValidate = C_TabelaCONTAPAIValidate
    end
    object C_TabelaCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      OnValidate = C_TabelaCODIGOREDUZIDOValidate
      Size = 12
    end
    object C_TabelaUSUARIOCAIXA: TIntegerField
      FieldName = 'USUARIOCAIXA'
      OnValidate = C_TabelaUSUARIOCAIXAValidate
    end
    object C_TabelaSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelalkUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUsuario'
      LookupDataSet = C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'USUARIOCAIXA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaPai: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaPai'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAI'
      Size = 30
      Lookup = True
    end
    object C_TabelaSINTETICO: TStringField
      FieldName = 'SINTETICO'
      Size = 1
    end
    object C_TabelaNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object C_TabelaSaldoAtual: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'SaldoAtual'
      DisplayFormat = '###,##0.00'
    end
    object C_TabelaDESPESAFIXA: TStringField
      FieldName = 'DESPESAFIXA'
      FixedChar = True
      Size = 1
    end
  end
  object Q_Bancos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Favorecidos'
      'Where TipoFavorecido = 4 ')
    Left = 100
    Top = 113
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 240
    Top = 7
  end
  object Q_TiposContasProvider: TDataSetProvider
    DataSet = Q_TiposContas
    Constraints = True
    Left = 346
    Top = 59
  end
  object C_TiposContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TiposContasProvider'
    Left = 346
    Top = 111
    object C_TiposContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Required = True
    end
    object C_TiposContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TiposContasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_TiposContasQ_Contas: TDataSetField
      FieldName = 'Q_Contas'
    end
  end
  object Q_TiposContas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from TiposContas')
    Left = 344
    Top = 10
    object Q_TiposContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Required = True
    end
    object Q_TiposContasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object Q_TiposContasTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object Q_Associacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 171
    Top = 63
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_Master2DS
    SQL.Strings = (
      
        'select c.conta,c.descricao, t.descricao as DescTipo, c.saldo, c.' +
        'contapai, '
      'c.tipoconta, c.codigoreduzido'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'and c.TIPOCONTA = :TIPOCONTA'
      'order by c.tipoconta, c.descricao'
      ''
      '')
    Left = 245
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPOCONTA'
        ParamType = ptUnknown
      end>
  end
  object C_Contas: TClientDataSet
    Tag = 1000
    Aggregates = <>
    DataSetField = C_TiposContasQ_Contas
    Params = <>
    Left = 247
    Top = 141
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
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from usuarios')
    Left = 452
    Top = 8
  end
  object Q_UsuariosProvider: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 451
    Top = 60
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UsuariosProvider'
    Left = 450
    Top = 117
    object C_UsuariosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object C_UsuariosLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Required = True
      Size = 30
    end
  end
  object Q_Master2DS: TDataSource
    DataSet = Q_TiposContas
    Left = 352
    Top = 186
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 172
    Top = 120
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 246
    Top = 192
  end
  object P_Bancos: TDataSetProvider
    DataSet = Q_Bancos
    Constraints = True
    Left = 100
    Top = 166
  end
  object C_Bancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Bancos'
    Left = 104
    Top = 214
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

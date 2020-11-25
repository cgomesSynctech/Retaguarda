object DMFinanceiro: TDMFinanceiro
  OldCreateOrder = False
  Height = 676
  Width = 1024
  object Q_SQL2: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 22
    Top = 46
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select r.Conta, c.descricao, c.TipoConta, r.valor, r.historico, '
      'r.valorextenso, f.nome from  Retiradas r join Contas c on '
      
        'r.Conta = c.Conta  join favorecidos f on r.favorecido = f.favore' +
        'cido ')
    Left = 22
    Top = 1
  end
  object Q_ComandoSQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 92
    Top = 46
  end
  object Q_Transacoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 92
    Top = 1
  end
  object DlgMsg: TDlgMsg
    Left = 92
    Top = 136
  end
  object dlgAutorizacao: TAutorizacaoDialog
    Funcionario = 0
    Left = 22
    Top = 136
  end
  object Q_Auditorias: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 21
    Top = 92
  end
  object IBT_Auditoria: TIBTransaction
    Active = False
    DefaultDatabase = DMProjeto.DB_Projeto
    AutoStopAction = saNone
    Left = 91
    Top = 92
  end
  object Q_ContasCxBc: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select c.CodigoReduzido, c.Conta, c.Descricao, t.descricao as De' +
        'scTipo, c.ContaPai, c.TipoConta, c.Saldo, c.MovimentoCorrente, c' +
        '.LimiteCredito'
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.TipoConta IN (1,2) and Desativado = '#39'N'#39' '
      'Order by c.TipoConta, c.Descricao')
    Left = 19
    Top = 225
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
      'Where c.Desativado = '#39'N'#39
      'Order by c.tipoconta, c.Descricao')
    Left = 170
    Top = 46
  end
  object Q_ContasCx: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select c.CodigoReduzido, c.Conta, c.Descricao, t.descricao as De' +
        'scTipo, c.ContaPai, c.TipoConta, c.Saldo'
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      
        'Where c.TipoConta = 1 and Desativado = '#39'N'#39' and Situacao = '#39'Abert' +
        'o'#39
      'Order by c.Descricao')
    Left = 245
    Top = 46
  end
  object Q_ContasBc: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select c.CodigoReduzido, c.Conta, c.Descricao, t.descricao as De' +
        'scTipo, c.Saldo, c.ContaPai, c.TipoConta, c.SaldoConciliacao, c.' +
        'DataConciliacao'
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.TipoConta = 2 and Desativado = '#39'N'#39
      'Order by c.Descricao')
    Left = 320
    Top = 46
  end
  object Q_CartoesCred: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CARENCIACREDITO, CONTALIBERACAO, ENCARGOS, DESCRICAO, FOR' +
        'MAPAGAMENTO, FORNECEDOR, MELHORDIACOMPRA, SIGLA , CONTARECEBER, ' +
        'CARTAOTEF'
      'from FORMASPAGAMENTO'
      'where Especie = 3 and Desativado = '#39'N'#39)
    Left = 395
    Top = 46
  end
  object Q_CartoesBus: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CARENCIACREDITO, CONTALIBERACAO, DESCRICAO, ENCARGOS, FOR' +
        'MAPAGAMENTO, FORNECEDOR, MELHORDIACOMPRA, SIGLA, CONTARECEBER, C' +
        'ONTAPAGAR'
      'from FORMASPAGAMENTO'
      'Where Especie = 50 and Desativado = '#39'N'#39
      'Order by Descricao')
    Left = 470
    Top = 46
  end
  object Q_OutrasForma: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CARENCIACREDITO, CONTALIBERACAO, DESCRICAO, ENCARGOS, FOR' +
        'MAPAGAMENTO, FORNECEDOR, ESPECIE, MELHORDIACOMPRA, SIGLA, CONTAR' +
        'ECEBER, CONTAPAGAR'
      'from FORMASPAGAMENTO'
      
        'Where formapagamento >0 and not especie IN (1,2,3,5,20,50) and D' +
        'esativado = '#39'N'#39
      'Order by Descricao')
    Left = 553
    Top = 45
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 170
    Top = 1
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
      Required = True
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Origin = 'CONTAS.CODIGOREDUZIDO'
      Size = 12
    end
  end
  object C_ContasCx: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasCx'
    Left = 243
    Top = 1
    object C_ContasCxCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasCxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasCxDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasCxCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasCxTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasCxCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasCxSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object C_ContasBc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasBc'
    Left = 318
    Top = 1
    object C_ContasBcCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasBcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasBcDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasBcSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasBcCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasBcTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasBcCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasBcSALDOCONCILIACAO: TBCDField
      FieldName = 'SALDOCONCILIACAO'
      Precision = 18
      Size = 2
    end
    object C_ContasBcDATACONCILIACAO: TDateField
      FieldName = 'DATACONCILIACAO'
    end
  end
  object C_CartoesCred: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CartoesCred'
    Left = 394
    Top = 1
    object C_CartoesCredCARENCIACREDITO: TIntegerField
      FieldName = 'CARENCIACREDITO'
    end
    object C_CartoesCredCONTALIBERACAO: TIntegerField
      FieldName = 'CONTALIBERACAO'
    end
    object C_CartoesCredENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      Precision = 18
      Size = 2
    end
    object C_CartoesCredDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_CartoesCredFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_CartoesCredFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_CartoesCredMELHORDIACOMPRA: TIntegerField
      FieldName = 'MELHORDIACOMPRA'
    end
    object C_CartoesCredSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 6
    end
    object C_CartoesCredCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
    object C_CartoesCredCARTAOTEF: TStringField
      FieldName = 'CARTAOTEF'
      FixedChar = True
      Size = 1
    end
  end
  object C_CartoesBus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CartoesBus'
    Left = 469
    Top = 1
    object C_CartoesBusCARENCIACREDITO: TIntegerField
      FieldName = 'CARENCIACREDITO'
    end
    object C_CartoesBusCONTALIBERACAO: TIntegerField
      FieldName = 'CONTALIBERACAO'
    end
    object C_CartoesBusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_CartoesBusENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      Precision = 18
      Size = 2
    end
    object C_CartoesBusFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_CartoesBusFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_CartoesBusMELHORDIACOMPRA: TIntegerField
      FieldName = 'MELHORDIACOMPRA'
    end
    object C_CartoesBusSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 6
    end
    object C_CartoesBusCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
    object C_CartoesBusCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
    end
  end
  object C_OutrasForma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_OutrasFormaDS'
    Left = 552
    Top = 1
    object C_OutrasFormaCARENCIACREDITO: TIntegerField
      FieldName = 'CARENCIACREDITO'
    end
    object C_OutrasFormaCONTALIBERACAO: TIntegerField
      FieldName = 'CONTALIBERACAO'
    end
    object C_OutrasFormaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_OutrasFormaENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      Precision = 18
      Size = 2
    end
    object C_OutrasFormaFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_OutrasFormaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_OutrasFormaMELHORDIACOMPRA: TIntegerField
      FieldName = 'MELHORDIACOMPRA'
    end
    object C_OutrasFormaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 6
    end
    object C_OutrasFormaESPECIE: TIntegerField
      FieldName = 'ESPECIE'
    end
    object C_OutrasFormaCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
    object C_OutrasFormaCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
    end
  end
  object C_ContasCxBc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasCxBc'
    Left = 20
    Top = 180
    object C_ContasCxBcCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasCxBcCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasCxBcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasCxBcDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasCxBcCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasCxBcTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasCxBcSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCxBcMOVIMENTOCORRENTE: TDateField
      FieldName = 'MOVIMENTOCORRENTE'
    end
    object C_ContasCxBcLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 172
    Top = 92
  end
  object P_ContasCx: TDataSetProvider
    DataSet = Q_ContasCx
    Constraints = True
    Left = 247
    Top = 92
  end
  object P_ContasBc: TDataSetProvider
    DataSet = Q_ContasBc
    Constraints = True
    Left = 321
    Top = 92
  end
  object P_CartoesCred: TDataSetProvider
    DataSet = Q_CartoesCred
    Constraints = True
    Left = 396
    Top = 92
  end
  object P_CartoesBus: TDataSetProvider
    DataSet = Q_CartoesBus
    Constraints = True
    Left = 470
    Top = 92
  end
  object P_OutrasFormaDS: TDataSetProvider
    DataSet = Q_OutrasForma
    Constraints = True
    Left = 553
    Top = 92
  end
  object P_ContasCxBc: TDataSetProvider
    DataSet = Q_ContasCxBc
    Constraints = True
    Left = 20
    Top = 272
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 172
    Top = 136
  end
  object C_ContasCxDS: TDataSource
    DataSet = C_ContasCx
    Left = 247
    Top = 136
  end
  object C_ContasBcDS: TDataSource
    DataSet = C_ContasBc
    Left = 322
    Top = 136
  end
  object C_CartoesCredDS: TDataSource
    DataSet = C_CartoesCred
    Left = 402
    Top = 140
  end
  object C_CartoesBusDS: TDataSource
    DataSet = C_CartoesBus
    Left = 473
    Top = 136
  end
  object C_OutrasFormaDS: TDataSource
    DataSet = C_OutrasForma
    Left = 556
    Top = 136
  end
  object C_ContasCxBcDS: TDataSource
    DataSet = C_ContasCxBc
    Left = 19
    Top = 317
  end
  object C_Bancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Bancos'
    Left = 104
    Top = 180
    object C_BancosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_BancosCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_BancosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object P_Bancos: TDataSetProvider
    DataSet = Q_Bancos
    Constraints = True
    Left = 104
    Top = 272
  end
  object Q_Bancos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Favorecido, Codigo, Nome From Favorecidos '
      'Where TipoFavorecido = 4 and Desativado = '#39'N'#39)
    Left = 104
    Top = 224
  end
  object C_BancosDS: TDataSource
    DataSet = C_Bancos
    Left = 104
    Top = 318
  end
  object Q_ChequesLoja: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select dd.IDDoc, f.Nome, dd.Vencimento, dd.Valor, dd.NumCheque, ' +
        'b.Nome as NomeBanco, dd.contaatual'
      
        'From ((((DepositosDoc dd inner join Depositos d on dd.deposito =' +
        ' d.deposito)'
      
        '         inner join FormasPagamento fp on dd.formapagamento = fp' +
        '.formapagamento)'
      '         left join Favorecidos f on d.Favorecido = f.Favorecido)'
      '         left join Favorecidos b on dd.Banco = b.favorecido)'
      
        'Where dd.ContaAtual = :Conta AND dd.Status < 70 AND dd.Status <>' +
        ' 4  AND dd.ForaDaEmpresa = '#39'N'#39'  AND fp.Especie = 1 ')
    Left = 172
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Conta'
        ParamType = ptUnknown
      end>
  end
  object C_ChequesLoja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ChequesLoja'
    Left = 172
    Top = 180
    object C_ChequesLojaIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ChequesLojaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ChequesLojaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ChequesLojaVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesLojaNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_ChequesLojaNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 50
    end
    object C_ChequesLoja_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ChequesLojaCONTAATUAL: TIntegerField
      FieldName = 'CONTAATUAL'
    end
  end
  object P_ChequesLoja: TDataSetProvider
    DataSet = Q_ChequesLoja
    Constraints = True
    Options = [poAllowCommandText]
    Left = 172
    Top = 272
  end
  object C_ChequesLojaDS: TDataSource
    DataSet = C_ChequesLoja
    Left = 173
    Top = 319
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 254
    Top = 186
  end
  object Q_Contabil: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 250
    Top = 248
  end
  object IBEventos_Financeiro: TIBEvents
    AutoRegister = True
    Database = DMProjeto.DB_Projeto
    Events.Strings = (
      'EVENTO_CONTAS'
      'EVENTO_FORMASPAGAMENTO')
    Registered = False
    OnEventAlert = IBEventos_FinanceiroEventAlert
    Left = 334
    Top = 183
  end
  object Q_SQL3: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 326
    Top = 246
  end
  object C_ChequesElet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ChequesElet'
    Left = 474
    Top = 181
    object C_ChequesEletFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_ChequesEletDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_ChequesEletESPECIE: TIntegerField
      FieldName = 'ESPECIE'
    end
    object C_ChequesEletREFCREDITO: TStringField
      FieldName = 'REFCREDITO'
      Size = 1
    end
    object C_ChequesEletCARENCIACREDITO: TIntegerField
      FieldName = 'CARENCIACREDITO'
    end
    object C_ChequesEletCONTALIBERACAO: TIntegerField
      FieldName = 'CONTALIBERACAO'
    end
    object C_ChequesEletDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_ChequesEletMENORPARCELA: TBCDField
      FieldName = 'MENORPARCELA'
      Precision = 18
      Size = 2
    end
    object C_ChequesEletENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      Precision = 18
      Size = 2
    end
    object C_ChequesEletSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 6
    end
    object C_ChequesEletCODIGOECF: TStringField
      FieldName = 'CODIGOECF'
      Size = 3
    end
    object C_ChequesEletMELHORDIACOMPRA: TIntegerField
      FieldName = 'MELHORDIACOMPRA'
    end
    object C_ChequesEletFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_ChequesEletCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ChequesEletCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
    object C_ChequesEletCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
    end
  end
  object C_ChequesEletoDS: TDataSource
    DataSet = C_ChequesElet
    Left = 472
    Top = 313
  end
  object P_ChequesElet: TDataSetProvider
    DataSet = Q_ChequesElet
    Constraints = True
    Left = 471
    Top = 268
  end
  object Q_ChequesElet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from formaspagamento'
      'where especie = 2 and desativado = '#39'N'#39
      'order by descricao')
    Left = 471
    Top = 223
  end
  object Q_ChequesDev: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select distinct b.nome as banco, od.numcheque, od.valor, od.venc' +
        'imento as data,'
      
        '          o.valorjuros as Despesas, o.percentualjuros as Encargo' +
        's, od.iddoc, od.valorpago'
      'from operacoesfinanceiras o'
      
        '        inner join operacoesfinanceirasdet od on od.operacao = o' +
        '.operacao'
      '        inner join depositosdoc dc on dc.iddoc = od.iddoc'
      '        left join favorecidos b on b.favorecido = od.banco'
      'where o.favorecido = :favorecido and o.tipooperacao = 9 and'
      '(od.valorpago is null or od.valorpago = 0)'
      'and dc.foradaempresa = '#39'N'#39
      '')
    Left = 556
    Top = 222
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'favorecido'
        ParamType = ptUnknown
      end>
  end
  object C_ChequesDev: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ChequesDev'
    OnCalcFields = C_ChequesDevCalcFields
    Left = 556
    Top = 181
    object C_ChequesDevBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object C_ChequesDevNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_ChequesDevDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ChequesDevDESPESAS: TBCDField
      FieldName = 'DESPESAS'
      OnChange = C_ChequesDevDESPESASChange
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesDevENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      OnChange = C_ChequesDevDESPESASChange
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesDevIDDOC: TIntegerField
      FieldName = 'IDDOC'
    end
    object C_ChequesDevTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Total'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ChequesDev_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ChequesDevVALOR: TBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object C_ChequesDevDS: TDataSource
    DataSet = C_ChequesDev
    Left = 554
    Top = 313
  end
  object P_ChequesDev: TDataSetProvider
    DataSet = Q_ChequesDev
    Constraints = True
    Left = 553
    Top = 268
  end
  object Beep: TBTBeeper
    BeatDuration = bd_500
    Left = 322
    Top = 300
  end
end

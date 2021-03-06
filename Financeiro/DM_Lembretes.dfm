object DMLembretes: TDMLembretes
  OldCreateOrder = False
  Left = 54
  Top = 18
  Height = 628
  Width = 1176
  object Q_ChequesImprimirDetDS: TDataSource
    DataSet = Q_ChequesImprimirDet
    Left = 457
    Top = 156
  end
  object Q_ChequesImprimirDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT rd.IDDoc, f.Nome, c.Descricao as DescConta, rd.Conta, rd.' +
        'Valor, rd.Vencimento, 1 as IDFalso'
      'FROM RetiradasDoc rd '
      
        '           inner join FormasPagamento fp on rd.FormaPagamento = ' +
        'fp.FormaPagamento'
      '           inner join Contas c on rd.Conta = c.Conta'
      
        '           inner join Favorecidos f on rd.favorecidodoc = f.favo' +
        'recido'
      
        'Where rd.NumCheque is null and rd.Status < 70  and fp.Especie = ' +
        '1')
    Left = 455
    Top = 108
    object IBBCDField5: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesImprimirDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ChequesImprimirDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ChequesImprimirDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ChequesImprimirDetIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_ChequesImprimirDetDESCCONTA: TIBStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object Q_ChequesImprimirDetCONTA: TIntegerField
      FieldName = 'CONTA'
    end
  end
  object Q_ChequesImprimirDS: TDataSource
    DataSet = Q_ChequesImprimir
    Left = 457
    Top = 49
  end
  object Q_ChequesImprimir: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT '#39'Cheques pendentes de Impress'#227'o'#39' as Descricao, 1 as IDFal' +
        'so, (Select Sum(rd.Valor) FROM RetiradasDoc rd '
      '         inner join FormasPagamento fp'
      '          on rd.FormaPagamento = fp.FormaPagamento'
      
        '        where rd.NumCheque is null and rd.Status < 70  and fp.Es' +
        'pecie = 1) as Valor'
      'From rdb$database')
    Left = 455
    Top = 4
    object Q_ChequesImprimirDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object Q_ChequesImprimirVALOR: TIBBCDField
      FieldName = 'VALOR'
      OnGetText = Q_ChequesDepositarVALORGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesImprimirIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_ChequesACompensar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT cast('#39'Cheques a Compensar'#39' as varchar(40)) as Descricao, ' +
        '1 as IDFalso,                               (Select SUM(rd.Valor' +
        ') '
      '                FROM RetiradasDoc rd '
      
        '                Where rd.Vencimento <= :DataI AND rd.Status = 3)' +
        ' as Valor'
      'From rdb$database'
      ''
      ' '
      ' '
      ' ')
    Left = 335
    Top = 6
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '15/06/2001'
      end>
    object Q_ChequesACompensarVALOR: TIBBCDField
      FieldName = 'VALOR'
      OnGetText = Q_ChequesDepositarVALORGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesACompensarIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ChequesACompensarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
  end
  object Q_ContasAPagar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cast('#39'Contas a Pagar'#39' as varchar(30)) as Descricao, 1 as ' +
        'IDFalso, '
      
        '          (Select Sum(tr.faltapagar)             From Duplicatas' +
        'apagar tr '
      
        '           where tr.Vencimento <= :DataI and tr.status > 0 And t' +
        'r.status < 50)'
      '          as Valor'
      'from rdb$database'
      ''
      ''
      '          '
      ''
      ''
      ''
      ' ')
    Left = 246
    Top = 6
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '10/10/2080'
      end>
    object Q_ContasAPagarVALOR: TIBBCDField
      FieldName = 'VALOR'
      OnGetText = Q_ChequesDepositarVALORGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ContasAPagarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object Q_ChequesDepositar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT cast('#39'Cheques para Depositar'#39' as varchar(40)) as Descrica' +
        'o, 1 as IDFalso,               (Select SUM(dd.Valor) '
      '               FROM DepositosDoc dd'
      
        '               Where dd.Vencimento <= :DataI and dd.Status = 3 a' +
        'nd                              dd.ContaAtual = 1 and dd.ForaDaE' +
        'mpresa = '#39'N'#39') as Valor'
      'From rdb$database'
      ' '
      ' '
      ' ')
    Left = 150
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end>
    object Q_ChequesDepositarVALOR: TIBBCDField
      FieldName = 'VALOR'
      OnGetText = Q_ChequesDepositarVALORGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesDepositarIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ChequesDepositarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
  end
  object Q_ParcelasAReceber: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cast('#39'Parcelas a Receber'#39' as varchar(30)) as Descricao, 1' +
        ' as IDFalso, '
      
        '          (select Sum(tr.faltareceber) from titulosareceber tr w' +
        'here  (tr.Vencimento <= :DataI) and (tr.status > 0 And tr.status' +
        ' < 50))  as Valor'
      'From rdb$database'
      ''
      ''
      ' ')
    Left = 35
    Top = 5
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '10/10/2080'
      end>
    object Q_ParcelasAReceberIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ParcelasAReceberVALOR: TIBBCDField
      FieldName = 'VALOR'
      OnGetText = Q_ChequesDepositarVALORGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ParcelasAReceberDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object Q_ParcelasAReceberDs: TDataSource
    DataSet = Q_ParcelasAReceber
    Left = 33
    Top = 55
  end
  object Q_ParcelasAReceberDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select tr.ID, f.Nome, tr.Vencimento, tr.TITULO, tr.FaltaReceber ' +
        'as Valor, 1 as IDFalso'
      
        'From titulosareceber tr inner join favorecidos f on tr.cliente =' +
        ' f.favorecido'
      
        'where (tr.Vencimento <= :DataI) and (tr.status > 0 And tr.status' +
        ' < 50) '
      '           and (tr.faltareceber) > 0')
    Left = 32
    Top = 106
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '10/10/2080'
      end>
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ParcelasAReceberDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ParcelasAReceberDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ParcelasAReceberDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ParcelasAReceberDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ParcelasAReceberDetTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = 'TITULOSARECEBER.TITULO'
      Size = 10
    end
  end
  object Q_ParcelasAReceberDetDS: TDataSource
    DataSet = Q_ParcelasAReceberDet
    Left = 34
    Top = 158
  end
  object Q_ChequesDepositarDetDS: TDataSource
    DataSet = Q_ChequesDepositarDet
    Left = 148
    Top = 154
  end
  object Q_ChequesDepositarDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT dd.IDDoc, f.Nome, d.Data, dd.Vencimento, dd.Valor, b.Nome' +
        ' as NomeBanco, 1 as IDFalso, (d.Data - dd.Vencimento) as PreData' +
        'do'
      
        'FROM DepositosDoc dd inner join Depositos d on dd.deposito = d.d' +
        'eposito'
      
        '           left join favorecidos f on d.favorecido = f.favorecid' +
        'o'
      '           left join favorecidos b on dd.banco = b.favorecido'
      
        'Where dd.Vencimento <= :DataI and dd.Status = 3 and dd.ContaAtua' +
        'l = 1 and dd.ForaDaEmpresa = '#39'N'#39
      ' '
      ' '
      ' ')
    Left = 148
    Top = 105
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '15/06/2001'
      end>
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesDepositarDetIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_ChequesDepositarDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ChequesDepositarDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ChequesDepositarDetNOMEBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOMEBANCO'
      Size = 50
    end
    object Q_ChequesDepositarDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ChequesDepositarDetDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_ChequesDepositarDetPREDATADO: TIntegerField
      FieldName = 'PREDATADO'
    end
  end
  object Q_ChequesDepositarDS: TDataSource
    DataSet = Q_ChequesDepositar
    Left = 150
    Top = 56
  end
  object Q_ContasAPagarDS: TDataSource
    DataSet = Q_ContasAPagar
    Left = 247
    Top = 45
  end
  object Q_ContasAPagarDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tr.ID, f.Nome, tr.Vencimento, 1 as IDFalso, tr.TITULO,'
      '         (tr.faltapagar)  as Valor'
      
        'From DuplicatasAPagar tr inner join Favorecidos f on tr.forneced' +
        'or = f.favorecido'
      
        'where tr.Vencimento <= :DataI and tr.status > 0 And tr.status < ' +
        '50 and'
      '          (tr.faltapagar) > 0'
      '          '
      ''
      ''
      ''
      ' ')
    Left = 246
    Top = 106
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '10/10/2080'
      end>
    object IBBCDField3: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ContasAPagarDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ContasAPagarDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasAPagarDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ContasAPagarDetTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = 'DUPLICATASAPAGAR.TITULO'
      Size = 10
    end
  end
  object Q_ContasAPagarDetDS: TDataSource
    DataSet = Q_ContasAPagarDet
    Left = 245
    Top = 154
  end
  object Q_ChequesACompensacaoDetDS: TDataSource
    DataSet = Q_ChequesACompensarDet
    Left = 348
    Top = 153
  end
  object Q_ChequesACompensarDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT rd.IDDoc, f.Nome, rd.Vencimento, c.Descricao as DescConta' +
        ', rd.Conta, rd.Valor, 1 as IDFalso'
      'FROM  RetiradasDoc rd '
      
        '            inner join Favorecidos f on rd.favorecidodoc = f.fav' +
        'orecido '
      '            inner join Contas c on rd.Conta = c.Conta'
      'Where rd.Vencimento <= :DataI AND rd.Status = 3'
      ' '
      ' '
      ' '
      ' ')
    Left = 347
    Top = 106
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '15/06/2001'
      end>
    object IBBCDField4: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesACompensarDetIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_ChequesACompensarDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ChequesACompensarDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ChequesACompensarDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ChequesACompensarDetDESCCONTA: TIBStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object Q_ChequesACompensarDetCONTA: TIntegerField
      FieldName = 'CONTA'
    end
  end
  object Q_ChequesACompensarDS: TDataSource
    DataSet = Q_ChequesACompensar
    Left = 336
    Top = 49
  end
  object Q_SaldoContas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Conta, Descricao'
      'from Contas c'
      'Where c.TipoConta IN (1,2) and c.Desativado = '#39'N'#39)
    Left = 31
    Top = 282
  end
  object C_SaldoContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SaldoContas'
    OnFilterRecord = C_SaldoContasFilterRecord
    Left = 31
    Top = 238
    object C_SaldoContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_SaldoContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_SaldoContasSaldo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Saldo'
    end
  end
  object P_SaldoContas: TDataSetProvider
    DataSet = Q_SaldoContas
    Constraints = True
    Left = 31
    Top = 326
  end
  object Q_SaldoDetalhes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select t.formapagamento, fp.Descricao, sum(t.valor) as Valor fro' +
        'm transacoes t, formaspagamento fp'
      'Where t.Conta = :Conta and  t.formapagamento = fp.formapagamento'
      'Group by t.formapagamento,fp.Descricao')
    Left = 144
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Conta'
        ParamType = ptUnknown
      end>
    object Q_SaldoDetalhesFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
    end
    object Q_SaldoDetalhesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_SaldoDetalhesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object Q_PosicaoCaixas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from PP_PosicaoCaixas_Fp')
    Left = 248
    Top = 200
    object Q_PosicaoCaixasFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
    end
    object Q_PosicaoCaixasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Q_PosicaoCaixasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object Q_PosicaoCaixasDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from PP_PosicaoCaixas_Conta ( :FormaPagamento )')
    Left = 348
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FormaPagamento'
        ParamType = ptUnknown
      end>
    object Q_PosicaoCaixasDetCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object Q_PosicaoCaixasDetDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Q_PosicaoCaixasDetVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object Q_FluxoCaixa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select Semana || '#39'/'#39' || Ano as Semana, sum(ValorAReceber) as ARe' +
        'ceber, Sum(ValorAPagar) as APagar from Visao_FluxoCaixa'
      'Group by Semana,Ano')
    Left = 144
    Top = 291
    object Q_FluxoCaixaSEMANA: TIBStringField
      FieldName = 'SEMANA'
      Size = 18
    end
    object Q_FluxoCaixaARECEBER: TIBBCDField
      FieldName = 'ARECEBER'
      Precision = 18
      Size = 2
    end
    object Q_FluxoCaixaAPAGAR: TIBBCDField
      FieldName = 'APAGAR'
      Precision = 18
      Size = 2
    end
  end
  object Q_VendasPorVendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select f.Nome, sum(s.Total) as Total'
      
        'From Saidas s inner join Favorecidos f on s.vendedor = f.favorec' +
        'ido'
      'Group by f.Nome')
    Left = 142
    Top = 336
    object Q_VendasPorVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_VendasPorVendedorTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object Q_VendasGraf: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select s.Data, sum(s.Total) as Total'
      'From Saidas s '
      'where s.Data >= :DataI'
      'Group by s.Data')
    Left = 140
    Top = 388
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end>
    object Q_VendasGrafDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_VendasGrafTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object Q_CompromissosDS: TDataSource
    DataSet = Q_Compromissos
    Left = 680
    Top = 154
  end
  object Q_Compromissos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '#39'Compromissos do dia                    '#39' as caption, '
      '(select count(c.compromisso) from compromissos c'
      'where c.usudestino = :usuario'
      'and c.data=current_date'
      'and c.concluido<>'#39'S'#39
      ') as quant, 1 as IDFALSO'
      'from rdb$database')
    Left = 680
    Top = 106
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usuario'
        ParamType = ptInput
        Value = '1'
      end>
    object Q_CompromissosQUANT: TIntegerField
      FieldName = 'QUANT'
      Required = True
      OnGetText = Q_CompromissosQUANTGetText
    end
    object Q_CompromissosIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_CompromissosCAPTION: TIBStringField
      FieldName = 'CAPTION'
      Required = True
      FixedChar = True
      Size = 39
    end
  end
  object Q_CompromissosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.compromisso, c.assunto, c.data,'
      'u.loginname as de, ca.cor, ca.cor_fonte,'
      'c.horario, c.horario_final,'
      #39#39' as sHorario,'
      '1 as IDFALSO'
      'from compromissos c'
      'left join usuarios u on c.usuorigem=u.usuario'
      'left join categorias ca on c.categoria=ca.categoria'
      'where c.usudestino = :usuario'
      'and c.data=current_date'
      'and c.concluido<>'#39'S'#39
      'order by c.horario')
    Left = 813
    Top = 103
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usuario'
        ParamType = ptInput
        Value = '1'
      end>
    object Q_CompromissosDetCOMPROMISSO: TIntegerField
      FieldName = 'COMPROMISSO'
      Required = True
    end
    object Q_CompromissosDetASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Size = 50
    end
    object Q_CompromissosDetDE: TIBStringField
      FieldName = 'DE'
      Size = 30
    end
    object Q_CompromissosDetCOR: TIBStringField
      FieldName = 'COR'
      Size = 10
    end
    object Q_CompromissosDetCOR_FONTE: TIBStringField
      FieldName = 'COR_FONTE'
      Size = 10
    end
    object Q_CompromissosDetHORARIO: TIntegerField
      FieldName = 'HORARIO'
    end
    object Q_CompromissosDetHORARIO_FINAL: TIntegerField
      FieldName = 'HORARIO_FINAL'
    end
    object Q_CompromissosDetSHORARIO: TIBStringField
      DisplayWidth = 30
      FieldName = 'SHORARIO'
      Required = True
      OnGetText = Q_CompromissosDetSHORARIOGetText
      Size = 30
    end
    object Q_CompromissosDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_CompromissosDetDATA: TDateField
      FieldName = 'DATA'
      Origin = 'COMPROMISSOS.DATA'
    end
  end
  object Q_CompromissosDetDS: TDataSource
    DataSet = Q_CompromissosDet
    Left = 813
    Top = 153
  end
  object Q_RecadosDS: TDataSource
    DataSet = Q_Recados
    Left = 678
    Top = 55
  end
  object Q_Recados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select '#39'Recados n'#227'o lidos'#39' as caption, (select count(r.recado) f' +
        'rom recados r where r.para = :usuario and r.lido<>'#39'S'#39') as quant,' +
        ' 1 as IDFALSO'
      'from rdb$database')
    Left = 676
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usuario'
        ParamType = ptInput
        Value = '1'
      end>
    object Q_RecadosCAPTION: TIBStringField
      FieldName = 'CAPTION'
      Required = True
      Size = 17
    end
    object Q_RecadosQUANT: TIntegerField
      FieldName = 'QUANT'
      Required = True
      OnGetText = Q_CompromissosQUANTGetText
    end
    object Q_RecadosIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_RecadosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  r.recado, '
      '            r.data,'
      '            r.descricao,'
      '            r.horario,'
      '            u.loginname as de,'
      '            1 as IDFALSO'
      'From Recados r'
      'Left Join usuarios u on r.de=u.usuario'
      'Where r.para = :usuario'
      'And r.lido<>'#39'S'#39
      'Order By r.recado Desc, r.horario Desc')
    Left = 813
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usuario'
        ParamType = ptInput
        Value = '1'
      end>
    object Q_RecadosDetRECADO: TIntegerField
      FieldName = 'RECADO'
      Required = True
    end
    object Q_RecadosDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_RecadosDetDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object Q_RecadosDetHORARIO: TIntegerField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'HORARIO'
      OnGetText = Q_RecadosDetHORARIOGetText
    end
    object Q_RecadosDetDE: TIBStringField
      DisplayLabel = 'De'
      FieldName = 'DE'
      Size = 30
    end
    object Q_RecadosDetDESCRICAO: TIBStringField
      DisplayLabel = 'Recado'
      FieldName = 'DESCRICAO'
      Size = 2000
    end
  end
  object Q_RecadosDetDS: TDataSource
    DataSet = Q_RecadosDet
    Left = 813
    Top = 55
  end
  object Q_ContasAgendadas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select '#39'Contas a Pagar Agendadas                               '#39 +
        ' as Descricao, 1 as IDFalso, '
      
        '          (Select Sum(tr.Valor- tr.ValorPago - tr.CreditoUtiliza' +
        'do - tr.Descontos)             From Duplicatasapagar tr '
      '           where tr.Vencimento <= :DataI and tr.status = -3)'
      '          as Valor'
      'from rdb$database'
      ''
      ''
      '          '
      ''
      ''
      ''
      ' ')
    Left = 566
    Top = 6
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '01/01/2080'
      end>
    object Q_ContasAgendadasIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ContasAgendadasVALOR: TIBBCDField
      FieldName = 'VALOR'
      OnGetText = Q_ChequesDepositarVALORGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAgendadasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 55
    end
  end
  object DataSource1: TDataSource
    DataSet = Q_ContasAgendadas
    Left = 565
    Top = 49
  end
  object Q_ContasAgendadasDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tr.ID, f.Nome, tr.Vencimento, 1 as IDFalso, '
      
        '         (tr.Valor- tr.ValorPago - tr.CreditoUtilizado - tr.Desc' +
        'ontos)  as Valor'
      
        'From DuplicatasAPagar tr inner join Favorecidos f on tr.forneced' +
        'or = f.favorecido'
      'where tr.Vencimento <= :DataI and tr.status = -3 and'
      
        '          (tr.Valor- tr.ValorPago - tr.CreditoUtilizado - tr.Des' +
        'contos) > 0'
      '          '
      ''
      ''
      ''
      ' ')
    Left = 566
    Top = 106
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '10/10/2080'
      end>
    object Q_ContasAgendadasDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ContasAgendadasDetNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ContasAgendadasDetVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasAgendadasDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ContasAgendadasDetVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object DataSource2: TDataSource
    DataSet = Q_ContasAgendadasDet
    Left = 565
    Top = 154
  end
  object C_LembretesDS: TDataSource
    DataSet = C_Lembretes
    Left = 245
    Top = 430
  end
  object Q_LembretesProvider: TDataSetProvider
    DataSet = Q_Lembretes
    Constraints = True
    Left = 245
    Top = 382
  end
  object U_Lembretes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lembretes '
      'where'
      '  LEMBRETE = :LEMBRETE')
    ModifySQL.Strings = (
      'update lembretes'
      'set'
      '  SITUACAO = :SITUACAO'
      'where'
      '  LEMBRETE = :OLD_LEMBRETE')
    InsertSQL.Strings = (
      'insert into lembretes'
      '  (SITUACAO)'
      'values'
      '  (:SITUACAO)')
    DeleteSQL.Strings = (
      'delete from lembretes'
      'where'
      '  LEMBRETE = :OLD_LEMBRETE')
    Left = 245
    Top = 335
  end
  object Q_Lembretes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select lembrete, datainicial, obs, situacao, tipo, 1 as IDFalso,'
      
        'domingo, segunda, terca, quarta, quinta, sexta, sabado from lemb' +
        'retes'
      
        'where desativado = '#39'N'#39' and datainicial <=:hoje and datafinal >= ' +
        ':hoje and situacao = '#39'N'#39)
    UpdateObject = U_Lembretes
    Left = 246
    Top = 291
    ParamData = <
      item
        DataType = ftDate
        Name = 'hoje'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hoje'
        ParamType = ptInput
      end>
  end
  object C_Lembretes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_LembretesProvider'
    Left = 247
    Top = 246
    object C_LembretesLEMBRETE: TIntegerField
      FieldName = 'LEMBRETE'
      Required = True
    end
    object C_LembretesDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object C_LembretesOBS: TStringField
      FieldName = 'OBS'
      ReadOnly = True
      Size = 255
    end
    object C_LembretesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_LembretesDOMINGO: TStringField
      FieldName = 'DOMINGO'
      Size = 1
    end
    object C_LembretesSEGUNDA: TStringField
      FieldName = 'SEGUNDA'
      Size = 1
    end
    object C_LembretesTERCA: TStringField
      FieldName = 'TERCA'
      Size = 1
    end
    object C_LembretesQUARTA: TStringField
      FieldName = 'QUARTA'
      Size = 1
    end
    object C_LembretesQUINTA: TStringField
      FieldName = 'QUINTA'
      Size = 1
    end
    object C_LembretesSEXTA: TStringField
      FieldName = 'SEXTA'
      Size = 1
    end
    object C_LembretesSABADO: TStringField
      FieldName = 'SABADO'
      Size = 1
    end
    object C_LembretesTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object C_LembretesIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_Memorizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT M.*, 1 as IDFalso,'
      '       T.DESCRICAO as TIPO, T.FORMNAME, F.NOME'
      'FROM MEMORIZACOES M'
      '   INNER JOIN TIPOSORIGENS T ON (M.ORIGEM = T.ORIGEM)'
      '   inner join favorecidos f on f.favorecido = m.idgerador')
    Left = 346
    Top = 297
  end
  object C_Memorizacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_MemorizacaoProvider'
    Left = 347
    Top = 246
    object C_MemorizacaoMEMORIZACAO: TIntegerField
      FieldName = 'MEMORIZACAO'
      Origin = 'MEMORIZACOES.MEMORIZACAO'
      Required = True
    end
    object C_MemorizacaoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'MEMORIZACOES.DATA'
    end
    object C_MemorizacaoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = 'MEMORIZACOES.ORIGEM'
    end
    object C_MemorizacaoIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
      Origin = 'MEMORIZACOES.IDGERADOR'
    end
    object C_MemorizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MEMORIZACOES.DESCRICAO'
      Size = 50
    end
    object C_MemorizacaoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'MEMORIZACOES.NUMERO'
      Size = 12
    end
    object C_MemorizacaoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPOSORIGENS.TIPO'
      Size = 40
    end
    object C_MemorizacaoFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Origin = 'TIPOSORIGENS.FORMNAME'
      Size = 30
    end
    object C_MemorizacaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_MemorizacaoIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_MemorizacaoProvider: TDataSetProvider
    DataSet = Q_Memorizacao
    Constraints = True
    Left = 346
    Top = 348
  end
  object C_MemorizacaoDS: TDataSource
    DataSet = C_Memorizacao
    Left = 349
    Top = 397
  end
  object Q_LembretesMaster: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select '#39'Lembretes'#39' as Descricao, 1 as IDFalso,'
      '(select count(*) from lembretes'
      
        'where desativado = '#39'N'#39' and datainicial <=:hoje and datafinal >= ' +
        ':hoje and situacao = '#39'N'#39') as Qtde'
      'from rdb$database')
    Left = 456
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hoje'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hoje'
        ParamType = ptUnknown
      end>
    object Q_LembretesMasterDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 9
    end
    object Q_LembretesMasterIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_LembretesMasterQTDE: TIntegerField
      FieldName = 'QTDE'
    end
  end
  object Q_LembretesMasterDS: TDataSource
    DataSet = Q_LembretesMaster
    Left = 453
    Top = 249
  end
  object Q_MemorizacaoMaster: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 1 as idfalso, '#39'Memoriza'#231#245'es'#39' as Descricao,'
      '(select count(*) from MEMORIZACOES) as quant'
      'from rdb$database')
    Left = 564
    Top = 200
    object Q_MemorizacaoMasterIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_MemorizacaoMasterDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 12
    end
    object Q_MemorizacaoMasterQUANT: TIntegerField
      FieldName = 'QUANT'
    end
  end
  object Q_MemorizacaoMasterDS: TDataSource
    DataSet = Q_MemorizacaoMaster
    Left = 562
    Top = 249
  end
  object Q_Vendas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select 1 as IDFalso, '#39'Vendas                                 '#39' a' +
        's Descricao,  '
      
        '         (select sum(s.totalitens) from saidas s where s.tipopad' +
        'rao = 1 and s.situacao = '#39'N'#39') as Total'
      'from rdb$database')
    Left = 454
    Top = 300
    object Q_VendasIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_VendasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 39
    end
    object Q_VendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object Q_VendasDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select 1 as IDFalso, si.saidaitem,s.data, si.descricao, si.quant' +
        'idade, si.subtotalitem, si.saida, si.item, s.tipopadrao, tp.tipo' +
        'origem'
      'from saidas s'
      'inner join tipospadrao tp on s.tipopadrao = tp.tipopadrao'
      'inner join saidasitens si on si.saida = s.saida '
      'where s.tipopadrao = 1 and s.situacao = '#39'N'#39
      'order by s.data'
      '')
    Left = 558
    Top = 299
    object Q_VendasDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_VendasDetDATA: TDateField
      FieldName = 'DATA'
      Origin = 'SAIDAS.DATA'
    end
    object Q_VendasDetDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SAIDASITENS.DESCRICAO'
      Size = 255
    end
    object Q_VendasDetSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Origin = 'SAIDASITENS.SAIDAITEM'
      Required = True
    end
    object Q_VendasDetSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Origin = 'SAIDASITENS.SAIDA'
    end
    object Q_VendasDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SAIDASITENS.ITEM'
    end
    object Q_VendasDetTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
      Origin = 'SAIDAS.TIPOPADRAO'
    end
    object Q_VendasDetTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
      Origin = 'TIPOSPADRAO.TIPOORIGEM'
    end
    object Q_VendasDetQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDASITENS.QUANTIDADE'
    end
    object Q_VendasDetSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
      Origin = 'SAIDASITENS.SUBTOTALITEM'
    end
  end
  object Q_VendasDS: TDataSource
    DataSet = Q_Vendas
    Left = 455
    Top = 349
  end
  object Q_VendasDetDS: TDataSource
    DataSet = Q_VendasDet
    Left = 563
    Top = 347
  end
  object Q_ItensEstoqueMinimo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 1 as idfalso, '#39'Itens no Estoque M'#237'nimo'#39' as Descricao,'
      
        '(select count(*) from itens i where i.qtdeminimo > 0 and i.estoq' +
        'ue <= i.qtdeminimo) as quant'
      'from rdb$database')
    Left = 680
    Top = 200
    object Q_ItensEstoqueMinimoIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ItensEstoqueMinimoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 25
    end
    object Q_ItensEstoqueMinimoQUANT: TIntegerField
      FieldName = 'QUANT'
    end
  end
  object Q_ItensEstoqueMinimoDS: TDataSource
    DataSet = Q_ItensEstoqueMinimo
    Left = 682
    Top = 248
  end
  object Q_ItensEstoqueMinimoDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select 1 as idfalso, i.item, i.codigo, i.descricao, i.estoque/i.' +
        'fatorundvenda as estoque, i.qtdeminimo/i.fatorundvenda as minimo'
      'from itens i '
      'where i.qtdeminimo > 0 and i.estoque <= i.qtdeminimo'
      'order by i.descricao')
    Left = 680
    Top = 297
    object Q_ItensEstoqueMinimoDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ItensEstoqueMinimoDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object Q_ItensEstoqueMinimoDetCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object Q_ItensEstoqueMinimoDetDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_ItensEstoqueMinimoDetESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object Q_ItensEstoqueMinimoDetMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
  end
  object Q_ItensEstoqueMinimoDetDS: TDataSource
    DataSet = Q_ItensEstoqueMinimoDet
    Left = 682
    Top = 348
  end
  object Q_ItensEstoquePP: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 1 as idfalso, '#39'Itens em Ponto de Pedido'#39' as Descricao,'
      
        '(select count(*) from itens i where i.pontopedido > 0 and i.esto' +
        'que <= i.pontopedido) as quant'
      'from rdb$database')
    Left = 816
    Top = 200
    object Q_ItensEstoquePPIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ItensEstoquePPDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 24
    end
    object Q_ItensEstoquePPQUANT: TIntegerField
      FieldName = 'QUANT'
    end
  end
  object Q_ItensEstoquePPDS: TDataSource
    DataSet = Q_ItensEstoquePP
    Left = 818
    Top = 248
  end
  object Q_ItensEstoquePPDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select 1 as idfalso, i.item, i.codigo, i.descricao, i.estoque/i.' +
        'fatorundvenda as estoque, i.pontopedido/i.fatorundvenda as ponto' +
        'pedido'
      'from itens i'
      'where i.pontopedido > 0 and i.estoque <= i.qtdeminimo'
      'order by i.descricao')
    Left = 816
    Top = 297
    object Q_ItensEstoquePPDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
    object Q_ItensEstoquePPDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object Q_ItensEstoquePPDetCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object Q_ItensEstoquePPDetDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_ItensEstoquePPDetESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object Q_ItensEstoquePPDetPONTOPEDIDO: TFloatField
      FieldName = 'PONTOPEDIDO'
    end
  end
  object Q_ItensEstoquePPDetDS: TDataSource
    DataSet = Q_ItensEstoquePPDet
    Left = 818
    Top = 348
  end
end

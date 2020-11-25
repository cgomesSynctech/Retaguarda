inherited DMChecks: TDMChecks
  Left = 205
  Top = 143
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select c.*, f.nome from Checkexs c'
      'left join favorecidos f on c.cliente = f.favorecido')
    Left = 34
    Top = 1
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Checkexs '
      'where'
      '  CHECKEX = :CHECKEX')
    ModifySQL.Strings = (
      'update Checkexs'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  BANCO = :BANCO,'
      '  CHEQUEINI = :CHEQUEINI,'
      '  DVINI = :DVINI,'
      '  CHEQUEFIM = :CHEQUEFIM,'
      '  DVFIM = :DVFIM,'
      '  VALORCHEQUEINI = :VALORCHEQUEINI,'
      '  DATACHEQUEINI = :DATACHEQUEINI,'
      '  CONSULTA = :CONSULTA,'
      '  DATACONSULTA = :DATACONSULTA,'
      '  HORACONSULTA = :HORACONSULTA,'
      '  NOMEBANCO = :NOMEBANCO,'
      '  STATUSBANCO = :STATUSBANCO,'
      '  NOMERF = :NOMERF,'
      '  DATARF = :DATARF,'
      '  SITUACAOCPF = :SITUACAOCPF,'
      '  REG02 = :REG02,'
      '  R02MSG = :R02MSG,'
      '  REG04 = :REG04,'
      '  R04QTD = :R04QTD,'
      '  R04DATAANTIGA = :R04DATAANTIGA,'
      '  R04DATARECENTE = :R04DATARECENTE,'
      '  R04MODALIDADE = :R04MODALIDADE,'
      '  R04VALOR = :R04VALOR,'
      '  R04ORIGEM = :R04ORIGEM,'
      '  R04LOJA = :R04LOJA,'
      '  REG06 = :REG06,'
      '  R06MSG = :R06MSG,'
      '  REG08 = :REG08,'
      '  R08DATARECENTE = :R08DATARECENTE,'
      '  R08MODALIDADE = :R08MODALIDADE,'
      '  R08AVALISTA = :R08AVALISTA,'
      '  R08VALOR = :R08VALOR,'
      '  R08CONTRATO = :R08CONTRATO,'
      '  R08ORIGEM = :R08ORIGEM,'
      '  REG10 = :REG10,'
      '  R10TOTAL = :R10TOTAL,'
      '  R10DATAANTIGA = :R10DATAANTIGA,'
      '  R10DATARECENTE = :R10DATARECENTE,'
      '  REG12 = :REG12,'
      '  R12MSG = :R12MSG,'
      '  REG14 = :REG14,'
      '  R14QUANTIDADE = :R14QUANTIDADE,'
      '  R14DATARECENTE = :R14DATARECENTE,'
      '  R14BANCO = :R14BANCO,'
      '  R14BANCONOME = :R14BANCONOME,'
      '  R14AGENCIA = :R14AGENCIA,'
      '  R14LOJA = :R14LOJA,'
      '  REG16 = :REG16,'
      '  R16MSG = :R16MSG,'
      '  REG18 = :REG18,'
      '  R18QUANTIDADE = :R18QUANTIDADE,'
      '  R18DATARECENTE = :R18DATARECENTE,'
      '  R18BANCO = :R18BANCO,'
      '  R18AGENCIA = :R18AGENCIA,'
      '  R18BANCONOME = :R18BANCONOME,'
      '  REG20 = :REG20,'
      '  R20MSG = :R20MSG,'
      '  REG22 = :REG22,'
      '  R22BANCO = :R22BANCO,'
      '  R22AGENCIA = :R22AGENCIA,'
      '  R22CONTA = :R22CONTA,'
      '  R22CHEQUEINI = :R22CHEQUEINI,'
      '  R22CHEQUEFIM = :R22CHEQUEFIM,'
      '  R22MOTIVO = :R22MOTIVO,'
      '  R22DATA = :R22DATA,'
      '  R22HORA = :R22HORA,'
      '  R22FONTE = :R22FONTE,'
      '  REG24 = :REG24,'
      '  R24MSG = :R24MSG,'
      '  REG26 = :REG26,'
      '  R26BANCO = :R26BANCO,'
      '  R26AGENCIA = :R26AGENCIA,'
      '  R26CONTA = :R26CONTA,'
      '  R26CHEQUEINI = :R26CHEQUEINI,'
      '  R26CHEQUEFIM = :R26CHEQUEFIM,'
      '  R26MOTIVO = :R26MOTIVO,'
      '  R26DATA = :R26DATA,'
      '  R26FONTE = :R26FONTE,'
      '  REG28 = :REG28,'
      '  R28MSG = :R28MSG'
      'where'
      '  CHECKEX = :OLD_CHECKEX')
    InsertSQL.Strings = (
      'insert into Checkexs'
      '  (CHECKEX, CLIENTE, BANCO, CHEQUEINI, DVINI, CHEQUEFIM, DVFIM, '
      'VALORCHEQUEINI, '
      '   DATACHEQUEINI, CONSULTA, DATACONSULTA, HORACONSULTA, '
      'NOMEBANCO, STATUSBANCO, '
      '   NOMERF, DATARF, SITUACAOCPF, REG02, R02MSG, REG04, R04QTD, '
      'R04DATAANTIGA, '
      '   R04DATARECENTE, R04MODALIDADE, R04VALOR, R04ORIGEM, R04LOJA, '
      'REG06, '
      '   R06MSG, REG08, R08DATARECENTE, R08MODALIDADE, R08AVALISTA, '
      'R08VALOR, '
      '   R08CONTRATO, R08ORIGEM, REG10, R10TOTAL, R10DATAANTIGA, '
      'R10DATARECENTE, '
      
        '   REG12, R12MSG, REG14, R14QUANTIDADE, R14DATARECENTE, R14BANCO' +
        ', '
      'R14BANCONOME, '
      '   R14AGENCIA, R14LOJA, REG16, R16MSG, REG18, R18QUANTIDADE, '
      'R18DATARECENTE, '
      '   R18BANCO, R18AGENCIA, R18BANCONOME, REG20, R20MSG, REG22, '
      'R22BANCO, '
      '   R22AGENCIA, R22CONTA, R22CHEQUEINI, R22CHEQUEFIM, R22MOTIVO, '
      'R22DATA, '
      
        '   R22HORA, R22FONTE, REG24, R24MSG, REG26, R26BANCO, R26AGENCIA' +
        ', '
      'R26CONTA, '
      
        '   R26CHEQUEINI, R26CHEQUEFIM, R26MOTIVO, R26DATA, R26FONTE, REG' +
        '28, '
      'R28MSG)'
      'values'
      
        '  (:CHECKEX, :CLIENTE, :BANCO, :CHEQUEINI, :DVINI, :CHEQUEFIM, :' +
        'DVFIM, '
      '   :VALORCHEQUEINI, :DATACHEQUEINI, :CONSULTA, :DATACONSULTA, '
      ':HORACONSULTA, '
      
        '   :NOMEBANCO, :STATUSBANCO, :NOMERF, :DATARF, :SITUACAOCPF, :RE' +
        'G02, '
      ':R02MSG, '
      
        '   :REG04, :R04QTD, :R04DATAANTIGA, :R04DATARECENTE, :R04MODALID' +
        'ADE, '
      ':R04VALOR, '
      
        '   :R04ORIGEM, :R04LOJA, :REG06, :R06MSG, :REG08, :R08DATARECENT' +
        'E, '
      ':R08MODALIDADE, '
      '   :R08AVALISTA, :R08VALOR, :R08CONTRATO, :R08ORIGEM, :REG10, '
      ':R10TOTAL, '
      '   :R10DATAANTIGA, :R10DATARECENTE, :REG12, :R12MSG, :REG14, '
      ':R14QUANTIDADE, '
      
        '   :R14DATARECENTE, :R14BANCO, :R14BANCONOME, :R14AGENCIA, :R14L' +
        'OJA, '
      ':REG16, '
      '   :R16MSG, :REG18, :R18QUANTIDADE, :R18DATARECENTE, :R18BANCO, '
      ':R18AGENCIA, '
      
        '   :R18BANCONOME, :REG20, :R20MSG, :REG22, :R22BANCO, :R22AGENCI' +
        'A, '
      ':R22CONTA, '
      
        '   :R22CHEQUEINI, :R22CHEQUEFIM, :R22MOTIVO, :R22DATA, :R22HORA,' +
        ' '
      ':R22FONTE, '
      '   :REG24, :R24MSG, :REG26, :R26BANCO, :R26AGENCIA, :R26CONTA, '
      ':R26CHEQUEINI, '
      
        '   :R26CHEQUEFIM, :R26MOTIVO, :R26DATA, :R26FONTE, :REG28, :R28M' +
        'SG)')
    DeleteSQL.Strings = (
      'delete from Checkexs'
      'where'
      '  CHECKEX = :OLD_CHECKEX')
    Top = 49
  end
  inherited DMComponent: TDMComponent
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'CHECKEXS'
    Tabela_Nome = 'CHECKEXS'
    Tabela_Chave = 'CHECKEX'
  end
  inherited P_Tabela: TDataSetProvider
    Left = 35
    Top = 100
  end
  inherited C_Tabela: TClientDataSet
    Left = 39
    Top = 161
    object C_TabelaCHECKEX: TIntegerField
      FieldName = 'CHECKEX'
      Required = True
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TabelaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object C_TabelaCHEQUEINI: TStringField
      FieldName = 'CHEQUEINI'
      Size = 6
    end
    object C_TabelaDVINI: TStringField
      FieldName = 'DVINI'
      Size = 1
    end
    object C_TabelaCHEQUEFIM: TStringField
      FieldName = 'CHEQUEFIM'
      Size = 6
    end
    object C_TabelaDVFIM: TStringField
      FieldName = 'DVFIM'
      Size = 1
    end
    object C_TabelaVALORCHEQUEINI: TBCDField
      FieldName = 'VALORCHEQUEINI'
      Precision = 18
      Size = 2
    end
    object C_TabelaDATACHEQUEINI: TDateField
      FieldName = 'DATACHEQUEINI'
    end
    object C_TabelaCONSULTA: TStringField
      FieldName = 'CONSULTA'
      Size = 2
    end
    object C_TabelaDATACONSULTA: TDateField
      FieldName = 'DATACONSULTA'
    end
    object C_TabelaHORACONSULTA: TTimeField
      FieldName = 'HORACONSULTA'
    end
    object C_TabelaNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 12
    end
    object C_TabelaSTATUSBANCO: TStringField
      FieldName = 'STATUSBANCO'
      Size = 1
    end
    object C_TabelaNOMERF: TStringField
      FieldName = 'NOMERF'
      Size = 68
    end
    object C_TabelaDATARF: TDateField
      FieldName = 'DATARF'
    end
    object C_TabelaSITUACAOCPF: TStringField
      FieldName = 'SITUACAOCPF'
      Size = 2
    end
    object C_TabelaREG02: TStringField
      FieldName = 'REG02'
      Size = 1
    end
    object C_TabelaR02MSG: TStringField
      FieldName = 'R02MSG'
      Size = 40
    end
    object C_TabelaREG04: TStringField
      FieldName = 'REG04'
      Size = 1
    end
    object C_TabelaR04QTD: TIntegerField
      FieldName = 'R04QTD'
    end
    object C_TabelaR04DATAANTIGA: TDateField
      FieldName = 'R04DATAANTIGA'
    end
    object C_TabelaR04DATARECENTE: TDateField
      FieldName = 'R04DATARECENTE'
    end
    object C_TabelaR04MODALIDADE: TStringField
      FieldName = 'R04MODALIDADE'
      Size = 30
    end
    object C_TabelaR04VALOR: TBCDField
      FieldName = 'R04VALOR'
      Precision = 18
      Size = 2
    end
    object C_TabelaR04ORIGEM: TStringField
      FieldName = 'R04ORIGEM'
      Size = 30
    end
    object C_TabelaR04LOJA: TStringField
      FieldName = 'R04LOJA'
      Size = 4
    end
    object C_TabelaREG06: TStringField
      FieldName = 'REG06'
      Size = 1
    end
    object C_TabelaR06MSG: TStringField
      FieldName = 'R06MSG'
      Size = 40
    end
    object C_TabelaREG08: TStringField
      FieldName = 'REG08'
      Size = 1
    end
    object C_TabelaR08DATARECENTE: TDateField
      FieldName = 'R08DATARECENTE'
    end
    object C_TabelaR08MODALIDADE: TStringField
      FieldName = 'R08MODALIDADE'
      Size = 30
    end
    object C_TabelaR08AVALISTA: TStringField
      FieldName = 'R08AVALISTA'
      Size = 1
    end
    object C_TabelaR08VALOR: TBCDField
      FieldName = 'R08VALOR'
      Precision = 18
      Size = 2
    end
    object C_TabelaR08CONTRATO: TStringField
      FieldName = 'R08CONTRATO'
      Size = 16
    end
    object C_TabelaR08ORIGEM: TStringField
      FieldName = 'R08ORIGEM'
      Size = 30
    end
    object C_TabelaREG10: TStringField
      FieldName = 'REG10'
      Size = 1
    end
    object C_TabelaR10TOTAL: TIntegerField
      FieldName = 'R10TOTAL'
    end
    object C_TabelaR10DATAANTIGA: TDateField
      FieldName = 'R10DATAANTIGA'
    end
    object C_TabelaR10DATARECENTE: TDateField
      FieldName = 'R10DATARECENTE'
    end
    object C_TabelaREG12: TStringField
      FieldName = 'REG12'
      Size = 1
    end
    object C_TabelaR12MSG: TStringField
      FieldName = 'R12MSG'
      Size = 40
    end
    object C_TabelaREG14: TStringField
      FieldName = 'REG14'
      Size = 1
    end
    object C_TabelaR14QUANTIDADE: TIntegerField
      FieldName = 'R14QUANTIDADE'
    end
    object C_TabelaR14DATARECENTE: TDateField
      FieldName = 'R14DATARECENTE'
    end
    object C_TabelaR14BANCO: TStringField
      FieldName = 'R14BANCO'
      Size = 3
    end
    object C_TabelaR14BANCONOME: TStringField
      FieldName = 'R14BANCONOME'
      Size = 12
    end
    object C_TabelaR14AGENCIA: TStringField
      FieldName = 'R14AGENCIA'
      Size = 4
    end
    object C_TabelaR14LOJA: TStringField
      FieldName = 'R14LOJA'
      Size = 4
    end
    object C_TabelaREG16: TStringField
      FieldName = 'REG16'
      Size = 1
    end
    object C_TabelaR16MSG: TStringField
      FieldName = 'R16MSG'
      Size = 40
    end
    object C_TabelaREG18: TStringField
      FieldName = 'REG18'
      Size = 1
    end
    object C_TabelaR18QUANTIDADE: TIntegerField
      FieldName = 'R18QUANTIDADE'
    end
    object C_TabelaR18DATARECENTE: TDateField
      FieldName = 'R18DATARECENTE'
    end
    object C_TabelaR18BANCO: TStringField
      FieldName = 'R18BANCO'
      Size = 3
    end
    object C_TabelaR18AGENCIA: TStringField
      FieldName = 'R18AGENCIA'
      Size = 4
    end
    object C_TabelaR18BANCONOME: TStringField
      FieldName = 'R18BANCONOME'
      Size = 12
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaREG20: TStringField
      FieldName = 'REG20'
      Size = 1
    end
    object C_TabelaR20MSG: TStringField
      FieldName = 'R20MSG'
      Size = 40
    end
    object C_TabelaREG22: TStringField
      FieldName = 'REG22'
      Size = 1
    end
    object C_TabelaR22BANCO: TStringField
      FieldName = 'R22BANCO'
      Size = 3
    end
    object C_TabelaR22AGENCIA: TStringField
      FieldName = 'R22AGENCIA'
      Size = 4
    end
    object C_TabelaR22CONTA: TStringField
      FieldName = 'R22CONTA'
      Size = 10
    end
    object C_TabelaR22CHEQUEINI: TStringField
      FieldName = 'R22CHEQUEINI'
      Size = 6
    end
    object C_TabelaR22CHEQUEFIM: TStringField
      FieldName = 'R22CHEQUEFIM'
      Size = 6
    end
    object C_TabelaR22MOTIVO: TStringField
      FieldName = 'R22MOTIVO'
      Size = 12
    end
    object C_TabelaR22DATA: TDateField
      FieldName = 'R22DATA'
    end
    object C_TabelaR22HORA: TTimeField
      FieldName = 'R22HORA'
    end
    object C_TabelaR22FONTE: TStringField
      FieldName = 'R22FONTE'
      Size = 4
    end
    object C_TabelaREG24: TStringField
      FieldName = 'REG24'
      Size = 1
    end
    object C_TabelaR24MSG: TStringField
      FieldName = 'R24MSG'
      Size = 40
    end
    object C_TabelaREG26: TStringField
      FieldName = 'REG26'
      Size = 1
    end
    object C_TabelaR26BANCO: TStringField
      FieldName = 'R26BANCO'
      Size = 3
    end
    object C_TabelaR26AGENCIA: TStringField
      FieldName = 'R26AGENCIA'
      Size = 4
    end
    object C_TabelaR26CONTA: TStringField
      FieldName = 'R26CONTA'
      Size = 10
    end
    object C_TabelaR26CHEQUEINI: TStringField
      FieldName = 'R26CHEQUEINI'
      Size = 6
    end
    object C_TabelaR26CHEQUEFIM: TStringField
      FieldName = 'R26CHEQUEFIM'
      Size = 7
    end
    object C_TabelaR26MOTIVO: TStringField
      FieldName = 'R26MOTIVO'
      Size = 12
    end
    object C_TabelaR26DATA: TDateField
      FieldName = 'R26DATA'
    end
    object C_TabelaR26FONTE: TStringField
      FieldName = 'R26FONTE'
      Size = 4
    end
    object C_TabelaREG28: TStringField
      FieldName = 'REG28'
      Size = 1
    end
    object C_TabelaR28MSG: TStringField
      FieldName = 'R28MSG'
      Size = 40
    end
    object C_TabelaCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 35
    Top = 210
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 90
    Top = 105
  end
  object Q_Relatorio: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.*, f.nome, f.cpf_cnpj, f.pessoa_fj from Checkexs c'
      'left join favorecidos f on c.cliente = f.favorecido')
    Left = 199
    Top = 6
  end
  object C_Relatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Relatorio'
    Left = 197
    Top = 58
    object C_RelatorioCHECKEX: TIntegerField
      FieldName = 'CHECKEX'
      Required = True
    end
    object C_RelatorioCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_RelatorioBANCO: TStringField
      FieldName = 'BANCO'
      Size = 3
    end
    object C_RelatorioCHEQUEINI: TStringField
      FieldName = 'CHEQUEINI'
      Size = 6
    end
    object C_RelatorioDVINI: TStringField
      FieldName = 'DVINI'
      Size = 1
    end
    object C_RelatorioCHEQUEFIM: TStringField
      FieldName = 'CHEQUEFIM'
      Size = 6
    end
    object C_RelatorioDVFIM: TStringField
      FieldName = 'DVFIM'
      Size = 1
    end
    object C_RelatorioVALORCHEQUEINI: TBCDField
      FieldName = 'VALORCHEQUEINI'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object C_RelatorioDATACHEQUEINI: TDateField
      FieldName = 'DATACHEQUEINI'
    end
    object C_RelatorioCONSULTA: TStringField
      FieldName = 'CONSULTA'
      Size = 2
    end
    object C_RelatorioDATACONSULTA: TDateField
      FieldName = 'DATACONSULTA'
    end
    object C_RelatorioHORACONSULTA: TTimeField
      FieldName = 'HORACONSULTA'
      EditMask = '!90:00:00>LL;1;_'
    end
    object C_RelatorioNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 12
    end
    object C_RelatorioSTATUSBANCO: TStringField
      FieldName = 'STATUSBANCO'
      Size = 1
    end
    object C_RelatorioNOMERF: TStringField
      FieldName = 'NOMERF'
      Size = 68
    end
    object C_RelatorioDATARF: TDateField
      FieldName = 'DATARF'
    end
    object C_RelatorioSITUACAOCPF: TStringField
      FieldName = 'SITUACAOCPF'
      Size = 2
    end
    object C_RelatorioREG02: TStringField
      FieldName = 'REG02'
      Size = 1
    end
    object C_RelatorioR02MSG: TStringField
      FieldName = 'R02MSG'
      Size = 40
    end
    object C_RelatorioREG04: TStringField
      FieldName = 'REG04'
      Size = 1
    end
    object C_RelatorioR04QTD: TIntegerField
      FieldName = 'R04QTD'
    end
    object C_RelatorioR04DATAANTIGA: TDateField
      FieldName = 'R04DATAANTIGA'
    end
    object C_RelatorioR04DATARECENTE: TDateField
      FieldName = 'R04DATARECENTE'
    end
    object C_RelatorioR04MODALIDADE: TStringField
      FieldName = 'R04MODALIDADE'
      Size = 30
    end
    object C_RelatorioR04VALOR: TBCDField
      FieldName = 'R04VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object C_RelatorioR04ORIGEM: TStringField
      FieldName = 'R04ORIGEM'
      Size = 30
    end
    object C_RelatorioR04LOJA: TStringField
      FieldName = 'R04LOJA'
      Size = 4
    end
    object C_RelatorioREG06: TStringField
      FieldName = 'REG06'
      Size = 1
    end
    object C_RelatorioR06MSG: TStringField
      FieldName = 'R06MSG'
      Size = 40
    end
    object C_RelatorioREG08: TStringField
      FieldName = 'REG08'
      Size = 1
    end
    object C_RelatorioR08DATARECENTE: TDateField
      FieldName = 'R08DATARECENTE'
    end
    object C_RelatorioR08MODALIDADE: TStringField
      FieldName = 'R08MODALIDADE'
      Size = 30
    end
    object C_RelatorioR08AVALISTA: TStringField
      FieldName = 'R08AVALISTA'
      Size = 1
    end
    object C_RelatorioR08VALOR: TBCDField
      FieldName = 'R08VALOR'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object C_RelatorioR08CONTRATO: TStringField
      FieldName = 'R08CONTRATO'
      Size = 16
    end
    object C_RelatorioR08ORIGEM: TStringField
      FieldName = 'R08ORIGEM'
      Size = 30
    end
    object C_RelatorioREG10: TStringField
      FieldName = 'REG10'
      Size = 1
    end
    object C_RelatorioR10TOTAL: TIntegerField
      FieldName = 'R10TOTAL'
    end
    object C_RelatorioR10DATAANTIGA: TDateField
      FieldName = 'R10DATAANTIGA'
    end
    object C_RelatorioR10DATARECENTE: TDateField
      FieldName = 'R10DATARECENTE'
    end
    object C_RelatorioREG12: TStringField
      FieldName = 'REG12'
      Size = 1
    end
    object C_RelatorioR12MSG: TStringField
      FieldName = 'R12MSG'
      Size = 40
    end
    object C_RelatorioREG14: TStringField
      FieldName = 'REG14'
      Size = 1
    end
    object C_RelatorioR14QUANTIDADE: TIntegerField
      FieldName = 'R14QUANTIDADE'
    end
    object C_RelatorioR14DATARECENTE: TDateField
      FieldName = 'R14DATARECENTE'
    end
    object C_RelatorioR14BANCO: TStringField
      FieldName = 'R14BANCO'
      Size = 3
    end
    object C_RelatorioR14BANCONOME: TStringField
      FieldName = 'R14BANCONOME'
      Size = 12
    end
    object C_RelatorioR14AGENCIA: TStringField
      FieldName = 'R14AGENCIA'
      Size = 4
    end
    object C_RelatorioR14LOJA: TStringField
      FieldName = 'R14LOJA'
      Size = 4
    end
    object C_RelatorioREG16: TStringField
      FieldName = 'REG16'
      Size = 1
    end
    object C_RelatorioR16MSG: TStringField
      FieldName = 'R16MSG'
      Size = 40
    end
    object C_RelatorioREG18: TStringField
      FieldName = 'REG18'
      Size = 1
    end
    object C_RelatorioR18QUANTIDADE: TIntegerField
      FieldName = 'R18QUANTIDADE'
    end
    object C_RelatorioR18DATARECENTE: TDateField
      FieldName = 'R18DATARECENTE'
    end
    object C_RelatorioR18BANCO: TStringField
      FieldName = 'R18BANCO'
      Size = 3
    end
    object C_RelatorioR18AGENCIA: TStringField
      FieldName = 'R18AGENCIA'
      Size = 4
    end
    object C_RelatorioR18BANCONOME: TStringField
      FieldName = 'R18BANCONOME'
      Size = 12
    end
    object C_RelatorioREG20: TStringField
      FieldName = 'REG20'
      Size = 1
    end
    object C_RelatorioR20MSG: TStringField
      FieldName = 'R20MSG'
      Size = 40
    end
    object C_RelatorioREG22: TStringField
      FieldName = 'REG22'
      Size = 1
    end
    object C_RelatorioR22BANCO: TStringField
      FieldName = 'R22BANCO'
      Size = 3
    end
    object C_RelatorioR22AGENCIA: TStringField
      FieldName = 'R22AGENCIA'
      Size = 4
    end
    object C_RelatorioR22CONTA: TStringField
      FieldName = 'R22CONTA'
      Size = 10
    end
    object C_RelatorioR22CHEQUEINI: TStringField
      FieldName = 'R22CHEQUEINI'
      Size = 6
    end
    object C_RelatorioR22CHEQUEFIM: TStringField
      FieldName = 'R22CHEQUEFIM'
      Size = 6
    end
    object C_RelatorioR22MOTIVO: TStringField
      FieldName = 'R22MOTIVO'
      Size = 12
    end
    object C_RelatorioR22DATA: TDateField
      FieldName = 'R22DATA'
    end
    object C_RelatorioR22HORA: TTimeField
      FieldName = 'R22HORA'
      EditMask = '!90:00:00>LL;1;_'
    end
    object C_RelatorioR22FONTE: TStringField
      FieldName = 'R22FONTE'
      Size = 4
    end
    object C_RelatorioREG24: TStringField
      FieldName = 'REG24'
      Size = 1
    end
    object C_RelatorioR24MSG: TStringField
      FieldName = 'R24MSG'
      Size = 40
    end
    object C_RelatorioREG26: TStringField
      FieldName = 'REG26'
      Size = 1
    end
    object C_RelatorioR26BANCO: TStringField
      FieldName = 'R26BANCO'
      Size = 3
    end
    object C_RelatorioR26AGENCIA: TStringField
      FieldName = 'R26AGENCIA'
      Size = 4
    end
    object C_RelatorioR26CONTA: TStringField
      FieldName = 'R26CONTA'
      Size = 10
    end
    object C_RelatorioR26CHEQUEINI: TStringField
      FieldName = 'R26CHEQUEINI'
      Size = 6
    end
    object C_RelatorioR26CHEQUEFIM: TStringField
      FieldName = 'R26CHEQUEFIM'
      Size = 7
    end
    object C_RelatorioR26MOTIVO: TStringField
      FieldName = 'R26MOTIVO'
      Size = 12
    end
    object C_RelatorioR26DATA: TDateField
      FieldName = 'R26DATA'
    end
    object C_RelatorioR26FONTE: TStringField
      FieldName = 'R26FONTE'
      Size = 4
    end
    object C_RelatorioREG28: TStringField
      FieldName = 'REG28'
      Size = 1
    end
    object C_RelatorioR28MSG: TStringField
      FieldName = 'R28MSG'
      Size = 40
    end
    object C_RelatorioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_RelatorioCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_RelatorioPESSOA_FJ: TStringField
      FieldName = 'PESSOA_FJ'
      Size = 1
    end
    object C_RelatorioCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
  end
  object P_Relatorio: TDataSetProvider
    DataSet = Q_Relatorio
    Constraints = True
    Left = 201
    Top = 111
  end
  object C_RelatorioDS: TDataSource
    DataSet = C_Relatorio
    Left = 197
    Top = 165
  end
  object P_Cheques: TDataSetProvider
    DataSet = Q_Cheques
    Constraints = True
    Left = 276
    Top = 108
  end
  object C_Cheques: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Cheques'
    Left = 277
    Top = 56
    object C_ChequesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
  end
  object Q_Cheques: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select dd.iddoc'
      'from depositosdoc dd'
      'inner join depositos d on dd.deposito = d.deposito'
      
        'inner join formaspagamento fp on dd.formapagamento = fp.formapag' +
        'amento'
      'inner join favorecidos f on d.favorecido = f.favorecido'
      'where fp.especie = 1')
    Left = 274
    Top = 6
  end
end

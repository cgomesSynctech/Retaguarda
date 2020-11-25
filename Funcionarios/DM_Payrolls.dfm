inherited DMPayrolls: TDMPayrolls
  Left = 188
  Top = 66
  Height = 364
  Width = 455
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select p.*, f.nome from Payrolls p'
      'left join Favorecidos f on f.favorecido = p.favorecido'
      ''
      ''
      '')
    Left = 34
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Payrolls '
      'where'
      '  PAYROLL = :PAYROLL')
    ModifySQL.Strings = (
      'update Payrolls'
      'set'
      '  DATAINICIO = :DATAINICIO,'
      '  DATAFIM = :DATAFIM,'
      '  DESCRICAO = :DESCRICAO,'
      '  STATUS = :STATUS,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO,'
      '  VALORLIQUIDO = :VALORLIQUIDO,'
      '  VALORBRUTO = :VALORBRUTO,'
      '  DESATIVADO = :DESATIVADO'
      'where'
      '  PAYROLL = :OLD_PAYROLL')
    InsertSQL.Strings = (
      'insert into Payrolls'
      
        '  (PAYROLL, DATAINICIO, DATAFIM, DESCRICAO, STATUS, FAVORECIDO, ' +
        'DATAPAGAMENTO, '
      '   VALORLIQUIDO, VALORBRUTO, DESATIVADO)'
      'values'
      
        '  (:PAYROLL, :DATAINICIO, :DATAFIM, :DESCRICAO, :STATUS, :FAVORE' +
        'CIDO, :DATAPAGAMENTO, '
      '   :VALORLIQUIDO, :VALORBRUTO, :DESATIVADO)')
    DeleteSQL.Strings = (
      'delete from Payrolls'
      'where'
      '  PAYROLL = :OLD_PAYROLL')
    Top = 53
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'PAYROLLS'
    Tabela_Nome = 'PAYROLLS'
    Tabela_Chave = 'PAYROLL'
    GenerateIDFor.Strings = (
      'C_Funcionarios=PAYROLLFUNC'
      'C_PayRollsPayItens=PAYROLLPAYITEM')
    Top = 268
  end
  inherited C_Tabela: TClientDataSet
    Left = 37
    object C_TabelaPAYROLL: TIntegerField
      FieldName = 'PAYROLL'
      Origin = 'PAYROLLS.PAYROLL'
      Required = True
    end
    object C_TabelaDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'PAYROLLS.DATAINICIO'
    end
    object C_TabelaDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = 'PAYROLLS.DATAFIM'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAYROLLS.DESCRICAO'
      Size = 50
    end
    object C_TabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'PAYROLLS.STATUS'
      Size = 1
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'PAYROLLS.FAVORECIDO'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'PAYROLLS.DATAPAGAMENTO'
    end
    object C_TabelaVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      Origin = 'PAYROLLS.VALORLIQUIDO'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORBRUTO: TBCDField
      FieldName = 'VALORBRUTO'
      Origin = 'PAYROLLS.VALORBRUTO'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'PAYROLLS.DESATIVADO'
      Size = 1
    end
    object C_TabelaQ_Funcionarios: TDataSetField
      FieldName = 'Q_Funcionarios'
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object Q_Funcionarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'Select p.*, f.Nome, c.Descricao as DescCargo'
      'from PayrollsFunc p '
      '        INNER JOIN Favorecidos f ON f.Favorecido = p.Funcionario'
      '        LEFT JOIN Cargos c ON c.Cargo = f.Cargo'
      'Where Payroll = :PAYROLL')
    UpdateObject = U_Funcionarios
    Left = 171
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAYROLL'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Funcionarios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from PayrollsFunc '
      'where'
      '  PAYROLLFUNC = :PAYROLLFUNC')
    ModifySQL.Strings = (
      'update PayrollsFunc'
      'set'
      '  PAYROLL = :PAYROLL,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  VALORBRUTO = :VALORBRUTO,'
      '  VALORLIQUIDO = :VALORLIQUIDO,'
      '  IDAPAGAR = :IDAPAGAR,'
      '  QTDHORAS = :QTDHORAS,'
      '  PAGOESTEANO = :PAGOESTEANO,'
      '  PERIODICIDADE = :PERIODICIDADE,'
      '  ULTIMOPGTO = :ULTIMOPGTO,'
      '  DATA = :DATA,'
      '  VALORCOMISSAO = :VALORCOMISSAO,'
      '  VALORPAGO = :VALORPAGO,'
      '  QTDHORAS_USER = :QTDHORAS_USER'
      'where'
      '  PAYROLLFUNC = :OLD_PAYROLLFUNC')
    InsertSQL.Strings = (
      'insert into PayrollsFunc'
      
        '  (PAYROLLFUNC, PAYROLL, FUNCIONARIO, VALORBRUTO, VALORLIQUIDO, ' +
        'IDAPAGAR, '
      
        '   QTDHORAS, PAGOESTEANO, PERIODICIDADE, ULTIMOPGTO, DATA, VALOR' +
        'COMISSAO, '
      '   VALORPAGO, QTDHORAS_USER)'
      'values'
      
        '  (:PAYROLLFUNC, :PAYROLL, :FUNCIONARIO, :VALORBRUTO, :VALORLIQU' +
        'IDO, :IDAPAGAR, '
      
        '   :QTDHORAS, :PAGOESTEANO, :PERIODICIDADE, :ULTIMOPGTO, :DATA, ' +
        ':VALORCOMISSAO, '
      '   :VALORPAGO, :QTDHORAS_USER)')
    DeleteSQL.Strings = (
      'delete from PayrollsFunc'
      'where'
      '  PAYROLLFUNC = :OLD_PAYROLLFUNC')
    Left = 163
    Top = 51
  end
  object C_Funcionarios: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Funcionarios
    Params = <>
    OnCalcFields = C_FuncionariosCalcFields
    OnNewRecord = C_FuncionariosNewRecord
    Left = 164
    Top = 99
    object C_FuncionariosPAYROLLFUNC: TIntegerField
      FieldName = 'PAYROLLFUNC'
      Origin = 'PAYROLLSFUNC.PAYROLLFUNC'
      Required = True
    end
    object C_FuncionariosPAYROLL: TIntegerField
      FieldName = 'PAYROLL'
      Origin = 'PAYROLLSFUNC.PAYROLL'
    end
    object C_FuncionariosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'PAYROLLSFUNC.FUNCIONARIO'
    end
    object C_FuncionariosVALORBRUTO: TBCDField
      FieldName = 'VALORBRUTO'
      Origin = 'PAYROLLSFUNC.VALORBRUTO'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      Origin = 'PAYROLLSFUNC.VALORLIQUIDO'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosIDAPAGAR: TIntegerField
      FieldName = 'IDAPAGAR'
      Origin = 'PAYROLLSFUNC.IDAPAGAR'
    end
    object C_FuncionariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_FuncionariosDESCCARGO: TStringField
      FieldName = 'DESCCARGO'
      Origin = 'CARGOS.DESCCARGO'
      Size = 30
    end
    object C_FuncionariosPAGOESTEANO: TBCDField
      DisplayWidth = 19
      FieldName = 'PAGOESTEANO'
      Origin = 'PAYROLLSFUNC.PAGOESTEANO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Origin = 'PAYROLLSFUNC.PERIODICIDADE'
      Size = 1
    end
    object C_FuncionariosULTIMOPGTO: TDateField
      FieldName = 'ULTIMOPGTO'
      Origin = 'PAYROLLSFUNC.ULTIMOPGTO'
    end
    object C_FuncionariosQ_PayRollsPayItensDS: TDataSetField
      FieldName = 'Q_PayRollsPayItensDS'
    end
    object C_Funcionarios_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_FuncionariosDATA: TDateField
      FieldName = 'DATA'
      Origin = 'PAYROLLSFUNC.DATA'
    end
    object C_FuncionariosVALORCOMISSAO: TBCDField
      FieldName = 'VALORCOMISSAO'
      Origin = 'PAYROLLSFUNC.VALORCOMISSAO'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosFigura: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Figura'
    end
    object C_FuncionariosVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Origin = 'PAYROLLSFUNC.VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosPago: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Pago'
    end
    object C_FuncionariosQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
      Origin = 'PAYROLLSFUNC.QTDHORAS'
      OnChange = C_FuncionariosQTDHORASChange
    end
    object C_FuncionariosQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Origin = 'PAYROLLSFUNC.QTDHORAS_USER'
      Size = 6
    end
  end
  object C_FuncionariosDS: TDataSource
    DataSet = C_Funcionarios
    Left = 163
    Top = 146
  end
  object Q_PayItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select p.*, pi.*'
      
        'from PayrollsFuncsItens p INNER JOIN PayrollItens pi ON p.Payrol' +
        'lItem = pi.PayrollItem'
      'Where PayrollFunc = :PAYROLLFUNC')
    Left = 253
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PAYROLLFUNC'
        ParamType = ptUnknown
      end>
  end
  object C_PayItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayItens'
    Left = 253
    Top = 100
    object C_PayItensPAYROLLFUNCITENS: TIntegerField
      FieldName = 'PAYROLLFUNCITENS'
      Required = True
    end
    object C_PayItensPAYROLLFUNC: TIntegerField
      FieldName = 'PAYROLLFUNC'
    end
    object C_PayItensPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
    end
    object C_PayItensVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_PayItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_PayItensTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
    end
    object C_PayItensCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_PayItensLIMITE: TBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object C_PayItensAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
    end
    object C_PayItensIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Size = 80
    end
    object C_PayItensCONTALIABILITY: TIntegerField
      FieldName = 'CONTALIABILITY'
    end
    object C_PayItensTIPOWAGE: TStringField
      FieldName = 'TIPOWAGE'
      Size = 1
    end
    object C_PayItensDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
  end
  object P_PayItens: TDataSetProvider
    DataSet = Q_PayItens
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    Left = 254
    Top = 50
  end
  object Q_PayRollsPayItensDS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_FuncionariosDS
    SQL.Strings = (
      
        'select pi.*, p.descricao, p.tipopayroll, p.agencia, p.identifica' +
        'cao, t.descricao as DescTipoPayroll, p.Conta'
      'from PayRollsPayItens pi'
      
        '        inner join PayRollItens p on pi.payrollitem = p.payrolli' +
        'tem'
      
        '        inner join TiposPayroll t on t.tipopayroll = p.tipopayro' +
        'll'
      'where payrollfunc = :payrollfunc')
    UpdateObject = U_PayRollsPayItens
    Left = 352
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAYROLLFUNC'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_PayRollsPayItens: TClientDataSet
    Aggregates = <>
    DataSetField = C_FuncionariosQ_PayRollsPayItensDS
    Params = <>
    OnNewRecord = C_PayRollsPayItensNewRecord
    Left = 352
    Top = 99
    object C_PayRollsPayItensPAYROLLPAYITEM: TIntegerField
      FieldName = 'PAYROLLPAYITEM'
      Origin = 'PAYROLLSPAYITENS.PAYROLLPAYITEM'
      Required = True
    end
    object C_PayRollsPayItensPAYROLLFUNC: TIntegerField
      FieldName = 'PAYROLLFUNC'
      Origin = 'PAYROLLSPAYITENS.PAYROLLFUNC'
    end
    object C_PayRollsPayItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PAYROLLSPAYITENS.ITEM'
    end
    object C_PayRollsPayItensPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'PAYROLLSPAYITENS.PAYROLLITEM'
    end
    object C_PayRollsPayItensVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'PAYROLLSPAYITENS.VALOR'
      Precision = 18
      Size = 2
    end
    object C_PayRollsPayItensCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'PAYROLLSPAYITENS.CONTA'
    end
    object C_PayRollsPayItensPRODUTIVIDADE: TStringField
      FieldName = 'PRODUTIVIDADE'
      Origin = 'PAYROLLSPAYITENS.PRODUTIVIDADE'
      Size = 1
    end
    object C_PayRollsPayItensMETODOADIC: TIntegerField
      FieldName = 'METODOADIC'
      Origin = 'PAYROLLSPAYITENS.METODOADIC'
    end
    object C_PayRollsPayItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAYROLLITENS.DESCRICAO'
      Size = 30
    end
    object C_PayRollsPayItensTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'PAYROLLSPAYITENS.TIPO'
      Size = 1
    end
    object C_PayRollsPayItensTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      Origin = 'PAYROLLITENS.TIPOPAYROLL'
    end
    object C_PayRollsPayItensVALORBASE: TBCDField
      FieldName = 'VALORBASE'
      Origin = 'PAYROLLSPAYITENS.VALORBASE'
      Precision = 18
      Size = 2
    end
    object C_PayRollsPayItensFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
      Origin = 'PAYROLLSPAYITENS.FUNCPAYITEM'
    end
    object C_PayRollsPayItensAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Origin = 'PAYROLLITENS.AGENCIA'
    end
    object C_PayRollsPayItensIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Origin = 'PAYROLLITENS.IDENTIFICACAO'
      Size = 80
    end
    object C_PayRollsPayItensDESCTIPOPAYROLL: TStringField
      FieldName = 'DESCTIPOPAYROLL'
      Origin = 'TIPOSPAYROLL.DESCTIPOPAYROLL'
      Size = 30
    end
    object C_PayRollsPayItensQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
      Origin = 'PAYROLLSPAYITENS.QTDHORAS'
      OnChange = C_PayRollsPayItensQTDHORASChange
    end
    object C_PayRollsPayItensQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Size = 6
    end
  end
  object U_PayRollsPayItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from PayRollsPayItens '
      'where'
      '  PAYROLLPAYITEM = :PAYROLLPAYITEM')
    ModifySQL.Strings = (
      'update PayRollsPayItens'
      'set'
      '  PAYROLLFUNC = :PAYROLLFUNC,'
      '  FUNCPAYITEM = :FUNCPAYITEM,'
      '  PAYROLLITEM = :PAYROLLITEM,'
      '  VALOR = :VALOR,'
      '  VALORBASE = :VALORBASE,'
      '  QTDHORAS = :QTDHORAS,'
      '  CONTA = :CONTA,'
      '  PRODUTIVIDADE = :PRODUTIVIDADE,'
      '  METODOADIC = :METODOADIC,'
      '  TIPO = :TIPO,'
      '  ITEM = :ITEM,'
      '  QTDHORAS_USER = :QTDHORAS_USER'
      'where'
      '  PAYROLLPAYITEM = :OLD_PAYROLLPAYITEM')
    InsertSQL.Strings = (
      'insert into PayRollsPayItens'
      
        '  (PAYROLLPAYITEM, PAYROLLFUNC, FUNCPAYITEM, PAYROLLITEM, VALOR,' +
        ' VALORBASE, '
      
        '   QTDHORAS, CONTA, PRODUTIVIDADE, METODOADIC, TIPO, ITEM, QTDHO' +
        'RAS_USER)'
      'values'
      
        '  (:PAYROLLPAYITEM, :PAYROLLFUNC, :FUNCPAYITEM, :PAYROLLITEM, :V' +
        'ALOR, :VALORBASE, '
      
        '   :QTDHORAS, :CONTA, :PRODUTIVIDADE, :METODOADIC, :TIPO, :ITEM,' +
        ' :QTDHORAS_USER)')
    DeleteSQL.Strings = (
      'delete from PayRollsPayItens'
      'where'
      '  PAYROLLPAYITEM = :OLD_PAYROLLPAYITEM')
    Left = 352
    Top = 50
  end
  object C_PayRollsPayItensDS: TDataSource
    DataSet = C_PayRollsPayItens
    Left = 353
    Top = 147
  end
  object Q_FuncionariosDS: TDataSource
    DataSet = Q_Funcionarios
    Left = 163
    Top = 195
  end
end

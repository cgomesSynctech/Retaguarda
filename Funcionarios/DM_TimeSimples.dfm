inherited DMTimeSimples: TDMTimeSimples
  Left = 243
  Top = 151
  Height = 359
  Width = 369
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select '#9'pf.*, p.Descricao as Desc_Payroll, i.Numero as NumInvoic' +
        'e, '
      #9'f.Nome, fu.Nome as NomeFunc'
      #9
      'from ProducoesFunc pf '
      '        LEFT JOIN Payrolls p ON pf.Payroll = p.Payroll'
      '        LEFT JOIN SaidasItens si ON si.SaidaItem = pf.SaidaItem'
      '        LEFT JOIN Saidas i ON i.Saida = si.Saida'
      '        LEFT JOIN Favorecidos f ON f.Favorecido = pf.Favorecido'
      
        '        LEFT JOIN Favorecidos fu ON fu.Favorecido = pf.Funcionar' +
        'io')
    Top = 2
  end
  inherited Q_MasterDS: TDataSource
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ProducoesFunc '
      'where'
      '  PRODUCAO = :PRODUCAO')
    ModifySQL.Strings = (
      'update ProducoesFunc'
      'set'
      '  DATAINICIO = :DATAINICIO,'
      '  DATAFIM = :DATAFIM,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  CONTRATO = :CONTRATO,'
      '  ITEM = :ITEM,'
      '  FUNCPAYITEM = :FUNCPAYITEM,'
      '  QTDHORAS = :QTDHORAS,'
      '  VALORHORA = :VALORHORA,'
      '  VALORCONTRATO = :VALORCONTRATO,'
      '  PAYROLL = :PAYROLL,'
      '  SAIDAITEM = :SAIDAITEM,'
      '  CHAVECLIENTE = :CHAVECLIENTE,'
      '  CHAVEFUNC = :CHAVEFUNC,'
      '  NAOCOBRAR = :NAOCOBRAR,'
      '  QTDHORAS_USER = :QTDHORAS_USER,'
      '  METODOCLIENTE = :METODOCLIENTE,'
      '  DESPESAS = :DESPESAS'
      'where'
      '  PRODUCAO = :OLD_PRODUCAO')
    InsertSQL.Strings = (
      'insert into ProducoesFunc'
      
        '  (PRODUCAO, DATAINICIO, DATAFIM, FAVORECIDO, FUNCIONARIO, CONTR' +
        'ATO, ITEM, '
      
        '   FUNCPAYITEM, QTDHORAS, VALORHORA, VALORCONTRATO, PAYROLL, SAI' +
        'DAITEM, '
      
        '   CHAVECLIENTE, CHAVEFUNC, NAOCOBRAR, QTDHORAS_USER, METODOCLIE' +
        'NTE, DESPESAS)'
      'values'
      
        '  (:PRODUCAO, :DATAINICIO, :DATAFIM, :FAVORECIDO, :FUNCIONARIO, ' +
        ':CONTRATO, '
      
        '   :ITEM, :FUNCPAYITEM, :QTDHORAS, :VALORHORA, :VALORCONTRATO, :' +
        'PAYROLL, '
      
        '   :SAIDAITEM, :CHAVECLIENTE, :CHAVEFUNC, :NAOCOBRAR, :QTDHORAS_' +
        'USER, :METODOCLIENTE, '
      '   :DESPESAS)')
    DeleteSQL.Strings = (
      'delete from ProducoesFunc'
      'where'
      '  PRODUCAO = :OLD_PRODUCAO')
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'ProducoesFunc'
    Tabela_Nome = 'ProducoesFunc'
    Tabela_Chave = 'pf.Producao'
    Tabela_ChaveAlias = 'Producao'
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 34
    object C_TabelaPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
      Origin = 'PRODUCOESFUNC.PRODUCAO'
      Required = True
    end
    object C_TabelaDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'PRODUCOESFUNC.DATAINICIO'
    end
    object C_TabelaDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = 'PRODUCOESFUNC.DATAFIM'
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'PRODUCOESFUNC.FAVORECIDO'
      OnChange = C_TabelaFAVORECIDOChange
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'PRODUCOESFUNC.FUNCIONARIO'
      OnChange = C_TabelaFUNCIONARIOChange
    end
    object C_TabelaCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = 'PRODUCOESFUNC.CONTRATO'
      OnChange = C_TabelaCONTRATOChange
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUCOESFUNC.ITEM'
      OnChange = C_TabelaITEMChange
    end
    object C_TabelaQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
      OnChange = C_TabelaQTDHORASChange
    end
    object C_TabelaFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
      Origin = 'PRODUCOESFUNC.FUNCPAYITEM'
      OnChange = C_TabelaFUNCPAYITEMChange
    end
    object C_TabelaVALORHORA: TBCDField
      FieldName = 'VALORHORA'
      Origin = 'PRODUCOESFUNC.VALORHORA'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORCONTRATO: TBCDField
      FieldName = 'VALORCONTRATO'
      Origin = 'PRODUCOESFUNC.VALORCONTRATO'
      Precision = 18
      Size = 2
    end
    object C_TabelaPAYROLL: TIntegerField
      FieldName = 'PAYROLL'
      Origin = 'PRODUCOESFUNC.PAYROLL'
    end
    object C_TabelaDESC_PAYROLL: TStringField
      FieldName = 'DESC_PAYROLL'
      Origin = 'PAYROLLS.DESC_PAYROLL'
      Size = 50
    end
    object C_TabelaNUMINVOICE: TStringField
      FieldName = 'NUMINVOICE'
      Origin = 'SAIDAS.NUMINVOICE'
      Size = 12
    end
    object C_TabelalkItem: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'lkItem'
      LookupDataSet = C_Itens
      LookupKeyFields = 'ITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ITEM'
      Size = 40
      Lookup = True
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaCHAVECLIENTE: TIntegerField
      FieldName = 'CHAVECLIENTE'
      Origin = 'PRODUCOESFUNC.CHAVECLIENTE'
    end
    object C_TabelaCHAVEFUNC: TIntegerField
      FieldName = 'CHAVEFUNC'
      Origin = 'PRODUCOESFUNC.CHAVEFUNC'
    end
    object C_TabelalkPayItem: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'lkPayItem'
      LookupDataSet = C_PayrollItens
      LookupKeyFields = 'PAYROLLITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FUNCPAYITEM'
      Size = 40
      Lookup = True
    end
    object C_TabelaSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Origin = 'PRODUCOESFUNC.SAIDAITEM'
    end
    object C_TabelaAGRUPAMENTO: TIntegerField
      FieldName = 'AGRUPAMENTO'
      Origin = 'PRODUCOESFUNC.AGRUPAMENTO'
    end
    object C_TabelaNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Origin = 'FAVORECIDOS.NOMEFUNC'
      Size = 50
    end
    object C_TabelaNAOCOBRAR: TStringField
      FieldName = 'NAOCOBRAR'
      Origin = 'PRODUCOESFUNC.NAOCOBRAR'
      Size = 1
    end
    object C_TabelaTotalHora: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalHora'
      Calculated = True
    end
    object C_TabelaTotalContrato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalContrato'
      Calculated = True
    end
    object C_TabelaQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      OnChange = C_TabelaQTDHORAS_USERChange
      Size = 6
    end
    object C_TabelaMETODOCLIENTE: TStringField
      FieldName = 'METODOCLIENTE'
      Size = 1
    end
    object C_TabelaDESPESAS: TBCDField
      FieldName = 'DESPESAS'
      Precision = 18
      Size = 2
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Item, Codigo, Descricao, HasChildren'
      'FROM ITENS'
      'WHERE DESATIVADO = '#39'N'#39' and TIPOITEM = 3')
    UniDirectional = True
    Left = 152
    Top = 2
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 152
    Top = 51
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 152
    Top = 101
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ItensHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Origin = 'ITENS.HASCHILDREN'
      Size = 1
    end
  end
  object C_ContratosDS: TDataSource
    DataSet = C_Contratos
    Left = 219
    Top = 149
  end
  object Q_Contratos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_ContratosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.*, f.Funcionario '
      
        'from ContratosFav c LEFT JOIN FuncsPayItens f ON c.FuncPayItem =' +
        ' f.FuncPayItem'
      'Where c.Favorecido = :Favorecido')
    UniDirectional = True
    Left = 219
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Favorecido'
        ParamType = ptUnknown
      end>
  end
  object P_Contratos: TDataSetProvider
    DataSet = Q_Contratos
    Constraints = True
    Left = 219
    Top = 51
  end
  object C_Contratos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contratos'
    Left = 219
    Top = 101
    object C_ContratosCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Required = True
    end
    object C_ContratosDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContratosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ContratosITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ContratosPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
    object C_ContratosPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Size = 1
    end
    object C_ContratosDIACOBRANCA: TStringField
      FieldName = 'DIACOBRANCA'
      Size = 2
    end
    object C_ContratosMETODOPGTO: TStringField
      FieldName = 'METODOPGTO'
      Size = 1
    end
    object C_ContratosFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
    end
    object C_ContratosGRUPOCOBRANCA: TIntegerField
      FieldName = 'GRUPOCOBRANCA'
    end
    object C_ContratosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
  end
  object C_PayrollItensDS: TDataSource
    DataSet = C_PayrollItens
    Left = 299
    Top = 149
  end
  object Q_PayrollItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select p.*'
      'from PayrollItens p '
      'WHERE p.TipoPayroll = 1 ')
    UniDirectional = True
    Left = 297
    Top = 2
  end
  object P_PayrollItens: TDataSetProvider
    DataSet = Q_PayrollItens
    Constraints = True
    Left = 299
    Top = 51
  end
  object C_PayrollItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayrollItens'
    Left = 299
    Top = 101
    object C_PayrollItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PAYROLLITENS.ITEM'
    end
    object C_PayrollItensPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'PAYROLLITENS.PAYROLLITEM'
    end
    object C_PayrollItensVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'PAYROLLITENS.VALOR'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PAYROLLITENS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensQTDHORAS: TBCDField
      FieldName = 'QTDHORAS'
      Origin = 'PAYROLLITENS.QTDHORAS'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensLIMITE: TBCDField
      FieldName = 'LIMITE'
      Origin = 'PAYROLLITENS.LIMITE'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      Origin = 'PAYROLLITENS.TIPOPAYROLL'
    end
    object C_PayrollItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAYROLLITENS.DESCRICAO'
      Size = 30
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    UniDirectional = True
    Left = 94
    Top = 187
  end
end

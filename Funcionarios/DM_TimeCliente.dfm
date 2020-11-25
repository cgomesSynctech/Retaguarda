inherited DMTimeCliente: TDMTimeCliente
  Left = 267
  Top = 95
  Height = 397
  Width = 486
  inherited SaveDialog: TSaveDialog
    Top = 271
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '#9'pf.ChaveCliente, '
      
        #9'pf.Favorecido, pf.DataInicio, pf.DataFim, f.Nome, f.codigo as c' +
        'odigocliente'
      'from ProducoesChaveCli pf '
      'INNER JOIN Favorecidos f ON f.Favorecido = pf.Favorecido'
      ' ')
    Left = 28
  end
  inherited Q_MasterDS: TDataSource
    Left = 98
    Top = 4
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ProducoesChaveCli '
      'where'
      '  CHAVECLIENTE = :CHAVECLIENTE')
    ModifySQL.Strings = (
      'update ProducoesChaveCli'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DATAINICIO = :DATAINICIO,'
      '  DATAFIM = :DATAFIM'
      'where'
      '  CHAVECLIENTE = :OLD_CHAVECLIENTE')
    InsertSQL.Strings = (
      'insert into ProducoesChaveCli'
      '  (CHAVECLIENTE, FAVORECIDO, DATAINICIO, DATAFIM)'
      'values'
      '  (:CHAVECLIENTE, :FAVORECIDO, :DATAINICIO, :DATAFIM)')
    DeleteSQL.Strings = (
      'delete from ProducoesChaveCli'
      'where'
      '  CHAVECLIENTE = :OLD_CHAVECLIENTE')
    Left = 27
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Pesquisar4_Dados = DMComponentPesquisar4_Dados
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'ProducoesFunc'
    Tabela_Nome = 'ProducoesFunc'
    Tabela_Chave = 'ChaveCliente'
    GenerateIDFor.Strings = (
      'C_Producoes=Producao')
    Left = 28
    Top = 272
  end
  inherited P_Tabela: TDataSetProvider
    Left = 27
    Top = 102
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    Left = 27
    Top = 162
    object C_TabelaCHAVECLIENTE: TIntegerField
      FieldName = 'CHAVECLIENTE'
      Origin = 'PRODUCOESCHAVECLI.CHAVECLIENTE'
      Required = True
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'PRODUCOESCHAVECLI.FAVORECIDO'
      OnChange = C_TabelaFAVORECIDOChange
    end
    object C_TabelaDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'PRODUCOESCHAVECLI.DATAINICIO'
      OnChange = C_TabelaDATAINICIOChange
    end
    object C_TabelaDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = 'PRODUCOESCHAVECLI.DATAFIM'
      OnChange = C_TabelaDATAINICIOChange
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaQ_Producoes: TDataSetField
      FieldName = 'Q_Producoes'
    end
    object C_TabelaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Origin = 'FAVORECIDOS.CODIGOCLIENTE'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 27
    Top = 204
  end
  inherited ResultSet: TClientDataSet
    Left = 188
    Top = 271
  end
  object Q_Producoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'Select pf.*,  p.Descricao as Desc_Payroll, i.Numero as NumInvoic' +
        'e, i.Saida,  fu.Nome, pi.TipoPayroll'
      
        'from ProducoesFunc pf LEFT JOIN Payrolls p ON pf.Payroll = p.Pay' +
        'roll'
      '        LEFT JOIN SaidasItens si ON si.SaidaItem = pf.SaidaItem'
      '        LEFT JOIN Saidas i ON i.Saida = si.Saida'
      
        '        LEFT JOIN Favorecidos fu ON fu.Favorecido = pf.Funcionar' +
        'io'
      
        '        LEFT JOIN FuncsPayItens fpi ON fpi.FuncPayItem = pf.Func' +
        'PayItem'
      
        '        LEFT JOIN PayrollItens pi ON pi.PayrollItem = fpi.Payrol' +
        'lItem'
      '        LEFT JOIN ContratosFav c ON c.Contrato = pf.Contrato'
      'Where pf.ChaveCliente = :CHAVECLIENTE')
    UpdateObject = U_Producoes
    Left = 100
    Top = 50
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHAVECLIENTE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Producoes: TIBUpdateSQL
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
      '  AGRUPAMENTO = :AGRUPAMENTO,'
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
      
        '   CHAVECLIENTE, CHAVEFUNC, AGRUPAMENTO, QTDHORAS_USER, METODOCL' +
        'IENTE, '
      '   DESPESAS)'
      'values'
      
        '  (:PRODUCAO, :DATAINICIO, :DATAFIM, :FAVORECIDO, :FUNCIONARIO, ' +
        ':CONTRATO, '
      
        '   :ITEM, :FUNCPAYITEM, :QTDHORAS, :VALORHORA, :VALORCONTRATO, :' +
        'PAYROLL, '
      
        '   :SAIDAITEM, :CHAVECLIENTE, :CHAVEFUNC, :AGRUPAMENTO, :QTDHORA' +
        'S_USER, '
      '   :METODOCLIENTE, :DESPESAS)')
    DeleteSQL.Strings = (
      'delete from ProducoesFunc'
      'where'
      '  PRODUCAO = :OLD_PRODUCAO')
    Left = 98
    Top = 102
  end
  object C_Producoes: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Producoes
    Params = <>
    BeforePost = C_ProducoesBeforePost
    BeforeDelete = C_ProducoesBeforeDelete
    OnCalcFields = C_ProducoesCalcFields
    OnNewRecord = C_ProducoesNewRecord
    Left = 99
    Top = 159
    object C_Producoes_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ProducoesPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
      Origin = 'PRODUCOESFUNC.PRODUCAO'
      Required = True
    end
    object C_ProducoesDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'PRODUCOESFUNC.DATAINICIO'
    end
    object C_ProducoesDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = 'PRODUCOESFUNC.DATAFIM'
    end
    object C_ProducoesFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'PRODUCOESFUNC.FAVORECIDO'
    end
    object C_ProducoesFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'PRODUCOESFUNC.FUNCIONARIO'
      OnChange = C_ProducoesFUNCIONARIOChange
    end
    object C_ProducoesCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = 'PRODUCOESFUNC.CONTRATO'
      OnChange = C_ProducoesCONTRATOChange
    end
    object C_ProducoesITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUCOESFUNC.ITEM'
      OnChange = C_ProducoesITEMChange
    end
    object C_ProducoesFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
      Origin = 'PRODUCOESFUNC.FUNCPAYITEM'
      OnChange = C_ProducoesFUNCPAYITEMChange
    end
    object C_ProducoesVALORHORA: TBCDField
      FieldName = 'VALORHORA'
      Origin = 'PRODUCOESFUNC.VALORHORA'
      Precision = 18
      Size = 2
    end
    object C_ProducoesVALORCONTRATO: TBCDField
      FieldName = 'VALORCONTRATO'
      Origin = 'PRODUCOESFUNC.VALORCONTRATO'
      Precision = 18
      Size = 2
    end
    object C_ProducoesPAYROLL: TIntegerField
      FieldName = 'PAYROLL'
      Origin = 'PRODUCOESFUNC.PAYROLL'
    end
    object C_ProducoesDESC_PAYROLL: TStringField
      FieldName = 'DESC_PAYROLL'
      Origin = 'PAYROLLS.DESC_PAYROLL'
      Size = 50
    end
    object C_ProducoesNUMINVOICE: TStringField
      FieldName = 'NUMINVOICE'
      Origin = 'SAIDAS.NUMINVOICE'
      Size = 12
    end
    object C_ProducoeslkItem: TStringField
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'lkItem'
      LookupDataSet = C_Itens
      LookupKeyFields = 'ITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ITEM'
      Size = 45
      Lookup = True
    end
    object C_ProducoeslkPayItem: TStringField
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'lkPayItem'
      LookupDataSet = C_PayrollItens
      LookupKeyFields = 'PAYROLLITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FUNCPAYITEM'
      Size = 45
      Lookup = True
    end
    object C_ProducoeslkContrato: TStringField
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'lkContrato'
      LookupDataSet = C_Contratos
      LookupKeyFields = 'CONTRATO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTRATO'
      Size = 45
      Lookup = True
    end
    object C_ProducoesCHAVECLIENTE: TIntegerField
      FieldName = 'CHAVECLIENTE'
      Origin = 'PRODUCOESFUNC.CHAVECLIENTE'
    end
    object C_ProducoesCHAVEFUNC: TIntegerField
      FieldName = 'CHAVEFUNC'
      Origin = 'PRODUCOESFUNC.CHAVEFUNC'
    end
    object C_ProducoesTotalPgto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'TotalPgto'
    end
    object C_ProducoesTotalCobrar: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'TotalCobrar'
    end
    object C_ProducoesAGRUPAMENTO: TIntegerField
      FieldName = 'AGRUPAMENTO'
      Origin = 'PRODUCOESFUNC.AGRUPAMENTO'
    end
    object C_ProducoesSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Origin = 'PRODUCOESFUNC.SAIDAITEM'
    end
    object C_ProducoesSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Origin = 'SAIDAS.SAIDA'
    end
    object C_ProducoesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ProducoesNAOCOBRAR: TStringField
      FieldName = 'NAOCOBRAR'
      Origin = 'PRODUCOESFUNC.NAOCOBRAR'
      Size = 1
    end
    object C_ProducoesTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      Origin = 'PAYROLLITENS.TIPOPAYROLL'
    end
    object C_ProducoesQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
      Origin = 'PRODUCOESFUNC.QTDHORAS'
      OnChange = C_ProducoesQTDHORASChange
    end
    object C_ProducoesQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Origin = 'PRODUCOESFUNC.QTDHORAS_USER'
      OnChange = C_ProducoesQTDHORAS_USERChange
      Size = 6
    end
    object C_ProducoesMETODOCLIENTE: TStringField
      FieldName = 'METODOCLIENTE'
      Origin = 'PRODUCOESFUNC.METODOCLIENTE'
      Size = 1
    end
    object C_ProducoesDESPESAS: TBCDField
      FieldName = 'DESPESAS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object C_ProducoesDS: TDataSource
    DataSet = C_Producoes
    Left = 100
    Top = 212
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select i.Item, i.Codigo, i.Descricao, i.HasChildren, pp.Preco'
      'from itens i'
      
        'left join ProdutosPreco pp on i.item = pp.item and pp.tabelaprec' +
        'o = 0'
      'WHERE i.TIPOITEM = 3 and i.DESATIVADO = '#39'N'#39)
    Left = 174
    Top = 4
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 172
    Top = 52
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 172
    Top = 100
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
    object C_ItensPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
  end
  object Q_Contratos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_ContratosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.*, f.Nome '
      'from ContratosFav c '
      'left join Favorecidos f ON c.Funcionario = f.Favorecido'
      'WHERE c.Favorecido = :FAVORECIDO'
      'Order by f.Nome')
    Left = 241
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
  end
  object P_Contratos: TDataSetProvider
    DataSet = Q_Contratos
    Constraints = True
    Left = 239
    Top = 52
  end
  object C_Contratos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contratos'
    Left = 239
    Top = 100
    object C_ContratosCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATOSFAV.CONTRATO'
      Required = True
    end
    object C_ContratosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONTRATOSFAV.DESCRICAO'
      Size = 50
    end
    object C_ContratosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'CONTRATOSFAV.FAVORECIDO'
    end
    object C_ContratosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'CONTRATOSFAV.ITEM'
    end
    object C_ContratosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'CONTRATOSFAV.PRECO'
      Precision = 18
      Size = 2
    end
    object C_ContratosPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Origin = 'CONTRATOSFAV.PERIODICIDADE'
      Size = 1
    end
    object C_ContratosDIACOBRANCA: TStringField
      FieldName = 'DIACOBRANCA'
      Origin = 'CONTRATOSFAV.DIACOBRANCA'
      Size = 2
    end
    object C_ContratosMETODOPGTO: TStringField
      FieldName = 'METODOPGTO'
      Origin = 'CONTRATOSFAV.METODOPGTO'
      Size = 1
    end
    object C_ContratosFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
      Origin = 'CONTRATOSFAV.FUNCPAYITEM'
    end
    object C_ContratosGRUPOCOBRANCA: TIntegerField
      FieldName = 'GRUPOCOBRANCA'
      Origin = 'CONTRATOSFAV.GRUPOCOBRANCA'
    end
    object C_ContratosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'CONTRATOSFAV.FUNCIONARIO'
    end
    object C_ContratosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ContratosPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'CONTRATOSFAV.PAYROLLITEM'
    end
    object C_ContratosVALORFUNC: TBCDField
      FieldName = 'VALORFUNC'
      Origin = 'CONTRATOSFAV.VALORFUNC'
      Precision = 18
      Size = 2
    end
  end
  object Q_PayrollItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select p.*'
      'from PayrollItens p'
      'WHERE p.TipoPayroll = 1')
    Left = 309
    Top = 4
  end
  object P_PayrollItens: TDataSetProvider
    DataSet = Q_PayrollItens
    Constraints = True
    Left = 309
    Top = 52
  end
  object C_PayrollItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayrollItens'
    Left = 309
    Top = 99
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
    Left = 191
    Top = 211
  end
  object Q_SQLi: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    UniDirectional = True
    Left = 191
    Top = 164
  end
end

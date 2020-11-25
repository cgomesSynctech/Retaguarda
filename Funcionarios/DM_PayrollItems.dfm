inherited DMPayrollItems: TDMPayrollItems
  Left = 128
  Top = 100
  Height = 408
  Width = 562
  inherited OpenDialog: TOpenDialog
    Left = 100
    Top = 215
  end
  inherited SaveDialog: TSaveDialog
    Left = 99
    Top = 149
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select p.*, f.Nome as NomeAgencia, i.descricao as DescricaoItem'
      'from PayrollItens p '
      '        LEFT JOIN Favorecidos f ON p.AGENCIA = f.FAVORECIDO'
      '        LEFT JOIN Itens i on p.ITEM = i.ITEM'
      'where p.tipopayroll <> 5 ')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from PayrollItens '
      'where'
      '  PAYROLLITEM = :PAYROLLITEM')
    ModifySQL.Strings = (
      'update PayrollItens'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  TIPOPAYROLL = :TIPOPAYROLL,'
      '  CONTA = :CONTA,'
      '  VALOR = :VALOR,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  LIMITE = :LIMITE,'
      '  AGENCIA = :AGENCIA,'
      '  IDENTIFICACAO = :IDENTIFICACAO,'
      '  CONTALIABILITY = :CONTALIABILITY,'
      '  TIPOWAGE = :TIPOWAGE,'
      '  DESATIVADO = :DESATIVADO,'
      '  METODOADIC = :METODOADIC,'
      '  PADRAOFUNCS = :PADRAOFUNCS,'
      '  CB_PAYROLLITEM = :CB_PAYROLLITEM,'
      '  CB_VALOR = :CB_VALOR,'
      '  CB_LIMITE = :CB_LIMITE,'
      '  CB_HORAS = :CB_HORAS,'
      '  TIPO = :TIPO,'
      '  TEMPORARIO = :TEMPORARIO,'
      '  VALIDADE = :VALIDADE,'
      '  ITEM = :ITEM,'
      '  QTDHORAS = :QTDHORAS'
      'where'
      '  PAYROLLITEM = :OLD_PAYROLLITEM')
    InsertSQL.Strings = (
      'insert into PayrollItens'
      
        '  (PAYROLLITEM, DESCRICAO, TIPOPAYROLL, CONTA, VALOR, PERCENTUAL' +
        ', LIMITE, '
      
        '   AGENCIA, IDENTIFICACAO, CONTALIABILITY, TIPOWAGE, DESATIVADO,' +
        ' METODOADIC, '
      
        '   PADRAOFUNCS, CB_PAYROLLITEM, CB_VALOR, CB_LIMITE, CB_HORAS, T' +
        'IPO, TEMPORARIO, '
      '   VALIDADE, ITEM, QTDHORAS)'
      'values'
      
        '  (:PAYROLLITEM, :DESCRICAO, :TIPOPAYROLL, :CONTA, :VALOR, :PERC' +
        'ENTUAL, '
      
        '   :LIMITE, :AGENCIA, :IDENTIFICACAO, :CONTALIABILITY, :TIPOWAGE' +
        ', :DESATIVADO, '
      
        '   :METODOADIC, :PADRAOFUNCS, :CB_PAYROLLITEM, :CB_VALOR, :CB_LI' +
        'MITE, :CB_HORAS, '
      '   :TIPO, :TEMPORARIO, :VALIDADE, :ITEM, :QTDHORAS)')
    DeleteSQL.Strings = (
      'delete from PayrollItens'
      'where'
      '  PAYROLLITEM = :OLD_PAYROLLITEM')
  end
  inherited DMComponent: TDMComponent
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'PayrollItens'
    Tabela_Nome = 'PayrollItens'
    Tabela_Chave = 'PayrollItem'
    GenerateIDFor.Strings = (
      'C_ComissaoDia=COMISSAO_DIA'
      'C_Metas=PAYROLLITEMMETA')
    DeleteValidate.Strings = (
      'FUNCSPAYITENS=PAYROLLITEM')
  end
  inherited C_Tabela: TClientDataSet
    Top = 149
    object C_TabelaPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      OnChange = C_TabelaTIPOPAYROLLChange
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaVALOR: TBCDField
      FieldName = 'VALOR'
      OnChange = C_TabelaVALORChange
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      OnChange = C_TabelaPERCENTUALChange
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelalkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 25
      Lookup = True
    end
    object C_TabelalkTipoPayroll: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoPayroll'
      LookupDataSet = C_TiposPayroll
      LookupKeyFields = 'TIPOPAYROLL'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOPAYROLL'
      Lookup = True
    end
    object C_TabelaQ_ComissaoDia: TDataSetField
      FieldName = 'Q_ComissaoDia'
    end
    object C_TabelaLIMITE: TBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object C_TabelaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
    end
    object C_TabelaIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Size = 80
    end
    object C_TabelaCONTALIABILITY: TIntegerField
      FieldName = 'CONTALIABILITY'
    end
    object C_TabelalkContaLiability: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaLiability'
      LookupDataSet = C_ContasLiability
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Lookup = True
    end
    object C_TabelaTIPOWAGE: TStringField
      FieldName = 'TIPOWAGE'
      Size = 1
    end
    object C_TabelaNOMEAGENCIA: TStringField
      FieldName = 'NOMEAGENCIA'
      Size = 50
    end
    object C_TabelaMETODOADIC: TIntegerField
      FieldName = 'METODOADIC'
    end
    object C_TabelaQ_Metas: TDataSetField
      FieldName = 'Q_Metas'
    end
    object C_TabelaPADRAOFUNCS: TStringField
      FieldName = 'PADRAOFUNCS'
      Size = 1
    end
    object C_TabelaCB_PAYROLLITEM: TStringField
      FieldName = 'CB_PAYROLLITEM'
      Size = 1
    end
    object C_TabelaCB_VALOR: TStringField
      FieldName = 'CB_VALOR'
      Size = 1
    end
    object C_TabelaCB_LIMITE: TStringField
      FieldName = 'CB_LIMITE'
      Size = 1
    end
    object C_TabelaCB_HORAS: TStringField
      FieldName = 'CB_HORAS'
      Size = 1
    end
    object C_TabelaTEMPORARIO: TStringField
      FieldName = 'TEMPORARIO'
      Size = 1
    end
    object C_TabelaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_TabelaDESCRICAOITEM: TStringField
      FieldName = 'DESCRICAOITEM'
      Size = 50
    end
    object C_TabelaQTDHORAS: TBCDField
      FieldName = 'QTDHORAS'
      DisplayFormat = '###,##0.00 hs'
      Precision = 18
      Size = 2
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_TabelalkPayrollItemDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPayrollItemDesc'
      LookupDataSet = C_PayrollItens
      LookupKeyFields = 'PAYROLLITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ITEM'
      Size = 30
      Lookup = True
    end
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.*, t.descricao as DescTipo '
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.Desativado = '#39'N'#39' and c.TipoConta = 15'
      'Order by c.tipoconta, c.Descricao')
    UniDirectional = True
    Left = 150
    Top = 3
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 150
    Top = 50
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 150
    Top = 99
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
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 150
    Top = 149
  end
  object P_TiposPayroll: TDataSetProvider
    DataSet = Q_TiposPayroll
    Constraints = True
    Left = 330
    Top = 50
  end
  object C_TiposPayroll: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposPayroll'
    Left = 330
    Top = 99
    object C_TiposPayrollTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      Required = True
    end
    object C_TiposPayrollDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_TiposPayrollDS: TDataSource
    DataSet = C_TiposPayroll
    Left = 330
    Top = 149
  end
  object DS_ComissaoDia: TDataSource
    DataSet = C_ComissaoDia
    Left = 418
    Top = 149
  end
  object Q_ComissaoDia: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select *'
      'from COMISSOES_DIA'
      'WHERE '
      '   PAYROLLITEM= :PAYROLLITEM'
      '   ORDER BY DIA_SEMANA')
    UpdateObject = U_ComissaoDia
    Left = 418
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAYROLLITEM'
        ParamType = ptUnknown
      end>
  end
  object C_ComissaoDia: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ComissaoDia
    Params = <>
    OnNewRecord = C_ComissaoDiaNewRecord
    Left = 418
    Top = 99
    object C_ComissaoDiaCOMISSAO_DIA: TIntegerField
      FieldName = 'COMISSAO_DIA'
      Required = True
    end
    object C_ComissaoDiaDIA_SEMANA: TIntegerField
      FieldName = 'DIA_SEMANA'
    end
    object C_ComissaoDiaADD_COMISSAO: TBCDField
      FieldName = 'ADD_COMISSAO'
      DisplayFormat = '##0.0# %'
      EditFormat = '###0.0#'
      Precision = 18
      Size = 2
    end
    object C_ComissaoDiaPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
    end
  end
  object U_ComissaoDia: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COMISSAO_DIA,'
      '  PAYROLLITEM,'
      '  DIA_SEMANA,'
      '  ADD_COMISSAO'
      'from COMISSOES_DIA '
      'where'
      '  COMISSAO_DIA = :COMISSAO_DIA')
    ModifySQL.Strings = (
      'update COMISSOES_DIA'
      'set'
      '  PAYROLLITEM = :PAYROLLITEM,'
      '  DIA_SEMANA = :DIA_SEMANA,'
      '  ADD_COMISSAO = :ADD_COMISSAO'
      'where'
      '  COMISSAO_DIA = :OLD_COMISSAO_DIA')
    InsertSQL.Strings = (
      'insert into COMISSOES_DIA'
      '  (COMISSAO_DIA, PAYROLLITEM, DIA_SEMANA, ADD_COMISSAO)'
      'values'
      '  (:COMISSAO_DIA, :PAYROLLITEM, :DIA_SEMANA, :ADD_COMISSAO)')
    DeleteSQL.Strings = (
      'delete from COMISSOES_DIA'
      'where'
      '  COMISSAO_DIA = :OLD_COMISSAO_DIA')
    Left = 418
    Top = 50
  end
  object Q_ContasLiability: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.*, t.descricao as DescTipo '
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.Desativado = '#39'N'#39' and c.TipoConta IN (10,15)'
      'Order by c.tipoconta, c.Descricao')
    UniDirectional = True
    Left = 233
    Top = 3
  end
  object P_ContasLiability: TDataSetProvider
    DataSet = Q_ContasLiability
    Constraints = True
    Left = 233
    Top = 50
  end
  object C_ContasLiability: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasLiability'
    Left = 233
    Top = 99
    object IntegerField1: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasLiabilityTipoConta: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object StringField2: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object StringField3: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object BCDField1: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
  end
  object C_ContasLiabilityDS: TDataSource
    DataSet = C_ContasLiability
    Left = 233
    Top = 149
  end
  object C_MetasDS: TDataSource
    DataSet = C_Metas
    Left = 493
    Top = 149
  end
  object Q_Metas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select *'
      'from PAYROLLITENSMETAS'
      'WHERE '
      '   PAYROLLITEM= :PAYROLLITEM'
      'ORDER BY VendaMinima')
    UpdateObject = U_Metas
    Left = 493
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAYROLLITEM'
        ParamType = ptUnknown
      end>
  end
  object C_Metas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Metas
    Params = <>
    BeforePost = C_MetasBeforePost
    AfterPost = C_MetasAfterPost
    OnNewRecord = C_MetasNewRecord
    Left = 493
    Top = 99
    object C_MetasPAYROLLITEMMETA: TIntegerField
      FieldName = 'PAYROLLITEMMETA'
      Required = True
    end
    object C_MetasPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
    end
    object C_MetasVENDAMINIMA: TBCDField
      FieldName = 'VENDAMINIMA'
      Precision = 18
      Size = 2
    end
    object C_MetasVENDAMAXIMA: TBCDField
      FieldName = 'VENDAMAXIMA'
      Precision = 18
      Size = 2
    end
    object C_MetasVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_MetasTIPOPERCENTUAL: TStringField
      FieldName = 'TIPOPERCENTUAL'
      Size = 1
    end
  end
  object U_Metas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PAYROLLITEMMETA,'
      '  PAYROLLITEM,'
      '  VENDAMINIMA,'
      '  VENDAMAXIMA,'
      '  VALOR,'
      '  TIPOPERCENTUAL'
      'from PAYROLLITENSMETAS '
      'where'
      '  PAYROLLITEMMETA = :PAYROLLITEMMETA')
    ModifySQL.Strings = (
      'update PAYROLLITENSMETAS'
      'set'
      '  PAYROLLITEM = :PAYROLLITEM,'
      '  VENDAMINIMA = :VENDAMINIMA,'
      '  VENDAMAXIMA = :VENDAMAXIMA,'
      '  VALOR = :VALOR,'
      '  TIPOPERCENTUAL = :TIPOPERCENTUAL'
      'where'
      '  PAYROLLITEMMETA = :OLD_PAYROLLITEMMETA')
    InsertSQL.Strings = (
      'insert into PAYROLLITENSMETAS'
      
        '  (PAYROLLITEMMETA, PAYROLLITEM, VENDAMINIMA, VENDAMAXIMA, VALOR' +
        ', TIPOPERCENTUAL)'
      'values'
      
        '  (:PAYROLLITEMMETA, :PAYROLLITEM, :VENDAMINIMA, :VENDAMAXIMA, :' +
        'VALOR, '
      '   :TIPOPERCENTUAL)')
    DeleteSQL.Strings = (
      'delete from PAYROLLITENSMETAS'
      'where'
      '  PAYROLLITEMMETA = :OLD_PAYROLLITEMMETA')
    Left = 493
    Top = 50
  end
  object Q_TiposPayroll: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from TiposPayroll'
      'Where TipoPayroll < 6'
      'Order by TipoPayroll')
    UniDirectional = True
    Left = 330
    Top = 4
  end
  object Q_PayrollItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select payrollitem, descricao from payrollitens'
      'where tipopayroll < 4 and desativado = '#39'N'#39
      'order by descricao')
    Left = 232
    Top = 192
  end
  object P_PayrollItens: TDataSetProvider
    DataSet = Q_PayrollItens
    Constraints = True
    Left = 232
    Top = 236
  end
  object C_PayrollItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayrollItens'
    Left = 232
    Top = 280
    object C_PayrollItensPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Required = True
    end
    object C_PayrollItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_PayrollItensDS: TDataSource
    DataSet = C_PayrollItens
    Left = 234
    Top = 325
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 334
    Top = 198
  end
end

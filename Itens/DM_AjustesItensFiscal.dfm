inherited DMAjustesItensFiscal: TDMAjustesItensFiscal
  Left = 197
  Top = 101
  Height = 365
  Width = 412
  inherited SaveDialog: TSaveDialog
    Top = 271
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select  ai.ajusteitem as IDMESTRE, ai.data, ai.quantidade, ai.it' +
        'em, ai.conta, ai.motivo, ai.custo, i.descricao, ai.numero, ai.nu' +
        'merolote,'
      
        'ai.validade, i.controlevalidade, ai.unidade, ai.fator, i.Referen' +
        'cia, i.Codigo,'
      
        'ai.Almoxarifado, ai.Unidade as UnidadeOld, i.FatorUndVenda,ai.Em' +
        'presa, i.ultimofornecedor, i.fornecpreferencia'
      'from AjustesItensFiscal ai, Itens i'
      'where ai.item = i.item')
    Left = 31
    Top = 1
  end
  inherited Q_MasterDS: TDataSource
    Left = 92
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AJUSTEITEM,'
      '  ITEM,'
      '  NUMERO,'
      '  DATA,'
      '  QUANTIDADE,'
      '  CUSTO,'
      '  CONTA,'
      '  MOTIVO'
      'from AjustesItensFiscal '
      'where'
      '  AJUSTEITEM = :AJUSTEITEM')
    ModifySQL.Strings = (
      'update AjustesItensFiscal'
      'set'
      '  ITEM = :ITEM,'
      '  NUMERO = :NUMERO,'
      '  DATA = :DATA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  CUSTO = :CUSTO,'
      '  CONTA = :CONTA,'
      '  MOTIVO = :MOTIVO,'
      '  NUMEROLOTE = :NUMEROLOTE,'
      '  VALIDADE = :VALIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  ALMOXARIFADO = :ALMOXARIFADO'
      'where'
      '  AJUSTEITEM = :OLD_IDMESTRE')
    InsertSQL.Strings = (
      'insert into AjustesItensFiscal'
      '  (AJUSTEITEM, ITEM, NUMERO, DATA, QUANTIDADE, CUSTO, CONTA, '
      'MOTIVO, NUMEROLOTE, VALIDADE, UNIDADE, FATOR, ALMOXARIFADO, '
      'AJUSTEITEMFISCAL)'
      'values'
      
        '  (:IDMESTRE, :ITEM, :NUMERO, :DATA, :QUANTIDADE, :CUSTO, :CONTA' +
        ', '
      
        ':MOTIVO, :NUMEROLOTE, :VALIDADE, :UNIDADE, :FATOR, :ALMOXARIFADO' +
        ','
      ':IDMESTRE)')
    DeleteSQL.Strings = (
      'delete from AjustesItensFiscal'
      'where'
      '  AJUSTEITEM = :OLD_IDMESTRE')
    Left = 31
    Top = 53
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Apagar_AntesApply = DMComponentApagar_AntesApply
    KeyForIDs = 'AjustesItensFiscal'
    Tabela_Nome = 'AjustesItensFiscal'
    Tabela_Chave = 'AjusteItem'
    Tabela_ChaveAlias = 'IDMESTRE'
    Left = 33
    Top = 271
  end
  inherited DlgMsg: TDlgMsg
    Top = 271
  end
  inherited P_Tabela: TDataSetProvider
    Left = 31
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    Left = 31
    Top = 159
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaIDMESTRE: TIntegerField
      FieldName = 'IDMESTRE'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnChange = C_TabelaQUANTIDADEChange
      OnSetText = C_TabelaQUANTIDADESetText
      Precision = 18
      Size = 3
    end
    object C_TabelaCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
      OnChange = C_TabelaITEMChange
    end
    object C_TabelaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 150
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TabelaNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Size = 12
    end
    object C_TabelaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_TabelaCONTROLEVALIDADE: TStringField
      FieldName = 'CONTROLEVALIDADE'
      Size = 1
    end
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      OnChange = C_TabelaUNIDADEChange
      OnValidate = C_TabelaUNIDADEValidate
      Size = 6
    end
    object C_TabelaFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_TabelalkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelaEstoque: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Estoque'
      DisplayFormat = '###,##0.0##'
    end
    object C_TabelaEstoqueNovo: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'EstoqueNovo'
      OnChange = C_TabelaEstoqueNovoChange
      DisplayFormat = '###,##0.0##'
    end
    object C_TabelacmbConta: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
    end
    object C_TabelaicEstoque: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoque'
      Precision = 18
      Size = 3
    end
    object C_TabelaicEstoqueNovo: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoqueNovo'
      OnSetText = C_TabelaicEstoqueNovoSetText
      Precision = 18
      Size = 3
    end
    object C_TabelaicCusto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCusto'
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_TabelaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_TabelaFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
    end
    object C_TabelaALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
    object C_TabelalkAlmoxarifado: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmoxarifado'
      LookupDataSet = C_Almoxarifados
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOXARIFADO'
      Size = 30
      Lookup = True
    end
    object C_TabelaUnidadeOld: TStringField
      FieldName = 'UnidadeOld'
      Size = 6
    end
    object C_TabelalkUnidadeInteira: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeInteira'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'INTEIRA'
      KeyFields = 'UNIDADE'
      Lookup = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelaULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
      Required = True
    end
    object C_TabelaFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Required = True
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 31
  end
  inherited ResultSet: TClientDataSet
    Left = 92
    Top = 53
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.conta,c.descricao, t.descricao as DescTipo, c.contapai,' +
        ' c.saldo,'
      'c.tipoconta'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    Left = 172
    Top = 3
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 172
    Top = 53
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 172
    Top = 101
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 172
    Top = 159
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 256
    Top = 101
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object C_UnidadesINTEIRA: TStringField
      FieldName = 'INTEIRA'
      Size = 1
    end
    object C_UnidadesCOMQTD: TStringField
      FieldName = 'COMQTD'
      Size = 1
    end
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Options = [poAllowCommandText]
    Left = 256
    Top = 53
  end
  object C_UnidadesDS: TDataSource
    DataSet = C_Unidades
    Left = 256
    Top = 159
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from unidades')
    Left = 256
    Top = 3
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 96
    Top = 185
  end
  object Q_Almoxarifados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from Almoxarifados')
    Left = 335
    Top = 3
  end
  object P_Almoxarifados: TDataSetProvider
    DataSet = Q_Almoxarifados
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 335
    Top = 53
  end
  object C_Almoxarifados: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifados'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 335
    Top = 101
    object C_AlmoxarifadosALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ALMOXARIFADOS.ALMOXARIFADO'
    end
    object C_AlmoxarifadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
  end
end

inherited DMTransferenciasAlmox: TDMTransferenciasAlmox
  Left = 470
  Top = 124
  Height = 359
  Width = 526
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TRANSFALMOXS')
  end
  inherited Q_MasterDS: TDataSource
    Left = 97
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TRANSFALMOX,'
      '  NUMERO,'
      '  DATA,'
      '  USUARIO,'
      '  ALMOX_ORIGEM,'
      '  ALMOX_DESTINO,'
      '  SITUACAO'
      'from TRANSFALMOXS '
      'where'
      '  TRANSFALMOX = :TRANSFALMOX')
    ModifySQL.Strings = (
      'update TRANSFALMOXS'
      'set'
      '  NUMERO = :NUMERO,'
      '  DATA = :DATA,'
      '  USUARIO = :USUARIO,'
      '  ALMOX_ORIGEM = :ALMOX_ORIGEM,'
      '  ALMOX_DESTINO = :ALMOX_DESTINO,'
      '  SITUACAO = :SITUACAO'
      'where'
      '  TRANSFALMOX = :OLD_TRANSFALMOX')
    InsertSQL.Strings = (
      'insert into TRANSFALMOXS'
      
        '  (TRANSFALMOX, NUMERO, DATA, USUARIO, ALMOX_ORIGEM, ALMOX_DESTI' +
        'NO, SITUACAO)'
      'values'
      
        '  (:TRANSFALMOX, :NUMERO, :DATA, :USUARIO, :ALMOX_ORIGEM, :ALMOX' +
        '_DESTINO, '
      '   :SITUACAO)')
    DeleteSQL.Strings = (
      'delete from TRANSFALMOXS'
      'where'
      '  TRANSFALMOX = :OLD_TRANSFALMOX')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TransfAlmoxs'
    Tabela_Nome = 'TransfAlmoxs'
    Tabela_Chave = 'TransfAlmox'
    GenerateIDFor.Strings = (
      'C_TransfAlmoxItens=TransfAlmoxItem')
  end
  inherited P_Tabela: TDataSetProvider
    Left = 31
    Top = 100
  end
  inherited C_Tabela: TClientDataSet
    Top = 163
    object C_TabelaTRANSFALMOX: TIntegerField
      FieldName = 'TRANSFALMOX'
      Origin = 'TRANSFALMOXS.TRANSFALMOX'
      Required = True
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'TRANSFALMOXS.NUMERO'
      Size = 7
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'TRANSFALMOXS.DATA'
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'TRANSFALMOXS.USUARIO'
    end
    object C_TabelaALMOX_ORIGEM: TIntegerField
      FieldName = 'ALMOX_ORIGEM'
      Origin = 'TRANSFALMOXS.ALMOX_ORIGEM'
      OnChange = C_TabelaALMOX_ORIGEMChange
    end
    object C_TabelaALMOX_DESTINO: TIntegerField
      FieldName = 'ALMOX_DESTINO'
      Origin = 'TRANSFALMOXS.ALMOX_DESTINO'
      OnChange = C_TabelaALMOX_DESTINOChange
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'TRANSFALMOXS.SITUACAO'
      Size = 1
    end
    object C_TabelalkAmoxOrigem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAmoxOrigem'
      LookupDataSet = C_Almoxarifados
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOX_ORIGEM'
      Size = 30
      Lookup = True
    end
    object C_TabelalkAlmoxDestino: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmoxDestino'
      LookupDataSet = C_Almoxarifados
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOX_DESTINO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUsuario'
      LookupDataSet = C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'USUARIO'
      Lookup = True
    end
    object C_TabelaQ_TransfAlmoxItens: TDataSetField
      FieldName = 'Q_TransfAlmoxItens'
    end
  end
  inherited ResultSet: TClientDataSet
    Left = 99
    Top = 51
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
    Left = 293
    Top = 3
  end
  object P_Almoxarifados: TDataSetProvider
    DataSet = Q_Almoxarifados
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 293
    Top = 51
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
    Left = 293
    Top = 102
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
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from Usuarios'
      'where Desativado = '#39'N'#39
      'order by LOGINNAME')
    Left = 386
    Top = 3
  end
  object P_Usuarios: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 385
    Top = 51
  end
  object C_Usuarios: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Usuarios'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 385
    Top = 101
    object C_UsuariosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'USUARIOS.USUARIO'
      Required = True
    end
    object C_UsuariosLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Origin = 'USUARIOS.LOGINNAME'
      Required = True
      Size = 30
    end
    object C_UsuariosLOGINPASS: TStringField
      FieldName = 'LOGINPASS'
      Origin = 'USUARIOS.LOGINPASS'
      Required = True
      Size = 30
    end
    object C_UsuariosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'USUARIOS.FUNCIONARIO'
    end
  end
  object Q_TransfAlmoxItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'Select t.*, i.Codigo, i.Descricao, i.Referencia, t.Unidade as Un' +
        'idadeOld,i.ultimofornecedor,i.fornecpreferencia'
      'from TRANSFALMOXITENS t INNER JOIN Itens i ON i.Item = t.Item'
      'Where t.TransfAlmox = :TransfAlmox')
    UpdateObject = U_TransfAlmoxItens
    Left = 180
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TRANSFALMOX'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_TransfAlmoxItens: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_TransfAlmoxItens
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TransfAlmoxItensNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 180
    Top = 99
    object C_TransfAlmoxItens_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TransfAlmoxItensTRANSFALMOXITEM: TIntegerField
      FieldName = 'TRANSFALMOXITEM'
      Origin = 'TRANSFALMOXITENS.TRANSFALMOXITEM'
      Required = True
    end
    object C_TransfAlmoxItensTRANSFALMOX: TIntegerField
      FieldName = 'TRANSFALMOX'
      Origin = 'TRANSFALMOXITENS.TRANSFALMOX'
    end
    object C_TransfAlmoxItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'TRANSFALMOXITENS.ITEM'
      OnChange = C_TransfAlmoxItensITEMChange
    end
    object C_TransfAlmoxItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'TRANSFALMOXITENS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_TransfAlmoxItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'TRANSFALMOXITENS.UNIDADE'
      OnChange = C_TransfAlmoxItensUNIDADEChange
      Size = 6
    end
    object C_TransfAlmoxItensFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'TRANSFALMOXITENS.FATOR'
    end
    object C_TransfAlmoxItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_TransfAlmoxItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_TransfAlmoxItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_TransfAlmoxItenslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_TransfAlmoxItensALMOX_ORIGEM: TIntegerField
      FieldName = 'ALMOX_ORIGEM'
      Origin = 'TRANSFALMOXITENS.ALMOX_ORIGEM'
    end
    object C_TransfAlmoxItensNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Origin = 'TRANSFALMOXITENS.NUMEROLOTE'
      Size = 11
    end
    object C_TransfAlmoxItensALMOX_DESTINO: TIntegerField
      FieldName = 'ALMOX_DESTINO'
      Origin = 'TRANSFALMOXITENS.ALMOX_DESTINO'
    end
    object C_TransfAlmoxItensUnidadeOld: TStringField
      FieldName = 'UnidadeOld'
      Origin = 'TRANSFALMOXITENS.UNIDADEOLD'
      Size = 6
    end
    object C_TransfAlmoxItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TransfAlmoxItensULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
      Required = True
    end
    object C_TransfAlmoxItensFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Required = True
    end
  end
  object U_TransfAlmoxItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TRANSFALMOXITEM,'
      '  TRANSFALMOX,'
      '  ITEM,'
      '  QUANTIDADE,'
      '  UNIDADE,'
      '  FATOR,'
      '  NUMEROLOTE,'
      '  ALMOX_ORIGEM,'
      '  ALMOX_DESTINO,'
      '  EMPRESA'
      'from TRANSFALMOXITENS '
      'where'
      '  TRANSFALMOXITEM = :TRANSFALMOXITEM')
    ModifySQL.Strings = (
      'update TRANSFALMOXITENS'
      'set'
      '  TRANSFALMOX = :TRANSFALMOX,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  NUMEROLOTE = :NUMEROLOTE,'
      '  ALMOX_ORIGEM = :ALMOX_ORIGEM,'
      '  ALMOX_DESTINO = :ALMOX_DESTINO'
      'where'
      '  TRANSFALMOXITEM = :OLD_TRANSFALMOXITEM')
    InsertSQL.Strings = (
      'insert into TRANSFALMOXITENS'
      '  (TRANSFALMOX, ITEM, QUANTIDADE, UNIDADE, FATOR, NUMEROLOTE, '
      'ALMOX_ORIGEM, '
      '   ALMOX_DESTINO)'
      'values'
      
        '  (:TRANSFALMOX, :ITEM, :QUANTIDADE, :UNIDADE, :FATOR, :NUMEROLO' +
        'TE, '
      ':ALMOX_ORIGEM, '
      '   :ALMOX_DESTINO)')
    DeleteSQL.Strings = (
      'delete from TRANSFALMOXITENS'
      'where'
      '  TRANSFALMOXITEM = :OLD_TRANSFALMOXITEM')
    Left = 180
    Top = 50
  end
  object C_TransfAlmoxItensDS: TDataSource
    DataSet = C_TransfAlmoxItens
    Left = 179
    Top = 163
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADES order by descricao')
    UniDirectional = True
    Left = 294
    Top = 155
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 294
    Top = 251
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 294
    Top = 203
  end
  object Q_Lotes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select il.*, i.FatorUndVenda'
      'from itenslotes il inner join Itens i ON i.Item = il.Item'
      'where il.item = :ITEM And il.EstoqueLote > 0 '
      'order by il.validade, il.numerolote')
    UniDirectional = True
    Left = 458
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ITEM'
        ParamType = ptUnknown
      end>
  end
  object P_Lotes: TDataSetProvider
    DataSet = Q_Lotes
    Constraints = True
    Left = 458
    Top = 52
  end
  object C_Lotes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Lotes'
    Left = 458
    Top = 103
    object C_LotesIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      Required = True
    end
    object C_LotesITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_LotesNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Size = 12
    end
    object C_LotesVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_LotesESTOQUELOTE: TBCDField
      FieldName = 'ESTOQUELOTE'
      Precision = 18
      Size = 3
    end
    object C_LotesQTDENTRADAS: TBCDField
      FieldName = 'QTDENTRADAS'
      Precision = 18
      Size = 3
    end
    object C_LotesFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
    end
    object C_LotesicEstoqueLote: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoqueLote'
    end
  end
  object C_LotesDS: TDataSource
    DataSet = C_Lotes
    Left = 458
    Top = 154
  end
end

inherited DMRotas: TDMRotas
  Left = 231
  Top = 158
  Height = 371
  Width = 431
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select '
      '     ROTA, DESCRICAO, DATAHORAALTERACAO, CLIENTES'
      'from ROTAS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ROTA,'
      '  DESCRICAO,'
      '  DATAHORAALTERACAO,'
      '  CLIENTES'
      'from ROTAS '
      'where'
      '  ROTA = :ROTA')
    ModifySQL.Strings = (
      'update ROTAS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  DATAHORAALTERACAO = :DATAHORAALTERACAO,'
      '  CLIENTES = :CLIENTES'
      'where'
      '  ROTA = :OLD_ROTA')
    InsertSQL.Strings = (
      'insert into ROTAS'
      '  (ROTA, DESCRICAO, DATAHORAALTERACAO, CLIENTES)'
      'values'
      '  (:ROTA, :DESCRICAO, :DATAHORAALTERACAO, :CLIENTES)')
    DeleteSQL.Strings = (
      'delete from ROTAS'
      'where'
      '  ROTA = :OLD_ROTA')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'ROTAS'
    Tabela_Nome = 'ROTAS'
    Tabela_Chave = 'ROTA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ROTAS.ROTA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ROTAS.DESCRICAO'
      Size = 25
    end
    object C_TabelaDATAHORAALTERACAO: TDateField
      FieldName = 'DATAHORAALTERACAO'
      Origin = 'ROTAS.DATAHORAALTERACAO'
    end
    object C_TabelaCLIENTES: TStringField
      FieldName = 'CLIENTES'
      Origin = 'ROTAS.CLIENTES'
      Size = 500
    end
    object C_TabelaQ_RotaDet: TDataSetField
      FieldName = 'Q_RotaDet'
    end
  end
  object C_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 4
    object C_ClientesID: TIntegerField
      FieldName = 'ID'
    end
    object C_ClientesNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object C_ClientesDS: TDataSource
    DataSet = C_Clientes
    Left = 306
    Top = 50
  end
  object Q_RotaDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select'
      '  rc.rotacliente, rc.rota, rc.cliente, rc.ORDEM'
      'from rotasclientes rc'
      'where rc.rota = :ROTA'
      'order by rc.ordem')
    UpdateObject = U_RotaDet
    Left = 202
    Top = 12
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ROTA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_RotaDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from rotasclientes '
      'where'
      '  ROTACLIENTE = :ROTACLIENTE')
    ModifySQL.Strings = (
      'update rotasclientes'
      'set'
      '  ROTA = :ROTA,'
      '  CLIENTE = :CLIENTE,'
      '  ORDEM = :ORDEM'
      'where'
      '  ROTACLIENTE = :OLD_ROTACLIENTE')
    InsertSQL.Strings = (
      'insert into rotasclientes'
      '  (ROTACLIENTE, ROTA, CLIENTE, ORDEM)'
      'values'
      '  (:ROTACLIENTE, :ROTA, :CLIENTE, :ORDEM)')
    DeleteSQL.Strings = (
      'delete from rotasclientes'
      'where'
      '  ROTACLIENTE = :OLD_ROTACLIENTE')
    Left = 202
    Top = 64
  end
  object C_RotaDet: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_RotaDet
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'C_RotaDetIndex1'
        Fields = 'ORDEM'
      end>
    IndexName = 'C_RotaDetIndex1'
    Params = <>
    StoreDefs = True
    OnNewRecord = C_RotaDetNewRecord
    Left = 204
    Top = 124
    object C_RotaDetROTACLIENTE: TIntegerField
      FieldName = 'ROTACLIENTE'
      Origin = 'ROTASCLIENTES.ROTACLIENTE'
      Required = True
    end
    object C_RotaDetROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ROTASCLIENTES.ROTA'
    end
    object C_RotaDetCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'ROTASCLIENTES.CLIENTE'
    end
    object C_RotaDetCLIENTENOME: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTENOME'
      LookupDataSet = C_Favorecido
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'CLIENTE'
      Size = 50
      Lookup = True
    end
    object C_RotaDetORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ROTASCLIENTES.ORDEM'
    end
  end
  object C_RotaDetDS: TDataSource
    DataSet = C_RotaDet
    Left = 204
    Top = 180
  end
  object Q_Favorecido: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select f.favorecido, f.nome from favorecidos f where f.tipofavor' +
        'ecido = 1')
    Left = 322
    Top = 126
  end
  object P_Favorecido: TDataSetProvider
    DataSet = Q_Favorecido
    Constraints = True
    Left = 324
    Top = 178
  end
  object C_Favorecido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Favorecido'
    Left = 326
    Top = 230
    object C_FavorecidoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_FavorecidoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
end

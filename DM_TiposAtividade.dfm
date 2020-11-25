inherited DMTiposAtividade: TDMTiposAtividade
  Left = 626
  Top = 183
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TIPOSATIVIDADE')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TIPOATIVIDADE,'
      '  DESCRICAO,'
      '  TIPOFAVORECIDO'
      'from TIPOSATIVIDADE '
      'where'
      '  TIPOATIVIDADE = :TIPOATIVIDADE')
    ModifySQL.Strings = (
      'update TIPOSATIVIDADE'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO'
      'where'
      '  TIPOATIVIDADE = :OLD_TIPOATIVIDADE')
    InsertSQL.Strings = (
      'insert into TIPOSATIVIDADE'
      '  (TIPOATIVIDADE, DESCRICAO, TIPOFAVORECIDO)'
      'values'
      '  (:TIPOATIVIDADE, :DESCRICAO, :TIPOFAVORECIDO)')
    DeleteSQL.Strings = (
      'delete from TIPOSATIVIDADE'
      'where'
      '  TIPOATIVIDADE = :OLD_TIPOATIVIDADE')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TiposAtividade'
    Tabela_Nome = 'TiposAtividade'
    Tabela_Chave = 'TipoAtividade'
  end
  inherited C_Tabela: TClientDataSet
    Left = 31
    object C_TabelaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaDescTipoFav: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTipoFav'
      LookupDataSet = C_TipoFav
      LookupKeyFields = 'TIPOFAVORECIDO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOFAVORECIDO'
      Lookup = True
    end
  end
  object Q_TipoFav: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tiposfavorecido'
      'where tipofavorecido in (1,2,3,7)')
    Left = 200
    Top = 56
  end
  object P_TipoFav: TDataSetProvider
    DataSet = Q_TipoFav
    Constraints = True
    Left = 200
    Top = 104
  end
  object C_TipoFav: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TipoFav'
    Left = 200
    Top = 8
    object C_TipoFavTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Required = True
    end
    object C_TipoFavDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object C_TipoFavFORM: TStringField
      FieldName = 'FORM'
    end
  end
  object C_TipoFavDS: TDataSource
    DataSet = C_TipoFav
    Left = 200
    Top = 152
  end
end

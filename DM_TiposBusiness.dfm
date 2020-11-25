inherited DMTiposBusiness: TDMTiposBusiness
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TiposBusiness')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TiposBusiness '
      'where'
      '  TIPOBUSINESS = :TIPOBUSINESS')
    ModifySQL.Strings = (
      'update TiposBusiness'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TIPOBUSINESS = :OLD_TIPOBUSINESS')
    InsertSQL.Strings = (
      'insert into TiposBusiness'
      '  (TIPOBUSINESS, DESCRICAO)'
      'values'
      '  (:TIPOBUSINESS, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TiposBusiness'
      'where'
      '  TIPOBUSINESS = :OLD_TIPOBUSINESS')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TiposBusiness'
    Tabela_Nome = 'TiposBusiness'
    Tabela_Chave = 'TipoBusiness'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOBUSINESS: TIntegerField
      FieldName = 'TIPOBUSINESS'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

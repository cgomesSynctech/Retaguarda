inherited DMTiposLentes: TDMTiposLentes
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TiposLentes')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TiposLentes '
      'where'
      '  TIPOLENTE = :TIPOLENTE')
    ModifySQL.Strings = (
      'update TiposLentes'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TIPOLENTE = :OLD_TIPOLENTE')
    InsertSQL.Strings = (
      'insert into TiposLentes'
      '  (TIPOLENTE, DESCRICAO)'
      'values'
      '  (:TIPOLENTE, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TiposLentes'
      'where'
      '  TIPOLENTE = :OLD_TIPOLENTE')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TiposLente'
    Tabela_Nome = 'TiposLente'
    Tabela_Chave = 'TipoLente'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOLENTE: TIntegerField
      FieldName = 'TIPOLENTE'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

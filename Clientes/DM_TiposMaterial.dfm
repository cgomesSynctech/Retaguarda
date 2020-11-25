inherited DMTiposMaterial: TDMTiposMaterial
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TiposMaterial')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TiposMaterial '
      'where'
      '  TIPOMATERIAL = :TIPOMATERIAL')
    ModifySQL.Strings = (
      'update TiposMaterial'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TIPOMATERIAL = :OLD_TIPOMATERIAL')
    InsertSQL.Strings = (
      'insert into TiposMaterial'
      '  (TIPOMATERIAL, DESCRICAO)'
      'values'
      '  (:TIPOMATERIAL, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TiposMaterial'
      'where'
      '  TIPOMATERIAL = :OLD_TIPOMATERIAL')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TiposMaterial'
    Tabela_Nome = 'TiposMaterial'
    Tabela_Chave = 'TipoMaterial'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOMATERIAL: TIntegerField
      FieldName = 'TIPOMATERIAL'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

inherited DMCores: TDMCores
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Cores')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Cores '
      'where'
      '  COR = :COR')
    ModifySQL.Strings = (
      'update Cores'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  COR = :OLD_COR')
    InsertSQL.Strings = (
      'insert into Cores'
      '  (COR, DESCRICAO)'
      'values'
      '  (:COR, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Cores'
      'where'
      '  COR = :OLD_COR')
    Left = 31
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Cores'
    Tabela_Nome = 'Cores'
    Tabela_Chave = 'Cor'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCOR: TIntegerField
      FieldName = 'COR'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

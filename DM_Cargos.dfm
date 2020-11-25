inherited DMCargos: TDMCargos
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Cargos')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Cargos '
      'where'
      '  CARGO = :CARGO')
    ModifySQL.Strings = (
      'update Cargos'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  CODIGO = :CODIGO'
      'where'
      '  CARGO = :OLD_CARGO')
    InsertSQL.Strings = (
      'insert into Cargos'
      '  (CARGO, DESCRICAO, CODIGO)'
      'values'
      '  (:CARGO, :DESCRICAO, :CODIGO)')
    DeleteSQL.Strings = (
      'delete from Cargos'
      'where'
      '  CARGO = :OLD_CARGO')
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    KeyForIDs = 'Cargos'
    Tabela_Nome = 'Cargos'
    Tabela_Chave = 'Cargo'
    DeleteValidate.Strings = (
      'Favorecidos=Cargo')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCARGO: TIntegerField
      FieldName = 'CARGO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      OnValidate = C_TabelaCODIGOValidate
      Size = 10
    end
  end
end

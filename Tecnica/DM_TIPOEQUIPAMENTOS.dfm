inherited DMTIPOEQUIPAMENTOS: TDMTIPOEQUIPAMENTOS
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TipoEquipamentos'
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TipoEquipamentos '
      'where'
      '  TIPOEQUIPAMENTO = :TIPOEQUIPAMENTO')
    ModifySQL.Strings = (
      'update TipoEquipamentos'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TIPOEQUIPAMENTO = :OLD_TIPOEQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into TipoEquipamentos'
      '  (TIPOEQUIPAMENTO, DESCRICAO)'
      'values'
      '  (:TIPOEQUIPAMENTO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TipoEquipamentos'
      'where'
      '  TIPOEQUIPAMENTO = :OLD_TIPOEQUIPAMENTO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TIPOEQUIPAMENTOS'
    Tabela_Nome = 'TIPOEQUIPAMENTOS'
    Tabela_Chave = 'TIPOEQUIPAMENTO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOEQUIPAMENTO: TIntegerField
      FieldName = 'TIPOEQUIPAMENTO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

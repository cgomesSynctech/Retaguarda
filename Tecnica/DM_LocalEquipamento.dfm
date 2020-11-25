inherited DMLocalEquipamento: TDMLocalEquipamento
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from LOCALIZACAOEQUIPAMENTO')
    Top = 5
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LOCALIZACAOEQUIPAMENTO,'
      '  DESCRICAO'
      'from LOCALIZACAOEQUIPAMENTO '
      'where'
      '  LOCALIZACAOEQUIPAMENTO = :LOCALIZACAOEQUIPAMENTO')
    ModifySQL.Strings = (
      'update LOCALIZACAOEQUIPAMENTO'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  LOCALIZACAOEQUIPAMENTO = :OLD_LOCALIZACAOEQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into LOCALIZACAOEQUIPAMENTO'
      '  (LOCALIZACAOEQUIPAMENTO, DESCRICAO)'
      'values'
      '  (:LOCALIZACAOEQUIPAMENTO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from LOCALIZACAOEQUIPAMENTO'
      'where'
      '  LOCALIZACAOEQUIPAMENTO = :OLD_LOCALIZACAOEQUIPAMENTO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'LOCALIZACAOEQUIPAMENTO'
    Tabela_Nome = 'LOCALIZACAOEQUIPAMENTO'
    Tabela_Chave = 'LOCALIZACAOEQUIPAMENTO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaLOCALIZACAOEQUIPAMENTO: TIntegerField
      FieldName = 'LOCALIZACAOEQUIPAMENTO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

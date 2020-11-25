inherited DMIndexador: TDMIndexador
  Left = 68
  Top = 126
  Height = 399
  Width = 588
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select * from INDEXADORES')
    object Q_TabelaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object Q_TabelaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Q_TabelaCIFRAO: TIBStringField
      FieldName = 'CIFRAO'
      Size = 10
    end
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  INDEXADOR,'
      '  DESCRICAO,'
      '  CIFRAO'
      'from INDEXADORES '
      'where'
      '  INDEXADOR = :INDEXADOR')
    ModifySQL.Strings = (
      'update INDEXADORES'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  CIFRAO = :CIFRAO'
      'where'
      '  INDEXADOR = :OLD_INDEXADOR')
    InsertSQL.Strings = (
      'insert into INDEXADORES'
      '  (INDEXADOR, DESCRICAO, CIFRAO)'
      'values'
      '  (:INDEXADOR, :DESCRICAO, :CIFRAO)')
    DeleteSQL.Strings = (
      'delete from INDEXADORES'
      'where'
      '  INDEXADOR = :OLD_INDEXADOR')
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    KeyForIDs = 'INDEXADORES'
    Tabela_Nome = 'INDEXADORES'
    Tabela_Chave = 'INDEXADOR'
  end
  inherited C_Tabela: TClientDataSet
    Top = 158
    object C_TabelaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaCIFRAO: TStringField
      DisplayLabel = 'Cifrão'
      FieldName = 'CIFRAO'
      Size = 10
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
end

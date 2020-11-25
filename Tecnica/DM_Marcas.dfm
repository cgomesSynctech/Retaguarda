inherited DMMarcas: TDMMarcas
  Left = 263
  Top = 66
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Marcas')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Marcas '
      'where'
      '  MARCA = :MARCA')
    ModifySQL.Strings = (
      'update Marcas'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  MARCA = :OLD_MARCA')
    InsertSQL.Strings = (
      'insert into Marcas'
      '  (MARCA, DESCRICAO)'
      'values'
      '  (:MARCA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Marcas'
      'where'
      '  MARCA = :OLD_MARCA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MARCAS'
    Tabela_Nome = 'MARCAS'
    Tabela_Chave = 'MARCA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

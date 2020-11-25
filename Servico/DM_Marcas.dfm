inherited DMMarcas: TDMMarcas
  Left = 156
  Top = 162
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      '  MARCA, DESCRICAO'
      ''
      'from'
      'MARCAS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MARCA,'
      '  DESCRICAO'
      'from MARCAS '
      'where'
      '  MARCA = :MARCA')
    ModifySQL.Strings = (
      'update MARCAS'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  MARCA = :OLD_MARCA')
    InsertSQL.Strings = (
      'insert into MARCAS'
      '  (MARCA, DESCRICAO)'
      'values'
      '  (:MARCA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from MARCAS'
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
      Size = 25
    end
  end
end

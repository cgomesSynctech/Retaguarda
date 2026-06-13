inherited DMMarcaModelo: TDMMarcaModelo
  Left = 526
  Top = 175
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from MARCAMODELO')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  MARCA,'
      '  MODELO'
      'from MARCAMODELO '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update MARCAMODELO'
      'set'
      '  MARCA = :MARCA,'
      '  MODELO = :MODELO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into MARCAMODELO'
      '  (MARCA, MODELO)'
      'values'
      '  (:MARCA, :MODELO)')
    DeleteSQL.Strings = (
      'delete from MARCAMODELO'
      'where'
      '  ID = :OLD_ID')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MARCAMODELO'
    Tabela_Nome = 'MARCAMODELO'
    Tabela_Chave = 'ID'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TabelaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
  end
end

inherited DMPaises: TDMPaises
  Left = 66
  Top = 131
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from PAISES')
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PAIS,'
      '  DESCRICAO'
      'from PAISES '
      'where'
      '  PAIS = :PAIS')
    ModifySQL.Strings = (
      'update PAISES'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  PAIS = :OLD_PAIS')
    InsertSQL.Strings = (
      'insert into PAISES'
      '  (PAIS, DESCRICAO)'
      'values'
      '  (:PAIS, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from PAISES'
      'where'
      '  PAIS = :OLD_PAIS')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'PAISES'
    Tabela_Nome = 'PAISES'
    Tabela_Chave = 'PAIS'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPAIS: TIntegerField
      FieldName = 'PAIS'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 25
    end
  end
end

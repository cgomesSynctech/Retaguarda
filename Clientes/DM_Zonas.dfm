inherited DMZonas: TDMZonas
  Left = 59
  Top = 87
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Zonas')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Zonas '
      'where'
      '  ZONA = :ZONA')
    ModifySQL.Strings = (
      'update Zonas'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  ZONA = :OLD_ZONA')
    InsertSQL.Strings = (
      'insert into Zonas'
      '  (ZONA, DESCRICAO)'
      'values'
      '  (:ZONA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Zonas'
      'where'
      '  ZONA = :OLD_ZONA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Zonas'
    Tabela_Nome = 'Zonas'
    Tabela_Chave = 'Zona'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaZONA: TIntegerField
      FieldName = 'ZONA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

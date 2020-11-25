inherited DMIdiomas: TDMIdiomas
  Left = 89
  Top = 111
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from IDIOMAS')
    Top = 12
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDIOMA,'
      '  DESCRICAO'
      'from IDIOMAS '
      'where'
      '  IDIOMA = :IDIOMA')
    ModifySQL.Strings = (
      'update IDIOMAS'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  IDIOMA = :OLD_IDIOMA')
    InsertSQL.Strings = (
      'insert into IDIOMAS'
      '  (IDIOMA, DESCRICAO)'
      'values'
      '  (:IDIOMA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from IDIOMAS'
      'where'
      '  IDIOMA = :OLD_IDIOMA')
    Left = 31
  end
  inherited DMComponent: TDMComponent
    AntesDeApagar = DMComponentAntesDeApagar
    KeyForIDs = 'IDIOMAS'
    Tabela_Nome = 'IDIOMAS'
    Tabela_Chave = 'IDIOMA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaIDIOMA: TIntegerField
      FieldName = 'IDIOMA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

inherited DMFabricantes: TDMFabricantes
  Left = 59
  Top = 87
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Fabricantes')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FABRICANTE,'
      '  DESCRICAO'
      'from Fabricantes '
      'where'
      '  FABRICANTE = :FABRICANTE')
    ModifySQL.Strings = (
      'update Fabricantes'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  CODIGO = :CODIGO'
      'where'
      '  FABRICANTE = :OLD_FABRICANTE')
    InsertSQL.Strings = (
      'insert into Fabricantes'
      '  (FABRICANTE, DESCRICAO, CODIGO)'
      'values'
      '  (:FABRICANTE, :DESCRICAO, :CODIGO)')
    DeleteSQL.Strings = (
      'delete from Fabricantes'
      'where'
      '  FABRICANTE = :OLD_FABRICANTE')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Fabricantes'
    Tabela_Nome = 'Fabricantes'
    Tabela_Chave = 'Fabricante'
    DeleteValidate.Strings = (
      'Itens=fabricante')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      OnValidate = C_TabelaCODIGOValidate
      Size = 10
    end
  end
end

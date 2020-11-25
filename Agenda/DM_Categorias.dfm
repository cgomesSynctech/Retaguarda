inherited DMCategorias: TDMCategorias
  Left = 273
  Top = 134
  Height = 413
  Width = 511
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from CATEGORIAS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CATEGORIA,'
      '  DESCRICAO,'
      '  COR,'
      '  COR_FONTE'
      'from CATEGORIAS '
      'where'
      '  CATEGORIA = :CATEGORIA')
    ModifySQL.Strings = (
      'update CATEGORIAS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  COR = :COR,'
      '  COR_FONTE = :COR_FONTE'
      'where'
      '  CATEGORIA = :OLD_CATEGORIA')
    InsertSQL.Strings = (
      'insert into CATEGORIAS'
      '  (CATEGORIA, DESCRICAO, COR, COR_FONTE)'
      'values'
      '  (:CATEGORIA, :DESCRICAO, :COR, :COR_FONTE)')
    DeleteSQL.Strings = (
      'delete from CATEGORIAS'
      'where'
      '  CATEGORIA = :OLD_CATEGORIA')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Exclusao = DMComponentExclusao
    KeyForIDs = 'CATEGORIA'
    Tabela_Nome = 'CATEGORIAS'
    Tabela_Chave = 'CATEGORIA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_TabelaCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object C_TabelaCOR_FONTE: TStringField
      FieldName = 'COR_FONTE'
      Size = 10
    end
  end
end

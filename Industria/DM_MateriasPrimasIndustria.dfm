inherited DMMateriasPrimasIndustria: TDMMateriasPrimasIndustria
  Width = 343
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from MATERIASPRIMAS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MATERIAPRIMA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  ITEM,'
      '  OBSERVACAO'
      'from MATERIASPRIMAS '
      'where'
      '  MATERIAPRIMA = :MATERIAPRIMA')
    ModifySQL.Strings = (
      'update MATERIASPRIMAS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,  '
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  MATERIAPRIMA = :OLD_MATERIAPRIMA')
    InsertSQL.Strings = (
      'insert into MATERIASPRIMAS'
      '  (MATERIAPRIMA, CODIGO, DESCRICAO, OBSERVACAO)'
      'values'
      '  (:MATERIAPRIMA, :CODIGO, :DESCRICAO, :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from MATERIASPRIMAS'
      'where'
      '  MATERIAPRIMA = :OLD_MATERIAPRIMA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MATERIASPRIMAS'
    Tabela_Nome = 'MATERIASPRIMAS'
    Tabela_Chave = 'MATERIAPRIMA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaMATERIAPRIMA: TIntegerField
      FieldName = 'MATERIAPRIMA'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
end

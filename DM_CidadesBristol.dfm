inherited DMCidadesBristol: TDMCidadesBristol
  Left = 200
  Top = 135
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from CIDADES_BRISTOL')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CIDADE,'
      '  DESCRICAO,'
      '  UF'
      'from CIDADES_BRISTOL '
      'where'
      '  CIDADE = :CIDADE')
    ModifySQL.Strings = (
      'update CIDADES_BRISTOL'
      'set'
      '  CIDADE = :CIDADE,'
      '  DESCRICAO = :DESCRICAO,'
      '  UF = :UF'
      'where'
      '  CIDADE = :OLD_CIDADE')
    InsertSQL.Strings = (
      'insert into CIDADES_BRISTOL'
      '  (CIDADE, DESCRICAO, UF)'
      'values'
      '  (:CIDADE, :DESCRICAO, :UF)')
    DeleteSQL.Strings = (
      'delete from CIDADES_BRISTOL'
      'where'
      '  CIDADE = :OLD_CIDADE')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'CIDADE'
    Tabela_Nome = 'CIDADES_BRISTOL'
    Tabela_Chave = 'CIDADE'
  end
  inherited C_Tabela: TClientDataSet
    Left = 35
    Top = 166
    object C_TabelaCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
end

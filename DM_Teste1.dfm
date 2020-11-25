inherited DMTeste1: TDMTeste1
  Height = 501
  Width = 496
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TESTES1')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TESTES1 '
      'where'
      '  TESTE1 = :TESTE1 ')
    ModifySQL.Strings = (
      'update TESTES1'
      'set'
      '  NOME = :NOME,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  TESTE1 = :OLD_TESTE1 '
      '')
    InsertSQL.Strings = (
      'insert into TESTES1'
      '  (TESTE1,NOME, TELEFONE)'
      'values'
      '  (:TESTE1,:NOME, :TELEFONE)'
      '')
    DeleteSQL.Strings = (
      'delete from TESTES1'
      'where'
      '  TESTE1 = :OLD_TESTE1')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TESTES1'
    Tabela_Nome = 'TESTES1'
    Tabela_Chave = 'TESTE1'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTESTE1: TIntegerField
      FieldName = 'TESTE1'
      Required = True
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object C_TabelaTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
  end
end

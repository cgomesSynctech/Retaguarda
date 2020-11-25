inherited DMPermissoes: TDMPermissoes
  Left = 34
  Top = 88
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Permissoes')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PERMISSAO,'
      '  SIGLA,'
      '  DESCRICAO,'
      '  IMPORTACAO'
      'from Permissoes '
      'where'
      '  PERMISSAO = :PERMISSAO')
    ModifySQL.Strings = (
      'update Permissoes'
      'set'
      '  SIGLA = :SIGLA,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  PERMISSAO = :OLD_PERMISSAO')
    InsertSQL.Strings = (
      'insert into Permissoes'
      '  (SIGLA, DESCRICAO)'
      'values'
      '  (:SIGLA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Permissoes'
      'where'
      '  PERMISSAO = :OLD_PERMISSAO')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'Permissoes'
    Tabela_Nome = 'Permissoes'
    Tabela_Chave = 'Permissao'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPERMISSAO: TIntegerField
      FieldName = 'PERMISSAO'
    end
    object C_TabelaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
end

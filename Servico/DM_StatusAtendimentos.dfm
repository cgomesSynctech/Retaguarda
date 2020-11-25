inherited DMStatusAtendimentos: TDMStatusAtendimentos
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '
      'STATUSATENDIMENTO, DESCRICAO'
      ''
      'from STATUSATENDIMENTOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STATUSATENDIMENTO,'
      '  DESCRICAO'
      'from STATUSATENDIMENTOS '
      'where'
      '  STATUSATENDIMENTO = :STATUSATENDIMENTO')
    ModifySQL.Strings = (
      'update STATUSATENDIMENTOS'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  STATUSATENDIMENTO = :OLD_STATUSATENDIMENTO')
    InsertSQL.Strings = (
      'insert into STATUSATENDIMENTOS'
      '  (STATUSATENDIMENTO, DESCRICAO)'
      'values'
      '  (:STATUSATENDIMENTO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from STATUSATENDIMENTOS'
      'where'
      '  STATUSATENDIMENTO = :OLD_STATUSATENDIMENTO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'STATUSATENDIMENTOS'
    Tabela_Nome = 'STATUSATENDIMENTOS'
    Tabela_Chave = 'STATUSATENDIMENTO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaSTATUSATENDIMENTO: TIntegerField
      FieldName = 'STATUSATENDIMENTO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
end

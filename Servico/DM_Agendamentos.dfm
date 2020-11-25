inherited DMAgendamentos: TDMAgendamentos
  Left = 346
  Top = 288
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      '  a.agendamento, a.funcionario, a.cliente, a.data'
      ',  func.nome as NOMEFUNC, cli.nome as NOMECLIENTE'
      ''
      ''
      'from agendamentos a'
      ''
      'inner join favorecidos func on a.funcionario = func.favorecido'
      'inner join favorecidos cli on a.cliente = cli.favorecido'
      ''
      ''
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from agendamentos '
      'where'
      '  AGENDAMENTO = :AGENDAMENTO')
    ModifySQL.Strings = (
      'update agendamentos'
      'set'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  CLIENTE = :CLIENTE,'
      '  DATA = :DATA'
      'where'
      '  AGENDAMENTO = :OLD_AGENDAMENTO')
    InsertSQL.Strings = (
      'insert into agendamentos'
      '  (AGENDAMENTO, FUNCIONARIO, CLIENTE, DATA)'
      'values'
      '  (:AGENDAMENTO, :FUNCIONARIO, :CLIENTE, :DATA)')
    DeleteSQL.Strings = (
      'delete from agendamentos'
      'where'
      '  AGENDAMENTO = :OLD_AGENDAMENTO')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaAGENDAMENTO: TIntegerField
      FieldName = 'AGENDAMENTO'
      Required = True
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 50
    end
    object C_TabelaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
  end
end

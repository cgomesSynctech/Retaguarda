inherited DMTarefas: TDMTarefas
  Left = 133
  Top = 99
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Tarefas')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Tarefas '
      'where'
      '  TAREFA = :TAREFA')
    ModifySQL.Strings = (
      'update Tarefas'
      'set'
      '  ASSUNTO = :ASSUNTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATA = :DATA,'
      '  PREVISAO = :PREVISAO,'
      '  USUORIGEM = :USUORIGEM,'
      '  USUDESTINO = :USUDESTINO,'
      '  PRIORIDADE = :PRIORIDADE,'
      '  CONCLUIDO = :CONCLUIDO,'
      '  DESATIVADO = :DESATIVADO,'
      '  DATACONCLUSAO = :DATACONCLUSAO'
      'where'
      '  TAREFA = :OLD_TAREFA')
    InsertSQL.Strings = (
      'insert into Tarefas'
      '  (TAREFA, ASSUNTO, DESCRICAO, DATA, PREVISAO, USUORIGEM, '
      'USUDESTINO, PRIORIDADE, '
      '   CONCLUIDO, DESATIVADO,DATACONCLUSAO)'
      'values'
      '  (:TAREFA, :ASSUNTO, :DESCRICAO, :DATA, :PREVISAO, :USUORIGEM, '
      ':USUDESTINO, '
      '   :PRIORIDADE, :CONCLUIDO, :DESATIVADO, :DATACONCLUSAO)')
    DeleteSQL.Strings = (
      'delete from Tarefas'
      'where'
      '  TAREFA = :OLD_TAREFA')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    KeyForIDs = 'TAREFAS'
    Tabela_Nome = 'TAREFAS'
    Tabela_Chave = 'TAREFA'
  end
  inherited C_Tabela: TClientDataSet
    Top = 158
    object C_TabelaTAREFA: TIntegerField
      FieldName = 'TAREFA'
      Required = True
    end
    object C_TabelaASSUNTO: TStringField
      DisplayLabel = 'Tarefa'
      FieldName = 'ASSUNTO'
      Size = 50
    end
    object C_TabelaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 700
    end
    object C_TabelaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      OnChange = C_TabelaDATAChange
    end
    object C_TabelaPREVISAO: TDateField
      DisplayLabel = 'Previs'#227'o'
      FieldName = 'PREVISAO'
    end
    object C_TabelaUSUORIGEM: TIntegerField
      FieldName = 'USUORIGEM'
    end
    object C_TabelaUSUDESTINO: TIntegerField
      FieldName = 'USUDESTINO'
    end
    object C_TabelaPRIORIDADE: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'PRIORIDADE'
    end
    object C_TabelaCONCLUIDO: TStringField
      DisplayLabel = 'Conclu'#237'da'
      FieldName = 'CONCLUIDO'
      OnChange = C_TabelaCONCLUIDOChange
      Size = 1
    end
    object C_TabelaDESATIVADO: TStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelalkUsuOrigem: TStringField
      DisplayLabel = 'De'
      FieldKind = fkLookup
      FieldName = 'lkUsuOrigem'
      LookupDataSet = DMAgenda.C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'USUORIGEM'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUsuDestino: TStringField
      DisplayLabel = 'Para'
      FieldKind = fkLookup
      FieldName = 'lkUsuDestino'
      LookupDataSet = DMAgenda.C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'USUDESTINO'
      Size = 30
      Lookup = True
    end
    object C_TabelaDATACONCLUSAO: TDateField
      FieldName = 'DATACONCLUSAO'
    end
  end
end

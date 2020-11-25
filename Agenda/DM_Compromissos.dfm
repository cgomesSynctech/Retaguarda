inherited DMCompromissos: TDMCompromissos
  Left = 33
  Top = 84
  Height = 419
  Width = 583
  inherited OpenDialog: TOpenDialog
    Left = 126
  end
  inherited SaveDialog: TSaveDialog
    Left = 179
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select c.*, f.Nome as CLIENTE_NOME, f.TIPOFAVORECIDO'
      'From COMPROMISSOS c '
      'Left join Favorecidos f on c.Cliente = f.Favorecido'
      '')
    Left = 31
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from COMPROMISSOS '
      'where'
      '  COMPROMISSO = :COMPROMISSO')
    ModifySQL.Strings = (
      'update COMPROMISSOS'
      'set'
      '  USUORIGEM = :USUORIGEM,'
      '  USUDESTINO = :USUDESTINO,'
      '  ASSUNTO = :ASSUNTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATA = :DATA,'
      '  DATACONCLUSAO = :DATACONCLUSAO,'
      '  HORARIO = :HORARIO,'
      '  HORARIO_FINAL = :HORARIO_FINAL,'
      '  DESATIVADO = :DESATIVADO,'
      '  CONCLUIDO = :CONCLUIDO,'
      '  CONCLUIDO_ANOTACOES = :CONCLUIDO_ANOTACOES,'
      '  CLIENTE = :CLIENTE,'
      '  CATEGORIA = :CATEGORIA,'
      '  CONFIG_ID = :CONFIG_ID,'
      '  TAREFA = :TAREFA,'
      '  USUARIOS = :USUARIOS'
      'where'
      '  COMPROMISSO = :OLD_COMPROMISSO')
    InsertSQL.Strings = (
      'insert into COMPROMISSOS'
      
        '  (COMPROMISSO, USUORIGEM, USUDESTINO, ASSUNTO, DESCRICAO, DATA,' +
        ' '
      'DATACONCLUSAO, '
      '   HORARIO, HORARIO_FINAL, DESATIVADO, CONCLUIDO, '
      'CONCLUIDO_ANOTACOES, '
      '   CLIENTE, CATEGORIA, CONFIG_ID, TAREFA, USUARIOS)'
      'values'
      '  (:COMPROMISSO, :USUORIGEM, :USUDESTINO, :ASSUNTO, :DESCRICAO, '
      ':DATA, '
      '   :DATACONCLUSAO, :HORARIO, :HORARIO_FINAL, :DESATIVADO, '
      ':CONCLUIDO, :CONCLUIDO_ANOTACOES, '
      '   :CLIENTE, :CATEGORIA, :CONFIG_ID, :TAREFA, :USUARIOS)')
    DeleteSQL.Strings = (
      'delete from COMPROMISSOS'
      'where'
      '  COMPROMISSO = :OLD_COMPROMISSO')
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    AntesDeFechar = DataModuleCreate
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'COMPROMISSOS'
    Tabela_Nome = 'COMPROMISSOS'
    Tabela_Chave = 'COMPROMISSO'
  end
  inherited DlgMsg: TDlgMsg
    Left = 78
  end
  inherited C_Tabela: TClientDataSet
    Top = 160
    object C_TabelaCOMPROMISSO: TIntegerField
      FieldName = 'COMPROMISSO'
      Required = True
    end
    object C_TabelaUSUORIGEM: TIntegerField
      FieldName = 'USUORIGEM'
    end
    object C_TabelaUSUDESTINO: TIntegerField
      FieldName = 'USUDESTINO'
    end
    object C_TabelaUSUARIOS: TStringField
      FieldName = 'USUARIOS'
      Size = 100
    end
    object C_TabelaASSUNTO: TStringField
      DisplayLabel = 'Compromisso'
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
    end
    object C_TabelaDATACONCLUSAO: TDateField
      DisplayLabel = 'Data da Conclus'#227'o'
      FieldName = 'DATACONCLUSAO'
    end
    object C_TabelaHORARIO: TIntegerField
      FieldName = 'HORARIO'
    end
    object C_TabelaHORARIO_FINAL: TIntegerField
      FieldName = 'HORARIO_FINAL'
    end
    object C_TabelaDESATIVADO: TStringField
      DisplayLabel = 'Cancelado'
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaCONCLUIDO: TStringField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'CONCLUIDO'
      Size = 1
    end
    object C_TabelaCONCLUIDO_ANOTACOES: TStringField
      DisplayLabel = 'Anota'#231#245'es Gerais'
      FieldName = 'CONCLUIDO_ANOTACOES'
      Size = 700
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TabelaCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      OnChange = C_TabelaCATEGORIAChange
    end
    object C_TabelaCONFIG_ID: TIntegerField
      FieldName = 'CONFIG_ID'
    end
    object C_TabelaTAREFA: TIntegerField
      FieldName = 'TAREFA'
    end
    object C_TabelaCLIENTE_NOME: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'CLIENTE_NOME'
      Size = 50
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelalkCategoria: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'lkCategoria'
      LookupDataSet = DMAgenda.C_Categorias
      LookupKeyFields = 'CATEGORIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CATEGORIA'
      Size = 30
      Lookup = True
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
    object C_TabelalkTarefa: TStringField
      DisplayLabel = 'Tarefa Ref.'
      FieldKind = fkLookup
      FieldName = 'lkTarefa'
      LookupDataSet = DMAgenda.C_Tarefas
      LookupKeyFields = 'TAREFA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAREFA'
      Size = 50
      Lookup = True
    end
  end
  object Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 282
    Top = 16
  end
  object Q_Config_Comp: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From CONFIG_COMP')
    Left = 180
    Top = 4
  end
  object C_Config_CompDS: TDataSource
    DataSet = C_Config_Comp
    Left = 180
    Top = 154
  end
  object C_Config_Comp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'C_Config_CompProvider'
    Left = 180
    Top = 104
    object C_Config_CompCONFIG_ID: TIntegerField
      FieldName = 'CONFIG_ID'
      Required = True
    end
    object C_Config_CompDATA_INI: TDateField
      FieldName = 'DATA_INI'
    end
    object C_Config_CompDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
    end
    object C_Config_CompTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_Config_CompTIPO_SEMANAL: TStringField
      FieldName = 'TIPO_SEMANAL'
      Size = 7
    end
    object C_Config_CompTIPO_MENSAL: TIntegerField
      FieldName = 'TIPO_MENSAL'
    end
  end
  object C_Config_CompProvider: TDataSetProvider
    DataSet = Q_Config_Comp
    Constraints = True
    Options = [poAllowCommandText]
    Left = 180
    Top = 55
  end
  object C_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'C_ConsultaP'
    Left = 282
    Top = 112
  end
  object C_ConsultaP: TDataSetProvider
    DataSet = Q_Consulta
    Constraints = True
    Options = [poAllowCommandText]
    Left = 286
    Top = 64
  end
end

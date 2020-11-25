inherited DMAgenciasEmpresa: TDMAgenciasEmpresa
  Left = 27
  Top = 102
  Height = 403
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from AGENCIAS'
      'where tipo = '#39'E'#39)
    object Q_TabelaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object Q_TabelaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Q_TabelaTAXA: TIBBCDField
      FieldName = 'TAXA'
      Precision = 18
      Size = 2
    end
    object Q_TabelaPERC: TIBBCDField
      FieldName = 'PERC'
      Precision = 18
      Size = 2
    end
    object Q_TabelaTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AGENCIA,'
      '  DESCRICAO,'
      '  TAXA,'
      '  PERC,'
      '  TIPO'
      'from AGENCIAS '
      'where'
      '  AGENCIA = :AGENCIA')
    ModifySQL.Strings = (
      'update AGENCIAS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXA = :TAXA,'
      '  PERC = :PERC,'
      '  TIPO = :TIPO'
      'where'
      '  AGENCIA = :OLD_AGENCIA')
    InsertSQL.Strings = (
      'insert into AGENCIAS'
      '  (AGENCIA, DESCRICAO, TAXA, PERC, TIPO)'
      'values'
      '  (:AGENCIA, :DESCRICAO, :TAXA, :PERC, :TIPO)')
    DeleteSQL.Strings = (
      'delete from AGENCIAS'
      'where'
      '  AGENCIA = :OLD_AGENCIA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'AGENCIAS'
    Tabela_Nome = 'AGENCIAS'
    Tabela_Chave = 'AGENCIA'
    Top = 271
  end
  inherited P_Tabela: TDataSetProvider
    Left = 31
  end
  inherited C_Tabela: TClientDataSet
    Left = 34
    Top = 167
    object C_TabelaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaTAXA: TBCDField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA'
      Precision = 18
      Size = 2
    end
    object C_TabelaPERC: TBCDField
      DisplayLabel = 'Perc.:'
      FieldName = 'PERC'
      Precision = 18
      Size = 2
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_TabelaQ_AgenteCambio: TDataSetField
      FieldName = 'Q_AgenteCambio'
      IncludeObjectField = False
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object C_AgentesCambio: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_AgenteCambio
    Filtered = True
    Params = <>
    BeforeInsert = C_AgentesCambioBeforeInsert
    OnNewRecord = C_AgentesCambioNewRecord
    Left = 178
    Top = 52
    object C_AgentesCambioAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object C_AgentesCambioINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_AgentesCambioCAMBIO: TBCDField
      DisplayLabel = 'Câmbio'
      FieldName = 'CAMBIO'
      Precision = 18
      Size = 2
    end
    object C_AgentesCambiocbIndexador: TStringField
      DisplayLabel = 'Indexador'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'cbIndexador'
      LookupDataSet = Q_Indexador
      LookupKeyFields = 'INDEXADOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INDEXADOR'
      Size = 40
      Lookup = True
    end
    object C_AgentesCambioAGENCIA_CAMBIO: TIntegerField
      FieldName = 'AGENCIA_CAMBIO'
      Required = True
    end
    object C_AgentesCambioDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
  end
  object Q_AgenteCambio: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from AGENCIAS_CAMBIO'
      'where AGENCIA =:AGENCIA')
    UpdateObject = U_AgentesCambio
    Left = 177
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'AGENCIA'
        ParamType = ptUnknown
      end>
    object Q_AgenteCambioAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object Q_AgenteCambioINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object Q_AgenteCambioCAMBIO: TIBBCDField
      FieldName = 'CAMBIO'
      Precision = 18
      Size = 2
    end
    object Q_AgenteCambioAGENCIA_CAMBIO: TIntegerField
      FieldName = 'AGENCIA_CAMBIO'
      Required = True
    end
    object Q_AgenteCambioDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
  end
  object Q_Indexador: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INDEXADORES'
      'where indexador>0')
    Left = 272
    Top = 100
  end
  object dsAgentesCambio: TDataSource
    DataSet = C_AgentesCambio
    Left = 176
    Top = 101
  end
  object U_AgentesCambio: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AGENCIA_CAMBIO,'
      '  AGENCIA,'
      '  INDEXADOR,'
      '  CAMBIO,'
      '  DATA'
      'from AGENCIAS_CAMBIO '
      'where'
      '  AGENCIA_CAMBIO = :AGENCIA_CAMBIO')
    ModifySQL.Strings = (
      'update AGENCIAS_CAMBIO'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  INDEXADOR = :INDEXADOR,'
      '  CAMBIO = :CAMBIO,'
      '  DATA = :DATA'
      'where'
      '  AGENCIA_CAMBIO = :OLD_AGENCIA_CAMBIO')
    InsertSQL.Strings = (
      'insert into AGENCIAS_CAMBIO'
      '  (AGENCIA_CAMBIO, AGENCIA, INDEXADOR, CAMBIO, DATA)'
      'values'
      '  (:AGENCIA_CAMBIO, :AGENCIA, :INDEXADOR, :CAMBIO, :DATA)')
    DeleteSQL.Strings = (
      'delete from AGENCIAS_CAMBIO'
      'where'
      '  AGENCIA_CAMBIO = :OLD_AGENCIA_CAMBIO')
    Left = 264
    Top = 3
  end
end

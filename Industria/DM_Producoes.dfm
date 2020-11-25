inherited DMProducao: TDMProducao
  Left = 533
  Top = 166
  Height = 494
  Width = 753
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from PRODUCOES')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRODUCAO,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  INSUMOPRODUZIDO,'
      '  FAVORECIDO,'
      '  DTINICIO,'
      '  DTFIM,'
      '  CUSTO,'
      '  VALIDADE,'
      '  OBSERVACAO'
      'from PRODUCOES '
      'where'
      '  PRODUCAO = :PRODUCAO')
    ModifySQL.Strings = (
      'update PRODUCOES'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  INSUMOPRODUZIDO = :INSUMOPRODUZIDO,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DTINICIO = :DTINICIO,'
      '  DTFIM = :DTFIM,'
      '  CUSTO = :CUSTO,'
      '  VALIDADE = :VALIDADE,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  PRODUCAO = :OLD_PRODUCAO')
    InsertSQL.Strings = (
      'insert into PRODUCOES'
      '  (PRODUCAO, CODIGO, DESCRICAO, INSUMOPRODUZIDO, FAVORECIDO, '
      'DTINICIO, DTFIM, '
      'CUSTO, VALIDADE, OBSERVACAO)'
      'values'
      
        '  (:PRODUCAO, :CODIGO, :DESCRICAO, :INSUMOPRODUZIDO, :FAVORECIDO' +
        ', '
      ':DTINICIO, '
      ':DTFIM, '
      '   :CUSTO, :VALIDADE, :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from PRODUCOES'
      'where'
      '  PRODUCAO = :OLD_PRODUCAO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'PRODUCOES'
    Tabela_Nome = 'PRODUCOES'
    Tabela_Chave = 'PRODUCAO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
      Origin = 'PRODUCOES.PRODUCAO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'PRODUCOES.CODIGO'
      Size = 10
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRODUCOES.DESCRICAO'
      Size = 30
    end
    object C_TabelaINSUMOPRODUZIDO: TIntegerField
      FieldName = 'INSUMOPRODUZIDO'
      Origin = 'PRODUCOES.INSUMOPRODUZIDO'
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'PRODUCOES.FAVORECIDO'
    end
    object C_TabelaDTINICIO: TDateTimeField
      FieldName = 'DTINICIO'
      Origin = 'PRODUCOES.DTINICIO'
    end
    object C_TabelaDTFIM: TDateTimeField
      FieldName = 'DTFIM'
      Origin = 'PRODUCOES.DTFIM'
    end
    object C_TabelaCUSTO: TBCDField
      FieldName = 'CUSTO'
      Origin = 'PRODUCOES.CUSTO'
      Precision = 18
      Size = 3
    end
    object C_TabelaVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = 'PRODUCOES.VALIDADE'
    end
    object C_TabelaQ_ProducoesMaquinas: TDataSetField
      FieldName = 'Q_ProducoesMaquinas'
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'PRODUCOES.OBSERVACAO'
      Size = 500
    end
    object C_TabelalkInsumos: TStringField
      FieldKind = fkLookup
      FieldName = 'lkInsumos'
      LookupDataSet = C_Insumos
      LookupKeyFields = 'INSUMO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INSUMOPRODUZIDO'
      Size = 80
      Lookup = True
    end
  end
  object Q_Maquinas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MA.maquina, MA.descricao'
      'FROM MAQUINASINDUSTRIA MA'
      'ORDER BY MA.DESCRICAO ASC')
    Left = 315
    Top = 230
  end
  object P_Maquinas: TDataSetProvider
    DataSet = Q_Maquinas
    Constraints = True
    Left = 315
    Top = 344
  end
  object C_Maquinas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Maquinas'
    Left = 315
    Top = 287
    object C_MaquinasMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
      Origin = 'MAQUINASINDUSTRIA.MAQUINA'
      Required = True
    end
    object C_MaquinasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MAQUINASINDUSTRIA.DESCRICAO'
      Size = 255
    end
  end
  object C_MaquinasDS: TDataSource
    DataSet = C_Maquinas
    Left = 313
    Top = 394
  end
  object Q_ProducoesMaquinas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT * FROM PRODUCOESMAQUINAS'
      'WHERE producao = :PRODUCAO')
    UpdateObject = U_ProducoesMaquinas
    Left = 307
    Top = 10
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODUCAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ProducoesMaquinas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ProducoesMaquinas
    Params = <>
    OnNewRecord = C_ProducoesMaquinasNewRecord
    Left = 312
    Top = 65
    object C_ProducoesMaquinasPRODUCAOMAQUINA: TIntegerField
      FieldName = 'PRODUCAOMAQUINA'
      Origin = 'PRODUCOESMAQUINAS.PRODUCAOMAQUINA'
      Required = True
    end
    object C_ProducoesMaquinasPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
      Origin = 'PRODUCOESMAQUINAS.PRODUCAO'
    end
    object C_ProducoesMaquinasMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
      Origin = 'PRODUCOESMAQUINAS.MAQUINA'
    end
    object C_ProducoesMaquinasQUANTIDADEUTILIZADA: TBCDField
      FieldName = 'QUANTIDADEUTILIZADA'
      Origin = 'PRODUCOESMAQUINAS.QUANTIDADEUTILIZADA'
      Precision = 18
      Size = 3
    end
    object C_ProducoesMaquinasCUSTO: TBCDField
      FieldName = 'CUSTO'
      Origin = 'PRODUCOESMAQUINAS.CUSTO'
      Precision = 18
      Size = 3
    end
    object C_ProducoesMaquinasDTINICIO: TDateTimeField
      FieldName = 'DTINICIO'
      Origin = 'PRODUCOESMAQUINAS.DTINICIO'
    end
    object C_ProducoesMaquinasDTFIM: TDateTimeField
      FieldName = 'DTFIM'
      Origin = 'PRODUCOESMAQUINAS.DTFIM'
    end
    object C_ProducoesMaquinaslkMaquinasIndustria: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMaquinasIndustria'
      LookupDataSet = C_Maquinas
      LookupKeyFields = 'MAQUINA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MAQUINA'
      Size = 80
      Lookup = True
    end
  end
  object C_ProducoesMaquinasDS: TDataSource
    DataSet = C_ProducoesMaquinas
    Left = 311
    Top = 112
  end
  object U_ProducoesMaquinas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRODUCAOMAQUINA,'
      '  PRODUCAO,'
      '  MAQUINA,'
      '  QUANTIDADEUTILIZADA,'
      '  CUSTO,'
      '  DTINICIO,'
      '  DTFIM'
      'from PRODUCOESMAQUINAS '
      'where'
      '  PRODUCAOMAQUINA = :PRODUCAOMAQUINA')
    ModifySQL.Strings = (
      'update PRODUCOESMAQUINAS'
      'set'
      '  PRODUCAO = :PRODUCAO,'
      '  MAQUINA = :MAQUINA,'
      '  QUANTIDADEUTILIZADA = :QUANTIDADEUTILIZADA,'
      '  CUSTO = :CUSTO,'
      '  DTINICIO = :DTINICIO,'
      '  DTFIM = :DTFIM'
      'where'
      '  PRODUCAOMAQUINA = :OLD_PRODUCAOMAQUINA')
    InsertSQL.Strings = (
      'insert into PRODUCOESMAQUINAS'
      '  (PRODUCAOMAQUINA, PRODUCAO, MAQUINA, QUANTIDADEUTILIZADA, '
      'CUSTO, DTINICIO, DTFIM)'
      'values'
      '  (:PRODUCAOMAQUINA, :PRODUCAO, :MAQUINA, :QUANTIDADEUTILIZADA, '
      ':CUSTO, :DTINICIO, :DTFIM)')
    DeleteSQL.Strings = (
      'delete from PRODUCOESMAQUINAS'
      'where'
      '  PRODUCAOMAQUINA = :OLD_PRODUCAOMAQUINA')
    Left = 313
    Top = 171
  end
  object Q_Insumos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT insumo, descricao'
      'FROM INSUMOS'
      'ORDER BY descricao ASC')
    Left = 549
    Top = 13
  end
  object P_Insumos: TDataSetProvider
    DataSet = Q_Insumos
    Constraints = True
    Left = 549
    Top = 64
  end
  object C_Insumos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Insumos'
    Left = 549
    Top = 114
    object C_InsumosINSUMO: TIntegerField
      FieldName = 'INSUMO'
      Required = True
    end
    object C_InsumosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
end

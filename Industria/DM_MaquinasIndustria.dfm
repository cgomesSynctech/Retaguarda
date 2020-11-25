inherited DMMaquinasIndustria: TDMMaquinasIndustria
  Width = 465
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from MAQUINASINDUSTRIA')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MAQUINA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  UNIDADECONSUMO,'
      '  CUSTOUNITARIO,'
      '  TIPOMAQUINA,'
      '  OBSERVACAO'
      'from MAQUINASINDUSTRIA '
      'where'
      '  MAQUINA = :MAQUINA')
    ModifySQL.Strings = (
      'update MAQUINASINDUSTRIA'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  UNIDADECONSUMO = :UNIDADECONSUMO,'
      '  CUSTOUNITARIO = :CUSTOUNITARIO,'
      '  TIPOMAQUINA = :TIPOMAQUINA,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  MAQUINA = :OLD_MAQUINA')
    InsertSQL.Strings = (
      'insert into MAQUINASINDUSTRIA'
      '  (MAQUINA, CODIGO, DESCRICAO, UNIDADECONSUMO, CUSTOUNITARIO, '
      'TIPOMAQUINA, OBSERVACAO)'
      'values'
      
        '  (:MAQUINA, :CODIGO, :DESCRICAO, :UNIDADECONSUMO, :CUSTOUNITARI' +
        'O, '
      ':TIPOMAQUINA, '
      '   :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from MAQUINASINDUSTRIA'
      'where'
      '  MAQUINA = :OLD_MAQUINA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MAQUINASINDUSTRIA'
    Tabela_Nome = 'MAQUINASINDUSTRIA'
    Tabela_Chave = 'MAQUINA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaMAQUINA: TIntegerField
      FieldName = 'MAQUINA'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_TabelaCUSTOUNITARIO: TBCDField
      FieldName = 'CUSTOUNITARIO'
      Precision = 18
      Size = 3
    end
    object C_TabelaTIPOMAQUINA: TIntegerField
      FieldName = 'TIPOMAQUINA'
    end
    object C_TabelalkTiposMaquina: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTiposMaquina'
      LookupDataSet = C_TiposMaquinas
      LookupKeyFields = 'TIPOMAQUINA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOMAQUINA'
      Size = 50
      Lookup = True
    end
    object C_TabelaUNIDADECONSUMO: TStringField
      FieldName = 'UNIDADECONSUMO'
      Size = 30
    end
    object C_TabelalkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADECONSUMO'
      Size = 30
      Lookup = True
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
  object Q_TiposMaquinas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMAQUINA, DESCRICAO From TIPOSMAQUINAS')
    Left = 221
    Top = 5
  end
  object P_TiposMaquinas: TDataSetProvider
    DataSet = Q_TiposMaquinas
    Constraints = True
    Left = 221
    Top = 56
  end
  object C_TiposMaquinas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposMaquinas'
    Left = 221
    Top = 106
    object C_TiposMaquinasTIPOMAQUINA: TIntegerField
      FieldName = 'TIPOMAQUINA'
      Required = True
    end
    object C_TiposMaquinasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select UNIDADE, DESCRICAO From UNIDADES')
    Left = 325
    Top = 5
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 325
    Top = 56
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 325
    Top = 106
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
  end
end

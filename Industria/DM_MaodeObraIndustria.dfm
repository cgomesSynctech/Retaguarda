inherited DMMaodeObraIndustria: TDMMaodeObraIndustria
  Width = 319
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from MAOSDEOBRA')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MAODEOBRA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  DESCRICAODETALHADA,'
      '  UNIDADE'
      'from MAOSDEOBRA '
      'where'
      '  MAODEOBRA = :MAODEOBRA')
    ModifySQL.Strings = (
      'update MAOSDEOBRA'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  DESCRICAODETALHADA = :DESCRICAODETALHADA,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  MAODEOBRA = :OLD_MAODEOBRA')
    InsertSQL.Strings = (
      'insert into MAOSDEOBRA'
      '  (MAODEOBRA, CODIGO, DESCRICAO, DESCRICAODETALHADA, UNIDADE)'
      'values'
      
        '  (:MAODEOBRA, :CODIGO, :DESCRICAO, :DESCRICAODETALHADA, :UNIDAD' +
        'E)')
    DeleteSQL.Strings = (
      'delete from MAOSDEOBRA'
      'where'
      '  MAODEOBRA = :OLD_MAODEOBRA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MAOSDEOBRA'
    Tabela_Nome = 'MAOSDEOBRA'
    Tabela_Chave = 'MAODEOBRA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaMAODEOBRA: TIntegerField
      FieldName = 'MAODEOBRA'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object C_TabelaDESCRICAODETALHADA: TStringField
      FieldName = 'DESCRICAODETALHADA'
      Size = 1000
    end
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_TabelalkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select UNIDADE, DESCRICAO From UNIDADES')
    Left = 95
    Top = 5
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 95
    Top = 56
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 95
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

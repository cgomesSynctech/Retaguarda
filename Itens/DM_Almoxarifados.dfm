inherited DMAlmoxarifados: TDMAlmoxarifados
  Width = 290
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Almoxarifados')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Almoxarifados '
      'where'
      '  ALMOXARIFADO = :ALMOXARIFADO')
    ModifySQL.Strings = (
      'update Almoxarifados'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  ORDENARRETIRADA = :ORDENARRETIRADA,'
      '  CONTROLEGONDOLA = :CONTROLEGONDOLA,'
      '  EMPRESA = :EMPRESA'
      'where'
      '  ALMOXARIFADO = :OLD_ALMOXARIFADO')
    InsertSQL.Strings = (
      'insert into Almoxarifados'
      '  (ALMOXARIFADO, DESCRICAO, ORDENARRETIRADA, CONTROLEGONDOLA, '
      'EMPRESA)'
      'values'
      '  (:ALMOXARIFADO, :DESCRICAO, :ORDENARRETIRADA, '
      ':CONTROLEGONDOLA,:EMPRESA)')
    DeleteSQL.Strings = (
      'delete from Almoxarifados'
      'where'
      '  ALMOXARIFADO = :OLD_ALMOXARIFADO')
    Top = 50
  end
  inherited DMComponent: TDMComponent
    AntesDeApagar = DMComponentAntesDeApagar
    KeyForIDs = 'Almoxarifados'
    Tabela_Nome = 'Almoxarifados'
    Tabela_Chave = 'Almoxarifado'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ALMOXARIFADOS.ALMOXARIFADO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
    object C_TabelaORDENARRETIRADA: TStringField
      FieldName = 'ORDENARRETIRADA'
      Origin = 'ALMOXARIFADOS.ORDENARRETIRADA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCONTROLEGONDOLA: TStringField
      FieldName = 'CONTROLEGONDOLA'
      Origin = 'ALMOXARIFADOS.CONTROLEGONDOLA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 91
    Top = 166
  end
end

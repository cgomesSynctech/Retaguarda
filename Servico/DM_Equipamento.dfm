inherited DMEquipamento: TDMEquipamento
  Left = 228
  Top = 224
  Height = 373
  Width = 392
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'SELECT'
      
        '   e.EQUIPAMENTO, e.FAVORECIDO, e.MARCA, e.TECNOLOGIA,    e.NUMM' +
        'AQUINA, e.PAVIMENTOS,'
      ''
      'f.nome as DESCFAVORECIDO'
      ''
      'from EQUIPAMENTOS e'
      'left join favorecidos f on e.favorecido = f.favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EQUIPAMENTO,'
      '  FAVORECIDO,'
      '  NUMMAQUINA,'
      '  MARCA,'
      '  TECNOLOGIA,'
      '  PAVIMENTOS'
      'from EQUIPAMENTOS '
      'where'
      '  EQUIPAMENTO = :EQUIPAMENTO')
    ModifySQL.Strings = (
      'update EQUIPAMENTOS'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  MARCA = :MARCA,'
      '  TECNOLOGIA = :TECNOLOGIA,'
      '  NUMMAQUINA = :NUMMAQUINA,'
      '  PAVIMENTOS = :PAVIMENTOS'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into EQUIPAMENTOS'
      
        '  (EQUIPAMENTO, FAVORECIDO, MARCA, TECNOLOGIA, NUMMAQUINA, PAVIM' +
        'ENTOS)'
      'values'
      
        '  (:EQUIPAMENTO, :FAVORECIDO, :MARCA, :TECNOLOGIA, :NUMMAQUINA, ' +
        ':PAVIMENTOS)')
    DeleteSQL.Strings = (
      'delete from EQUIPAMENTOS'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'EQUIPAMENTOS'
    Tabela_Nome = 'EQUIPAMENTOS'
    Tabela_Chave = 'EQUIPAMENTO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Required = True
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_TabelaMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object C_TabelaTECNOLOGIA: TIntegerField
      FieldName = 'TECNOLOGIA'
    end
    object C_TabelaNUMMAQUINA: TStringField
      FieldName = 'NUMMAQUINA'
      Size = 25
    end
    object C_TabelaPAVIMENTOS: TIntegerField
      FieldName = 'PAVIMENTOS'
    end
    object C_TabelalkMarca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMarca'
      LookupDataSet = C_Marcas
      LookupKeyFields = 'MARCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MARCA'
      Size = 25
      Lookup = True
    end
    object C_TabelalkTecnologia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnologia'
      LookupDataSet = C_Tecnologias
      LookupKeyFields = 'TECNOLOGIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TECNOLOGIA'
      Size = 25
      Lookup = True
    end
    object C_TabelaDESCFAVORECIDO: TStringField
      FieldName = 'DESCFAVORECIDO'
      Size = 50
    end
  end
  object Q_Marcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  '
      '  MARCA, DESCRICAO'
      'from MARCAS'
      'order by 2')
    Left = 216
    Top = 12
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Left = 216
    Top = 60
  end
  object C_Marcas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marcas'
    Left = 214
    Top = 110
    object C_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_MarcasMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
  end
  object Q_Tecnologias: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  '
      '  TECNOLOGIA, DESCRICAO'
      'from TECNOLOGIAS'
      'order by 2')
    Left = 300
    Top = 14
  end
  object P_Tecnologias: TDataSetProvider
    DataSet = Q_Tecnologias
    Constraints = True
    Left = 300
    Top = 62
  end
  object C_Tecnologias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tecnologias'
    Left = 298
    Top = 112
    object C_TecnologiasTECNOLOGIA: TIntegerField
      FieldName = 'TECNOLOGIA'
      Required = True
    end
    object C_TecnologiasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
end

inherited DMModelos: TDMModelos
  Left = 429
  Top = 207
  Height = 397
  Width = 405
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Modelos')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Modelos '
      'where'
      '  MODELO = :MODELO')
    ModifySQL.Strings = (
      'update Modelos'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TIPOEQUIPAMENTO = :TIPOEQUIPAMENTO,'
      '  MARCA = :MARCA,'
      '  FABRICANTE = :FABRICANTE,'
      '  COR = :COR'
      'where'
      '  MODELO = :OLD_MODELO')
    InsertSQL.Strings = (
      'insert into Modelos'
      '  (MODELO, CODIGO, DESCRICAO, TIPOEQUIPAMENTO, MARCA, '
      'FABRICANTE,COR)'
      'values'
      '  (:MODELO, :CODIGO, :DESCRICAO, :TIPOEQUIPAMENTO, :MARCA, '
      ':FABRICANTE,:COR)')
    DeleteSQL.Strings = (
      'delete from Modelos'
      'where'
      '  MODELO = :OLD_MODELO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Modelos'
    Tabela_Nome = 'Modelos'
    Tabela_Chave = 'Modelo'
    Left = 34
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaMODELO: TIntegerField
      FieldName = 'MODELO'
      Required = True
      OnValidate = C_TabelaMODELOValidate
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object C_TabelaTIPOEQUIPAMENTO: TIntegerField
      FieldName = 'TIPOEQUIPAMENTO'
    end
    object C_TabelaMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object C_TabelaFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_TabelalkTipoEquipamento: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoEquipamento'
      LookupDataSet = C_TiposEquip
      LookupKeyFields = 'TIPOEQUIPAMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOEQUIPAMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkFabricante: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFabricante'
      LookupDataSet = C_Fabricantes
      LookupKeyFields = 'FABRICANTE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FABRICANTE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkMarcas: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMarcas'
      LookupDataSet = C_Marcas
      LookupKeyFields = 'MARCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MARCA'
      Size = 30
      Lookup = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object C_TabelaCOR: TStringField
      FieldName = 'COR'
      Size = 15
    end
  end
  object Q_TiposEquip: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tipoequipamento, descricao'
      'from tipoequipamentos'
      'order by descricao')
    Left = 176
    Top = 8
  end
  object P_TiposEquip: TDataSetProvider
    DataSet = Q_TiposEquip
    Constraints = True
    Left = 176
    Top = 56
  end
  object C_TiposEquip: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposEquip'
    Left = 176
    Top = 104
    object C_TiposEquipTIPOEQUIPAMENTO: TIntegerField
      FieldName = 'TIPOEQUIPAMENTO'
      Required = True
    end
    object C_TiposEquipDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select fabricante, descricao'
      'from fabricantes'
      'where desativado = '#39'N'#39
      'order by descricao')
    Left = 256
    Top = 8
  end
  object P_Fabricantes: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 256
    Top = 56
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fabricantes'
    Left = 256
    Top = 104
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Required = True
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_Marcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select marca, descricao'
      'from marcas'
      'order by descricao')
    Left = 176
    Top = 160
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Left = 176
    Top = 208
  end
  object C_Marcas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marcas'
    Left = 240
    Top = 200
    object C_MarcasMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
    object C_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

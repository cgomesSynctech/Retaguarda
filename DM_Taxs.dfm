inherited DMTaxs: TDMTaxs
  Left = 85
  Top = 149
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TAXS')
    object Q_TabelaTAX: TIntegerField
      FieldName = 'TAX'
      Required = True
    end
    object Q_TabelaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Q_TabelaPERCENTUAL: TIBBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
  end
  inherited Q_MasterDS: TDataSource
    Left = 102
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TAX,'
      '  DESCRICAO,'
      '  PERCENTUAL'
      'from TAXS '
      'where'
      '  TAX = :TAX')
    ModifySQL.Strings = (
      'update TAXS'
      'set'
      '  TAX = :TAX,'
      '  DESCRICAO = :DESCRICAO,'
      '  PERCENTUAL = :PERCENTUAL'
      'where'
      '  TAX = :OLD_TAX')
    InsertSQL.Strings = (
      'insert into TAXS'
      '  (TAX, DESCRICAO, PERCENTUAL)'
      'values'
      '  (:TAX, :DESCRICAO, :PERCENTUAL)')
    DeleteSQL.Strings = (
      'delete from TAXS'
      'where'
      '  TAX = :OLD_TAX')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'Taxs'
    Tabela_Nome = 'Taxs'
    Tabela_Chave = 'Tax'
    MestreDetalhe = True
    GenerateIDFor.Strings = (
      'C_TaxItens=TaxItem')
  end
  inherited DlgMsg: TDlgMsg
    Left = 117
  end
  inherited C_Tabela: TClientDataSet
    Left = 34
    object C_TabelaTAX: TIntegerField
      FieldName = 'TAX'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
    object C_TabelaQ_TaxItens: TDataSetField
      FieldName = 'Q_TaxItens'
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 2
    end
  end
  inherited ResultSet: TClientDataSet
    Left = 102
    Top = 50
  end
  object Q_TaxItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from TAXSITENS '
      'where tax = :tax')
    UpdateObject = U_TaxItens
    Left = 178
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TAX'
        ParamType = ptUnknown
      end>
    object Q_TaxItensTAXITEM: TIntegerField
      FieldName = 'TAXITEM'
    end
    object Q_TaxItensTAX: TIntegerField
      FieldName = 'TAX'
    end
    object Q_TaxItensTAXAGENCIA: TIntegerField
      FieldName = 'TAXAGENCIA'
    end
  end
  object Q_TaxItensDS: TDataSource
    DataSet = C_TaxItens
    Left = 176
    Top = 217
  end
  object U_TaxItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TAXITEM,'
      '  TAX,'
      '  TAXAGENCIA'
      'from TAXSITENS '
      'where'
      '  TAXITEM = :TAXITEM')
    ModifySQL.Strings = (
      'update TAXSITENS'
      'set'
      '  TAX = :TAX,'
      '  TAXAGENCIA = :TAXAGENCIA'
      'where'
      '  TAXITEM = :OLD_TAXITEM')
    InsertSQL.Strings = (
      'insert into TAXSITENS'
      '  (TAXITEM, TAX, TAXAGENCIA)'
      'values'
      '  (:TAXITEM, :TAX, :TAXAGENCIA)')
    DeleteSQL.Strings = (
      'delete from TAXSITENS'
      'where'
      '  TAXITEM = :OLD_TAXITEM')
    Left = 176
    Top = 58
  end
  object Q_TaxAgencias: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TAXAGENCIAS')
    Left = 258
    Top = 7
  end
  object Q_TaxAgenciasDS: TDataSource
    DataSet = Q_TaxAgencias
    Left = 263
    Top = 127
  end
  object C_TaxItens: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_TaxItens
    Params = <>
    OnNewRecord = C_TaxItensNewRecord
    Left = 177
    Top = 165
    object C_TaxItensTAXITEM: TIntegerField
      FieldName = 'TAXITEM'
    end
    object C_TaxItensTAX: TIntegerField
      FieldName = 'TAX'
    end
    object C_TaxItensTAXAGENCIA: TIntegerField
      FieldName = 'TAXAGENCIA'
    end
    object C_TaxItensDescTaxAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTaxAgencia'
      LookupDataSet = C_TaxAgencias
      LookupKeyFields = 'TAXAGENCIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAXAGENCIA'
      Lookup = True
    end
    object C_TaxItensPERCENTUAL: TBCDField
      FieldKind = fkLookup
      FieldName = 'PERCENTUAL'
      LookupDataSet = C_TaxAgencias
      LookupKeyFields = 'TAXAGENCIA'
      LookupResultField = 'PERCENTUAL'
      KeyFields = 'TAXAGENCIA'
      DisplayFormat = '##0.00'
      Lookup = True
    end
  end
  object C_TaxItensProvider: TDataSetProvider
    DataSet = Q_TaxItens
    Constraints = True
    Left = 176
    Top = 104
  end
  object Q_TaxAgenciasProvider: TDataSetProvider
    DataSet = Q_TaxAgencias
    Constraints = True
    Left = 261
    Top = 70
  end
  object C_TaxAgencias: TClientDataSet
    Active = False
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TaxAgenciasProvider'
    Left = 263
    Top = 180
    object C_TaxAgenciasTAXAGENCIA: TIntegerField
      FieldName = 'TAXAGENCIA'
      Origin = 'TAXAGENCIAS.TAXAGENCIA'
    end
    object C_TaxAgenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TAXAGENCIAS.DESCRICAO'
      Size = 30
    end
    object C_TaxAgenciasPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'TAXAGENCIAS.PERCENTUAL'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 2
    end
    object C_TaxAgenciasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'TAXAGENCIAS.FORNECEDOR'
    end
    object C_TaxAgenciasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'TAXAGENCIAS.CONTA'
    end
  end
end

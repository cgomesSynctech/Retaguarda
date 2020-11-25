inherited DMTaxAgencias: TDMTaxAgencias
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select ta.*, f.nome from TAXAGENCIAS ta left join Favorecidos f ' +
        'on'
      'ta.fornecedor = f.favorecido'
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TAXAGENCIA,'
      '  DESCRICAO,'
      '  PERCENTUAL'
      'from TAXAGENCIAS '
      'where'
      '  TAXAGENCIA = :TAXAGENCIA')
    ModifySQL.Strings = (
      'update TAXAGENCIAS'
      'set'
      '  TAXAGENCIA = :TAXAGENCIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  FORNECEDOR = :FORNECEDOR'
      'where'
      '  TAXAGENCIA = :OLD_TAXAGENCIA')
    InsertSQL.Strings = (
      'insert into TAXAGENCIAS'
      '  (TAXAGENCIA, DESCRICAO, PERCENTUAL, FORNECEDOR)'
      'values'
      '  (:TAXAGENCIA, :DESCRICAO, :PERCENTUAL, :FORNECEDOR)')
    DeleteSQL.Strings = (
      'delete from TAXAGENCIAS'
      'where'
      '  TAXAGENCIA = :OLD_TAXAGENCIA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TaxAgencias'
    Tabela_Nome = 'TaxAgencias'
    Tabela_Chave = 'TaxAgencia'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTAXAGENCIA: TIntegerField
      FieldName = 'TAXAGENCIA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
end

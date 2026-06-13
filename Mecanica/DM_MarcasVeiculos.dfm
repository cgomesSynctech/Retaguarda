inherited DMMarcasVeiculos: TDMMarcasVeiculos
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Marcas')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MARCAS'
    Tabela_Nome = 'MARCAS'
    Tabela_Chave = 'Marca'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

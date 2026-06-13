inherited DMModeloMarca: TDMModeloMarca
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from MARCAMODELO')
    UpdateObject = nil
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'MARCAMODELO'
    Tabela_Nome = 'MARCAMODELO'
    Tabela_Chave = 'ID'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TabelaMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object C_TabelaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 25
    end
    object C_TabelalkMarca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMarca'
      LookupDataSet = C_Marca
      LookupKeyFields = 'MARCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MARCA'
      Size = 30
      Lookup = True
    end
  end
  object C_Marca: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marca'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 169
    Top = 164
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_MarcaMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
    object C_MarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_MarcaORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
  end
  object P_Marca: TDataSetProvider
    DataSet = Q_Marca
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 101
  end
  object Q_Marca: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  * from MARCAS')
    Left = 168
    Top = 3
  end
  object C_MarcaDS: TDataSource
    Tag = 100
    DataSet = C_Marca
    Left = 176
    Top = 212
  end
end

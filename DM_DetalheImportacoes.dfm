inherited DMDetalheImportacoes: TDMDetalheImportacoes
  Left = 372
  Top = 126
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from DetalheImportacoes')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from DetalheImportacoes '
      'where'
      '  DETALHEIMPORTACAO = :DETALHEIMPORTACAO')
    ModifySQL.Strings = (
      'update DetalheImportacoes'
      'set'
      '  CODIGO = :CODIGO,'
      '  LOCALDESEMBARACO = :LOCALDESEMBARACO,'
      '  UF = :UF,'
      '  DATA = :DATA,'
      '  CODIGOEXPORT = :CODIGOEXPORT,'
      '  DATADESEMBARACO = :DATADESEMBARACO'
      'where'
      '  DETALHEIMPORTACAO = :OLD_DETALHEIMPORTACAO')
    InsertSQL.Strings = (
      'insert into DetalheImportacoes'
      '  (DETALHEIMPORTACAO, CODIGO, LOCALDESEMBARACO, UF, DATA, '
      'CODIGOEXPORT, DATADESEMBARACO)'
      'values'
      '  (:DETALHEIMPORTACAO, :CODIGO, :LOCALDESEMBARACO, :UF, :DATA, '
      ':CODIGOEXPORT, :DATADESEMBARACO)')
    DeleteSQL.Strings = (
      'delete from DetalheImportacoes'
      'where'
      '  DETALHEIMPORTACAO = :OLD_DETALHEIMPORTACAO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'DETALHEIMPORTACOES'
    Tabela_Nome = 'DETALHEIMPORTACOES'
    Tabela_Chave = 'DETALHEIMPORTACAO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaDETALHEIMPORTACAO: TIntegerField
      FieldName = 'DETALHEIMPORTACAO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object C_TabelaLOCALDESEMBARACO: TStringField
      FieldName = 'LOCALDESEMBARACO'
      Size = 255
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaCODIGOEXPORT: TStringField
      FieldName = 'CODIGOEXPORT'
      Size = 12
    end
    object C_TabelalkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Size = 30
      Lookup = True
    end
    object C_TabelaDATADESEMBARACO: TDateField
      FieldName = 'DATADESEMBARACO'
    end
  end
  object Q_UFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS'
      'order by uf')
    Left = 186
    Top = 10
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 186
    Top = 57
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 186
    Top = 105
    object C_UFsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UFS.DESCRICAO'
      Required = True
      Size = 50
    end
    object C_UFsUF: TStringField
      FieldName = 'UF'
      Origin = 'UFS.UF'
      Required = True
      Size = 2
    end
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 186
    Top = 153
  end
end

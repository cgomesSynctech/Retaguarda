inherited DMTextos: TDMTextos
  Left = 178
  Top = 170
  Height = 383
  Width = 422
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TEXTOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TEXTO,'
      '  TITULO,'
      '  CATEGORIA,'
      '  TEXTOCOMPLETO,'
      '  CONSULTA,'
      '  IMPORTACAO'
      'from TEXTOS '
      'where'
      '  TEXTO = :TEXTO')
    ModifySQL.Strings = (
      'update TEXTOS'
      'set'
      '  TITULO = :TITULO,'
      '  CATEGORIA = :CATEGORIA,'
      '  CONSULTA = :CONSULTA,'
      '  IMPORTACAO = :IMPORTACAO'
      'where'
      '  TEXTO = :OLD_TEXTO')
    InsertSQL.Strings = (
      'insert into TEXTOS'
      '  (TEXTO, TITULO, CATEGORIA, CONSULTA, IMPORTACAO)'
      'values'
      '  (:TEXTO, :TITULO, :CATEGORIA, :CONSULTA, '
      ':IMPORTACAO)')
    DeleteSQL.Strings = (
      'delete from TEXTOS'
      'where'
      '  TEXTO = :OLD_TEXTO')
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'TEXTOS'
    Tabela_Nome = 'TEXTOS'
    Tabela_Chave = 'TEXTO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTEXTO: TIntegerField
      FieldName = 'TEXTO'
      Required = True
    end
    object C_TabelaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_TabelaCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object C_TabelaCONSULTA: TIntegerField
      FieldName = 'CONSULTA'
    end
    object C_TabelaDescConsulta: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'DescConsulta'
      LookupDataSet = C_Consultas
      LookupKeyFields = 'CONSULTA'
      LookupResultField = 'TITULO'
      KeyFields = 'CONSULTA'
      Size = 50
      Lookup = True
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_TabelaQuery: TStringField
      FieldKind = fkLookup
      FieldName = 'Query'
      LookupDataSet = C_Consultas
      LookupKeyFields = 'CONSULTA'
      LookupResultField = 'QUERY'
      KeyFields = 'CONSULTA'
      Size = 1000
      Lookup = True
    end
    object C_TabelaARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 50
    end
  end
  object Q_Consultas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from consultas')
    Left = 200
    Top = 3
  end
  object Q_ConsultasDS: TDataSource
    DataSet = C_Consultas
    Left = 200
    Top = 157
  end
  object C_Consultas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ConsultasProvider'
    Left = 200
    Top = 50
    object C_ConsultasCONSULTA: TIntegerField
      FieldName = 'CONSULTA'
      Required = True
    end
    object C_ConsultasTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_ConsultasQUERY: TStringField
      FieldName = 'QUERY'
      Size = 1000
    end
  end
  object Q_ConsultasProvider: TDataSetProvider
    DataSet = Q_Consultas
    Constraints = True
    Left = 200
    Top = 96
  end
  object Q_CategoriasTextos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CATEGORIASTEXTOS')
    Left = 296
    Top = 3
    object Q_CategoriasTextosCATEGORIATEXTO: TIntegerField
      FieldName = 'CATEGORIATEXTO'
      Required = True
    end
    object Q_CategoriasTextosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object Q_CategoriasDS: TDataSource
    DataSet = C_CategoriasTextos
    Left = 296
    Top = 157
  end
  object C_CategoriasTextos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'C_CategoriasProvider'
    Left = 296
    Top = 50
    object C_CategoriasTextosCATEGORIATEXTO: TIntegerField
      FieldName = 'CATEGORIATEXTO'
      Required = True
    end
    object C_CategoriasTextosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object C_CategoriasProvider: TDataSetProvider
    DataSet = Q_CategoriasTextos
    Constraints = True
    Left = 296
    Top = 96
  end
end

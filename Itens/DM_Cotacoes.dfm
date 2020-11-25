inherited DMCotacoes: TDMCotacoes
  Left = 302
  Top = 119
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select c.COTACAO, c.INDEXADOR, c.DATA, c.VALOR'
      'from cotacoes c')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from cotacoes '
      'where'
      '  COTACAO = :COTACAO')
    ModifySQL.Strings = (
      'update cotacoes'
      'set'
      '  INDEXADOR = :INDEXADOR,'
      '  DATA = :DATA,'
      '  VALOR = :VALOR'
      'where'
      '  COTACAO = :OLD_COTACAO')
    InsertSQL.Strings = (
      'insert into cotacoes'
      '  (COTACAO, INDEXADOR, DATA, VALOR)'
      'values'
      '  (:COTACAO, :INDEXADOR, :DATA, :VALOR)')
    DeleteSQL.Strings = (
      'delete from cotacoes'
      'where'
      '  COTACAO = :OLD_COTACAO')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'COTACOES'
    Tabela_Nome = 'COTACOES'
    Tabela_Chave = 'C.COTACAO'
    Tabela_ChaveAlias = 'COTACAO'
  end
  inherited C_Tabela: TClientDataSet
    Top = 148
    object C_TabelaCOTACAO: TIntegerField
      FieldName = 'COTACAO'
      Required = True
    end
    object C_TabelaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.#####'
    end
    object C_TabelalkIndex: TStringField
      FieldKind = fkLookup
      FieldName = 'lkIndex'
      LookupDataSet = C_Index
      LookupKeyFields = 'INDEXADOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INDEXADOR'
      Size = 30
      Lookup = True
    end
  end
  object Q_Index: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores'
      'order by 2')
    Left = 184
    Top = 8
  end
  object P_Index: TDataSetProvider
    DataSet = Q_Index
    Constraints = True
    Left = 184
    Top = 56
  end
  object C_Index: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Index'
    Left = 184
    Top = 104
    object C_IndexINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

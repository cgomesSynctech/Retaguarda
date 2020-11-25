inherited DMPromocoes: TDMPromocoes
  Left = 322
  Top = 144
  Height = 418
  Width = 553
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select p.*, i.Descricao as DescricaoItem'
      'from Promocoes p inner join Itens i ON i.Item = p.Item'
      '')
    Left = 27
    Top = 4
  end
  inherited Q_MasterDS: TDataSource
    Top = 4
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Promocoes '
      'where'
      '  PROMOCAO = :PROMOCAO')
    ModifySQL.Strings = (
      'update Promocoes'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  DATA_INICIAL = :DATA_INICIAL,'
      '  DATA_FINAL = :DATA_FINAL,'
      '  ITEM = :ITEM,'
      '  FECHADA = :FECHADA'
      'where'
      '  PROMOCAO = :OLD_PROMOCAO')
    InsertSQL.Strings = (
      'insert into Promocoes'
      '  (PROMOCAO, DESCRICAO, DATA_INICIAL, DATA_FINAL, ITEM, FECHADA)'
      'values'
      
        '  (:PROMOCAO, :DESCRICAO, :DATA_INICIAL, :DATA_FINAL, :ITEM, :FE' +
        'CHADA)')
    DeleteSQL.Strings = (
      'delete from Promocoes'
      'where'
      '  PROMOCAO = :OLD_PROMOCAO')
    Left = 25
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    KeyForIDs = 'Promocoes'
    Tabela_Nome = 'Promocoes'
    Tabela_Chave = 'p.Promocao'
    Tabela_ChaveAlias = 'Promocao'
    Left = 25
  end
  inherited P_Tabela: TDataSetProvider
    Left = 25
  end
  inherited C_Tabela: TClientDataSet
    Left = 26
    object C_TabelaPROMOCAO: TIntegerField
      FieldName = 'PROMOCAO'
      Origin = 'PROMOCOES.PROMOCAO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PROMOCOES.DESCRICAO'
      Size = 50
    end
    object C_TabelaDATA_INICIAL: TDateField
      FieldName = 'DATA_INICIAL'
      Origin = 'PROMOCOES.DATA_INICIAL'
    end
    object C_TabelaDATA_FINAL: TDateField
      FieldName = 'DATA_FINAL'
      Origin = 'PROMOCOES.DATA_FINAL'
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PROMOCOES.ITEM'
    end
    object C_TabelaQ_PromocoesItens: TDataSetField
      FieldName = 'Q_PromocoesItens'
    end
    object C_TabelaDESCRICAOITEM: TStringField
      FieldName = 'DESCRICAOITEM'
      Size = 50
    end
    object C_TabelaFECHADA: TStringField
      FieldName = 'FECHADA'
      OnChange = C_TabelaFECHADAChange
      Size = 1
    end
    object C_TabelaEmpresa: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Empresa'
    end
    object C_TabelaFornecpreferencia: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Fornecpreferencia'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 25
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object Q_PromocoesItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from PromocoesItens'
      'where Promocao = :Promocao')
    UpdateObject = U_PromocoesItens
    Left = 188
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PROMOCAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_PromocoesItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from PromocoesItens '
      'where'
      '  PROMOCAOITEM = :PROMOCAOITEM')
    ModifySQL.Strings = (
      'update PromocoesItens'
      'set'
      '  PROMOCAO = :PROMOCAO,'
      '  PRECOPROMOCAO = :PRECOPROMOCAO,'
      '  PRECOTABELA = :PRECOTABELA,'
      '  FECHADA = :FECHADA'
      'where'
      '  PROMOCAOITEM = :OLD_PROMOCAOITEM')
    InsertSQL.Strings = (
      'insert into PromocoesItens'
      '  (PROMOCAO, TABELAPRECO, UNIDADE, '
      '  PRECOPROMOCAO, PRECOTABELA, FECHADA)'
      'values'
      '  (:PROMOCAO, :TABELAPRECO, :UNIDADE, '
      '   :PRECOPROMOCAO, :PRECOTABELA, :FECHADA)')
    DeleteSQL.Strings = (
      'delete from PromocoesItens'
      'where'
      '  PROMOCAOITEM = :OLD_PROMOCAOITEM')
    Left = 189
    Top = 52
  end
  object C_PromocoesItens: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_PromocoesItens
    Params = <>
    OnNewRecord = C_PromocoesItensNewRecord
    Left = 189
    Top = 161
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_PromocoesItensPROMOCAOITEM: TIntegerField
      FieldName = 'PROMOCAOITEM'
      Required = True
    end
    object C_PromocoesItensPROMOCAO: TIntegerField
      FieldName = 'PROMOCAO'
    end
    object C_PromocoesItensTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      OnChange = C_PromocoesItensTABELAPRECOChange
    end
    object C_PromocoesItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      OnChange = C_PromocoesItensUNIDADEChange
      Size = 6
    end
    object C_PromocoesItensPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_PromocoesItensFECHADA: TStringField
      FieldName = 'FECHADA'
      Size = 1
    end
    object C_PromocoesItensPrecoTabela: TBCDField
      FieldName = 'PrecoTabela'
      Size = 3
    end
    object C_PromocoesItenslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_UnidadesPreco
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_PromocoesItenslkTabelaDePreco: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabelaDePreco'
      LookupDataSet = C_TabelasDePreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 30
      Lookup = True
    end
  end
  object C_PromocoesItensDS: TDataSource
    Tag = 100
    DataSet = C_PromocoesItens
    Left = 188
    Top = 212
  end
  object Q_DescPromocoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select distinct Descricao from Promocoes')
    Left = 302
    Top = 160
  end
  object Q_UnidadesPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADES order by descricao')
    UniDirectional = True
    Left = 302
    Top = 4
  end
  object C_UnidadesPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UnidadesPreco'
    Left = 303
    Top = 103
    object C_UnidadesPrecoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Size = 6
    end
    object C_UnidadesPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object P_UnidadesPreco: TDataSetProvider
    DataSet = Q_UnidadesPreco
    Constraints = True
    Left = 302
    Top = 51
  end
  object P_DescPromocoes: TDataSetProvider
    DataSet = Q_DescPromocoes
    Constraints = True
    Left = 302
    Top = 211
  end
  object C_DescPromocoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_DescPromocoes'
    Left = 302
    Top = 263
    object C_DescPromocoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object C_DescPromocoesDS: TDataSource
    DataSet = C_DescPromocoes
    Left = 395
    Top = 264
  end
  object Q_TabelasDePreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco where desativado = '#39'N'#39
      'order by Percentual, TabelaPreco')
    Left = 400
    Top = 4
  end
  object P_TabelasDePreco: TDataSetProvider
    DataSet = Q_TabelasDePreco
    Constraints = True
    Left = 399
    Top = 52
  end
  object C_TabelasDePreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasDePreco'
    Left = 399
    Top = 101
    object C_TabelasDePrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
    object C_TabelasDePrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 93
    Top = 125
  end
end

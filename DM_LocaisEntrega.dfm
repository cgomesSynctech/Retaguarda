inherited DMLocaisEntrega: TDMLocaisEntrega
  Left = 142
  Top = 63
  Height = 401
  Width = 400
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * From FAVORECIDOSENTREGA'
      'Where Favorecido = :Favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ENTREGA,'
      '  FAVORECIDO,'
      '  ENDERECOENTREGA,'
      '  CIDADEENTREGA,'
      '  UFENTREGA,'
      '  CEPENTREGA,'
      '  PAISENTREGA,'
      '  DESCRICAO,'
      '  FONEENTREGA'
      'from FAVORECIDOSENTREGA '
      'where'
      '  ENTREGA = :ENTREGA')
    ModifySQL.Strings = (
      'update FAVORECIDOSENTREGA'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  ENDERECOENTREGA = :ENDERECOENTREGA,'
      '  CIDADEENTREGA = :CIDADEENTREGA,'
      '  UFENTREGA = :UFENTREGA,'
      '  CEPENTREGA = :CEPENTREGA,'
      '  PAISENTREGA = :PAISENTREGA,'
      '  DESCRICAO = :DESCRICAO,'
      '  FONEENTREGA = :FONEENTREGA'
      'where'
      '  ENTREGA = :OLD_ENTREGA')
    InsertSQL.Strings = (
      'insert into FAVORECIDOSENTREGA'
      
        '  (ENTREGA, FAVORECIDO, ENDERECOENTREGA, CIDADEENTREGA, UFENTREG' +
        'A, CEPENTREGA, '
      '   PAISENTREGA, DESCRICAO, FONEENTREGA)'
      'values'
      
        '  (:ENTREGA, :FAVORECIDO, :ENDERECOENTREGA, :CIDADEENTREGA, :UFE' +
        'NTREGA, '
      '   :CEPENTREGA, :PAISENTREGA, :DESCRICAO, :FONEENTREGA)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOSENTREGA'
      'where'
      '  ENTREGA = :OLD_ENTREGA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'ENTREGA'
    Tabela_Nome = 'FAVORECIDOSENTREGA'
    Tabela_Chave = 'ENTREGA'
    DeleteValidate.Strings = (
      'SAIDAS=LOCALENTREGA')
  end
  inherited C_Tabela: TClientDataSet
    BeforeOpen = C_TabelaBeforeOpen
    object C_TabelaENTREGA: TIntegerField
      FieldName = 'ENTREGA'
      Required = True
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 40
    end
    object C_TabelaCIDADEENTREGA: TStringField
      FieldName = 'CIDADEENTREGA'
      Size = 30
    end
    object C_TabelaUFENTREGA: TStringField
      FieldName = 'UFENTREGA'
      Size = 2
    end
    object C_TabelaCEPENTREGA: TStringField
      FieldName = 'CEPENTREGA'
      Size = 10
    end
    object C_TabelalkUF: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UFENTREGA'
      Size = 30
      Lookup = True
    end
    object C_TabelaPAISENTREGA: TIntegerField
      FieldName = 'PAISENTREGA'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object C_TabelalkPais: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPais'
      LookupDataSet = C_Paises
      LookupKeyFields = 'PAIS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAISENTREGA'
      Lookup = True
    end
    object C_TabelaFONEENTREGA: TStringField
      FieldName = 'FONEENTREGA'
      Size = 15
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object Q_UFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS'
      'Order By Descricao')
    Left = 151
    Top = 3
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 151
    Top = 51
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 151
    Top = 101
    object C_UFsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_UFsUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object Q_Paises: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from Paises'
      'Order By Descricao')
    Left = 221
    Top = 3
  end
  object P_Paises: TDataSetProvider
    DataSet = Q_Paises
    Constraints = True
    Left = 221
    Top = 51
  end
  object C_Paises: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Paises'
    Left = 221
    Top = 101
    object C_PaisesPAIS: TIntegerField
      FieldName = 'PAIS'
      Required = True
    end
    object C_PaisesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
end

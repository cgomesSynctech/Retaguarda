inherited DMOficina: TDMOficina
  Height = 436
  Width = 457
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select * from oficina')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from oficina '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update oficina'
      'set'
      '  IDSAIDA = :IDSAIDA,'
      '  DESCRICAO = :DESCRICAO,'
      '  ESTADOEQUIPAMENTO = :ESTADOEQUIPAMENTO,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  HORAENTRADA = :HORAENTRADA,'
      '  DATAENTREGA = :DATAENTREGA,'
      '  HORAENTREGA = :HORAENTREGA,'
      '  MECANICO = :MECANICO,'
      '  VENDEDOR = :VENDEDOR,'
      '  EMOFICINA = :EMOFICINA,'
      '  SERVICOPRONTO = :SERVICOPRONTO,'
      '  FINALIZADO = :FINALIZADO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into oficina'
      '  (ID, IDSAIDA, DESCRICAO, ESTADOEQUIPAMENTO, DATAENTRADA, '
      'HORAENTRADA, DATAENTREGA, '
      '   HORAENTREGA, MECANICO, VENDEDOR, EMOFICINA, SERVICOPRONTO, '
      'FINALIZADO)'
      'values'
      '  (:ID, :IDSAIDA, :DESCRICAO, :ESTADOEQUIPAMENTO, :DATAENTRADA, '
      ':HORAENTRADA, '
      
        '   :DATAENTREGA, :HORAENTREGA, :MECANICO, :VENDEDOR, :EMOFICINA,' +
        ' '
      ':SERVICOPRONTO, :FINALIZADO)')
    DeleteSQL.Strings = (
      'delete from oficina'
      'where'
      '  ID = :OLD_ID')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'OFICINA'
    Tabela_Nome = 'OFICINA'
    Tabela_Chave = 'ID'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TabelaIDSAIDA: TIntegerField
      FieldName = 'IDSAIDA'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaESTADOEQUIPAMENTO: TStringField
      FieldName = 'ESTADOEQUIPAMENTO'
      Size = 50
    end
    object C_TabelaDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object C_TabelaHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
    end
    object C_TabelaDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object C_TabelaHORAENTREGA: TTimeField
      FieldName = 'HORAENTREGA'
    end
    object C_TabelaEMOFICINA: TStringField
      FieldName = 'EMOFICINA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object C_TabelaSERVICOPRONTO: TStringField
      FieldName = 'SERVICOPRONTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object C_TabelaMECANICO: TIntegerField
      FieldName = 'MECANICO'
    end
    object C_TabelalkMecanico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMecanico'
      LookupDataSet = C_Mecanicos
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'MECANICO'
      KeyFields = 'MECANICO'
      Size = 50
      Lookup = True
    end
    object C_TabelaFINALIZADO: TStringField
      FieldName = 'FINALIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object C_TabelaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_TabelalkVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkVendedor'
      LookupDataSet = C_Vendedor
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'VENDEDOR'
      KeyFields = 'VENDEDOR'
      Size = 100
      Lookup = True
    end
  end
  object Q_Mecanicos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select f.favorecido, f.nome as mecanico'
      'from favorecidos f where f.tipofavorecido = 3 and f.cargo = -2')
    Left = 221
    Top = 13
  end
  object P_Mecanicos: TDataSetProvider
    DataSet = Q_Mecanicos
    Constraints = True
    Left = 221
    Top = 64
  end
  object C_Mecanicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Mecanicos'
    Left = 221
    Top = 114
    object C_MecanicosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_MecanicosMECANICO: TStringField
      FieldName = 'MECANICO'
      Origin = 'FAVORECIDOS.MECANICO'
      Size = 50
    end
  end
  object Q_Vendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select f.favorecido, f.nome as vendedor'
      
        'from favorecidos f where f.tipofavorecido = 3 and upper(f.isvend' +
        'edor) = '#39'S'#39)
    Left = 308
    Top = 14
  end
  object C_Vendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedor'
    Left = 308
    Top = 115
    object C_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_VendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
  end
  object P_Vendedor: TDataSetProvider
    DataSet = Q_Vendedor
    Constraints = True
    Left = 308
    Top = 65
  end
end

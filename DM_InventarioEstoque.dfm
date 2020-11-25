inherited DMInventarioEstoque: TDMInventarioEstoque
  Left = 261
  Top = 194
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select i.Inventario,i.item,p.codigo, i.data, i.estoqueanterior, ' +
        'i.entradas, i.saidas,'
      '       i.estoque, i.customedio,'
      
        '       p.descricao,i.Empresa, p.ultimofornecedor, p.fornecprefer' +
        'encia'
      'From inventario i, itens p'
      'where i.item = p.item')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from inventario '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update inventario'
      'set'
      '  ESTOQUEANTERIOR = :ESTOQUEANTERIOR,'
      '  ENTRADAS = :ENTRADAS,'
      '  SAIDAS = :SAIDAS,'
      '  ESTOQUE = :ESTOQUE,'
      '  CUSTOMEDIO = :CUSTOMEDIO'
      'where'
      '  INVENTARIO = :OLD_INVENTARIO')
    InsertSQL.Strings = (
      'insert into inventario'
      '  (ITEM, DATA, ESTOQUEANTERIOR, ENTRADAS, SAIDAS, ESTOQUE, '
      'CUSTOMEDIO)'
      'values'
      
        '  (:ITEM, :DATA, :ESTOQUEANTERIOR, :ENTRADAS, :SAIDAS, :ESTOQUE,' +
        ' '
      ':CUSTOMEDIO)')
    DeleteSQL.Strings = (
      'delete from inventario'
      'where'
      '  ITEM = :OLD_ITEM')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Inventario'
    Tabela_Nome = 'Inventario'
    Tabela_Chave = 'INVENTARIO'
    Tabela_ChaveAlias = 'INVENTARIO'
    Top = 272
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_TabelaESTOQUEANTERIOR: TBCDField
      FieldName = 'ESTOQUEANTERIOR'
      Precision = 18
      Size = 3
    end
    object C_TabelaENTRADAS: TBCDField
      FieldName = 'ENTRADAS'
      Precision = 18
      Size = 3
    end
    object C_TabelaSAIDAS: TBCDField
      FieldName = 'SAIDAS'
      Precision = 18
      Size = 3
    end
    object C_TabelaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_TabelaCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_TabelaINVENTARIO: TIntegerField
      FieldName = 'INVENTARIO'
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelaULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
      Required = True
    end
    object C_TabelaFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Required = True
    end
  end
end

inherited DMProducoesServico: TDMProducoesServico
  Left = 332
  Top = 124
  Height = 418
  Width = 589
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select p.producaoservico, p.codigo , p.data, p.funcionario, p.se' +
        'rvico,'
      'f.nome as F_NOME, i.descricao as I_Descricao,'
      'i.codigo as CodItem, f.codigo as codFunc'
      ''
      'from PRODUCOESSERVICO P'
      '     inner join favorecidos f on f.favorecido = p.funcionario'
      '     inner join itens i on i.item = p.servico'
      '')
    Left = 28
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRODUCAOSERVICO,'
      '  CODIGO,'
      '  DATA,'
      '  FUNCIONARIO,'
      '  SERVICO'
      'from PRODUCOESSERVICO '
      'where'
      '  PRODUCAOSERVICO = :PRODUCAOSERVICO')
    ModifySQL.Strings = (
      'update PRODUCOESSERVICO'
      'set'
      ''
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  SERVICO = :SERVICO'
      'where'
      '  PRODUCAOSERVICO = :OLD_PRODUCAOSERVICO')
    InsertSQL.Strings = (
      'insert into PRODUCOESSERVICO'
      '  (PRODUCAOSERVICO, CODIGO, DATA, FUNCIONARIO, SERVICO)'
      'values'
      '  (:PRODUCAOSERVICO, :CODIGO, :DATA, :FUNCIONARIO, :SERVICO)')
    DeleteSQL.Strings = (
      'delete from PRODUCOESSERVICO'
      'where'
      '  PRODUCAOSERVICO = :OLD_PRODUCAOSERVICO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'PRODUCOESSERVICO'
    Tabela_Nome = 'PRODUCOESSERVICO'
    Tabela_Chave = 'PRODUCAOSERVICO'
  end
  inherited P_Tabela: TDataSetProvider
    Left = 30
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPRODUCAOSERVICO: TIntegerField
      FieldName = 'PRODUCAOSERVICO'
      Origin = 'PRODUCOESSERVICO.PRODUCAOSERVICO'
      Required = True
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'PRODUCOESSERVICO.DATA'
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'PRODUCOESSERVICO.FUNCIONARIO'
    end
    object C_TabelaSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'PRODUCOESSERVICO.SERVICO'
    end
    object C_TabelaQ_ProducoesServicosDet: TDataSetField
      FieldName = 'Q_ProducoesServicosDet'
    end
    object C_TabelaF_NOME: TStringField
      FieldName = 'F_NOME'
      Origin = 'FAVORECIDOS.F_NOME'
      Size = 50
    end
    object C_TabelaI_DESCRICAO: TStringField
      FieldName = 'I_DESCRICAO'
      Origin = 'ITENS.I_DESCRICAO'
      Size = 50
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'PRODUCOESSERVICO.CODIGO'
      Size = 10
    end
    object C_TabelaCODITEM: TStringField
      FieldName = 'CODITEM'
      Size = 13
    end
    object C_TabelaCODFUNC: TStringField
      FieldName = 'CODFUNC'
    end
  end
  object C_ProducoesServicosDetDs: TDataSource
    DataSet = C_ProducoesServicosDet
    Left = 264
    Top = 202
  end
  object P_ProducoesServicosDet: TDataSetProvider
    DataSet = Q_ProducoesServicosDet
    Constraints = True
    Left = 264
    Top = 106
  end
  object C_ProducoesServicosDet: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ProducoesServicosDet
    Params = <>
    OnCalcFields = C_ProducoesServicosDetCalcFields
    OnNewRecord = C_ProducoesServicosDetNewRecord
    Left = 266
    Top = 56
    object C_ProducoesServicosDetPRODUCAOSERVICODET: TIntegerField
      FieldName = 'PRODUCAOSERVICODET'
      Origin = 'PRODUCOESSERVICOSDET.PRODUCAOSERVICODET'
      Required = True
    end
    object C_ProducoesServicosDetPRODUCAOSERVICO: TIntegerField
      FieldName = 'PRODUCAOSERVICO'
      Origin = 'PRODUCOESSERVICOSDET.PRODUCAOSERVICO'
    end
    object C_ProducoesServicosDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUCOESSERVICOSDET.ITEM'
      OnChange = C_ProducoesServicosDetITEMChange
    end
    object C_ProducoesServicosDetQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'PRODUCOESSERVICOSDET.QUANTIDADE'
    end
    object C_ProducoesServicosDetPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUCOESSERVICOSDET.PRECO'
      Precision = 18
      Size = 2
    end
    object C_ProducoesServicosDeticSubTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotal'
    end
    object C_ProducoesServicosDetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ProducoesServicosDetI_CODIGO: TStringField
      FieldName = 'I_CODIGO'
      Size = 13
    end
  end
  object Q_ProducoesServicosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'Select ps.producaoservicodet, ps.producaoservico, ps.item, ps.qu' +
        'antidade, ps.preco,  i.descricao , i.codigo as I_Codigo'
      'from ProducoesServicosDet ps'
      'Left join itens i on i.item = ps.item'
      'where ps.PRODUCAOSERVICO = :PRODUCAOSERVICO')
    UpdateObject = U_ProducoesServicosDet
    Left = 264
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODUCAOSERVICO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ProducoesServicosDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ProducoesServicosDet '
      'where'
      '  PRODUCAOSERVICODET = :PRODUCAOSERVICODET')
    ModifySQL.Strings = (
      'update ProducoesServicosDet'
      'set'
      '  PRODUCAOSERVICODET = :PRODUCAOSERVICODET,'
      '  PRODUCAOSERVICO = :PRODUCAOSERVICO,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRECO = :PRECO'
      'where'
      '  PRODUCAOSERVICODET = :OLD_PRODUCAOSERVICODET')
    InsertSQL.Strings = (
      'insert into ProducoesServicosDet'
      '  (PRODUCAOSERVICO, ITEM, QUANTIDADE, PRECO)'
      'values'
      '  ( :PRODUCAOSERVICO, :ITEM, :QUANTIDADE, :PRECO)')
    DeleteSQL.Strings = (
      'delete from ProducoesServicosDet'
      'where'
      '  PRODUCAOSERVICODET = :OLD_PRODUCAOSERVICODET')
    Left = 264
    Top = 152
  end
  object Q_PrecoServico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select sp.preco'
      'From servicospreco sp'
      'where item = :ITEM and Servico = :Servico')
    Left = 414
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ITEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Servico'
        ParamType = ptUnknown
      end>
  end
  object C_PrecoServicoDs: TDataSource
    DataSet = C_PrecoServico
    Left = 414
    Top = 182
  end
  object C_PrecoServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PrecoServico'
    Left = 414
    Top = 134
    object C_PrecoServicoPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object P_PrecoServico: TDataSetProvider
    DataSet = Q_PrecoServico
    Constraints = True
    Left = 416
    Top = 86
  end
end

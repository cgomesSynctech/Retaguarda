inherited DMTabelasPreco: TDMTabelasPreco
  Left = 498
  Top = 166
  Height = 401
  Width = 341
  inherited OpenDialog: TOpenDialog
    Left = 149
    Top = 274
  end
  inherited SaveDialog: TSaveDialog
    Left = 212
    Top = 275
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TabelasPreco')
    Left = 25
    Top = 6
  end
  inherited Q_MasterDS: TDataSource
    Left = 84
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TABELAPRECO,'
      '  DESCRICAO,'
      '  PERCENTUAL,'
      '  DESATIVADO,'
      '  ADD_COMISSAO'
      'from TabelasPreco '
      'where'
      '  TABELAPRECO = :TABELAPRECO')
    ModifySQL.Strings = (
      'update TabelasPreco'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  DESATIVADO = :DESATIVADO,'
      '  BASEADA = :BASEADA,'
      '  ADD_COMISSAO = :ADD_COMISSAO'
      'where'
      '  TABELAPRECO = :OLD_TABELAPRECO')
    InsertSQL.Strings = (
      'insert into TabelasPreco'
      '  (TABELAPRECO, DESCRICAO, PERCENTUAL, DESATIVADO, BASEADA, '
      'ADD_COMISSAO)'
      'values'
      
        '  (:TABELAPRECO, :DESCRICAO, :PERCENTUAL, :DESATIVADO, :BASEADA,' +
        ' '
      ':ADD_COMISSAO)')
    DeleteSQL.Strings = (
      'delete from TabelasPreco'
      'where'
      '  TABELAPRECO = :OLD_TABELAPRECO')
    Left = 25
    Top = 53
  end
  inherited DMComponent: TDMComponent
    AntesDeApagar = DMComponentAntesDeApagar
    KeyForIDs = 'TabelasPreco'
    Tabela_Nome = 'TabelasPreco'
    Tabela_Chave = 'TabelaPreco'
    Left = 25
    Top = 273
  end
  inherited DlgMsg: TDlgMsg
    Left = 91
    Top = 273
  end
  inherited P_Tabela: TDataSetProvider
    Left = 25
    Top = 104
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    Left = 25
    Top = 168
    object C_TabelaTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 25
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##0.0##%'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaBASEADA: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
    object C_TabelaADD_COMISSAO: TBCDField
      FieldName = 'ADD_COMISSAO'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 25
    Top = 215
  end
  inherited ResultSet: TClientDataSet
    Left = 83
    Top = 55
  end
  object Q_Produtos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select i.item, i.descricao, iu.unidade '
      'from itens i'
      'inner join itensunidades iu on iu.item = i.item')
    Left = 176
    Top = 7
    object Q_ProdutosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object Q_ProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_ProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSUNIDADES.UNIDADE'
      Size = 6
    end
  end
end

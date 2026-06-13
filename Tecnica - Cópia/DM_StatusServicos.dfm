inherited DmStatusServicos: TDmStatusServicos
  Left = 227
  Top = 109
  Width = 290
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from STATUSSERVICOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  STATUSSERVICO,'
      '  DESCRICAO,'
      '  ORDEM'
      'from STATUSSERVICOS '
      'where'
      '  STATUSSERVICO = :STATUSSERVICO')
    ModifySQL.Strings = (
      'update STATUSSERVICOS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  ORDEM = :ORDEM'
      'where'
      '  STATUSSERVICO = :OLD_STATUSSERVICO')
    InsertSQL.Strings = (
      'insert into STATUSSERVICOS'
      '  (STATUSSERVICO, DESCRICAO, ORDEM)'
      'values'
      '  (:STATUSSERVICO, :DESCRICAO, :ORDEM)')
    DeleteSQL.Strings = (
      'delete from STATUSSERVICOS'
      'where'
      '  STATUSSERVICO = :OLD_STATUSSERVICO')
    Top = 53
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'STATUSSERVICOS'
    Tabela_Nome = 'STATUSSERVICOS'
    Tabela_Chave = 'STATUSSERVICO'
  end
  inherited C_Tabela: TClientDataSet
    Left = 35
    Top = 156
    object C_TabelaSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'STATUSSERVICOS.STATUSSERVICO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSERVICOS.DESCRICAO'
      Size = 30
    end
    object C_TabelaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
end

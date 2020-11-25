inherited DMLocalizacoes: TDMLocalizacoes
  Left = 333
  Top = 191
  Width = 220
  inherited SaveDialog: TSaveDialog
    Left = 155
    Top = 224
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select localizacao, descricao'
      'from localizacoes'
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from localizacoes '
      'where'
      '  LOCALIZACAO = :LOCALIZACAO')
    ModifySQL.Strings = (
      'update localizacoes'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  LOCALIZACAO = :OLD_LOCALIZACAO')
    InsertSQL.Strings = (
      'insert into localizacoes'
      '  (LOCALIZACAO, DESCRICAO)'
      'values'
      '  (:LOCALIZACAO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from localizacoes'
      'where'
      '  LOCALIZACAO = :OLD_LOCALIZACAO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'LOCALIZACOES'
    Tabela_Nome = 'LOCALIZACOES'
    Tabela_Chave = 'LOCALIZACAO'
    DeleteValidate.Strings = (
      'ITENS=LOCALIZACAO')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 15
    end
  end
end

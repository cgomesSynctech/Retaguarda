inherited DMHistoricos: TDMHistoricos
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Historicos')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Historicos '
      'where'
      '  HISTORICO = :HISTORICO')
    ModifySQL.Strings = (
      'update Historicos'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  HISTORICO = :OLD_HISTORICO')
    InsertSQL.Strings = (
      'insert into Historicos'
      '  (HISTORICO, DESCRICAO)'
      'values'
      '  (:HISTORICO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Historicos'
      'where'
      '  HISTORICO = :OLD_HISTORICO')
    Top = 55
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'historicos'
    Tabela_Nome = 'historicos'
    Tabela_Chave = 'historico'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaHISTORICO: TIntegerField
      FieldName = 'HISTORICO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 150
    end
  end
end

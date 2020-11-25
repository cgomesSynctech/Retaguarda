inherited DMTiposServicos: TDMTiposServicos
  Left = 263
  Top = 180
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '
      '  DESCRICAO, TIPOSERVICO'
      'from TIPOSSERVICOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TIPOSERVICO,'
      '  DESCRICAO'
      'from TIPOSSERVICOS '
      'where'
      '  TIPOSERVICO = :TIPOSERVICO')
    ModifySQL.Strings = (
      'update TIPOSSERVICOS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      'where'
      '  TIPOSERVICO = :OLD_TIPOSERVICO')
    InsertSQL.Strings = (
      'insert into TIPOSSERVICOS'
      '  (DESCRICAO, TIPOSERVICO)'
      'values'
      '  (:DESCRICAO, :TIPOSERVICO)')
    DeleteSQL.Strings = (
      'delete from TIPOSSERVICOS'
      'where'
      '  TIPOSERVICO = :OLD_TIPOSERVICO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TIPOSSERVICOS'
    Tabela_Nome = 'TIPOSSERVICOS'
    Tabela_Chave = 'TIPOSERVICO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Required = True
    end
  end
end

inherited DMTiposServicos: TDMTiposServicos
  Left = 227
  Top = 93
  Width = 411
  inherited OpenDialog: TOpenDialog
    Left = 166
    Top = 265
  end
  inherited SaveDialog: TSaveDialog
    Left = 235
    Top = 266
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '
      ' TIPOSERVICO, DESCRICAO'
      'from TIPOSSERVICOS')
    Top = 5
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
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TIPOSERVICO = :OLD_TIPOSERVICO')
    InsertSQL.Strings = (
      'insert into TIPOSSERVICOS'
      '  (TIPOSERVICO, DESCRICAO)'
      'values'
      '  (:TIPOSERVICO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TIPOSSERVICOS'
      'where'
      '  TIPOSERVICO = :OLD_TIPOSERVICO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TIPOSSERVICOS'
    Tabela_Nome = 'TIPOSSERVICOS'
    Tabela_Chave = 'TIPOSERVICO'
    Left = 38
    Top = 264
  end
  inherited DlgMsg: TDlgMsg
    Left = 106
    Top = 264
  end
  inherited C_Tabela: TClientDataSet
    Top = 154
    object C_TabelaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'TIPOSSERVICOS.TIPOSERVICO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSSERVICOS.DESCRICAO'
      Size = 30
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 36
    Top = 210
  end
end

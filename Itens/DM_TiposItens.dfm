inherited DMTiposItens: TDMTiposItens
  Left = 49
  Top = 93
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TIPOSITENS')
    Top = 11
    object Q_TabelaTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
    object Q_TabelaDESCRICAOTIPOITEM: TIBStringField
      FieldName = 'DESCRICAOTIPOITEM'
      Size = 30
    end
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TIPOITEM,'
      '  DESCRICAOTIPOITEM'
      'from TIPOSITENS '
      'where'
      '  TIPOITEM = :TIPOITEM')
    ModifySQL.Strings = (
      'update TIPOSITENS'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  DESCRICAOTIPOITEM = :DESCRICAOTIPOITEM'
      'where'
      '  TIPOITEM = :OLD_TIPOITEM')
    InsertSQL.Strings = (
      'insert into TIPOSITENS'
      '  (TIPOITEM, DESCRICAOTIPOITEM)'
      'values'
      '  (:TIPOITEM, :DESCRICAOTIPOITEM)')
    DeleteSQL.Strings = (
      'delete from TIPOSITENS'
      'where'
      '  TIPOITEM = :OLD_TIPOITEM')
    Left = 28
    Top = 128
  end
  inherited DMComponent: TDMComponent
    Tabela_Nome = 'TIPOSITENS'
    Tabela_Chave = 'TIPOITEM'
  end
  inherited Q_TabelaProvider: TDataSetProvider
    Left = 33
    Top = 73
  end
end

inherited DMItensIdentificacao: TDMItensIdentificacao
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'SELECT * FROM itensidents')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensidents '
      'where'
      '  ITEMIDENT = :ITEMIDENT and'
      '  ITEM = :ITEM and'
      '  SERIAL = :SERIAL and'
      '  STATUS = :STATUS')
    ModifySQL.Strings = (
      'update itensidents'
      'set'
      '  ITEMIDENT = :ITEMIDENT,'
      '  ITEM = :ITEM,'
      '  SERIAL = :SERIAL,'
      '  STATUS = :STATUS'
      'where'
      '  ITEMIDENT = :OLD_ITEMIDENT and'
      '  ITEM = :OLD_ITEM and'
      '  SERIAL = :OLD_SERIAL and'
      '  STATUS = :OLD_STATUS')
    InsertSQL.Strings = (
      'insert into itensidents'
      '  (ITEMIDENT, ITEM, SERIAL, STATUS)'
      'values'
      '  (:ITEMIDENT, :ITEM, :SERIAL, '#39'P'#39')')
    DeleteSQL.Strings = (
      'delete from itensidents'
      'where'
      '  ITEMIDENT = :OLD_ITEMIDENT and'
      '  ITEM = :OLD_ITEM and'
      '  SERIAL = :OLD_SERIAL and'
      '  STATUS = :OLD_STATUS')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'ITENSIDENTS'
    Tabela_Nome = 'ITEMIDENT'
    Tabela_Chave = 'ITEMIDENT'
  end
  inherited C_Tabela: TClientDataSet
    Top = 156
    object C_TabelaITEMIDENT: TIntegerField
      FieldName = 'ITEMIDENT'
      Required = True
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_TabelaSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object C_TabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
end

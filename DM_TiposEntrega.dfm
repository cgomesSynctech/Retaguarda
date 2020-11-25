inherited DMTiposEntrega: TDMTiposEntrega
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TIPOSENTREGA')
    Left = 33
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TIPOENTREGA,'
      '  DESCRICAO'
      'from TIPOSENTREGA '
      'where'
      '  TIPOENTREGA = :TIPOENTREGA')
    ModifySQL.Strings = (
      'update TIPOSENTREGA'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TIPOENTREGA = :OLD_TIPOENTREGA')
    InsertSQL.Strings = (
      'insert into TIPOSENTREGA'
      '  (TIPOENTREGA, DESCRICAO)'
      'values'
      '  (:TIPOENTREGA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TIPOSENTREGA'
      'where'
      '  TIPOENTREGA = :OLD_TIPOENTREGA')
    Top = 50
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TiposEntrega'
    Tabela_Nome = 'TiposEntrega'
    Tabela_Chave = 'TipoEntrega'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

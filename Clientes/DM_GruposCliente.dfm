inherited DMGruposCliente: TDMGruposCliente
  Left = 65535
  Top = 126
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select * from GruposCliente')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from GruposCliente '
      'where'
      '  GRUPOCLIENTE = :GRUPOCLIENTE')
    ModifySQL.Strings = (
      'update GruposCliente'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  GRUPOCLIENTE = :OLD_GRUPOCLIENTE')
    InsertSQL.Strings = (
      'insert into GruposCliente'
      '  (GRUPOCLIENTE, DESCRICAO)'
      'values'
      '  (:GRUPOCLIENTE, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from GruposCliente'
      'where'
      '  GRUPOCLIENTE = :OLD_GRUPOCLIENTE')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'GruposCliente'
    Tabela_Nome = 'GruposCliente'
    Tabela_Chave = 'GrupoCliente'
  end
  inherited C_Tabela: TClientDataSet
    Left = 32
    object C_TabelaGRUPOCLIENTE: TIntegerField
      FieldName = 'GRUPOCLIENTE'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

inherited DMTiposInsumos: TDMTiposInsumos
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TIPOSINSUMOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TIPOINSUMO,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  OBSERVACAO'
      'from TIPOSINSUMOS '
      'where'
      '  TIPOINSUMO = :TIPOINSUMO')
    ModifySQL.Strings = (
      'update TIPOSINSUMOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  TIPOINSUMO = :OLD_TIPOINSUMO')
    InsertSQL.Strings = (
      'insert into TIPOSINSUMOS'
      '  (TIPOINSUMO, CODIGO, DESCRICAO, OBSERVACAO)'
      'values'
      '  (:TIPOINSUMO, :CODIGO, :DESCRICAO, :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from TIPOSINSUMOS'
      'where'
      '  TIPOINSUMO = :OLD_TIPOINSUMO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TIPOSINSUMOS'
    Tabela_Nome = 'TIPOSINSUMOS'
    Tabela_Chave = 'TIPOINSUMO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOINSUMO: TIntegerField
      FieldName = 'TIPOINSUMO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
end

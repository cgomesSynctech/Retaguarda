inherited DMTiposMaquinas: TDMTiposMaquinas
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TIPOSMAQUINAS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TIPOMAQUINA,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  OBSERVACAO'
      'from TIPOSMAQUINAS '
      'where'
      '  TIPOMAQUINA = :TIPOMAQUINA')
    ModifySQL.Strings = (
      'update TIPOSMAQUINAS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  TIPOMAQUINA = :OLD_TIPOMAQUINA')
    InsertSQL.Strings = (
      'insert into TIPOSMAQUINAS'
      '  (TIPOMAQUINA, CODIGO, DESCRICAO, OBSERVACAO)'
      'values'
      '  (:TIPOMAQUINA, :CODIGO, :DESCRICAO, :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from TIPOSMAQUINAS'
      'where'
      '  TIPOMAQUINA = :OLD_TIPOMAQUINA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TIPOSMAQUINAS'
    Tabela_Nome = 'TIPOSMAQUINAS'
    Tabela_Chave = 'TIPOMAQUINA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTIPOMAQUINA: TIntegerField
      FieldName = 'TIPOMAQUINA'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
  end
end

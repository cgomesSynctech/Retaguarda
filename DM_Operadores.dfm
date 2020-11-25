inherited DMOperadores: TDMOperadores
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Operadores')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Operadores '
      'where'
      '  OPERADOR = :OPERADOR')
    ModifySQL.Strings = (
      'update Operadores'
      'set'
      '  NOME = :NOME'
      'where'
      '  OPERADOR = :OLD_OPERADOR')
    InsertSQL.Strings = (
      'insert into Operadores'
      '  (OPERADOR, NOME)'
      'values'
      '  (:OPERADOR, :NOME)')
    DeleteSQL.Strings = (
      'delete from Operadores'
      'where'
      '  OPERADOR = :OLD_OPERADOR')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Operadores'
    Tabela_Nome = 'Operadores'
    Tabela_Chave = 'Operador'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Required = True
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
end

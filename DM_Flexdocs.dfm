inherited DMFlexdocs: TDMFlexdocs
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from empresas where favorecido = -1')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from empresas '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update empresas'
      'set'
      '  CSC = :CSC,'
      '  FLEXDOCS = :FLEXDOCS,'
      '  IDTOKEN = :IDTOKEN'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into empresas'
      '  (CSC, FLEXDOCS, IDTOKEN)'
      'values'
      '  (:CSC, :FLEXDOCS, :IDTOKEN) '
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    DeleteSQL.Strings = (
      '')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Favorecido'
    Tabela_Nome = 'EMPRESAS'
    Tabela_Chave = 'FAVORECIDO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object C_TabelaFLEXDOCS: TStringField
      FieldName = 'FLEXDOCS'
      Size = 255
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaIDTOKEN: TStringField
      FieldName = 'IDTOKEN'
      Size = 6
    end
  end
end

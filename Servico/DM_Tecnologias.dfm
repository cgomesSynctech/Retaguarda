inherited DMTecnologias: TDMTecnologias
  Left = 238
  Top = 173
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      ' TECNOLOGIA, DESCRICAO'
      'from'
      ' TECNOLOGIAS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TECNOLOGIA,'
      '  DESCRICAO'
      'from TECNOLOGIAS '
      'where'
      '  TECNOLOGIA = :TECNOLOGIA')
    ModifySQL.Strings = (
      'update TECNOLOGIAS'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  TECNOLOGIA = :OLD_TECNOLOGIA')
    InsertSQL.Strings = (
      'insert into TECNOLOGIAS'
      '  (TECNOLOGIA, DESCRICAO)'
      'values'
      '  (:TECNOLOGIA, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from TECNOLOGIAS'
      'where'
      '  TECNOLOGIA = :OLD_TECNOLOGIA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'TECNOLOGIAS'
    Tabela_Nome = 'TECNOLOGIAS'
    Tabela_Chave = 'TECNOLOGIA'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaTECNOLOGIA: TIntegerField
      FieldName = 'TECNOLOGIA'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
end

inherited DMQualidades: TDMQualidades
  Left = 31
  Top = 142
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Qualidades')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Qualidades '
      'where'
      '  QUALIDADE = :QUALIDADE')
    ModifySQL.Strings = (
      'update Qualidades'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  QUALIDADE = :OLD_QUALIDADE')
    InsertSQL.Strings = (
      'insert into Qualidades'
      '  (QUALIDADE, DESCRICAO)'
      'values'
      '  (:QUALIDADE, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Qualidades'
      'where'
      '  QUALIDADE = :OLD_QUALIDADE')
    Left = 31
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Qualidades'
    Tabela_Nome = 'Qualidades'
    Tabela_Chave = 'Qualidade'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

inherited DMConsultas: TDMConsultas
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Consultas')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Consultas '
      'where'
      '  CONSULTA = :CONSULTA')
    ModifySQL.Strings = (
      'update Consultas'
      'set'
      '  TITULO = :TITULO,'
      '  QUERY = :QUERY'
      'where'
      '  CONSULTA = :OLD_CONSULTA')
    InsertSQL.Strings = (
      'insert into Consultas'
      '  (CONSULTA, TITULO, QUERY)'
      'values'
      '  (:CONSULTA, :TITULO, :QUERY)')
    DeleteSQL.Strings = (
      'delete from Consultas'
      'where'
      '  CONSULTA = :OLD_CONSULTA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Consultas'
    Tabela_Nome = 'Consultas'
    Tabela_Chave = 'Consulta'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCONSULTA: TIntegerField
      FieldName = 'CONSULTA'
      Required = True
    end
    object C_TabelaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_TabelaQUERY: TStringField
      FieldName = 'QUERY'
      Size = 1000
    end
  end
end

inherited DMAcessorios: TDMAcessorios
  Left = 280
  Top = 224
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select acessorio, descricao from acessorios')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from acessorios '
      'where'
      '  ACESSORIO = :ACESSORIO')
    ModifySQL.Strings = (
      'update acessorios'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  ACESSORIO = :OLD_ACESSORIO')
    InsertSQL.Strings = (
      'insert into acessorios'
      '  (ACESSORIO, DESCRICAO)'
      'values'
      '  (:ACESSORIO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from acessorios'
      'where'
      '  ACESSORIO = :OLD_ACESSORIO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'ACESSORIOS'
    Tabela_Nome = 'ACESSORIOS'
    Tabela_Chave = 'ACESSORIO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaACESSORIO: TIntegerField
      FieldName = 'ACESSORIO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

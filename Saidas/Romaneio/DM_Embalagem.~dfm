inherited DMEmbalagem: TDMEmbalagem
  Left = 771
  Top = 130
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select s.saida, s.embalagens'
      'from saidas s')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidas '
      'where'
      '  SAIDA = :SAIDA')
    ModifySQL.Strings = (
      'update saidas'
      'set'
      '  EMBALAGENS = :EMBALAGENS'
      'where'
      '  SAIDA = :OLD_SAIDA')
    InsertSQL.Strings = (
      'insert into saidas'
      '  (EMBALAGENS)'
      'values'
      '  (:EMBALAGENS)')
    DeleteSQL.Strings = (
      'delete from saidas'
      'where'
      '  SAIDA = :OLD_SAIDA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Saidas'
    Tabela_Nome = 'Saidas'
    Tabela_Chave = 'saida'
    Tabela_ChaveAlias = 'saida'
  end
  inherited C_Tabela: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'NunPedido'
        ParamType = ptUnknown
      end>
    Top = 148
    object C_TabelaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_TabelaEMBALAGENS: TIntegerField
      FieldName = 'EMBALAGENS'
    end
  end
  inherited C_TabelaDS: TDataSource
    Top = 204
  end
end

inherited DMEmbalagem2: TDMEmbalagem2
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select s.saida, s.embalagens, s.numero ||'#39'-'#39'||f.razao||'#39'-'#39'||s.da' +
        'ta as Destino'
      
        'from saidas s inner join favorecidos F on f.favorecido = s.favor' +
        'ecido'
      'where s.embalagens is null')
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
    KeyForIDs = 'Saida'
    Tabela_Nome = 'SAIDAS'
    Tabela_Chave = 'saida'
    Tabela_ChaveAlias = 'saida'
  end
  inherited C_Tabela: TClientDataSet
    Params = <
      item
        DataType = ftUnknown
        Name = 'NunPedido'
        ParamType = ptUnknown
      end>
    object C_TabelaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_TabelaEMBALAGENS: TIntegerField
      FieldName = 'EMBALAGENS'
    end
    object C_TabelaDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 74
    end
  end
end

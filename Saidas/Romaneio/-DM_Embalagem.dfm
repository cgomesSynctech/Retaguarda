inherited DMEmbalagem: TDMEmbalagem
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    DataSource = C_TabelaDS
    SQL.Strings = (
      'Select s.saida as ID,'
      's.total as total'
      'from Saidas s'
      'where s.numero = :nunpedido')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nunpedido'
        ParamType = ptUnknown
      end>
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Saidas'
    Tabela_Nome = 'Saidas'
    Tabela_Chave = 'saida'
    Tabela_ChaveAlias = 'ID'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TabelaEMBALAGENS: TIntegerField
      FieldName = 'EMBALAGENS'
    end
    object C_TabelaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
  end
end

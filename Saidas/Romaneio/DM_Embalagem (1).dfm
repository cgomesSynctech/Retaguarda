inherited DMEmbalagem: TDMEmbalagem
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select s.saida,'
      's.total'
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
    Tabela_ChaveAlias = 'saida'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_TabelaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
end

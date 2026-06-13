inherited DMIndicacao: TDMIndicacao
  Left = 515
  Top = 171
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from PROFISSIONAIS')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Profissionais'
    Tabela_Nome = 'Profissionais'
    Tabela_Chave = 'ID'
    Tabela_ChaveAlias = 'ID'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaID: TIntegerField
      FieldName = 'ID'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object C_TabelaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'E-MAIL'
      Size = 100
    end
    object C_TabelaFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
  end
end

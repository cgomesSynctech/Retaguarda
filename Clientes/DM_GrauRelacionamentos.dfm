inherited DMGrauRelacionamentos: TDMGrauRelacionamentos
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from GrauRelacionamentos')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'GrauRelacionamentos'
    Tabela_Nome = 'GrauRelacionamentos'
    Tabela_Chave = 'Grau'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaGRAU: TIntegerField
      FieldName = 'GRAU'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
  end
end

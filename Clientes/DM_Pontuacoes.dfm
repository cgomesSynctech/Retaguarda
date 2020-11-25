inherited DMPontuacoes: TDMPontuacoes
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from PONTUACOES')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PONTUACAO,'
      '  DESCRICAO,'
      '  INICIO,'
      '  FIM,'
      '  FATORPONTO,'
      '  MINIMORESGATE,'
      '  FECHADA'
      'from PONTUACOES '
      'where'
      '  PONTUACAO = :PONTUACAO')
    ModifySQL.Strings = (
      'update PONTUACOES'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  INICIO = :INICIO,'
      '  FIM = :FIM,'
      '  FATORPONTO = :FATORPONTO,'
      '  MINIMORESGATE = :MINIMORESGATE,'
      '  FECHADA = :FECHADA'
      'where'
      '  PONTUACAO = :OLD_PONTUACAO')
    InsertSQL.Strings = (
      'insert into PONTUACOES'
      
        '  (PONTUACAO, DESCRICAO, INICIO, FIM, FATORPONTO, MINIMORESGATE,' +
        ' '
      'FECHADA)'
      'values'
      
        '  (:PONTUACAO, :DESCRICAO, :INICIO, :FIM, :FATORPONTO, :MINIMORE' +
        'SGATE, '
      '   :FECHADA)')
    DeleteSQL.Strings = (
      'delete from PONTUACOES'
      'where'
      '  PONTUACAO = :OLD_PONTUACAO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'PONTUACOES'
    Tabela_Nome = 'PONTUACOES'
    Tabela_Chave = 'PONTUACAO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPONTUACAO: TIntegerField
      FieldName = 'PONTUACAO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaINICIO: TDateField
      FieldName = 'INICIO'
    end
    object C_TabelaFIM: TDateField
      FieldName = 'FIM'
    end
    object C_TabelaFATORPONTO: TBCDField
      FieldName = 'FATORPONTO'
      Precision = 18
      Size = 3
    end
    object C_TabelaMINIMORESGATE: TBCDField
      FieldName = 'MINIMORESGATE'
      Precision = 18
      Size = 3
    end
    object C_TabelaFECHADA: TStringField
      FieldName = 'FECHADA'
      FixedChar = True
      Size = 1
    end
  end
end

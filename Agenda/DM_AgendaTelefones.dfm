inherited DMAgendaTelefones: TDMAgendaTelefones
  Left = 31
  Top = 187
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from AGENDATELEFONES')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  AGENDATELEFONE,'
      '  NOME,'
      '  TELEFONE1,'
      '  TELEFONE2,'
      '  TELEFONE3,'
      '  EMAIL,'
      '  SITE,'
      '  ENDERECO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  PAIS,'
      '  DIA_NASC,'
      '  MES_NASC'
      'from AGENDATELEFONES '
      'where'
      '  AGENDATELEFONE = :AGENDATELEFONE')
    ModifySQL.Strings = (
      'update AGENDATELEFONES'
      'set'
      '  NOME = :NOME,'
      '  TELEFONE1 = :TELEFONE1,'
      '  TELEFONE2 = :TELEFONE2,'
      '  TELEFONE3 = :TELEFONE3,'
      '  EMAIL = :EMAIL,'
      '  SITE = :SITE,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  PAIS = :PAIS,'
      '  DIA_NASC = :DIA_NASC,'
      '  MES_NASC = :MES_NASC,'
      '  USUARIO = :USUARIO,'
      '  EMPRESA = :EMPRESA,'
      '  CARGO = :CARGO'
      'where'
      '  AGENDATELEFONE = :OLD_AGENDATELEFONE')
    InsertSQL.Strings = (
      'insert into AGENDATELEFONES'
      
        '  (AGENDATELEFONE, NOME, TELEFONE1, TELEFONE2, TELEFONE3, EMAIL,' +
        ' '
      'SITE, '
      
        '   ENDERECO, CIDADE, UF, CEP, PAIS, DIA_NASC, MES_NASC, USUARIO,' +
        ' '
      'EMPRESA, CARGO)'
      'values'
      '  (:AGENDATELEFONE, :NOME, :TELEFONE1, :TELEFONE2, :TELEFONE3, '
      ':EMAIL, '
      
        '   :SITE, :ENDERECO, :CIDADE, :UF, :CEP, :PAIS, :DIA_NASC, :MES_' +
        'NASC, '
      ':USUARIO, :EMPRESA, :CARGO)')
    DeleteSQL.Strings = (
      'delete from AGENDATELEFONES'
      'where'
      '  AGENDATELEFONE = :OLD_AGENDATELEFONE')
    Left = 34
  end
  inherited DMComponent: TDMComponent
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'AGENDATELEFONE'
    Tabela_Nome = 'AGENDATELEFONES'
    Tabela_Chave = 'AGENDATELEFONE'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaAGENDATELEFONE: TIntegerField
      FieldName = 'AGENDATELEFONE'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object C_TabelaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object C_TabelaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object C_TabelaTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object C_TabelaSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 500
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_TabelaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object C_TabelalkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Size = 30
      Lookup = True
    end
    object C_TabelaDIA_NASC: TIntegerField
      FieldName = 'DIA_NASC'
    end
    object C_TabelaMES_NASC: TIntegerField
      FieldName = 'MES_NASC'
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_TabelaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 50
    end
    object C_TabelaCARGO: TStringField
      FieldName = 'CARGO'
      Size = 50
    end
  end
  object Q_LookUFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS')
    Left = 171
    Top = 8
  end
  object Q_UFsProvider: TDataSetProvider
    DataSet = Q_LookUFS
    Constraints = True
    Left = 171
    Top = 55
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UFsProvider'
    Left = 171
    Top = 104
    object C_UFsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_UFsUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 171
    Top = 155
  end
end

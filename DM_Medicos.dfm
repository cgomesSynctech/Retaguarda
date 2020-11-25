inherited DMMedicos: TDMMedicos
  Left = 330
  Top = 146
  Height = 404
  Width = 310
  inherited OpenDialog: TOpenDialog
    Left = 165
    Top = 299
  end
  inherited SaveDialog: TSaveDialog
    Left = 242
    Top = 245
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select Codigo, Favorecido, cpf_cnpj, Nome, TipoFavorecido, Desat' +
        'ivado,'
      
        'endereco, bairro, cidade, uf, cep, fone1, fone2, fax, celular, e' +
        'mail,'
      'tipoatividade'
      'from FAVORECIDOS'
      'Where TipoFavorecido = 7')
    Left = 31
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FAVORECIDO,'
      '  CODIGO,'
      '  NOME,'
      '  RAZAO,'
      '  ENDERECO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  CAIXAPOSTAL,'
      '  PAIS,'
      '  FONE1,'
      '  FONE2,'
      '  FAX,'
      '  CELULAR,'
      '  CONTATO,'
      '  EMAIL,'
      '  TIPOFAVORECIDO,'
      '  TIPOATIVIDADE,'
      '  PLANOPAGAMENTO,'
      '  VENDEDOR,'
      '  LIMITECREDITO,'
      '  TAXAVEL,'
      '  TAX,'
      '  EIN,'
      '  SSN,'
      '  TABELAPRECO,'
      '  DESATIVADO,'
      '  EXIGIVEL1099,'
      '  TIPOENTREGA,'
      '  DATACADASTRO,'
      '  SITE,'
      '  OBS,'
      '  IMPORTACAO,'
      '  SITUACAO,'
      '  CARGO,'
      '  LOGOTIPO,'
      '  JUROSFACTORY,'
      '  TAXASFACTORY,'
      '  FLOATINGFACTORY,'
      '  MEMO_CHECK,'
      '  CREDITO,'
      '  CONTA,'
      '  NUMERO_REVENDA,'
      '  TIPO_FUNC,'
      '  DATANASC,'
      '  CAMPO01,'
      '  CAMPO02,'
      '  CAMPO03,'
      '  CAMPO04,'
      '  CAMPO05,'
      '  CAMPO06,'
      '  CAMPO07,'
      '  CAMPO08,'
      '  CAMPO09,'
      '  CAMPO10,'
      '  COMISSAO,'
      '  ISVENDEDOR,'
      '  CONTAPAGAMENTO,'
      '  CONTADESPESAS,'
      '  ULTCOMPRA,'
      '  ULTVALORCOMPRA,'
      '  PERIODICIDADE,'
      '  DATAADIMISSAO,'
      '  DATADEMISSAO,'
      '  DATAAUMENTO'
      'from FAVORECIDOS '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update FAVORECIDOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  DESATIVADO = :DESATIVADO,'
      '  CPF_CNPJ = :CPJ_CNPJ,'
      '  ENDERECO = :ENDERECO, '
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP, '
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  EMAIL = :EMAIL,'
      '  TIPOATIVIDADE = :TIPOATIVIDADE'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into FAVORECIDOS'
      '  (CODIGO, FAVORECIDO, NOME, TIPOFAVORECIDO, DESATIVADO,'
      '  ENDERECO,  BAIRRO,   CIDADE, UF, CEP,  FONE1,'
      '  FONE2,  FAX,  CELULAR,  EMAIL, TIPOATIVIDADE, CPF_CNPJ)'
      'values'
      '  (:CODIGO, :FAVORECIDO, :NOME, :TIPOFAVORECIDO, :DESATIVADO,'
      '  :ENDERECO,  :BAIRRO,   :CIDADE, :UF, :CEP,  :FONE1,'
      '  :FONE2,  :FAX,  :CELULAR,  :EMAIL, :TIPOATIVIDADE, :CPF_CNPJ)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Top = 50
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'Favorecidos'
    Tabela_Nome = 'Favorecidos'
    Tabela_Chave = 'Favorecido'
  end
  inherited DlgMsg: TDlgMsg
    Left = 31
    Top = 318
  end
  inherited C_Tabela: TClientDataSet
    Left = 34
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      OnValidate = C_TabelaCODIGOValidate
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnValidate = C_TabelaCPF_CNPJValidate
      Size = 14
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_TabelaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_TabelaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_TabelaFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_TabelaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_TabelaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TabelalkUF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'UF'
      KeyFields = 'UF'
      Size = 2
      Lookup = True
    end
    object C_TabelaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
    end
    object C_TabelalkTipoAtividade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoAtividade'
      LookupDataSet = C_TiposAtividade
      LookupKeyFields = 'TIPOATIVIDADE'
      LookupResultField = 'ATIVIDADE'
      KeyFields = 'TIPOATIVIDADE'
      Size = 30
      Lookup = True
    end
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 166
    Top = 108
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
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 166
    Top = 61
  end
  object Q_UFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS'
      'order by uf')
    Left = 166
    Top = 12
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 106
    Top = 151
  end
  object Q_TiposAtividade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOATIVIDADE, DESCRICAO As ATIVIDADE'
      'From  TIPOSATIVIDADE'
      'Where TIPOFAVORECIDO = 7')
    Left = 164
    Top = 155
  end
  object P_TiposAtividade: TDataSetProvider
    DataSet = Q_TiposAtividade
    Constraints = True
    Left = 164
    Top = 203
  end
  object C_TiposAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposAtividade'
    Left = 164
    Top = 245
    object C_TiposAtividadeTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Required = True
    end
    object C_TiposAtividadeATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 30
    end
  end
end

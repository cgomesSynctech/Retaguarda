inherited DMFiliais: TDMFiliais
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select favorecido, nome, razao, cpf_cnpj, endereco, bairro, cida' +
        'de, uf, cep , fone1, fone2, fax, email, tipofavorecido, desativa' +
        'do'
      'from FAVORECIDOS'
      'where tipofavorecido = -1 and favorecido > 0'
      '')
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
      '  DATAAUMENTO,'
      '  AGRUPARPORITEM,'
      '  RELACIONAMENTO,'
      '  DESCRICAORELAC,'
      '  INICIOSEMANA,'
      '  DIASPERIODO,'
      '  QUALIDADE,'
      '  ZONA,'
      '  GRUPOCLIENTE,'
      '  GRAURELAC,'
      '  ULTIMOPGTO,'
      '  ULTIMOVALORPAGO,'
      '  SEXO,'
      '  CARTMOTOR,'
      '  CPF_CNPJ,'
      '  INSCRICAO_EST,'
      '  BAIRRO,'
      '  RG,'
      '  PESSOA_FJ,'
      '  FONTE,'
      '  INDICADOPELOFAV,'
      '  TIPOEMPRESA,'
      '  RESTRICOES,'
      '  DTMODIFICACAO,'
      '  SUBSTITUTOTRIB,'
      '  CIDADE_CH,'
      '  STATUSIMS,'
      '  STATUSITX,'
      '  CRM'
      'from FAVORECIDOS '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update FAVORECIDOS'
      'set'
      '  NOME = :NOME,'
      '  RAZAO = :RAZAO,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  DESATIVADO = :DESATIVADO'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into FAVORECIDOS'
      
        '  (FAVORECIDO, NOME, RAZAO, CPF_CNPJ, ENDERECO, BAIRRO, CIDADE, ' +
        'UF, CEP, '
      '   FONE1, FONE2, FAX, EMAIL, TIPOFAVORECIDO, DESATIVADO)'
      'values'
      
        '  (:FAVORECIDO, :NOME, :RAZAO, :CPF_CNPJ, :ENDERECO, :BAIRRO, :C' +
        'IDADE, '
      
        '   :UF, :CEP, :FONE1, :FONE2, :FAX, :EMAIL, :TIPOFAVORECIDO, :DE' +
        'SATIVADO)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'FAVORECIDOS'
    Tabela_Nome = 'FAVORECIDOS'
    Tabela_Chave = 'FAVORECIDO'
    DeleteValidate.Strings = (
      'TITULOSARECEBER;EMPRESA')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnGetText = C_TabelaCPF_CNPJGetText
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
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
  end
end

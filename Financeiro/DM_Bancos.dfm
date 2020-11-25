inherited DMBancos: TDMBancos
  Left = 130
  Top = 104
  Height = 375
  Width = 291
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select Codigo, Favorecido, Nome, TipoFavorecido, LogoTipo, Desat' +
        'ivado, tipo_func from FAVORECIDOS'
      'Where TipoFavorecido = 4')
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
      '  LOGOTIPO = :LOGOTIPO,'
      '  TIPO_FUNC = :TIPO_FUNC'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into FAVORECIDOS'
      
        '  (CODIGO, FAVORECIDO, NOME, TIPOFAVORECIDO, DESATIVADO,LOGOTIPO' +
        ', '
      'TIPO_FUNC)'
      'values'
      '  (:CODIGO, :FAVORECIDO, :NOME, :TIPOFAVORECIDO, '
      ':DESATIVADO,:LOGOTIPO, :TIPO_FUNC)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'Favorecidos'
    Tabela_Nome = 'Favorecidos'
    Tabela_Chave = 'Favorecido'
  end
  inherited C_Tabela: TClientDataSet
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
    object C_TabelaLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_TabelaTIPO_FUNC: TStringField
      FieldName = 'TIPO_FUNC'
      Size = 1
    end
  end
end

inherited DMLocalDeposito: TDMLocalDeposito
  Left = 92
  Top = 127
  Height = 479
  Width = 741
  inherited OpenDialog: TOpenDialog
    Left = 145
    Top = 279
  end
  inherited SaveDialog: TSaveDialog
    Left = 178
    Top = 279
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select f.*,  cli.nome AS NOME_CLIENTE'
      'From FAVORECIDOS f'
      'join favorecidos cli on f.vendedor = cli.favorecido'
      'Where f.tipofavorecido = 8')
    Left = 39
    Top = 13
    object Q_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object Q_TabelaCODIGO: TIBStringField
      FieldName = 'CODIGO'
    end
    object Q_TabelaNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_TabelaRAZAO: TIBStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object Q_TabelaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object Q_TabelaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Q_TabelaUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object Q_TabelaCEP: TIBStringField
      FieldName = 'CEP'
      Size = 10
    end
    object Q_TabelaCAIXAPOSTAL: TIBStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object Q_TabelaPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object Q_TabelaFONE1: TIBStringField
      FieldName = 'FONE1'
    end
    object Q_TabelaFONE2: TIBStringField
      FieldName = 'FONE2'
    end
    object Q_TabelaFAX: TIBStringField
      FieldName = 'FAX'
    end
    object Q_TabelaCELULAR: TIBStringField
      FieldName = 'CELULAR'
    end
    object Q_TabelaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object Q_TabelaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object Q_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object Q_TabelaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
    end
    object Q_TabelaPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
    end
    object Q_TabelaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object Q_TabelaLIMITECREDITO: TIBBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object Q_TabelaTAXAVEL: TIBStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object Q_TabelaTAX: TIntegerField
      FieldName = 'TAX'
    end
    object Q_TabelaEIN: TIBStringField
      FieldName = 'EIN'
      Size = 10
    end
    object Q_TabelaSSN: TIBStringField
      FieldName = 'SSN'
      Size = 11
    end
    object Q_TabelaTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object Q_TabelaDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object Q_TabelaEXIGIVEL1099: TIBStringField
      FieldName = 'EXIGIVEL1099'
      Size = 1
    end
    object Q_TabelaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
    end
    object Q_TabelaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object Q_TabelaSITE: TIBStringField
      FieldName = 'SITE'
      Size = 80
    end
    object Q_TabelaOBS: TIBStringField
      FieldName = 'OBS'
      Size = 255
    end
    object Q_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object Q_TabelaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object Q_TabelaCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object Q_TabelaLOGOTIPO: TIBStringField
      FieldName = 'LOGOTIPO'
      Size = 50
    end
    object Q_TabelaJUROSFACTORY: TIBBCDField
      FieldName = 'JUROSFACTORY'
      Precision = 18
      Size = 2
    end
    object Q_TabelaTAXASFACTORY: TIBBCDField
      FieldName = 'TAXASFACTORY'
      Precision = 18
      Size = 2
    end
    object Q_TabelaFLOATINGFACTORY: TIBBCDField
      FieldName = 'FLOATINGFACTORY'
      Precision = 18
      Size = 2
    end
    object Q_TabelaMEMO_CHECK: TIBStringField
      FieldName = 'MEMO_CHECK'
      Size = 255
    end
    object Q_TabelaCREDITO: TIBBCDField
      FieldName = 'CREDITO'
      Precision = 18
      Size = 2
    end
    object Q_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object Q_TabelaNUMERO_REVENDA: TIBStringField
      FieldName = 'NUMERO_REVENDA'
    end
    object Q_TabelaTIPO_FUNC: TIBStringField
      FieldName = 'TIPO_FUNC'
      Size = 1
    end
    object Q_TabelaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object Q_TabelaCAMPO01: TIBStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object Q_TabelaCAMPO02: TIBStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object Q_TabelaCAMPO03: TIBStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object Q_TabelaCAMPO04: TIBStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object Q_TabelaCAMPO05: TIBStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object Q_TabelaCAMPO06: TIBStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object Q_TabelaCAMPO07: TIBStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object Q_TabelaCAMPO08: TIBStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object Q_TabelaCAMPO09: TIBStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object Q_TabelaCAMPO10: TIBStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object Q_TabelaCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object Q_TabelaISVENDEDOR: TIBStringField
      FieldName = 'ISVENDEDOR'
      Size = 1
    end
    object Q_TabelaCONTAPAGAMENTO: TIntegerField
      FieldName = 'CONTAPAGAMENTO'
    end
    object Q_TabelaCONTADESPESAS: TIntegerField
      FieldName = 'CONTADESPESAS'
    end
    object Q_TabelaNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
  end
  inherited Q_MasterDS: TDataSource
    Left = 109
    Top = 13
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
      '  CONTADESPESAS'
      'from FAVORECIDOS '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update FAVORECIDOS'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  RAZAO = :RAZAO,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  CAIXAPOSTAL = :CAIXAPOSTAL,'
      '  PAIS = :PAIS,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  CONTATO = :CONTATO,'
      '  EMAIL = :EMAIL,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  TIPOATIVIDADE = :TIPOATIVIDADE,'
      '  PLANOPAGAMENTO = :PLANOPAGAMENTO,'
      '  VENDEDOR = :VENDEDOR,'
      '  LIMITECREDITO = :LIMITECREDITO,'
      '  TAXAVEL = :TAXAVEL,'
      '  TAX = :TAX,'
      '  EIN = :EIN,'
      '  SSN = :SSN,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  DESATIVADO = :DESATIVADO,'
      '  EXIGIVEL1099 = :EXIGIVEL1099,'
      '  TIPOENTREGA = :TIPOENTREGA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  SITE = :SITE,'
      '  OBS = :OBS,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  SITUACAO = :SITUACAO,'
      '  CARGO = :CARGO,'
      '  LOGOTIPO = :LOGOTIPO,'
      '  JUROSFACTORY = :JUROSFACTORY,'
      '  TAXASFACTORY = :TAXASFACTORY,'
      '  FLOATINGFACTORY = :FLOATINGFACTORY,'
      '  MEMO_CHECK = :MEMO_CHECK,'
      '  CREDITO = :CREDITO,'
      '  CONTA = :CONTA,'
      '  NUMERO_REVENDA = :NUMERO_REVENDA,'
      '  TIPO_FUNC = :TIPO_FUNC,'
      '  DATANASC = :DATANASC,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  CAMPO06 = :CAMPO06,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  CAMPO09 = :CAMPO09,'
      '  CAMPO10 = :CAMPO10,'
      '  COMISSAO = :COMISSAO,'
      '  ISVENDEDOR = :ISVENDEDOR,'
      '  CONTAPAGAMENTO = :CONTAPAGAMENTO,'
      '  CONTADESPESAS = :CONTADESPESAS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into FAVORECIDOS'
      '  (FAVORECIDO, CODIGO, NOME, RAZAO, ENDERECO, CIDADE, UF, CEP, '
      'CAIXAPOSTAL, '
      
        '   PAIS, FONE1, FONE2, FAX, CELULAR, CONTATO, EMAIL, TIPOFAVOREC' +
        'IDO, '
      'TIPOATIVIDADE, '
      
        '   PLANOPAGAMENTO, VENDEDOR, LIMITECREDITO, TAXAVEL, TAX, EIN, S' +
        'SN, '
      'TABELAPRECO, '
      
        '   DESATIVADO, EXIGIVEL1099, TIPOENTREGA, DATACADASTRO, SITE, OB' +
        'S, '
      'IMPORTACAO, '
      '   SITUACAO, CARGO, LOGOTIPO, JUROSFACTORY, TAXASFACTORY, '
      'FLOATINGFACTORY, '
      '   MEMO_CHECK, CREDITO, CONTA, NUMERO_REVENDA, TIPO_FUNC, '
      'DATANASC, CAMPO01, '
      
        '   CAMPO02, CAMPO03, CAMPO04, CAMPO05, CAMPO06, CAMPO07, CAMPO08' +
        ', '
      'CAMPO09, '
      '   CAMPO10, COMISSAO, ISVENDEDOR, CONTAPAGAMENTO, '
      'CONTADESPESAS)'
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP, '
      
        '   :CAIXAPOSTAL, :PAIS, :FONE1, :FONE2, :FAX, :CELULAR, :CONTATO' +
        ', :EMAIL, '
      '   :TIPOFAVORECIDO, :TIPOATIVIDADE, :PLANOPAGAMENTO, :VENDEDOR, '
      ':LIMITECREDITO, '
      
        '   :TAXAVEL, :TAX, :EIN, :SSN, :TABELAPRECO, :DESATIVADO, :EXIGI' +
        'VEL1099, '
      
        '   :TIPOENTREGA, :DATACADASTRO, :SITE, :OBS, :IMPORTACAO, :SITUA' +
        'CAO, '
      ':CARGO, '
      '   :LOGOTIPO, :JUROSFACTORY, :TAXASFACTORY, :FLOATINGFACTORY, '
      ':MEMO_CHECK, '
      '   :CREDITO, :CONTA, :NUMERO_REVENDA, :TIPO_FUNC, :DATANASC, '
      ':CAMPO01, '
      '   :CAMPO02, :CAMPO03, :CAMPO04, :CAMPO05, :CAMPO06, :CAMPO07, '
      ':CAMPO08, '
      '   :CAMPO09, :CAMPO10, :COMISSAO, :ISVENDEDOR, :CONTAPAGAMENTO, '
      ':CONTADESPESAS)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 39
    Top = 61
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    WhereVazio = 'f.favorecido is null'
    KeyForIDs = 'FAVORECIDOS'
    Tabela_Nome = 'FAVORECIDOS'
    Tabela_Chave = 'FAVORECIDO'
    MestreDetalhe = True
    GenerateIDFor.Strings = (
      'C_Deposito=RECEPTORDEPOSITO')
    Left = 39
    Top = 280
  end
  inherited DlgMsg: TDlgMsg
    Left = 111
    Top = 279
  end
  inherited C_Tabela: TClientDataSet
    Left = 39
    Top = 162
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_TabelaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_TabelaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object C_TabelaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_TabelaPAIS: TIntegerField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS'
    end
    object C_TabelaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FONE1'
    end
    object C_TabelaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FONE2'
    end
    object C_TabelaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object C_TabelaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
    end
    object C_TabelaCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_TabelaEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
    end
    object C_TabelaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_TabelaLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_TabelaTAX: TIntegerField
      FieldName = 'TAX'
    end
    object C_TabelaEIN: TStringField
      FieldName = 'EIN'
      Size = 10
    end
    object C_TabelaSSN: TStringField
      FieldName = 'SSN'
      Size = 11
    end
    object C_TabelaTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaEXIGIVEL1099: TStringField
      FieldName = 'EXIGIVEL1099'
      Size = 1
    end
    object C_TabelaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
    end
    object C_TabelaDATACADASTRO: TDateField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'DATACADASTRO'
    end
    object C_TabelaSITE: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITE'
      Size = 80
    end
    object C_TabelaOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_TabelaCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object C_TabelaLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 50
    end
    object C_TabelaJUROSFACTORY: TBCDField
      FieldName = 'JUROSFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXASFACTORY: TBCDField
      FieldName = 'TAXASFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaMEMO_CHECK: TStringField
      FieldName = 'MEMO_CHECK'
      Size = 255
    end
    object C_TabelaCREDITO: TBCDField
      FieldName = 'CREDITO'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaNUMERO_REVENDA: TStringField
      FieldName = 'NUMERO_REVENDA'
    end
    object C_TabelaTIPO_FUNC: TStringField
      FieldName = 'TIPO_FUNC'
      Size = 1
    end
    object C_TabelaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_TabelaCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_TabelaCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_TabelaCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_TabelaCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_TabelaCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_TabelaCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_TabelaCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_TabelaCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_TabelaCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_TabelaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_TabelaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaISVENDEDOR: TStringField
      FieldName = 'ISVENDEDOR'
      Size = 1
    end
    object C_TabelaCONTAPAGAMENTO: TIntegerField
      FieldName = 'CONTAPAGAMENTO'
    end
    object C_TabelaCONTADESPESAS: TIntegerField
      FieldName = 'CONTADESPESAS'
    end
    object C_TabelalkUF: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Lookup = True
    end
    object C_TabelalkPais: TStringField
      DisplayLabel = 'Pais'
      FieldKind = fkLookup
      FieldName = 'lkPais'
      LookupDataSet = C_Pais
      LookupKeyFields = 'PAIS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAIS'
      Size = 30
      Lookup = True
    end
    object C_TabelaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object C_TabelaQ_Depositos: TDataSetField
      FieldName = 'Q_Depositos'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 39
    Top = 214
  end
  inherited ResultSet: TClientDataSet
    Left = 108
    Top = 62
  end
  object Q_LookUFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS')
    Left = 179
    Top = 11
  end
  object Q_LookPais: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select PAIS, DESCRICAO '
      'From PAISES')
    Left = 265
    Top = 7
  end
  object Q_UFsProvider: TDataSetProvider
    DataSet = Q_LookUFS
    Constraints = True
    Left = 179
    Top = 58
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UFsProvider'
    Left = 179
    Top = 107
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
  object Q_PaisProvider: TDataSetProvider
    DataSet = Q_LookPais
    Constraints = True
    Left = 265
    Top = 59
  end
  object C_Pais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_PaisProvider'
    Left = 265
    Top = 109
    object C_PaisPAIS: TIntegerField
      FieldName = 'PAIS'
      Required = True
    end
    object C_PaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object C_PaisDS: TDataSource
    DataSet = C_Pais
    Left = 265
    Top = 158
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 179
    Top = 158
  end
  object Q_Depositos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select RD.*, Receptor as Favorecido from RECEPTORESDEPOSITOS RD'
      'where receptor = :FAVORECIDO')
    UpdateObject = upDepositos
    Left = 344
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object upDepositos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  RECEPTORDEPOSITO,'
      '  RECEPTOR,'
      '  DESCRICAO,'
      '  CONTA,'
      '  AGENCIA,'
      '  BANCO,'
      '  OBS'
      'from RECEPTORESDEPOSITOS '
      'where'
      '  RECEPTORDEPOSITO = :RECEPTORDEPOSITO')
    ModifySQL.Strings = (
      'update RECEPTORESDEPOSITOS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  CONTA = :CONTA,'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  OBS = :OBS,'
      '  PADRAO = :PADRAO'
      'where'
      '  RECEPTORDEPOSITO = :OLD_RECEPTORDEPOSITO')
    InsertSQL.Strings = (
      'insert into RECEPTORESDEPOSITOS'
      
        '  (RECEPTORDEPOSITO, RECEPTOR, DESCRICAO, CONTA, AGENCIA, BANCO,' +
        ' '
      'OBS, PADRAO)'
      'values'
      
        '  (:RECEPTORDEPOSITO, :FAVORECIDO, :DESCRICAO, :CONTA, :AGENCIA,' +
        ' '
      ':BANCO, :OBS, :PADRAO)')
    DeleteSQL.Strings = (
      'delete from RECEPTORESDEPOSITOS'
      'where'
      '  RECEPTORDEPOSITO = :OLD_RECEPTORDEPOSITO')
    Left = 424
    Top = 8
  end
  object C_Deposito: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Depositos
    Params = <>
    OnNewRecord = C_DepositoNewRecord
    Left = 344
    Top = 56
    object C_DepositoRECEPTORDEPOSITO: TIntegerField
      FieldName = 'RECEPTORDEPOSITO'
      Required = True
    end
    object C_DepositoRECEPTOR: TIntegerField
      FieldName = 'RECEPTOR'
    end
    object C_DepositoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_DepositoCONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Size = 50
    end
    object C_DepositoAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Size = 6
    end
    object C_DepositoBANCO: TIntegerField
      DisplayLabel = 'CodBanco'
      FieldName = 'BANCO'
    end
    object C_DepositoOBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Size = 255
    end
    object C_DepositocbBanco: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkLookup
      FieldName = 'cbBanco'
      LookupDataSet = C_Bancos
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'BANCO'
      Lookup = True
    end
    object C_DepositoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_DepositoPADRAO: TStringField
      FieldName = 'PADRAO'
      Size = 1
    end
  end
  object dsDeposito: TDataSource
    DataSet = C_Deposito
    Left = 344
    Top = 111
  end
  object Q_Bancos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Favorecidos'
      'Where TipoFavorecido = 4 ')
    Left = 424
    Top = 112
    object Q_BancosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object Q_BancosNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_Bancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PBancos'
    Left = 424
    Top = 208
    object C_BancosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_BancosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object PBancos: TDataSetProvider
    DataSet = Q_Bancos
    Constraints = True
    Left = 424
    Top = 160
  end
end

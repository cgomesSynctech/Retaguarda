inherited DMClientes: TDMClientes
  Left = 229
  Top = 1
  Height = 746
  Width = 1164
  inherited OpenDialog: TOpenDialog
    Left = 24
    Top = 435
  end
  inherited SaveDialog: TSaveDialog
    Left = 24
    Top = 483
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select f.*, f.relacionamento as relac, f.nome as OldNome,'
      ''
      '(Select sum(tar.faltareceber) '
      ' From Titulosareceber tar '
      
        'where  ((F.CONSUMIDORFINAL = '#39'N'#39') or (F.CONSUMIDORFINAL is Null)' +
        ') and tar.cliente = f.favorecido'
      ' And Status>0 And Status<50) As Saldo,'
      ''
      '(Select Sum(dd.Valor) From DepositosDoc dd'
      'LEFT Join Depositos d On d.Deposito=dd.Deposito'
      
        'Where  ((F.CONSUMIDORFINAL = '#39'N'#39') or (F.CONSUMIDORFINAL is Null)' +
        ')  and d.Favorecido = f.favorecido'
      'and dd.formapagamento in (2,3) and dd.foradaempresa='#39'N'#39' '
      'and dd.status < 50 ) As CheqPendentes'
      ''
      'From FAVORECIDOS f '
      'Where f.tipofavorecido = 1')
    Left = 28
    Top = 4
  end
  inherited Q_MasterDS: TDataSource
    Left = 24
    Top = 245
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
      '  DESCRICAORELAC'
      '  NUMCONTRATO, '
      '  EDIFICIO,'
      '  LOCALMAPA'
      'from FAVORECIDOS '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update FAVORECIDOS'
      'set'
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
      '  CONTADESPESAS = :CONTADESPESAS,'
      '  ULTCOMPRA = :ULTCOMPRA,'
      '  ULTVALORCOMPRA = :ULTVALORCOMPRA,'
      '  PERIODICIDADE = :PERIODICIDADE,'
      '  DATAADIMISSAO = :DATAADIMISSAO,'
      '  DATADEMISSAO = :DATADEMISSAO,'
      '  DATAAUMENTO = :DATAAUMENTO,'
      '  AGRUPARPORITEM = :AGRUPARPORITEM,'
      '  RELACIONAMENTO = :RELACIONAMENTO,'
      '  DESCRICAORELAC = :DESCRICAORELAC,'
      '  INICIOSEMANA = :INICIOSEMANA, '
      '  DIASPERIODO = :DIASPERIODO,'
      '  QUALIDADE = :QUALIDADE,'
      '  ZONA = :ZONA,'
      '  GRUPOCLIENTE = :GRUPOCLIENTE,'
      '  GRAURELAC = :GRAURELAC,'
      '  SEXO = :SEXO,'
      '  CARTMOTOR = :CARTMOTOR,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_EST = :INSCRICAO_EST,'
      '  BAIRRO = :BAIRRO,'
      '  RG = :RG,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  FONTE = :FONTE,'
      '  INDICADOPELOFAV = :INDICADOPELOFAV,'
      '  SUBSTITUTOTRIB = :SUBSTITUTOTRIB,'
      '  DTMODIFICACAO = :DTMODIFICACAO,'
      '  STATUSIMS = :STATUSIMS,'
      '  STATUSITX = :STATUSITX,'
      '  CIDADE_CH = :CIDADE_CH,'
      '  CRM = :CRM,'
      '  PERCDESCONTO = :PERCDESCONTO,'
      '  NUMCONTRATO = :NUMCONTRATO,'
      '  EDIFICIO = :EDIFICIO,'
      '  LOCALMAPA = :LOCALMAPA,'
      '  TIPOCONTRATO = :TIPOCONTRATO,'
      '  INSCRICAO_MUN = :INSCRICAO_MUN,'
      '  TIPOCOBRANCA = :TIPOCOBRANCA ,'
      '  CONSUMIDORFINAL = :CONSUMIDORFINAL,'
      '  MUNICIPIO = :MUNICIPIO,'
      '  SUFRAMA = :SUFRAMA,'
      '  NRO = :NRO,'
      '  SENHA = :SENHA,'
      '  DECRETO24755 = :DECRETO24755,'
      '  ADDDIASPRAZO = :ADDDIASPRAZO,'
      '  EMPRESA = :EMPRESA,'
      '  PERMITIRCHEQUE = :PERMITIRCHEQUE,'
      '  PERMITIRFIADO = :PERMITIRFIADO'
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
      'CONTADESPESAS, ULTCOMPRA, '
      '   ULTVALORCOMPRA, PERIODICIDADE, DATAADIMISSAO, DATADEMISSAO, '
      'DATAAUMENTO, '
      
        '   AGRUPARPORITEM, RELACIONAMENTO, DESCRICAORELAC, INICIOSEMANA,' +
        ' '
      'DIASPERIODO, QUALIDADE, ZONA, GRUPOCLIENTE, GRAURELAC, SEXO, '
      'CARTMOTOR,   CPF_CNPJ, INSCRICAO_EST, BAIRRO,'
      '  RG,  PESSOA_FJ, FONTE, INDICADOPELOFAV, SUBSTITUTOTRIB, '
      'DTMODIFICACAO, STATUSIMS, STATUSITX, CIDADE_CH, '
      'CRM,PERCDESCONTO, NUMCONTRATO, EDIFICIO, LOCALMAPA, '
      'TIPOCONTRATO, INSCRICAO_MUN,  TIPOCOBRANCA, CONSUMIDORFINAL,'
      '  MUNICIPIO,  SUFRAMA, NRO, SENHA, DECRETO24755, ADDDIASPRAZO,'
      '  EMPRESA, PERMITIRCHEQUE, PERMITIRFIADO )'
      ''
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP,'
      
        '   :CAIXAPOSTAL, :PAIS, :FONE1, :FONE2, :FAX, :CELULAR, :CONTATO' +
        ', :EMAIL,'
      '   :TIPOFAVORECIDO, :TIPOATIVIDADE, :PLANOPAGAMENTO, :VENDEDOR,'
      ':LIMITECREDITO,'
      
        '   :TAXAVEL, :TAX, :EIN, :SSN, :TABELAPRECO, :DESATIVADO, :EXIGI' +
        'VEL1099,'
      
        '   :TIPOENTREGA, :DATACADASTRO, :SITE, :OBS, :IMPORTACAO, :SITUA' +
        'CAO,'
      ':CARGO,'
      '   :LOGOTIPO, :JUROSFACTORY, :TAXASFACTORY, :FLOATINGFACTORY,'
      ':MEMO_CHECK,'
      '   :CREDITO, :CONTA, :NUMERO_REVENDA, :TIPO_FUNC, :DATANASC,'
      ':CAMPO01,'
      '   :CAMPO02, :CAMPO03, :CAMPO04, :CAMPO05, :CAMPO06, :CAMPO07,'
      ':CAMPO08,'
      '   :CAMPO09, :CAMPO10, :COMISSAO, :ISVENDEDOR, :CONTAPAGAMENTO,'
      ':CONTADESPESAS,'
      '   :ULTCOMPRA, :ULTVALORCOMPRA, :PERIODICIDADE, :DATAADIMISSAO,'
      ':DATADEMISSAO,'
      '   :DATAAUMENTO, :AGRUPARPORITEM, :RELACIONAMENTO,'
      
        ':DESCRICAORELAC, :INICIOSEMANA, :DIASPERIODO, :QUALIDADE, :ZONA,' +
        ' '
      ':GRUPOCLIENTE, :GRAURELAC, :SEXO, :CARTMOTOR, :CPF_CNPJ, '
      ':INSCRICAO_EST, :BAIRRO,'
      '  :RG,  :PESSOA_FJ, :FONTE, :INDICADOPELOFAV, :SUBSTITUTOTRIB, '
      ':DTMODIFICACAO, :STATUSIMS, :STATUSITX, :CIDADE_CH, '
      ':CRM,:PERCDESCONTO, :NUMCONTRATO, :EDIFICIO, :LOCALMAPA, '
      
        ':TIPOCONTRATO, :INSCRICAO_MUN,  :TIPOCOBRANCA, :CONSUMIDORFINAL ' +
        ','
      
        ' :MUNICIPIO,:SUFRAMA,   :NRO, :SENHA, :DECRETO24755, :ADDDIASPRA' +
        'ZO,   '
      ':EMPRESA, :PERMITIRCHEQUE, :PERMITIRFIADO)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 28
    Top = 54
  end
  inherited DMComponent: TDMComponent
    AntesDeApagar = DMComponentAntesDeApagar
    AntesDeIniciar = DMComponentAntesDeIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Pesquisar4_Dados = DMComponentPesquisar4_Dados
    Exclusao = DMComponentExclusao
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'FAVORECIDOS'
    Tabela_Nome = 'FAVORECIDOS'
    Tabela_Chave = 'FAVORECIDO'
    MestreDetalhe = True
    DeleteValidate.Strings = (
      'Saidas=Vendedor'
      'TitulosAReceber=Vendedor'
      'Saidas=Favorecido'
      'TitulosAReceber=Cliente'
      'Compromissos=Cliente'
      'Depositos=Favorecido'
      'Transacoes=Favorecido'
      'Retiradasdoc=FavorecidoDoc'
      'Transacoescreditos=Favorecido'
      'Entradas=Favorecido'
      'DuplicatasaPagar=Fornecedor'
      'Listanegra=Favorecido'
      'Remessas=Cliente'
      'memorizacoes=idgerador'
      'alertasclientes=cliente'
      'comissoes_sobrefunc=vendedor_vendas'
      'lembretesclientes=cliente'
      'alertasitens=chave'
      'ocorrencias=favorecido'
      'producoesfunc=favorecido')
    Left = 26
    Top = 292
  end
  inherited DlgMsg: TDlgMsg
    Left = 24
    Top = 387
  end
  inherited P_Tabela: TDataSetProvider
    Left = 24
    Top = 102
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 26
    Top = 148
    object C_TabelaFAVORECIDO: TIntegerField
      DisplayWidth = 14
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 24
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_TabelaNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 60
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      OnChange = C_TabelaNOMEChange
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 60
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 60
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_TabelaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 36
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 3
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      DisplayWidth = 12
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_TabelaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      DisplayWidth = 30
      FieldName = 'CAIXAPOSTAL'
      Origin = 'FAVORECIDOS.CAIXAPOSTAL'
      Size = 25
    end
    object C_TabelaPAIS: TIntegerField
      DisplayLabel = 'Pa'#237's'
      DisplayWidth = 12
      FieldName = 'PAIS'
      Origin = 'FAVORECIDOS.PAIS'
    end
    object C_TabelaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      DisplayWidth = 24
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_TabelaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      DisplayWidth = 24
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_TabelaCELULAR: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 24
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_TabelaFAX: TStringField
      DisplayWidth = 24
      FieldName = 'FAX'
      Origin = 'FAVORECIDOS.FAX'
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      DisplayWidth = 19
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object C_TabelaTIPOATIVIDADE: TIntegerField
      DisplayWidth = 17
      FieldName = 'TIPOATIVIDADE'
      Origin = 'FAVORECIDOS.TIPOATIVIDADE'
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField
      DisplayWidth = 21
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'FAVORECIDOS.PLANOPAGAMENTO'
    end
    object C_TabelaVENDEDOR: TIntegerField
      DisplayWidth = 12
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
    end
    object C_TabelaLIMITECREDITO: TBCDField
      DisplayLabel = 'Limite de Cr'#233'dito'
      DisplayWidth = 23
      FieldName = 'LIMITECREDITO'
      Origin = 'FAVORECIDOS.LIMITECREDITO'
      DisplayFormat = '#,0.00;-#,0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXAVEL: TStringField
      DisplayLabel = 'Tax'#225'vel'
      DisplayWidth = 10
      FieldName = 'TAXAVEL'
      Origin = 'FAVORECIDOS.TAXAVEL'
      Size = 1
    end
    object C_TabelaTAX: TIntegerField
      DisplayWidth = 12
      FieldName = 'TAX'
      Origin = 'FAVORECIDOS.TAX'
    end
    object C_TabelaEIN: TStringField
      DisplayWidth = 12
      FieldName = 'EIN'
      Origin = 'FAVORECIDOS.EIN'
      Size = 10
    end
    object C_TabelaSSN: TStringField
      DisplayWidth = 13
      FieldName = 'SSN'
      Origin = 'FAVORECIDOS.SSN'
      Size = 11
    end
    object C_TabelaTABELAPRECO: TIntegerField
      DisplayWidth = 16
      FieldName = 'TABELAPRECO'
      Origin = 'FAVORECIDOS.TABELAPRECO'
    end
    object C_TabelaDESATIVADO: TStringField
      DisplayLabel = 'Desativado'
      DisplayWidth = 14
      FieldName = 'DESATIVADO'
      Origin = 'FAVORECIDOS.DESATIVADO'
      Size = 1
    end
    object C_TabelaEXIGIVEL1099: TStringField
      DisplayLabel = 'Exigir 1099'
      DisplayWidth = 15
      FieldName = 'EXIGIVEL1099'
      Origin = 'FAVORECIDOS.EXIGIVEL1099'
      Size = 1
    end
    object C_TabelaTIPOENTREGA: TIntegerField
      DisplayWidth = 16
      FieldName = 'TIPOENTREGA'
      Origin = 'FAVORECIDOS.TIPOENTREGA'
    end
    object C_TabelaDATACADASTRO: TDateField
      DisplayLabel = 'Data de Cadastro'
      DisplayWidth = 18
      FieldName = 'DATACADASTRO'
      Origin = 'FAVORECIDOS.DATACADASTRO'
    end
    object C_TabelaSITE: TStringField
      DisplayLabel = 'Site'
      DisplayWidth = 96
      FieldName = 'SITE'
      Origin = 'FAVORECIDOS.SITE'
      Size = 80
    end
    object C_TabelaOBS: TStringField
      DisplayWidth = 306
      FieldName = 'OBS'
      Origin = 'FAVORECIDOS.OBS'
      Size = 255
    end
    object C_TabelaIMPORTACAO: TIntegerField
      DisplayLabel = 'Importa'#231#227'o'
      DisplayWidth = 14
      FieldName = 'IMPORTACAO'
      Origin = 'FAVORECIDOS.IMPORTACAO'
    end
    object C_TabelaSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 11
      FieldName = 'SITUACAO'
      Origin = 'FAVORECIDOS.SITUACAO'
      Size = 1
    end
    object C_TabelaCARGO: TIntegerField
      DisplayWidth = 12
      FieldName = 'CARGO'
      Origin = 'FAVORECIDOS.CARGO'
    end
    object C_TabelaLOGOTIPO: TStringField
      DisplayWidth = 150
      FieldName = 'LOGOTIPO'
      Origin = 'FAVORECIDOS.LOGOTIPO'
      Size = 150
    end
    object C_TabelaJUROSFACTORY: TBCDField
      DisplayWidth = 23
      FieldName = 'JUROSFACTORY'
      Origin = 'FAVORECIDOS.JUROSFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXASFACTORY: TBCDField
      DisplayWidth = 23
      FieldName = 'TAXASFACTORY'
      Origin = 'FAVORECIDOS.TAXASFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaFLOATINGFACTORY: TBCDField
      DisplayWidth = 23
      FieldName = 'FLOATINGFACTORY'
      Origin = 'FAVORECIDOS.FLOATINGFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaMEMO_CHECK: TStringField
      DisplayWidth = 306
      FieldName = 'MEMO_CHECK'
      Origin = 'FAVORECIDOS.MEMO_CHECK'
      Size = 255
    end
    object C_TabelaCREDITO: TBCDField
      DisplayWidth = 23
      FieldName = 'CREDITO'
      Origin = 'FAVORECIDOS.CREDITO'
      DisplayFormat = '#,0.00;-#,0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTA: TIntegerField
      DisplayWidth = 12
      FieldName = 'CONTA'
      Origin = 'FAVORECIDOS.CONTA'
    end
    object C_TabelaNUMERO_REVENDA: TStringField
      DisplayWidth = 24
      FieldName = 'NUMERO_REVENDA'
      Origin = 'FAVORECIDOS.NUMERO_REVENDA'
    end
    object C_TabelaTIPO_FUNC: TStringField
      DisplayWidth = 12
      FieldName = 'TIPO_FUNC'
      Origin = 'FAVORECIDOS.TIPO_FUNC'
      Size = 1
    end
    object C_TabelaDATANASC: TDateField
      DisplayLabel = 'Data de Nascimento'
      DisplayWidth = 12
      FieldName = 'DATANASC'
      Origin = 'FAVORECIDOS.DATANASC'
      EditMask = '!99/99/9999;1;_'
    end
    object C_TabelaSALDO: TBCDField
      DisplayWidth = 23
      FieldName = 'SALDO'
      DisplayFormat = '#,0.00;-#,0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Origin = 'FAVORECIDOS.CAMPO01'
      Size = 255
    end
    object C_TabelaCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Origin = 'FAVORECIDOS.CAMPO02'
      Size = 255
    end
    object C_TabelaCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Origin = 'FAVORECIDOS.CAMPO03'
      Size = 255
    end
    object C_TabelaCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Origin = 'FAVORECIDOS.CAMPO04'
      Size = 255
    end
    object C_TabelaCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Origin = 'FAVORECIDOS.CAMPO05'
      Size = 255
    end
    object C_TabelaCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Origin = 'FAVORECIDOS.CAMPO06'
      Size = 255
    end
    object C_TabelaCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Origin = 'FAVORECIDOS.CAMPO07'
      Size = 255
    end
    object C_TabelaCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Origin = 'FAVORECIDOS.CAMPO08'
      Size = 255
    end
    object C_TabelaCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Origin = 'FAVORECIDOS.CAMPO09'
      Size = 255
    end
    object C_TabelaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'FAVORECIDOS.CAMPO10'
      Size = 255
    end
    object C_TabelaCOMISSAO: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
      Origin = 'FAVORECIDOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaISVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'ISVENDEDOR'
      Origin = 'FAVORECIDOS.ISVENDEDOR'
      Size = 1
    end
    object C_TabelaCHEQPENDENTES: TBCDField
      FieldName = 'CHEQPENDENTES'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTAPAGAMENTO: TIntegerField
      FieldName = 'CONTAPAGAMENTO'
      Origin = 'FAVORECIDOS.CONTAPAGAMENTO'
    end
    object C_TabelacfCHEQUESPENDENTES: TFloatField
      DisplayLabel = 'Cheques Pendentes'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'cfCHEQUESPENDENTES'
      DisplayFormat = '##0.00,###'
    end
    object C_TabelacfCREDITO: TBCDField
      DisplayLabel = 'Cr'#233'dito'
      DisplayWidth = 12
      FieldKind = fkInternalCalc
      FieldName = 'cfCREDITO'
      DisplayFormat = '##0.00,###'
    end
    object C_TabelacfSALDO: TBCDField
      DisplayLabel = 'Saldo'
      DisplayWidth = 12
      FieldKind = fkInternalCalc
      FieldName = 'cfSALDO'
      DisplayFormat = '##0.00,###'
    end
    object C_TabelalkConta: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTabelaPreco: TStringField
      DisplayLabel = 'Tabela de Pre'#231'o'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'lkTabelaPreco'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 25
      Lookup = True
    end
    object C_TabelalkTipoEntrega: TStringField
      DisplayLabel = 'Tipo de Entrega'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'lkTipoEntrega'
      LookupDataSet = C_TiposEntrega
      LookupKeyFields = 'TIPOENTREGA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOENTREGA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkVendedor: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'lkVendedor'
      LookupDataSet = C_Vendedor
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'VENDEDOR'
      KeyFields = 'VENDEDOR'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTAX: TStringField
      DisplayLabel = 'TAX'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'lkTAX'
      LookupDataSet = C_TAXS
      LookupKeyFields = 'TAX'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TAX'
      Size = 30
      Lookup = True
    end
    object C_TabelalkPlanoPagamento: TStringField
      DisplayLabel = 'Plano de Pagamento'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'lkPlanoPagamento'
      LookupDataSet = C_PlanosPagamento
      LookupKeyFields = 'PLANOPAGAMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PLANOPAGAMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkTipoAtividade: TStringField
      DisplayLabel = 'Tipo de Pagamento'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'lkTipoAtividade'
      LookupDataSet = C_TiposAtividade
      LookupKeyFields = 'TIPOATIVIDADE'
      LookupResultField = 'ATIVIDADE'
      KeyFields = 'TIPOATIVIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkPais: TStringField
      DisplayLabel = 'Pa'#237's'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'lkPais'
      LookupDataSet = C_Paises
      LookupKeyFields = 'PAIS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAIS'
      Size = 25
      Lookup = True
    end
    object C_TabelalkUF: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'lkUF'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Size = 50
      Lookup = True
    end
    object C_TabelaCONTADESPESAS: TIntegerField
      FieldName = 'CONTADESPESAS'
      Origin = 'FAVORECIDOS.CONTADESPESAS'
    end
    object C_TabelaULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
      Origin = 'FAVORECIDOS.ULTCOMPRA'
    end
    object C_TabelaULTVALORCOMPRA: TBCDField
      FieldName = 'ULTVALORCOMPRA'
      Origin = 'FAVORECIDOS.ULTVALORCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Origin = 'FAVORECIDOS.PERIODICIDADE'
      Size = 1
    end
    object C_TabelaDATAADIMISSAO: TDateField
      FieldName = 'DATAADIMISSAO'
      Origin = 'FAVORECIDOS.DATAADIMISSAO'
    end
    object C_TabelaDATADEMISSAO: TDateField
      FieldName = 'DATADEMISSAO'
      Origin = 'FAVORECIDOS.DATADEMISSAO'
    end
    object C_TabelaDATAAUMENTO: TDateField
      FieldName = 'DATAAUMENTO'
      Origin = 'FAVORECIDOS.DATAAUMENTO'
    end
    object C_TabelaAGRUPARPORITEM: TStringField
      FieldName = 'AGRUPARPORITEM'
      Origin = 'FAVORECIDOS.AGRUPARPORITEM'
      Size = 1
    end
    object C_TabelaRELACIONAMENTO: TIntegerField
      FieldName = 'RELACIONAMENTO'
      Origin = 'FAVORECIDOS.RELACIONAMENTO'
    end
    object C_TabelaRELAC: TIntegerField
      FieldName = 'RELAC'
      Origin = 'FAVORECIDOS.RELAC'
      OnChange = C_TabelaRELACChange
    end
    object C_TabelaDESCRICAORELAC: TStringField
      FieldName = 'DESCRICAORELAC'
      Origin = 'FAVORECIDOS.DESCRICAORELAC'
      OnChange = C_TabelaRELACChange
      Size = 25
    end
    object C_TabelaINICIOSEMANA: TIntegerField
      FieldName = 'INICIOSEMANA'
      Origin = 'FAVORECIDOS.INICIOSEMANA'
    end
    object C_TabelaDIASPERIODO: TIntegerField
      FieldName = 'DIASPERIODO'
      Origin = 'FAVORECIDOS.DIASPERIODO'
    end
    object C_TabelaQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
      Origin = 'FAVORECIDOS.QUALIDADE'
    end
    object C_TabelaZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'FAVORECIDOS.ZONA'
    end
    object C_TabelaGRUPOCLIENTE: TIntegerField
      FieldName = 'GRUPOCLIENTE'
      Origin = 'FAVORECIDOS.GRUPOCLIENTE'
    end
    object C_TabelaGRAURELAC: TIntegerField
      FieldName = 'GRAURELAC'
      Origin = 'FAVORECIDOS.GRAURELAC'
    end
    object C_TabelalkQualidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkQualidade'
      LookupDataSet = C_Qualidades
      LookupKeyFields = 'QUALIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'QUALIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkZona: TStringField
      FieldKind = fkLookup
      FieldName = 'lkZona'
      LookupDataSet = C_Zonas
      LookupKeyFields = 'ZONA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ZONA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkGrupo: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = C_GruposCliente
      LookupKeyFields = 'GRUPOCLIENTE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRUPOCLIENTE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkGrauRelac: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrauRelac'
      LookupDataSet = C_GrauRelac
      LookupKeyFields = 'GRAU'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRAURELAC'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaPagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaPagamento'
      LookupDataSet = C_ContasBanco
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAGAMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelaSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'FAVORECIDOS.SEXO'
      Size = 1
    end
    object C_TabelaCARTMOTOR: TStringField
      FieldName = 'CARTMOTOR'
      Origin = 'FAVORECIDOS.CARTMOTOR'
      Size = 25
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      OnChange = C_TabelaCPF_CNPJChange
      OnValidate = C_TabelaCPF_CNPJValidate
      Size = 14
    end
    object C_TabelaINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Origin = 'FAVORECIDOS.INSCRICAO_EST'
      Size = 14
    end
    object C_TabelaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_TabelaRG: TStringField
      FieldName = 'RG'
      Origin = 'FAVORECIDOS.RG'
      Size = 14
    end
    object C_TabelaPESSOA_FJ: TStringField
      FieldName = 'PESSOA_FJ'
      Origin = 'FAVORECIDOS.PESSOA_FJ'
      Size = 1
    end
    object C_TabelaFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'FAVORECIDOS.FONTE'
      Size = 1
    end
    object C_TabelaINDICADOPELOFAV: TIntegerField
      FieldName = 'INDICADOPELOFAV'
      Origin = 'FAVORECIDOS.INDICADOPELOFAV'
    end
    object C_TabelaSUBSTITUTOTRIB: TStringField
      FieldName = 'SUBSTITUTOTRIB'
      Origin = 'FAVORECIDOS.SUBSTITUTOTRIB'
      Size = 1
    end
    object C_TabelaOLDNOME: TStringField
      FieldName = 'OLDNOME'
      Origin = 'FAVORECIDOS.OLDNOME'
      Size = 50
    end
    object C_TabelaDTMODIFICACAO: TDateField
      FieldName = 'DTMODIFICACAO'
      Origin = 'FAVORECIDOS.DTMODIFICACAO'
    end
    object C_TabelaSTATUSIMS: TStringField
      FieldName = 'STATUSIMS'
      Origin = 'FAVORECIDOS.STATUSIMS'
      Size = 1
    end
    object C_TabelaSTATUSITX: TStringField
      FieldName = 'STATUSITX'
      Origin = 'FAVORECIDOS.STATUSITX'
      Size = 1
    end
    object C_TabelaCIDADE_CH: TIntegerField
      FieldName = 'CIDADE_CH'
      Origin = 'FAVORECIDOS.CIDADE_CH'
    end
    object C_TabelaCRM: TStringField
      FieldName = 'CRM'
      Origin = 'FAVORECIDOS.CRM'
      Size = 6
    end
    object C_TabelaPERCDESCONTO: TBCDField
      FieldName = 'PERCDESCONTO'
      Origin = 'FAVORECIDOS.PERCDESCONTO'
      DisplayFormat = '#,###,###,##0.00 %'
      MaxValue = 99
      Precision = 18
      Size = 2
    end
    object C_TabelaQ_Equipamentos: TDataSetField
      FieldName = 'Q_Equipamentos'
    end
    object C_TabelaNUMCONTRATO: TStringField
      FieldName = 'NUMCONTRATO'
      Origin = 'FAVORECIDOS.NUMCONTRATO'
      Size = 25
    end
    object C_TabelaEDIFICIO: TStringField
      FieldName = 'EDIFICIO'
      Origin = 'FAVORECIDOS.EDIFICIO'
      Size = 50
    end
    object C_TabelaCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'FAVORECIDOS.CONTATO'
      Size = 100
    end
    object C_TabelaLOCALMAPA: TStringField
      FieldName = 'LOCALMAPA'
      Origin = 'FAVORECIDOS.LOCALMAPA'
      Size = 25
    end
    object C_TabelaTIPOCONTRATO: TStringField
      FieldName = 'TIPOCONTRATO'
      Origin = 'FAVORECIDOS.TIPOCONTRATO'
      Size = 1
    end
    object C_TabelaQ_AssistenciaEquip: TDataSetField
      FieldName = 'Q_AssistenciaEquip'
    end
    object C_TabelaINSCRICAO_MUN: TStringField
      FieldName = 'INSCRICAO_MUN'
      Origin = 'FAVORECIDOS.INSCRICAO_MUN'
      Size = 14
    end
    object C_TabelaTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'FAVORECIDOS.TIPOCOBRANCA'
    end
    object C_TabelalkTipoCobranca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoCobranca'
      LookupDataSet = C_TipoCobranca
      LookupKeyFields = 'TIPOCOBRANCA'
      LookupResultField = 'DESCTIPO'
      KeyFields = 'TIPOCOBRANCA'
      Size = 30
      Lookup = True
    end
    object C_TabelaCONSUMIDORFINAL: TStringField
      FieldName = 'CONSUMIDORFINAL'
      FixedChar = True
      Size = 1
    end
    object C_TabelaMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
    end
    object C_TabelaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object C_TabelalkpMunicipio: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpMunicipio'
      LookupDataSet = C_Municipios
      LookupKeyFields = 'MUNICIPIO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MUNICIPIO'
      Size = 50
      Lookup = True
    end
    object C_TabelaNRO: TStringField
      FieldName = 'NRO'
      Size = 4
    end
    object C_TabelaQ_Clientes: TDataSetField
      FieldName = 'Q_Clientes'
    end
    object C_TabelaSENHA: TStringField
      FieldName = 'SENHA'
    end
    object C_TabelaDECRETO24755: TStringField
      FieldName = 'DECRETO24755'
      FixedChar = True
      Size = 1
    end
    object C_TabelaADDDIASPRAZO: TIntegerField
      FieldName = 'ADDDIASPRAZO'
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelaPERMITIRCHEQUE: TStringField
      FieldName = 'PERMITIRCHEQUE'
      FixedChar = True
      Size = 1
    end
    object C_TabelaPERMITIRFIADO: TStringField
      FieldName = 'PERMITIRFIADO'
      FixedChar = True
      Size = 1
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 24
    Top = 197
  end
  inherited ResultSet: TClientDataSet
    Left = 24
    Top = 340
  end
  object Q_UFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS'
      'order by uf')
    Left = 106
    Top = 8
  end
  object Q_Paises: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select PAIS, DESCRICAO '
      'From PAISES')
    Left = 265
    Top = 199
  end
  object Q_PlanoPagamento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  DESCRICAO, PLANOPAGAMENTO'
      'From PLANOSPAGAMENTO'
      'Where Tipo in ('#39'S'#39', '#39'A'#39')')
    Left = 346
    Top = 199
  end
  object Q_Vendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select FAVORECIDO, NOME As VENDEDOR'
      'From FAVORECIDOS'
      'Where tipofavorecido = 3'
      'And IsVendedor='#39'S'#39' And Desativado='#39'N'#39
      'Order By NOME')
    Left = 106
    Top = 198
  end
  object Q_TAXS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TAX  '
      'From TAXS')
    Left = 429
    Top = 199
  end
  object Q_TiposEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TIPOENTREGA From TIPOSENTREGA')
    Left = 188
    Top = 199
  end
  object Q_TiposAtividade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOATIVIDADE, DESCRICAO As ATIVIDADE'
      'From TIPOSATIVIDADE'
      '')
    Left = 514
    Top = 199
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 106
    Top = 55
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 106
    Top = 103
    object C_UFsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UFS.DESCRICAO'
      Required = True
      Size = 50
    end
    object C_UFsUF: TStringField
      FieldName = 'UF'
      Origin = 'UFS.UF'
      Required = True
      Size = 2
    end
  end
  object P_Vendedor: TDataSetProvider
    DataSet = Q_Vendedor
    Constraints = True
    Left = 106
    Top = 246
  end
  object C_Vendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedor'
    Left = 106
    Top = 294
    object C_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_VendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
      Size = 50
    end
  end
  object P_TiposEntrega: TDataSetProvider
    DataSet = Q_TiposEntrega
    Constraints = True
    Left = 188
    Top = 246
  end
  object C_TiposEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposEntrega'
    Left = 188
    Top = 294
    object C_TiposEntregaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Origin = 'TIPOSENTREGA.TIPOENTREGA'
      Required = True
    end
    object C_TiposEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSENTREGA.DESCRICAO'
      Size = 30
    end
  end
  object P_TiposAtividade: TDataSetProvider
    DataSet = Q_TiposAtividade
    Constraints = True
    Left = 514
    Top = 247
  end
  object C_TiposAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposAtividade'
    Left = 514
    Top = 295
    object C_TiposAtividadeTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Origin = 'TIPOSATIVIDADE.TIPOATIVIDADE'
      Required = True
    end
    object C_TiposAtividadeATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Origin = 'TIPOSATIVIDADE.ATIVIDADE'
      Size = 30
    end
  end
  object P_TAXS: TDataSetProvider
    DataSet = Q_TAXS
    Constraints = True
    Left = 429
    Top = 246
  end
  object C_TAXS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TAXS'
    Left = 429
    Top = 294
    object C_TAXSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TAXS.DESCRICAO'
      Size = 30
    end
    object C_TAXSTAX: TIntegerField
      FieldName = 'TAX'
      Origin = 'TAXS.TAX'
      Required = True
    end
  end
  object P_Paises: TDataSetProvider
    DataSet = Q_Paises
    Constraints = True
    Left = 265
    Top = 246
  end
  object C_Paises: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Paises'
    Left = 265
    Top = 294
    object C_PaisesPAIS: TIntegerField
      FieldName = 'PAIS'
      Origin = 'PAISES.PAIS'
      Required = True
    end
    object C_PaisesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAISES.DESCRICAO'
      Size = 25
    end
  end
  object P_PlanoPagamento: TDataSetProvider
    DataSet = Q_PlanoPagamento
    Constraints = True
    Left = 346
    Top = 246
  end
  object C_PlanosPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanoPagamento'
    Left = 346
    Top = 294
    object C_PlanosPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PLANOSPAGAMENTO.DESCRICAO'
      Size = 30
    end
    object C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'PLANOSPAGAMENTO.PLANOPAGAMENTO'
      Required = True
    end
  end
  object Q_TabelaPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TABELAPRECO From TabelasPreco')
    Left = 429
    Top = 342
  end
  object P_TabelaPreco: TDataSetProvider
    DataSet = Q_TabelaPreco
    Constraints = True
    Left = 429
    Top = 390
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelaPreco'
    Left = 429
    Top = 438
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'TABELASPRECO.TABELAPRECO'
      Required = True
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TABELASPRECO.DESCRICAO'
      Size = 25
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 188
    Top = 151
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.*, t.descricao as DescTipo'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'And c.TIPOCONTA = 3'
      'order by c.tipoconta, c.descricao')
    Left = 188
    Top = 8
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 188
    Top = 55
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 188
    Top = 103
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Origin = 'CONTAS.CODIGOREDUZIDO'
      Size = 12
    end
  end
  object Q_LocaisEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FAVORECIDOSENTREGA'
      'Where Favorecido = :FAVORECIDO')
    UpdateObject = U_LocaisEntrega
    Left = 514
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_LocaisEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_LocaisEntrega'
    BeforeOpen = C_LocaisEntregaBeforeOpen
    OnNewRecord = C_LocaisEntregaNewRecord
    Left = 514
    Top = 103
    object C_LocaisEntrega_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_LocaisEntregaENTREGA: TIntegerField
      FieldName = 'ENTREGA'
      Origin = 'FAVORECIDOSENTREGA.ENTREGA'
      Required = True
    end
    object C_LocaisEntregaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOSENTREGA.FAVORECIDO'
      Required = True
    end
    object C_LocaisEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'FAVORECIDOSENTREGA.DESCRICAO'
    end
    object C_LocaisEntregaENDERECOENTREGA: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECOENTREGA'
      Origin = 'FAVORECIDOSENTREGA.ENDERECOENTREGA'
      Size = 40
    end
    object C_LocaisEntregaCIDADEENTREGA: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADEENTREGA'
      Origin = 'FAVORECIDOSENTREGA.CIDADEENTREGA'
      Size = 30
    end
    object C_LocaisEntregaUFENTREGA: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFENTREGA'
      Origin = 'FAVORECIDOSENTREGA.UFENTREGA'
      Size = 2
    end
    object C_LocaisEntregaCEPENTREGA: TStringField
      DisplayLabel = 'Zip'
      FieldName = 'CEPENTREGA'
      Origin = 'FAVORECIDOSENTREGA.CEPENTREGA'
      EditMask = '99999\-9999;1;_'
      Size = 10
    end
    object C_LocaisEntregalkUFENTREGA: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'lkUFENTREGA'
      LookupDataSet = C_UFs
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UFENTREGA'
      Size = 50
      Lookup = True
    end
    object C_LocaisEntregaPAISENTREGA: TIntegerField
      FieldName = 'PAISENTREGA'
      Origin = 'FAVORECIDOSENTREGA.PAISENTREGA'
    end
    object C_LocaisEntregalkPais: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPais'
      LookupDataSet = C_Paises
      LookupKeyFields = 'PAIS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAISENTREGA'
      Lookup = True
    end
    object C_LocaisEntregaFONEENTREGA: TStringField
      FieldName = 'FONEENTREGA'
      Origin = 'FAVORECIDOSENTREGA.FONEENTREGA'
      Size = 15
    end
    object C_LocaisEntregaPONTOREFERENCIAENTREGA: TStringField
      FieldName = 'PONTOREFERENCIAENTREGA'
      Size = 40
    end
    object C_LocaisEntregaBAIRROENTREGA: TStringField
      FieldName = 'BAIRROENTREGA'
      Size = 30
    end
  end
  object C_LocaisEntregaDS: TDataSource
    DataSet = C_LocaisEntrega
    Left = 514
    Top = 151
  end
  object U_LocaisEntrega: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ENTREGA,'
      '  FAVORECIDO,'
      '  ENDERECOENTREGA,'
      '  CIDADEENTREGA,'
      '  UFENTREGA,'
      '  CEPENTREGA,'
      '  PAISENTREGA,'
      '  DESCRICAO,'
      '  FONEENTREGA,'
      '  BAIRROENTREGA,'
      '  PONTOREFERENCIAENTREGA'
      'from FAVORECIDOSENTREGA '
      'where'
      '  ENTREGA = :ENTREGA')
    ModifySQL.Strings = (
      'update FAVORECIDOSENTREGA'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  ENDERECOENTREGA = :ENDERECOENTREGA,'
      '  CIDADEENTREGA = :CIDADEENTREGA,'
      '  UFENTREGA = :UFENTREGA,'
      '  CEPENTREGA = :CEPENTREGA,'
      '  PAISENTREGA = :PAISENTREGA,'
      '  DESCRICAO = :DESCRICAO,'
      '  FONEENTREGA = :FONEENTREGA,'
      '  PONTOREFERENCIAENTREGA = :PONTOREFERENCIAENTREGA'
      'where'
      '  ENTREGA = :OLD_ENTREGA')
    InsertSQL.Strings = (
      'insert into FAVORECIDOSENTREGA'
      '  (ENTREGA, FAVORECIDO, ENDERECOENTREGA, CIDADEENTREGA, '
      'UFENTREGA, CEPENTREGA, '
      '   PAISENTREGA, DESCRICAO, FONEENTREGA, PONTOREFERENCIAENTREGA)'
      'values'
      '  (:ENTREGA, :FAVORECIDO, :ENDERECOENTREGA, :CIDADEENTREGA, '
      ':UFENTREGA, '
      '   :CEPENTREGA, :PAISENTREGA, :DESCRICAO, :FONEENTREGA, '
      ':PONTOREFERENCIAENTREGA)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOSENTREGA'
      'where'
      '  ENTREGA = :OLD_ENTREGA')
    Left = 514
    Top = 55
  end
  object Q_Contratos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.*, f.Nome as NomeFuncionario '
      'from ContratosFav c '
      'LEFT JOIN Favorecidos f ON c.Funcionario = f.Favorecido'
      'Where c.Favorecido = :FAVORECIDO')
    UpdateObject = U_Contratos
    Left = 429
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Contratos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ContratosFav '
      'where'
      '  CONTRATO = :CONTRATO')
    ModifySQL.Strings = (
      'update ContratosFav'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  ITEM = :ITEM,'
      '  PRECO = :PRECO,'
      '  PERIODICIDADE = :PERIODICIDADE,'
      '  DIACOBRANCA = :DIACOBRANCA,'
      '  METODOPGTO = :METODOPGTO,'
      '  FUNCPAYITEM = :FUNCPAYITEM,'
      '  GRUPOCOBRANCA = :GRUPOCOBRANCA,'
      '  ULTCOBRANCA = :ULTCOBRANCA,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  PAYROLLITEM = :PAYROLLITEM,'
      '  VALORFUNC = :VALORFUNC'
      'where'
      '  CONTRATO = :OLD_CONTRATO')
    InsertSQL.Strings = (
      'insert into ContratosFav'
      '  (CONTRATO, DESCRICAO, FAVORECIDO, ITEM, PRECO, PERIODICIDADE, '
      'DIACOBRANCA, '
      '   METODOPGTO, FUNCPAYITEM, GRUPOCOBRANCA, ULTCOBRANCA, '
      'FUNCIONARIO, PAYROLLITEM, '
      '   VALORFUNC)'
      'values'
      
        '  (:CONTRATO, :DESCRICAO, :FAVORECIDO, :ITEM, :PRECO, :PERIODICI' +
        'DADE, '
      ':DIACOBRANCA, '
      '   :METODOPGTO, :FUNCPAYITEM, :GRUPOCOBRANCA, :ULTCOBRANCA, '
      ':FUNCIONARIO, '
      '   :PAYROLLITEM, :VALORFUNC)')
    DeleteSQL.Strings = (
      'delete from ContratosFav'
      'where'
      '  CONTRATO = :OLD_CONTRATO')
    Left = 429
    Top = 55
  end
  object C_Contratos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contratos'
    BeforeOpen = C_ContratosBeforeOpen
    OnNewRecord = C_ContratosNewRecord
    Left = 429
    Top = 103
    object C_ContratosCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATOSFAV.CONTRATO'
      Required = True
    end
    object C_ContratosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONTRATOSFAV.DESCRICAO'
      Size = 50
    end
    object C_ContratosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'CONTRATOSFAV.FAVORECIDO'
    end
    object C_ContratosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'CONTRATOSFAV.ITEM'
      OnChange = C_ContratosITEMChange
    end
    object C_ContratosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'CONTRATOSFAV.PRECO'
      Precision = 18
      Size = 2
    end
    object C_ContratosPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Origin = 'CONTRATOSFAV.PERIODICIDADE'
      OnChange = C_ContratosPERIODICIDADEChange
      Size = 1
    end
    object C_ContratosMETODOPGTO: TStringField
      FieldName = 'METODOPGTO'
      Origin = 'CONTRATOSFAV.METODOPGTO'
      Size = 1
    end
    object C_ContratosFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
      Origin = 'CONTRATOSFAV.FUNCPAYITEM'
    end
    object C_ContratosGRUPOCOBRANCA: TIntegerField
      FieldName = 'GRUPOCOBRANCA'
      Origin = 'CONTRATOSFAV.GRUPOCOBRANCA'
    end
    object C_ContratosDIACOBRANCA: TStringField
      FieldName = 'DIACOBRANCA'
      Origin = 'CONTRATOSFAV.DIACOBRANCA'
      Size = 2
    end
    object C_ContratosNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Origin = 'FAVORECIDOS.NOMEFUNCIONARIO'
      Size = 50
    end
    object C_ContratoslkItem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkItem'
      LookupDataSet = C_Itens
      LookupKeyFields = 'ITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ITEM'
      Size = 25
      Lookup = True
    end
    object C_ContratosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'CONTRATOSFAV.FUNCIONARIO'
      OnChange = C_ContratosFUNCIONARIOChange
    end
    object C_ContratosPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'CONTRATOSFAV.PAYROLLITEM'
      OnChange = C_ContratosPAYROLLITEMChange
    end
    object C_ContratoslkPayrollItem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPayrollItem'
      LookupDataSet = C_PayrollItems
      LookupKeyFields = 'PAYROLLITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAYROLLITEM'
      Size = 50
      Lookup = True
    end
    object C_ContratosVALORFUNC: TBCDField
      FieldName = 'VALORFUNC'
      Origin = 'CONTRATOSFAV.VALORFUNC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object C_ContratosDS: TDataSource
    DataSet = C_Contratos
    Left = 429
    Top = 151
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 265
    Top = 151
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select i.Item, i.Codigo, i.Descricao, i.HasChildren, pp.Preco'
      'FROM ITENS i'
      
        'Left join ProdutosPreco pp on pp.item = i.item and pp.tabelaprec' +
        'o = 0'
      'WHERE i.TIPOITEM = 3 and i.DESATIVADO = '#39'N'#39
      'order by i.Descricao')
    Left = 265
    Top = 8
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 265
    Top = 55
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 265
    Top = 103
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ItensHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Origin = 'ITENS.HASCHILDREN'
      Size = 1
    end
    object C_ItensPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 508
    Top = 493
  end
  object Q_Qualidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From Qualidades')
    Left = 86
    Top = 341
  end
  object P_Qualidades: TDataSetProvider
    DataSet = Q_Qualidades
    Constraints = True
    Left = 106
    Top = 389
  end
  object C_Qualidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Qualidades'
    Left = 106
    Top = 437
    object C_QualidadesQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
      Origin = 'QUALIDADES.QUALIDADE'
      Required = True
    end
    object C_QualidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'QUALIDADES.DESCRICAO'
      Size = 30
    end
  end
  object Q_Zonas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From Zonas')
    Left = 180
    Top = 352
  end
  object P_Zonas: TDataSetProvider
    DataSet = Q_Zonas
    Constraints = True
    Left = 188
    Top = 446
  end
  object C_Zonas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Zonas'
    Left = 188
    Top = 494
    object C_ZonasZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONAS.ZONA'
      Required = True
    end
    object C_ZonasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ZONAS.DESCRICAO'
      Size = 30
    end
  end
  object Q_GrauRelac: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From GrauRelacionamentos')
    Left = 265
    Top = 342
  end
  object P_GrauRelac: TDataSetProvider
    DataSet = Q_GrauRelac
    Constraints = True
    Left = 265
    Top = 390
  end
  object C_GrauRelac: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GrauRelac'
    Left = 265
    Top = 438
    object C_GrauRelacGRAU: TIntegerField
      FieldName = 'GRAU'
      Origin = 'GRAURELACIONAMENTOS.GRAU'
      Required = True
    end
    object C_GrauRelacDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'GRAURELACIONAMENTOS.DESCRICAO'
      Size = 30
    end
  end
  object Q_GruposCliente: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From GruposCliente')
    Left = 346
    Top = 342
  end
  object P_GruposCliente: TDataSetProvider
    DataSet = Q_GruposCliente
    Constraints = True
    Left = 346
    Top = 390
  end
  object C_GruposCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GruposCliente'
    Left = 346
    Top = 438
    object C_GruposClienteGRUPOCLIENTE: TIntegerField
      FieldName = 'GRUPOCLIENTE'
      Origin = 'GRUPOSCLIENTE.GRUPOCLIENTE'
      Required = True
    end
    object C_GruposClienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'GRUPOSCLIENTE.DESCRICAO'
      Size = 30
    end
  end
  object Q_Clientes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from clientes'
      'Where Favorecido = :FAVORECIDO')
    UpdateObject = U_Clientes
    Left = 346
    Top = 10
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Clientes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from clientes '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update clientes'
      'set'
      '  NOME_AVAL = :NOME_AVAL,'
      '  SSN_AVAL = :SSN_AVAL,'
      '  CARTMOTOR_AVAL = :CARTMOTOR_AVAL,'
      '  FONE1_AVAL = :FONE1_AVAL,'
      '  FONE2_AVAL = :FONE2_AVAL,'
      '  ENDERECO_AVAL = :ENDERECO_AVAL,'
      '  CIDADE_AVAL = :CIDADE_AVAL,'
      '  UF_AVAL = :UF_AVAL,'
      '  CEP_AVAL = :CEP_AVAL,'
      '  CAIXAPOSTAL_AVAL = :CAIXAPOSTAL_AVAL,'
      '  IMOVEL_AVAL = :IMOVEL_AVAL,'
      '  IMOVEL = :IMOVEL,'
      '  NOMEEMPREG = :NOMEEMPREG,'
      '  NOMEEMPREG_AVAL = :NOMEEMPREG_AVAL,'
      '  ENDERECOEMPREG = :ENDERECOEMPREG,'
      '  ENDERECOEMPREG_AVAL = :ENDERECOEMPREG_AVAL,'
      '  CIDADEEMPREG = :CIDADEEMPREG,'
      '  CIDADEEMPREG_AVAL = :CIDADEEMPREG_AVAL,'
      '  UFEMPREG = :UFEMPREG,'
      '  UFEMPREG_AVAL = :UFEMPREG_AVAL,'
      '  FONEEMPREG = :FONEEMPREG,'
      '  FONEEMPREG_AVAL = :FONEEMPREG_AVAL,'
      '  CARGOEMPREG = :CARGOEMPREG,'
      '  CARGOEMPREG_AVAL = :CARGOEMPREG_AVAL,'
      '  SUPERVEMPREG = :SUPERVEMPREG,'
      '  SUPERVEMPREG_AVAL = :SUPERVEMPREG_AVAL,'
      '  SOCIOEMPREG = :SOCIOEMPREG,'
      '  SOCIOEMPREG_AVAL = :SOCIOEMPREG_AVAL,'
      '  ANOSTRABEMPREG = :ANOSTRABEMPREG,'
      '  ANOSTRABEMPREG_AVAL = :ANOSTRABEMPREG_AVAL,'
      '  SALARIOEMPREG = :SALARIOEMPREG,'
      '  SALARIOEMPREG_AVAL = :SALARIOEMPREG_AVAL,'
      '  VEICULO = :VEICULO,'
      '  VEICULO_AVAL = :VEICULO_AVAL,'
      '  ESTADOCIVIL = :ESTADOCIVIL,'
      '  ESTADOCIVIL_AVAL = :ESTADOCIVIL_AVAL,'
      '  CONJUGUE_NOME = :CONJUGUE_NOME,'
      '  CONJUGUE_SSN = :CONJUGUE_SSN,'
      '  CONJUGUE_DATANASC = :CONJUGUE_DATANASC,'
      '  QTDEFILHOS = :QTDEFILHOS,'
      '  PAIS = :PAIS,'
      '  NOMEEMPREG2 = :NOMEEMPREG2,'
      '  NOMEEMPREG_AVAL2 = :NOMEEMPREG_AVAL2,'
      '  ENDERECOEMPREG2 = :ENDERECOEMPREG2,'
      '  ENDERECOEMPREG_AVAL2 = :ENDERECOEMPREG_AVAL2,'
      '  CIDADEEMPREG2 = :CIDADEEMPREG2,'
      '  CIDADEEMPREG_AVAL2 = :CIDADEEMPREG_AVAL2,'
      '  UFEMPREG2 = :UFEMPREG2,'
      '  UFEMPREG_AVAL2 = :UFEMPREG_AVAL2,'
      '  FONEEMPREG2 = :FONEEMPREG2,'
      '  FONEEMPREG_AVAL2 = :FONEEMPREG_AVAL2,'
      '  CARGOEMPREG2 = :CARGOEMPREG2,'
      '  CARGOEMPREG_AVAL2 = :CARGOEMPREG_AVAL2,'
      '  SUPERVEMPREG2 = :SUPERVEMPREG2,'
      '  SUPERVEMPREG_AVAL2 = :SUPERVEMPREG_AVAL2,'
      '  SOCIOEMPREG2 = :SOCIOEMPREG2,'
      '  SOCIOEMPREG_AVAL2 = :SOCIOEMPREG_AVAL2,'
      '  ANOSTRABEMPREG2 = :ANOSTRABEMPREG2,'
      '  ANOSTRABEMPREG_AVAL2 = :ANOSTRABEMPREG_AVAL2,'
      '  SALARIOEMPREG2 = :SALARIOEMPREG2,'
      '  SALARIOEMPREG_AVAL2 = :SALARIOEMPREG_AVAL2,'
      '  BANCOFINANC = :BANCOFINANC,'
      '  BANCOFINANC_AVAL = :BANCOFINANC_AVAL,'
      '  BANCOENDERFINANC = :BANCOENDERFINANC,'
      '  BANCOENDERFINANC_AVAL = :BANCOENDERFINANC_AVAL,'
      '  BANCOCIDADEFINANC = :BANCOCIDADEFINANC,'
      '  BANCOCIDADEFINANC_AVAL = :BANCOCIDADEFINANC_AVAL,'
      '  BANCOUFFINANC = :BANCOUFFINANC,'
      '  BANCOUFFINANC_AVAL = :BANCOUFFINANC_AVAL,'
      '  BANCOCEPFINANC = :BANCOCEPFINANC,'
      '  BANCOCEPFINANC_AVAL = :BANCOCEPFINANC_AVAL,'
      '  BANCONUMEROCONTA = :BANCONUMEROCONTA,'
      '  BANCONUMEROCONTA_AVAL = :BANCONUMEROCONTA_AVAL,'
      '  BANCOSALDO = :BANCOSALDO,'
      '  BANCOSALDO_AVAL = :BANCOSALDO_AVAL,'
      '  BANCOFINANC2 = :BANCOFINANC2,'
      '  BANCOFINANC_AVAL2 = :BANCOFINANC_AVAL2,'
      '  BANCOENDERFINANC2 = :BANCOENDERFINANC2,'
      '  BANCOENDERFINANC_AVAL2 = :BANCOENDERFINANC_AVAL2,'
      '  BANCOCIDADEFINANC2 = :BANCOCIDADEFINANC2,'
      '  BANCOCIDADEFINANC_AVAL2 = :BANCOCIDADEFINANC_AVAL2,'
      '  BANCOUFFINANC2 = :BANCOUFFINANC2,'
      '  BANCOUFFINANC_AVAL2 = :BANCOUFFINANC_AVAL2,'
      '  BANCOCEPFINANC2 = :BANCOCEPFINANC2,'
      '  BANCOCEPFINANC_AVAL2 = :BANCOCEPFINANC_AVAL2,'
      '  BANCONUMEROCONTA2 = :BANCONUMEROCONTA2,'
      '  BANCONUMEROCONTA_AVAL2 = :BANCONUMEROCONTA_AVAL2,'
      '  BANCOSALDO2 = :BANCOSALDO2,'
      '  BANCOSALDO_AVAL2 = :BANCOSALDO_AVAL2,'
      '  CARTAOVISA = :CARTAOVISA,'
      '  CARTAOVISA_AVAL = :CARTAOVISA_AVAL,'
      '  CARTAOMASTER = :CARTAOMASTER,'
      '  CARTAOMASTER_AVAL = :CARTAOMASTER_AVAL,'
      '  CARTAOAMEX = :CARTAOAMEX,'
      '  CARTAOAMEX_AVAL = :CARTAOAMEX_AVAL,'
      '  CARTAODISC = :CARTAODISC,'
      '  CARTAODISC_AVAL = :CARTAODISC_AVAL,'
      '  CARTAOOUTRO = :CARTAOOUTRO,'
      '  CARTAOOUTRO_AVAL = :CARTAOOUTRO_AVAL,'
      '  REFNOME = :REFNOME,'
      '  REFNOME_AVAL = :REFNOME_AVAL,'
      '  REFFONE = :REFFONE,'
      '  REFFONE_AVAL = :REFFONE_AVAL,'
      '  REFNOME2 = :REFNOME2,'
      '  REFNOME_AVAL2 = :REFNOME_AVAL2,'
      '  REFFONE2 = :REFFONE2,'
      '  REFFONE_AVAL2 = :REFFONE_AVAL2,'
      '  REFNOME3 = :REFNOME3,'
      '  REFNOME_AVAL3 = :REFNOME_AVAL3,'
      '  REFFONE3 = :REFFONE3,'
      '  REFFONE_AVAL3 = :REFFONE_AVAL3,'
      '  CARTMOTORUF = :CARTMOTORUF,'
      '  CARTMOTORUF_AVAL = :CARTMOTORUF_AVAL,'
      '  CEPEMPREG = :CEPEMPREG,'
      '  CEPEMPREG_AVAL = :CEPEMPREG_AVAL,'
      '  CEPEMPREG2 = :CEPEMPREG2,'
      '  CEPEMPREG_AVAL2 = :CEPEMPREG_AVAL2,'
      '  DATANASC_AVAL = :DATANASC_AVAL,'
      '  CONJUGUE_NOME_AVAL = :CONJUGUE_NOME_AVAL,'
      '  CONJUGUE_DATANASC_AVAL = :CONJUGUE_DATANASC_AVAL,'
      '  CONJUGUE_SSN_AVAL = :CONJUGUE_SSN_AVAL,'
      '  PAIS_AVAL = :PAIS_AVAL,'
      '  PAI = :PAI,'
      '  MAE = :MAE'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into clientes'
      '  (FAVORECIDO, NOME_AVAL, SSN_AVAL, CARTMOTOR_AVAL, FONE1_AVAL, '
      '   FONE2_AVAL, ENDERECO_AVAL, CIDADE_AVAL, UF_AVAL, CEP_AVAL, '
      'CAIXAPOSTAL_AVAL, '
      '   IMOVEL_AVAL, IMOVEL, NOMEEMPREG, NOMEEMPREG_AVAL, '
      'ENDERECOEMPREG, ENDERECOEMPREG_AVAL, '
      '   CIDADEEMPREG, CIDADEEMPREG_AVAL, UFEMPREG, UFEMPREG_AVAL, '
      'FONEEMPREG, '
      '   FONEEMPREG_AVAL, CARGOEMPREG, CARGOEMPREG_AVAL, '
      'SUPERVEMPREG, SUPERVEMPREG_AVAL, '
      '   SOCIOEMPREG, SOCIOEMPREG_AVAL, ANOSTRABEMPREG, '
      'ANOSTRABEMPREG_AVAL, '
      '   SALARIOEMPREG, SALARIOEMPREG_AVAL, VEICULO, VEICULO_AVAL, '
      'ESTADOCIVIL, '
      '   ESTADOCIVIL_AVAL, CONJUGUE_NOME, CONJUGUE_SSN, '
      'CONJUGUE_DATANASC, QTDEFILHOS, '
      '   PAIS, NOMEEMPREG2, NOMEEMPREG_AVAL2, ENDERECOEMPREG2, '
      'ENDERECOEMPREG_AVAL2, '
      '   CIDADEEMPREG2, CIDADEEMPREG_AVAL2, UFEMPREG2, '
      'UFEMPREG_AVAL2, FONEEMPREG2, '
      '   FONEEMPREG_AVAL2, CARGOEMPREG2, CARGOEMPREG_AVAL2, '
      'SUPERVEMPREG2, SUPERVEMPREG_AVAL2, '
      '   SOCIOEMPREG2, SOCIOEMPREG_AVAL2, ANOSTRABEMPREG2, '
      'ANOSTRABEMPREG_AVAL2, '
      '   SALARIOEMPREG2, SALARIOEMPREG_AVAL2, BANCOFINANC, '
      'BANCOFINANC_AVAL, '
      '   BANCOENDERFINANC, BANCOENDERFINANC_AVAL, BANCOCIDADEFINANC, '
      'BANCOCIDADEFINANC_AVAL, '
      '   BANCOUFFINANC, BANCOUFFINANC_AVAL, BANCOCEPFINANC, '
      'BANCOCEPFINANC_AVAL, '
      '   BANCONUMEROCONTA, BANCONUMEROCONTA_AVAL, BANCOSALDO, '
      'BANCOSALDO_AVAL, '
      '   BANCOFINANC2, BANCOFINANC_AVAL2, BANCOENDERFINANC2, '
      'BANCOENDERFINANC_AVAL2, '
      '   BANCOCIDADEFINANC2, BANCOCIDADEFINANC_AVAL2, BANCOUFFINANC2, '
      'BANCOUFFINANC_AVAL2, '
      '   BANCOCEPFINANC2, BANCOCEPFINANC_AVAL2, BANCONUMEROCONTA2, '
      'BANCONUMEROCONTA_AVAL2, '
      '   BANCOSALDO2, BANCOSALDO_AVAL2, CARTAOVISA, CARTAOVISA_AVAL, '
      'CARTAOMASTER, '
      '   CARTAOMASTER_AVAL, CARTAOAMEX, CARTAOAMEX_AVAL, CARTAODISC, '
      'CARTAODISC_AVAL, '
      '   CARTAOOUTRO, CARTAOOUTRO_AVAL, REFNOME, REFNOME_AVAL, '
      'REFFONE, REFFONE_AVAL, '
      '   REFNOME2, REFNOME_AVAL2, REFFONE2, REFFONE_AVAL2, REFNOME3, '
      'REFNOME_AVAL3, '
      '   REFFONE3, REFFONE_AVAL3, CARTMOTORUF, CARTMOTORUF_AVAL, '
      'CEPEMPREG, CEPEMPREG_AVAL, '
      '   CEPEMPREG2, CEPEMPREG_AVAL2, DATANASC_AVAL, '
      'CONJUGUE_NOME_AVAL, CONJUGUE_DATANASC_AVAL, '
      '   CONJUGUE_SSN_AVAL, PAIS_AVAL, PAI, MAE)'
      'values'
      '  (:FAVORECIDO, :NOME_AVAL, :SSN_AVAL, :CARTMOTOR_AVAL,  '
      ':FONE1_AVAL, '
      
        '   :FONE2_AVAL, :ENDERECO_AVAL, :CIDADE_AVAL, :UF_AVAL, :CEP_AVA' +
        'L, '
      ':CAIXAPOSTAL_AVAL, '
      '   :IMOVEL_AVAL, :IMOVEL, :NOMEEMPREG, :NOMEEMPREG_AVAL, '
      ':ENDERECOEMPREG, '
      '   :ENDERECOEMPREG_AVAL, :CIDADEEMPREG, :CIDADEEMPREG_AVAL, '
      ':UFEMPREG, '
      '   :UFEMPREG_AVAL, :FONEEMPREG, :FONEEMPREG_AVAL, :CARGOEMPREG, '
      ':CARGOEMPREG_AVAL, '
      '   :SUPERVEMPREG, :SUPERVEMPREG_AVAL, :SOCIOEMPREG, '
      ':SOCIOEMPREG_AVAL, '
      '   :ANOSTRABEMPREG, :ANOSTRABEMPREG_AVAL, :SALARIOEMPREG, '
      ':SALARIOEMPREG_AVAL, '
      '   :VEICULO, :VEICULO_AVAL, :ESTADOCIVIL, :ESTADOCIVIL_AVAL, '
      ':CONJUGUE_NOME, '
      '   :CONJUGUE_SSN, :CONJUGUE_DATANASC, :QTDEFILHOS, :PAIS, '
      ':NOMEEMPREG2, '
      '   :NOMEEMPREG_AVAL2, :ENDERECOEMPREG2, :ENDERECOEMPREG_AVAL2, '
      ':CIDADEEMPREG2, '
      '   :CIDADEEMPREG_AVAL2, :UFEMPREG2, :UFEMPREG_AVAL2, '
      ':FONEEMPREG2, :FONEEMPREG_AVAL2, '
      '   :CARGOEMPREG2, :CARGOEMPREG_AVAL2, :SUPERVEMPREG2, '
      ':SUPERVEMPREG_AVAL2, '
      '   :SOCIOEMPREG2, :SOCIOEMPREG_AVAL2, :ANOSTRABEMPREG2, '
      ':ANOSTRABEMPREG_AVAL2, '
      '   :SALARIOEMPREG2, :SALARIOEMPREG_AVAL2, :BANCOFINANC, '
      ':BANCOFINANC_AVAL, '
      
        '   :BANCOENDERFINANC, :BANCOENDERFINANC_AVAL, :BANCOCIDADEFINANC' +
        ', '
      ':BANCOCIDADEFINANC_AVAL, '
      '   :BANCOUFFINANC, :BANCOUFFINANC_AVAL, :BANCOCEPFINANC, '
      ':BANCOCEPFINANC_AVAL, '
      '   :BANCONUMEROCONTA, :BANCONUMEROCONTA_AVAL, :BANCOSALDO, '
      ':BANCOSALDO_AVAL, '
      '   :BANCOFINANC2, :BANCOFINANC_AVAL2, :BANCOENDERFINANC2, '
      ':BANCOENDERFINANC_AVAL2, '
      
        '   :BANCOCIDADEFINANC2, :BANCOCIDADEFINANC_AVAL2, :BANCOUFFINANC' +
        '2, '
      ':BANCOUFFINANC_AVAL2, '
      '   :BANCOCEPFINANC2, :BANCOCEPFINANC_AVAL2, :BANCONUMEROCONTA2, '
      ':BANCONUMEROCONTA_AVAL2, '
      
        '   :BANCOSALDO2, :BANCOSALDO_AVAL2, :CARTAOVISA, :CARTAOVISA_AVA' +
        'L, '
      ':CARTAOMASTER, '
      '   :CARTAOMASTER_AVAL, :CARTAOAMEX, :CARTAOAMEX_AVAL, '
      ':CARTAODISC, :CARTAODISC_AVAL, '
      '   :CARTAOOUTRO, :CARTAOOUTRO_AVAL, :REFNOME, :REFNOME_AVAL, '
      ':REFFONE, '
      '   :REFFONE_AVAL, :REFNOME2, :REFNOME_AVAL2, :REFFONE2, '
      ':REFFONE_AVAL2, '
      '   :REFNOME3, :REFNOME_AVAL3, :REFFONE3, :REFFONE_AVAL3, '
      ':CARTMOTORUF, '
      '   :CARTMOTORUF_AVAL, :CEPEMPREG, :CEPEMPREG_AVAL, :CEPEMPREG2, '
      ':CEPEMPREG_AVAL2, '
      
        '   :DATANASC_AVAL, :CONJUGUE_NOME_AVAL, :CONJUGUE_DATANASC_AVAL,' +
        ' '
      ':CONJUGUE_SSN_AVAL, '
      '   :PAIS_AVAL, :PAI, :MAE)')
    DeleteSQL.Strings = (
      'delete from clientes'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 346
    Top = 55
  end
  object C_Clientes: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Clientes
    Params = <>
    BeforeOpen = C_ClientesBeforeOpen
    OnNewRecord = C_ClientesNewRecord
    Left = 346
    Top = 103
    object C_ClientesFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'CLIENTES.FAVORECIDO'
      Required = True
    end
    object C_ClientesNOME_AVAL: TStringField
      FieldName = 'NOME_AVAL'
      Origin = 'CLIENTES.NOME_AVAL'
      Size = 50
    end
    object C_ClientesSSN_AVAL: TStringField
      FieldName = 'SSN_AVAL'
      Origin = 'CLIENTES.SSN_AVAL'
      Size = 11
    end
    object C_ClientesCARTMOTOR_AVAL: TStringField
      FieldName = 'CARTMOTOR_AVAL'
      Origin = 'CLIENTES.CARTMOTOR_AVAL'
      Size = 25
    end
    object C_ClientesFONE1_AVAL: TStringField
      FieldName = 'FONE1_AVAL'
      Origin = 'CLIENTES.FONE1_AVAL'
    end
    object C_ClientesFONE2_AVAL: TStringField
      FieldName = 'FONE2_AVAL'
      Origin = 'CLIENTES.FONE2_AVAL'
    end
    object C_ClientesENDERECO_AVAL: TStringField
      FieldName = 'ENDERECO_AVAL'
      Origin = 'CLIENTES.ENDERECO_AVAL'
      Size = 50
    end
    object C_ClientesCIDADE_AVAL: TStringField
      FieldName = 'CIDADE_AVAL'
      Origin = 'CLIENTES.CIDADE_AVAL'
      Size = 30
    end
    object C_ClientesUF_AVAL: TStringField
      FieldName = 'UF_AVAL'
      Origin = 'CLIENTES.UF_AVAL'
      Size = 2
    end
    object C_ClientesCEP_AVAL: TStringField
      FieldName = 'CEP_AVAL'
      Origin = 'CLIENTES.CEP_AVAL'
      Size = 10
    end
    object C_ClientesCAIXAPOSTAL_AVAL: TStringField
      FieldName = 'CAIXAPOSTAL_AVAL'
      Origin = 'CLIENTES.CAIXAPOSTAL_AVAL'
      Size = 25
    end
    object C_ClientesIMOVEL_AVAL: TStringField
      FieldName = 'IMOVEL_AVAL'
      Origin = 'CLIENTES.IMOVEL_AVAL'
      Size = 1
    end
    object C_ClientesIMOVEL: TStringField
      FieldName = 'IMOVEL'
      Origin = 'CLIENTES.IMOVEL'
      Size = 1
    end
    object C_ClientesNOMEEMPREG: TStringField
      FieldName = 'NOMEEMPREG'
      Origin = 'CLIENTES.NOMEEMPREG'
      Size = 50
    end
    object C_ClientesNOMEEMPREG_AVAL: TStringField
      FieldName = 'NOMEEMPREG_AVAL'
      Origin = 'CLIENTES.NOMEEMPREG_AVAL'
      Size = 50
    end
    object C_ClientesENDERECOEMPREG: TStringField
      FieldName = 'ENDERECOEMPREG'
      Origin = 'CLIENTES.ENDERECOEMPREG'
      Size = 50
    end
    object C_ClientesENDERECOEMPREG_AVAL: TStringField
      FieldName = 'ENDERECOEMPREG_AVAL'
      Origin = 'CLIENTES.ENDERECOEMPREG_AVAL'
      Size = 50
    end
    object C_ClientesCIDADEEMPREG: TStringField
      FieldName = 'CIDADEEMPREG'
      Origin = 'CLIENTES.CIDADEEMPREG'
      Size = 30
    end
    object C_ClientesCIDADEEMPREG_AVAL: TStringField
      FieldName = 'CIDADEEMPREG_AVAL'
      Origin = 'CLIENTES.CIDADEEMPREG_AVAL'
      Size = 30
    end
    object C_ClientesUFEMPREG: TStringField
      FieldName = 'UFEMPREG'
      Origin = 'CLIENTES.UFEMPREG'
      Size = 2
    end
    object C_ClientesUFEMPREG_AVAL: TStringField
      FieldName = 'UFEMPREG_AVAL'
      Origin = 'CLIENTES.UFEMPREG_AVAL'
      Size = 2
    end
    object C_ClientesFONEEMPREG: TStringField
      FieldName = 'FONEEMPREG'
      Origin = 'CLIENTES.FONEEMPREG'
    end
    object C_ClientesFONEEMPREG_AVAL: TStringField
      FieldName = 'FONEEMPREG_AVAL'
      Origin = 'CLIENTES.FONEEMPREG_AVAL'
    end
    object C_ClientesCARGOEMPREG: TStringField
      FieldName = 'CARGOEMPREG'
      Origin = 'CLIENTES.CARGOEMPREG'
      Size = 30
    end
    object C_ClientesCARGOEMPREG_AVAL: TStringField
      FieldName = 'CARGOEMPREG_AVAL'
      Origin = 'CLIENTES.CARGOEMPREG_AVAL'
      Size = 30
    end
    object C_ClientesSUPERVEMPREG: TStringField
      FieldName = 'SUPERVEMPREG'
      Origin = 'CLIENTES.SUPERVEMPREG'
      Size = 30
    end
    object C_ClientesSUPERVEMPREG_AVAL: TStringField
      FieldName = 'SUPERVEMPREG_AVAL'
      Origin = 'CLIENTES.SUPERVEMPREG_AVAL'
      Size = 30
    end
    object C_ClientesSOCIOEMPREG: TStringField
      FieldName = 'SOCIOEMPREG'
      Origin = 'CLIENTES.SOCIOEMPREG'
      Size = 1
    end
    object C_ClientesSOCIOEMPREG_AVAL: TStringField
      FieldName = 'SOCIOEMPREG_AVAL'
      Origin = 'CLIENTES.SOCIOEMPREG_AVAL'
      Size = 1
    end
    object C_ClientesANOSTRABEMPREG: TIntegerField
      FieldName = 'ANOSTRABEMPREG'
      Origin = 'CLIENTES.ANOSTRABEMPREG'
    end
    object C_ClientesANOSTRABEMPREG_AVAL: TIntegerField
      FieldName = 'ANOSTRABEMPREG_AVAL'
      Origin = 'CLIENTES.ANOSTRABEMPREG_AVAL'
    end
    object C_ClientesSALARIOEMPREG: TBCDField
      FieldName = 'SALARIOEMPREG'
      Origin = 'CLIENTES.SALARIOEMPREG'
      Precision = 18
      Size = 2
    end
    object C_ClientesSALARIOEMPREG_AVAL: TBCDField
      FieldName = 'SALARIOEMPREG_AVAL'
      Origin = 'CLIENTES.SALARIOEMPREG_AVAL'
      Precision = 18
      Size = 2
    end
    object C_ClientesVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'CLIENTES.VEICULO'
      Size = 1
    end
    object C_ClientesVEICULO_AVAL: TStringField
      FieldName = 'VEICULO_AVAL'
      Origin = 'CLIENTES.VEICULO_AVAL'
      Size = 1
    end
    object C_ClientesCONJUGUE_NOME: TStringField
      FieldName = 'CONJUGUE_NOME'
      Origin = 'CLIENTES.CONJUGUE_NOME'
      Size = 50
    end
    object C_ClientesCONJUGUE_SSN: TStringField
      FieldName = 'CONJUGUE_SSN'
      Origin = 'CLIENTES.CONJUGUE_SSN'
      Size = 11
    end
    object C_ClientesCONJUGUE_DATANASC: TDateField
      FieldName = 'CONJUGUE_DATANASC'
      Origin = 'CLIENTES.CONJUGUE_DATANASC'
    end
    object C_ClientesQTDEFILHOS: TIntegerField
      FieldName = 'QTDEFILHOS'
      Origin = 'CLIENTES.QTDEFILHOS'
    end
    object C_ClientesPAIS: TIntegerField
      FieldName = 'PAIS'
      Origin = 'CLIENTES.PAIS'
    end
    object C_ClientesNOMEEMPREG2: TStringField
      FieldName = 'NOMEEMPREG2'
      Origin = 'CLIENTES.NOMEEMPREG2'
      Size = 50
    end
    object C_ClientesNOMEEMPREG_AVAL2: TStringField
      FieldName = 'NOMEEMPREG_AVAL2'
      Origin = 'CLIENTES.NOMEEMPREG_AVAL2'
      Size = 50
    end
    object C_ClientesENDERECOEMPREG2: TStringField
      FieldName = 'ENDERECOEMPREG2'
      Origin = 'CLIENTES.ENDERECOEMPREG2'
      Size = 50
    end
    object C_ClientesENDERECOEMPREG_AVAL2: TStringField
      FieldName = 'ENDERECOEMPREG_AVAL2'
      Origin = 'CLIENTES.ENDERECOEMPREG_AVAL2'
      Size = 50
    end
    object C_ClientesCIDADEEMPREG2: TStringField
      FieldName = 'CIDADEEMPREG2'
      Origin = 'CLIENTES.CIDADEEMPREG2'
      Size = 30
    end
    object C_ClientesCIDADEEMPREG_AVAL2: TStringField
      FieldName = 'CIDADEEMPREG_AVAL2'
      Origin = 'CLIENTES.CIDADEEMPREG_AVAL2'
      Size = 30
    end
    object C_ClientesUFEMPREG2: TStringField
      FieldName = 'UFEMPREG2'
      Origin = 'CLIENTES.UFEMPREG2'
      Size = 2
    end
    object C_ClientesUFEMPREG_AVAL2: TStringField
      FieldName = 'UFEMPREG_AVAL2'
      Origin = 'CLIENTES.UFEMPREG_AVAL2'
      Size = 2
    end
    object C_ClientesFONEEMPREG2: TStringField
      FieldName = 'FONEEMPREG2'
      Origin = 'CLIENTES.FONEEMPREG2'
    end
    object C_ClientesFONEEMPREG_AVAL2: TStringField
      FieldName = 'FONEEMPREG_AVAL2'
      Origin = 'CLIENTES.FONEEMPREG_AVAL2'
    end
    object C_ClientesCARGOEMPREG2: TStringField
      FieldName = 'CARGOEMPREG2'
      Origin = 'CLIENTES.CARGOEMPREG2'
      Size = 30
    end
    object C_ClientesCARGOEMPREG_AVAL2: TStringField
      FieldName = 'CARGOEMPREG_AVAL2'
      Origin = 'CLIENTES.CARGOEMPREG_AVAL2'
      Size = 30
    end
    object C_ClientesSUPERVEMPREG2: TStringField
      FieldName = 'SUPERVEMPREG2'
      Origin = 'CLIENTES.SUPERVEMPREG2'
      Size = 30
    end
    object C_ClientesSUPERVEMPREG_AVAL2: TStringField
      FieldName = 'SUPERVEMPREG_AVAL2'
      Origin = 'CLIENTES.SUPERVEMPREG_AVAL2'
      Size = 30
    end
    object C_ClientesSOCIOEMPREG2: TStringField
      FieldName = 'SOCIOEMPREG2'
      Origin = 'CLIENTES.SOCIOEMPREG2'
      Size = 1
    end
    object C_ClientesSOCIOEMPREG_AVAL2: TStringField
      FieldName = 'SOCIOEMPREG_AVAL2'
      Origin = 'CLIENTES.SOCIOEMPREG_AVAL2'
      Size = 1
    end
    object C_ClientesANOSTRABEMPREG2: TIntegerField
      FieldName = 'ANOSTRABEMPREG2'
      Origin = 'CLIENTES.ANOSTRABEMPREG2'
    end
    object C_ClientesANOSTRABEMPREG_AVAL2: TIntegerField
      FieldName = 'ANOSTRABEMPREG_AVAL2'
      Origin = 'CLIENTES.ANOSTRABEMPREG_AVAL2'
    end
    object C_ClientesSALARIOEMPREG2: TBCDField
      FieldName = 'SALARIOEMPREG2'
      Origin = 'CLIENTES.SALARIOEMPREG2'
      Precision = 18
      Size = 2
    end
    object C_ClientesSALARIOEMPREG_AVAL2: TBCDField
      FieldName = 'SALARIOEMPREG_AVAL2'
      Origin = 'CLIENTES.SALARIOEMPREG_AVAL2'
      Precision = 18
      Size = 2
    end
    object C_ClientesBANCOFINANC: TStringField
      FieldName = 'BANCOFINANC'
      Origin = 'CLIENTES.BANCOFINANC'
      Size = 30
    end
    object C_ClientesBANCOFINANC_AVAL: TStringField
      FieldName = 'BANCOFINANC_AVAL'
      Origin = 'CLIENTES.BANCOFINANC_AVAL'
      Size = 30
    end
    object C_ClientesBANCOENDERFINANC: TStringField
      FieldName = 'BANCOENDERFINANC'
      Origin = 'CLIENTES.BANCOENDERFINANC'
      Size = 50
    end
    object C_ClientesBANCOENDERFINANC_AVAL: TStringField
      FieldName = 'BANCOENDERFINANC_AVAL'
      Origin = 'CLIENTES.BANCOENDERFINANC_AVAL'
      Size = 50
    end
    object C_ClientesBANCOCIDADEFINANC: TStringField
      FieldName = 'BANCOCIDADEFINANC'
      Origin = 'CLIENTES.BANCOCIDADEFINANC'
      Size = 30
    end
    object C_ClientesBANCOCIDADEFINANC_AVAL: TStringField
      FieldName = 'BANCOCIDADEFINANC_AVAL'
      Origin = 'CLIENTES.BANCOCIDADEFINANC_AVAL'
      Size = 30
    end
    object C_ClientesBANCOUFFINANC: TStringField
      FieldName = 'BANCOUFFINANC'
      Origin = 'CLIENTES.BANCOUFFINANC'
      Size = 2
    end
    object C_ClientesBANCOUFFINANC_AVAL: TStringField
      FieldName = 'BANCOUFFINANC_AVAL'
      Origin = 'CLIENTES.BANCOUFFINANC_AVAL'
      Size = 2
    end
    object C_ClientesBANCOCEPFINANC: TStringField
      FieldName = 'BANCOCEPFINANC'
      Origin = 'CLIENTES.BANCOCEPFINANC'
      Size = 10
    end
    object C_ClientesBANCOCEPFINANC_AVAL: TStringField
      FieldName = 'BANCOCEPFINANC_AVAL'
      Origin = 'CLIENTES.BANCOCEPFINANC_AVAL'
      Size = 10
    end
    object C_ClientesBANCONUMEROCONTA: TStringField
      FieldName = 'BANCONUMEROCONTA'
      Origin = 'CLIENTES.BANCONUMEROCONTA'
      Size = 30
    end
    object C_ClientesBANCONUMEROCONTA_AVAL: TStringField
      FieldName = 'BANCONUMEROCONTA_AVAL'
      Origin = 'CLIENTES.BANCONUMEROCONTA_AVAL'
      Size = 30
    end
    object C_ClientesBANCOSALDO: TBCDField
      FieldName = 'BANCOSALDO'
      Origin = 'CLIENTES.BANCOSALDO'
      Precision = 18
      Size = 2
    end
    object C_ClientesBANCOSALDO_AVAL: TBCDField
      FieldName = 'BANCOSALDO_AVAL'
      Origin = 'CLIENTES.BANCOSALDO_AVAL'
      Precision = 18
      Size = 2
    end
    object C_ClientesBANCOFINANC2: TStringField
      FieldName = 'BANCOFINANC2'
      Origin = 'CLIENTES.BANCOFINANC2'
      Size = 30
    end
    object C_ClientesBANCOFINANC_AVAL2: TStringField
      FieldName = 'BANCOFINANC_AVAL2'
      Origin = 'CLIENTES.BANCOFINANC_AVAL2'
      Size = 30
    end
    object C_ClientesBANCOENDERFINANC2: TStringField
      FieldName = 'BANCOENDERFINANC2'
      Origin = 'CLIENTES.BANCOENDERFINANC2'
      Size = 50
    end
    object C_ClientesBANCOENDERFINANC_AVAL2: TStringField
      FieldName = 'BANCOENDERFINANC_AVAL2'
      Origin = 'CLIENTES.BANCOENDERFINANC_AVAL2'
      Size = 50
    end
    object C_ClientesBANCOCIDADEFINANC2: TStringField
      FieldName = 'BANCOCIDADEFINANC2'
      Origin = 'CLIENTES.BANCOCIDADEFINANC2'
      Size = 30
    end
    object C_ClientesBANCOCIDADEFINANC_AVAL2: TStringField
      FieldName = 'BANCOCIDADEFINANC_AVAL2'
      Origin = 'CLIENTES.BANCOCIDADEFINANC_AVAL2'
      Size = 30
    end
    object C_ClientesBANCOUFFINANC2: TStringField
      FieldName = 'BANCOUFFINANC2'
      Origin = 'CLIENTES.BANCOUFFINANC2'
      Size = 2
    end
    object C_ClientesBANCOUFFINANC_AVAL2: TStringField
      FieldName = 'BANCOUFFINANC_AVAL2'
      Origin = 'CLIENTES.BANCOUFFINANC_AVAL2'
      Size = 2
    end
    object C_ClientesBANCOCEPFINANC2: TStringField
      FieldName = 'BANCOCEPFINANC2'
      Origin = 'CLIENTES.BANCOCEPFINANC2'
      Size = 10
    end
    object C_ClientesBANCOCEPFINANC_AVAL2: TStringField
      FieldName = 'BANCOCEPFINANC_AVAL2'
      Origin = 'CLIENTES.BANCOCEPFINANC_AVAL2'
      Size = 10
    end
    object C_ClientesBANCONUMEROCONTA2: TStringField
      FieldName = 'BANCONUMEROCONTA2'
      Origin = 'CLIENTES.BANCONUMEROCONTA2'
      Size = 30
    end
    object C_ClientesBANCONUMEROCONTA_AVAL2: TStringField
      FieldName = 'BANCONUMEROCONTA_AVAL2'
      Origin = 'CLIENTES.BANCONUMEROCONTA_AVAL2'
      Size = 30
    end
    object C_ClientesBANCOSALDO2: TBCDField
      FieldName = 'BANCOSALDO2'
      Origin = 'CLIENTES.BANCOSALDO2'
      Precision = 18
      Size = 2
    end
    object C_ClientesBANCOSALDO_AVAL2: TBCDField
      FieldName = 'BANCOSALDO_AVAL2'
      Origin = 'CLIENTES.BANCOSALDO_AVAL2'
      Precision = 18
      Size = 2
    end
    object C_ClientesCARTAOVISA: TStringField
      FieldName = 'CARTAOVISA'
      Origin = 'CLIENTES.CARTAOVISA'
      Size = 1
    end
    object C_ClientesCARTAOVISA_AVAL: TStringField
      FieldName = 'CARTAOVISA_AVAL'
      Origin = 'CLIENTES.CARTAOVISA_AVAL'
      Size = 1
    end
    object C_ClientesCARTAOMASTER: TStringField
      FieldName = 'CARTAOMASTER'
      Origin = 'CLIENTES.CARTAOMASTER'
      Size = 1
    end
    object C_ClientesCARTAOMASTER_AVAL: TStringField
      FieldName = 'CARTAOMASTER_AVAL'
      Origin = 'CLIENTES.CARTAOMASTER_AVAL'
      Size = 1
    end
    object C_ClientesCARTAOAMEX: TStringField
      FieldName = 'CARTAOAMEX'
      Origin = 'CLIENTES.CARTAOAMEX'
      Size = 1
    end
    object C_ClientesCARTAOAMEX_AVAL: TStringField
      FieldName = 'CARTAOAMEX_AVAL'
      Origin = 'CLIENTES.CARTAOAMEX_AVAL'
      Size = 1
    end
    object C_ClientesCARTAODISC: TStringField
      FieldName = 'CARTAODISC'
      Origin = 'CLIENTES.CARTAODISC'
      Size = 1
    end
    object C_ClientesCARTAODISC_AVAL: TStringField
      FieldName = 'CARTAODISC_AVAL'
      Origin = 'CLIENTES.CARTAODISC_AVAL'
      Size = 1
    end
    object C_ClientesCARTAOOUTRO: TStringField
      FieldName = 'CARTAOOUTRO'
      Origin = 'CLIENTES.CARTAOOUTRO'
      Size = 15
    end
    object C_ClientesCARTAOOUTRO_AVAL: TStringField
      FieldName = 'CARTAOOUTRO_AVAL'
      Origin = 'CLIENTES.CARTAOOUTRO_AVAL'
      Size = 15
    end
    object C_ClientesREFNOME: TStringField
      FieldName = 'REFNOME'
      Origin = 'CLIENTES.REFNOME'
      Size = 30
    end
    object C_ClientesREFNOME_AVAL: TStringField
      FieldName = 'REFNOME_AVAL'
      Origin = 'CLIENTES.REFNOME_AVAL'
      Size = 30
    end
    object C_ClientesREFFONE: TStringField
      FieldName = 'REFFONE'
      Origin = 'CLIENTES.REFFONE'
    end
    object C_ClientesREFFONE_AVAL: TStringField
      FieldName = 'REFFONE_AVAL'
      Origin = 'CLIENTES.REFFONE_AVAL'
    end
    object C_ClientesREFNOME2: TStringField
      FieldName = 'REFNOME2'
      Origin = 'CLIENTES.REFNOME2'
      Size = 30
    end
    object C_ClientesREFNOME_AVAL2: TStringField
      FieldName = 'REFNOME_AVAL2'
      Origin = 'CLIENTES.REFNOME_AVAL2'
      Size = 30
    end
    object C_ClientesREFFONE2: TStringField
      FieldName = 'REFFONE2'
      Origin = 'CLIENTES.REFFONE2'
    end
    object C_ClientesREFFONE_AVAL2: TStringField
      FieldName = 'REFFONE_AVAL2'
      Origin = 'CLIENTES.REFFONE_AVAL2'
    end
    object C_ClientesREFNOME3: TStringField
      FieldName = 'REFNOME3'
      Origin = 'CLIENTES.REFNOME3'
      Size = 30
    end
    object C_ClientesREFNOME_AVAL3: TStringField
      FieldName = 'REFNOME_AVAL3'
      Origin = 'CLIENTES.REFNOME_AVAL3'
      Size = 30
    end
    object C_ClientesREFFONE3: TStringField
      FieldName = 'REFFONE3'
      Origin = 'CLIENTES.REFFONE3'
    end
    object C_ClientesREFFONE_AVAL3: TStringField
      FieldName = 'REFFONE_AVAL3'
      Origin = 'CLIENTES.REFFONE_AVAL3'
    end
    object C_ClientesCARTMOTORUF: TStringField
      FieldName = 'CARTMOTORUF'
      Origin = 'CLIENTES.CARTMOTORUF'
      Size = 2
    end
    object C_ClientesCARTMOTORUF_AVAL: TStringField
      FieldName = 'CARTMOTORUF_AVAL'
      Origin = 'CLIENTES.CARTMOTORUF_AVAL'
      Size = 2
    end
    object C_ClientesCEPEMPREG: TStringField
      FieldName = 'CEPEMPREG'
      Origin = 'CLIENTES.CEPEMPREG'
      Size = 10
    end
    object C_ClientesCEPEMPREG_AVAL: TStringField
      FieldName = 'CEPEMPREG_AVAL'
      Origin = 'CLIENTES.CEPEMPREG_AVAL'
      Size = 10
    end
    object C_ClientesCEPEMPREG2: TStringField
      FieldName = 'CEPEMPREG2'
      Origin = 'CLIENTES.CEPEMPREG2'
      Size = 10
    end
    object C_ClientesCEPEMPREG_AVAL2: TStringField
      FieldName = 'CEPEMPREG_AVAL2'
      Origin = 'CLIENTES.CEPEMPREG_AVAL2'
      Size = 10
    end
    object C_ClientesDATANASC_AVAL: TDateField
      FieldName = 'DATANASC_AVAL'
      Origin = 'CLIENTES.DATANASC_AVAL'
    end
    object C_ClientesCONJUGUE_NOME_AVAL: TStringField
      FieldName = 'CONJUGUE_NOME_AVAL'
      Origin = 'CLIENTES.CONJUGUE_NOME_AVAL'
      Size = 50
    end
    object C_ClientesCONJUGUE_DATANASC_AVAL: TDateField
      FieldName = 'CONJUGUE_DATANASC_AVAL'
      Origin = 'CLIENTES.CONJUGUE_DATANASC_AVAL'
    end
    object C_ClientesCONJUGUE_SSN_AVAL: TStringField
      FieldName = 'CONJUGUE_SSN_AVAL'
      Origin = 'CLIENTES.CONJUGUE_SSN_AVAL'
      Size = 11
    end
    object C_ClientesPAIS_AVAL: TIntegerField
      FieldName = 'PAIS_AVAL'
      Origin = 'CLIENTES.PAIS_AVAL'
    end
    object C_ClienteslkPaisAval: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPaisAval'
      LookupDataSet = Q_Paises
      LookupKeyFields = 'PAIS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAIS_AVAL'
      Size = 30
      Lookup = True
    end
    object C_ClientesESTADOCIVIL: TIntegerField
      FieldName = 'ESTADOCIVIL'
      Origin = 'CLIENTES.ESTADOCIVIL'
    end
    object C_ClientesESTADOCIVIL_AVAL: TIntegerField
      FieldName = 'ESTADOCIVIL_AVAL'
      Origin = 'CLIENTES.ESTADOCIVIL_AVAL'
    end
    object C_ClienteslkEstadoCivil: TStringField
      FieldKind = fkLookup
      FieldName = 'lkEstadoCivil'
      LookupDataSet = C_EstadoCivis
      LookupKeyFields = 'ESTADOCIVIL'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ESTADOCIVIL'
      Lookup = True
    end
    object C_ClienteslkEstadoCivilAval: TStringField
      FieldKind = fkLookup
      FieldName = 'lkEstadoCivilAval'
      LookupDataSet = C_EstadoCivis
      LookupKeyFields = 'ESTADOCIVIL'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ESTADOCIVIL_AVAL'
      Lookup = True
    end
    object C_ClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object C_ClientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
  end
  object C_ClientesDS: TDataSource
    DataSet = C_Clientes
    Left = 346
    Top = 151
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 106
    Top = 151
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = Q_SQLTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'set generator GEN_TOP to -1')
    Left = 608
    Top = 391
  end
  object Q_SQLTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DMProjeto.DB_Projeto
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 608
    Top = 439
  end
  object C_ConsultasDS: TDataSource
    DataSet = C_Consultas
    Left = 608
    Top = 343
  end
  object C_Consultas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ConsultasProvider'
    Left = 608
    Top = 295
  end
  object Q_ConsultasProvider: TDataSetProvider
    DataSet = Q_Consultas
    Constraints = True
    Left = 608
    Top = 247
  end
  object Q_Consultas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '')
    Left = 608
    Top = 199
  end
  object Q_ConsultasPre: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From Consultas'
      'Where Categoria=1')
    Left = 514
    Top = 342
  end
  object P_ConsultasPre: TDataSetProvider
    DataSet = Q_ConsultasPre
    Constraints = True
    Left = 514
    Top = 390
  end
  object C_ConsultasPre: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ConsultasPre'
    Left = 514
    Top = 440
    object C_ConsultasPreCONSULTA: TIntegerField
      FieldName = 'CONSULTA'
      Required = True
    end
    object C_ConsultasPreTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_ConsultasPreQUERY: TStringField
      FieldName = 'QUERY'
      Size = 1000
    end
    object C_ConsultasPreCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
  end
  object IBEventos_Clientes: TIBEvents
    AutoRegister = True
    Database = DMProjeto.DB_Projeto
    Events.Strings = (
      'EVENTO_CONTAS'
      'EVENTO_FAVORECIDOS'
      'EVENTO_ITENS'
      'EVENTO_PLANOSPAGAMENTO'
      'EVENTO_TAXS')
    Registered = False
    OnEventAlert = IBEventos_ClientesEventAlert
    Left = 103
    Top = 488
  end
  object C_PaisesDs: TDataSource
    DataSet = C_Paises
    Left = 188
    Top = 542
  end
  object C_PayrollItems: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayrollItems'
    Left = 265
    Top = 486
    object C_PayrollItemsPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'PAYROLLITENS.PAYROLLITEM'
      Required = True
    end
    object C_PayrollItemsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAYROLLITENS.DESCRICAO'
      Size = 30
    end
  end
  object P_PayrollItems: TDataSetProvider
    DataSet = Q_PayrollItems
    Constraints = True
    Left = 343
    Top = 484
  end
  object Q_PayrollItems: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select payrollitem, descricao from payrollitens'
      'where tipopayroll = 1'
      'order by descricao')
    Left = 429
    Top = 490
  end
  object C_ContasBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasBanco'
    Left = 688
    Top = 8
    object C_ContasBancoCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Origin = 'CONTAS.CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasBancoCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
      Required = True
    end
    object C_ContasBancoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasBancoDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasBancoSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContasBancoCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasBancoTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
    object C_ContasBancoSALDOCONCILIACAO: TBCDField
      FieldName = 'SALDOCONCILIACAO'
      Origin = 'CONTAS.SALDOCONCILIACAO'
      Precision = 18
      Size = 2
    end
    object C_ContasBancoDATACONCILIACAO: TDateField
      FieldName = 'DATACONCILIACAO'
      Origin = 'CONTAS.DATACONCILIACAO'
    end
  end
  object P_ContasBanco: TDataSetProvider
    DataSet = Q_ContasBanco
    Constraints = True
    Left = 688
    Top = 112
  end
  object Q_ContasBanco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select c.CodigoReduzido, c.Conta, c.Descricao, t.descricao as De' +
        'scTipo, c.Saldo, c.ContaPai, c.TipoConta, c.SaldoConciliacao, c.' +
        'DataConciliacao'
      
        'From Contas c left join TiposContas t on c.tipoconta = t.tipocon' +
        'ta'
      'Where c.TipoConta = 2 and Desativado = '#39'N'#39
      'Order by c.Descricao')
    Left = 688
    Top = 56
  end
  object C_ContasBancoDS: TDataSource
    DataSet = C_ContasBanco
    Left = 688
    Top = 168
  end
  object Q_EstadoCivis: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From EstadoCivis')
    Left = 694
    Top = 220
  end
  object P_EstadoCivis: TDataSetProvider
    DataSet = Q_EstadoCivis
    Constraints = True
    Left = 694
    Top = 267
  end
  object C_EstadoCivis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_EstadoCivis'
    Left = 694
    Top = 315
    object C_EstadoCivisESTADOCIVIL: TIntegerField
      FieldName = 'ESTADOCIVIL'
      Required = True
    end
    object C_EstadoCivisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object C_Familiar: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'P_Familiar'
    BeforeOpen = C_FamiliarBeforeOpen
    BeforePost = C_FamiliarBeforePost
    OnNewRecord = C_FamiliarNewRecord
    Left = 602
    Top = 6
    object C_FamiliarID: TIntegerField
      FieldName = 'ID'
      Origin = 'FAVORECIDOS.ID'
      Required = True
    end
    object C_FamiliarNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_FamiliarRELACIONAMENTO: TIntegerField
      FieldName = 'RELACIONAMENTO'
      Origin = 'FAVORECIDOS.RELACIONAMENTO'
    end
    object C_FamiliarSSN: TStringField
      FieldName = 'SSN'
      Origin = 'FAVORECIDOS.SSN'
      Size = 11
    end
    object C_FamiliarGRAURELAC: TIntegerField
      FieldName = 'GRAURELAC'
      Origin = 'FAVORECIDOS.GRAURELAC'
    end
    object C_FamiliarlkGrauRelac: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrauRelac'
      LookupDataSet = C_GrauRelac
      LookupKeyFields = 'GRAU'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRAURELAC'
      Size = 30
      Lookup = True
    end
  end
  object Q_Familiar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select favorecido as id, nome, relacionamento, ssn, graurelac'
      'from favorecidos '
      'where (relacionamento = :FAVORECIDO)'
      '')
    UpdateObject = U_Familiar
    Left = 599
    Top = 51
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Familiar: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from favorecidos '
      'where'
      '  FAVORECIDO = :ID')
    ModifySQL.Strings = (
      'update favorecidos'
      'set'
      '  RELACIONAMENTO = :RELACIONAMENTO,'
      '  GRAURELAC = :GRAURELAC'
      'where'
      '  FAVORECIDO = :OLD_ID'
      '')
    InsertSQL.Strings = (
      'update favorecidos'
      'set'
      '  RELACIONAMENTO = :RELACIONAMENTO,'
      '  GRAURELAC = :GRAURELAC'
      'where'
      '  FAVORECIDO = :OLD_ID')
    DeleteSQL.Strings = (
      'update favorecidos'
      'set'
      '  RELACIONAMENTO = NULL'
      'where'
      '  FAVORECIDO = :OLD_ID')
    Left = 607
    Top = 104
  end
  object C_FamiliarDS: TDataSource
    DataSet = C_Familiar
    Left = 608
    Top = 151
  end
  object P_Contratos: TDataSetProvider
    DataSet = Q_Contratos
    Constraints = True
    Left = 696
    Top = 368
  end
  object P_LocaisEntrega: TDataSetProvider
    DataSet = Q_LocaisEntrega
    Constraints = True
    Left = 696
    Top = 416
  end
  object P_Clientes: TDataSetProvider
    DataSet = Q_Clientes
    Constraints = True
    Left = 696
    Top = 464
  end
  object P_Familiar: TDataSetProvider
    DataSet = Q_Familiar
    Constraints = True
    Left = 696
    Top = 512
  end
  object Q_Receitas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from clientesreceitas'
      'Where Favorecido = :FAVORECIDO')
    UpdateObject = U_Receitas
    Left = 396
    Top = 14
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Receitas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from clientesreceitas '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update clientesreceitas'
      'set'
      '  OD_LG_ESF = :OD_LG_ESF,'
      '  OD_LG_CIL = :OD_LG_CIL,'
      '  OD_LG_EIXO = :OD_LG_EIXO,'
      '  OD_LG_DNP = :OD_LG_DNP,'
      '  OD_LG_AP = :OD_LG_AP,'
      '  OD_LG_ARO = :OD_LG_ARO,'
      '  OD_LG_DP = :OD_LG_DP,'
      '  OD_PE_ESF = :OD_PE_ESF,'
      '  OD_PE_CIL = :OD_PE_CIL,'
      '  OD_PE_EIXO = :OD_PE_EIXO,'
      '  OD_PE_DNP = :OD_PE_DNP,'
      '  OD_PE_CO = :OD_PE_CO,'
      '  OD_PE_PEL = :OD_PE_PEL,'
      '  OD_PE_DP = :OD_PE_DP,'
      '  OE_LG_ESF = :OE_LG_ESF,'
      '  OE_LG_CIL = :OE_LG_CIL,'
      '  OE_LG_EIXO = :OE_LG_EIXO,'
      '  OE_LG_DNP = :OE_LG_DNP,'
      '  OE_LG_AP = :OE_LG_AP,'
      '  OE_LG_ARO = :OE_LG_ARO,'
      '  OE_LG_DP = :OE_LG_DP,'
      '  OE_PE_ESF = :OE_PE_ESF,'
      '  OE_PE_CIL = :OE_PE_CIL,'
      '  OE_PE_EIXO = :OE_PE_EIXO,'
      '  OE_PE_DNP = :OE_PE_DNP,'
      '  OE_PE_CO = :OE_PE_CO,'
      '  OE_PE_PEL = :OE_PE_PEL,'
      '  OE_PE_DP = :OE_PE_DP,'
      '  TIPOLENTE = :TIPOLENTE,'
      '  COR = :COR,'
      '  TIPOMATERIAL = :TIPOMATERIAL,'
      '  REFERENTE = :REFERENTE,'
      '  OBS = :OBS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into clientesreceitas'
      '  (FAVORECIDO, OD_LG_ESF, OD_LG_CIL, OD_LG_EIXO, OD_LG_DNP, '
      'OD_LG_AP, OD_LG_ARO, '
      
        '   OD_LG_DP, OD_PE_ESF, OD_PE_CIL, OD_PE_EIXO, OD_PE_DNP, OD_PE_' +
        'CO, '
      'OD_PE_PEL, '
      
        '   OD_PE_DP, OE_LG_ESF, OE_LG_CIL, OE_LG_EIXO, OE_LG_DNP, OE_LG_' +
        'AP, '
      'OE_LG_ARO, '
      
        '   OE_LG_DP, OE_PE_ESF, OE_PE_CIL, OE_PE_EIXO, OE_PE_DNP, OE_PE_' +
        'CO, '
      'OE_PE_PEL, '
      '   OE_PE_DP, TIPOLENTE, COR, TIPOMATERIAL, REFERENTE, OBS)'
      'values'
      
        '  (:FAVORECIDO, :OD_LG_ESF, :OD_LG_CIL, :OD_LG_EIXO, :OD_LG_DNP,' +
        ' '
      ':OD_LG_AP, '
      '   :OD_LG_ARO, :OD_LG_DP, :OD_PE_ESF, :OD_PE_CIL, :OD_PE_EIXO, '
      ':OD_PE_DNP, '
      '   :OD_PE_CO, :OD_PE_PEL, :OD_PE_DP, :OE_LG_ESF, :OE_LG_CIL, '
      ':OE_LG_EIXO, '
      '   :OE_LG_DNP, :OE_LG_AP, :OE_LG_ARO, :OE_LG_DP, :OE_PE_ESF, '
      ':OE_PE_CIL, '
      '   :OE_PE_EIXO, :OE_PE_DNP, :OE_PE_CO, :OE_PE_PEL, :OE_PE_DP, '
      ':TIPOLENTE, '
      '   :COR, :TIPOMATERIAL, :REFERENTE, :OBS)')
    DeleteSQL.Strings = (
      'delete from clientesreceitas'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 394
    Top = 59
  end
  object C_Receitas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Receitas'
    BeforeOpen = C_ReceitasBeforeOpen
    OnNewRecord = C_ReceitasNewRecord
    Left = 394
    Top = 107
    object C_ReceitasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ReceitasOD_LG_ESF: TBCDField
      FieldName = 'OD_LG_ESF'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_LG_CIL: TBCDField
      FieldName = 'OD_LG_CIL'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_LG_EIXO: TBCDField
      FieldName = 'OD_LG_EIXO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_LG_DNP: TBCDField
      FieldName = 'OD_LG_DNP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_LG_AP: TBCDField
      FieldName = 'OD_LG_AP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_LG_ARO: TBCDField
      FieldName = 'OD_LG_ARO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_LG_DP: TBCDField
      FieldName = 'OD_LG_DP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_ESF: TBCDField
      FieldName = 'OD_PE_ESF'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_CIL: TBCDField
      FieldName = 'OD_PE_CIL'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_EIXO: TBCDField
      FieldName = 'OD_PE_EIXO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_DNP: TBCDField
      FieldName = 'OD_PE_DNP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_CO: TBCDField
      FieldName = 'OD_PE_CO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_PEL: TBCDField
      FieldName = 'OD_PE_PEL'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOD_PE_DP: TBCDField
      FieldName = 'OD_PE_DP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_ESF: TBCDField
      FieldName = 'OE_LG_ESF'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_CIL: TBCDField
      FieldName = 'OE_LG_CIL'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_EIXO: TBCDField
      FieldName = 'OE_LG_EIXO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_DNP: TBCDField
      FieldName = 'OE_LG_DNP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_AP: TBCDField
      FieldName = 'OE_LG_AP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_ARO: TBCDField
      FieldName = 'OE_LG_ARO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_LG_DP: TBCDField
      FieldName = 'OE_LG_DP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_ESF: TBCDField
      FieldName = 'OE_PE_ESF'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_CIL: TBCDField
      FieldName = 'OE_PE_CIL'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_EIXO: TBCDField
      FieldName = 'OE_PE_EIXO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_DNP: TBCDField
      FieldName = 'OE_PE_DNP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_CO: TBCDField
      FieldName = 'OE_PE_CO'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_PEL: TBCDField
      FieldName = 'OE_PE_PEL'
      Precision = 18
      Size = 3
    end
    object C_ReceitasOE_PE_DP: TBCDField
      FieldName = 'OE_PE_DP'
      Precision = 18
      Size = 3
    end
    object C_ReceitasTIPOLENTE: TIntegerField
      FieldName = 'TIPOLENTE'
    end
    object C_ReceitasCOR: TIntegerField
      FieldName = 'COR'
    end
    object C_ReceitasTIPOMATERIAL: TIntegerField
      FieldName = 'TIPOMATERIAL'
    end
    object C_ReceitasREFERENTE: TStringField
      FieldName = 'REFERENTE'
      Size = 255
    end
    object C_ReceitasOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ReceitaslkTipoLente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoLente'
      LookupDataSet = C_TiposLentes
      LookupKeyFields = 'TIPOLENTE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOLENTE'
      Size = 30
      Lookup = True
    end
    object C_ReceitaslkCor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCor'
      LookupDataSet = C_Cores
      LookupKeyFields = 'COR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COR'
      Size = 30
      Lookup = True
    end
    object C_ReceitaslkTipoMaterial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoMaterial'
      LookupDataSet = C_TiposMaterial
      LookupKeyFields = 'TIPOMATERIAL'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOMATERIAL'
      Size = 30
      Lookup = True
    end
  end
  object C_ReceitasDS: TDataSource
    DataSet = C_Receitas
    Left = 394
    Top = 155
  end
  object P_Receitas: TDataSetProvider
    DataSet = Q_Receitas
    Constraints = True
    Left = 392
    Top = 203
  end
  object C_TiposLentes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposLentes'
    Left = 87
    Top = 554
    object C_TiposLentesTIPOLENTE: TIntegerField
      FieldName = 'TIPOLENTE'
      Required = True
    end
    object C_TiposLentesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_TiposLentes: TDataSetProvider
    DataSet = Q_TiposLentes
    Constraints = True
    Left = 87
    Top = 608
  end
  object Q_TiposLentes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From TiposLentes')
    Left = 83
    Top = 656
  end
  object Q_Cores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From Cores')
    Left = 181
    Top = 398
  end
  object P_Cores: TDataSetProvider
    DataSet = Q_Cores
    Constraints = True
    Left = 191
    Top = 590
  end
  object C_Cores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Cores'
    Left = 193
    Top = 648
    object C_CoresCOR: TIntegerField
      FieldName = 'COR'
      Required = True
    end
    object C_CoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_TiposMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposMaterial'
    Left = 347
    Top = 643
    object C_TiposMaterialTIPOMATERIAL: TIntegerField
      FieldName = 'TIPOMATERIAL'
      Required = True
    end
    object C_TiposMaterialDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_TiposMaterial: TDataSetProvider
    DataSet = Q_TiposMaterial
    Constraints = True
    Left = 347
    Top = 595
  end
  object Q_TiposMaterial: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From TiposMaterial')
    Left = 347
    Top = 547
  end
  object Q_CidadesBristol: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cidades_bristol'
      'order by descricao')
    Left = 652
    Top = 62
  end
  object C_CidadesBristolDS: TDataSource
    DataSet = C_CidadesBristol
    Left = 648
    Top = 109
  end
  object C_CidadesBristol: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CidadesBristol'
    Left = 699
    Top = 108
    object C_CidadesBristolCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Required = True
    end
    object C_CidadesBristolDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_CidadesBristolUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object P_CidadesBristol: TDataSetProvider
    DataSet = Q_CidadesBristol
    Constraints = True
    Left = 746
    Top = 153
  end
  object Q_Marcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  '
      '  MARCA, DESCRICAO'
      'from MARCAS'
      'order by 2')
    Left = 779
    Top = 6
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Left = 779
    Top = 54
  end
  object C_Marcas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marcas'
    Left = 792
    Top = 110
    object C_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MARCAS.DESCRICAO'
      Size = 25
    end
    object C_MarcasMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCAS.MARCA'
      Required = True
    end
  end
  object Q_Tecnologias: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  '
      '  TECNOLOGIA, DESCRICAO'
      'from TECNOLOGIAS'
      'order by 2')
    Left = 878
    Top = 14
  end
  object P_Tecnologias: TDataSetProvider
    DataSet = Q_Tecnologias
    Constraints = True
    Left = 878
    Top = 62
  end
  object C_Tecnologias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tecnologias'
    Left = 876
    Top = 112
    object C_TecnologiasTECNOLOGIA: TIntegerField
      FieldName = 'TECNOLOGIA'
      Origin = 'TECNOLOGIAS.TECNOLOGIA'
      Required = True
    end
    object C_TecnologiasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TECNOLOGIAS.DESCRICAO'
      Size = 25
    end
  end
  object Q_Equipamentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select'
      
        '  e.equipamento, e.nummaquina, e.marca, e.tecnologia, e.paviment' +
        'os, e.favorecido, e.DESCRICAO'
      'from equipamentos e'
      'where e.favorecido = :FAVORECIDO')
    UpdateObject = U_Equipamentos
    Left = 802
    Top = 172
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Equipamentos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from equipamentos '
      'where'
      '  EQUIPAMENTO = :EQUIPAMENTO')
    ModifySQL.Strings = (
      'update equipamentos'
      'set'
      '  NUMMAQUINA = :NUMMAQUINA,'
      '  MARCA = :MARCA,'
      '  TECNOLOGIA = :TECNOLOGIA,'
      '  PAVIMENTOS = :PAVIMENTOS,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into equipamentos'
      '  (EQUIPAMENTO, NUMMAQUINA, MARCA, TECNOLOGIA, PAVIMENTOS, '
      'FAVORECIDO, '
      '   DESCRICAO)'
      'values'
      '  (:EQUIPAMENTO, :NUMMAQUINA, :MARCA, :TECNOLOGIA, :PAVIMENTOS, '
      ':FAVORECIDO, '
      '   :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from equipamentos'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
    Left = 806
    Top = 224
  end
  object C_Equipamentos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Equipamentos
    Params = <>
    OnNewRecord = C_EquipamentosNewRecord
    Left = 804
    Top = 270
    object C_EquipamentosEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'EQUIPAMENTOS.EQUIPAMENTO'
      Required = True
    end
    object C_EquipamentosNUMMAQUINA: TStringField
      FieldName = 'NUMMAQUINA'
      Origin = 'EQUIPAMENTOS.NUMMAQUINA'
      Size = 25
    end
    object C_EquipamentosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'EQUIPAMENTOS.MARCA'
    end
    object C_EquipamentosTECNOLOGIA: TIntegerField
      FieldName = 'TECNOLOGIA'
      Origin = 'EQUIPAMENTOS.TECNOLOGIA'
    end
    object C_EquipamentosPAVIMENTOS: TIntegerField
      FieldName = 'PAVIMENTOS'
      Origin = 'EQUIPAMENTOS.PAVIMENTOS'
    end
    object C_EquipamentoslkMarca: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMarca'
      LookupDataSet = C_Marcas
      LookupKeyFields = 'MARCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MARCA'
      Size = 25
      Lookup = True
    end
    object C_EquipamentoslkTecnologia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnologia'
      LookupDataSet = C_Tecnologias
      LookupKeyFields = 'TECNOLOGIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TECNOLOGIA'
      Size = 25
      Lookup = True
    end
    object C_EquipamentosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'EQUIPAMENTOS.FAVORECIDO'
    end
    object C_EquipamentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'EQUIPAMENTOS.DESCRICAO'
      Size = 255
    end
  end
  object C_EquipamentosDS: TDataSource
    DataSet = C_Equipamentos
    Left = 802
    Top = 324
  end
  object Q_AssistenciaEquip: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select ce.equipamento, ce.numeroserie,m.descricao, c.nome, ce.cl' +
        'iente'
      'from clientesequipamentos ce'
      'left join modelos m on ce.modelo = m.modelo'
      'inner join favorecidos c on c.favorecido = ce.cliente'
      'where ce.cliente = :FAVORECIDO'
      'order by 1')
    UpdateObject = U_AssistenciaEquip
    Left = 906
    Top = 222
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object P_AssistenciaEquip: TDataSetProvider
    DataSet = Q_AssistenciaEquip
    Constraints = True
    Left = 908
    Top = 268
  end
  object C_AssistenciaEquip: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_AssistenciaEquip'
    OnNewRecord = C_AssistenciaEquipNewRecord
    Left = 910
    Top = 312
    object C_AssistenciaEquipEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Required = True
    end
    object C_AssistenciaEquipDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 93
    end
    object C_AssistenciaEquipNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Size = 30
    end
    object C_AssistenciaEquipNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_AssistenciaEquipCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object C_AssistenciaEquipDS: TDataSource
    DataSet = C_AssistenciaEquip
    Left = 910
    Top = 356
  end
  object U_AssistenciaEquip: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from clientesequipamentos '
      'where'
      '  EQUIPAMENTO = :EQUIPAMENTO')
    ModifySQL.Strings = (
      'update clientesequipamentos'
      'set'
      '  EQUIPAMENTO = :EQUIPAMENTO,'
      '  NUMEROSERIE = :NUMEROSERIE,'
      '  CLIENTE = :CLIENTE'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into clientesequipamentos'
      '  (EQUIPAMENTO, NUMEROSERIE,CLIENTE)'
      'values'
      '  (:EQUIPAMENTO, :NUMEROSERIE,  :CLIENTE)')
    DeleteSQL.Strings = (
      'delete from clientesequipamentos'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
    Left = 912
    Top = 402
  end
  object C_TipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TipoCobranca'
    Left = 796
    Top = 488
    object C_TipoCobrancaTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TIPOSCOBRANCA.TIPOCOBRANCA'
      Required = True
    end
    object C_TipoCobrancaDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCOBRANCA.DESCTIPO'
      Size = 50
    end
  end
  object P_TipoCobranca: TDataSetProvider
    DataSet = Q_TipoCobranca
    Constraints = True
    Left = 796
    Top = 440
  end
  object Q_TipoCobranca: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOCOBRANCA, DESCRICAO AS DescTipo'
      ''
      'From TIPOSCOBRANCA'
      '')
    Left = 796
    Top = 392
  end
  object Q_Municipios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT M.municipio, m.coduf, u.UF ||'#39'-'#39'|| m.descricao as Descric' +
        'ao'
      'FROM MUNICIPIOS M inner join ufs u on u.cduf = m.coduf'
      'ORDER BY u.uf ,M.descricao')
    Left = 1049
    Top = 55
  end
  object P_Municipios: TDataSetProvider
    DataSet = Q_Municipios
    Constraints = True
    Left = 1049
    Top = 106
  end
  object C_Municipios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Municipios'
    Left = 1051
    Top = 156
    object C_MunicipiosMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
      Required = True
    end
    object C_MunicipiosCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object C_MunicipiosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
  end
  object C_MunicipiosDs: TDataSource
    Tag = 100
    DataSet = C_Municipios
    Left = 1048
    Top = 214
  end
end

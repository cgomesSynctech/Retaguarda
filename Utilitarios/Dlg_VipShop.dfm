inherited DlgVipShop: TDlgVipShop
  Left = 368
  Top = 51
  Width = 609
  Height = 280
  Caption = 'DlgVipShop'
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 19
    Top = 119
    Width = 118
    Height = 13
    Caption = 'Atualizar Parametros -> '
  end
  inherited pnNavigator: TTS_Panel
    Left = 483
    Height = 210
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 176
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 601
    inherited btHelp: TTS_SpeedButton
      Left = 565
    end
  end
  inherited pnDados: TTS_Panel
    Width = 483
    Height = 210
    object Label1: TLabel
      Left = 19
      Top = 58
      Width = 192
      Height = 13
      Caption = 'Digite o CNPJ para Nome da Base WEB :'
    end
    object Label2: TLabel
      Left = 19
      Top = 32
      Width = 455
      Height = 13
      Caption = 
        'Para verificar os Parametros que iram ser atualizados verifique ' +
        'a procedure Parametos Vipshop'
    end
    object Label4: TLabel
      Left = 59
      Top = 191
      Width = 384
      Height = 13
      Caption = 
        'Certifique-se que todos os comandos de atualiza'#231#227'o da base forma' +
        ' executados '
    end
    object Label5: TLabel
      Left = 139
      Top = 13
      Width = 214
      Height = 13
      Caption = 'ATUALIZA'#199#195'O DOS PARAMETROS DA BASE '
    end
    object Label6: TLabel
      Left = 83
      Top = 135
      Width = 197
      Height = 13
      Caption = 'Criar Generation SR_REPLICAWEBLOCAL'
    end
    object Label7: TLabel
      Left = 168
      Top = 175
      Width = 199
      Height = 13
      Caption = 'ATEN'#199#195'O : Atualize a base pelo Suapps. '
    end
    object Label8: TLabel
      Left = 211
      Top = 103
      Width = 71
      Height = 13
      Caption = 'GENERATIONS'
    end
    object Button1: TButton
      Left = 351
      Top = 54
      Width = 75
      Height = 25
      Caption = 'Atualizar '
      TabOrder = 0
      OnClick = Button1Click
    end
    object dfCNPJbase: TEdit
      Left = 214
      Top = 55
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object Button2: TButton [4]
    Left = 287
    Top = 171
    Width = 75
    Height = 25
    Caption = 'Criar'
    TabOrder = 3
    OnClick = Button2Click
  end
  inherited DlgMsg: TDlgMsg
    Left = 134
    Top = 406
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 242
    Top = 399
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 200
    Top = 346
  end
  inherited Beep: TBTBeeper
    Left = 376
    Top = 368
  end
  inherited FormStorage: TFormStorage
    Left = 288
    Top = 360
  end
  inherited FormsComponent: TFormsComponent
    Left = 186
    Top = 410
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 335
    Top = 378
  end
  object Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    Left = 484
    Top = 180
  end
  object U_Tabela: TIBUpdateSQL
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
    Left = 484
    Top = 230
  end
  object P_Tabela: TDataSetProvider
    DataSet = Q_Tabela
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 480
    Top = 278
  end
  object C_Tabela: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tabela'
    Left = 482
    Top = 324
    object C_Tabela_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object C_TabelaDS: TDataSource
    Tag = 100
    DataSet = C_Tabela
    Left = 480
    Top = 373
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    UpdateObject = U_Tabela
    Left = 420
    Top = 188
  end
end

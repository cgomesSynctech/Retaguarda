inherited DMClientes: TDMClientes
  Left = 48
  Top = 27
  Height = 541
  Width = 737
  inherited OpenDialog: TOpenDialog
    Left = 14
    Top = 413
  end
  inherited SaveDialog: TSaveDialog
    Left = 44
    Top = 413
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select f.*, f.relacionamento as relac,'
      ''
      '(Select sum(tar.faltareceber) '
      ' From Titulosareceber tar where tar.cliente = f.favorecido'
      ' And Status>0 And Status<50) As Saldo,'
      ''
      '(Select Sum(dd.Valor) From DepositosDoc dd'
      'Join Depositos d On d.Deposito=dd.Deposito'
      'Where d.Favorecido = f.favorecido'
      'and dd.formapagamento in (2,3) and dd.foradaempresa='#39'N'#39' '
      'and dd.status < 50 ) As CheqPendentes'
      ''
      'From FAVORECIDOS f '
      'Where f.tipofavorecido = 1')
    Left = 30
    Top = 6
  end
  inherited Q_MasterDS: TDataSource
    Left = 30
    Top = 251
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
      '  DIASPERIODO = :DIASPERIODO'
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
        ' DIASPERIODO)'
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
      ':DESCRICAORELAC, :INICIOSEMANA, :DIASPERIODO)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 31
    Top = 52
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'FAVORECIDOS'
    Tabela_Nome = 'FAVORECIDOS'
    Tabela_Chave = 'FAVORECIDO'
    MestreDetalhe = True
    GenerateIDFor.Strings = (
      'C_LocaisEntrega=ENTREGA'
      'C_Contratos=CONTRATO'
      'C_Familiar=ID')
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
    Left = 30
    Top = 284
  end
  inherited DlgMsg: TDlgMsg
    Left = 19
    Top = 406
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 31
    Top = 145
    object C_TabelaFAVORECIDO: TIntegerField
      DisplayWidth = 14
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      DisplayLabel = 'Código'
      DisplayWidth = 24
      FieldName = 'CODIGO'
      OnValidate = C_TabelaCODIGOValidate
    end
    object C_TabelaNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 60
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      DisplayLabel = 'Razão'
      DisplayWidth = 60
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      DisplayLabel = 'Endereço'
      DisplayWidth = 60
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_TabelaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 36
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      DisplayWidth = 3
      FieldName = 'UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      DisplayWidth = 12
      FieldName = 'CEP'
      Size = 10
    end
    object C_TabelaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      DisplayWidth = 30
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_TabelaPAIS: TIntegerField
      DisplayLabel = 'País'
      DisplayWidth = 12
      FieldName = 'PAIS'
    end
    object C_TabelaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      DisplayWidth = 24
      FieldName = 'FONE1'
    end
    object C_TabelaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      DisplayWidth = 24
      FieldName = 'FONE2'
    end
    object C_TabelaFAX: TStringField
      DisplayWidth = 24
      FieldName = 'FAX'
    end
    object C_TabelaCELULAR: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 24
      FieldName = 'CELULAR'
    end
    object C_TabelaCONTATO: TStringField
      DisplayLabel = 'Contato'
      DisplayWidth = 36
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_TabelaEMAIL: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 48
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      DisplayWidth = 19
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaTIPOATIVIDADE: TIntegerField
      DisplayWidth = 17
      FieldName = 'TIPOATIVIDADE'
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField
      DisplayWidth = 21
      FieldName = 'PLANOPAGAMENTO'
    end
    object C_TabelaVENDEDOR: TIntegerField
      DisplayWidth = 12
      FieldName = 'VENDEDOR'
    end
    object C_TabelaLIMITECREDITO: TBCDField
      DisplayLabel = 'Limite de Crédito'
      DisplayWidth = 23
      FieldName = 'LIMITECREDITO'
      DisplayFormat = '#,0.00;-#,0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXAVEL: TStringField
      DisplayLabel = 'Taxável'
      DisplayWidth = 10
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_TabelaTAX: TIntegerField
      DisplayWidth = 12
      FieldName = 'TAX'
    end
    object C_TabelaEIN: TStringField
      DisplayWidth = 12
      FieldName = 'EIN'
      Size = 10
    end
    object C_TabelaSSN: TStringField
      DisplayWidth = 13
      FieldName = 'SSN'
      Size = 11
    end
    object C_TabelaTABELAPRECO: TIntegerField
      DisplayWidth = 16
      FieldName = 'TABELAPRECO'
    end
    object C_TabelaDESATIVADO: TStringField
      DisplayLabel = 'Desativado'
      DisplayWidth = 14
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaEXIGIVEL1099: TStringField
      DisplayLabel = 'Exigir 1099'
      DisplayWidth = 15
      FieldName = 'EXIGIVEL1099'
      Size = 1
    end
    object C_TabelaTIPOENTREGA: TIntegerField
      DisplayWidth = 16
      FieldName = 'TIPOENTREGA'
    end
    object C_TabelaDATACADASTRO: TDateField
      DisplayLabel = 'Data de Cadastro'
      DisplayWidth = 18
      FieldName = 'DATACADASTRO'
    end
    object C_TabelaSITE: TStringField
      DisplayLabel = 'Site'
      DisplayWidth = 96
      FieldName = 'SITE'
      Size = 80
    end
    object C_TabelaOBS: TStringField
      DisplayWidth = 306
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaIMPORTACAO: TIntegerField
      DisplayLabel = 'Importação'
      DisplayWidth = 14
      FieldName = 'IMPORTACAO'
    end
    object C_TabelaSITUACAO: TStringField
      DisplayLabel = 'Situação'
      DisplayWidth = 11
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_TabelaCARGO: TIntegerField
      DisplayWidth = 12
      FieldName = 'CARGO'
    end
    object C_TabelaLOGOTIPO: TStringField
      DisplayWidth = 150
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_TabelaJUROSFACTORY: TBCDField
      DisplayWidth = 23
      FieldName = 'JUROSFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXASFACTORY: TBCDField
      DisplayWidth = 23
      FieldName = 'TAXASFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaFLOATINGFACTORY: TBCDField
      DisplayWidth = 23
      FieldName = 'FLOATINGFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaMEMO_CHECK: TStringField
      DisplayWidth = 306
      FieldName = 'MEMO_CHECK'
      Size = 255
    end
    object C_TabelaCREDITO: TBCDField
      DisplayWidth = 23
      FieldName = 'CREDITO'
      DisplayFormat = '#,0.00;-#,0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTA: TIntegerField
      DisplayWidth = 12
      FieldName = 'CONTA'
    end
    object C_TabelaNUMERO_REVENDA: TStringField
      DisplayWidth = 24
      FieldName = 'NUMERO_REVENDA'
    end
    object C_TabelaTIPO_FUNC: TStringField
      DisplayWidth = 12
      FieldName = 'TIPO_FUNC'
      Size = 1
    end
    object C_TabelaDATANASC: TDateField
      DisplayLabel = 'Data de Nascimento'
      DisplayWidth = 12
      FieldName = 'DATANASC'
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
      DisplayLabel = 'Comissão'
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaISVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'ISVENDEDOR'
      Size = 1
    end
    object C_TabelaCHEQPENDENTES: TBCDField
      FieldName = 'CHEQPENDENTES'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTAPAGAMENTO: TIntegerField
      FieldName = 'CONTAPAGAMENTO'
    end
    object C_TabelacfCHEQUESPENDENTES: TFloatField
      DisplayLabel = 'Cheques Pendentes'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'cfCHEQUESPENDENTES'
      DisplayFormat = '##0.00,###'
    end
    object C_TabelacfCREDITO: TBCDField
      DisplayLabel = 'Crédio'
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
      DisplayLabel = 'Tabela de Preço'
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
      DisplayLabel = 'País'
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
    end
    object C_TabelaULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
    end
    object C_TabelaULTVALORCOMPRA: TBCDField
      FieldName = 'ULTVALORCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaQ_LocaisEntrega: TDataSetField
      FieldName = 'Q_LocaisEntrega'
      IncludeObjectField = False
    end
    object C_TabelaQ_Contratos: TDataSetField
      FieldName = 'Q_Contratos'
      IncludeObjectField = False
    end
    object C_TabelaPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Size = 1
    end
    object C_TabelaDATAADIMISSAO: TDateField
      FieldName = 'DATAADIMISSAO'
    end
    object C_TabelaDATADEMISSAO: TDateField
      FieldName = 'DATADEMISSAO'
    end
    object C_TabelaDATAAUMENTO: TDateField
      FieldName = 'DATAAUMENTO'
    end
    object C_TabelaAGRUPARPORITEM: TStringField
      FieldName = 'AGRUPARPORITEM'
      Size = 1
    end
    object C_TabelaQ_Familiar: TDataSetField
      FieldName = 'Q_Familiar'
      IncludeObjectField = False
    end
    object C_TabelaRELACIONAMENTO: TIntegerField
      FieldName = 'RELACIONAMENTO'
    end
    object C_TabelaRELAC: TIntegerField
      FieldName = 'RELAC'
      OnChange = C_TabelaRELACChange
    end
    object C_TabelaDESCRICAORELAC: TStringField
      FieldName = 'DESCRICAORELAC'
      OnChange = C_TabelaRELACChange
      Size = 25
    end
    object C_TabelaINICIOSEMANA: TIntegerField
      FieldName = 'INICIOSEMANA'
    end
    object C_TabelaDIASPERIODO: TIntegerField
      FieldName = 'DIASPERIODO'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 31
    Top = 203
  end
  inherited ResultSet: TClientDataSet
    Left = 29
    Top = 322
  end
  object Q_UFS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DESCRICAO, UF from UFS')
    Left = 122
    Top = 6
  end
  object Q_Paises: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select PAIS, DESCRICAO '
      'From PAISES')
    Left = 288
    Top = 163
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
    Left = 385
    Top = 163
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
    Left = 201
    Top = 6
  end
  object Q_TAXS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TAX  '
      'From TAXS')
    Left = 201
    Top = 163
  end
  object Q_TiposEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TIPOENTREGA From TIPOSENTREGA')
    Left = 288
    Top = 6
  end
  object Q_TiposAtividade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOATIVIDADE, DESCRICAO As ATIVIDADE'
      'From TIPOSATIVIDADE'
      'Where TIPOFAVORECIDO = 1')
    Left = 122
    Top = 163
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 122
    Top = 52
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 122
    Top = 98
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
  object P_Vendedor: TDataSetProvider
    DataSet = Q_Vendedor
    Constraints = True
    Left = 201
    Top = 52
  end
  object C_Vendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedor'
    Left = 201
    Top = 98
    object C_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_VendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
  end
  object P_TiposEntrega: TDataSetProvider
    DataSet = Q_TiposEntrega
    Constraints = True
    Left = 288
    Top = 52
  end
  object C_TiposEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposEntrega'
    Left = 288
    Top = 98
    object C_TiposEntregaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Required = True
    end
    object C_TiposEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_TiposAtividade: TDataSetProvider
    DataSet = Q_TiposAtividade
    Constraints = True
    Left = 122
    Top = 211
  end
  object C_TiposAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposAtividade'
    Left = 122
    Top = 258
    object C_TiposAtividadeTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Required = True
    end
    object C_TiposAtividadeATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 30
    end
  end
  object P_TAXS: TDataSetProvider
    DataSet = Q_TAXS
    Constraints = True
    Left = 201
    Top = 211
  end
  object C_TAXS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TAXS'
    Left = 201
    Top = 258
    object C_TAXSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TAXSTAX: TIntegerField
      FieldName = 'TAX'
      Required = True
    end
  end
  object P_Paises: TDataSetProvider
    DataSet = Q_Paises
    Constraints = True
    Left = 288
    Top = 211
  end
  object C_Paises: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Paises'
    Left = 288
    Top = 258
    object C_PaisesPAIS: TIntegerField
      FieldName = 'PAIS'
      Required = True
    end
    object C_PaisesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object P_PlanoPagamento: TDataSetProvider
    DataSet = Q_PlanoPagamento
    Constraints = True
    Left = 385
    Top = 211
  end
  object C_PlanosPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanoPagamento'
    Left = 385
    Top = 258
    object C_PlanosPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
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
    Left = 385
    Top = 3
  end
  object P_TabelaPreco: TDataSetProvider
    DataSet = Q_TabelaPreco
    Constraints = True
    Left = 385
    Top = 51
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelaPreco'
    Left = 385
    Top = 98
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 559
    Top = 144
  end
  object Q_Consultas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select o.Favorecido as ID, f.Nome, f.Endereco, f.Cidade, f.UF, f' +
        '.CEP, f.Fone1 as Telefone, o.data, o.total As ValorDoOrcamento, ' +
        'f1.nome as vendedor, o.validade'
      'From Orcamentos o'
      
        'Join Favorecidos f On o.favorecido=f.favorecido And o.Situacao =' +
        ' '#39'N'#39
      'Left Join Favorecidos f1 On o.vendedor=f1.favorecido'
      'Order By o.Data')
    Left = 483
    Top = 5
  end
  object P_Consultas: TDataSetProvider
    DataSet = Q_Consultas
    Constraints = True
    Options = [poAllowCommandText]
    Left = 483
    Top = 51
  end
  object C_Consultas: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'P_Consultas'
    Left = 483
    Top = 97
  end
  object C_ConsultasDS: TDataSource
    DataSet = C_Consultas
    Left = 483
    Top = 144
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
    Left = 559
    Top = 5
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 559
    Top = 51
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 559
    Top = 105
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
  end
  object Q_LocaisEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from FAVORECIDOSENTREGA'
      'Where Favorecido = :FAVORECIDO')
    UpdateObject = U_LocaisEntrega
    Left = 289
    Top = 316
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
  end
  object C_LocaisEntrega: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_LocaisEntrega
    Params = <>
    OnNewRecord = C_LocaisEntregaNewRecord
    Left = 291
    Top = 362
    object C_LocaisEntrega_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_LocaisEntregaENTREGA: TIntegerField
      FieldName = 'ENTREGA'
      Required = True
    end
    object C_LocaisEntregaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_LocaisEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object C_LocaisEntregaENDERECOENTREGA: TStringField
      DisplayLabel = 'Endereço'
      FieldName = 'ENDERECOENTREGA'
      Size = 40
    end
    object C_LocaisEntregaCIDADEENTREGA: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADEENTREGA'
      Size = 30
    end
    object C_LocaisEntregaUFENTREGA: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFENTREGA'
      Size = 2
    end
    object C_LocaisEntregaCEPENTREGA: TStringField
      DisplayLabel = 'Zip'
      FieldName = 'CEPENTREGA'
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
      Size = 15
    end
  end
  object C_LocaisEntregaDS: TDataSource
    DataSet = C_LocaisEntrega
    Left = 381
    Top = 363
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
      '  FONEENTREGA'
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
      '  FONEENTREGA = :FONEENTREGA'
      'where'
      '  ENTREGA = :OLD_ENTREGA')
    InsertSQL.Strings = (
      'insert into FAVORECIDOSENTREGA'
      
        '  (ENTREGA, FAVORECIDO, ENDERECOENTREGA, CIDADEENTREGA, UFENTREG' +
        'A, CEPENTREGA, '
      '   PAISENTREGA, DESCRICAO, FONEENTREGA)'
      'values'
      
        '  (:ENTREGA, :FAVORECIDO, :ENDERECOENTREGA, :CIDADEENTREGA, :UFE' +
        'NTREGA, '
      '   :CEPENTREGA, :PAISENTREGA, :DESCRICAO, :FONEENTREGA)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOSENTREGA'
      'where'
      '  ENTREGA = :OLD_ENTREGA')
    Left = 381
    Top = 317
  end
  object Q_Contratos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'Select c.*, f.Nome as NomeFuncionario '
      
        'from '#9'(ContratosFav c LEFT JOIN FuncsPayItens fp ON fp.FuncPayIt' +
        'em = c.FuncPayItem)'
      #9'LEFT JOIN Favorecidos f ON fp.Funcionario = f.Favorecido'
      'Where c.Favorecido = :FAVORECIDO')
    UpdateObject = U_Contratos
    Left = 484
    Top = 203
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
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
      '  GRUPOCOBRANCA = :GRUPOCOBRANCA'
      'where'
      '  CONTRATO = :OLD_CONTRATO')
    InsertSQL.Strings = (
      'insert into ContratosFav'
      
        '  (CONTRATO, DESCRICAO, FAVORECIDO, ITEM, PRECO, PERIODICIDADE, ' +
        'DIACOBRANCA, '
      '   METODOPGTO, FUNCPAYITEM, GRUPOCOBRANCA)'
      'values'
      
        '  (:CONTRATO, :DESCRICAO, :FAVORECIDO, :ITEM, :PRECO, :PERIODICI' +
        'DADE, :DIACOBRANCA, '
      '   :METODOPGTO, :FUNCPAYITEM, :GRUPOCOBRANCA)')
    DeleteSQL.Strings = (
      'delete from ContratosFav'
      'where'
      '  CONTRATO = :OLD_CONTRATO')
    Left = 485
    Top = 251
  end
  object C_Contratos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Contratos
    Params = <>
    BeforePost = C_ContratosBeforePost
    OnNewRecord = C_ContratosNewRecord
    Left = 485
    Top = 298
    object C_ContratosCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Required = True
    end
    object C_ContratosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContratosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ContratosITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ContratosPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
    object C_ContratosPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      OnChange = C_ContratosPERIODICIDADEChange
      Size = 1
    end
    object C_ContratosMETODOPGTO: TStringField
      FieldName = 'METODOPGTO'
      Size = 1
    end
    object C_ContratosFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
    end
    object C_ContratosGRUPOCOBRANCA: TIntegerField
      FieldName = 'GRUPOCOBRANCA'
    end
    object C_ContratosDIACOBRANCA: TStringField
      FieldName = 'DIACOBRANCA'
      Size = 2
    end
    object C_ContratosNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
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
  end
  object C_ContratosDS: TDataSource
    DataSet = C_Contratos
    Left = 484
    Top = 346
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 559
    Top = 346
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Item, Codigo, Descricao, HasChildren'
      'FROM ITENS'
      'WHERE DESATIVADO = '#39'N'#39' and TIPOITEM = 3'
      'order by Descricao')
    Left = 559
    Top = 203
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 559
    Top = 251
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 559
    Top = 298
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
  end
  object Q_Familiar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select favorecido as id, nome, datanasc, tipofavorecido, desativ' +
        'ado, relacionamento, descricaorelac, ein, ssn, endereco, cidade,' +
        ' uf, fone1'
      'from favorecidos '
      'where relacionamento = :RELAC and favorecido <> relacionamento')
    UpdateObject = U_Familiar
    Left = 96
    Top = 315
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RELAC'
        ParamType = ptUnknown
      end>
  end
  object U_Familiar: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from favorecidos '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update favorecidos'
      'set'
      '  NOME = :NOME,'
      '  DATANASC = :DATANASC,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  DESATIVADO = :DESATIVADO,'
      '  RELACIONAMENTO = :RELACIONAMENTO,'
      '  DESCRICAORELAC = :DESCRICAORELAC,'
      '  EIN = :EIN,'
      '  SSN = :SSN,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  FONE1 = :FONE1'
      'where'
      '  FAVORECIDO = :OLD_ID')
    InsertSQL.Strings = (
      'insert into favorecidos'
      '  (FAVORECIDO, NOME, DATANASC, TIPOFAVORECIDO, DESATIVADO, '
      'RELACIONAMENTO, DESCRICAORELAC, '
      '   EIN, SSN, ENDERECO, CIDADE, UF, FONE1)'
      'values'
      '  (:ID, :NOME, :DATANASC, :TIPOFAVORECIDO, :DESATIVADO, '
      ':RELACIONAMENTO, '
      '   :DESCRICAORELAC, :EIN, :SSN, :ENDERECO, :CIDADE, :UF, :FONE1)')
    DeleteSQL.Strings = (
      'delete from favorecidos'
      'where'
      '  FAVORECIDO = :OLD_ID')
    Left = 96
    Top = 363
  end
  object C_Familiar: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Familiar
    Params = <>
    OnNewRecord = C_FamiliarNewRecord
    Left = 64
    Top = 363
    object C_FamiliarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_FamiliarNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_FamiliarDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_FamiliarTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_FamiliarDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_FamiliarRELACIONAMENTO: TIntegerField
      FieldName = 'RELACIONAMENTO'
    end
    object C_FamiliarDESCRICAORELAC: TStringField
      FieldName = 'DESCRICAORELAC'
      Size = 25
    end
    object C_FamiliarEIN: TStringField
      FieldName = 'EIN'
      Size = 10
    end
    object C_FamiliarSSN: TStringField
      FieldName = 'SSN'
      Size = 11
    end
    object C_FamiliarENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_FamiliarCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_FamiliarUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_FamiliarFONE1: TStringField
      FieldName = 'FONE1'
    end
  end
  object C_FamiliarDS: TDataSource
    DataSet = C_Familiar
    Left = 96
    Top = 411
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 180
    Top = 324
  end
end

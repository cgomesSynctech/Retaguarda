inherited DMFornecedores: TDMFornecedores
  Left = 395
  Top = 44
  Height = 478
  Width = 755
  inherited OpenDialog: TOpenDialog
    Left = 39
    Top = 335
  end
  inherited SaveDialog: TSaveDialog
    Left = 72
    Top = 335
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select f.*, f.nome as OldNome,'
      ''
      '(Select sum(faltapagar)'
      'From DuplicatasAPagar where fornecedor = f.favorecido'
      'And (Status>0 And Status<50)) As Saldo'
      ' '
      'From FAVORECIDOS f'
      'Where f.tipofavorecido = 2')
    Left = 39
    Top = 13
  end
  inherited Q_MasterDS: TDataSource
    Left = 99
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
      '  CONTADESPESAS,'
      '  ULTCOMPRA,'
      '  ULTVALORCOMPRA,'
      '  PERIODICIDADE,'
      '  DATAADIMISSAO,'
      '  DATADEMISSAO,'
      '  DATAAUMENTO,'
      '  AGRUPARPORITEM'
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
      '  CONTADESPESAS = :CONTADESPESAS,'
      '  ULTCOMPRA = :ULTCOMPRA,'
      '  ULTVALORCOMPRA = :ULTVALORCOMPRA,'
      '  PERIODICIDADE = :PERIODICIDADE,'
      '  DATAADIMISSAO = :DATAADIMISSAO,'
      '  DATADEMISSAO = :DATADEMISSAO,'
      '  DATAAUMENTO = :DATAAUMENTO,'
      '  AGRUPARPORITEM = :AGRUPARPORITEM,'
      '  DIASPERIODO = :DIASPERIODO,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_EST = :INSCRICAO_EST,'
      '  BAIRRO = :BAIRRO,'
      '  TIPOEMPRESA = :TIPOEMPRESA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  FONTE = :FONTE,'
      '  MUNICIPIO = :MUNICIPIO,'
      'NRO = :NRO'
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
      '   AGRUPARPORITEM, DIASPERIODO, CPF_CNPJ,  INSCRICAO_EST,'
      '  BAIRRO,  TIPOEMPRESA, PESSOA_FJ, FONTE,   MUNICIPIO, NRO )'
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
      ':CONTADESPESAS, '
      '   :ULTCOMPRA, :ULTVALORCOMPRA, :PERIODICIDADE, :DATAADIMISSAO, '
      ':DATADEMISSAO, '
      '   :DATAAUMENTO, :AGRUPARPORITEM, :DIASPERIODO, :CPF_CNPJ,  '
      ':INSCRICAO_EST, :BAIRRO,  :TIPOEMPRESA, :PESSOA_FJ, :FONTE, '
      ':MUNICIPIO, :NRO)')
    DeleteSQL.Strings = (
      'delete from FAVORECIDOS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 39
    Top = 61
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
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
      'ocorrencias=favorecido')
    Left = 39
    Top = 280
  end
  inherited DlgMsg: TDlgMsg
    Left = 5
    Top = 335
  end
  inherited P_Tabela: TDataSetProvider
    Left = 39
    Top = 108
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 41
    Top = 155
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      OnChange = C_TabelaNOMEChange
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
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
    object C_TabelaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_TabelaPAIS: TIntegerField
      FieldName = 'PAIS'
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
    object C_TabelaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
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
      DisplayFormat = '#,0.00;-#,0.00'
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
      FieldName = 'DATACADASTRO'
    end
    object C_TabelaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object C_TabelaOBS: TStringField
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
    object C_TabelaFLOATINGFACTORY: TBCDField
      FieldName = 'FLOATINGFACTORY'
      Precision = 18
      Size = 2
    end
    object C_TabelaMEMO_CHECK: TStringField
      FieldName = 'MEMO_CHECK'
      Size = 255
    end
    object C_TabelaCREDITO: TBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      DisplayFormat = '###,##0.00'
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
      EditMask = '!99/99/9999;1;_'
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
    object C_TabelaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_TabelacfSALDO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'cfSALDO'
      DisplayFormat = '##0.00,###'
    end
    object C_TabelalkUF: TStringField
      DisplayLabel = 'Estado'
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
    object C_TabelalkPais: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPais'
      LookupDataSet = C_Paises
      LookupKeyFields = 'PAIS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAIS'
      Size = 30
      Lookup = True
    end
    object C_TabelalkTipoEntrega: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoEntrega'
      LookupDataSet = C_TipoEntrega
      LookupKeyFields = 'TIPOENTREGA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOENTREGA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkPlanoPagamento: TStringField
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
      FieldKind = fkLookup
      FieldName = 'lkTipoAtividade'
      LookupDataSet = C_TiposAtividade
      LookupKeyFields = 'TIPOATIVIDADE'
      LookupResultField = 'ATIVIDADE'
      KeyFields = 'TIPOATIVIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaPagto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaPagto'
      LookupDataSet = C_ContasPagto
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTAPAGAMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaDespesas: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaDespesas'
      LookupDataSet = C_ContaDespesas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTADESPESAS'
      Size = 30
      Lookup = True
    end
    object C_TabelaULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
    end
    object C_TabelaULTVALORCOMPRA: TBCDField
      FieldName = 'ULTVALORCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaDIASPERIODO: TIntegerField
      FieldName = 'DIASPERIODO'
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnValidate = C_TabelaCPF_CNPJValidate
      Size = 14
    end
    object C_TabelaINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Size = 14
    end
    object C_TabelaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_TabelaTIPOEMPRESA: TStringField
      FieldName = 'TIPOEMPRESA'
      Size = 1
    end
    object C_TabelaPESSOA_FJ: TStringField
      FieldName = 'PESSOA_FJ'
      Size = 1
    end
    object C_TabelaFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1
    end
    object C_TabelaOLDNOME: TStringField
      FieldName = 'OLDNOME'
      Size = 50
    end
    object C_TabelaMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
    end
    object C_TabelalkMunicipio: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMunicipio'
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
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 39
    Top = 214
  end
  inherited ResultSet: TClientDataSet
    Left = 104
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
  object Q_Paises: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select PAIS, DESCRICAO '
      'From PAISES')
    Left = 249
    Top = 203
  end
  object Q_PlanosPagamento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  DESCRICAO, PLANOPAGAMENTO'
      'From PLANOSPAGAMENTO'
      'Where Tipo in ('#39'E'#39', '#39'A'#39')')
    Left = 363
    Top = 13
  end
  object Q_LookTipoEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TIPOENTREGA From TIPOSENTREGA')
    Left = 249
    Top = 13
  end
  object Q_TiposAtividade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOATIVIDADE, DESCRICAO As ATIVIDADE'
      'From  TIPOSATIVIDADE'
      'Where TIPOFAVORECIDO = 2')
    Left = 166
    Top = 203
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFS
    Constraints = True
    Left = 166
    Top = 61
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
  object Q_TipoEntregaProvider: TDataSetProvider
    DataSet = Q_LookTipoEntrega
    Constraints = True
    Left = 249
    Top = 61
  end
  object C_TipoEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TipoEntregaProvider'
    Left = 249
    Top = 108
    object C_TipoEntregaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Required = True
    end
    object C_TipoEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_TiposAtividade: TDataSetProvider
    DataSet = Q_TiposAtividade
    Constraints = True
    Left = 166
    Top = 251
  end
  object C_TiposAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposAtividade'
    Left = 166
    Top = 298
    object C_TiposAtividadeTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Required = True
    end
    object C_TiposAtividadeATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 30
    end
  end
  object P_Paises: TDataSetProvider
    DataSet = Q_Paises
    Constraints = True
    Left = 249
    Top = 251
  end
  object C_Paises: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Paises'
    Left = 249
    Top = 298
    object C_PaisesPAIS: TIntegerField
      FieldName = 'PAIS'
      Required = True
    end
    object C_PaisesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object P_PlanosPagamento: TDataSetProvider
    DataSet = Q_PlanosPagamento
    Constraints = True
    Left = 362
    Top = 61
  end
  object C_PlanosPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanosPagamento'
    Left = 362
    Top = 108
    object C_PlanosPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Required = True
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 362
    Top = 346
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
      'And c.TIPOCONTA = 8'
      'order by c.tipoconta, c.descricao')
    Left = 363
    Top = 203
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 363
    Top = 251
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 362
    Top = 298
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
  end
  object C_ContasPagtoDS: TDataSource
    DataSet = C_ContasPagto
    Left = 475
    Top = 155
  end
  object Q_ContasPagto: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.*, t.descricao as DescTipo '
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'And c.TIPOCONTA In (1,2)'
      'order by c.tipoconta, c.descricao')
    Left = 475
    Top = 13
  end
  object P_ContasPagto: TDataSetProvider
    DataSet = Q_ContasPagto
    Constraints = True
    Left = 475
    Top = 61
  end
  object C_ContasPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasPagto'
    Left = 475
    Top = 108
    object C_ContasPagtoCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasPagtoDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasPagtoSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContasPagtoCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasPagtoCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContasPagtoCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_ContasPagtoTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
  end
  object Q_ContaDespesas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.*, t.descricao as DescTipo'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'And c.TIPOCONTA In (15,16)'
      'order by c.tipoconta, c.descricao')
    Left = 475
    Top = 204
  end
  object P_ContaDespesas: TDataSetProvider
    DataSet = Q_ContaDespesas
    Constraints = True
    Left = 475
    Top = 252
  end
  object C_ContaDespesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContaDespesas'
    Left = 475
    Top = 299
    object C_ContaDespesasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContaDespesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContaDespesasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContaDespesasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContaDespesasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContaDespesasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_ContaDespesasCODIGOCONTA: TStringField
      FieldName = 'CODIGOCONTA'
      Size = 15
    end
    object C_ContaDespesasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
  end
  object C_ContaDespesasDS: TDataSource
    DataSet = C_ContaDespesas
    Left = 475
    Top = 347
  end
  object IBEventos_Fornecedores: TIBEvents
    AutoRegister = True
    Database = DMProjeto.DB_Projeto
    Events.Strings = (
      'EVENTO_CONTAS'
      'EVENTO_PLANOSPAGAMENTO')
    Registered = False
    OnEventAlert = IBEventos_FornecedoresEventAlert
    Left = 204
    Top = 360
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 106
    Top = 151
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
    Left = 577
    Top = 15
  end
  object P_Municipios: TDataSetProvider
    DataSet = Q_Municipios
    Constraints = True
    Left = 577
    Top = 66
  end
  object C_Municipios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Municipios'
    Left = 579
    Top = 116
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
    Left = 576
    Top = 174
  end
end

inherited DMEmpresa: TDMEmpresa
  Left = 341
  Top = 196
  Height = 386
  Width = 939
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Favorecidos'
      'Where Favorecido = -1')
    Left = 29
    Top = 4
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Favorecidos '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update Favorecidos'
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
      '  EIN = :EIN,'
      '  SSN = :SSN,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  SITE = :SITE,'
      '  OBS = :OBS,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  LOGOTIPO = :LOGOTIPO,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_EST = :INSCRICAO_EST,'
      '  BAIRRO = :BAIRRO,'
      '  TIPOEMPRESA = :TIPOEMPRESA,'
      '   INSCRICAO_MUN = :INSCRICAO_MUN,'
      '   MUNICIPIO = :MUNICIPIO,'
      '   PESSOA_FJ = :PESSOA_FJ,'
      '   NRO = :NRO'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into Favorecidos'
      '  (FAVORECIDO, CODIGO, NOME, RAZAO, ENDERECO, CIDADE, UF, CEP, '
      'CAIXAPOSTAL, '
      
        '   PAIS, FONE1, FONE2, FAX, CELULAR, CONTATO, EMAIL, TIPOFAVOREC' +
        'IDO, '
      'TIPOATIVIDADE, '
      
        '   EIN, SSN, DATACADASTRO, SITE, OBS, IMPORTACAO, LOGOTIPO, CPF_' +
        'CNPJ, '
      'INSCRICAO_EST, BAIRRO,TIPOEMPRESA, INSCRICAO_MUN,    MUNICIPIO, '
      'PESSOA_FJ, NRO)'
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP, '
      
        '   :CAIXAPOSTAL, :PAIS, :FONE1, :FONE2, :FAX, :CELULAR, :CONTATO' +
        ', :EMAIL, '
      
        '   :TIPOFAVORECIDO, :TIPOATIVIDADE, :EIN, :SSN, :DATACADASTRO, :' +
        'SITE, '
      ':OBS,  :IMPORTACAO, :LOGOTIPO, :CPF_CNPJ, :INSCRICAO_EST, '
      ':BAIRRO,:TIPOEMPRESA, :INSCRICAO_MUN,   :MUNICIPIO, :PESSOA_FJ, '
      ':NRO)')
    DeleteSQL.Strings = (
      'delete from Favorecidos'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 30
    Top = 53
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'Favorecidos'
    Tabela_Nome = 'Favorecidos'
    Tabela_Chave = 'Favorecido'
  end
  inherited DlgMsg: TDlgMsg
    Left = 103
  end
  inherited P_Tabela: TDataSetProvider
    Left = 28
    Top = 104
  end
  inherited C_Tabela: TClientDataSet
    Left = 31
    Top = 156
    object C_TabelacmbTipoBusiness: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbTipoBusiness'
      LookupDataSet = C_TiposBusiness
      LookupKeyFields = 'TIPOBUSINESS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOATIVIDADE'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_TabelaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      EditMask = '99999-9999;1; '
      Size = 10
    end
    object C_TabelaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Origin = 'FAVORECIDOS.CAIXAPOSTAL'
      Size = 25
    end
    object C_TabelaPAIS: TIntegerField
      FieldName = 'PAIS'
      Origin = 'FAVORECIDOS.PAIS'
    end
    object C_TabelaFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_TabelaFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_TabelaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAVORECIDOS.FAX'
    end
    object C_TabelaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_TabelaCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'FAVORECIDOS.CONTATO'
      Size = 30
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'FAVORECIDOS.EMAIL'
      Size = 40
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_TabelaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Origin = 'FAVORECIDOS.TIPOATIVIDADE'
    end
    object C_TabelaEIN: TStringField
      FieldName = 'EIN'
      Origin = 'FAVORECIDOS.EIN'
      Size = 10
    end
    object C_TabelaSSN: TStringField
      FieldName = 'SSN'
      Origin = 'FAVORECIDOS.SSN'
      Size = 11
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'FAVORECIDOS.DESATIVADO'
      Size = 1
    end
    object C_TabelaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Origin = 'FAVORECIDOS.TIPOENTREGA'
    end
    object C_TabelaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'FAVORECIDOS.DATACADASTRO'
    end
    object C_TabelaSITE: TStringField
      FieldName = 'SITE'
      Origin = 'FAVORECIDOS.SITE'
      Size = 80
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'FAVORECIDOS.OBS'
      Size = 255
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'FAVORECIDOS.IMPORTACAO'
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'FAVORECIDOS.SITUACAO'
      Size = 1
    end
    object C_TabelaLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Origin = 'FAVORECIDOS.LOGOTIPO'
      Size = 50
    end
    object C_TabelaDescUF: TStringField
      FieldKind = fkLookup
      FieldName = 'DescUF'
      LookupDataSet = C_UF
      LookupKeyFields = 'UF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UF'
      Lookup = True
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      OnValidate = C_TabelaCPF_CNPJValidate
      EditMask = '!99.999.999/9999-99;0; '
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
    object C_TabelaTIPOEMPRESA: TStringField
      FieldName = 'TIPOEMPRESA'
      Origin = 'FAVORECIDOS.TIPOEMPRESA'
      Size = 1
    end
    object C_TabelaQ_Empresas: TDataSetField
      FieldName = 'Q_Empresas'
    end
    object C_TabelaINSCRICAO_MUN: TStringField
      FieldName = 'INSCRICAO_MUN'
      Origin = 'FAVORECIDOS.INSCRICAO_MUN'
      Size = 14
    end
    object C_TabelaMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
      Origin = 'FAVORECIDOS.MUNICIPIO'
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
    object C_TabelaPESSOA_FJ: TStringField
      FieldName = 'PESSOA_FJ'
      Origin = 'FAVORECIDOS.PESSOA_FJ'
      Size = 1
    end
    object C_TabelaNRO: TStringField
      FieldName = 'NRO'
      Origin = 'FAVORECIDOS.NRO'
    end
  end
  object Q_TiposBusiness: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPOSBUSINESS')
    Left = 193
    Top = 7
  end
  object C_TiposBusiness: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TiposBusinessProvider'
    Left = 197
    Top = 108
    object C_TiposBusinessDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSBUSINESS.DESCRICAO'
      Size = 30
    end
    object C_TiposBusinessTIPOBUSINESS: TIntegerField
      FieldName = 'TIPOBUSINESS'
      Origin = 'TIPOSBUSINESS.TIPOBUSINESS'
      Required = True
    end
  end
  object Q_TiposBusinessProvider: TDataSetProvider
    DataSet = Q_TiposBusiness
    Constraints = True
    Left = 195
    Top = 58
  end
  object C_UF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UF'
    Left = 304
    Top = 109
    object C_UFUF: TStringField
      FieldName = 'UF'
      Origin = 'UFS.UF'
      Required = True
      Size = 2
    end
    object C_UFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UFS.DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object P_UF: TDataSetProvider
    DataSet = Q_UF
    Constraints = True
    Left = 304
    Top = 58
  end
  object Q_UF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UFS')
    Left = 305
    Top = 9
  end
  object Q_UFDS: TDataSource
    DataSet = C_UF
    Left = 304
    Top = 168
  end
  object C_TiposBusinessDS: TDataSource
    Tag = 100
    DataSet = C_TiposBusiness
    Left = 200
    Top = 164
  end
  object C_Empresas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Empresas
    Params = <>
    OnNewRecord = C_EmpresasNewRecord
    Left = 379
    Top = 115
    object C_EmpresasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'EMPRESAS.FAVORECIDO'
      Required = True
    end
    object C_EmpresasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'EMPRESAS.NUMERO'
      Size = 5
    end
    object C_EmpresasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'EMPRESAS.COMPLEMENTO'
      Size = 25
    end
    object C_EmpresasDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'EMPRESAS.DATAINICIO'
    end
    object C_EmpresasCPF_CNPJ_CONTADOR: TStringField
      FieldName = 'CPF_CNPJ_CONTADOR'
      Origin = 'EMPRESAS.CPF_CNPJ_CONTADOR'
      Size = 14
    end
    object C_EmpresasCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Origin = 'EMPRESAS.CRC_CONTADOR'
      Size = 10
    end
    object C_EmpresasNOME_CONTADOR: TStringField
      FieldName = 'NOME_CONTADOR'
      Origin = 'EMPRESAS.NOME_CONTADOR'
      Size = 40
    end
    object C_EmpresasFONE_CONTADOR: TStringField
      FieldName = 'FONE_CONTADOR'
      Origin = 'EMPRESAS.FONE_CONTADOR'
      Size = 12
    end
    object C_EmpresasEMAIL_CONTADOR: TStringField
      FieldName = 'EMAIL_CONTADOR'
      Origin = 'EMPRESAS.EMAIL_CONTADOR'
      Size = 40
    end
    object C_EmpresasCAE: TStringField
      FieldName = 'CAE'
      Origin = 'EMPRESAS.CAE'
      Size = 10
    end
    object C_EmpresasCONTRIBIPI: TStringField
      FieldName = 'CONTRIBIPI'
      Origin = 'EMPRESAS.CONTRIBIPI'
      Size = 1
    end
    object C_EmpresasSUBSTITUTOTRIB: TStringField
      FieldName = 'SUBSTITUTOTRIB'
      Origin = 'EMPRESAS.SUBSTITUTOTRIB'
      Size = 1
    end
    object C_EmpresasNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      Origin = 'EMPRESAS.NOME_RESPONSAVEL'
      Size = 40
    end
    object C_EmpresasFONE_RESPONSAVEL: TStringField
      FieldName = 'FONE_RESPONSAVEL'
      Origin = 'EMPRESAS.FONE_RESPONSAVEL'
      Size = 12
    end
    object C_EmpresasEMAIL_RESPONSAVEL: TStringField
      FieldName = 'EMAIL_RESPONSAVEL'
      Origin = 'EMPRESAS.EMAIL_RESPONSAVEL'
      Size = 40
    end
    object C_EmpresasCPF_RESPONSAVEL: TStringField
      FieldName = 'CPF_RESPONSAVEL'
      Origin = 'EMPRESAS.CPF_RESPONSAVEL'
      Size = 14
    end
    object C_EmpresasENDERECO_RESPONSAVEL: TStringField
      FieldName = 'ENDERECO_RESPONSAVEL'
      Origin = 'EMPRESAS.ENDERECO_RESPONSAVEL'
      Size = 50
    end
    object C_EmpresasCIDADE_RESPONSAVEL: TStringField
      FieldName = 'CIDADE_RESPONSAVEL'
      Origin = 'EMPRESAS.CIDADE_RESPONSAVEL'
      Size = 30
    end
    object C_EmpresasUF_RESPONSAVEL: TStringField
      FieldName = 'UF_RESPONSAVEL'
      Origin = 'EMPRESAS.UF_RESPONSAVEL'
      Size = 2
    end
    object C_EmpresasCEP_RESPONSAVEL: TStringField
      FieldName = 'CEP_RESPONSAVEL'
      Origin = 'EMPRESAS.CEP_RESPONSAVEL'
      Size = 10
    end
    object C_EmpresasBAIRRO_RESPONSAVEL: TStringField
      FieldName = 'BAIRRO_RESPONSAVEL'
      Origin = 'EMPRESAS.BAIRRO_RESPONSAVEL'
      Size = 30
    end
    object C_EmpresasREVENDA: TStringField
      FieldName = 'REVENDA'
      Origin = 'EMPRESAS.REVENDA'
      Size = 4
    end
    object C_EmpresasESTACOES: TIntegerField
      FieldName = 'ESTACOES'
      Origin = 'EMPRESAS.ESTACOES'
    end
    object C_EmpresasALIQCREDITOSN: TBCDField
      FieldName = 'ALIQCREDITOSN'
      Origin = 'EMPRESAS.ALIQCREDITOSN'
      Precision = 18
      Size = 2
    end
    object C_EmpresasINSCRICAO_EST_SUB: TStringField
      FieldName = 'INSCRICAO_EST_SUB'
      Origin = 'EMPRESAS.INSCRICAO_EST_SUB'
      Size = 14
    end
    object C_EmpresaslkpCNAE: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpCNAE'
      LookupDataSet = C_CNAES
      LookupKeyFields = 'CNAE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CNAE'
      Size = 50
      Lookup = True
    end
    object C_EmpresasCNAE: TIntegerField
      FieldName = 'CNAE'
      Origin = 'EMPRESAS.CNAE'
    end
    object C_EmpresasCODIGODAREVENDA: TStringField
      FieldName = 'CODIGODAREVENDA'
      Origin = 'EMPRESAS.CODIGODAREVENDA'
    end
    object C_EmpresasMUN_IBGE_CONTADOR: TIntegerField
      FieldName = 'MUN_IBGE_CONTADOR'
      Origin = 'EMPRESAS.MUN_IBGE_CONTADOR'
    end
    object C_EmpresaslkpContadorIBGE: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpContadorIBGE'
      LookupDataSet = C_Municipio_ContadorIBGE
      LookupKeyFields = 'MUNICIPIO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MUN_IBGE_CONTADOR'
      Lookup = True
    end
    object C_EmpresasCSC: TStringField
      FieldName = 'CSC'
      Origin = 'EMPRESAS.CSC'
      Size = 100
    end
    object C_EmpresasFLEXDOCS: TStringField
      FieldName = 'FLEXDOCS'
      Origin = 'EMPRESAS.FLEXDOCS'
      Size = 255
    end
  end
  object Q_Empresas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from empresas'
      'where favorecido = :FAVORECIDO'
      '')
    UpdateObject = U_Empresas
    Left = 381
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Empresas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from empresas '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update empresas'
      'set'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  DATAINICIO = :DATAINICIO,'
      '  CPF_CNPJ_CONTADOR = :CPF_CNPJ_CONTADOR,'
      '  CRC_CONTADOR = :CRC_CONTADOR,'
      '  NOME_CONTADOR = :NOME_CONTADOR,'
      '  FONE_CONTADOR = :FONE_CONTADOR,'
      '  EMAIL_CONTADOR = :EMAIL_CONTADOR,'
      '  CAE = :CAE,'
      '  CONTRIBIPI = :CONTRIBIPI,'
      '  SUBSTITUTOTRIB = :SUBSTITUTOTRIB,'
      '  NOME_RESPONSAVEL = :NOME_RESPONSAVEL,'
      '  FONE_RESPONSAVEL = :FONE_RESPONSAVEL,'
      '  EMAIL_RESPONSAVEL = :EMAIL_RESPONSAVEL,'
      '  CPF_RESPONSAVEL = :CPF_RESPONSAVEL,'
      '  ENDERECO_RESPONSAVEL = :ENDERECO_RESPONSAVEL,'
      '  CIDADE_RESPONSAVEL = :CIDADE_RESPONSAVEL,'
      '  UF_RESPONSAVEL = :UF_RESPONSAVEL,'
      '  CEP_RESPONSAVEL = :CEP_RESPONSAVEL,'
      '  BAIRRO_RESPONSAVEL = :BAIRRO_RESPONSAVEL,'
      '  ESTACOES = :ESTACOES,'
      '  REVENDA = :REVENDA,'
      '  CNAE = :CNAE,'
      '  INSCRICAO_EST_SUB = :INSCRICAO_EST_SUB,'
      '  MUN_IBGE_CONTADOR = :MUN_IBGE_CONTADOR,'
      '  CODIGODAREVENDA = :CODIGODAREVENDA,'
      '  ALIQCREDITOSN = :ALIQCREDITOSN, '
      '  CSC = :CSC,'
      '  FLEXDOCS = :FLEXDOCS'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into empresas'
      '  (NUMERO, COMPLEMENTO, DATAINICIO, CPF_CNPJ_CONTADOR, '
      'CRC_CONTADOR, NOME_CONTADOR, '
      
        '   FONE_CONTADOR, EMAIL_CONTADOR, CAE, CONTRIBIPI, SUBSTITUTOTRI' +
        'B, '
      'NOME_RESPONSAVEL, '
      '   FONE_RESPONSAVEL, EMAIL_RESPONSAVEL, CPF_RESPONSAVEL, '
      'ENDERECO_RESPONSAVEL, '
      '   CIDADE_RESPONSAVEL, UF_RESPONSAVEL, CEP_RESPONSAVEL, '
      'BAIRRO_RESPONSAVEL, '
      
        '   ESTACOES, REVENDA, CNAE, INSCRICAO_EST_SUB, MUN_IBGE_CONTADOR' +
        ', '
      'CODIGODAREVENDA, ALIQCREDITOSN, CSC, FLEXDOCS)'
      'values'
      '  (:NUMERO, :COMPLEMENTO, :DATAINICIO, :CPF_CNPJ_CONTADOR, '
      ':CRC_CONTADOR, '
      '   :NOME_CONTADOR, :FONE_CONTADOR, :EMAIL_CONTADOR, :CAE, '
      ':CONTRIBIPI, '
      '   :SUBSTITUTOTRIB, :NOME_RESPONSAVEL, :FONE_RESPONSAVEL, '
      ':EMAIL_RESPONSAVEL, '
      
        '   :CPF_RESPONSAVEL, :ENDERECO_RESPONSAVEL, :CIDADE_RESPONSAVEL,' +
        ' '
      ':UF_RESPONSAVEL, '
      '   :CEP_RESPONSAVEL, :BAIRRO_RESPONSAVEL, :ESTACOES, :REVENDA, '
      ':CNAE, :INSCRICAO_EST_SUB, '
      '   :MUN_IBGE_CONTADOR, :CODIGODAREVENDA, :ALIQCREDITOSN, :CSC, '
      ':FLEXDOCS)')
    DeleteSQL.Strings = (
      'delete from empresas'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 381
    Top = 176
  end
  object P_Empresas: TDataSetProvider
    DataSet = Q_Empresas
    Constraints = True
    Left = 380
    Top = 60
  end
  object ppDBC_TabelaDS: TppDBPipeline
    DataSource = C_TabelaDS
    UserName = 'DBC_TabelaDS'
    Left = 492
    Top = 20
  end
  object ppDBC_EmpresasDS: TppDBPipeline
    DataSource = C_EmpresasDs
    UserName = 'DBC_EmpresasDS'
    Left = 492
    Top = 76
  end
  object ppRegistro: TppReport
    AutoStop = False
    DataPipeline = ppDBC_TabelaDS
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    Left = 492
    Top = 130
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBC_TabelaDS'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 25929
        mmLeft = 265
        mmTop = 265
        mmWidth = 197380
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Informa'#231#245'es para registro do sistema'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 55827
        mmTop = 28046
        mmWidth = 87842
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 190765
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 794
        mmTop = 110861
        mmWidth = 196057
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 794
        mmTop = 72496
        mmWidth = 196057
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 794
        mmTop = 529
        mmWidth = 196057
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Informa'#231#245'es da Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 529
        mmWidth = 65088
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 19844
        mmTop = 8467
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Nome de Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 10319
        mmTop = 14023
        mmWidth = 35983
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'CPF_CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 23283
        mmTop = 19579
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 26988
        mmTop = 36248
        mmWidth = 19315
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 33602
        mmTop = 41804
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 31485
        mmTop = 47361
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'C.E.P:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 34131
        mmTop = 52917
        mmWidth = 12171
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Inscri'#231#227'o Munic.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 14288
        mmTop = 30692
        mmWidth = 32015
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Inscri'#231#227'o Estad.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 14817
        mmTop = 25135
        mmWidth = 31485
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 35454
        mmTop = 58473
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'E-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 33073
        mmTop = 64029
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        OnGetText = ppDBText1GetText
        AutoSize = True
        DataField = 'RAZAO'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 8467
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 58473
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'EMAIL'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 64029
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'CEP'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 52917
        mmWidth = 7620
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'CIDADE'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 47361
        mmWidth = 15240
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'BAIRRO'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 41804
        mmWidth = 15240
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'ENDERECO'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 36248
        mmWidth = 20320
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'INSCRICAO_MUN'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 30692
        mmWidth = 33020
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'INSCRICAO_EST'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 25135
        mmWidth = 33020
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 19579
        mmWidth = 20320
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'NOME'
        DataPipeline = ppDBC_TabelaDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBC_TabelaDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 14023
        mmWidth = 10160
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Informa'#231#245'es do Contador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 72496
        mmWidth = 69056
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Nome do Contador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 9260
        mmTop = 79640
        mmWidth = 37042
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'CPF_CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 23283
        mmTop = 85196
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'CRC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 35983
        mmTop = 90752
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'E-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 33073
        mmTop = 101865
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label101'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 35454
        mmTop = 96309
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'NOME_CONTADOR'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 79904
        mmWidth = 33020
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        DataField = 'EMAIL_CONTADOR'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 102129
        mmWidth = 35454
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        DataField = 'FONE_CONTADOR'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 96573
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText101'
        AutoSize = True
        DataField = 'CRC_CONTADOR'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 91017
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        DataField = 'CPF_CNPJ_CONTADOR'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 85461
        mmWidth = 43127
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Informa'#231#245'es do Respons'#225'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 110861
        mmWidth = 78052
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 33867
        mmTop = 118798
        mmWidth = 12435
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 36777
        mmTop = 124354
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 26988
        mmTop = 129911
        mmWidth = 19315
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'C.E.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 32808
        mmTop = 146579
        mmWidth = 13494
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 31485
        mmTop = 141023
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label102'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 33602
        mmTop = 135467
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 35454
        mmTop = 152400
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'E-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 33073
        mmTop = 157957
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        DataField = 'NOME_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 118798
        mmWidth = 40640
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        DataField = 'FONE_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 152665
        mmWidth = 40640
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        DataField = 'EMAIL_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 158221
        mmWidth = 43180
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'CEP_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 146844
        mmWidth = 38100
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        DataField = 'CIDADE_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 141288
        mmWidth = 45720
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'BAIRRO_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 135467
        mmWidth = 45720
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText102'
        AutoSize = True
        DataField = 'ENDERECO_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 129911
        mmWidth = 50800
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        DataField = 'CPF_RESPONSAVEL'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 124354
        mmWidth = 38100
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 265
        mmTop = 164571
        mmWidth = 196057
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Informa'#231#245'es do Sistema:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 164571
        mmWidth = 61119
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label201'
        Caption = 'Revenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 171186
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Esta'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 176742
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Vers'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 182298
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        AutoSize = True
        DataField = 'REVENDA'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 171186
        mmWidth = 17780
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        AutoSize = True
        DataField = 'ESTACOES'
        DataPipeline = ppDBC_EmpresasDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBC_EmpresasDS'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 176742
        mmWidth = 20320
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel33GetText
        Caption = 'Versao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 182298
        mmWidth = 15081
        BandType = 4
      end
    end
  end
  object C_EmpresasDs: TDataSource
    DataSet = C_Empresas
    Left = 382
    Top = 226
  end
  object Q_CNAES: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cnae, CODIGO||'#39'-'#39'||DESCRICAO AS DESCRICAO from CNAES'
      'order by descricao')
    Left = 585
    Top = 25
  end
  object P_CNAES: TDataSetProvider
    DataSet = Q_CNAES
    Constraints = True
    Left = 585
    Top = 76
  end
  object C_CNAES: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CNAES'
    Left = 587
    Top = 126
    object C_CNAESCNAE: TIntegerField
      FieldName = 'CNAE'
      Origin = 'CNAES.CNAE'
      Required = True
    end
    object C_CNAESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 521
    end
  end
  object C_CNAESDs: TDataSource
    Tag = 100
    DataSet = C_CNAES
    Left = 580
    Top = 184
  end
  object Q_Municipios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM MUNICIPIOS M WHERE M.coduf = ('
      
        'SELECT MAX(U.cduf) FROM FAVORECIDOS F INNER JOIN UFS U ON U.uf =' +
        ' F.uf'
      'WHERE FAVORECIDO = -1)'
      'ORDER BY M.descricao')
    Left = 691
    Top = 27
  end
  object P_Municipios: TDataSetProvider
    DataSet = Q_Municipios
    Constraints = True
    Left = 691
    Top = 78
  end
  object C_Municipios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Municipios'
    Left = 693
    Top = 128
    object C_MunicipiosMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIOS.MUNICIPIO'
      Required = True
    end
    object C_MunicipiosCODUF: TIntegerField
      FieldName = 'CODUF'
      Origin = 'MUNICIPIOS.CODUF'
    end
    object C_MunicipiosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MUNICIPIOS.DESCRICAO'
      Size = 500
    end
  end
  object C_MunicipiosDs: TDataSource
    Tag = 100
    DataSet = C_Municipios
    Left = 690
    Top = 186
  end
  object Q_Municipio_ContadorIBGE: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT M.municipio, m.coduf, u.UF ||'#39'-'#39'|| m.descricao as Descric' +
        'ao'
      'FROM MUNICIPIOS M inner join ufs u on u.cduf = m.coduf'
      'ORDER BY u.uf ,M.descricao')
    Left = 819
    Top = 19
  end
  object P_Municipio_ContadorIBGE: TDataSetProvider
    DataSet = Q_Municipio_ContadorIBGE
    Constraints = True
    Left = 819
    Top = 78
  end
  object C_Municipio_ContadorIBGE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Municipio_ContadorIBGE'
    Left = 821
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIOS.MUNICIPIO'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODUF'
      Origin = 'MUNICIPIOS.CODUF'
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MUNICIPIOS.DESCRICAO'
      Size = 500
    end
  end
  object C_Municipio_ContadorIBGEDS: TDataSource
    Tag = 100
    DataSet = C_Municipio_ContadorIBGE
    Left = 818
    Top = 186
  end
end

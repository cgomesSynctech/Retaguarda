inherited DMGrupos: TDMGrupos
  Left = 394
  Top = 47
  Height = 654
  Width = 931
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Grupos')
    Left = 33
    Top = 6
  end
  inherited Q_MasterDS: TDataSource
    Left = 105
    Top = 6
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Grupos '
      'where'
      '  GRUPO = :GRUPO')
    ModifySQL.Strings = (
      'update Grupos'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOGRUPO = :DESCRICAOGRUPO,'
      '  TIPOITEM = :TIPOITEM,'
      '  FOTO = :FOTO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  COMISSAO = :COMISSAO,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  CST = :CST,'
      '  ALIQICMS = :ALIQICMS,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  SITUACAOECF = :SITUACAOECF,'
      '  TVA = :TVA,'
      '  TVAFONTE = :TVAFONTE,'
      '  DTHALTERACAO = :DTHALTERACAO,'
      '  GRUPOPAI = :GRUPOPAI,'
      'ORIGEMMERCADORIA = :ORIGEMMERCADORIA,       '
      'MODALIDADEBCICMS = :MODALIDADEBCICMS,   '
      'MODALIDADEBCICMSST = :MODALIDADEBCICMSST, '
      'CSTPISCOFINS = :CSTPISCOFINS,       '
      'ALIQPIS = :ALIQPIS,            '
      'ALIQCOFINS = :ALIQCOFINS,         '
      'CSTIPI = :CSTIPI,             '
      'GENERO = :GENERO,             '
      'ALIQIR = :ALIQIR,            '
      'ALIQSS = :ALIQSS,'
      'IDTRIBFEDERAL = :IDTRIBFEDERAL,'
      'IPICOMPRA = :IPICOMPRA,'
      'IPIVENDA = :IPIVENDA, '
      'ALIQPISSAIDA = :ALIQPISSAIDA,'
      'ALIQCOFINSSAIDA = :ALIQCOFINSSAIDA,'
      'CSTPISCOFINSSAIDA = :CSTPISCOFINSSAIDA,'
      'NATURAZARECEITAPISCOFINS = :NATURAZARECEITAPISCOFINS,'
      'VINCULOCREDITOPISCOFINS = :VINCULOCREDITOPISCOFINS,'
      'BASECREDITOPISCOFINS = :BASECREDITOPISCOFINS,'
      'PISCOFINS = :PISCOFINS,'
      'DESPESASFIXAS = :DESPESASFIXAS,    '
      'ENCARGOSCARTOES = :ENCARGOSCARTOES, '
      'COMISSAOAPLICADA = :COMISSAOAPLICADA,'
      'IMPOSTOSFEDERAIS = :IMPOSTOSFEDERAIS,'
      'MENORVALORVENDA= :MENORVALORVENDA,'
      'NCM = :NCM'
      ''
      'where'
      '  GRUPO = :OLD_GRUPO')
    InsertSQL.Strings = (
      'insert into Grupos'
      
        '  (GRUPO, CODIGO, DESCRICAOGRUPO, TIPOITEM, FOTO, DESCONTOMAXIMO' +
        ', '
      '  COMISSAO, CUSTODESPESAS, FATORLUCRO, CST, ALIQICMS,'
      '  REDUCAOCST, SITUACAOECF, TVA, TVAFONTE,DTHALTERACAO,GRUPOPAI,'
      'ORIGEMMERCADORIA,MODALIDADEBCICMS, '
      'MODALIDADEBCICMSST,CSTPISCOFINS,       '
      'ALIQPIS,ALIQCOFINS,CSTIPI,GENERO,ALIQIR,ALIQSS, IDTRIBFEDERAL,'
      'IPICOMPRA,IPIVENDA  , '
      'CSTPISCOFINSSAIDA,NATURAZARECEITAPISCOFINS,'
      'ALIQPISSAIDA,ALIQCOFINSSAIDA,VINCULOCREDITOPISCOFINS '
      ',BASECREDITOPISCOFINS, PISCOFINS, DESPESASFIXAS ,    '
      'ENCARGOSCARTOES, COMISSAOAPLICADA, '
      'IMPOSTOSFEDERAIS,MENORVALORVENDA, NCM )'
      'values'
      '  (:GRUPO, :CODIGO, :DESCRICAOGRUPO, :TIPOITEM, :FOTO,'
      '   :DESCONTOMAXIMO, :COMISSAO, :CUSTODESPESAS,'
      '   :FATORLUCRO, :CST, :ALIQICMS,  :REDUCAOCST,'
      '   :SITUACAOECF, :TVA, :TVAFONTE,:DTHALTERACAO,:GRUPOPAI,'
      ':ORIGEMMERCADORIA,:MODALIDADEBCICMS, '
      ':MODALIDADEBCICMSST,:CSTPISCOFINS,       '
      
        ':ALIQPIS,:ALIQCOFINS,:CSTIPI,:GENERO,:ALIQIR,:ALIQSS,  :IDTRIBFE' +
        'DERAL,'
      ':IPICOMPRA,:IPIVENDA, '
      ':CSTPISCOFINSSAIDA,:NATURAZARECEITAPISCOFINS,'
      ':ALIQPISSAIDA, :ALIQCOFINSSAIDA, '
      ':VINCULOCREDITOPISCOFINS, :BASECREDITOPISCOFINS, :PISCOFINS, '
      ':DESPESASFIXAS ,    :ENCARGOSCARTOES, :COMISSAOAPLICADA, '
      ':IMPOSTOSFEDERAIS, :MENORVALORVENDA, :NCM  )')
    DeleteSQL.Strings = (
      'delete from Grupos'
      'where'
      '  GRUPO = :OLD_GRUPO')
    Left = 34
    Top = 57
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    AposIniciar = DMComponentAposIniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'Grupos'
    Tabela_Nome = 'Grupos'
    Tabela_Chave = 'Grupo'
    GenerateIDFor.Strings = (
      'C_TabelasGrupos=TabelaGrupo')
    DeleteValidate.Strings = (
      'Itens=grupo')
    Left = 34
  end
  inherited P_Tabela: TDataSetProvider
    Left = 33
    Top = 105
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    Top = 162
    object C_TabelaGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'GRUPOS.CODIGO'
      OnValidate = C_TabelaCODIGOValidate
      Size = 10
    end
    object C_TabelaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Required = True
      OnValidate = C_TabelaDESCRICAOGRUPOValidate
      Size = 30
    end
    object C_TabelaTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'GRUPOS.TIPOITEM'
      Required = True
      OnChange = C_TabelaTIPOITEMChange
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'GRUPOS.IMPORTACAO'
    end
    object C_TabelaFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'GRUPOS.FOTO'
      Size = 255
    end
    object C_TabelaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'GRUPOS.COMISSAO'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'GRUPOS.DESCONTOMAXIMO'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'GRUPOS.CUSTODESPESAS'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaFATORLUCRO: TBCDField
      FieldName = 'FATORLUCRO'
      Origin = 'GRUPOS.FATORLUCRO'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaicDespesaFixa: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDespesaFixa'
      DisplayFormat = '##0.0# %'
    end
    object C_TabelaicEncargosCartoes: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icEncargosCartoes'
      DisplayFormat = '##0.0# %'
    end
    object C_TabelaicComissaoAplic: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icComissaoAplic'
      DisplayFormat = '##0.0# %'
    end
    object C_TabelaicImpostosFederais: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icImpostosFederais'
      Size = 2
    end
    object C_TabelaicFator: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icFator'
    end
    object C_TabelaicComissao: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icComissao'
      DisplayFormat = '##0.0# %'
    end
    object C_TabelaicDescontoMaximo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDescontoMaximo'
      DisplayFormat = '##0.0# %'
    end
    object C_TabelaicFatorLucro: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icFatorLucro'
      DisplayFormat = '##0.0# %'
    end
    object C_TabelaicICMSAplicado: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icICMSAplicado'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
    object C_TabelaCST: TStringField
      FieldName = 'CST'
      Origin = 'GRUPOS.CST'
      OnChange = C_TabelaCSTChange
      Size = 3
    end
    object C_TabelaREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'GRUPOS.REDUCAOCST'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'GRUPOS.ALIQICMS'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'GRUPOS.SITUACAOECF'
      OnChange = C_TabelaSITUACAOECFChange
      Size = 1
    end
    object C_TabelaTVA: TBCDField
      FieldName = 'TVA'
      Origin = 'GRUPOS.TVA'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      Origin = 'GRUPOS.TVAFONTE'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaDTHALTERACAO: TDateTimeField
      FieldName = 'DTHALTERACAO'
    end
    object C_TabelalkCST: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCST'
      LookupDataSet = C_CSTs
      LookupKeyFields = 'CST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CST'
      Size = 60
      Lookup = True
    end
    object C_TabelacmbTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbTipo'
      LookupDataSet = C_TiposItens
      LookupKeyFields = 'TIPOITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOITEM'
      Size = 30
      Lookup = True
    end
    object C_TabelalkSitECF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkSitECF'
      LookupDataSet = C_SitECF
      LookupKeyFields = 'SITUACAOECF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'SITUACAOECF'
      Size = 25
      Lookup = True
    end
    object C_TabelaQ_TabelasGrupos: TDataSetField
      FieldName = 'Q_TabelasGrupos'
    end
    object C_TabelaGRUPOPAI: TIntegerField
      FieldName = 'GRUPOPAI'
    end
    object C_TabelalkGrupoPai: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupoPai'
      LookupDataSet = C_GrupoPAI
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPOPAI'
      Size = 50
      Lookup = True
    end
    object C_TabelaMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
    end
    object C_TabelaMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
    end
    object C_TabelaCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Size = 2
    end
    object C_TabelaALIQPIS: TBCDField
      FieldName = 'ALIQPIS'
      Precision = 18
      Size = 2
    end
    object C_TabelaALIQCOFINS: TBCDField
      FieldName = 'ALIQCOFINS'
      Precision = 18
      Size = 2
    end
    object C_TabelaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object C_TabelaGENERO: TStringField
      FieldName = 'GENERO'
      Size = 2
    end
    object C_TabelaALIQIR: TBCDField
      FieldName = 'ALIQIR'
      Precision = 18
      Size = 2
    end
    object C_TabelalkCSTPISCONFINS: TStringField
      DisplayWidth = 200
      FieldKind = fkLookup
      FieldName = 'lkCSTPISCONFINS'
      LookupDataSet = C_CstPisCofins
      LookupKeyFields = 'CSTPISCOFINS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTPISCOFINS'
      Size = 50
      Lookup = True
    end
    object C_TabelalkCSTSIPI: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCSTSIPI'
      LookupDataSet = C_CstsIPI
      LookupKeyFields = 'CSTIPI'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTIPI'
      Size = 50
      Lookup = True
    end
    object C_TabelalkGeneros: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGeneros'
      LookupDataSet = C_Generos
      LookupKeyFields = 'GENERO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GENERO'
      Size = 50
      Lookup = True
    end
    object C_TabelalkOrigem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkOrigem'
      LookupDataSet = C_Origem
      LookupKeyFields = 'ORIGEMMERCADORIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ORIGEMMERCADORIA'
      Size = 50
      Lookup = True
    end
    object C_TabelalkModalidadeICMS: TStringField
      FieldKind = fkLookup
      FieldName = 'lkModalidadeICMS'
      LookupDataSet = C_MODALIDADESBCICMS
      LookupKeyFields = 'MODALIDADEBCICMS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MODALIDADEBCICMS'
      Size = 50
      Lookup = True
    end
    object C_TabelalkModaledadeICMSST: TStringField
      FieldKind = fkLookup
      FieldName = 'lkModaledadeICMSST'
      LookupDataSet = C_MODALIDADESBCICMSST
      LookupKeyFields = 'MODALIDADEBCICMSST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MODALIDADEBCICMSST'
      Size = 50
      Lookup = True
    end
    object C_TabelaALIQSS: TBCDField
      FieldName = 'ALIQSS'
      Precision = 18
      Size = 2
    end
    object C_TabelaIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
    end
    object C_TabelaORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
    end
    object C_TabelaIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      Precision = 18
      Size = 2
    end
    object C_TabelalkTibFederalID: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTibFederalID'
      LookupDataSet = C_TribFederal
      LookupKeyFields = 'IDTRIBFEDERAL'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'IDTRIBFEDERAL'
      Lookup = True
    end
    object C_TabelaCSTPISCOFINSSAIDA: TStringField
      FieldName = 'CSTPISCOFINSSAIDA'
      Size = 2
    end
    object C_TabelaNATURAZARECEITAPISCOFINS: TIntegerField
      FieldName = 'NATURAZARECEITAPISCOFINS'
    end
    object C_TabelaALIQPISSAIDA: TFloatField
      FieldName = 'ALIQPISSAIDA'
    end
    object C_TabelaALIQCOFINSSAIDA: TFloatField
      FieldName = 'ALIQCOFINSSAIDA'
    end
    object C_TabelaVINCULOCREDITOPISCOFINS: TStringField
      FieldName = 'VINCULOCREDITOPISCOFINS'
      Size = 3
    end
    object C_TabelaBASECREDITOPISCOFINS: TStringField
      FieldName = 'BASECREDITOPISCOFINS'
      Size = 2
    end
    object C_TabelalkcstPisCofinsSaidas: TStringField
      FieldKind = fkLookup
      FieldName = 'lkcstPisCofinsSaidas'
      LookupDataSet = C_CstPisCofinsSAIDA
      LookupKeyFields = 'CSTPISCOFINS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTPISCOFINSSAIDA'
      Size = 200
      Lookup = True
    end
    object C_TabelalkNaturezareceita: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNaturezareceita'
      LookupDataSet = C_NaturezaReceitaPisCofins
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'NATURAZARECEITAPISCOFINS'
      Size = 200
      Lookup = True
    end
    object C_TabelaPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TabelaDESPESASFIXAS: TBCDField
      FieldName = 'DESPESASFIXAS'
      Precision = 18
      Size = 2
    end
    object C_TabelaENCARGOSCARTOES: TBCDField
      FieldName = 'ENCARGOSCARTOES'
      Precision = 18
      Size = 2
    end
    object C_TabelaCOMISSAOAPLICADA: TBCDField
      FieldName = 'COMISSAOAPLICADA'
      Precision = 18
      Size = 2
    end
    object C_TabelaIMPOSTOSFEDERAIS: TBCDField
      FieldName = 'IMPOSTOSFEDERAIS'
      Precision = 18
      Size = 2
    end
    object C_TabelaMENORVALORVENDA: TBCDField
      FieldName = 'MENORVALORVENDA'
      Precision = 18
      Size = 3
    end
    object C_TabelaNCM: TStringField
      FieldName = 'NCM'
      Size = 255
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 33
  end
  inherited ResultSet: TClientDataSet
    Left = 105
    Top = 56
  end
  object Q_TiposItem: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPOSITENS')
    Left = 187
    Top = 6
  end
  object P_TiposItens: TDataSetProvider
    DataSet = Q_TiposItem
    Constraints = True
    Left = 187
    Top = 50
  end
  object C_TiposItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposItens'
    Left = 187
    Top = 95
    object C_TiposItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOSITENS.TIPOITEM'
      Required = True
    end
    object C_TiposItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSITENS.DESCRICAO'
      Size = 30
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 101
    Top = 147
  end
  object Q_SitECF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from situacoesecf'
      'where situacaoecf not in ('#39'C'#39','#39'D'#39')')
    Left = 345
    Top = 9
  end
  object P_SitECF: TDataSetProvider
    DataSet = Q_SitECF
    Constraints = True
    Left = 345
    Top = 55
  end
  object C_SitECF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SitECF'
    Left = 345
    Top = 105
    object C_SitECFSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'SITUACOESECF.SITUACAOECF'
      Required = True
      Size = 1
    end
    object C_SitECFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'SITUACOESECF.DESCRICAO'
      Size = 25
    end
  end
  object Q_CSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from csts'
      'order by cst')
    Left = 273
    Top = 8
  end
  object P_CSTs: TDataSetProvider
    DataSet = Q_CSTs
    Constraints = True
    Left = 275
    Top = 56
  end
  object C_CSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs'
    Left = 276
    Top = 104
    object C_CSTsCST: TStringField
      FieldName = 'CST'
      Required = True
      Size = 3
    end
    object C_CSTsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
  end
  object C_CSTsDS: TDataSource
    DataSet = C_CSTs
    Left = 274
    Top = 151
  end
  object Q_TabelasGrupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select tabelagrupo, grupo, tabelapreco, percentual'
      'from tabelasgrupos'
      'where grupo = :GRUPO')
    UpdateObject = U_TabelasGrupos
    Left = 424
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_TabelasGrupos: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = C_TabelasGruposNewRecord
    Left = 432
    Top = 56
    object C_TabelasGruposTABELAGRUPO: TIntegerField
      FieldName = 'TABELAGRUPO'
      Origin = 'TABELASGRUPOS.TABELAGRUPO'
      Required = True
    end
    object C_TabelasGruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'TABELASGRUPOS.GRUPO'
    end
    object C_TabelasGruposTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'TABELASGRUPOS.TABELAPRECO'
      OnValidate = C_TabelasGruposTABELAPRECOValidate
    end
    object C_TabelasGruposPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'TABELASGRUPOS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelasGruposlkTabelaPreco: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabelaPreco'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 25
      Lookup = True
    end
  end
  object C_TabelasGruposDS: TDataSource
    DataSet = C_TabelasGrupos
    Left = 432
    Top = 112
  end
  object U_TabelasGrupos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from tabelasgrupos '
      'where'
      '  TABELAGRUPO = :TABELAGRUPO')
    ModifySQL.Strings = (
      'update tabelasgrupos'
      'set'
      '  GRUPO = :GRUPO,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  PERCENTUAL = :PERCENTUAL'
      'where'
      '  TABELAGRUPO = :OLD_TABELAGRUPO')
    InsertSQL.Strings = (
      'insert into tabelasgrupos'
      '  (TABELAGRUPO, GRUPO, TABELAPRECO, PERCENTUAL)'
      'values'
      '  (:TABELAGRUPO, :GRUPO, :TABELAPRECO, :PERCENTUAL)')
    DeleteSQL.Strings = (
      'delete from tabelasgrupos'
      'where'
      '  TABELAGRUPO = :OLD_TABELAGRUPO')
    Left = 432
    Top = 160
  end
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tabelapreco, descricao'
      'from tabelaspreco'
      'where baseada = '#39'S'#39
      'order by 2')
    Left = 531
    Top = 8
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Left = 531
    Top = 56
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 531
    Top = 104
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object Q_GrupoPAI: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select grupo,descricaogrupo from grupos'
      'order by codigo')
    Left = 611
    Top = 14
  end
  object P_GrupoPAI: TDataSetProvider
    DataSet = Q_GrupoPAI
    Constraints = True
    Left = 611
    Top = 64
  end
  object C_GrupoPAI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GrupoPAI'
    Left = 611
    Top = 113
    object C_GrupoPAIGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object C_GrupoPAIDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
  end
  object Q_MODALIDADESBCICMSST: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MODALIDADESBCICMSST'
      'order by descricao')
    Left = 351
    Top = 471
  end
  object Q_MODALIDADESBCICMS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MODALIDADESBCICMS'
      'order by descricao')
    Left = 353
    Top = 421
  end
  object Q_Origem: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from OrigensMercadoria'
      'order by descricao')
    Left = 353
    Top = 373
  end
  object Q_Generos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from Generos'
      'order by descricao')
    Left = 357
    Top = 323
  end
  object Q_CstsIPI: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.cstipi, c.cstipi || '#39' - '#39' || c.descricao as Descricao'
      'from CstsIPI c'
      'order by CSTIPI')
    Left = 355
    Top = 265
  end
  object P_CstsIPI: TDataSetProvider
    DataSet = Q_CstsIPI
    Constraints = True
    Left = 439
    Top = 265
  end
  object P_Generos: TDataSetProvider
    DataSet = Q_Generos
    Constraints = True
    Left = 441
    Top = 319
  end
  object P_Origem: TDataSetProvider
    DataSet = Q_Origem
    Constraints = True
    Left = 441
    Top = 369
  end
  object P_MODALIDADESBCICMS: TDataSetProvider
    DataSet = Q_MODALIDADESBCICMS
    Constraints = True
    Left = 441
    Top = 421
  end
  object P_MODALIDADESBCICMSST: TDataSetProvider
    DataSet = Q_MODALIDADESBCICMSST
    Constraints = True
    Left = 441
    Top = 471
  end
  object C_MODALIDADESBCICMSST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MODALIDADESBCICMSST'
    Left = 546
    Top = 471
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_MODALIDADESBCICMSSTMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
      Required = True
    end
  end
  object C_MODALIDADESBCICMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MODALIDADESBCICMS'
    Left = 546
    Top = 417
    object StringField8: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_MODALIDADESBCICMSMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
      Required = True
    end
  end
  object C_Origem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Origem'
    Left = 548
    Top = 365
    object StringField7: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_OrigemORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
      Required = True
    end
  end
  object C_Generos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Generos'
    Left = 546
    Top = 315
    object StringField6: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_GenerosGENERO: TStringField
      FieldName = 'GENERO'
      Required = True
      Size = 2
    end
  end
  object C_CstsIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstsIPI'
    Left = 544
    Top = 263
    object StringField4: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_CstsIPICSTIPI: TStringField
      FieldName = 'CSTIPI'
      Required = True
      Size = 2
    end
  end
  object Q_TribFederal: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPOTRIBUTACAOFEDERAL')
    Left = 660
    Top = 216
  end
  object P_TribFederal: TDataSetProvider
    DataSet = Q_TribFederal
    Constraints = True
    Left = 660
    Top = 262
  end
  object C_TribFederal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TribFederal'
    Left = 660
    Top = 328
    object C_TribFederalIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Required = True
    end
    object C_TribFederalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_TribFederalDs: TDataSource
    DataSet = C_TribFederal
    Left = 660
    Top = 381
  end
  object Q_CstPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.CSTPISCOFINS, c.CSTPISCOFINS||'#39' - '#39'||c.descricao  as De' +
        'scricao  from CSTSPISCOFINS c'
      'WHERE c.cstpiscofins >= '#39'50'#39
      'order by c.CSTPISCOFINS'
      '')
    Left = 797
    Top = 31
  end
  object P_CstPisCofins: TDataSetProvider
    DataSet = Q_CstPisCofins
    Constraints = True
    Left = 908
    Top = 35
  end
  object C_CstPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstPisCofins'
    Left = 986
    Top = 39
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'CSTPISCOFINS'
      Required = True
      Size = 2
    end
  end
  object Q_CstPisCofinsSAIDA: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.CSTPISCOFINS, c.CSTPISCOFINS||'#39' - '#39'||c.descricao  as De' +
        'scricao from CSTSPISCOFINS c'
      'WHERE c.cstpiscofins < '#39'50'#39
      'order by c.CSTPISCOFINS')
    Left = 798
    Top = 83
  end
  object P_CstPisCofinsSAIDA: TDataSetProvider
    DataSet = Q_CstPisCofinsSAIDA
    Constraints = True
    Left = 905
    Top = 83
  end
  object C_CstPisCofinsSAIDA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstPisCofinsSAIDA'
    Left = 1015
    Top = 84
    object C_CstPisCofinsSAIDACSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Required = True
      Size = 2
    end
    object C_CstPisCofinsSAIDADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
  end
  object Q_VinculoCreditoPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select V.codigo, V.codigo||'#39'-'#39'||V.descricao as descricao from vi' +
        'nculocretidopiscofins V'
      'order by V.codigo')
    Left = 799
    Top = 129
  end
  object P_VinculoCreditoPisCofins: TDataSetProvider
    DataSet = Q_VinculoCreditoPisCofins
    Constraints = True
    Left = 928
    Top = 130
  end
  object C_VinculoCreditoPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_VinculoCreditoPisCofins'
    Left = 1061
    Top = 131
    object C_VinculoCreditoPisCofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 3
    end
    object C_VinculoCreditoPisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object Q_BaseCreditoPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select b.codigo,b.codigo||'#39'-'#39'||b.descricao as descricao from bas' +
        'ecreditopiscofins b'
      'order by b.codigo')
    Left = 797
    Top = 177
  end
  object P_BaseCreditoPisCofins: TDataSetProvider
    DataSet = Q_BaseCreditoPisCofins
    Constraints = True
    Left = 928
    Top = 174
  end
  object C_BaseCreditoPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_VinculoCreditoPisCofins'
    Left = 1061
    Top = 175
    object C_BaseCreditoPisCofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 3
    end
    object C_BaseCreditoPisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object Q_NaturezaReceitaPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select n.ID as codigo, n.cst||'#39'.'#39'||cast(n.codigo as varchar(10))' +
        '||'#39' - '#39'|| n.descricao as descricao ,'
      'n.CST from naturazareceitapiscofins n'
      ''
      'order by n.cst,n.codigo,n.descricao')
    Left = 795
    Top = 223
  end
  object P_NaturezaReceitaPisCofins: TDataSetProvider
    DataSet = Q_NaturezaReceitaPisCofins
    Constraints = True
    Left = 928
    Top = 218
  end
  object C_NaturezaReceitaPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_NaturezaReceitaPisCofins'
    Left = 1061
    Top = 219
    object C_NaturezaReceitaPisCofinsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object C_NaturezaReceitaPisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1011
    end
    object C_NaturezaReceitaPisCofinsCST: TStringField
      FieldName = 'CST'
      Required = True
      Size = 2
    end
  end
  object C_CstPisCofinsSAIDADs: TDataSource
    DataSet = C_CstPisCofinsSAIDA
    Left = 1112
    Top = 49
  end
end

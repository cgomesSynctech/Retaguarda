inherited DMEntradasAssistencia: TDMEntradasAssistencia
  Left = 514
  Top = 152
  Height = 560
  Width = 661
  inherited OpenDialog: TOpenDialog
    Left = 176
    Top = 244
  end
  inherited SaveDialog: TSaveDialog
    Left = 237
    Top = 252
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'SELECT S.SERVICO,'
      '       S.OSNUMERO,'
      '       S.CLIENTE,'
      '       S.DATAENTRADA,'
      '       S.HORAENTRADA,'
      '       S.EQUIPAMENTO,'
      '       S.PARTESAGRAGADAS,'
      '       S.DEFEITOALEGADO,'
      '       S.DEFEITOENCONTRADO,'
      '       S.OBSERVACAO,'
      '       S.DATASAIDA,'
      '       S.HORASAIDA,'
      '       S.FUNCENTRADA,'
      '       S.TECNICO,'
      '       S.TECNICOENTRADA,'
      '       S.FUNCSAIDA,'
      '       S.STATUSSERVICO,'
      '       S.LOCALIZACAO,'
      '       S.TIPOSERVICO,'
      '       S.NUMEROSERIE,'
      '       S.MODELO,'
      '       S.CARACTERISTICA,'
      '       S.FATURADO,'
      '       S.ORCAMENTO,'
      '       S.AVARIA,'
      '       S.COMACESSORIO,'
      '       S.COMACESSORIOOBS,'
      '       S.ESTADOPRODMANCHADO,'
      '       S.ESTADOPRODARRANHADO,'
      '       S.ESTADOPRODSUJO,'
      '       S.ESTADOPRODCABOELETRICO,'
      '       S.ESTADOPRODQUEBRADO,'
      '       S.EMBALAGEMPAPELAO,'
      '       S.EMBALAGEMPLASTICO,'
      '       S.RETORNO,'
      '       S.ORCAMENTOACEITO,'
      '       S.ORCAMENTOCOMUNICADO,'
      '       S.GARANTIAFABRICA,'
      '       S.FORAGARANTIA,'
      '       S.SEMEMBALAGEM,'
      '       S.OBSAVARIA,'
      '       F.NOME,'
      '       F.ENDERECO,'
      '       F.BAIRRO,'
      '       F.CIDADE,'
      '       F.CEP,'
      '       F.FONE1, F.FONE2'
      'From SERVICOS S'
      '    INNER JOIN FAVORECIDOS F ON F.FAVORECIDO = S.CLIENTE')
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SERVICO,'
      '  OSNUMERO,'
      '  CLIENTE,'
      '  DATAENTRADA,'
      '  HORAENTRADA,'
      '  EQUIPAMENTO,'
      '  PARTESAGRAGADAS,'
      '  DEFEITOALEGADO,'
      '  DEFEITOENCONTRADO,'
      '  OBSERVACAO,'
      '  DATASAIDA,'
      '  HORASAIDA,'
      '  FUNCENTRADA,'
      '  TECNICO,'
      '  FUNCSAIDA,'
      '  STATUSSERVICO,'
      '  LOCALIZACAO,'
      '  TIPOSERVICO,'
      '  NUMEROSERIE,'
      '  MODELO,'
      '  CARACTERISTICA,'
      '  FATURADO,'
      '  ORCAMENTO'
      'from SERVICOS '
      'where'
      '  SERVICO = :SERVICO')
    ModifySQL.Strings = (
      'update SERVICOS'
      'set'
      '  OSNUMERO = :OSNUMERO,'
      '  CLIENTE = :CLIENTE,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  HORAENTRADA = :HORAENTRADA,  '
      '  PARTESAGRAGADAS = :PARTESAGRAGADAS,'
      '  DEFEITOALEGADO = :DEFEITOALEGADO,'
      '  DEFEITOENCONTRADO = :DEFEITOENCONTRADO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  DATASAIDA = :DATASAIDA,'
      '  HORASAIDA = :HORASAIDA,'
      '  FUNCENTRADA = :FUNCENTRADA,'
      '  TECNICO = :TECNICO,'
      '  FUNCSAIDA = :FUNCSAIDA,'
      '  STATUSSERVICO = :STATUSSERVICO,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  TIPOSERVICO = :TIPOSERVICO,'
      '  NUMEROSERIE = :NUMEROSERIE,'
      '  MODELO = :MODELO,'
      '  CARACTERISTICA = :CARACTERISTICA,'
      '  FATURADO = :FATURADO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  AVARIA = :AVARIA,'
      '  COMACESSORIO = :COMACESSORIO,'
      '  COMACESSORIOOBS = :COMACESSORIOOBS,'
      '  ESTADOPRODMANCHADO = :ESTADOPRODMANCHADO,'
      '  ESTADOPRODARRANHADO = :ESTADOPRODARRANHADO,'
      '  ESTADOPRODSUJO = :ESTADOPRODSUJO,'
      '  ESTADOPRODCABOELETRICO = :ESTADOPRODCABOELETRICO,'
      '  ESTADOPRODQUEBRADO = :ESTADOPRODQUEBRADO,'
      '  EMBALAGEMPAPELAO = :EMBALAGEMPAPELAO,'
      '  EMBALAGEMPLASTICO = :EMBALAGEMPLASTICO,'
      '  RETORNO = :RETORNO, '
      '  ORCAMENTOACEITO = :ORCAMENTOACEITO,'
      '  ORCAMENTOCOMUNICADO = :ORCAMENTOCOMUNICADO,'
      '  FORAGARANTIA = :FORAGARANTIA,'
      '  GARANTIAFABRICA = :GARANTIAFABRICA,'
      '  SEMEMBALAGEM = :SEMEMBALAGEM,'
      '  OBSAVARIA = :OBSAVARIA,'
      '  TECNICOENTRADA = :TECNICOENTRADA'
      'where'
      '  SERVICO = :OLD_SERVICO')
    InsertSQL.Strings = (
      'insert into SERVICOS'
      '  (SERVICO, OSNUMERO, CLIENTE, DATAENTRADA, HORAENTRADA, '
      'EQUIPAMENTO, PARTESAGRAGADAS, '
      '   DEFEITOALEGADO, DEFEITOENCONTRADO, OBSERVACAO, DATASAIDA, '
      'HORASAIDA, '
      '   FUNCENTRADA, TECNICO, FUNCSAIDA, STATUSSERVICO, LOCALIZACAO, '
      'TIPOSERVICO, '
      '   NUMEROSERIE, MODELO, CARACTERISTICA, FATURADO, ORCAMENTO, '
      'AVARIA, COMACESSORIO, COMACESSORIOOBS, ESTADOPRODMANCHADO, '
      'ESTADOPRODARRANHADO, ESTADOPRODSUJO, '
      'ESTADOPRODCABOELETRICO, '
      'ESTADOPRODQUEBRADO, EMBALAGEMPAPELAO, EMBALAGEMPLASTICO, '
      'RETORNO, ORCAMENTOACEITO, ORCAMENTOCOMUNICADO, '
      'FORAGARANTIA, '
      'GARANTIAFABRICA,SEMEMBALAGEM,OBSAVARIA,TECNICOENTRADA)'
      'values'
      '  (:SERVICO, :OSNUMERO, :CLIENTE, :DATAENTRADA, :HORAENTRADA, '
      ':EQUIPAMENTO, '
      '   :PARTESAGRAGADAS, :DEFEITOALEGADO, :DEFEITOENCONTRADO, '
      ':OBSERVACAO, '
      '   :DATASAIDA, :HORASAIDA, :FUNCENTRADA, :TECNICO, :FUNCSAIDA, '
      ':STATUSSERVICO, '
      '   :LOCALIZACAO, :TIPOSERVICO, :NUMEROSERIE,  :MODELO,  '
      ':CARACTERISTICA, :FATURADO, :ORCAMENTO, :AVARIA, :COMACESSORIO, '
      ':COMACESSORIOOBS, :ESTADOPRODMANCHADO, '
      ':ESTADOPRODARRANHADO, '
      ':ESTADOPRODSUJO, :ESTADOPRODCABOELETRICO, '
      ':ESTADOPRODQUEBRADO, '
      ':EMBALAGEMPAPELAO, :EMBALAGEMPLASTICO, :RETORNO, '
      ':ORCAMENTOACEITO, :ORCAMENTOCOMUNICADO, :FORAGARANTIA, '
      ':GARANTIAFABRICA,:SEMEMBALAGEM,:OBSAVARIA,:TECNICOENTRADA)')
    DeleteSQL.Strings = (
      'delete from SERVICOS'
      'where'
      '  SERVICO = :OLD_SERVICO')
    Top = 53
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Pesquisar4_Dados = DMComponentPesquisar4_Dados
    KeyForIDs = 'SAIDAS'
    Tabela_Nome = 'SERVICOS'
    Tabela_Chave = 'SERVICO'
    Left = 36
    Top = 244
  end
  inherited DlgMsg: TDlgMsg
    Left = 112
    Top = 244
  end
  inherited P_Tabela: TDataSetProvider
    Left = 34
  end
  inherited C_Tabela: TClientDataSet
    Left = 35
    Top = 148
    object C_TabelalkpStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpStatus'
      LookupDataSet = C_StatusServico
      LookupKeyFields = 'STATUSSERVICO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUSSERVICO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkpTipoServico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpTipoServico'
      LookupDataSet = C_TipoServico
      LookupKeyFields = 'TIPOSERVICO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOSERVICO'
      Size = 30
      Lookup = True
    end
    object C_TabelaSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object C_TabelaOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object C_TabelaDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_TabelaHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'SERVICOS.HORAENTRADA'
    end
    object C_TabelaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'SERVICOS.EQUIPAMENTO'
    end
    object C_TabelaPARTESAGRAGADAS: TStringField
      FieldName = 'PARTESAGRAGADAS'
      Origin = 'SERVICOS.PARTESAGRAGADAS'
      Size = 100
    end
    object C_TabelaDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'SERVICOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_TabelaDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'SERVICOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'SERVICOS.OBSERVACAO'
      Size = 255
    end
    object C_TabelaDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SERVICOS.DATASAIDA'
    end
    object C_TabelaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object C_TabelaFUNCENTRADA: TIntegerField
      FieldName = 'FUNCENTRADA'
      Origin = 'SERVICOS.FUNCENTRADA'
    end
    object C_TabelaTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'SERVICOS.TECNICO'
    end
    object C_TabelaFUNCSAIDA: TIntegerField
      FieldName = 'FUNCSAIDA'
      Origin = 'SERVICOS.FUNCSAIDA'
    end
    object C_TabelaSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'SERVICOS.STATUSSERVICO'
    end
    object C_TabelaLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'SERVICOS.LOCALIZACAO'
    end
    object C_TabelaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'SERVICOS.TIPOSERVICO'
    end
    object C_TabelaNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'SERVICOS.NUMEROSERIE'
      Size = 30
    end
    object C_TabelaMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'SERVICOS.MODELO'
    end
    object C_TabelaCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'SERVICOS.CARACTERISTICA'
      Size = 100
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaQ_ServicosDet: TDataSetField
      FieldName = 'Q_ServicosDet'
    end
    object C_TabelalkpLocalizacao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpLocalizacao'
      LookupDataSet = C_Localizacao
      LookupKeyFields = 'LOCALIZACAOEQUIPAMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'LOCALIZACAO'
      Size = 30
      Lookup = True
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_TabelaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_TabelaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_TabelaFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_TabelaFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_TabelaFATURADO: TStringField
      FieldName = 'FATURADO'
      Origin = 'SERVICOS.FATURADO'
      Size = 1
    end
    object C_TabelalkTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnico'
      LookupDataSet = C_Tecnico
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'TECNICO'
      Size = 50
      Lookup = True
    end
    object C_TabelaORCAMENTO: TStringField
      FieldName = 'ORCAMENTO'
      Origin = 'SERVICOS.ORCAMENTO'
      Size = 1
    end
    object C_TabelaAVARIA: TStringField
      FieldName = 'AVARIA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCOMACESSORIO: TStringField
      FieldName = 'COMACESSORIO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCOMACESSORIOOBS: TStringField
      FieldName = 'COMACESSORIOOBS'
      Size = 100
    end
    object C_TabelaESTADOPRODMANCHADO: TStringField
      FieldName = 'ESTADOPRODMANCHADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODARRANHADO: TStringField
      FieldName = 'ESTADOPRODARRANHADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODSUJO: TStringField
      FieldName = 'ESTADOPRODSUJO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODCABOELETRICO: TStringField
      FieldName = 'ESTADOPRODCABOELETRICO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODQUEBRADO: TStringField
      FieldName = 'ESTADOPRODQUEBRADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaEMBALAGEMPAPELAO: TStringField
      FieldName = 'EMBALAGEMPAPELAO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaEMBALAGEMPLASTICO: TStringField
      FieldName = 'EMBALAGEMPLASTICO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaRETORNO: TStringField
      FieldName = 'RETORNO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaORCAMENTOACEITO: TStringField
      FieldName = 'ORCAMENTOACEITO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaORCAMENTOCOMUNICADO: TStringField
      FieldName = 'ORCAMENTOCOMUNICADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaGARANTIAFABRICA: TStringField
      FieldName = 'GARANTIAFABRICA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaFORAGARANTIA: TStringField
      FieldName = 'FORAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaSEMEMBALAGEM: TStringField
      FieldName = 'SEMEMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object C_TabelaOBSAVARIA: TStringField
      FieldName = 'OBSAVARIA'
      Size = 100
    end
    object C_TabelaTECNICOENTRADA: TStringField
      FieldName = 'TECNICOENTRADA'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 36
    Top = 192
  end
  object Q_ServicosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select   sd.DESCRICAOITEM, '
      '             sd.ITEM, '
      '             sd.QUANTIDADE, '
      '             sd.SERVICO, '
      '             sd.SERVICODET, '
      '             sd.VALOR,'
      '              i.CODIGO,'
      '              i.descricao,'
      '             pp.preco'
      'from servicosdet sd'
      '    left join itens i on i.item = sd.item'
      
        '    left join produtospreco pp on pp.item = i.item and pp.tabela' +
        'preco = 0'
      'WHERE sd.SERVICO = :SERVICO'
      '')
    UpdateObject = U_ServicosDet
    Left = 170
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERVICO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ServicosDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from servicosdet '
      'where'
      '  SERVICODET = :SERVICODET')
    ModifySQL.Strings = (
      'update servicosdet'
      'set'
      '  SERVICO = :SERVICO,'
      '  ITEM = :ITEM,'
      '  DESCRICAOITEM = :DESCRICAOITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALOR = :VALOR'
      'where'
      '  SERVICODET = :OLD_SERVICODET')
    InsertSQL.Strings = (
      'insert into servicosdet'
      '  (SERVICODET, SERVICO, ITEM, DESCRICAOITEM, QUANTIDADE, VALOR)'
      'values'
      
        '  (:SERVICODET, :SERVICO, :ITEM, :DESCRICAOITEM, :QUANTIDADE, :V' +
        'ALOR)')
    DeleteSQL.Strings = (
      'delete from servicosdet'
      'where'
      '  SERVICODET = :OLD_SERVICODET')
    Left = 170
    Top = 53
  end
  object P_ServicosDet: TDataSetProvider
    DataSet = Q_ServicosDet
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 166
    Top = 105
  end
  object C_ServicosDet: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_ServicosDet
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnCalcFields = C_ServicosDetCalcFields
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 169
    Top = 152
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ServicosDetDESCRICAOITEM: TStringField
      FieldName = 'DESCRICAOITEM'
      Origin = 'SERVICOSDET.DESCRICAOITEM'
      Size = 50
    end
    object C_ServicosDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SERVICOSDET.ITEM'
    end
    object C_ServicosDetQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOSDET.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOSDET.SERVICO'
    end
    object C_ServicosDetSERVICODET: TIntegerField
      FieldName = 'SERVICODET'
      Origin = 'SERVICOSDET.SERVICODET'
      Required = True
    end
    object C_ServicosDetVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'SERVICOSDET.VALOR'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ServicosDetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ServicosDetPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetSUBTOTAL: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'SUBTOTAL'
    end
  end
  object C_ServicosDetDs: TDataSource
    Tag = 100
    DataSet = C_ServicosDet
    Left = 168
    Top = 202
  end
  object Q_TipoServico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT TIPOSERVICO, DESCRICAO'
      'FROM  TIPOSSERVICOS'
      'ORDER BY  DESCRICAO')
    Left = 106
    Top = 307
  end
  object P_TipoServico: TDataSetProvider
    DataSet = Q_TipoServico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 202
    Top = 301
  end
  object C_TipoServico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TipoServico'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 299
    Top = 302
    object IntegerField3: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TipoServicoTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'TIPOSSERVICOS.TIPOSERVICO'
      Required = True
    end
    object C_TipoServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSSERVICOS.DESCRICAO'
      Size = 30
    end
  end
  object C_TipoServicoDs: TDataSource
    Tag = 100
    DataSet = C_TipoServico
    Left = 390
    Top = 301
  end
  object Q_StatusServico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT STATUSSERVICO, DESCRICAO'
      'FROM  STATUSSERVICOS'
      'ORDER BY  ORDEM')
    Left = 105
    Top = 412
  end
  object P_StatusServico: TDataSetProvider
    DataSet = Q_StatusServico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 201
    Top = 405
  end
  object C_StatusServico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_StatusServico'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 297
    Top = 404
    object IntegerField4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_StatusServicoSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'STATUSSERVICOS.STATUSSERVICO'
      Required = True
    end
    object C_StatusServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSERVICOS.DESCRICAO'
      Size = 30
    end
  end
  object C_StatusServicoDs: TDataSource
    Tag = 100
    DataSet = C_StatusServico
    Left = 396
    Top = 402
  end
  object Q_Localizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from  LOCALIZACAOEQUIPAMENTO'
      'Order by Descricao')
    Left = 248
    Top = 9
  end
  object P_Localizacao: TDataSetProvider
    DataSet = Q_Localizacao
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 242
    Top = 61
  end
  object C_Localizacao: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Localizacao'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 239
    Top = 112
    object IntegerField8: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_LocalizacaoLOCALIZACAOEQUIPAMENTO: TIntegerField
      FieldName = 'LOCALIZACAOEQUIPAMENTO'
      Origin = 'LOCALIZACAOEQUIPAMENTO.LOCALIZACAOEQUIPAMENTO'
      Required = True
    end
    object C_LocalizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOCALIZACAOEQUIPAMENTO.DESCRICAO'
      Size = 30
    end
  end
  object C_LocalizacaoDs: TDataSource
    Tag = 100
    DataSet = C_Localizacao
    Left = 240
    Top = 162
  end
  object Q_Tecnico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT FAVORECIDO, NOME FROM'
      'FAVORECIDOS'
      'WHERE TIPOFAVORECIDO = 3'
      'ORDER BY NOME')
    Left = 316
    Top = 11
  end
  object P_Tecnico: TDataSetProvider
    DataSet = Q_Tecnico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 312
    Top = 57
  end
  object C_Tecnico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tecnico'
    Left = 315
    Top = 110
    object IntegerField9: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TecnicoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_TecnicoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object C_TecnicoDs: TDataSource
    Tag = 100
    DataSet = C_Tecnico
    Left = 314
    Top = 163
  end
  object Q_Equip: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ce.equipamento, ce.numeroserie || '#39' - '#39' || m.descricao as' +
        ' descricao || '#39' - '#39' || CE.marca || '#39' - '#39' || CE.tipo'
      'from clientesequipamentos ce'
      'left join modelos m on ce.modelo = m.modelo'
      'where ce.cliente = :CLIENTE'
      'order by 2')
    Left = 104
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_Equip: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Equip'
    Left = 296
    Top = 352
    object C_EquipEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Required = True
    end
    object C_EquipDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 93
    end
  end
  object C_EquipDS: TDataSource
    DataSet = C_Equip
    Left = 392
    Top = 352
  end
  object P_Equip: TDataSetProvider
    DataSet = Q_Equip
    Constraints = True
    Left = 200
    Top = 352
  end
end

inherited DMOrdemServico: TDMOrdemServico
  Left = 157
  Top = 173
  Height = 431
  Width = 612
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      
        ' os.ordemservico, os.numero, os.cliente, os.equipamento, os.func' +
        'ionario, '
      ' os.rota, os.tiposervico, os.obs,'
      ' os.dtaviso, os.horaaviso,'
      ' os.dtchegada, os.horachegada, os.dttermino, os.horatermino,'
      ' os.statusatendimento, os.descricaoservico, os.faturado'
      ',  os.NUMEROANTERIOR,  os.ORDEMSERVICOVICULO,'
      
        'os.dtmodificacao, CLI.nome as DESCCLIENTE, FUNC.nome AS DESCFUNC' +
        'IONARIO'
      ''
      'from ordensservicos os'
      'left join favorecidos CLI on os.cliente = CLI.FAVORECIDO'
      'left join favorecidos FUNC on os.funcionario = FUNC.FAVORECIDO'
      ''
      ''
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordensservicos '
      'where'
      '  ORDEMSERVICO = :ORDEMSERVICO')
    ModifySQL.Strings = (
      'update ordensservicos'
      'set'
      '  NUMERO = :NUMERO,'
      '  CLIENTE = :CLIENTE,'
      '  EQUIPAMENTO = :EQUIPAMENTO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  ROTA = :ROTA,'
      '  TIPOSERVICO = :TIPOSERVICO,'
      '  OBS = :OBS,'
      '  DTAVISO = :DTAVISO,'
      '  HORAAVISO = :HORAAVISO,'
      '  DTCHEGADA = :DTCHEGADA,'
      '  HORACHEGADA = :HORACHEGADA,'
      '  DTTERMINO = :DTTERMINO,'
      '  HORATERMINO = :HORATERMINO,'
      '  STATUSATENDIMENTO = :STATUSATENDIMENTO,'
      '  DESCRICAOSERVICO = :DESCRICAOSERVICO,'
      '  FATURADO = :FATURADO,'
      '  NUMEROANTERIOR = :NUMEROANTERIOR,'
      '  ORDEMSERVICOVICULO = :ORDEMSERVICOVICULO,'
      '  DTMODIFICACAO = :DTMODIFICACAO'
      'where'
      '  ORDEMSERVICO = :OLD_ORDEMSERVICO')
    InsertSQL.Strings = (
      'insert into ordensservicos'
      
        '  (ORDEMSERVICO, NUMERO, CLIENTE, EQUIPAMENTO, FUNCIONARIO, ROTA' +
        ', '
      'TIPOSERVICO, '
      '   OBS, DTAVISO, HORAAVISO, DTCHEGADA, HORACHEGADA, DTTERMINO, '
      'HORATERMINO, '
      '   STATUSATENDIMENTO, DESCRICAOSERVICO, FATURADO, '
      'NUMEROANTERIOR, ORDEMSERVICOVICULO, DTMODIFICACAO)'
      'values'
      
        '  (:ORDEMSERVICO, :NUMERO, :CLIENTE, :EQUIPAMENTO, :FUNCIONARIO,' +
        ' '
      ':ROTA, '
      '   :TIPOSERVICO, :OBS, :DTAVISO, :HORAAVISO, :DTCHEGADA, '
      ':HORACHEGADA, '
      '   :DTTERMINO, :HORATERMINO, :STATUSATENDIMENTO, '
      ':DESCRICAOSERVICO, :FATURADO, '
      '   :NUMEROANTERIOR, :ORDEMSERVICOVICULO, :DTMODIFICACAO)')
    DeleteSQL.Strings = (
      'delete from ordensservicos'
      'where'
      '  ORDEMSERVICO = :OLD_ORDEMSERVICO')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Pesquisar4_Dados = DMComponentPesquisar4_Dados
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'ordenssevicos'
    Tabela_Nome = 'ORDENSSERVICOS'
    Tabela_Chave = 'ORDEMSERVICO'
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    Top = 153
    object C_TabelaORDEMSERVICO: TIntegerField
      FieldName = 'ORDEMSERVICO'
      Origin = 'ORDENSSERVICOS.ORDEMSERVICO'
      Required = True
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'ORDENSSERVICOS.NUMERO'
      Size = 12
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'ORDENSSERVICOS.CLIENTE'
    end
    object C_TabelaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'ORDENSSERVICOS.EQUIPAMENTO'
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'ORDENSSERVICOS.FUNCIONARIO'
    end
    object C_TabelaROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ORDENSSERVICOS.ROTA'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ORDENSSERVICOS.OBS'
      Size = 255
    end
    object C_TabelaDTAVISO: TDateField
      FieldName = 'DTAVISO'
      Origin = 'ORDENSSERVICOS.DTAVISO'
    end
    object C_TabelaHORAAVISO: TTimeField
      FieldName = 'HORAAVISO'
      Origin = 'ORDENSSERVICOS.HORAAVISO'
    end
    object C_TabelaDTCHEGADA: TDateField
      FieldName = 'DTCHEGADA'
      Origin = 'ORDENSSERVICOS.DTCHEGADA'
    end
    object C_TabelaHORACHEGADA: TTimeField
      FieldName = 'HORACHEGADA'
      Origin = 'ORDENSSERVICOS.HORACHEGADA'
    end
    object C_TabelaDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      Origin = 'ORDENSSERVICOS.DTTERMINO'
    end
    object C_TabelaDESCRICAOSERVICO: TStringField
      FieldName = 'DESCRICAOSERVICO'
      Origin = 'ORDENSSERVICOS.DESCRICAOSERVICO'
      Size = 255
    end
    object C_TabelaDESCCLIENTE: TStringField
      FieldName = 'DESCCLIENTE'
      Origin = 'FAVORECIDOS.DESCCLIENTE'
      Size = 50
    end
    object C_TabelaDESCFUNCIONARIO: TStringField
      FieldName = 'DESCFUNCIONARIO'
      Origin = 'FAVORECIDOS.DESCFUNCIONARIO'
      Size = 50
    end
    object C_TabelalkRotas: TStringField
      FieldKind = fkLookup
      FieldName = 'lkRotas'
      LookupDataSet = C_Rotas
      LookupKeyFields = 'ROTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ROTA'
      Size = 25
      Lookup = True
    end
    object C_TabelaHORATERMINO: TTimeField
      FieldName = 'HORATERMINO'
      Origin = 'ORDENSSERVICOS.HORATERMINO'
    end
    object C_TabelaFATURADO: TStringField
      FieldName = 'FATURADO'
      Origin = 'ORDENSSERVICOS.FATURADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaORDEMSERVICOVICULO: TIntegerField
      FieldName = 'ORDEMSERVICOVICULO'
      Origin = 'ORDENSSERVICOS.ORDEMSERVICOVICULO'
    end
    object C_TabelaNUMEROANTERIOR: TStringField
      FieldName = 'NUMEROANTERIOR'
      Origin = 'ORDENSSERVICOS.NUMEROANTERIOR'
      OnValidate = C_TabelaNUMEROANTERIORValidate
      Size = 12
    end
    object C_TabelaQ_ServicosDet: TDataSetField
      FieldName = 'Q_ServicosDet'
    end
    object C_TabelaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'ORDENSSERVICOS.TIPOSERVICO'
    end
    object C_TabelaSTATUSATENDIMENTO: TIntegerField
      FieldName = 'STATUSATENDIMENTO'
      Origin = 'ORDENSSERVICOS.STATUSATENDIMENTO'
    end
    object C_TabelaDTMODIFICACAO: TDateTimeField
      FieldName = 'DTMODIFICACAO'
      Origin = 'ORDENSSERVICOS.DTMODIFICACAO'
    end
    object C_TabelaDtDecorrido: TTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DtDecorrido'
    end
    object C_TabelaDtAtendDecorrido: TTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DtAtendDecorrido'
    end
  end
  object Q_Rotas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      '  ROTA, DESCRICAO'
      'from ROTAS'
      'order by 2')
    Left = 160
    Top = 2
  end
  object P_Rotas: TDataSetProvider
    DataSet = Q_Rotas
    Constraints = True
    Left = 162
    Top = 44
  end
  object C_Rotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Rotas'
    Left = 164
    Top = 88
    object C_RotasROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ROTAS.ROTA'
      Required = True
    end
    object C_RotasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ROTAS.DESCRICAO'
      Size = 25
    end
  end
  object Q_Equip: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select e.equipamento, e.nummaquina,'
      'e.favorecido'
      'from equipamentos e'
      'where e.favorecido = :CLIENTE'
      'order by 2')
    Left = 230
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object P_Equip: TDataSetProvider
    DataSet = Q_Equip
    Constraints = True
    Left = 232
    Top = 42
  end
  object C_Equip: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Equip'
    Left = 234
    Top = 86
    object C_EquipEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'EQUIPAMENTOS.EQUIPAMENTO'
      Required = True
    end
    object C_EquipNUMMAQUINA: TStringField
      FieldName = 'NUMMAQUINA'
      Origin = 'EQUIPAMENTOS.NUMMAQUINA'
      Size = 25
    end
    object C_EquipFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select unidade, descricao'
      'from unidades'
      'order by unidade')
    Left = 166
    Top = 134
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 166
    Top = 182
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 166
    Top = 230
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
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
      'SELECT   sd.DESCRICAOITEM, '
      '             sd.ITEM, '
      '             sd.QUANTIDADE, '
      '             sd.ORDEMSERVICO,'
      '             sd.ORDEMSERVICODET, '
      '             sd.VALOR,'
      '             sd.UNIDADE,'
      '              i.CODIGO,'
      '              i.descricao,'
      '             pp.preco'
      'FROM ordensservicosdet sd'
      '    LEFT JOIN itens i ON i.item = sd.item'
      '    LEFT JOIN produtospreco pp ON pp.item = i.item AND '
      'pp.tabelapreco = 0'
      'WHERE sd.ORDEMSERVICO = :ORDEMSERVICO')
    UpdateObject = U_ServicosDet
    Left = 299
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDEMSERVICO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ServicosDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordensservicosdet '
      'where'
      '  ORDEMSERVICODET = :ORDEMSERVICODET')
    ModifySQL.Strings = (
      'update ordensservicosdet'
      'set'
      '  DESCRICAOITEM = :DESCRICAOITEM,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  ORDEMSERVICO = :ORDEMSERVICO,'
      '  VALOR = :VALOR,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ORDEMSERVICODET = :OLD_ORDEMSERVICODET')
    InsertSQL.Strings = (
      'insert into ordensservicosdet'
      '  (DESCRICAOITEM, ITEM, QUANTIDADE, ORDEMSERVICO, '
      'ORDEMSERVICODET, VALOR, '
      '   UNIDADE)'
      'values'
      '  (:DESCRICAOITEM, :ITEM, :QUANTIDADE, :ORDEMSERVICO, '
      ':ORDEMSERVICODET, '
      '   :VALOR, :UNIDADE)')
    DeleteSQL.Strings = (
      'delete from ordensservicosdet'
      'where'
      '  ORDEMSERVICODET = :OLD_ORDEMSERVICODET')
    Left = 299
    Top = 46
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
    OnNewRecord = C_ServicosDetNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 298
    Top = 96
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ServicosDetDESCRICAOITEM: TStringField
      FieldName = 'DESCRICAOITEM'
      Origin = 'ORDENSSERVICOSDET.DESCRICAOITEM'
      Size = 50
    end
    object C_ServicosDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ORDENSSERVICOSDET.ITEM'
      OnChange = C_ServicosDetITEMChange
    end
    object C_ServicosDetQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ORDENSSERVICOSDET.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'ORDENSSERVICOSDET.VALOR'
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
    object C_ServicosDetUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ORDENSSERVICOSDET.UNIDADE'
      Size = 6
    end
    object C_ServicosDeticSubTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotal'
    end
    object C_ServicosDetlkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'UNIDADE'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_ServicosDetORDEMSERVICO: TIntegerField
      FieldName = 'ORDEMSERVICO'
      Origin = 'ORDENSSERVICOSDET.ORDEMSERVICO'
    end
    object C_ServicosDetORDEMSERVICODET: TIntegerField
      FieldName = 'ORDEMSERVICODET'
      Origin = 'ORDENSSERVICOSDET.ORDEMSERVICODET'
      Required = True
    end
  end
  object C_ServicosDetDs: TDataSource
    Tag = 100
    DataSet = C_ServicosDet
    Left = 297
    Top = 147
  end
  object C_EquipDS: TDataSource
    DataSet = C_Equip
    Left = 232
    Top = 136
  end
end

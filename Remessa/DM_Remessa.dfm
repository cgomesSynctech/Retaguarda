inherited DMRemessa: TDMRemessa
  Left = 25
  Top = 89
  Height = 474
  Width = 762
  inherited OpenDialog: TOpenDialog
    Left = 160
    Top = 242
  end
  inherited SaveDialog: TSaveDialog
    Left = 223
    Top = 244
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select R.*, F.NOME, L.NOME as NOMELOCAL_DEPOSITO'
      'from REMESSAS R'
      '        LEFT JOIN FAVORECIDOS F ON R.CLIENTE = F.FAVORECIDO'
      
        '        LEFT JOIN FAVORECIDOS L ON R.LOCAL_DEPOSITO =           ' +
        '                                                     L.FAVORECID' +
        'O')
    Left = 29
    Top = 9
  end
  inherited Q_MasterDS: TDataSource
    Left = 88
    Top = 9
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  REMESSA,'
      '  CLIENTE,'
      '  MOEDA_REMETENTE,'
      '  VALOR_CLIENTE,'
      '  EMPRESA,'
      '  TAXA_EMP,'
      '  PERC_EMP,'
      '  CAMBIO_EMP,'
      '  VALOR_EMPRESA,'
      '  LUCRO_EMPRESA,'
      '  AGENTE,'
      '  TAXA_AG,'
      '  MOEDA_AGENTE,'
      '  PERC_AG,'
      '  CAMBIO_AG,'
      '  VALOR_AGENCIA,'
      '  LUCRO_AGENTE,'
      '  LOCAL_DEPOSITO,'
      '  VALOR_LOCAL,'
      '  MOEDA_LOCAL,'
      '  CAMBIO_LOCAL,'
      '  DATA_PREVISAO,'
      '  DATA_ENVIO,'
      '  STATUS,'
      '  DESATIVAR_REMESSA,'
      '  OBS,'
      '  DATAABERTURA,'
      '  CONTA_A_PAGAR,'
      '  CONTA_A_RECEBER,'
      '  FORMAPAGAMENTO,'
      '  NUMCHEQUE,'
      '  BANCO,'
      '  DATAFORMAPAG,'
      '  RECEPTORDEPOSITO,'
      '  CODIGO'
      'from REMESSAS '
      'where'
      '  REMESSA = :REMESSA')
    ModifySQL.Strings = (
      'update REMESSAS'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  MOEDA_REMETENTE = :MOEDA_REMETENTE,'
      '  VALOR_CLIENTE = :VALOR_CLIENTE,'
      '  EMPRESA = :EMPRESA,'
      '  TAXA_EMP = :TAXA_EMP,'
      '  PERC_EMP = :PERC_EMP,'
      '  CAMBIO_EMP = :CAMBIO_EMP,'
      '  VALOR_EMPRESA = :VALOR_EMPRESA,'
      '  LUCRO_EMPRESA = :LUCRO_EMPRESA,'
      '  AGENTE = :AGENTE,'
      '  TAXA_AG = :TAXA_AG,'
      '  MOEDA_AGENTE = :MOEDA_AGENTE,'
      '  PERC_AG = :PERC_AG,'
      '  CAMBIO_AG = :CAMBIO_AG,'
      '  VALOR_AGENCIA = :VALOR_AGENCIA,'
      '  LUCRO_AGENTE = :LUCRO_AGENTE,'
      '  LOCAL_DEPOSITO = :LOCAL_DEPOSITO,'
      '  VALOR_LOCAL = :VALOR_LOCAL,'
      '  MOEDA_LOCAL = :MOEDA_LOCAL,'
      '  CAMBIO_LOCAL = :CAMBIO_LOCAL,'
      '  DATA_PREVISAO = :DATA_PREVISAO,'
      '  DATA_ENVIO = :DATA_ENVIO,'
      '  STATUS = :STATUS,'
      '  DESATIVAR_REMESSA = :DESATIVAR_REMESSA,'
      '  OBS = :OBS,'
      '  DATAABERTURA = :DATAABERTURA,'
      '  CONTA_A_PAGAR = :CONTA_A_PAGAR,'
      '  CONTA_A_RECEBER = :CONTA_A_RECEBER,'
      '  RECEPTORDEPOSITO = :RECEPTORDEPOSITO,'
      '  CODIGO = :CODIGO,'
      '  TIPOCALCULO = :TIPOCALCULO'
      'where'
      '  REMESSA = :OLD_REMESSA')
    InsertSQL.Strings = (
      'insert into REMESSAS'
      '  (REMESSA, CLIENTE, MOEDA_REMETENTE, VALOR_CLIENTE, EMPRESA, '
      'TAXA_EMP, '
      '   PERC_EMP, CAMBIO_EMP, VALOR_EMPRESA, LUCRO_EMPRESA, AGENTE, '
      'TAXA_AG, '
      '   MOEDA_AGENTE, PERC_AG, CAMBIO_AG, VALOR_AGENCIA, '
      'LUCRO_AGENTE, LOCAL_DEPOSITO, '
      '   VALOR_LOCAL, MOEDA_LOCAL, CAMBIO_LOCAL, DATA_PREVISAO, '
      'DATA_ENVIO, STATUS, '
      '   DESATIVAR_REMESSA, OBS, DATAABERTURA, CONTA_A_PAGAR, '
      'CONTA_A_RECEBER, '
      '   RECEPTORDEPOSITO, CODIGO, TIPOCALCULO)'
      'values'
      
        '  (:REMESSA, :CLIENTE, :MOEDA_REMETENTE, :VALOR_CLIENTE, :EMPRES' +
        'A, '
      ':TAXA_EMP, '
      '   :PERC_EMP, :CAMBIO_EMP, :VALOR_EMPRESA, :LUCRO_EMPRESA, '
      ':AGENTE, :TAXA_AG, '
      '   :MOEDA_AGENTE, :PERC_AG, :CAMBIO_AG, :VALOR_AGENCIA, '
      ':LUCRO_AGENTE, '
      '   :LOCAL_DEPOSITO, :VALOR_LOCAL, :MOEDA_LOCAL, :CAMBIO_LOCAL, '
      ':DATA_PREVISAO, '
      
        '   :DATA_ENVIO, :STATUS, :DESATIVAR_REMESSA, :OBS, :DATAABERTURA' +
        ', '
      ':CONTA_A_PAGAR, '
      '   :CONTA_A_RECEBER, :RECEPTORDEPOSITO, :CODIGO, :TIPOCALCULO)')
    DeleteSQL.Strings = (
      'delete from REMESSAS'
      'where'
      '  REMESSA = :OLD_REMESSA')
    Left = 29
    Top = 59
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    AposFechar = DMComponentAposFechar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'REMESSAS'
    Tabela_Nome = 'REMESSAS'
    Tabela_Chave = 'REMESSA'
    Left = 29
    Top = 243
  end
  inherited DlgMsg: TDlgMsg
    Left = 88
    Top = 242
  end
  inherited P_Tabela: TDataSetProvider
    Left = 29
    Top = 105
  end
  inherited C_Tabela: TClientDataSet
    Left = 29
    Top = 153
    object C_TabelaREMESSA: TIntegerField
      FieldName = 'REMESSA'
      Required = True
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      OnChange = C_TabelaCLIENTEChange
    end
    object C_TabelaVALOR_CLIENTE: TBCDField
      FieldName = 'VALOR_CLIENTE'
      OnChange = C_TabelaVALOR_CLIENTEChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaMOEDA_REMETENTE: TIntegerField
      FieldName = 'MOEDA_REMETENTE'
      OnChange = C_TabelaMOEDA_REMETENTEChange
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      OnChange = C_TabelaEMPRESAChange
    end
    object C_TabelaTAXA_EMP: TBCDField
      FieldName = 'TAXA_EMP'
      OnChange = C_TabelaTAXA_EMPChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaPERC_EMP: TBCDField
      FieldName = 'PERC_EMP'
      OnChange = C_TabelaTAXA_EMPChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCAMBIO_EMP: TBCDField
      FieldName = 'CAMBIO_EMP'
      OnChange = C_TabelaVALOR_CLIENTEChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaLUCRO_EMPRESA: TBCDField
      FieldName = 'LUCRO_EMPRESA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALOR_EMPRESA: TBCDField
      FieldName = 'VALOR_EMPRESA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaAGENTE: TIntegerField
      FieldName = 'AGENTE'
      OnChange = C_TabelaAGENTEChange
    end
    object C_TabelaVALOR_AGENCIA: TBCDField
      FieldName = 'VALOR_AGENCIA'
      OnValidate = C_TabelaVALOR_AGENCIAValidate
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaMOEDA_AGENTE: TIntegerField
      FieldName = 'MOEDA_AGENTE'
    end
    object C_TabelaPERC_AG: TBCDField
      FieldName = 'PERC_AG'
      OnChange = C_TabelaPERC_AGChange
      Precision = 18
      Size = 2
    end
    object C_TabelaTAXA_AG: TBCDField
      FieldName = 'TAXA_AG'
      OnChange = C_TabelaTAXA_AGChange
      Precision = 18
      Size = 2
    end
    object C_TabelaCAMBIO_AG: TBCDField
      FieldName = 'CAMBIO_AG'
      OnChange = C_TabelaCAMBIO_AGChange
      Precision = 18
      Size = 2
    end
    object C_TabelaLUCRO_AGENTE: TBCDField
      FieldName = 'LUCRO_AGENTE'
      Precision = 18
      Size = 2
    end
    object C_TabelaLOCAL_DEPOSITO: TIntegerField
      FieldName = 'LOCAL_DEPOSITO'
      OnChange = C_TabelaLOCAL_DEPOSITOChange
    end
    object C_TabelaVALOR_LOCAL: TBCDField
      FieldName = 'VALOR_LOCAL'
      OnChange = C_TabelaVALOR_LOCALChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaMOEDA_LOCAL: TIntegerField
      FieldName = 'MOEDA_LOCAL'
      OnChange = C_TabelaMOEDA_LOCALChange
    end
    object C_TabelaCAMBIO_LOCAL: TBCDField
      FieldName = 'CAMBIO_LOCAL'
      OnChange = C_TabelaCAMBIO_LOCALChange
      Precision = 18
      Size = 2
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaDATA_PREVISAO: TDateField
      FieldName = 'DATA_PREVISAO'
    end
    object C_TabelaDATA_ENVIO: TDateField
      FieldName = 'DATA_ENVIO'
    end
    object C_TabelaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_TabelacbDesc_Status: TStringField
      FieldKind = fkLookup
      FieldName = 'cbDesc_Status'
      LookupDataSet = C_StatusRemessa
      LookupKeyFields = 'STATUS_REMESSA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUS'
      Lookup = True
    end
    object C_TabelaDESATIVAR_REMESSA: TStringField
      FieldName = 'DESATIVAR_REMESSA'
      Size = 1
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
    end
    object C_TabelaCONTA_A_PAGAR: TIntegerField
      FieldName = 'CONTA_A_PAGAR'
    end
    object C_TabelaCONTA_A_RECEBER: TIntegerField
      FieldName = 'CONTA_A_RECEBER'
    end
    object C_TabelaRECEPTORDEPOSITO: TIntegerField
      FieldName = 'RECEPTORDEPOSITO'
    end
    object C_TabelaNOMELOCAL_DEPOSITO: TStringField
      FieldName = 'NOMELOCAL_DEPOSITO'
      Size = 50
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object C_TabelaTIPOCALCULO: TStringField
      FieldName = 'TIPOCALCULO'
      Size = 1
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 29
    Top = 199
  end
  inherited ResultSet: TClientDataSet
    Left = 88
    Top = 59
  end
  object Q_LookAgencias: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * From FAVORECIDOS f'
      'Where f.tipofavorecido = 7')
    Left = 562
    Top = 9
  end
  object Q_LocalDeposito: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * From FAVORECIDOS f'
      'Where f.tipofavorecido = 8'
      'and f.vendedor = :favorecido')
    Left = 389
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'favorecido'
        ParamType = ptUnknown
      end>
  end
  object Q_LookEmpresa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from AGENCIAS'
      'where tipo='#39'E'#39)
    Left = 88
    Top = 344
  end
  object PEmpresa: TDataSetProvider
    DataSet = Q_LookEmpresa
    Constraints = True
    Left = 160
    Top = 344
  end
  object C_Empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PEmpresa'
    Left = 223
    Top = 346
    object C_EmpresaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object C_EmpresaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_EmpresaTAXA: TBCDField
      FieldName = 'TAXA'
      Precision = 18
      Size = 2
    end
    object C_EmpresaPERC: TBCDField
      FieldName = 'PERC'
      Precision = 18
      Size = 2
    end
  end
  object dsEmpresa: TDataSource
    DataSet = C_Empresa
    Left = 309
    Top = 344
  end
  object P_LocalDeposito: TDataSetProvider
    DataSet = Q_LocalDeposito
    Constraints = True
    Left = 389
    Top = 59
  end
  object P_Agencias: TDataSetProvider
    DataSet = Q_LookAgencias
    Constraints = True
    Left = 562
    Top = 59
  end
  object C_LocalDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'favorecido'
        ParamType = ptUnknown
      end>
    ProviderName = 'P_LocalDeposito'
    Left = 389
    Top = 105
    object C_LocalDepositoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_LocalDepositoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_Agencias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Agencias'
    Left = 562
    Top = 116
    object C_AgenciasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_AgenciasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_AgenciasJUROSFACTORY: TBCDField
      FieldName = 'JUROSFACTORY'
      Precision = 18
      Size = 2
    end
    object C_AgenciasTAXASFACTORY: TBCDField
      FieldName = 'TAXASFACTORY'
      Precision = 18
      Size = 2
    end
  end
  object dsLocalDeposito: TDataSource
    DataSet = C_LocalDeposito
    Left = 389
    Top = 151
  end
  object dsAgencias: TDataSource
    DataSet = C_Agencias
    Left = 562
    Top = 162
  end
  object Q_MoedaRemetente: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INDEXADORES'
      'order by indexador')
    Left = 160
    Top = 9
  end
  object Q_MoedaAgente: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INDEXADORES')
    Left = 309
    Top = 242
  end
  object dsMoedaAgente: TDataSource
    DataSet = C_MoedaAgente
    Left = 570
    Top = 241
  end
  object PMoedaRemetente: TDataSetProvider
    DataSet = Q_MoedaRemetente
    Constraints = True
    Left = 160
    Top = 59
  end
  object PMoedaLocalDP: TDataSetProvider
    DataSet = Q_MoedaLocal
    Constraints = True
    Left = 309
    Top = 59
  end
  object PMoedaAgente: TDataSetProvider
    DataSet = Q_MoedaAgente
    Constraints = True
    Left = 389
    Top = 242
  end
  object C_MoedaRemente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PMoedaRemetente'
    Left = 160
    Top = 105
  end
  object C_MoedaLocalDP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PMoedaLocalDP'
    Left = 309
    Top = 105
  end
  object C_MoedaAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PMoedaAgente'
    Left = 481
    Top = 242
  end
  object dsMoedaRemente: TDataSource
    DataSet = C_MoedaRemente
    Left = 160
    Top = 151
  end
  object dsMoedaLocalDP: TDataSource
    DataSet = C_MoedaLocalDP
    Left = 309
    Top = 151
  end
  object Q_MoedaLocal: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INDEXADORES'
      'order by indexador')
    Left = 309
    Top = 9
  end
  object Q_Cambio: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from AGENCIAS_CAMBIO'
      'where AGENCIA=:AGENTE'
      'AND INDEXADOR=:MOEDA'
      'AND DATA=:DATA')
    Left = 460
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'AGENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'MOEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptUnknown
      end>
  end
  object Q_StatusRemessa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from STATUS_REMESSAS'
      'ORDER BY STATUS_REMESSA')
    Left = 223
    Top = 198
  end
  object C_StatusRemessa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PStatusRemessa'
    Left = 389
    Top = 195
  end
  object PStatusRemessa: TDataSetProvider
    DataSet = Q_StatusRemessa
    Constraints = True
    Left = 309
    Top = 199
  end
  object Q_LocalDep: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_LocalDepBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select rp.*, RECEPTOR AS FAVORECIDO, '
      'Ban.nome as NomeBanco from  RECEPTORESDEPOSITOS rp'
      'left join favorecidos ban on rp.banco=ban.favorecido'
      'where receptor = :favorecido ')
    Left = 88
    Top = 291
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
  end
  object C_LocalDep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Localdep'
    OnCalcFields = C_LocalDepCalcFields
    Left = 160
    Top = 291
    object C_LocalDepRECEPTORDEPOSITO: TIntegerField
      FieldName = 'RECEPTORDEPOSITO'
      Origin = 'RECEPTORESDEPOSITOS.RECEPTORDEPOSITO'
      Required = True
    end
    object C_LocalDepRECEPTOR: TIntegerField
      FieldName = 'RECEPTOR'
      Origin = 'RECEPTORESDEPOSITOS.RECEPTOR'
    end
    object C_LocalDepDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'RECEPTORESDEPOSITOS.DESCRICAO'
      Size = 50
    end
    object C_LocalDepCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'RECEPTORESDEPOSITOS.CONTA'
      Size = 50
    end
    object C_LocalDepAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'RECEPTORESDEPOSITOS.AGENCIA'
      Size = 6
    end
    object C_LocalDepBANCO: TIntegerField
      FieldName = 'BANCO'
      Origin = 'RECEPTORESDEPOSITOS.BANCO'
    end
    object C_LocalDepOBS: TStringField
      FieldName = 'OBS'
      Origin = 'RECEPTORESDEPOSITOS.OBS'
      Size = 255
    end
    object C_LocalDepFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'RECEPTORESDEPOSITOS.FAVORECIDO'
    end
    object C_LocalDepNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Origin = 'FAVORECIDOS.NOMEBANCO'
      Size = 50
    end
    object C_LocalDepDescConta: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DescConta'
      Size = 80
    end
    object C_LocalDepPADRAO: TStringField
      FieldName = 'PADRAO'
      Origin = 'RECEPTORESDEPOSITOS.PADRAO'
      Size = 1
    end
  end
  object dsLocalDep: TDataSource
    DataSet = C_LocalDep
    Left = 223
    Top = 293
  end
  object Q_LocalDepositoDS: TDataSource
    DataSet = Q_LocalDeposito
    Left = 461
    Top = 9
  end
  object Q_VerificarCambio: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from AGENCIAS_CAMBIO'
      'WHERE AGENCIA=:AGENCIA'
      'AND INDEXADOR = :INDEXADOR'
      'AND DATA=:DATA'
      '')
    Left = 567
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'AGENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INDEXADOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptUnknown
      end>
  end
  object P_Localdep: TDataSetProvider
    DataSet = Q_LocalDep
    Constraints = True
    Left = 88
    Top = 203
  end
end

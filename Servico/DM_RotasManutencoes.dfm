inherited DMRotasManutencoes: TDMRotasManutencoes
  Left = 171
  Top = 286
  Width = 822
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select rm.rotamanutencao, rm.rota, rm.mes, rm.ano, rm.funcionari' +
        'o, f.nome'
      'from rotasmanutencoes rm'
      'left join favorecidos f on rm.funcionario = f.favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from rotasmanutencoes '
      'where'
      '  ROTAMANUTENCAO = :ROTAMANUTENCAO')
    ModifySQL.Strings = (
      'update rotasmanutencoes'
      'set'
      '  ROTA = :ROTA,'
      '  MES = :MES,'
      '  ANO = :ANO,'
      '  FUNCIONARIO = :FUNCIONARIO'
      'where'
      '  ROTAMANUTENCAO = :OLD_ROTAMANUTENCAO')
    InsertSQL.Strings = (
      'insert into rotasmanutencoes'
      '  (ROTAMANUTENCAO, ROTA, MES, ANO, FUNCIONARIO)'
      'values'
      '  (:ROTAMANUTENCAO, :ROTA, :MES, :ANO, :FUNCIONARIO)')
    DeleteSQL.Strings = (
      'delete from rotasmanutencoes'
      'where'
      '  ROTAMANUTENCAO = :OLD_ROTAMANUTENCAO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'rotasmanutencoes'
    Tabela_Nome = 'rotasmanutencoes'
    Tabela_Chave = 'rotamanutencao'
  end
  inherited C_Tabela: TClientDataSet
    Left = 35
    Top = 160
    object C_TabelaROTAMANUTENCAO: TIntegerField
      FieldName = 'ROTAMANUTENCAO'
      Origin = 'ROTASMANUTENCOES.ROTAMANUTENCAO'
      Required = True
    end
    object C_TabelaROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ROTASMANUTENCOES.ROTA'
      OnChange = C_TabelaROTAChange
    end
    object C_TabelaMES: TIntegerField
      FieldName = 'MES'
      Origin = 'ROTASMANUTENCOES.MES'
    end
    object C_TabelaANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ROTASMANUTENCOES.ANO'
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'ROTASMANUTENCOES.FUNCIONARIO'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelalkRota: TStringField
      FieldKind = fkLookup
      FieldName = 'lkRota'
      LookupDataSet = C_Rotas
      LookupKeyFields = 'ROTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ROTA'
      Size = 25
      Lookup = True
    end
    object C_TabelaQ_RotasManutencoesDet: TDataSetField
      FieldName = 'Q_RotasManutencoesDet'
    end
  end
  object Q_Rotas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  ROTA, DESCRICAO'
      'from ROTAS')
    Left = 304
    Top = 8
  end
  object P_Rotas: TDataSetProvider
    DataSet = Q_Rotas
    Constraints = True
    Left = 304
    Top = 56
  end
  object C_Rotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Rotas'
    Left = 304
    Top = 104
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
  object C_RotasDS: TDataSource
    DataSet = C_Rotas
    Left = 302
    Top = 150
  end
  object C_RotasManutencoesDet: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_RotasManutencoesDet
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'C_RotasManutencoesDetIndex1'
        Fields = 'ORDEM'
      end>
    IndexName = 'C_RotasManutencoesDetIndex1'
    Params = <>
    StoreDefs = True
    OnCalcFields = C_RotasManutencoesDetCalcFields
    Left = 189
    Top = 102
    object C_RotasManutencoesDetROTAMANUTENCAODET: TIntegerField
      FieldName = 'ROTAMANUTENCAODET'
      Origin = 'ROTASMANUTENCOESDET.ROTAMANUTENCAODET'
      Required = True
    end
    object C_RotasManutencoesDetFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'ROTASMANUTENCOESDET.FAVORECIDO'
    end
    object C_RotasManutencoesDetORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ROTASMANUTENCOESDET.ORDEM'
    end
    object C_RotasManutencoesDetDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'ROTASMANUTENCOESDET.DIA'
    end
    object C_RotasManutencoesDetSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'ROTASMANUTENCOESDET.STATUS'
      FixedChar = True
      Size = 1
    end
    object C_RotasManutencoesDetURGENTE: TStringField
      FieldName = 'URGENTE'
      Origin = 'ROTASMANUTENCOESDET.URGENTE'
      FixedChar = True
      Size = 1
    end
    object C_RotasManutencoesDetOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ROTASMANUTENCOESDET.OBS'
      Size = 100
    end
    object C_RotasManutencoesDetNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_RotasManutencoesDetlkFavorecido: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFavorecido'
      LookupDataSet = C_Favorecido
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'FAVORECIDO'
      Size = 50
      Lookup = True
    end
    object C_RotasManutencoesDeticQtdeEquip: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'icQtdeEquip'
    end
  end
  object Q_RotasManutencoesDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select'
      '  rmd.rotamanutencaodet, '
      '  rmd.rotamanutencao,'
      '  rmd.favorecido, rmd.ordem, rmd.dia, rmd.status,'
      '  rmd.urgente, rmd.obs, f.nome'
      ''
      'from rotasmanutencoesdet rmd'
      'left join favorecidos f on rmd.favorecido = f.favorecido'
      ''
      'where rmd.rotamanutencao = :rotamanutencao')
    UpdateObject = U_RotasManutencoesDet
    Left = 191
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ROTAMANUTENCAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_RotasManutencoesDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from rotasmanutencoesdet '
      'where'
      '  ROTAMANUTENCAODET = :ROTAMANUTENCAODET')
    ModifySQL.Strings = (
      'update rotasmanutencoesdet'
      'set'
      '  ROTAMANUTENCAO = :ROTAMANUTENCAO,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  ORDEM = :ORDEM,'
      '  DIA = :DIA,'
      '  STATUS = :STATUS,'
      '  URGENTE = :URGENTE,'
      '  OBS = :OBS'
      'where'
      '  ROTAMANUTENCAODET = :OLD_ROTAMANUTENCAODET')
    InsertSQL.Strings = (
      'insert into rotasmanutencoesdet'
      '  (ROTAMANUTENCAODET, ROTAMANUTENCAO, FAVORECIDO, ORDEM, DIA, '
      'STATUS, URGENTE, '
      '   OBS)'
      'values'
      '  (:ROTAMANUTENCAODET, :ROTAMANUTENCAO, :FAVORECIDO, :ORDEM, '
      ':DIA, :STATUS, '
      '   :URGENTE, :OBS)')
    DeleteSQL.Strings = (
      'delete from rotasmanutencoesdet'
      'where'
      '  ROTAMANUTENCAODET = :OLD_ROTAMANUTENCAODET')
    Left = 191
    Top = 54
  end
  object C_RotasManutencoesDetDS: TDataSource
    DataSet = C_RotasManutencoesDet
    Left = 190
    Top = 151
  end
  object Q_Favorecido: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select favorecido, nome'
      'from favorecidos'
      'where tipofavorecido = 1'
      'order by 2')
    Left = 378
    Top = 6
  end
  object P_Favorecido: TDataSetProvider
    DataSet = Q_Favorecido
    Constraints = True
    Left = 378
    Top = 54
  end
  object C_Favorecido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Favorecido'
    Left = 378
    Top = 102
    object C_FavorecidoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_FavorecidoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object Q_RotasFav: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cliente, ordem  from rotasclientes where rota  = :rota')
    Left = 384
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rota'
        ParamType = ptUnknown
      end>
  end
  object P_RotasFav: TDataSetProvider
    DataSet = Q_RotasFav
    Constraints = True
    Left = 386
    Top = 212
  end
  object C_RotasFav: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_RotasFav'
    Left = 386
    Top = 261
    object C_RotasFavCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_RotasFavORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object Q_Manutencao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      ' r.descricao, func.nome funcionario, rm.mes,  rm.ano,'
      ' cli.nome cliente,'
      ' rmd.dia, rmd.ordem, rmd.status, rmd.urgente, rmd.obs,'
      
        '(select count(e.equipamento) from equipamentos e where e.favorec' +
        'ido = rmd.favorecido) qtdeequip'
      'from rotasmanutencoes rm'
      
        'left join rotasmanutencoesdet rmd on rm.rotamanutencao = rmd.rot' +
        'amanutencao'
      'left join rotas r on rm.rota = r.rota'
      'left join favorecidos func on rm.funcionario = func.favorecido'
      'left join favorecidos cli on rmd.favorecido = cli.favorecido'
      'where rm.rotamanutencao = :rotamanutencao'
      'order by rmd.dia,  rmd.urgente desc, rmd.ordem, cli.nome')
    Left = 460
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rotamanutencao'
        ParamType = ptUnknown
      end>
  end
  object P_Manutencao: TDataSetProvider
    DataSet = Q_Manutencao
    Constraints = True
    Left = 463
    Top = 55
  end
  object C_Manutencao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Manutencao'
    Left = 462
    Top = 104
    object C_ManutencaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ROTAS.DESCRICAO'
      Size = 25
    end
    object C_ManutencaoFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FAVORECIDOS.FUNCIONARIO'
      Size = 50
    end
    object C_ManutencaoMES: TIntegerField
      FieldName = 'MES'
      Origin = 'ROTASMANUTENCOES.MES'
    end
    object C_ManutencaoANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ROTASMANUTENCOES.ANO'
    end
    object C_ManutencaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'FAVORECIDOS.CLIENTE'
      Size = 50
    end
    object C_ManutencaoDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'ROTASMANUTENCOESDET.DIA'
    end
    object C_ManutencaoORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ROTASMANUTENCOESDET.ORDEM'
    end
    object C_ManutencaoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'ROTASMANUTENCOESDET.STATUS'
      FixedChar = True
      Size = 1
    end
    object C_ManutencaoURGENTE: TStringField
      FieldName = 'URGENTE'
      Origin = 'ROTASMANUTENCOESDET.URGENTE'
      FixedChar = True
      Size = 1
    end
    object C_ManutencaoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ROTASMANUTENCOESDET.OBS'
      Size = 100
    end
    object C_ManutencaoQTDEEQUIP: TIntegerField
      FieldName = 'QTDEEQUIP'
    end
  end
  object C_ManutencaoDS: TDataSource
    DataSet = C_Manutencao
    Left = 461
    Top = 154
  end
  object DBManutencao: TppDBPipeline
    DataSource = C_ManutencaoDS
    UserName = 'DBManutencao'
    Left = 462
    Top = 204
  end
  object ppManutencao: TppReport
    AutoStop = False
    DataPipeline = DBManutencao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    Left = 468
    Top = 254
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBManutencao'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 55033
      mmPrintPosition = 0
      object rgCab: TppRegion
        UserName = 'rgCab'
        Pen.Style = psClear
        mmHeight = 27517
        mmLeft = 529
        mmTop = 529
        mmWidth = 196586
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 44979
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FUNCIONARIO'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 44715
        mmWidth = 65088
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRICAO'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 54504
        mmTop = 31750
        mmWidth = 89959
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MES'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 147109
        mmTop = 31750
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ANO'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 31750
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CLIENTE'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 264
        mmWidth = 46302
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'QTDEEQUIP'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 68527
        mmTop = 264
        mmWidth = 10319
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = DBManutencao
        DataField = 'STATUS'
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 6350
        mmLeft = 89959
        mmTop = 25
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'OBS'
        DataPipeline = DBManutencao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 265
        mmWidth = 67204
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = DBManutencao
        DataField = 'URGENTE'
        Transparent = True
        DataPipelineName = 'DBManutencao'
        mmHeight = 6350
        mmLeft = 111125
        mmTop = 25
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DIA'
      DataPipeline = DBManutencao
      KeepTogether = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBManutencao'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'DIA'
          DataPipeline = DBManutencao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DBManutencao'
          mmHeight = 4233
          mmLeft = 14023
          mmTop = 794
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Dia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 6879
          mmTop = 795
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 7938
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Qt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 71438
          mmTop = 7938
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Realizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 84667
          mmTop = 7938
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Urgente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 108215
          mmTop = 7938
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Obs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 128323
          mmTop = 7938
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.75
          mmHeight = 1058
          mmLeft = 17992
          mmTop = 12965
          mmWidth = 151607
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object Q_FolhaRota: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select rm.rotamanutencao, rm.rota, r.descricao, rm.mes, rm.ano, ' +
        'f.nome'
      'from rotasmanutencoes rm'
      'inner join rotas r on rm.rota = r.rota'
      'left join favorecidos f on rm.funcionario = f.favorecido'
      'where rm.rotamanutencao = :rm')
    Left = 560
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rm'
        ParamType = ptUnknown
      end>
  end
  object P_FolhaRota: TDataSetProvider
    DataSet = Q_FolhaRota
    Constraints = True
    Left = 560
    Top = 64
  end
  object C_FolhaRota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_FolhaRota'
    OnCalcFields = C_FolhaRotaCalcFields
    Left = 560
    Top = 112
    object C_FolhaRotaROTAMANUTENCAO: TIntegerField
      FieldName = 'ROTAMANUTENCAO'
      Origin = 'ROTASMANUTENCOES.ROTAMANUTENCAO'
      Required = True
    end
    object C_FolhaRotaROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = 'ROTASMANUTENCOES.ROTA'
    end
    object C_FolhaRotaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ROTAS.DESCRICAO'
      Size = 25
    end
    object C_FolhaRotaMES: TIntegerField
      FieldName = 'MES'
      Origin = 'ROTASMANUTENCOES.MES'
    end
    object C_FolhaRotaANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ROTASMANUTENCOES.ANO'
    end
    object C_FolhaRotaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_FolhaRotaicMesAno: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icMesAno'
    end
    object C_FolhaRotaQ_FolhaRotaDet: TDataSetField
      FieldName = 'Q_FolhaRotaDet'
    end
  end
  object Q_FolhaRotaDS: TDataSource
    DataSet = Q_FolhaRota
    Left = 560
    Top = 160
  end
  object C_FolhaRotaDS: TDataSource
    DataSet = C_FolhaRota
    Left = 560
    Top = 208
  end
  object Q_FolhaRotaDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_FolhaRotaDS
    SQL.Strings = (
      
        'select rmd.rotamanutencaodet, rmd.rotamanutencao, rmd.ordem, rmd' +
        '.dia, rmd.favorecido, rmd.status, rmd.urgente, f.codigo, f.nome,' +
        ' f.endereco, f.bairro, f.cidade, f.uf'
      'from rotasmanutencoesdet rmd '
      'inner join favorecidos f on rmd.favorecido = f.favorecido'
      'where rmd.rotamanutencao = :ROTAMANUTENCAO'
      'order by rmd.ordem')
    Left = 640
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ROTAMANUTENCAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_FolhaRotDet: TClientDataSet
    Aggregates = <>
    DataSetField = C_FolhaRotaQ_FolhaRotaDet
    Params = <>
    OnCalcFields = C_FolhaRotDetCalcFields
    Left = 640
    Top = 56
    object C_FolhaRotDetROTAMANUTENCAODET: TIntegerField
      FieldName = 'ROTAMANUTENCAODET'
      Origin = 'ROTASMANUTENCOESDET.ROTAMANUTENCAODET'
      Required = True
    end
    object C_FolhaRotDetROTAMANUTENCAO: TIntegerField
      FieldName = 'ROTAMANUTENCAO'
      Origin = 'ROTASMANUTENCOESDET.ROTAMANUTENCAO'
    end
    object C_FolhaRotDetORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ROTASMANUTENCOESDET.ORDEM'
    end
    object C_FolhaRotDetDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'ROTASMANUTENCOESDET.DIA'
    end
    object C_FolhaRotDetFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'ROTASMANUTENCOESDET.FAVORECIDO'
    end
    object C_FolhaRotDetSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'ROTASMANUTENCOESDET.STATUS'
      FixedChar = True
      Size = 1
    end
    object C_FolhaRotDetURGENTE: TStringField
      FieldName = 'URGENTE'
      Origin = 'ROTASMANUTENCOESDET.URGENTE'
      FixedChar = True
      Size = 1
    end
    object C_FolhaRotDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_FolhaRotDetNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_FolhaRotDetENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_FolhaRotDetBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_FolhaRotDetCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_FolhaRotDetUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_FolhaRotDeticEndereco: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icEndereco'
      Size = 102
    end
    object C_FolhaRotDetQ_Equipamentos: TDataSetField
      FieldName = 'Q_Equipamentos'
    end
  end
  object C_FolhaRotDetDS: TDataSource
    DataSet = C_FolhaRotDet
    Left = 640
    Top = 104
  end
  object Q_Equipamentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_FolhaRotaDetDS
    SQL.Strings = (
      'select e.equipamento, e.nummaquina'
      'from equipamentos e'
      'where e.favorecido = :FAVORECIDO')
    Left = 640
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Q_FolhaRotaDetDS: TDataSource
    DataSet = Q_FolhaRotaDet
    Left = 720
    Top = 8
  end
  object C_Equipamentos: TClientDataSet
    Aggregates = <>
    DataSetField = C_FolhaRotDetQ_Equipamentos
    Params = <>
    Left = 640
    Top = 208
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
  end
  object C_EquipamentosDS: TDataSource
    DataSet = C_Equipamentos
    Left = 648
    Top = 256
  end
  object ppDBFolhaRota: TppDBPipeline
    DataSource = C_FolhaRotaDS
    UserName = 'DBFolhaRota'
    Left = 728
    Top = 56
  end
  object ppDBFolhaRotaDet: TppDBPipeline
    DataSource = C_FolhaRotDetDS
    UserName = 'DBFolhaRotaDet'
    Left = 736
    Top = 104
  end
  object ppDBEquip: TppDBPipeline
    DataSource = C_EquipamentosDS
    UserName = 'DBEquip'
    Left = 736
    Top = 152
  end
  object ppFolhaRota: TppReport
    AutoStop = False
    DataPipeline = ppDBFolhaRotaDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    Left = 720
    Top = 200
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFolhaRotaDet'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 54504
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'rgCab1'
        Pen.Style = psClear
        mmHeight = 27517
        mmLeft = 529
        mmTop = 529
        mmWidth = 196586
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Folha de Rota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 76465
        mmTop = 28575
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 34925
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'icMesAno'
        DataPipeline = ppDBFolhaRota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFolhaRota'
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 34925
        mmWidth = 46302
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBFolhaRota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFolhaRota'
        mmHeight = 3969
        mmLeft = 88636
        mmTop = 34925
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Rota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 79375
        mmTop = 34925
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 2381
        mmTop = 40480
        mmWidth = 19558
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'NOME'
        DataPipeline = ppDBFolhaRota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFolhaRota'
        mmHeight = 3969
        mmLeft = 22754
        mmTop = 40480
        mmWidth = 144463
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Style = lsDouble
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 0
        mmTop = 45773
        mmWidth = 197643
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'URG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 794
        mmTop = 47361
        mmWidth = 7874
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Seq.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 9525
        mmTop = 47361
        mmWidth = 7281
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 17727
        mmTop = 47361
        mmWidth = 5334
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 47361
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38894
        mmTop = 47361
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 47361
        mmWidth = 50006
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 47361
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Data Visita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 47361
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Assinatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 179652
        mmTop = 47361
        mmWidth = 16595
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Style = lsDouble
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 0
        mmTop = 52388
        mmWidth = 197643
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpBottom
        StretchWithParent = True
        Weight = 0.75
        mmHeight = 4498
        mmLeft = 0
        mmTop = 265
        mmWidth = 197644
        BandType = 4
      end
      object ppSubEquip: TppSubReport
        UserName = 'SubEquip'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppDBEquip'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBEquip
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBEquip'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5555
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'NUMMAQUINA'
              DataPipeline = ppDBEquip
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBEquip'
              mmHeight = 4064
              mmLeft = 138641
              mmTop = 0
              mmWidth = 21166
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBFolhaRotaDet
        DataField = 'URGENTE'
        Transparent = True
        DataPipelineName = 'ppDBFolhaRotaDet'
        mmHeight = 5292
        mmLeft = 1852
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ORDEM'
        DataPipeline = ppDBFolhaRotaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFolhaRotaDet'
        mmHeight = 3969
        mmLeft = 9525
        mmTop = 0
        mmWidth = 7282
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'DIA'
        DataPipeline = ppDBFolhaRotaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFolhaRotaDet'
        mmHeight = 4064
        mmLeft = 17727
        mmTop = 0
        mmWidth = 5334
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CODIGO'
        DataPipeline = ppDBFolhaRotaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFolhaRotaDet'
        mmHeight = 4064
        mmLeft = 24077
        mmTop = 0
        mmWidth = 13495
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'NOME'
        DataPipeline = ppDBFolhaRotaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFolhaRotaDet'
        mmHeight = 3969
        mmLeft = 38895
        mmTop = 0
        mmWidth = 47361
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'icEndereco'
        DataPipeline = ppDBFolhaRotaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBFolhaRotaDet'
        mmHeight = 3970
        mmLeft = 87841
        mmTop = 0
        mmWidth = 50005
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = '__ /__ /__'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 161133
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = '_________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 180182
        mmTop = 265
        mmWidth = 17526
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end

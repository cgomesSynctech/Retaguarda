inherited DMRomaneioCobr: TDMRomaneioCobr
  Left = 344
  Top = 189
  Height = 359
  Width = 589
  inherited Q_Tabela: TIBQuery
    SQL.Strings = (
      'select romaneiocobr, data, funcionario, obs, codigoromaneio'
      'from romaneioscobr')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from romaneioscobr '
      'where'
      '  ROMANEIOCOBR = :ROMANEIOCOBR')
    ModifySQL.Strings = (
      'update romaneioscobr'
      'set'
      '  DATA = :DATA,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  OBS = :OBS,'
      '  CODIGOROMANEIO = :CODIGOROMANEIO'
      'where'
      '  ROMANEIOCOBR = :OLD_ROMANEIOCOBR')
    InsertSQL.Strings = (
      'insert into romaneioscobr'
      '  (ROMANEIOCOBR, DATA, FUNCIONARIO, OBS, CODIGOROMANEIO)'
      'values'
      '  (:ROMANEIOCOBR, :DATA, :FUNCIONARIO, :OBS, :CODIGOROMANEIO)')
    DeleteSQL.Strings = (
      'delete from romaneioscobr'
      'where'
      '  ROMANEIOCOBR = :OLD_ROMANEIOCOBR')
  end
  inherited DMComponent: TDMComponent
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'ROMANEIOSCOBR'
    Tabela_Nome = 'ROMANEIOSCOBR'
    Tabela_Chave = 'ROMANEIOCOBR'
    GenerateIDFor.Strings = (
      'C_RomaneioCobrDet=ROMANEIOCOBRDET')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaROMANEIOCOBR: TIntegerField
      FieldName = 'ROMANEIOCOBR'
      Origin = 'ROMANEIOSCOBR.ROMANEIOCOBR'
      Required = True
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ROMANEIOSCOBR.DATA'
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'ROMANEIOSCOBR.FUNCIONARIO'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ROMANEIOSCOBR.OBS'
      Size = 255
    end
    object C_TabelaCODIGOROMANEIO: TStringField
      FieldName = 'CODIGOROMANEIO'
      Origin = 'ROMANEIOSCOBR.CODIGOROMANEIO'
      Size = 6
    end
    object C_TabelaQ_RomaneioCobrDet: TDataSetField
      FieldName = 'Q_RomaneioCobrDet'
    end
    object C_TabelalkFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFuncionario'
      LookupDataSet = C_Funcionarios
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object Q_RomaneioCobrDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select rcd.romaneiocobrdet, rcd.romaneiocobr, rcd.titulo, t.titu' +
        'lo as parcela,'
      
        't.vencimento, t.faltareceber, f.nome, f.endereco, f.cidade, f.uf' +
        ', f.cep,'
      'f.fone1, f.fone2, f.celular'
      'from romaneioscobrdet rcd'
      'left join titulosareceber t on t.id = rcd.titulo'
      'left join favorecidos f on f.favorecido = t.cliente'
      'where rcd.romaneiocobr = :ROMANEIOCOBR')
    UpdateObject = U_RomaneioCobrDet
    Left = 179
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ROMANEIOCOBR'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_RomaneioCobrDet: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_RomaneioCobrDet
    Params = <>
    OnNewRecord = C_RomaneioCobrDetNewRecord
    Left = 179
    Top = 50
    object C_RomaneioCobrDetROMANEIOCOBRDET: TIntegerField
      FieldName = 'ROMANEIOCOBRDET'
      Origin = 'ROMANEIOSCOBRDET.ROMANEIOCOBRDET'
      Required = True
    end
    object C_RomaneioCobrDetROMANEIOCOBR: TIntegerField
      FieldName = 'ROMANEIOCOBR'
      Origin = 'ROMANEIOSCOBRDET.ROMANEIOCOBR'
    end
    object C_RomaneioCobrDetTITULO: TIntegerField
      FieldName = 'TITULO'
      Origin = 'ROMANEIOSCOBRDET.TITULO'
    end
    object C_RomaneioCobrDetVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
    end
    object C_RomaneioCobrDetFALTARECEBER: TBCDField
      FieldName = 'FALTARECEBER'
      Origin = 'TITULOSARECEBER.FALTARECEBER'
      Precision = 18
      Size = 2
    end
    object C_RomaneioCobrDetNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_RomaneioCobrDetENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_RomaneioCobrDetCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_RomaneioCobrDetUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_RomaneioCobrDetCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_RomaneioCobrDetFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_RomaneioCobrDetFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_RomaneioCobrDetCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_RomaneioCobrDetPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'TITULOSARECEBER.PARCELA'
      Size = 10
    end
  end
  object C_RomaneioCobrDetDS: TDataSource
    DataSet = C_RomaneioCobrDet
    Left = 179
    Top = 98
  end
  object U_RomaneioCobrDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from romaneioscobrdet '
      'where'
      '  ROMANEIOCOBRDET = :ROMANEIOCOBRDET')
    ModifySQL.Strings = (
      'update romaneioscobrdet'
      'set'
      '  ROMANEIOCOBRDET = :ROMANEIOCOBRDET,'
      '  ROMANEIOCOBR = :ROMANEIOCOBR,'
      '  TITULO = :TITULO'
      'where'
      '  ROMANEIOCOBRDET = :OLD_ROMANEIOCOBRDET')
    InsertSQL.Strings = (
      'insert into romaneioscobrdet'
      '  (ROMANEIOCOBRDET, ROMANEIOCOBR, TITULO)'
      'values'
      '  (:ROMANEIOCOBRDET, :ROMANEIOCOBR, :TITULO)')
    DeleteSQL.Strings = (
      'delete from romaneioscobrdet'
      'where'
      '  ROMANEIOCOBRDET = :OLD_ROMANEIOCOBRDET')
    Left = 179
    Top = 154
  end
  object Q_Funcionarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select favorecido, nome'
      'from favorecidos'
      'where tipofavorecido = 3'
      'order by nome')
    Left = 297
    Top = 2
  end
  object P_Funcionarios: TDataSetProvider
    DataSet = Q_Funcionarios
    Constraints = True
    Left = 297
    Top = 50
  end
  object C_Funcionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Funcionarios'
    Left = 297
    Top = 98
    object C_FuncionariosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_FuncionariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object Q_Romaneios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select rc.romaneiocobr, rc.data, rc.funcionario, rc.obs, rc.codi' +
        'goromaneio,'
      'f.codigo, f.nome'
      'from romaneioscobr rc'
      'left join favorecidos f on rc.funcionario = f.favorecido'
      'where rc.romaneiocobr = :rc'
      '')
    Left = 409
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rc'
        ParamType = ptUnknown
      end>
  end
  object P_Romaneios: TDataSetProvider
    DataSet = Q_Romaneios
    Constraints = True
    Left = 409
    Top = 50
  end
  object C_Romaneios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Romaneios'
    Left = 409
    Top = 106
    object C_RomaneiosROMANEIOCOBR: TIntegerField
      FieldName = 'ROMANEIOCOBR'
      Origin = 'ROMANEIOSCOBR.ROMANEIOCOBR'
      Required = True
    end
    object C_RomaneiosDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ROMANEIOSCOBR.DATA'
    end
    object C_RomaneiosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'ROMANEIOSCOBR.FUNCIONARIO'
    end
    object C_RomaneiosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ROMANEIOSCOBR.OBS'
      Size = 255
    end
    object C_RomaneiosCODIGOROMANEIO: TStringField
      FieldName = 'CODIGOROMANEIO'
      Origin = 'ROMANEIOSCOBR.CODIGOROMANEIO'
      Size = 6
    end
    object C_RomaneiosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_RomaneiosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_RomaneiosQ_Parcelas: TDataSetField
      FieldName = 'Q_Parcelas'
    end
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_RomaneiosDS
    SQL.Strings = (
      
        'select rcd.romaneiocobrdet, rcd.romaneiocobr, rcd.titulo, t.titu' +
        'lo as parcela,'
      
        't.vencimento, t.faltareceber, f.nome, f.endereco, f.cidade, f.uf' +
        ', f.cep,'
      'f.fone1, f.fone2, f.celular'
      'from romaneioscobrdet rcd'
      'left join titulosareceber t on t.id = rcd.titulo'
      'left join favorecidos f on f.favorecido = t.cliente'
      
        'where t.status > 0 and t.status < 50 and rcd.romaneiocobr = :ROM' +
        'ANEIOCOBR')
    Left = 497
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ROMANEIOCOBR'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_Parcelas: TClientDataSet
    Aggregates = <>
    DataSetField = C_RomaneiosQ_Parcelas
    Params = <>
    Left = 497
    Top = 50
    object C_ParcelasROMANEIOCOBRDET: TIntegerField
      FieldName = 'ROMANEIOCOBRDET'
      Origin = 'ROMANEIOSCOBRDET.ROMANEIOCOBRDET'
      Required = True
    end
    object C_ParcelasROMANEIOCOBR: TIntegerField
      FieldName = 'ROMANEIOCOBR'
      Origin = 'ROMANEIOSCOBRDET.ROMANEIOCOBR'
    end
    object C_ParcelasTITULO: TIntegerField
      FieldName = 'TITULO'
      Origin = 'ROMANEIOSCOBRDET.TITULO'
    end
    object C_ParcelasPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'TITULOSARECEBER.PARCELA'
      Size = 10
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
    end
    object C_ParcelasFALTARECEBER: TBCDField
      FieldName = 'FALTARECEBER'
      Origin = 'TITULOSARECEBER.FALTARECEBER'
      EditFormat = 'R$ #,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ParcelasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ParcelasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ParcelasUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ParcelasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ParcelasFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ParcelasFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ParcelasCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
  end
  object Q_RomaneiosDS: TDataSource
    DataSet = Q_Romaneios
    Left = 497
    Top = 98
  end
  object ppRomaneio: TppReport
    AutoStop = False
    DataPipeline = ppDBParcelas
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
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    Left = 297
    Top = 154
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBParcelas'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 52652
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 26988
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'ROMANEIO DE COBRAN'#199'AS #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4939
        mmLeft = 46038
        mmTop = 28310
        mmWidth = 63236
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CODIGOROMANEIO'
        DataPipeline = ppDBRomaneios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRomaneios'
        mmHeight = 5027
        mmLeft = 110067
        mmTop = 28310
        mmWidth = 34660
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Data Romaneio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 36513
        mmWidth = 26882
        BandType = 1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DATA'
        DataPipeline = ppDBRomaneios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRomaneios'
        mmHeight = 4057
        mmLeft = 29369
        mmTop = 36513
        mmWidth = 49742
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 41540
        mmWidth = 21167
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NOME'
        DataPipeline = ppDBRomaneios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRomaneios'
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 41540
        mmWidth = 139436
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CODIGO'
        DataPipeline = ppDBRomaneios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRomaneios'
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 41540
        mmWidth = 20638
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 5292
        mmTop = 46831
        mmWidth = 22860
        BandType = 1
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'OBS'
        DataPipeline = ppDBRomaneios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBRomaneios'
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 46831
        mmWidth = 161925
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ShiftWithParent = True
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 529
        mmTop = 51594
        mmWidth = 196850
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      PrintOnFirstPage = False
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppRegion4: TppRegion
        UserName = 'rbrgCabecalho1'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 26988
        mmLeft = 0
        mmTop = 264
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 3175
        mmTop = 1852
        mmWidth = 13123
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'NOME'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 4057
        mmLeft = 16933
        mmTop = 1852
        mmWidth = 99219
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fone 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 118534
        mmTop = 1852
        mmWidth = 11853
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FONE1'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 1852
        mmWidth = 35983
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'T'#237'tulo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 16140
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'PARCELA'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 16140
        mmWidth = 47096
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 794
        mmTop = 6615
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ENDERECO'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 6615
        mmWidth = 109538
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CIDADE'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 127529
        mmTop = 6615
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'UF'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 6615
        mmWidth = 7673
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 156634
        mmTop = 6615
        mmWidth = 1270
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CEP'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 6615
        mmWidth = 28310
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Fone 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 4763
        mmTop = 11642
        mmWidth = 11853
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FONE2'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 11377
        mmWidth = 42069
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 66411
        mmTop = 11377
        mmWidth = 12277
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CELULAR'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 79640
        mmTop = 11377
        mmWidth = 48154
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 66411
        mmTop = 16140
        mmWidth = 19473
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'VENCIMENTO'
        DataPipeline = ppDBParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 86784
        mmTop = 16140
        mmWidth = 34396
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Falta Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 123031
        mmTop = 16140
        mmWidth = 23072
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'FALTARECEBER'
        DataPipeline = ppDBParcelas
        DisplayFormat = '#,###,###,###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 4057
        mmLeft = 147373
        mmTop = 16140
        mmWidth = 34396
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 529
        mmTop = 21431
        mmWidth = 196850
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Cliente(s) Em Romaneio.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 17727
        mmTop = 1852
        mmWidth = 39688
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'TOTAL A RECEBER:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 113506
        mmTop = 1852
        mmWidth = 34131
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'FALTARECEBER'
        DataPipeline = ppDBParcelas
        DisplayFormat = '#,###,###,###,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 1852
        mmWidth = 33867
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'NOME'
        DataPipeline = ppDBParcelas
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBParcelas'
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 15875
        BandType = 7
      end
    end
  end
  object ppDBParcelas: TppDBPipeline
    DataSource = C_ParcelasDS
    UserName = 'DBParcelas'
    Left = 297
    Top = 202
    object ppDBParcelasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIOCOBRDET'
      FieldName = 'ROMANEIOCOBRDET'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBParcelasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIOCOBR'
      FieldName = 'ROMANEIOCOBR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBParcelasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TITULO'
      FieldName = 'TITULO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBParcelasppField4: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBParcelasppField5: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBParcelasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FALTARECEBER'
      FieldName = 'FALTARECEBER'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppDBParcelasppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppDBParcelasppField8: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppDBParcelasppField9: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object ppDBParcelasppField10: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppDBParcelasppField11: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object ppDBParcelasppField12: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppDBParcelasppField13: TppField
      FieldAlias = 'FONE2'
      FieldName = 'FONE2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBParcelasppField14: TppField
      FieldAlias = 'CELULAR'
      FieldName = 'CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
  end
  object C_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 497
    Top = 146
  end
  object C_RomaneiosDS: TDataSource
    DataSet = C_Romaneios
    Left = 409
    Top = 154
  end
  object ppDBRomaneios: TppDBPipeline
    DataSource = C_RomaneiosDS
    UserName = 'DBRomaneios'
    Left = 297
    Top = 258
    object ppDBRomaneiosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIOCOBR'
      FieldName = 'ROMANEIOCOBR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBRomaneiosppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBRomaneiosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNCIONARIO'
      FieldName = 'FUNCIONARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBRomaneiosppField4: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 255
      DisplayWidth = 255
      Position = 3
    end
    object ppDBRomaneiosppField5: TppField
      FieldAlias = 'CODIGOROMANEIO'
      FieldName = 'CODIGOROMANEIO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 4
    end
    object ppDBRomaneiosppField6: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBRomaneiosppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppDBRomaneiosppField8: TppField
      FieldAlias = 'Q_Parcelas'
      FieldName = 'Q_Parcelas'
      FieldLength = 0
      DisplayWidth = 10
      Position = 7
    end
  end
end

object RptTecnica: TRptTecnica
  Left = 281
  Top = 106
  Width = 1108
  Height = 488
  Caption = 'RptTecnica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppDBOrcamento: TppDBPipeline
    DataSource = C_ServicosDetDs
    UserName = 'ppDBOrcamento'
    Left = 192
    Top = 270
  end
  object _ppEntradaAssistencia: TppReport
    AutoStop = False
    DataPipeline = ppDBEntradaAssistencia2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 59
    Top = 36
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEntradaAssistencia2'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 120386
      mmPrintPosition = 0
      object ppLabel15: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 29104
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17991
        mmTop = 29104
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 34396
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label3'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 1323
        mmTop = 38629
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label4'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 42863
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 50800
        mmTop = 42863
        mmWidth = 12192
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label6'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 47096
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 34396
        mmWidth = 78846
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText3'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 38629
        mmWidth = 78846
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText4'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText5'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 42863
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText6'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 47096
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 64294
        mmTop = 47001
        mmWidth = 11783
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label7'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 47096
        mmWidth = 8996
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 51858
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label8'
        Caption = 'Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 53181
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText8'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 53181
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText10'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 125413
        mmTop = 53181
        mmWidth = 71967
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText11'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 53181
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label9'
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 66675
        mmTop = 53181
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label11'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110861
        mmTop = 53181
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label12'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 58208
        mmWidth = 17992
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBPARTESAGRAGADAS'
        CharWrap = False
        DataField = 'PARTESAGRAGADAS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 9790
        mmLeft = 24871
        mmTop = 58208
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label13'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 68792
        mmWidth = 21431
        BandType = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBDEFEITOALEGADO'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 24871
        mmTop = 69056
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 80963
        mmWidth = 196850
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 794
        mmTop = 118269
        mmWidth = 196850
        BandType = 0
      end
      object ppRegion2: TppRegion
        UserName = 'ppRegion2'
        Brush.Style = bsClear
        Caption = 'ppRegion2'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 28575
        mmLeft = 1588
        mmTop = 0
        mmWidth = 197115
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4057
          mmLeft = 36777
          mmTop = 28575
          mmWidth = 12277
          BandType = 0
        end
      end
      object ppDBText12: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 171503
        mmTop = 29104
        mmWidth = 25612
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 170163
        mmTop = 34396
        mmWidth = 26952
        BandType = 0
      end
      object lbEntrega: TppLabel
        UserName = 'lbEntrega'
        Caption = 'COMPROVANTE DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 70908
        mmTop = 29104
        mmWidth = 51858
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 122238
      mmPrintPosition = 0
      object ppRTLegislacao: TppRichText
        OnPrint = ppRTLegislacaoPrint
        UserName = 'RTLegislacao'
        Caption = 'RTLegislacao'
        Stretch = True
        mmHeight = 23548
        mmLeft = 529
        mmTop = 82815
        mmWidth = 197115
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label19'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9525
        mmTop = 47361
        mmWidth = 8202
        BandType = 8
      end
      object ppDBText6: TppDBText
        UserName = 'DBText17'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 47361
        mmWidth = 28310
        BandType = 8
      end
      object ppDBText7: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 64558
        mmTop = 47361
        mmWidth = 11783
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'Label20'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 54240
        mmTop = 47361
        mmWidth = 8996
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line3'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 265
        mmTop = 52123
        mmWidth = 196850
        BandType = 8
      end
      object ppLabel8: TppLabel
        UserName = 'Label21'
        Caption = 'Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 53446
        mmWidth = 21960
        BandType = 8
      end
      object ppDBText8: TppDBText
        UserName = 'DBText19'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 25135
        mmTop = 53446
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText10: TppDBText
        UserName = 'DBText101'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 124619
        mmTop = 53446
        mmWidth = 72496
        BandType = 8
      end
      object ppDBText11: TppDBText
        UserName = 'DBText21'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 75936
        mmTop = 53446
        mmWidth = 33073
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label22'
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 66940
        mmTop = 53446
        mmWidth = 7938
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label23'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110596
        mmTop = 53446
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label24'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 58473
        mmWidth = 17992
        BandType = 8
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBPARTESAGRAGADAS1'
        CharWrap = False
        DataField = 'PARTESAGRAGADAS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 9790
        mmLeft = 25135
        mmTop = 58473
        mmWidth = 172509
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label25'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 69321
        mmWidth = 21431
        BandType = 8
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBDEFEITOALEGADO1'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 25135
        mmTop = 69321
        mmWidth = 172509
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 1058
        mmTop = 81227
        mmWidth = 196850
        BandType = 8
      end
      object ppRegion1: TppRegion
        UserName = 'ppRegion1'
        Brush.Style = bsClear
        Caption = 'ppRegion1'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 28575
        mmLeft = 794
        mmTop = 794
        mmWidth = 197115
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label14'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 34660
        mmWidth = 12171
        BandType = 8
      end
      object ppLabel2: TppLabel
        UserName = 'Label15'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 38894
        mmWidth = 16140
        BandType = 8
      end
      object ppLabel3: TppLabel
        UserName = 'Label16'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 43127
        mmWidth = 10583
        BandType = 8
      end
      object ppLabel4: TppLabel
        UserName = 'Label17'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51065
        mmTop = 43127
        mmWidth = 12171
        BandType = 8
      end
      object ppDBText1: TppDBText
        UserName = 'DBText12'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 34660
        mmWidth = 78846
        BandType = 8
      end
      object ppDBText2: TppDBText
        UserName = 'DBText13'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 38894
        mmWidth = 78846
        BandType = 8
      end
      object ppDBText3: TppDBText
        UserName = 'DBText14'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 43127
        mmWidth = 28310
        BandType = 8
      end
      object ppDBText4: TppDBText
        UserName = 'DBText15'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 64294
        mmTop = 43127
        mmWidth = 32808
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label18'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 29898
        mmWidth = 11113
        BandType = 8
      end
      object ppDBText5: TppDBText
        UserName = 'DBText16'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 29898
        mmWidth = 23548
        BandType = 8
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 170180
        mmTop = 29898
        mmWidth = 25612
        BandType = 8
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 168840
        mmTop = 34660
        mmWidth = 26952
        BandType = 8
      end
    end
  end
  object ppOrcamento: TppReport
    AutoStop = False
    DataPipeline = ppDBOrcamento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 57
    Top = 90
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBOrcamento'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 91811
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 29104
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 29104
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 34396
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label3'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 1323
        mmTop = 38629
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label4'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 42863
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 50800
        mmTop = 42863
        mmWidth = 12192
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label6'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 47096
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 34396
        mmWidth = 78846
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText3'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 38629
        mmWidth = 78846
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText4'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText5'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 42863
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText6'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 47096
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 64294
        mmTop = 47096
        mmWidth = 11783
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label7'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 47096
        mmWidth = 8996
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 51329
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label8'
        Caption = 'Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 53181
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText8'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 53181
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText10'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 53181
        mmWidth = 70908
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText11'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 53181
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label9'
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 66675
        mmTop = 53181
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label11'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 111919
        mmTop = 53181
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label13'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1852
        mmTop = 58208
        mmWidth = 21378
        BandType = 0
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBDEFEITOALEGADO'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 24606
        mmTop = 58208
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppRegion3: TppRegion
        UserName = 'ppRegion3'
        Brush.Style = bsClear
        Caption = 'ppRegion3'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 28575
        mmLeft = 1588
        mmTop = 0
        mmWidth = 197115
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 171503
        mmTop = 29104
        mmWidth = 25612
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 170163
        mmTop = 34396
        mmWidth = 26952
        BandType = 0
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBDEFEITOALEGADO2'
        CharWrap = False
        DataField = 'DEFEITOENCONTRADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 24606
        mmTop = 69586
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Encontrado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 4233
        mmTop = 69056
        mmWidth = 18838
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line3'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 794
        mmTop = 80698
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label18'
        Caption = 'Pe'#231'as/Servi'#231'os.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 82021
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label14'
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 529
        mmTop = 87577
        mmWidth = 11176
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label15'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 26723
        mmTop = 87577
        mmWidth = 15663
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label16'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 118269
        mmTop = 87577
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label19'
        Caption = 'Vl. Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 87577
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label17'
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 87577
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Dt Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 149225
        mmTop = 29104
        mmWidth = 17949
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Hr. Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148167
        mmTop = 34396
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'CODIGO'
        DataPipeline = ppDBOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 4064
        mmLeft = 265
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'DESCRICAOITEM'
        DataPipeline = ppDBOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 0
        mmWidth = 89429
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 119327
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'VALOR'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'SUBTOTAL'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 39952
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 265
        mmTop = 6085
        mmWidth = 196850
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        DataField = 'SUBTOTAL'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 4304
        mmLeft = 164800
        mmTop = 1058
        mmWidth = 32315
        BandType = 7
      end
      object ppRichText1: TppRichText
        OnPrint = ppRichText1Print
        UserName = 'RichText1'
        Caption = 'RichText1'
        mmHeight = 30956
        mmLeft = 529
        mmTop = 7938
        mmWidth = 196321
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Total Pe'#231'as/Servi'#231'os:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 128852
        mmTop = 1323
        mmWidth = 34396
        BandType = 7
      end
    end
  end
  object ppDBEntradaAssistencia2: TppDBPipeline
    DataSource = C_ServicosDS
    UserName = 'DBEntradaAssistencia2'
    Left = 738
    Top = 324
  end
  object Q_Servicos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT'
      
        '      (select fav.nome from favorecidos fav where fav.codigo = S' +
        '.TECNICOENTRADA and fav.tipo_func ='#39'E'#39') as ATENDENTE,'
      '       S.SERVICO,'
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
      '       S.FUNCSAIDA,'
      '       S.STATUSSERVICO,'
      '       S.LOCALIZACAO,'
      '       S.TIPOSERVICO,'
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
      '       S.GARANTIAFABRICA,'
      '       S.FORAGARANTIA,'
      '       S.RETORNO,'
      '       S.ORCAMENTOACEITO,'
      '       S.ORCAMENTOCOMUNICADO,'
      '       S.SEMEMBALAGEM,'
      '       S.OBSAVARIA,'
      '       CE.NUMEROSERIE,'
      '       CE.MODELO,'
      '       CE.datacompra,'
      '       CE.diasgarantia,'
      '       CE.notafiscal,'
      '       CE.revendedor,'
      '       CE.CPF_CNPJ as CPFCNPJ_EQUIP,'
      '       S.CARACTERISTICA,'
      '       F.NRO,'
      '       F.NOME,'
      '       F.ENDERECO,'
      '       F.BAIRRO,'
      '       F.CIDADE,'
      '       F.CEP,'
      '       F.UF,'
      '       F.FONE1, F.FONE2,F.CELULAR,'
      '       F.CPF_CNPJ, F.CODIGO,'
      '       M.DESCRICAO AS DESCMODELO,'
      '       SS.DESCRICAO AS DESCSTATUS,'
      '       T.NOME AS NOMETECNICO,'
      '       L.DESCRICAO AS DESCLOCAL,'
      '       TS.DESCRICAO AS DESCTIPOSERV,'
      '       TE.DESCRICAO AS DESCTIPOEQUIP,'
      '       MR.DESCRICAO AS DESCMARCA,'
      '       FR.DESCRICAO AS DESCFABRICANTE,'
      '       s.obsorcaceito,'
      '       s.obsorccomunicado,'
      '       M.descricao,'
      '       M.cor,'
      '       S.tecnicodaos,'
      '       CE.MARCA,'
      '       CE.TIPO,'
      '       S.USUARIO'
      'From SERVICOS S'
      '    INNER JOIN FAVORECIDOS F ON F.FAVORECIDO = S.CLIENTE'
      
        '    LEFT JOIN CLIENTESEQUIPAMENTOS CE ON S.EQUIPAMENTO = CE.EQUI' +
        'PAMENTO'
      '    LEFT JOIN MODELOS M ON CE.MODELO = M.MODELO'
      
        '    LEFT JOIN STATUSSERVICOS SS ON SS.STATUSSERVICO = S.STATUSSE' +
        'RVICO'
      '    LEFT JOIN FAVORECIDOS T ON T.FAVORECIDO = S.TECNICO'
      
        '    LEFT JOIN LOCALIZACAOEQUIPAMENTO L ON L.LOCALIZACAOEQUIPAMEN' +
        'TO = S.LOCALIZACAO'
      '    LEFT JOIN TIPOSSERVICOS TS ON TS.TIPOSERVICO = S.TIPOSERVICO'
      
        '    LEFT JOIN TIPOEQUIPAMENTOS TE ON TE.TIPOEQUIPAMENTO = M.TIPO' +
        'EQUIPAMENTO'
      '    LEFT JOIN MARCAS MR ON MR.MARCA = M.MARCA'
      '    LEFT JOIN FABRICANTES FR ON FR.FABRICANTE = M.FABRICANTE'
      'WHERE S.SERVICO = :S')
    Left = 378
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'S'
        ParamType = ptUnknown
      end>
  end
  object P_Servicos: TDataSetProvider
    DataSet = Q_Servicos
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 378
    Top = 144
  end
  object C_Servicos: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Servicos'
    Left = 379
    Top = 79
    object C_ServicosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object C_ServicosOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_ServicosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object C_ServicosDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_ServicosHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'SERVICOS.HORAENTRADA'
    end
    object C_ServicosEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'SERVICOS.EQUIPAMENTO'
    end
    object C_ServicosPARTESAGRAGADAS: TStringField
      FieldName = 'PARTESAGRAGADAS'
      Origin = 'SERVICOS.PARTESAGRAGADAS'
      Size = 100
    end
    object C_ServicosDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'SERVICOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_ServicosDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'SERVICOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_ServicosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'SERVICOS.OBSERVACAO'
      Size = 255
    end
    object C_ServicosDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SERVICOS.DATASAIDA'
    end
    object C_ServicosHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object C_ServicosFUNCENTRADA: TIntegerField
      FieldName = 'FUNCENTRADA'
      Origin = 'SERVICOS.FUNCENTRADA'
    end
    object C_ServicosTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'SERVICOS.TECNICO'
    end
    object C_ServicosFUNCSAIDA: TIntegerField
      FieldName = 'FUNCSAIDA'
      Origin = 'SERVICOS.FUNCSAIDA'
    end
    object C_ServicosSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'SERVICOS.STATUSSERVICO'
    end
    object C_ServicosLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'SERVICOS.LOCALIZACAO'
    end
    object C_ServicosTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'SERVICOS.TIPOSERVICO'
    end
    object C_ServicosAVARIA: TStringField
      FieldName = 'AVARIA'
      Origin = 'SERVICOS.AVARIA'
      FixedChar = True
      Size = 1
    end
    object C_ServicosCOMACESSORIO: TStringField
      FieldName = 'COMACESSORIO'
      Origin = 'SERVICOS.COMACESSORIO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosCOMACESSORIOOBS: TStringField
      FieldName = 'COMACESSORIOOBS'
      Origin = 'SERVICOS.COMACESSORIOOBS'
      Size = 100
    end
    object C_ServicosESTADOPRODMANCHADO: TStringField
      FieldName = 'ESTADOPRODMANCHADO'
      Origin = 'SERVICOS.ESTADOPRODMANCHADO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosESTADOPRODARRANHADO: TStringField
      FieldName = 'ESTADOPRODARRANHADO'
      Origin = 'SERVICOS.ESTADOPRODARRANHADO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosESTADOPRODSUJO: TStringField
      FieldName = 'ESTADOPRODSUJO'
      Origin = 'SERVICOS.ESTADOPRODSUJO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosESTADOPRODCABOELETRICO: TStringField
      FieldName = 'ESTADOPRODCABOELETRICO'
      Origin = 'SERVICOS.ESTADOPRODCABOELETRICO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosESTADOPRODQUEBRADO: TStringField
      FieldName = 'ESTADOPRODQUEBRADO'
      Origin = 'SERVICOS.ESTADOPRODQUEBRADO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosEMBALAGEMPAPELAO: TStringField
      FieldName = 'EMBALAGEMPAPELAO'
      Origin = 'SERVICOS.EMBALAGEMPAPELAO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosEMBALAGEMPLASTICO: TStringField
      FieldName = 'EMBALAGEMPLASTICO'
      Origin = 'SERVICOS.EMBALAGEMPLASTICO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosGARANTIAFABRICA: TStringField
      FieldName = 'GARANTIAFABRICA'
      Origin = 'SERVICOS.GARANTIAFABRICA'
      FixedChar = True
      Size = 1
    end
    object C_ServicosFORAGARANTIA: TStringField
      FieldName = 'FORAGARANTIA'
      Origin = 'SERVICOS.FORAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object C_ServicosRETORNO: TStringField
      FieldName = 'RETORNO'
      Origin = 'SERVICOS.RETORNO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosORCAMENTOACEITO: TStringField
      FieldName = 'ORCAMENTOACEITO'
      Origin = 'SERVICOS.ORCAMENTOACEITO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosORCAMENTOCOMUNICADO: TStringField
      FieldName = 'ORCAMENTOCOMUNICADO'
      Origin = 'SERVICOS.ORCAMENTOCOMUNICADO'
      FixedChar = True
      Size = 1
    end
    object C_ServicosSEMEMBALAGEM: TStringField
      FieldName = 'SEMEMBALAGEM'
      Origin = 'SERVICOS.SEMEMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object C_ServicosOBSAVARIA: TStringField
      FieldName = 'OBSAVARIA'
      Origin = 'SERVICOS.OBSAVARIA'
      Size = 100
    end
    object C_ServicosNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'CLIENTESEQUIPAMENTOS.NUMEROSERIE'
      Size = 30
    end
    object C_ServicosMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'CLIENTESEQUIPAMENTOS.MODELO'
    end
    object C_ServicosDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'CLIENTESEQUIPAMENTOS.DATACOMPRA'
    end
    object C_ServicosDIASGARANTIA: TIntegerField
      FieldName = 'DIASGARANTIA'
      Origin = 'CLIENTESEQUIPAMENTOS.DIASGARANTIA'
    end
    object C_ServicosNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'CLIENTESEQUIPAMENTOS.NOTAFISCAL'
      Size = 10
    end
    object C_ServicosREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Origin = 'CLIENTESEQUIPAMENTOS.REVENDEDOR'
      Size = 50
    end
    object C_ServicosCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'SERVICOS.CARACTERISTICA'
      Size = 100
    end
    object C_ServicosNRO: TStringField
      FieldName = 'NRO'
      Origin = 'FAVORECIDOS.NRO'
      Size = 4
    end
    object C_ServicosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ServicosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ServicosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_ServicosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ServicosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ServicosFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ServicosFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ServicosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      Size = 14
    end
    object C_ServicosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_ServicosDESCMODELO: TStringField
      FieldName = 'DESCMODELO'
      Origin = 'MODELOS.DESCMODELO'
      Size = 60
    end
    object C_ServicosDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Origin = 'STATUSSERVICOS.DESCSTATUS'
      Size = 30
    end
    object C_ServicosNOMETECNICO: TStringField
      FieldName = 'NOMETECNICO'
      Origin = 'FAVORECIDOS.NOMETECNICO'
      Size = 50
    end
    object C_ServicosDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Origin = 'LOCALIZACAOEQUIPAMENTO.DESCLOCAL'
      Size = 30
    end
    object C_ServicosDESCTIPOSERV: TStringField
      FieldName = 'DESCTIPOSERV'
      Origin = 'TIPOSSERVICOS.DESCTIPOSERV'
      Size = 30
    end
    object C_ServicosDESCTIPOEQUIP: TStringField
      FieldName = 'DESCTIPOEQUIP'
      Origin = 'TIPOEQUIPAMENTOS.DESCTIPOEQUIP'
      Size = 30
    end
    object C_ServicosDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Origin = 'MARCAS.DESCMARCA'
      Size = 30
    end
    object C_ServicosDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Origin = 'FABRICANTES.DESCFABRICANTE'
      Size = 30
    end
    object C_ServicosQ_ServicosDet: TDataSetField
      FieldName = 'Q_ServicosDet'
    end
    object C_ServicosATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'SERVICOS.ATENDENTE'
    end
    object C_ServicosOBSORCACEITO: TStringField
      FieldName = 'OBSORCACEITO'
      Origin = 'SERVICOS.OBSORCACEITO'
      Size = 100
    end
    object C_ServicosOBSORCCOMUNICADO: TStringField
      FieldName = 'OBSORCCOMUNICADO'
      Origin = 'SERVICOS.OBSORCCOMUNICADO'
      Size = 100
    end
    object C_ServicosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MODELOS.DESCRICAO'
      Size = 60
    end
    object C_ServicosCOR: TStringField
      FieldName = 'COR'
      Origin = 'MODELOS.COR'
      Size = 15
    end
    object C_ServicosTECNICODAOS: TIntegerField
      FieldName = 'TECNICODAOS'
      Origin = 'SERVICOS.TECNICODAOS'
    end
    object C_ServicosCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_ServicosCPFCNPJ_EQUIP: TStringField
      FieldName = 'CPFCNPJ_EQUIP'
      Origin = 'CLIENTESEQUIPAMENTOS.CPFCNPJ_EQUIP'
      Size = 14
    end
    object C_ServicosUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ServicosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'CLIENTESEQUIPAMENTOS.MARCA'
    end
    object C_ServicosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'CLIENTESEQUIPAMENTOS.TIPO'
    end
    object C_ServicosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'SERVICOS.USUARIO'
      Size = 50
    end
  end
  object C_ServicosDS: TDataSource
    Tag = 100
    DataSet = C_Servicos
    Left = 380
    Top = 199
  end
  object C_ServicosDetDs: TDataSource
    Tag = 100
    DataSet = C_ServicosDet
    Left = 188
    Top = 199
  end
  object C_ServicosDet: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_ServicosQ_ServicosDet
    Params = <>
    OnCalcFields = C_ServicosDetCalcFields
    Left = 189
    Top = 80
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
    object C_ServicosDetESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
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
      'Select   sd.DESCRICAOITEM, '
      '             sd.ITEM, '
      '             sd.QUANTIDADE, '
      '             sd.SERVICO, '
      '             sd.SERVICODET, '
      '             sd.VALOR,'
      '              i.CODIGO,'
      '              i.descricao,'
      '             pp.preco,'
      '             i.estoque'
      'from servicosdet sd'
      '    left join itens i on i.item = sd.item'
      
        '    left join produtospreco pp on pp.item = i.item and pp.tabela' +
        'preco = 0'
      'WHERE sd.SERVICO = :SERVICO'
      '')
    Left = 186
    Top = 18
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERVICO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Q_MasterDS: TDataSource
    DataSet = Q_Servicos
    Left = 189
    Top = 143
  end
  object Q_Chamados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'select c.chamado, c.cliente, c.funcionario, c.datamarcacao, c.ho' +
        'ramarcacao, c.defeitoalegado, c.status, c.defeitoencontrado, c.d' +
        'ataentrada, c.horaentrada, c.datasaida, c.horasaida, f.nome as n' +
        'omecliente, v.nome as nomefunc, f.endereco, f.bairro, f.cidade, ' +
        'f.cep, f.fone1, f.fone2, c.numero, ce.numeroserie || '#39' - '#39' || m.' +
        'descricao as descmodelo'
      'from chamados c'
      'left join favorecidos f on f.favorecido = c.cliente'
      'left join favorecidos v on v.favorecido = c.funcionario'
      
        'left join clientesequipamentos ce on c.equipamento = ce.equipame' +
        'nto'
      'left join modelos m on ce.modelo = m.modelo'
      'where c.chamado = :chamado')
    Left = 272
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chamado'
        ParamType = ptUnknown
      end>
  end
  object P_Chamados: TDataSetProvider
    DataSet = Q_Chamados
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 274
    Top = 143
  end
  object C_Chamados: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Chamados'
    Left = 275
    Top = 79
    object C_ChamadosCHAMADO: TIntegerField
      FieldName = 'CHAMADO'
      Origin = 'CHAMADOS.CHAMADO'
      Required = True
    end
    object C_ChamadosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CHAMADOS.CLIENTE'
    end
    object C_ChamadosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'CHAMADOS.FUNCIONARIO'
    end
    object C_ChamadosDATAMARCACAO: TDateField
      FieldName = 'DATAMARCACAO'
      Origin = 'CHAMADOS.DATAMARCACAO'
    end
    object C_ChamadosHORAMARCACAO: TTimeField
      FieldName = 'HORAMARCACAO'
      Origin = 'CHAMADOS.HORAMARCACAO'
    end
    object C_ChamadosDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'CHAMADOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_ChamadosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'CHAMADOS.STATUS'
      Size = 1
    end
    object C_ChamadosDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'CHAMADOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_ChamadosDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'CHAMADOS.DATAENTRADA'
    end
    object C_ChamadosHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'CHAMADOS.HORAENTRADA'
    end
    object C_ChamadosDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'CHAMADOS.DATASAIDA'
    end
    object C_ChamadosHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'CHAMADOS.HORASAIDA'
    end
    object C_ChamadosNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'FAVORECIDOS.NOMECLIENTE'
      Size = 50
    end
    object C_ChamadosNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Origin = 'FAVORECIDOS.NOMEFUNC'
      Size = 50
    end
    object C_ChamadosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ChamadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_ChamadosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ChamadosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ChamadosFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ChamadosFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ChamadosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'CHAMADOS.NUMERO'
      Size = 12
    end
    object C_ChamadosDESCMODELO: TStringField
      FieldName = 'DESCMODELO'
      Size = 93
    end
  end
  object C_ChamadosDS: TDataSource
    Tag = 100
    DataSet = C_Chamados
    Left = 283
    Top = 199
  end
  object ppDBChamado: TppDBPipeline
    DataSource = C_ChamadosDS
    UserName = 'ppDBChamado'
    Left = 277
    Top = 268
    object ppDBChamadoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHAMADO'
      FieldName = 'CHAMADO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBChamadoppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBChamadoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNCIONARIO'
      FieldName = 'FUNCIONARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBChamadoppField4: TppField
      FieldAlias = 'DATAMARCACAO'
      FieldName = 'DATAMARCACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBChamadoppField5: TppField
      FieldAlias = 'HORAMARCACAO'
      FieldName = 'HORAMARCACAO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 4
    end
    object ppDBChamadoppField6: TppField
      FieldAlias = 'DEFEITOALEGADO'
      FieldName = 'DEFEITOALEGADO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 5
    end
    object ppDBChamadoppField7: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBChamadoppField8: TppField
      FieldAlias = 'DEFEITOENCONTRADO'
      FieldName = 'DEFEITOENCONTRADO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 7
    end
    object ppDBChamadoppField9: TppField
      FieldAlias = 'DATAENTRADA'
      FieldName = 'DATAENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
    object ppDBChamadoppField10: TppField
      FieldAlias = 'HORAENTRADA'
      FieldName = 'HORAENTRADA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 9
    end
    object ppDBChamadoppField11: TppField
      FieldAlias = 'DATASAIDA'
      FieldName = 'DATASAIDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppDBChamadoppField12: TppField
      FieldAlias = 'HORASAIDA'
      FieldName = 'HORASAIDA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 11
    end
    object ppDBChamadoppField13: TppField
      FieldAlias = 'NOMECLIENTE'
      FieldName = 'NOMECLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppDBChamadoppField14: TppField
      FieldAlias = 'NOMEFUNC'
      FieldName = 'NOMEFUNC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDBChamadoppField15: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppDBChamadoppField16: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object ppDBChamadoppField17: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 16
    end
    object ppDBChamadoppField18: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppDBChamadoppField19: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object ppDBChamadoppField20: TppField
      FieldAlias = 'FONE2'
      FieldName = 'FONE2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppDBChamadoppField21: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 20
    end
    object ppDBChamadoppField22: TppField
      FieldAlias = 'DESCMODELO'
      FieldName = 'DESCMODELO'
      FieldLength = 93
      DisplayWidth = 93
      Position = 21
    end
  end
  object ppChamado: TppReport
    AutoStop = False
    DataPipeline = ppDBChamado
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 56
    Top = 143
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBChamado'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 132292
      mmPrintPosition = 0
      object ppLabel44: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 34396
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label3'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 1323
        mmTop = 38629
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label4'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 42863
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 50800
        mmTop = 42863
        mmWidth = 12192
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label6'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 47096
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText2'
        DataField = 'NOMECLIENTE'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 34396
        mmWidth = 78846
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText3'
        DataField = 'ENDERECO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 38629
        mmWidth = 78846
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText4'
        DataField = 'BAIRRO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText5'
        DataField = 'CIDADE'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 42863
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText6'
        DataField = 'CEP'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 17992
        mmTop = 47096
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 4064
        mmLeft = 64294
        mmTop = 47096
        mmWidth = 11684
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label7'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 47096
        mmWidth = 8996
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 51858
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label8'
        Caption = 'Data Marcada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 1323
        mmTop = 53181
        mmWidth = 23072
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText8'
        DataField = 'DATAMARCACAO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 53181
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText11'
        DataField = 'HORAMARCACAO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 91546
        mmTop = 53181
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label9'
        Caption = 'Hora Marcada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 66675
        mmTop = 53181
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label13'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 72231
        mmWidth = 21431
        BandType = 0
      end
      object ppDBMemo8: TppDBMemo
        UserName = 'DBDEFEITOALEGADO'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 16140
        mmLeft = 24871
        mmTop = 72496
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine8: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 265
        mmLeft = 25135
        mmTop = 63236
        mmWidth = 36777
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 794
        mmTop = 129646
        mmWidth = 196850
        BandType = 0
      end
      object ppRegion4: TppRegion
        UserName = 'ppRegion2'
        Caption = 'ppRegion2'
        Pen.Style = psClear
        mmHeight = 28575
        mmLeft = 1588
        mmTop = 0
        mmWidth = 197115
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel60: TppLabel
          UserName = 'Label10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4057
          mmLeft = 36777
          mmTop = 28575
          mmWidth = 12277
          BandType = 0
        end
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Data Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 2381
        mmTop = 58738
        mmWidth = 21802
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 58738
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Hora Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 67998
        mmTop = 58738
        mmWidth = 22013
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 91281
        mmTop = 58738
        mmWidth = 28575
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 265
        mmLeft = 90752
        mmTop = 63236
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Data Sa'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 5556
        mmTop = 64823
        mmWidth = 18627
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        DataField = 'DATASAIDA'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 64823
        mmWidth = 38100
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 265
        mmLeft = 25135
        mmTop = 69321
        mmWidth = 36777
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'Hora Sa'#237'da:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 71173
        mmTop = 64823
        mmWidth = 18838
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText501'
        DataField = 'HORASAIDA'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 91281
        mmTop = 64823
        mmWidth = 28575
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 265
        mmLeft = 90752
        mmTop = 69321
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'Encontrado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 4233
        mmTop = 91017
        mmWidth = 18838
        BandType = 0
      end
      object ppDBMemo7: TppDBMemo
        UserName = 'DBDEFEITOALEGADO3'
        CharWrap = False
        DataField = 'DEFEITOENCONTRADO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 16140
        mmLeft = 24342
        mmTop = 91281
        mmWidth = 173038
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'CHAMADO T'#201'CNICO N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61119
        mmTop = 29369
        mmWidth = 40217
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 265
        mmLeft = 70908
        mmTop = 121179
        mmWidth = 52652
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Assinatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 88371
        mmTop = 122502
        mmWidth = 16510
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Funcion'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 100277
        mmTop = 34396
        mmWidth = 19262
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'NOMEFUNC'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 120386
        mmTop = 34396
        mmWidth = 78052
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'NUMERO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 29369
        mmWidth = 38629
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label1'
        Caption = 'Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 97631
        mmTop = 39423
        mmWidth = 21929
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBChamado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBChamado'
        mmHeight = 3969
        mmLeft = 120386
        mmTop = 39423
        mmWidth = 78052
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEntradaAssistencia: TppReport
    AutoStop = False
    DataPipeline = ppDBEntradaAssistencia2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    BeforePrint = ppEntradaAssistenciaBeforePrint
    DeviceType = 'Screen'
    Left = 56
    Top = 204
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEntradaAssistencia2'
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 208492
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 6615
        mmLeft = 117740
        mmTop = 198173
        mmWidth = 26988
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 6615
        mmLeft = 88636
        mmTop = 198173
        mmWidth = 26988
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 6615
        mmLeft = 60061
        mmTop = 198173
        mmWidth = 26988
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6615
        mmLeft = 31485
        mmTop = 198173
        mmWidth = 26988
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 3704
        mmTop = 198173
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4498
        mmTop = 37042
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4868
        mmLeft = 18785
        mmTop = 36248
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 52652
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label3'
        Caption = 'Aparelho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 71173
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label4'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 71173
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label5'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 56092
        mmWidth = 14817
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 48419
        mmTop = 52652
        mmWidth = 97631
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText4'
        DataField = 'DESCMARCA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 65617
        mmTop = 71173
        mmWidth = 25929
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText6'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 19315
        mmTop = 71173
        mmWidth = 35454
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText7'
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 56092
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label7'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62706
        mmTop = 56092
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label13'
        Caption = 'Revenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 78581
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3246
        mmLeft = 63201
        mmTop = 37042
        mmWidth = 20673
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3246
        mmLeft = 114001
        mmTop = 37042
        mmWidth = 21731
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'lbEntrega'
        Caption = 
          'HOR'#193'RIO DE  FUNCIONAMENTO: SEG/SEX 08:00 '#192'S 17:00 S'#193'B 08:00 '#192'S 1' +
          '2:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 20767
        mmTop = 33073
        mmWidth = 106892
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 49742
        mmTop = 37042
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = 'TIPO SERVI'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4498
        mmTop = 41275
        mmWidth = 20902
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        DataField = 'DESCTIPOSERV'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 26723
        mmTop = 41275
        mmWidth = 78846
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'HORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97896
        mmTop = 37042
        mmWidth = 8996
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 5027
        mmTop = 48683
        mmWidth = 139965
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Pen.Style = psDot
        Pen.Width = 2
        Position = lpLeft
        Visible = False
        Weight = 1.5
        mmHeight = 205317
        mmLeft = 148432
        mmTop = 5292
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'lbEntrega2'
        Caption = 'DADOS DO CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 60061
        mmTop = 48683
        mmWidth = 29104
        BandType = 0
      end
      object ppDBText74: TppDBText
        UserName = 'DBText74'
        DataField = 'CODIGO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 52652
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44979
        mmTop = 52652
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 101600
        mmTop = 56092
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText75: TppDBText
        UserName = 'DBText75'
        DataField = 'CELULAR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 112713
        mmTop = 56092
        mmWidth = 33338
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 5292
        mmTop = 66940
        mmWidth = 139965
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'DADOS DO APARELHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 66940
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'No. S'#233'rie::'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 78846
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'Dt. Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 74877
        mmWidth = 15081
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'DBText81'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 107950
        mmTop = 78846
        mmWidth = 39158
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        DataField = 'DATACOMPRA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 53711
        mmTop = 74877
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        DataField = 'REVENDEDOR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 19315
        mmTop = 78846
        mmWidth = 73819
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        Caption = 'Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 74877
        mmWidth = 15081
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        DataField = 'NOTAFISCAL'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 74877
        mmWidth = 16404
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 5027
        mmTop = 91546
        mmWidth = 142082
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'CARACTER'#205'STICAS DO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 51197
        mmTop = 91811
        mmWidth = 46038
        BandType = 0
      end
      object ppDBMemo13: TppDBMemo
        UserName = 'DBDEFEITOALEGADO5'
        CharWrap = False
        DataField = 'CARACTERISTICA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 133615
        mmTop = 93927
        mmWidth = 12965
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Obser.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 122767
        mmTop = 95515
        mmWidth = 9260
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.75
        mmHeight = 529
        mmLeft = 5821
        mmTop = 120650
        mmWidth = 139965
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'Termos e Condi'#231#245'es da Assist'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 39158
        mmTop = 121444
        mmWidth = 69850
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5842
        mmLeft = 4498
        mmTop = 198702
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5842
        mmLeft = 32015
        mmTop = 198702
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5842
        mmLeft = 60590
        mmTop = 198702
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5842
        mmLeft = 89165
        mmTop = 198702
        mmWidth = 25665
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5842
        mmLeft = 118534
        mmTop = 198702
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        Caption = 'Via da Assist'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6646
        mmLeft = 5556
        mmTop = 189707
        mmWidth = 48980
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 75936
        mmTop = 189177
        mmWidth = 61913
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        Caption = 'Concordo com os termos e condi'#231#245'es '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 82550
        mmTop = 193411
        mmWidth = 48683
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 5556
        mmTop = 184944
        mmWidth = 13716
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        DataField = 'ATENDENTE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 20108
        mmTop = 184944
        mmWidth = 51065
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Weight = 0.75
        mmHeight = 529
        mmLeft = 75671
        mmTop = 188384
        mmWidth = 62442
        BandType = 0
      end
      object ppMemo3: TppMemo
        UserName = 'Memo3'
        Caption = 
          'Via do Cliente e Garantia do Servi'#231'o Executado Devidamente Carim' +
          'bada e Assinada pela Assist'#234'ncia T'#233'cnica.'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Via do Cliente e Garantia do Servi'#231'o Executado Devidamente Carim' +
            'bada e Assinada pela Assist'#234'ncia T'#233'cnica.')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10848
        mmLeft = 151342
        mmTop = 193675
        mmWidth = 141552
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        Caption = 'Com Embalagem :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 95515
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        Caption = 'Caixa de Papel'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 35454
        mmTop = 95515
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        Caption = 'Saco Pl'#225'stico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 67998
        mmTop = 95515
        mmWidth = 16581
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        Caption = 'Sem Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 98690
        mmTop = 95515
        mmWidth = 21960
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'EMBALAGEMPAPELAO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 29369
        mmTop = 94456
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'EMBALAGEMPLASTICO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 61913
        mmTop = 94456
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'SEMEMBALAGEM'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 92604
        mmTop = 94456
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        Caption = 'Manchado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 99748
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        Caption = 'Sujo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 92604
        mmTop = 99748
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        Caption = 'Cabo El'#233'trico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 107156
        mmTop = 99748
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel201: TppLabel
        UserName = 'Label2001'
        Caption = 'Quebrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 99484
        mmWidth = 12435
        BandType = 0
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox7'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODMANCHADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 64029
        mmTop = 98690
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox8: TmyDBCheckBox
        UserName = 'DBCheckBox8'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODARRANHADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 29369
        mmTop = 98425
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox9: TmyDBCheckBox
        UserName = 'DBCheckBox9'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODSUJO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 85725
        mmTop = 98690
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox10: TmyDBCheckBox
        UserName = 'DBCheckBox10'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODCABOELETRICO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 100013
        mmTop = 98425
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox11: TmyDBCheckBox
        UserName = 'DBCheckBox101'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODQUEBRADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 125942
        mmTop = 98690
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel212: TppLabel
        UserName = 'Label212'
        Caption = 'Com Acess'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 111125
        mmWidth = 20638
        BandType = 0
      end
      object myDBCheckBox17: TmyDBCheckBox
        UserName = 'DBCheckBox17'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'COMACESSORIO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 28310
        mmTop = 110331
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel213: TppLabel
        UserName = 'Label213'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 40746
        mmTop = 111125
        mmWidth = 5821
        BandType = 0
      end
      object ppDBMemo10: TppDBMemo
        UserName = 'DBMemo10'
        CharWrap = False
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 8202
        mmLeft = 47890
        mmTop = 111390
        mmWidth = 97631
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 111125
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel216: TppLabel
        UserName = 'Label216'
        Caption = 'Defeito alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 5292
        mmTop = 82550
        mmWidth = 13229
        BandType = 0
      end
      object myDBCheckBox26: TmyDBCheckBox
        UserName = 'DBCheckBox26'
        BooleanFalse = 'S'
        BooleanTrue = 'N'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'COMACESSORIO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 28310
        mmTop = 115888
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel218: TppLabel
        UserName = 'Label218'
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 116681
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel224: TppLabel
        UserName = 'Label224'
        Caption = 'Endere'#231'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 59796
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText126: TppDBText
        UserName = 'DBText126'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 22225
        mmTop = 59796
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel225: TppLabel
        UserName = 'Label225'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 109273
        mmTop = 59796
        mmWidth = 3175
        BandType = 0
      end
      object ppDBText127: TppDBText
        UserName = 'DBText127'
        DataField = 'NRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 113506
        mmTop = 59796
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel226: TppLabel
        UserName = 'Label226'
        Caption = 'Bairro :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 63236
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText139: TppDBText
        UserName = 'DBText139'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 63236
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel227: TppLabel
        UserName = 'Label227'
        Caption = 'Cidade :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 63236
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText141: TppDBText
        UserName = 'DBText141'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 59796
        mmTop = 63236
        mmWidth = 52652
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 103452
        mmWidth = 5821
        BandType = 0
      end
      object ppDBMemo11: TppDBMemo
        UserName = 'DBMemo101'
        CharWrap = False
        DataField = 'OBSAVARIA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 7144
        mmLeft = 13229
        mmTop = 103452
        mmWidth = 132292
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel235: TppLabel
        UserName = 'Label235'
        Caption = 'Label235'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 56092
        mmWidth = 39952
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'Arranhado / Riscado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 99484
        mmWidth = 28575
        BandType = 0
      end
      object myDBCheckBox30: TmyDBCheckBox
        UserName = 'DBCheckBox30'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 4498
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Caption = 'Garantia de F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 11377
        mmTop = 44979
        mmWidth = 23876
        BandType = 0
      end
      object myDBCheckBox32: TmyDBCheckBox
        UserName = 'DBCheckBox32'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 40481
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel236: TppLabel
        UserName = 'Label236'
        Caption = 'Fora de Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 46302
        mmTop = 44979
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        Caption = 'Com Av'#225'ria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 99484
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        DataField = 'AVARIA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 99484
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 78846
        mmTop = 44979
        mmWidth = 11113
        BandType = 0
      end
      object myDBCheckBox31: TmyDBCheckBox
        UserName = 'DBCheckBox31'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 73025
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label1002'
        Caption = 'Cor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 71702
        mmTop = 74877
        mmWidth = 5292
        BandType = 0
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        DataField = 'COR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 77788
        mmTop = 74877
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 96309
        mmTop = 71173
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText159: TppDBText
        UserName = 'DBText1301'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 106627
        mmTop = 71173
        mmWidth = 24871
        BandType = 0
      end
      object ppMemo1: TppMemo
        OnPrint = ppMemo1Print
        UserName = 'Memo1'
        Caption = '8'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Estando o Cliente avisado de que seu produto encontra-se consert' +
            'ado, ele ter'#225' o prazo m'#225'ximo de 30 (trinta dias)'
          
            'para  retir'#225'-lo,  ap'#243's  este  prazo  sofrer'#225'  reajuste  de   10%' +
            '  ao   m'#234's  no  Or'#231'amento para  cobrir despesas de'
          
            'armazenamento. O prazo  de  perman'#234'ncia  do   produto   na   Ass' +
            'ist'#234'ncia  ap'#243's  execu'#231#227'o do servi'#231'o  '#233'  de  60'
          
            '(sessenta dias),  passado  este  per'#237'odo,  a  J Carvalho  poder'#225 +
            '   retirar   as  pe'#231'as substitu'#237'das e sucatear o'
          
            'produto  ou  vender para cobrir as despesas com conserto e armaz' +
            'enamento. Sobre a garantia, ser'#225' de 90  (noventa'
          
            'dias) sobre o servi'#231'o executado, tendo cobertura pe'#231'as el'#233'tricas' +
            ' e mec'#226'nicas. Excluem-se da garantia os defeitos'
          
            'por:  queda,  uso  impr'#243'prio  ou  inadequado  do  produto,  pe'#231'a' +
            's  eletr'#244'nicas, pl'#225'sticas, acess'#243'rios, problemas'
          
            'decorrentes de problemas naturais, como por exemplo: raios, inc'#234 +
            'ndio, corros'#227'o, ferrugem, descarga el'#233'trica, etc.'
          
            'A garantia  come'#231'a  a  contar  a  partir da data do aviso ao cli' +
            'ente em que seu produto encontra-se consertado e'
          
            'pronto para retirada. Sobre  a  retirada  do  produto,  '#233' obriga' +
            't'#243'rio '#224' apresenta'#231#227'o da via do cliente, caso n'#227'o'
          
            'apresentada, o produto s'#243'  poder'#225'  ser  retirado com autoriza'#231#227'o' +
            ' do titular da OS por escrito com c'#243'pia do RG do'
          'mesmo para ser anexada a via da assist'#234'ncia.')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 56356
        mmLeft = 5292
        mmTop = 125413
        mmWidth = 141288
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152136
        mmTop = 37042
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4763
        mmLeft = 166423
        mmTop = 36248
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152665
        mmTop = 52652
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'Aparelho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152929
        mmTop = 71173
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 202936
        mmTop = 71173
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152665
        mmTop = 56092
        mmWidth = 14817
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 196057
        mmTop = 52652
        mmWidth = 97367
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'DBText71'
        DataField = 'DESCMARCA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 213255
        mmTop = 71173
        mmWidth = 25929
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText72'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 166952
        mmTop = 71173
        mmWidth = 35454
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 56092
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 210344
        mmTop = 56092
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'Revenda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152929
        mmTop = 78581
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3246
        mmLeft = 210838
        mmTop = 37042
        mmWidth = 20673
        BandType = 0
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3246
        mmLeft = 261638
        mmTop = 37042
        mmWidth = 21731
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'lbEntrega1'
        Caption = 
          'HOR'#193'RIO DE  FUNCIONAMENTO: SEG/SEX 08:00 '#192'S 17:00 S'#193'B 08:00 '#192'S 1' +
          '2:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 168275
        mmTop = 33073
        mmWidth = 106892
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label801'
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197380
        mmTop = 37042
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'TIPO SERVI'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152136
        mmTop = 41275
        mmWidth = 20902
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        DataField = 'DESCTIPOSERV'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 41275
        mmWidth = 78846
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'HORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 245534
        mmTop = 37042
        mmWidth = 8996
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 152665
        mmTop = 48683
        mmWidth = 139965
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        Caption = 'DADOS DO CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 207698
        mmTop = 48948
        mmWidth = 29104
        BandType = 0
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        DataField = 'CODIGO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 52652
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 192617
        mmTop = 52652
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 249238
        mmTop = 56092
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        DataField = 'CELULAR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 259557
        mmTop = 56092
        mmWidth = 33867
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 152929
        mmTop = 66940
        mmWidth = 139965
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = 'DADOS DO APARELHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 206905
        mmTop = 66940
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'No. S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 241565
        mmTop = 78846
        mmWidth = 12615
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label1001'
        Caption = 'Dt. Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 185209
        mmTop = 74877
        mmWidth = 15081
        BandType = 0
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 255588
        mmTop = 78846
        mmWidth = 37835
        BandType = 0
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        DataField = 'DATACOMPRA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 200819
        mmTop = 74877
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        DataField = 'REVENDEDOR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 166952
        mmTop = 78846
        mmWidth = 73819
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        Caption = 'Nota Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 152929
        mmTop = 74877
        mmWidth = 15081
        BandType = 0
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        DataField = 'NOTAFISCAL'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 168540
        mmTop = 74877
        mmWidth = 16140
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 152400
        mmTop = 91546
        mmWidth = 139965
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        Caption = 'CARACTER'#205'STICAS DO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 198835
        mmTop = 91811
        mmWidth = 46038
        BandType = 0
      end
      object ppDBMemo14: TppDBMemo
        UserName = 'DBMemo14'
        CharWrap = False
        DataField = 'CARACTERISTICA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 281253
        mmTop = 93927
        mmWidth = 12965
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        Caption = 'Obser.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 270405
        mmTop = 95515
        mmWidth = 9260
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Weight = 0.75
        mmHeight = 529
        mmLeft = 153459
        mmTop = 120650
        mmWidth = 139965
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        Caption = 'Termos e Condi'#231#245'es da Assist'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 186796
        mmTop = 121444
        mmWidth = 69850
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        Caption = 'Com Embalagem :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152665
        mmTop = 95515
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        Caption = 'Caixa de Papel'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 183092
        mmTop = 95515
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = 'Saco Pl'#225'stico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 215636
        mmTop = 95515
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel193: TppLabel
        UserName = 'Label193'
        Caption = 'Sem Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 246328
        mmTop = 95515
        mmWidth = 21960
        BandType = 0
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox4'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'EMBALAGEMPAPELAO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 176742
        mmTop = 94456
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox5'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'EMBALAGEMPLASTICO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 209550
        mmTop = 94456
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox6'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'SEMEMBALAGEM'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 240242
        mmTop = 94456
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel194: TppLabel
        UserName = 'Label194'
        Caption = 'Manchado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 218282
        mmTop = 99748
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label195'
        Caption = 'Sujo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 240242
        mmTop = 99748
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label2002'
        Caption = 'Cabo El'#233'trico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 254794
        mmTop = 99748
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label203'
        Caption = 'Quebrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 279136
        mmTop = 99484
        mmWidth = 13494
        BandType = 0
      end
      object myDBCheckBox12: TmyDBCheckBox
        UserName = 'DBCheckBox12'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODMANCHADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 211667
        mmTop = 98690
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox13: TmyDBCheckBox
        UserName = 'DBCheckBox13'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODARRANHADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 176742
        mmTop = 98425
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox14: TmyDBCheckBox
        UserName = 'DBCheckBox14'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODSUJO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 233363
        mmTop = 98690
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox15: TmyDBCheckBox
        UserName = 'DBCheckBox102'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODCABOELETRICO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 247650
        mmTop = 98425
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox16: TmyDBCheckBox
        UserName = 'DBCheckBox16'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODQUEBRADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 273580
        mmTop = 98690
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label204'
        Caption = 'Com Acess'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 153194
        mmTop = 111125
        mmWidth = 20638
        BandType = 0
      end
      object myDBCheckBox18: TmyDBCheckBox
        UserName = 'DBCheckBox18'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'COMACESSORIO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 175948
        mmTop = 110331
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label205'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 188384
        mmTop = 111125
        mmWidth = 5821
        BandType = 0
      end
      object ppDBMemo17: TppDBMemo
        UserName = 'DBMemo102'
        CharWrap = False
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 8202
        mmLeft = 195527
        mmTop = 111390
        mmWidth = 97631
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label206'
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 111125
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label207'
        Caption = 'Defeito alegado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 152929
        mmTop = 82550
        mmWidth = 14552
        BandType = 0
      end
      object myDBCheckBox27: TmyDBCheckBox
        UserName = 'DBCheckBox27'
        BooleanFalse = 'S'
        BooleanTrue = 'N'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'COMACESSORIO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 175948
        mmTop = 115888
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label208'
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 116681
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel209: TppLabel
        UserName = 'Label209'
        Caption = 'Endere'#231'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152665
        mmTop = 59796
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 168540
        mmTop = 59796
        mmWidth = 88371
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label210'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 257440
        mmTop = 59796
        mmWidth = 3175
        BandType = 0
      end
      object ppDBText125: TppDBText
        UserName = 'DBText125'
        DataField = 'NRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 261409
        mmTop = 59796
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel211: TppLabel
        UserName = 'Label211'
        Caption = 'Bairro :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 63236
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText140: TppDBText
        UserName = 'DBText140'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 162719
        mmTop = 63236
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel214: TppLabel
        UserName = 'Label214'
        Caption = 'Cidade :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 196321
        mmTop = 63236
        mmWidth = 10054
        BandType = 0
      end
      object ppDBText142: TppDBText
        UserName = 'DBText142'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 207434
        mmTop = 63236
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel215: TppLabel
        UserName = 'Label701'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 151871
        mmTop = 103452
        mmWidth = 5821
        BandType = 0
      end
      object ppDBMemo18: TppDBMemo
        UserName = 'DBMemo18'
        CharWrap = False
        DataField = 'OBSAVARIA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6879
        mmLeft = 160867
        mmTop = 103717
        mmWidth = 132292
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel217: TppLabel
        UserName = 'Label217'
        Caption = 'Label217'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 169069
        mmTop = 56092
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel219: TppLabel
        UserName = 'Label219'
        Caption = 'Arranhado / Riscado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 99484
        mmWidth = 28575
        BandType = 0
      end
      object myDBCheckBox33: TmyDBCheckBox
        UserName = 'DBCheckBox301'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 152136
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel228: TppLabel
        UserName = 'Label228'
        Caption = 'Garantia de F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 44979
        mmWidth = 23813
        BandType = 0
      end
      object myDBCheckBox34: TmyDBCheckBox
        UserName = 'DBCheckBox34'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 188119
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel229: TppLabel
        UserName = 'Label229'
        Caption = 'Fora de Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 193940
        mmTop = 44979
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel230: TppLabel
        UserName = 'Label230'
        Caption = 'Com Av'#225'ria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 152665
        mmTop = 99484
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText143: TppDBText
        UserName = 'DBText143'
        DataField = 'AVARIA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 99484
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel231: TppLabel
        UserName = 'Label231'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 226484
        mmTop = 44979
        mmWidth = 10848
        BandType = 0
      end
      object myDBCheckBox35: TmyDBCheckBox
        UserName = 'DBCheckBox35'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 220663
        mmTop = 43921
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel232: TppLabel
        UserName = 'Label232'
        Caption = 'Cor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 218811
        mmTop = 74877
        mmWidth = 5292
        BandType = 0
      end
      object ppDBText144: TppDBText
        UserName = 'DBText1302'
        DataField = 'COR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 224632
        mmTop = 74877
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel233: TppLabel
        UserName = 'Label233'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 243946
        mmTop = 71173
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText145: TppDBText
        UserName = 'DBText145'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 254001
        mmTop = 71173
        mmWidth = 24871
        BandType = 0
      end
      object ppMemo2: TppMemo
        OnPrint = ppMemo2Print
        UserName = 'Memo2'
        Caption = '8'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Lines.Strings = (
          
            'Estando o Cliente avisado de que seu produto encontra-se consert' +
            'ado, ele ter'#225' o prazo m'#225'ximo de 30 (trinta dias)'
          
            'para  retir'#225'-lo,  ap'#243's  este  prazo  sofrer'#225'  reajuste  de   10%' +
            '  ao   m'#234's  no  Or'#231'amento para  cobrir despesas de'
          
            'armazenamento. O prazo  de  perman'#234'ncia  do   produto   na   Ass' +
            'ist'#234'ncia  ap'#243's  execu'#231#227'o do servi'#231'o  '#233'  de  60'
          
            '(sessenta dias),  passado  este  per'#237'odo,  a  J Carvalho  poder'#225 +
            '   retirar   as  pe'#231'as substitu'#237'das e sucatear o'
          
            'produto  ou  vender para cobrir as despesas com conserto e armaz' +
            'enamento. Sobre a garantia, ser'#225' de 90  (noventa'
          
            'dias) sobre o servi'#231'o executado, tendo cobertura pe'#231'as el'#233'tricas' +
            ' e mec'#226'nicas. Excluem-se da garantia os defeitos'
          
            'por:  queda,  uso  impr'#243'prio  ou  inadequado  do  produto,  pe'#231'a' +
            's  eletr'#244'nicas, pl'#225'sticas, acess'#243'rios, problemas'
          
            'decorrentes de problemas naturais, como por exemplo: raios, inc'#234 +
            'ndio, corros'#227'o, ferrugem, descarga el'#233'trica, etc.'
          
            'A garantia  come'#231'a  a  contar  a  partir da data do aviso ao cli' +
            'ente em que seu produto encontra-se consertado e'
          
            'pronto para retirada. Sobre  a  retirada  do  produto,  '#233' obriga' +
            't'#243'rio '#224' apresenta'#231#227'o da via do cliente, caso n'#227'o'
          
            'apresentada, o produto s'#243'  poder'#225'  ser  retirado com autoriza'#231#227'o' +
            ' do titular da OS por escrito com c'#243'pia do RG do'
          'mesmo para ser anexada a via da assist'#234'ncia.')
        TextAlignment = taFullJustified
        Transparent = True
        mmHeight = 56356
        mmLeft = 152929
        mmTop = 125413
        mmWidth = 141288
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel234: TppLabel
        UserName = 'Label234'
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 153459
        mmTop = 182298
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText160: TppDBText
        UserName = 'DBText160'
        DataField = 'ATENDENTE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 168011
        mmTop = 182298
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText162: TppDBText
        UserName = 'DBText162'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 226748
        mmTop = 185473
        mmWidth = 61913
        BandType = 0
      end
      object ppLabel261: TppLabel
        UserName = 'Label261'
        Caption = 'Concordo com os termos e condi'#231#245'es '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 233363
        mmTop = 189707
        mmWidth = 48683
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Weight = 0.75
        mmHeight = 529
        mmLeft = 226484
        mmTop = 184680
        mmWidth = 62442
        BandType = 0
      end
      object ppDBMemo9: TppDBMemo
        UserName = 'DBMemo9'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 8731
        mmLeft = 19315
        mmTop = 82550
        mmWidth = 127794
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo12: TppDBMemo
        UserName = 'DBMemo12'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 8731
        mmLeft = 168275
        mmTop = 82550
        mmWidth = 125148
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel308: TppLabel
        UserName = 'Label308'
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 128059
        mmTop = 59796
        mmWidth = 4498
        BandType = 0
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        DataField = 'UF'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 59796
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel309: TppLabel
        UserName = 'Label309'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 114300
        mmTop = 63236
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText188: TppDBText
        UserName = 'DBText188'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 122502
        mmTop = 63236
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel310: TppLabel
        UserName = 'Label310'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 102659
        mmTop = 74877
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText189: TppDBText
        UserName = 'DBText1303'
        DataField = 'CPFCNPJ_EQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 116681
        mmTop = 74877
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel311: TppLabel
        UserName = 'Label311'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 261673
        mmTop = 63236
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText190: TppDBText
        UserName = 'DBText190'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 269876
        mmTop = 63236
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel312: TppLabel
        UserName = 'Label312'
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 274373
        mmTop = 59796
        mmWidth = 4572
        BandType = 0
      end
      object ppDBText191: TppDBText
        UserName = 'DBText191'
        DataField = 'UF'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3175
        mmLeft = 279665
        mmTop = 59796
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel313: TppLabel
        UserName = 'Label3101'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 250032
        mmTop = 74877
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText192: TppDBText
        UserName = 'DBText192'
        DataField = 'CPFCNPJ_EQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3440
        mmLeft = 264055
        mmTop = 74877
        mmWidth = 25400
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEntraAssControleInterno: TppReport
    AutoStop = False
    DataPipeline = ppDBEntradaAssistencia2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 54
    Top = 268
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEntradaAssistencia2'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 285221
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 52917
        mmLeft = 174096
        mmTop = 129117
        mmWidth = 26194
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 96573
        mmLeft = 3175
        mmTop = 126471
        mmWidth = 197115
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 96573
        mmLeft = 3175
        mmTop = 126471
        mmWidth = 9525
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 63765
        mmLeft = 12435
        mmTop = 126471
        mmWidth = 129911
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 96573
        mmLeft = 110067
        mmTop = 126471
        mmWidth = 57944
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4498
        mmTop = 33073
        mmWidth = 11007
        BandType = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 33073
        mmWidth = 91811
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4498
        mmTop = 48419
        mmWidth = 12107
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label3'
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 4498
        mmTop = 68792
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label4'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 87577
        mmTop = 64558
        mmWidth = 9694
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label5'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 48419
        mmWidth = 18256
        BandType = 0
      end
      object ppDBText99: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 46302
        mmTop = 48419
        mmWidth = 93663
        BandType = 0
      end
      object ppDBText100: TppDBText
        UserName = 'DBText4'
        DataField = 'DESCMARCA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 97896
        mmTop = 64558
        mmWidth = 48948
        BandType = 0
      end
      object ppDBText101: TppDBText
        UserName = 'DBText5'
        OnGetText = ppDBText101GetText
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 159015
        mmTop = 48419
        mmWidth = 42598
        BandType = 0
      end
      object ppDBText102: TppDBText
        UserName = 'DBText6'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 18256
        mmTop = 68792
        mmWidth = 78052
        BandType = 0
      end
      object ppDBText103: TppDBText
        UserName = 'DBText7'
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 134673
        mmTop = 54769
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label7'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 119327
        mmTop = 54769
        mmWidth = 14552
        BandType = 0
      end
      object ppDBText104: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4022
        mmLeft = 177254
        mmTop = 33073
        mmWidth = 25682
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label80'
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 165894
        mmTop = 33073
        mmWidth = 9991
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label81'
        Caption = 'TIPO SERVI'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4498
        mmTop = 38365
        mmWidth = 26331
        BandType = 0
      end
      object ppDBText106: TppDBText
        UserName = 'DBText69'
        DataField = 'DESCTIPOSERV'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4064
        mmLeft = 32279
        mmTop = 38365
        mmWidth = 76729
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line18'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3175
        mmTop = 43127
        mmWidth = 200660
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'lbEntrega2'
        Caption = 'DADOS DO CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 43656
        mmWidth = 199232
        BandType = 0
      end
      object ppDBText111: TppDBText
        UserName = 'DBText74'
        DataField = 'CODIGO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4064
        mmLeft = 17463
        mmTop = 48419
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label87'
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 40746
        mmTop = 48419
        mmWidth = 3217
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label88'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 163248
        mmTop = 54769
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText112: TppDBText
        UserName = 'DBText75'
        DataField = 'FONE2'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 175948
        mmTop = 54769
        mmWidth = 26723
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line21'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3175
        mmTop = 59267
        mmWidth = 200660
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label97'
        Caption = 'DADOS DO APARELHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 60325
        mmWidth = 198438
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label98'
        Caption = 'No. S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 97367
        mmTop = 68792
        mmWidth = 14182
        BandType = 0
      end
      object ppDBText118: TppDBText
        UserName = 'DBText81'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 112448
        mmTop = 68792
        mmWidth = 90223
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line23'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3175
        mmTop = 120121
        mmWidth = 200660
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label72'
        Caption = 'Or'#231'amento T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 121179
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'Qte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 126736
        mmWidth = 7144
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 133350
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        Caption = 'Descri'#231#227'o das Pe'#231'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 126736
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        Caption = 'Laudo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 126736
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 126736
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        Caption = 'Defeito Reclamado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12435
        mmLeft = 4498
        mmTop = 73025
        mmWidth = 15346
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 12435
        mmLeft = 20373
        mmTop = 73025
        mmWidth = 120650
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 64558
        mmWidth = 11906
        BandType = 0
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3979
        mmLeft = 18256
        mmTop = 64558
        mmWidth = 66940
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        Caption = 'Laudo T'#233'cnico :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 86254
        mmTop = 224896
        mmWidth = 27517
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 14817
        mmLeft = 3704
        mmTop = 229923
        mmWidth = 200025
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Weight = 0.75
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 245798
        mmWidth = 200660
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        Caption = 'Garantia de Fabrica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 112448
        mmTop = 38365
        mmWidth = 31411
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label1301'
        Caption = 'Fora da Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 152136
        mmTop = 38365
        mmWidth = 26839
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 186796
        mmTop = 38365
        mmWidth = 12531
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        Caption = 'T'#233'cnico que executou o or'#231'amento c'#243'digo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 247121
        mmWidth = 74877
        BandType = 0
      end
      object ppDBText105: TppDBText
        UserName = 'DBText105'
        OnGetText = ppDBText105GetText
        DataField = 'TECNICO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 247386
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label142'
        Caption = 'Data :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 247650
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4022
        mmLeft = 140476
        mmTop = 247915
        mmWidth = 25682
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 255323
        mmWidth = 66411
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        Caption = 'Assinatura do T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 22225
        mmTop = 257440
        mmWidth = 38100
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Visible = False
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 126207
        mmTop = 255323
        mmWidth = 66411
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
        Caption = 'Assinatura do T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 136790
        mmTop = 257440
        mmWidth = 38100
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 263790
        mmWidth = 200660
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        Caption = 'T'#233'cnico que executou o servi'#231'o c'#243'digo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 6085
        mmTop = 266965
        mmWidth = 69056
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        Caption = 'Data :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 267494
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4022
        mmLeft = 139947
        mmTop = 267494
        mmWidth = 25682
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 275167
        mmWidth = 66411
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        Caption = 'Assinatura do T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 21960
        mmTop = 277284
        mmWidth = 38100
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Visible = False
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 125942
        mmTop = 275167
        mmWidth = 66411
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        Caption = 'Assinatura do T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 136525
        mmTop = 277284
        mmWidth = 38100
        BandType = 0
      end
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 2381
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object myDBCheckBox21: TmyDBCheckBox
        UserName = 'cb_garantiafabrica2'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 144463
        mmTop = 37042
        mmWidth = 5821
        BandType = 0
      end
      object myDBCheckBox22: TmyDBCheckBox
        UserName = 'DBCheckBox22'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 179652
        mmTop = 37042
        mmWidth = 5821
        BandType = 0
      end
      object myDBCheckBox23: TmyDBCheckBox
        UserName = 'DBCheckBox201'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 198967
        mmTop = 37042
        mmWidth = 5821
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 3175
        mmTop = 163777
        mmWidth = 197115
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 3175
        mmTop = 157163
        mmWidth = 197115
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 3175
        mmTop = 150813
        mmWidth = 197115
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Weight = 0.75
        mmHeight = 6086
        mmLeft = 3175
        mmTop = 144727
        mmWidth = 197115
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Weight = 0.75
        mmHeight = 6086
        mmLeft = 3175
        mmTop = 138907
        mmWidth = 196850
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 3704
        mmTop = 234950
        mmWidth = 200025
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Weight = 0.75
        mmHeight = 5292
        mmLeft = 3704
        mmTop = 239713
        mmWidth = 200025
        BandType = 0
      end
      object ppLabel220: TppLabel
        UserName = 'Label220'
        Caption = '____/____/______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 175948
        mmTop = 247386
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel221: TppLabel
        UserName = 'Label2201'
        Caption = '____/____/______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 175684
        mmTop = 267230
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = 'Cor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147638
        mmTop = 64558
        mmWidth = 6011
        BandType = 0
      end
      object ppDBText164: TppDBText
        UserName = 'DBText164'
        DataField = 'COR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 154782
        mmTop = 64558
        mmWidth = 47890
        BandType = 0
      end
      object ppDBText165: TppDBText
        UserName = 'DBText165'
        DataField = 'NOMETECNICO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 99219
        mmTop = 247386
        mmWidth = 39952
        BandType = 0
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        OnGetText = ppDBNomeTecnicodaOSGetText
        DataField = 'TECNICODAOS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 267230
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel258: TppLabel
        UserName = 'Label258'
        OnGetText = ppLabel263GetText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 97896
        mmTop = 266965
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel264: TppLabel
        UserName = 'Label264'
        Caption = 'Observa'#231#245'es do Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = -8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 6085
        mmLeft = 141552
        mmTop = 79375
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText166: TppDBText
        UserName = 'DBText166'
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        Visible = False
        WordWrap = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6085
        mmLeft = 155311
        mmTop = 79375
        mmWidth = 48419
        BandType = 0
      end
      object ppLabel285: TppLabel
        UserName = 'Label285'
        Caption = 'Com Embalagem :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 92340
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel286: TppLabel
        UserName = 'Label286'
        Caption = 'Caixa de Papel'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34660
        mmTop = 92340
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel287: TppLabel
        UserName = 'Label287'
        Caption = 'Saco Pl'#225'stico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 67733
        mmTop = 92340
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel288: TppLabel
        UserName = 'Label288'
        Caption = 'Sem Embalagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 92340
        mmTop = 92340
        mmWidth = 21960
        BandType = 0
      end
      object myDBCheckBox36: TmyDBCheckBox
        UserName = 'DBCheckBox36'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'EMBALAGEMPAPELAO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 27781
        mmTop = 91281
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox37: TmyDBCheckBox
        UserName = 'DBCheckBox37'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'EMBALAGEMPLASTICO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 63236
        mmTop = 91281
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox38: TmyDBCheckBox
        UserName = 'DBCheckBox38'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'SEMEMBALAGEM'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 86784
        mmTop = 91281
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel289: TppLabel
        UserName = 'Label289'
        Caption = 'Manchado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 69850
        mmTop = 96573
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel290: TppLabel
        UserName = 'Label290'
        Caption = 'Sujo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 92340
        mmTop = 96573
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel291: TppLabel
        UserName = 'Label2003'
        Caption = 'Cabo El'#233'trico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 106363
        mmTop = 96573
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel292: TppLabel
        UserName = 'Label292'
        Caption = 'Quebrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 132027
        mmTop = 96573
        mmWidth = 13229
        BandType = 0
      end
      object myDBCheckBox39: TmyDBCheckBox
        UserName = 'DBCheckBox39'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODMANCHADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 63236
        mmTop = 95515
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox40: TmyDBCheckBox
        UserName = 'DBCheckBox40'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODARRANHADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 27781
        mmTop = 95250
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox41: TmyDBCheckBox
        UserName = 'DBCheckBox41'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODSUJO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 86784
        mmTop = 95515
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox42: TmyDBCheckBox
        UserName = 'DBCheckBox103'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODCABOELETRICO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 101336
        mmTop = 95515
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox43: TmyDBCheckBox
        UserName = 'DBCheckBox43'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ESTADOPRODQUEBRADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 127000
        mmTop = 95515
        mmWidth = 6350
        BandType = 0
      end
      object ppDBMemo20: TppDBMemo
        UserName = 'DBMemo103'
        CharWrap = False
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 7408
        mmLeft = 10054
        mmTop = 112184
        mmWidth = 134938
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel301: TppLabel
        UserName = 'Label702'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 100542
        mmWidth = 5821
        BandType = 0
      end
      object ppDBMemo21: TppDBMemo
        UserName = 'DBMemo21'
        CharWrap = False
        DataField = 'OBSAVARIA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6879
        mmLeft = 10054
        mmTop = 100542
        mmWidth = 194469
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel302: TppLabel
        UserName = 'Label302'
        Caption = 'Arranhado / Riscado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34396
        mmTop = 96309
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel303: TppLabel
        UserName = 'Label303'
        Caption = 'Com Av'#225'ria :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 96309
        mmWidth = 15346
        BandType = 0
      end
      object ppLine118: TppLine
        UserName = 'Line118'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3175
        mmTop = 85990
        mmWidth = 200660
        BandType = 0
      end
      object ppLabel300: TppLabel
        UserName = 'Label300'
        Caption = 'CARACTER'#205'STICAS DO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 75283
        mmTop = 87048
        mmWidth = 56356
        BandType = 0
      end
      object ppLabel304: TppLabel
        UserName = 'Label304'
        Caption = 'Com acess'#243'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 107950
        mmWidth = 19844
        BandType = 0
      end
      object myDBCheckBox45: TmyDBCheckBox
        UserName = 'DBCheckBox45'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'COMACESSORIO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 24606
        mmTop = 107156
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel305: TppLabel
        UserName = 'Label305'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 112184
        mmWidth = 5821
        BandType = 0
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Weight = 0.75
        mmHeight = 6086
        mmLeft = 3175
        mmTop = 170392
        mmWidth = 196850
        BandType = 0
      end
      object ppLine119: TppLine
        UserName = 'Line119'
        Weight = 0.75
        mmHeight = 6086
        mmLeft = 3175
        mmTop = 177007
        mmWidth = 196850
        BandType = 0
      end
      object ppLine120: TppLine
        UserName = 'Line120'
        Weight = 0.75
        mmHeight = 6086
        mmLeft = 3175
        mmTop = 183621
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel298: TppLabel
        UserName = 'Label298'
        Caption = 'SIM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 107950
        mmWidth = 5027
        BandType = 0
      end
      object myDBCheckBox44: TmyDBCheckBox
        UserName = 'DBCheckBox44'
        BooleanFalse = 'S'
        BooleanTrue = 'N'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'COMACESSORIO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 37306
        mmTop = 107156
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel306: TppLabel
        UserName = 'Label306'
        Caption = 'N'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42069
        mmTop = 107950
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'Data Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 74613
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        AutoSize = True
        DataField = 'DATACOMPRA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4022
        mmLeft = 179151
        mmTop = 74613
        mmWidth = 24271
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line1201'
        Weight = 0.75
        mmHeight = 6086
        mmLeft = 3175
        mmTop = 189971
        mmWidth = 196850
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line1202'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 3175
        mmTop = 203465
        mmWidth = 196850
        BandType = 0
      end
      object ppLine122: TppLine
        UserName = 'Line122'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 3440
        mmTop = 196850
        mmWidth = 196850
        BandType = 0
      end
      object ppLine123: TppLine
        UserName = 'Line123'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 3175
        mmTop = 210609
        mmWidth = 196850
        BandType = 0
      end
      object ppLine124: TppLine
        UserName = 'Line124'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 3440
        mmTop = 216694
        mmWidth = 196850
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppOrdemdeServico: TppReport
    AutoStop = False
    DataPipeline = ppDBOrcamento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    BeforePrint = ppOrdemdeServicoBeforePrint
    DeviceType = 'Screen'
    Left = 53
    Top = 324
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBOrcamento'
    object ppHeaderBand6: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 115623
      mmPrintPosition = 0
      object ppLabel151: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4498
        mmTop = 44979
        mmWidth = 10837
        BandType = 0
      end
      object ppDBText114: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 44979
        mmWidth = 83608
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4498
        mmTop = 59796
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label5'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 70115
        mmWidth = 18256
        BandType = 0
      end
      object ppDBText115: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 44715
        mmTop = 59796
        mmWidth = 156369
        BandType = 0
      end
      object ppDBText117: TppDBText
        UserName = 'DBText5'
        OnGetText = ppDBText117GetText
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 70115
        mmWidth = 35454
        BandType = 0
      end
      object ppDBText120: TppDBText
        UserName = 'DBText7'
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 74348
        mmTop = 70115
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label7'
        Caption = 'Fone 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 70115
        mmWidth = 11642
        BandType = 0
      end
      object ppDBText121: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 175472
        mmTop = 44450
        mmWidth = 25612
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'lbEntrega'
        Caption = 
          'COMPROVANTE - HOR'#193'RIO DE  FUNCIONAMENTO: SEG/SEX 08:00 '#192'S 18:00 ' +
          'S'#193'B 08:00 '#192'S 12:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 25532
        mmTop = 39952
        mmWidth = 158221
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label80'
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 168805
        mmTop = 44450
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label81'
        Caption = 'TIPO SERVI'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4498
        mmTop = 50006
        mmWidth = 25950
        BandType = 0
      end
      object ppDBText122: TppDBText
        UserName = 'DBText69'
        DataField = 'DESCTIPOSERV'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 31750
        mmTop = 50006
        mmWidth = 70908
        BandType = 0
      end
      object ppLine55: TppLine
        UserName = 'Line18'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 4498
        mmTop = 54504
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'lbEntrega2'
        Caption = 'DADOS DO CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 87313
        mmTop = 55033
        mmWidth = 36068
        BandType = 0
      end
      object ppDBText123: TppDBText
        UserName = 'DBText74'
        DataField = 'CODIGO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4022
        mmLeft = 17198
        mmTop = 59796
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label87'
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 37835
        mmTop = 59796
        mmWidth = 3133
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label88'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 70115
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText124: TppDBText
        UserName = 'DBText75'
        DataField = 'CELULAR'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 70115
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel175: TppLabel
        UserName = 'Label130'
        Caption = 'Garantia de Fabrica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 104775
        mmTop = 49477
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label1301'
        Caption = 'Fora da Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 144463
        mmTop = 49477
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label140'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 180711
        mmTop = 49477
        mmWidth = 12435
        BandType = 0
      end
      object ppDBMemo16: TppDBMemo
        UserName = 'DBMemo16'
        CharWrap = False
        DataField = 'DEFEITOENCONTRADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 28575
        mmTop = 93927
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        Caption = 'Encontrado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 93398
        mmWidth = 18785
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 4763
        mmTop = 105040
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        Caption = 'Pe'#231'as/Servi'#231'os.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4763
        mmTop = 106363
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4763
        mmTop = 111125
        mmWidth = 11091
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 24342
        mmTop = 111125
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 111125
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        Caption = 'Vl. Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 111125
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label190'
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 185738
        mmTop = 111125
        mmWidth = 15346
        BandType = 0
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 3969
        mmTop = 75671
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        Caption = 'Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 77523
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'DBText131'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3979
        mmLeft = 28840
        mmTop = 77523
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'DBText102'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3979
        mmLeft = 144992
        mmTop = 77523
        mmWidth = 56092
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText133'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3979
        mmLeft = 83873
        mmTop = 77523
        mmWidth = 46302
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        Caption = 'S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 74083
        mmTop = 77523
        mmWidth = 9144
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 131763
        mmTop = 77523
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5821
        mmTop = 82550
        mmWidth = 21431
        BandType = 0
      end
      object ppDBMemo15: TppDBMemo
        UserName = 'DBDEFEITOALEGADO6'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 28575
        mmTop = 82550
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 115357
        mmWidth = 199496
        BandType = 0
      end
      object cb_garantiafabrica: TmyDBCheckBox
        UserName = 'cb_garantiafabrica'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 136525
        mmTop = 48419
        mmWidth = 5821
        BandType = 0
      end
      object myDBCheckBox19: TmyDBCheckBox
        UserName = 'cb_garantiafabrica1'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 171715
        mmTop = 48419
        mmWidth = 5821
        BandType = 0
      end
      object myDBCheckBox20: TmyDBCheckBox
        UserName = 'DBCheckBox20'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 195263
        mmTop = 48419
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel252: TppLabel
        UserName = 'Label252'
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 173038
        mmTop = 111125
        mmWidth = 12965
        BandType = 0
      end
      object ppDBText182: TppDBText
        UserName = 'DBText182'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 13494
        mmTop = 64558
        mmWidth = 83873
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 64558
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText183: TppDBText
        UserName = 'DBText183'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 98690
        mmTop = 64558
        mmWidth = 41010
        BandType = 0
      end
      object ppDBText184: TppDBText
        UserName = 'DBText184'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 141817
        mmTop = 64558
        mmWidth = 29898
        BandType = 0
      end
      object ppDBText185: TppDBText
        UserName = 'DBText185'
        AutoSize = True
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 193623
        mmTop = 64558
        mmWidth = 7197
        BandType = 0
      end
      object ppLabel283: TppLabel
        UserName = 'Label283'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 172773
        mmTop = 64558
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel299: TppLabel
        UserName = 'lbEntrega4'
        Caption = 'OR'#199'AMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 93395
        mmTop = 34925
        mmWidth = 23029
        BandType = 0
      end
      object ppRegion6: TppRegion
        UserName = 'ppRegion6'
        Brush.Style = bsClear
        Caption = 'ppRegion6'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 28311
        mmLeft = 3175
        mmTop = 2380
        mmWidth = 200556
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel158: TppLabel
          UserName = 'Label10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4057
          mmLeft = 38364
          mmTop = 30955
          mmWidth = 12277
          BandType = 0
        end
        object ppLabel284: TppLabel
          UserName = 'lbEntrega3'
          Caption = 
            'COMPROVANTE - HOR'#193'RIO DE  FUNCIONAMENTO: SEG/SEX 08:00 '#192'S 18:00 ' +
            'S'#193'B 08:00 '#193'S 12:00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 21961
          mmTop = 30691
          mmWidth = 163248
          BandType = 0
        end
      end
      object ppDBText187: TppDBText
        UserName = 'DBText187'
        DataField = 'FONE2'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 70115
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel307: TppLabel
        UserName = 'Label307'
        Caption = 'Fone 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 106098
        mmTop = 70115
        mmWidth = 11642
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText134: TppDBText
        UserName = 'DBText401'
        DataField = 'CODIGO'
        DataPipeline = ppDBOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText135: TppDBText
        UserName = 'DBText135'
        DataField = 'DESCRICAOITEM'
        DataPipeline = ppDBOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 24342
        mmTop = 0
        mmWidth = 109538
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText136'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 137319
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText137: TppDBText
        UserName = 'DBText137'
        DataField = 'VALOR'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText138: TppDBText
        UserName = 'DBText138'
        DataField = 'SUBTOTAL'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 184944
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 135202
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line601'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 178594
        mmTop = 265
        mmWidth = 529
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202671
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText154: TppDBText
        UserName = 'DBText154'
        DataField = 'ESTOQUE'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 169069
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppLine83: TppLine
        UserName = 'Line83'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 155311
        mmTop = 265
        mmWidth = 529
        BandType = 4
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 2910
        mmTop = 3969
        mmWidth = 199496
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 76465
      mmPrintPosition = 0
      object ppLabel178: TppLabel
        UserName = 'Label178'
        Caption = 'Autoriza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 6085
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = 'Or'#231'amento  aceito :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26194
        mmWidth = 33602
        BandType = 8
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = 'SIM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 49477
        mmTop = 26194
        mmWidth = 6350
        BandType = 8
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        Caption = 'Obs :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 14288
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel196: TppLabel
        UserName = 'Label196'
        Caption = 'Obs :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 31750
        mmWidth = 8467
        BandType = 8
      end
      object ppRichText2: TppRichText
        UserName = 'RichText2'
        Caption = 
          'Declaro que o atendimento acima foi devidamente executado, estan' +
          'do o produto em condi'#231#245'es normais  de utiliza'#231#227'o, e que recebi d' +
          'o atendente aqui o presente, as orienta'#231#245'es necess'#225'rias para per' +
          'feita utiliza'#231#227'o, assim como'
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil MS S' +
          'ans Serif;}{\f1\fnil\fcharset0 MS Sans Serif;}}'#13#10'\viewkind4\uc1\' +
          'pard\f0\fs20 Declaro que o atendimento acima foi devidamente exe' +
          'cutado, estando o produto em condi\f1\'#39'e7\'#39'f5es normais  de util' +
          'iza\'#39'e7\'#39'e3o, e que recebi do atendente aqui o presente, as orie' +
          'nta\'#39'e7\'#39'f5es necess\'#39'e1rias para perfeita utiliza\'#39'e7\'#39'e3o, ass' +
          'im como \'#39'e9 de meu conhecimento que qualquer informa\'#39'e7\'#39'e3o c' +
          'omplementar pode ser obtida atrav\'#39'e9s do manual de instru\'#39'e7\'#39 +
          'f5es.\f0\fs16\par'#13#10'}'#13#10
        mmHeight = 16669
        mmLeft = 5556
        mmTop = 47096
        mmWidth = 198967
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine81: TppLine
        UserName = 'Line81'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 68263
        mmWidth = 44715
        BandType = 8
      end
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Caption = 'Assinatura do Cliente '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 69586
        mmWidth = 37042
        BandType = 8
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 7144
        mmTop = 4763
        mmWidth = 196850
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        AutoSize = True
        DataField = 'SUBTOTAL'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 4304
        mmLeft = 171679
        mmTop = 529
        mmWidth = 32315
        BandType = 8
      end
      object ppLabel191: TppLabel
        UserName = 'Label191'
        Caption = 'Total Pe'#231'as/Servi'#231'os:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 135732
        mmTop = 794
        mmWidth = 34396
        BandType = 8
      end
      object myDBCheckBox24: TmyDBCheckBox
        UserName = 'cb_garantiafabrica3'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ORCAMENTOACEITO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 41540
        mmTop = 25135
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel222: TppLabel
        UserName = 'Label1802'
        Caption = 'NAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 66146
        mmTop = 26194
        mmWidth = 7673
        BandType = 8
      end
      object myDBCheckBox28: TmyDBCheckBox
        UserName = 'DBCheckBox28'
        BooleanFalse = 'S'
        BooleanTrue = 'N'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ORCAMENTOACEITO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 58208
        mmTop = 25135
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel223: TppLabel
        UserName = 'Label223'
        Caption = 'NAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 9260
        mmWidth = 7673
        BandType = 8
      end
      object myDBCheckBox29: TmyDBCheckBox
        UserName = 'DBCheckBox29'
        BooleanFalse = 'S'
        BooleanTrue = 'N'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ORCAMENTOCOMUNICADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 68527
        mmTop = 7938
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel181: TppLabel
        UserName = 'Label1801'
        Caption = 'SIM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 9260
        mmWidth = 6350
        BandType = 8
      end
      object myDBCheckBox25: TmyDBCheckBox
        UserName = 'DBCheckBox25'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'ORCAMENTOCOMUNICADO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 51858
        mmTop = 7938
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        Caption = 'Or'#231'amento  Comunicado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 8731
        mmWidth = 43921
        BandType = 8
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 2381
        mmLeft = 6615
        mmTop = 24606
        mmWidth = 196850
        BandType = 8
      end
      object ppDBText128: TppDBText
        UserName = 'DBText128'
        DataField = 'OBSORCCOMUNICADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 9790
        mmLeft = 16140
        mmTop = 14288
        mmWidth = 187325
        BandType = 8
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        DataField = 'OBSORCACEITO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 9790
        mmLeft = 16140
        mmTop = 31750
        mmWidth = 187325
        BandType = 8
      end
      object ppLabel259: TppLabel
        UserName = 'Label259'
        Caption = 'T'#233'cnico que executou o or'#231'amento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5556
        mmTop = 42069
        mmWidth = 60590
        BandType = 8
      end
      object ppLabel260: TppLabel
        UserName = 'Label260'
        Caption = 'T'#233'cnico que executou o servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 42069
        mmWidth = 54504
        BandType = 8
      end
      object ppLabel262: TppLabel
        UserName = 'Label262'
        OnGetText = ppLabel262GetText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 66675
        mmTop = 42069
        mmWidth = 41804
        BandType = 8
      end
      object ppLabel263: TppLabel
        UserName = 'Label263'
        OnGetText = ppLabel263GetText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 164889
        mmTop = 42069
        mmWidth = 41698
        BandType = 8
      end
    end
  end
  object ppPecasPendentes: TppReport
    AutoStop = False
    DataPipeline = ppDBEPecasPendentes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 191
    Top = 388
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEPecasPendentes'
    object ppHeaderBand8: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppLabel293: TppLabel
        UserName = 'Label174'
        Caption = 'Pe'#231'as Pendentes por OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3969
        mmTop = 45508
        mmWidth = 39793
        BandType = 0
      end
      object ppLabel295: TppLabel
        UserName = 'Label187'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 86519
        mmTop = 51065
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel296: TppLabel
        UserName = 'Label188'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 159809
        mmTop = 51858
        mmWidth = 18256
        BandType = 0
      end
      object ppLine91: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel294: TppLabel
        UserName = 'Label1'
        Caption = 'Numero da OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4233
        mmTop = 51065
        mmWidth = 23707
        BandType = 0
      end
      object ppLabel278: TppLabel
        UserName = 'Label278'
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 51065
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel279: TppLabel
        UserName = 'Label279'
        Caption = 'Data de entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178859
        mmTop = 51858
        mmWidth = 25400
        BandType = 0
      end
      object ppRegion7: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 265
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel281: TppLabel
        UserName = 'Label281'
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 56621
        mmTop = 51065
        mmWidth = 16933
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText172: TppDBText
        UserName = 'DBText401'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEPecasPendentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentes'
        mmHeight = 3881
        mmLeft = 4763
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText173: TppDBText
        UserName = 'DBText135'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEPecasPendentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentes'
        mmHeight = 3881
        mmLeft = 80433
        mmTop = 0
        mmWidth = 80169
        BandType = 4
      end
      object ppLine92: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine94: TppLine
        UserName = 'Line60'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine95: TppLine
        UserName = 'Line601'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 180711
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine96: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine97: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine98: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppLine87: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText161'
        DataField = 'CODIGO'
        DataPipeline = ppDBEPecasPendentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentes'
        mmHeight = 3881
        mmLeft = 25400
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText174: TppDBText
        UserName = 'DBText1'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBEPecasPendentes
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentes'
        mmHeight = 3881
        mmLeft = 162454
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText163'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEPecasPendentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentes'
        mmHeight = 4233
        mmLeft = 178860
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppLine116: TppLine
        UserName = 'Line116'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 79111
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText180: TppDBText
        UserName = 'DBText180'
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEPecasPendentes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentes'
        mmHeight = 3881
        mmLeft = 48419
        mmTop = 0
        mmWidth = 29369
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object Q_PecasPendentes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select'
      '             s.osnumero,'
      '             sd.DESCRICAOITEM,'
      '             sd.ITEM, '
      '             sd.QUANTIDADE, '
      '             sd.SERVICO, '
      '             sd.SERVICODET, '
      '             sd.VALOR,'
      '             sd.UNIDADE,'
      '             i.CODIGO,'
      '             i.descricao,'
      '             pp.preco,'
      '             i.estoque,'
      '             s.dataentrada,'
      '             i.referencia,'
      '             f.descricao as fabricante'
      'from servicosdet sd'
      '    left join itens i on i.item = sd.item'
      
        '    left join produtospreco pp on pp.item = i.item and pp.tabela' +
        'preco = 0'
      '    inner join servicos s on s.servico = sd.servico'
      
        '    left join clientesequipamentos ce on s.equipamento = ce.equi' +
        'pamento'
      '    left join modelos mo on ce.modelo = mo.modelo'
      '    left join marcas ma on mo.marca = ma.marca'
      '    left join fabricantes f on f.fabricante = i.fabricante'
      'WHERE'
      '(s.dataentrada >= :datae and S.dataentrada <= :datas) '
      'and i.estoque <= 0'
      'and i.tipoitem in (1,2)')
    Left = 482
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datae'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datas'
        ParamType = ptUnknown
      end>
  end
  object C_PecasPendentes: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PecasPendentes'
    Left = 483
    Top = 79
    object C_PecasPendentesOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_PecasPendentesDESCRICAOITEM: TStringField
      FieldName = 'DESCRICAOITEM'
      Origin = 'SERVICOSDET.DESCRICAOITEM'
      Size = 50
    end
    object C_PecasPendentesITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SERVICOSDET.ITEM'
    end
    object C_PecasPendentesQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOSDET.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_PecasPendentesSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOSDET.SERVICO'
    end
    object C_PecasPendentesSERVICODET: TIntegerField
      FieldName = 'SERVICODET'
      Origin = 'SERVICOSDET.SERVICODET'
      Required = True
    end
    object C_PecasPendentesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'SERVICOSDET.VALOR'
      Precision = 18
      Size = 3
    end
    object C_PecasPendentesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'SERVICOSDET.UNIDADE'
      Size = 6
    end
    object C_PecasPendentesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 14
    end
    object C_PecasPendentesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_PecasPendentesPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_PecasPendentesESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_PecasPendentesDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_PecasPendentesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_PecasPendentesFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
  end
  object P_PecasPendentes: TDataSetProvider
    DataSet = Q_PecasPendentes
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 482
    Top = 144
  end
  object C_PecasPendentesDS: TDataSource
    Tag = 100
    DataSet = C_PecasPendentes
    Left = 484
    Top = 199
  end
  object Q_RelatorioGeral: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
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
      '       S.FUNCSAIDA,'
      '       S.STATUSSERVICO,'
      '       S.LOCALIZACAO,'
      '       S.TIPOSERVICO,'
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
      '       S.GARANTIAFABRICA,'
      '       S.FORAGARANTIA,'
      '       S.RETORNO,'
      '       S.ORCAMENTOACEITO,'
      '       S.ORCAMENTOCOMUNICADO,'
      '       S.SEMEMBALAGEM,'
      '       S.OBSAVARIA,'
      '       CE.NUMEROSERIE,'
      '       CE.MODELO,'
      '       CE.datacompra,'
      '       CE.diasgarantia,'
      '       CE.notafiscal,'
      '       CE.revendedor,'
      '       S.CARACTERISTICA,'
      '       F.NRO,'
      '       F.NOME,'
      '       F.ENDERECO,'
      '       F.BAIRRO,'
      '       F.CIDADE,'
      '       F.CEP,'
      '       F.FONE1, F.FONE2,'
      '       F.CPF_CNPJ, F.CODIGO,'
      '       M.DESCRICAO AS DESCMODELO,'
      '       SS.DESCRICAO AS DESCSTATUS,'
      '       T.NOME AS NOMETECNICO,'
      '       L.DESCRICAO AS DESCLOCAL,'
      '       TS.DESCRICAO AS DESCTIPOSERV,'
      '       TE.DESCRICAO AS DESCTIPOEQUIP,'
      '       MR.DESCRICAO AS DESCMARCA,'
      '       FR.DESCRICAO AS DESCFABRICANTE'
      'From SERVICOS S'
      '    INNER JOIN FAVORECIDOS F ON F.FAVORECIDO = S.CLIENTE'
      
        '    LEFT JOIN CLIENTESEQUIPAMENTOS CE ON S.EQUIPAMENTO = CE.EQUI' +
        'PAMENTO'
      '    LEFT JOIN MODELOS M ON CE.MODELO = M.MODELO'
      
        '    LEFT JOIN STATUSSERVICOS SS ON SS.STATUSSERVICO = S.STATUSSE' +
        'RVICO'
      '    LEFT JOIN FAVORECIDOS T ON T.FAVORECIDO = S.TECNICO'
      
        '    LEFT JOIN LOCALIZACAOEQUIPAMENTO L ON L.LOCALIZACAOEQUIPAMEN' +
        'TO = S.LOCALIZACAO'
      '    LEFT JOIN TIPOSSERVICOS TS ON TS.TIPOSERVICO = S.TIPOSERVICO'
      
        '    LEFT JOIN TIPOEQUIPAMENTOS TE ON TE.TIPOEQUIPAMENTO = M.TIPO' +
        'EQUIPAMENTO'
      '    LEFT JOIN MARCAS MR ON MR.MARCA = M.MARCA'
      '    LEFT JOIN FABRICANTES FR ON FR.FABRICANTE = M.FABRICANTE'
      'WHERE'
      '(s.dataentrada >= :data1 and s.dataentrada <= :data2) and '
      'S.orcamentoaceito in (:orcamentoaceito,:orcamentoaceit) AND'
      
        'S.orcamentocomunicado in (:orcamentocomunicado,:orcamentocomunic' +
        'ad) AND'
      'S.servicopronto in (:servicopronto,:servicopront) and'
      
        '(S.produtoentregue in (:produtoentregue, :produtoentregu) or (s.' +
        'produtoentregue is null))'
      'and s.statusservico < 60'
      'order by S.OSNUMERO')
    Left = 602
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'orcamentoaceito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'orcamentoaceit'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'orcamentocomunicado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'orcamentocomunicad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'servicopronto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'servicopront'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'produtoentregue'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produtoentregu'
        ParamType = ptUnknown
      end>
  end
  object C_RelatorioGeral: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_RelatorioGeral'
    Left = 603
    Top = 79
    object C_RelatorioGeralSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object C_RelatorioGeralOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_RelatorioGeralCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object C_RelatorioGeralDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_RelatorioGeralHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'SERVICOS.HORAENTRADA'
    end
    object C_RelatorioGeralEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'SERVICOS.EQUIPAMENTO'
    end
    object C_RelatorioGeralPARTESAGRAGADAS: TStringField
      FieldName = 'PARTESAGRAGADAS'
      Origin = 'SERVICOS.PARTESAGRAGADAS'
      Size = 100
    end
    object C_RelatorioGeralDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'SERVICOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_RelatorioGeralDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'SERVICOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_RelatorioGeralOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'SERVICOS.OBSERVACAO'
      Size = 255
    end
    object C_RelatorioGeralDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SERVICOS.DATASAIDA'
    end
    object C_RelatorioGeralHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object C_RelatorioGeralFUNCENTRADA: TIntegerField
      FieldName = 'FUNCENTRADA'
      Origin = 'SERVICOS.FUNCENTRADA'
    end
    object C_RelatorioGeralTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'SERVICOS.TECNICO'
    end
    object C_RelatorioGeralFUNCSAIDA: TIntegerField
      FieldName = 'FUNCSAIDA'
      Origin = 'SERVICOS.FUNCSAIDA'
    end
    object C_RelatorioGeralSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'SERVICOS.STATUSSERVICO'
    end
    object C_RelatorioGeralLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'SERVICOS.LOCALIZACAO'
    end
    object C_RelatorioGeralTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'SERVICOS.TIPOSERVICO'
    end
    object C_RelatorioGeralAVARIA: TStringField
      FieldName = 'AVARIA'
      Origin = 'SERVICOS.AVARIA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralCOMACESSORIO: TStringField
      FieldName = 'COMACESSORIO'
      Origin = 'SERVICOS.COMACESSORIO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralCOMACESSORIOOBS: TStringField
      FieldName = 'COMACESSORIOOBS'
      Origin = 'SERVICOS.COMACESSORIOOBS'
      Size = 100
    end
    object C_RelatorioGeralESTADOPRODMANCHADO: TStringField
      FieldName = 'ESTADOPRODMANCHADO'
      Origin = 'SERVICOS.ESTADOPRODMANCHADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralESTADOPRODARRANHADO: TStringField
      FieldName = 'ESTADOPRODARRANHADO'
      Origin = 'SERVICOS.ESTADOPRODARRANHADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralESTADOPRODSUJO: TStringField
      FieldName = 'ESTADOPRODSUJO'
      Origin = 'SERVICOS.ESTADOPRODSUJO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralESTADOPRODCABOELETRICO: TStringField
      FieldName = 'ESTADOPRODCABOELETRICO'
      Origin = 'SERVICOS.ESTADOPRODCABOELETRICO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralESTADOPRODQUEBRADO: TStringField
      FieldName = 'ESTADOPRODQUEBRADO'
      Origin = 'SERVICOS.ESTADOPRODQUEBRADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralEMBALAGEMPAPELAO: TStringField
      FieldName = 'EMBALAGEMPAPELAO'
      Origin = 'SERVICOS.EMBALAGEMPAPELAO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralEMBALAGEMPLASTICO: TStringField
      FieldName = 'EMBALAGEMPLASTICO'
      Origin = 'SERVICOS.EMBALAGEMPLASTICO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralGARANTIAFABRICA: TStringField
      FieldName = 'GARANTIAFABRICA'
      Origin = 'SERVICOS.GARANTIAFABRICA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralFORAGARANTIA: TStringField
      FieldName = 'FORAGARANTIA'
      Origin = 'SERVICOS.FORAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralRETORNO: TStringField
      FieldName = 'RETORNO'
      Origin = 'SERVICOS.RETORNO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralORCAMENTOACEITO: TStringField
      FieldName = 'ORCAMENTOACEITO'
      Origin = 'SERVICOS.ORCAMENTOACEITO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralORCAMENTOCOMUNICADO: TStringField
      FieldName = 'ORCAMENTOCOMUNICADO'
      Origin = 'SERVICOS.ORCAMENTOCOMUNICADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralSEMEMBALAGEM: TStringField
      FieldName = 'SEMEMBALAGEM'
      Origin = 'SERVICOS.SEMEMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioGeralOBSAVARIA: TStringField
      FieldName = 'OBSAVARIA'
      Origin = 'SERVICOS.OBSAVARIA'
      Size = 100
    end
    object C_RelatorioGeralNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'CLIENTESEQUIPAMENTOS.NUMEROSERIE'
      Size = 30
    end
    object C_RelatorioGeralMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'CLIENTESEQUIPAMENTOS.MODELO'
    end
    object C_RelatorioGeralDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'CLIENTESEQUIPAMENTOS.DATACOMPRA'
    end
    object C_RelatorioGeralDIASGARANTIA: TIntegerField
      FieldName = 'DIASGARANTIA'
      Origin = 'CLIENTESEQUIPAMENTOS.DIASGARANTIA'
    end
    object C_RelatorioGeralNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'CLIENTESEQUIPAMENTOS.NOTAFISCAL'
      Size = 10
    end
    object C_RelatorioGeralREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Origin = 'CLIENTESEQUIPAMENTOS.REVENDEDOR'
      Size = 50
    end
    object C_RelatorioGeralCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'SERVICOS.CARACTERISTICA'
      Size = 100
    end
    object C_RelatorioGeralNRO: TStringField
      FieldName = 'NRO'
      Origin = 'FAVORECIDOS.NRO'
      Size = 4
    end
    object C_RelatorioGeralNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_RelatorioGeralENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_RelatorioGeralBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_RelatorioGeralCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_RelatorioGeralCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_RelatorioGeralFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_RelatorioGeralFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_RelatorioGeralCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      Size = 14
    end
    object C_RelatorioGeralCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_RelatorioGeralDESCMODELO: TStringField
      FieldName = 'DESCMODELO'
      Origin = 'MODELOS.DESCMODELO'
      Size = 60
    end
    object C_RelatorioGeralDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Origin = 'STATUSSERVICOS.DESCSTATUS'
      Size = 30
    end
    object C_RelatorioGeralNOMETECNICO: TStringField
      FieldName = 'NOMETECNICO'
      Origin = 'FAVORECIDOS.NOMETECNICO'
      Size = 50
    end
    object C_RelatorioGeralDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Origin = 'LOCALIZACAOEQUIPAMENTO.DESCLOCAL'
      Size = 30
    end
    object C_RelatorioGeralDESCTIPOSERV: TStringField
      FieldName = 'DESCTIPOSERV'
      Origin = 'TIPOSSERVICOS.DESCTIPOSERV'
      Size = 30
    end
    object C_RelatorioGeralDESCTIPOEQUIP: TStringField
      FieldName = 'DESCTIPOEQUIP'
      Origin = 'TIPOEQUIPAMENTOS.DESCTIPOEQUIP'
      Size = 30
    end
    object C_RelatorioGeralDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Origin = 'MARCAS.DESCMARCA'
      Size = 30
    end
    object C_RelatorioGeralDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Origin = 'FABRICANTES.DESCFABRICANTE'
      Size = 30
    end
  end
  object P_RelatorioGeral: TDataSetProvider
    DataSet = Q_RelatorioGeral
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 602
    Top = 144
  end
  object C_RelatorioGeralDS: TDataSource
    Tag = 100
    DataSet = C_RelatorioGeral
    Left = 604
    Top = 199
  end
  object ppDBERelatorioGeral: TppDBPipeline
    DataSource = C_RelatorioGeralDS
    UserName = 'ppDBERelatorioGeral'
    Left = 610
    Top = 268
  end
  object ppOrcamentoNaoAceitos: TppReport
    AutoStop = False
    DataPipeline = ppDBERelatorioGeral
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 56
    Top = 388
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBERelatorioGeral'
    object ppHeaderBand7: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppLabel237: TppLabel
        UserName = 'Label174'
        Caption = 'Or'#231'amentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3969
        mmTop = 45508
        mmWidth = 19304
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel240: TppLabel
        UserName = 'Label1'
        Caption = 'Numero da OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4233
        mmTop = 51065
        mmWidth = 23707
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label278'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56092
        mmTop = 51065
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel242: TppLabel
        UserName = 'Label279'
        Caption = 'Data de entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 29104
        mmTop = 51065
        mmWidth = 25400
        BandType = 0
      end
      object ppRegion5: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 265
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel238: TppLabel
        UserName = 'Label238'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 141023
        mmTop = 51858
        mmWidth = 13229
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText59: TppDBText
        UserName = 'DBText401'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText135'
        DataField = 'NOME'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 56621
        mmTop = 0
        mmWidth = 78846
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line60'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 53975
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText146: TppDBText
        UserName = 'DBText163'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3528
        mmLeft = 29316
        mmTop = 0
        mmWidth = 20955
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3528
        mmLeft = 150496
        mmTop = 0
        mmWidth = 9313
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line602'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 160867
        mmTop = 265
        mmWidth = 1588
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
  end
  object ppOrcamentoPronto: TppReport
    AutoStop = False
    DataPipeline = ppDBERelatorioGeral
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 295
    Top = 388
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBERelatorioGeral'
    object ppHeaderBand9: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppLabel239: TppLabel
        UserName = 'Label174'
        Caption = 'Or'#231'amentos n'#227'o aceitos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3969
        mmTop = 45508
        mmWidth = 38354
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3969
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel244: TppLabel
        UserName = 'Label1'
        Caption = 'Numero da OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4233
        mmTop = 51065
        mmWidth = 23707
        BandType = 0
      end
      object ppRegion8: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 265
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel243: TppLabel
        UserName = 'Label243'
        Caption = 'Data de entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 29104
        mmTop = 51065
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel245: TppLabel
        UserName = 'Label245'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 56092
        mmTop = 51065
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label246'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 141023
        mmTop = 51858
        mmWidth = 13229
        BandType = 0
      end
    end
    object ppDetailBand9: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText90: TppDBText
        UserName = 'DBText401'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppLine66: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine70: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppDBText147: TppDBText
        UserName = 'DBText147'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3528
        mmLeft = 29369
        mmTop = 0
        mmWidth = 20955
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText148'
        DataField = 'NOME'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 56621
        mmTop = 0
        mmWidth = 78846
        BandType = 4
      end
      object ppDBText149: TppDBText
        UserName = 'DBText149'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3528
        mmLeft = 150601
        mmTop = 0
        mmWidth = 9313
        BandType = 4
      end
      object ppLine60: TppLine
        UserName = 'Line603'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 53975
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line604'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine71: TppLine
        UserName = 'Line71'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 160867
        mmTop = 265
        mmWidth = 1588
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppPecasPendentesGeal: TppReport
    AutoStop = False
    DataPipeline = ppDBEPecasPendentesGeral
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 407
    Top = 388
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEPecasPendentesGeral'
    object ppHeaderBand10: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppLabel247: TppLabel
        UserName = 'Label174'
        Caption = 'Pe'#231'as Pendentes em Geral.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3969
        mmTop = 45508
        mmWidth = 44281
        BandType = 0
      end
      object ppLabel248: TppLabel
        UserName = 'Label187'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 91546
        mmTop = 51329
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel249: TppLabel
        UserName = 'Label188'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 180446
        mmTop = 51329
        mmWidth = 18256
        BandType = 0
      end
      object ppLine72: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel251: TppLabel
        UserName = 'Label278'
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4763
        mmTop = 51329
        mmWidth = 13494
        BandType = 0
      end
      object ppRegion9: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 265
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label250'
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 41275
        mmTop = 50800
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel282: TppLabel
        UserName = 'Label2501'
        Caption = 'Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 67469
        mmTop = 51065
        mmWidth = 16510
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText151: TppDBText
        UserName = 'DBText135'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBEPecasPendentesGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentesGeral'
        mmHeight = 3528
        mmLeft = 90488
        mmTop = 0
        mmWidth = 86784
        BandType = 4
      end
      object ppLine73: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine85: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText152: TppDBText
        UserName = 'DBText161'
        DataField = 'CODIGO'
        DataPipeline = ppDBEPecasPendentesGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentesGeral'
        mmHeight = 3528
        mmLeft = 4763
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText153: TppDBText
        UserName = 'DBText1'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBEPecasPendentesGeral
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentesGeral'
        mmHeight = 3528
        mmLeft = 178594
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText150'
        DataField = 'REFERENCIA'
        DataPipeline = ppDBEPecasPendentesGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentesGeral'
        mmHeight = 3528
        mmLeft = 29104
        mmTop = 0
        mmWidth = 30956
        BandType = 4
      end
      object ppLine82: TppLine
        UserName = 'Line82'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText181: TppDBText
        UserName = 'DBText1501'
        DataField = 'FABRICANTE'
        DataPipeline = ppDBEPecasPendentesGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEPecasPendentesGeral'
        mmHeight = 3528
        mmLeft = 61383
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppLine117: TppLine
        UserName = 'Line117'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 60590
        mmTop = 265
        mmWidth = 1852
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
  end
  object ppOrcamentoAvisados: TppReport
    AutoStop = False
    DataPipeline = ppDBERelatorioGeral
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 192
    Top = 332
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBERelatorioGeral'
    object ppHeaderBand11: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppLabel253: TppLabel
        UserName = 'Label174'
        Caption = 'Or'#231'amentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3969
        mmTop = 45508
        mmWidth = 19304
        BandType = 0
      end
      object ppLabel254: TppLabel
        UserName = 'Label187'
        Caption = 'Cpf / Cnpj'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 31485
        mmTop = 51065
        mmWidth = 15875
        BandType = 0
      end
      object ppLine89: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel255: TppLabel
        UserName = 'Label1'
        Caption = 'Numero da OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 4233
        mmTop = 51065
        mmWidth = 23707
        BandType = 0
      end
      object ppLabel256: TppLabel
        UserName = 'Label278'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 67733
        mmTop = 51329
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel257: TppLabel
        UserName = 'Label279'
        Caption = 'Data de entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 51858
        mmWidth = 25400
        BandType = 0
      end
      object ppRegion10: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 265
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText155: TppDBText
        UserName = 'DBText401'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText135'
        DataField = 'NOME'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 0
        mmWidth = 109538
        BandType = 4
      end
      object ppLine90: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 28310
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine93: TppLine
        UserName = 'Line60'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine99: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine100: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine101: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppLine102: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 62177
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText161'
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3969
        mmLeft = 29898
        mmTop = 0
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText158: TppDBText
        UserName = 'DBText163'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBERelatorioGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBERelatorioGeral'
        mmHeight = 3175
        mmLeft = 180870
        mmTop = 265
        mmWidth = 20743
        BandType = 4
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object Q_PecasPendentesGeral: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select distinct'
      'sd.ITEM,'
      'sum(sd.QUANTIDADE) as QUANTIDADE,'
      'sd.UNIDADE,'
      'i.CODIGO,'
      'i.descricao,'
      'i.referencia,'
      'f.descricao as fabricante'
      'from servicosdet sd'
      '    left join itens i on i.item = sd.item'
      
        '    left join produtospreco pp on pp.item = i.item and pp.tabela' +
        'preco = 0'
      '    inner join servicos s on s.servico = sd.servico'
      '    left join fabricantes f on f.fabricante = i.fabricante'
      'WHERE'
      'i.estoque <= 0'
      'and i.tipoitem in (1,2)'
      'and s.statusservico < 60'
      
        'group by sd.ITEM,sd.QUANTIDADE,sd.UNIDADE,i.CODIGO,i.descricao,i' +
        '.referencia,f.descricao,s.osnumero'
      'order by  F.descricao,I.descricao')
    Left = 714
    Top = 19
  end
  object C_PecasPendentesGeral: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PecasPendentesGeral'
    Left = 715
    Top = 79
    object C_PecasPendentesGeralITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_PecasPendentesGeralQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_PecasPendentesGeralUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_PecasPendentesGeralCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_PecasPendentesGeralDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_PecasPendentesGeralREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_PecasPendentesGeralFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
  end
  object P_PecasPendentesGeral: TDataSetProvider
    DataSet = Q_PecasPendentesGeral
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 714
    Top = 144
  end
  object C_PecasPendentesGeralDS: TDataSource
    Tag = 100
    DataSet = C_PecasPendentesGeral
    Left = 724
    Top = 199
  end
  object ppDBEPecasPendentesGeral: TppDBPipeline
    DataSource = C_PecasPendentesGeralDS
    UserName = 'ppDBERelatorioGeral1'
    Left = 738
    Top = 268
    object ppDBEPecasPendentesGeralppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBEPecasPendentesGeralppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object ppDBEPecasPendentesGeralppField3: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppDBEPecasPendentesGeralppField4: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 14
      DisplayWidth = 14
      Position = 3
    end
    object ppDBEPecasPendentesGeralppField5: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppDBEPecasPendentesGeralppField7: TppField
      FieldAlias = 'FABRICANTE'
      FieldName = 'FABRICANTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppDBEPecasPendentesGeralppField6: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 25
      DisplayWidth = 25
      Position = 6
    end
  end
  object ppDBEntradaAssistencia: TppDBPipeline
    DataSource = C_ServicosDS
    UserName = 'ppDBEntradaAssistencia1'
    Left = 378
    Top = 268
  end
  object Q_RelatorioPorMarcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
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
      '       S.FUNCSAIDA,'
      '       S.STATUSSERVICO,'
      '       S.LOCALIZACAO,'
      '       S.TIPOSERVICO,'
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
      '       S.GARANTIAFABRICA,'
      '       S.FORAGARANTIA,'
      '       S.RETORNO,'
      '       S.ORCAMENTOACEITO,'
      '       S.ORCAMENTOCOMUNICADO,'
      '       S.SEMEMBALAGEM,'
      '       S.OBSAVARIA,'
      '       CE.NUMEROSERIE,'
      '       CE.MODELO,'
      '       CE.datacompra,'
      '       CE.diasgarantia,'
      '       CE.notafiscal,'
      '       CE.revendedor,'
      '       m.codigo,'
      '       M.DESCRICAO AS DESCMODELO,'
      '       M.descricao,'
      '       M.cor,'
      '       SS.DESCRICAO AS DESCSTATUS,'
      '       L.DESCRICAO AS DESCLOCAL,'
      '       TS.DESCRICAO AS DESCTIPOSERV,'
      '       TE.DESCRICAO AS DESCTIPOEQUIP,'
      '       MR.DESCRICAO AS DESCMARCA,'
      '       FR.DESCRICAO AS DESCFABRICANTE,'
      '       S.CARACTERISTICA,'
      '       s.obsorcaceito,'
      '       s.obsorccomunicado,'
      '       S.tecnicodaos'
      'From SERVICOS S'
      
        '    LEFT JOIN CLIENTESEQUIPAMENTOS CE ON S.EQUIPAMENTO = CE.EQUI' +
        'PAMENTO'
      '    LEFT JOIN MODELOS M ON CE.MODELO = M.MODELO'
      
        '    LEFT JOIN STATUSSERVICOS SS ON SS.STATUSSERVICO = S.STATUSSE' +
        'RVICO'
      
        '    LEFT JOIN LOCALIZACAOEQUIPAMENTO L ON L.LOCALIZACAOEQUIPAMEN' +
        'TO = S.LOCALIZACAO'
      '    LEFT JOIN TIPOSSERVICOS TS ON TS.TIPOSERVICO = S.TIPOSERVICO'
      
        '    LEFT JOIN TIPOEQUIPAMENTOS TE ON TE.TIPOEQUIPAMENTO = M.TIPO' +
        'EQUIPAMENTO'
      '    LEFT JOIN MARCAS MR ON MR.MARCA = M.MARCA'
      '    LEFT JOIN FABRICANTES FR ON FR.FABRICANTE = M.FABRICANTE'
      'where'
      '(s.dataentrada >= :datae and S.dataentrada <= :datas)')
    Left = 898
    Top = 27
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datae'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datas'
        ParamType = ptUnknown
      end>
  end
  object C_RelatorioPorMarcas: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_RelatorioPorMarcas'
    Left = 899
    Top = 88
    object C_RelatorioPorMarcasSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object C_RelatorioPorMarcasOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_RelatorioPorMarcasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object C_RelatorioPorMarcasDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_RelatorioPorMarcasHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'SERVICOS.HORAENTRADA'
    end
    object C_RelatorioPorMarcasEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'SERVICOS.EQUIPAMENTO'
    end
    object C_RelatorioPorMarcasPARTESAGRAGADAS: TStringField
      FieldName = 'PARTESAGRAGADAS'
      Origin = 'SERVICOS.PARTESAGRAGADAS'
      Size = 100
    end
    object C_RelatorioPorMarcasDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'SERVICOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_RelatorioPorMarcasDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'SERVICOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_RelatorioPorMarcasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'SERVICOS.OBSERVACAO'
      Size = 255
    end
    object C_RelatorioPorMarcasDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SERVICOS.DATASAIDA'
    end
    object C_RelatorioPorMarcasHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object C_RelatorioPorMarcasFUNCENTRADA: TIntegerField
      FieldName = 'FUNCENTRADA'
      Origin = 'SERVICOS.FUNCENTRADA'
    end
    object C_RelatorioPorMarcasTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'SERVICOS.TECNICO'
    end
    object C_RelatorioPorMarcasFUNCSAIDA: TIntegerField
      FieldName = 'FUNCSAIDA'
      Origin = 'SERVICOS.FUNCSAIDA'
    end
    object C_RelatorioPorMarcasSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'SERVICOS.STATUSSERVICO'
    end
    object C_RelatorioPorMarcasLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'SERVICOS.LOCALIZACAO'
    end
    object C_RelatorioPorMarcasTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'SERVICOS.TIPOSERVICO'
    end
    object C_RelatorioPorMarcasAVARIA: TStringField
      FieldName = 'AVARIA'
      Origin = 'SERVICOS.AVARIA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasCOMACESSORIO: TStringField
      FieldName = 'COMACESSORIO'
      Origin = 'SERVICOS.COMACESSORIO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasCOMACESSORIOOBS: TStringField
      FieldName = 'COMACESSORIOOBS'
      Origin = 'SERVICOS.COMACESSORIOOBS'
      Size = 100
    end
    object C_RelatorioPorMarcasESTADOPRODMANCHADO: TStringField
      FieldName = 'ESTADOPRODMANCHADO'
      Origin = 'SERVICOS.ESTADOPRODMANCHADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasESTADOPRODARRANHADO: TStringField
      FieldName = 'ESTADOPRODARRANHADO'
      Origin = 'SERVICOS.ESTADOPRODARRANHADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasESTADOPRODSUJO: TStringField
      FieldName = 'ESTADOPRODSUJO'
      Origin = 'SERVICOS.ESTADOPRODSUJO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasESTADOPRODCABOELETRICO: TStringField
      FieldName = 'ESTADOPRODCABOELETRICO'
      Origin = 'SERVICOS.ESTADOPRODCABOELETRICO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasESTADOPRODQUEBRADO: TStringField
      FieldName = 'ESTADOPRODQUEBRADO'
      Origin = 'SERVICOS.ESTADOPRODQUEBRADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasEMBALAGEMPAPELAO: TStringField
      FieldName = 'EMBALAGEMPAPELAO'
      Origin = 'SERVICOS.EMBALAGEMPAPELAO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasEMBALAGEMPLASTICO: TStringField
      FieldName = 'EMBALAGEMPLASTICO'
      Origin = 'SERVICOS.EMBALAGEMPLASTICO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasGARANTIAFABRICA: TStringField
      FieldName = 'GARANTIAFABRICA'
      Origin = 'SERVICOS.GARANTIAFABRICA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasFORAGARANTIA: TStringField
      FieldName = 'FORAGARANTIA'
      Origin = 'SERVICOS.FORAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasRETORNO: TStringField
      FieldName = 'RETORNO'
      Origin = 'SERVICOS.RETORNO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasORCAMENTOACEITO: TStringField
      FieldName = 'ORCAMENTOACEITO'
      Origin = 'SERVICOS.ORCAMENTOACEITO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasORCAMENTOCOMUNICADO: TStringField
      FieldName = 'ORCAMENTOCOMUNICADO'
      Origin = 'SERVICOS.ORCAMENTOCOMUNICADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasSEMEMBALAGEM: TStringField
      FieldName = 'SEMEMBALAGEM'
      Origin = 'SERVICOS.SEMEMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioPorMarcasOBSAVARIA: TStringField
      FieldName = 'OBSAVARIA'
      Origin = 'SERVICOS.OBSAVARIA'
      Size = 100
    end
    object C_RelatorioPorMarcasNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'CLIENTESEQUIPAMENTOS.NUMEROSERIE'
      Size = 30
    end
    object C_RelatorioPorMarcasMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'CLIENTESEQUIPAMENTOS.MODELO'
    end
    object C_RelatorioPorMarcasDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'CLIENTESEQUIPAMENTOS.DATACOMPRA'
    end
    object C_RelatorioPorMarcasDIASGARANTIA: TIntegerField
      FieldName = 'DIASGARANTIA'
      Origin = 'CLIENTESEQUIPAMENTOS.DIASGARANTIA'
    end
    object C_RelatorioPorMarcasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'CLIENTESEQUIPAMENTOS.NOTAFISCAL'
      Size = 10
    end
    object C_RelatorioPorMarcasREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Origin = 'CLIENTESEQUIPAMENTOS.REVENDEDOR'
      Size = 50
    end
    object C_RelatorioPorMarcasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'MODELOS.CODIGO'
      Size = 6
    end
    object C_RelatorioPorMarcasDESCMODELO: TStringField
      FieldName = 'DESCMODELO'
      Origin = 'MODELOS.DESCMODELO'
      Size = 60
    end
    object C_RelatorioPorMarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MODELOS.DESCRICAO'
      Size = 60
    end
    object C_RelatorioPorMarcasCOR: TStringField
      FieldName = 'COR'
      Origin = 'MODELOS.COR'
      Size = 15
    end
    object C_RelatorioPorMarcasDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Origin = 'STATUSSERVICOS.DESCSTATUS'
      Size = 30
    end
    object C_RelatorioPorMarcasDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Origin = 'LOCALIZACAOEQUIPAMENTO.DESCLOCAL'
      Size = 30
    end
    object C_RelatorioPorMarcasDESCTIPOSERV: TStringField
      FieldName = 'DESCTIPOSERV'
      Origin = 'TIPOSSERVICOS.DESCTIPOSERV'
      Size = 30
    end
    object C_RelatorioPorMarcasDESCTIPOEQUIP: TStringField
      FieldName = 'DESCTIPOEQUIP'
      Origin = 'TIPOEQUIPAMENTOS.DESCTIPOEQUIP'
      Size = 30
    end
    object C_RelatorioPorMarcasDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Origin = 'MARCAS.DESCMARCA'
      Size = 30
    end
    object C_RelatorioPorMarcasDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Origin = 'FABRICANTES.DESCFABRICANTE'
      Size = 30
    end
    object C_RelatorioPorMarcasCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'SERVICOS.CARACTERISTICA'
      Size = 100
    end
    object C_RelatorioPorMarcasOBSORCACEITO: TStringField
      FieldName = 'OBSORCACEITO'
      Origin = 'SERVICOS.OBSORCACEITO'
      Size = 100
    end
    object C_RelatorioPorMarcasOBSORCCOMUNICADO: TStringField
      FieldName = 'OBSORCCOMUNICADO'
      Origin = 'SERVICOS.OBSORCCOMUNICADO'
      Size = 100
    end
    object C_RelatorioPorMarcasTECNICODAOS: TIntegerField
      FieldName = 'TECNICODAOS'
      Origin = 'SERVICOS.TECNICODAOS'
    end
  end
  object P_RelatorioPorMarcas: TDataSetProvider
    DataSet = Q_RelatorioPorMarcas
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 898
    Top = 152
  end
  object C_RelatorioPorMarcasDS: TDataSource
    Tag = 100
    DataSet = C_RelatorioPorMarcas
    Left = 908
    Top = 207
  end
  object ppRelatorioPorMarcas: TppReport
    AutoStop = False
    DataPipeline = ppDBRelatorioPorMarcas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 911
    Top = 332
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelatorioPorMarcas'
    object ppHeaderBand12: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 57944
      mmPrintPosition = 0
      object ppLabel265: TppLabel
        UserName = 'Label174'
        Caption = 'Aparelhos Pendentes por Marcas.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 3704
        mmTop = 39423
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel266: TppLabel
        UserName = 'Label187'
        Caption = 'Modelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 124619
        mmTop = 52123
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel267: TppLabel
        UserName = 'Label188'
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 177536
        mmTop = 52123
        mmWidth = 9948
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel268: TppLabel
        UserName = 'Label278'
        Caption = 'Aparelho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 39423
        mmTop = 52123
        mmWidth = 13970
        BandType = 0
      end
      object ppRegion11: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 2910
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel269: TppLabel
        UserName = 'Label250'
        Caption = 'O.S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 52123
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel270: TppLabel
        UserName = 'Label270'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4586
        mmLeft = 3969
        mmTop = 44979
        mmWidth = 10795
        BandType = 0
      end
      object ppDBText171: TppDBText
        UserName = 'DBText171'
        DataField = 'DESCMARCA'
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 45244
        mmWidth = 76200
        BandType = 0
      end
      object ppLabel297: TppLabel
        UserName = 'Label297'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 82550
        mmTop = 52123
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText167: TppDBText
        UserName = 'DBText135'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 3969
        mmLeft = 105304
        mmTop = 0
        mmWidth = 49742
        BandType = 4
      end
      object ppLine77: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine78: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine79: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine103: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppLine104: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 70115
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText168: TppDBText
        UserName = 'DBText161'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 3969
        mmLeft = 27252
        mmTop = 0
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText169: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCSTATUS'
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 3969
        mmLeft = 156369
        mmTop = 0
        mmWidth = 45773
        BandType = 4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText150'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppLine105: TppLine
        UserName = 'Line82'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText186: TppDBText
        UserName = 'DBText186'
        DataField = 'DESCMARCA'
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 3969
        mmLeft = 70908
        mmTop = 0
        mmWidth = 33073
        BandType = 4
      end
      object ppLine121: TppLine
        UserName = 'Line121'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 104511
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppFooterBand11: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel271: TppLabel
        UserName = 'Label271'
        Caption = 'Total Pe'#231'as:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 150019
        mmTop = 265
        mmWidth = 19050
        BandType = 8
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataPipeline = ppDBRelatorioPorMarcas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRelatorioPorMarcas'
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 529
        mmWidth = 14552
        BandType = 8
      end
      object ppLine106: TppLine
        UserName = 'Line106'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 6085
        mmTop = 5821
        mmWidth = 196850
        BandType = 8
      end
    end
  end
  object ppDBRelatorioPorMarcas: TppDBPipeline
    DataSource = C_RelatorioPorMarcasDS
    UserName = 'DBRelatorioPorMarcas1'
    Left = 906
    Top = 268
  end
  object Q_RelatorioLocalizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
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
      '       S.FUNCSAIDA,'
      '       S.STATUSSERVICO,'
      '       S.LOCALIZACAO,'
      '       S.TIPOSERVICO,'
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
      '       S.GARANTIAFABRICA,'
      '       S.FORAGARANTIA,'
      '       S.RETORNO,'
      '       S.ORCAMENTOACEITO,'
      '       S.ORCAMENTOCOMUNICADO,'
      '       S.SEMEMBALAGEM,'
      '       S.OBSAVARIA,'
      '       CE.NUMEROSERIE,'
      '       CE.MODELO,'
      '       CE.datacompra,'
      '       CE.diasgarantia,'
      '       CE.notafiscal,'
      '       CE.revendedor,'
      '       m.codigo,'
      '       M.DESCRICAO AS DESCMODELO,'
      '       M.descricao,'
      '       M.cor,'
      '       SS.DESCRICAO AS DESCSTATUS,'
      '       L.DESCRICAO AS DESCLOCAL,'
      '       TS.DESCRICAO AS DESCTIPOSERV,'
      '       TE.DESCRICAO AS DESCTIPOEQUIP,'
      '       MR.DESCRICAO AS DESCMARCA,'
      '       FR.DESCRICAO AS DESCFABRICANTE,'
      '       S.CARACTERISTICA,'
      '       s.obsorcaceito,'
      '       s.obsorccomunicado,'
      '       S.tecnicodaos'
      'From SERVICOS S'
      
        '    LEFT JOIN CLIENTESEQUIPAMENTOS CE ON S.EQUIPAMENTO = CE.EQUI' +
        'PAMENTO'
      '    LEFT JOIN MODELOS M ON CE.MODELO = M.MODELO'
      
        '    LEFT JOIN STATUSSERVICOS SS ON SS.STATUSSERVICO = S.STATUSSE' +
        'RVICO'
      
        '    LEFT JOIN LOCALIZACAOEQUIPAMENTO L ON L.LOCALIZACAOEQUIPAMEN' +
        'TO = S.LOCALIZACAO'
      '    LEFT JOIN TIPOSSERVICOS TS ON TS.TIPOSERVICO = S.TIPOSERVICO'
      
        '    LEFT JOIN TIPOEQUIPAMENTOS TE ON TE.TIPOEQUIPAMENTO = M.TIPO' +
        'EQUIPAMENTO'
      '    LEFT JOIN MARCAS MR ON MR.MARCA = M.MARCA'
      '    LEFT JOIN FABRICANTES FR ON FR.FABRICANTE = M.FABRICANTE'
      'WHERE'
      'ss.statusservico < 60 and'
      'MR.marca = :marca and'
      'ss.statusservico = :statusservico '
      'order by s.osnumero')
    Left = 1042
    Top = 27
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'statusservico'
        ParamType = ptUnknown
      end>
  end
  object C_RelatorioLocalizacao: TClientDataSet
    Tag = 100
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_RelatorioLocalizacao'
    Left = 1043
    Top = 88
    object C_RelatorioLocalizacaoSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object C_RelatorioLocalizacaoOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_RelatorioLocalizacaoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object C_RelatorioLocalizacaoDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_RelatorioLocalizacaoHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'SERVICOS.HORAENTRADA'
    end
    object C_RelatorioLocalizacaoEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'SERVICOS.EQUIPAMENTO'
    end
    object C_RelatorioLocalizacaoPARTESAGRAGADAS: TStringField
      FieldName = 'PARTESAGRAGADAS'
      Origin = 'SERVICOS.PARTESAGRAGADAS'
      Size = 100
    end
    object C_RelatorioLocalizacaoDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'SERVICOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_RelatorioLocalizacaoDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'SERVICOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_RelatorioLocalizacaoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'SERVICOS.OBSERVACAO'
      Size = 255
    end
    object C_RelatorioLocalizacaoDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SERVICOS.DATASAIDA'
    end
    object C_RelatorioLocalizacaoHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object C_RelatorioLocalizacaoFUNCENTRADA: TIntegerField
      FieldName = 'FUNCENTRADA'
      Origin = 'SERVICOS.FUNCENTRADA'
    end
    object C_RelatorioLocalizacaoTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'SERVICOS.TECNICO'
    end
    object C_RelatorioLocalizacaoFUNCSAIDA: TIntegerField
      FieldName = 'FUNCSAIDA'
      Origin = 'SERVICOS.FUNCSAIDA'
    end
    object C_RelatorioLocalizacaoSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'SERVICOS.STATUSSERVICO'
    end
    object C_RelatorioLocalizacaoLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'SERVICOS.LOCALIZACAO'
    end
    object C_RelatorioLocalizacaoTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'SERVICOS.TIPOSERVICO'
    end
    object C_RelatorioLocalizacaoAVARIA: TStringField
      FieldName = 'AVARIA'
      Origin = 'SERVICOS.AVARIA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoCOMACESSORIO: TStringField
      FieldName = 'COMACESSORIO'
      Origin = 'SERVICOS.COMACESSORIO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoCOMACESSORIOOBS: TStringField
      FieldName = 'COMACESSORIOOBS'
      Origin = 'SERVICOS.COMACESSORIOOBS'
      Size = 100
    end
    object C_RelatorioLocalizacaoESTADOPRODMANCHADO: TStringField
      FieldName = 'ESTADOPRODMANCHADO'
      Origin = 'SERVICOS.ESTADOPRODMANCHADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoESTADOPRODARRANHADO: TStringField
      FieldName = 'ESTADOPRODARRANHADO'
      Origin = 'SERVICOS.ESTADOPRODARRANHADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoESTADOPRODSUJO: TStringField
      FieldName = 'ESTADOPRODSUJO'
      Origin = 'SERVICOS.ESTADOPRODSUJO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoESTADOPRODCABOELETRICO: TStringField
      FieldName = 'ESTADOPRODCABOELETRICO'
      Origin = 'SERVICOS.ESTADOPRODCABOELETRICO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoESTADOPRODQUEBRADO: TStringField
      FieldName = 'ESTADOPRODQUEBRADO'
      Origin = 'SERVICOS.ESTADOPRODQUEBRADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoEMBALAGEMPAPELAO: TStringField
      FieldName = 'EMBALAGEMPAPELAO'
      Origin = 'SERVICOS.EMBALAGEMPAPELAO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoEMBALAGEMPLASTICO: TStringField
      FieldName = 'EMBALAGEMPLASTICO'
      Origin = 'SERVICOS.EMBALAGEMPLASTICO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoGARANTIAFABRICA: TStringField
      FieldName = 'GARANTIAFABRICA'
      Origin = 'SERVICOS.GARANTIAFABRICA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoFORAGARANTIA: TStringField
      FieldName = 'FORAGARANTIA'
      Origin = 'SERVICOS.FORAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoRETORNO: TStringField
      FieldName = 'RETORNO'
      Origin = 'SERVICOS.RETORNO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoORCAMENTOACEITO: TStringField
      FieldName = 'ORCAMENTOACEITO'
      Origin = 'SERVICOS.ORCAMENTOACEITO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoORCAMENTOCOMUNICADO: TStringField
      FieldName = 'ORCAMENTOCOMUNICADO'
      Origin = 'SERVICOS.ORCAMENTOCOMUNICADO'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoSEMEMBALAGEM: TStringField
      FieldName = 'SEMEMBALAGEM'
      Origin = 'SERVICOS.SEMEMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object C_RelatorioLocalizacaoOBSAVARIA: TStringField
      FieldName = 'OBSAVARIA'
      Origin = 'SERVICOS.OBSAVARIA'
      Size = 100
    end
    object C_RelatorioLocalizacaoNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'CLIENTESEQUIPAMENTOS.NUMEROSERIE'
      Size = 30
    end
    object C_RelatorioLocalizacaoMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'CLIENTESEQUIPAMENTOS.MODELO'
    end
    object C_RelatorioLocalizacaoDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = 'CLIENTESEQUIPAMENTOS.DATACOMPRA'
    end
    object C_RelatorioLocalizacaoDIASGARANTIA: TIntegerField
      FieldName = 'DIASGARANTIA'
      Origin = 'CLIENTESEQUIPAMENTOS.DIASGARANTIA'
    end
    object C_RelatorioLocalizacaoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'CLIENTESEQUIPAMENTOS.NOTAFISCAL'
      Size = 10
    end
    object C_RelatorioLocalizacaoREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Origin = 'CLIENTESEQUIPAMENTOS.REVENDEDOR'
      Size = 50
    end
    object C_RelatorioLocalizacaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'MODELOS.CODIGO'
      Size = 6
    end
    object C_RelatorioLocalizacaoDESCMODELO: TStringField
      FieldName = 'DESCMODELO'
      Origin = 'MODELOS.DESCMODELO'
      Size = 60
    end
    object C_RelatorioLocalizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MODELOS.DESCRICAO'
      Size = 60
    end
    object C_RelatorioLocalizacaoCOR: TStringField
      FieldName = 'COR'
      Origin = 'MODELOS.COR'
      Size = 15
    end
    object C_RelatorioLocalizacaoDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Origin = 'STATUSSERVICOS.DESCSTATUS'
      Size = 30
    end
    object C_RelatorioLocalizacaoDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Origin = 'LOCALIZACAOEQUIPAMENTO.DESCLOCAL'
      Size = 30
    end
    object C_RelatorioLocalizacaoDESCTIPOSERV: TStringField
      FieldName = 'DESCTIPOSERV'
      Origin = 'TIPOSSERVICOS.DESCTIPOSERV'
      Size = 30
    end
    object C_RelatorioLocalizacaoDESCTIPOEQUIP: TStringField
      FieldName = 'DESCTIPOEQUIP'
      Origin = 'TIPOEQUIPAMENTOS.DESCTIPOEQUIP'
      Size = 30
    end
    object C_RelatorioLocalizacaoDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Origin = 'MARCAS.DESCMARCA'
      Size = 30
    end
    object C_RelatorioLocalizacaoDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Origin = 'FABRICANTES.DESCFABRICANTE'
      Size = 30
    end
    object C_RelatorioLocalizacaoCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'SERVICOS.CARACTERISTICA'
      Size = 100
    end
    object C_RelatorioLocalizacaoOBSORCACEITO: TStringField
      FieldName = 'OBSORCACEITO'
      Origin = 'SERVICOS.OBSORCACEITO'
      Size = 100
    end
    object C_RelatorioLocalizacaoOBSORCCOMUNICADO: TStringField
      FieldName = 'OBSORCCOMUNICADO'
      Origin = 'SERVICOS.OBSORCCOMUNICADO'
      Size = 100
    end
    object C_RelatorioLocalizacaoTECNICODAOS: TIntegerField
      FieldName = 'TECNICODAOS'
      Origin = 'SERVICOS.TECNICODAOS'
    end
  end
  object P_RelatorioLocalizacao: TDataSetProvider
    DataSet = Q_RelatorioLocalizacao
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 1042
    Top = 152
  end
  object C_RelatorioLocalizacaoDS: TDataSource
    Tag = 100
    DataSet = C_RelatorioLocalizacao
    Left = 1052
    Top = 207
  end
  object ppDBrelatorioLocalizacao: TppDBPipeline
    DataSource = C_RelatorioLocalizacaoDS
    UserName = 'DBrelatorioLocalizacao'
    Left = 1056
    Top = 272
    object ppDBrelatorioLocalizacaoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SERVICO'
      FieldName = 'SERVICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBrelatorioLocalizacaoppField2: TppField
      FieldAlias = 'OSNUMERO'
      FieldName = 'OSNUMERO'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppDBrelatorioLocalizacaoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBrelatorioLocalizacaoppField4: TppField
      FieldAlias = 'DATAENTRADA'
      FieldName = 'DATAENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBrelatorioLocalizacaoppField5: TppField
      FieldAlias = 'HORAENTRADA'
      FieldName = 'HORAENTRADA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 4
    end
    object ppDBrelatorioLocalizacaoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'EQUIPAMENTO'
      FieldName = 'EQUIPAMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBrelatorioLocalizacaoppField7: TppField
      FieldAlias = 'PARTESAGRAGADAS'
      FieldName = 'PARTESAGRAGADAS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object ppDBrelatorioLocalizacaoppField8: TppField
      FieldAlias = 'DEFEITOALEGADO'
      FieldName = 'DEFEITOALEGADO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 7
    end
    object ppDBrelatorioLocalizacaoppField9: TppField
      FieldAlias = 'DEFEITOENCONTRADO'
      FieldName = 'DEFEITOENCONTRADO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 8
    end
    object ppDBrelatorioLocalizacaoppField10: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 9
    end
    object ppDBrelatorioLocalizacaoppField11: TppField
      FieldAlias = 'DATASAIDA'
      FieldName = 'DATASAIDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppDBrelatorioLocalizacaoppField12: TppField
      FieldAlias = 'HORASAIDA'
      FieldName = 'HORASAIDA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 11
    end
    object ppDBrelatorioLocalizacaoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNCENTRADA'
      FieldName = 'FUNCENTRADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBrelatorioLocalizacaoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'TECNICO'
      FieldName = 'TECNICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBrelatorioLocalizacaoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNCSAIDA'
      FieldName = 'FUNCSAIDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDBrelatorioLocalizacaoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUSSERVICO'
      FieldName = 'STATUSSERVICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDBrelatorioLocalizacaoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOCALIZACAO'
      FieldName = 'LOCALIZACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBrelatorioLocalizacaoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOSERVICO'
      FieldName = 'TIPOSERVICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBrelatorioLocalizacaoppField19: TppField
      FieldAlias = 'AVARIA'
      FieldName = 'AVARIA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object ppDBrelatorioLocalizacaoppField20: TppField
      FieldAlias = 'COMACESSORIO'
      FieldName = 'COMACESSORIO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object ppDBrelatorioLocalizacaoppField21: TppField
      FieldAlias = 'COMACESSORIOOBS'
      FieldName = 'COMACESSORIOOBS'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object ppDBrelatorioLocalizacaoppField22: TppField
      FieldAlias = 'ESTADOPRODMANCHADO'
      FieldName = 'ESTADOPRODMANCHADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppDBrelatorioLocalizacaoppField23: TppField
      FieldAlias = 'ESTADOPRODARRANHADO'
      FieldName = 'ESTADOPRODARRANHADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object ppDBrelatorioLocalizacaoppField24: TppField
      FieldAlias = 'ESTADOPRODSUJO'
      FieldName = 'ESTADOPRODSUJO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object ppDBrelatorioLocalizacaoppField25: TppField
      FieldAlias = 'ESTADOPRODCABOELETRICO'
      FieldName = 'ESTADOPRODCABOELETRICO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object ppDBrelatorioLocalizacaoppField26: TppField
      FieldAlias = 'ESTADOPRODQUEBRADO'
      FieldName = 'ESTADOPRODQUEBRADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 25
    end
    object ppDBrelatorioLocalizacaoppField27: TppField
      FieldAlias = 'EMBALAGEMPAPELAO'
      FieldName = 'EMBALAGEMPAPELAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 26
    end
    object ppDBrelatorioLocalizacaoppField28: TppField
      FieldAlias = 'EMBALAGEMPLASTICO'
      FieldName = 'EMBALAGEMPLASTICO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppDBrelatorioLocalizacaoppField29: TppField
      FieldAlias = 'GARANTIAFABRICA'
      FieldName = 'GARANTIAFABRICA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppDBrelatorioLocalizacaoppField30: TppField
      FieldAlias = 'FORAGARANTIA'
      FieldName = 'FORAGARANTIA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 29
    end
    object ppDBrelatorioLocalizacaoppField31: TppField
      FieldAlias = 'RETORNO'
      FieldName = 'RETORNO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object ppDBrelatorioLocalizacaoppField32: TppField
      FieldAlias = 'ORCAMENTOACEITO'
      FieldName = 'ORCAMENTOACEITO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 31
    end
    object ppDBrelatorioLocalizacaoppField33: TppField
      FieldAlias = 'ORCAMENTOCOMUNICADO'
      FieldName = 'ORCAMENTOCOMUNICADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 32
    end
    object ppDBrelatorioLocalizacaoppField34: TppField
      FieldAlias = 'SEMEMBALAGEM'
      FieldName = 'SEMEMBALAGEM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object ppDBrelatorioLocalizacaoppField35: TppField
      FieldAlias = 'OBSAVARIA'
      FieldName = 'OBSAVARIA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object ppDBrelatorioLocalizacaoppField36: TppField
      FieldAlias = 'NUMEROSERIE'
      FieldName = 'NUMEROSERIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 35
    end
    object ppDBrelatorioLocalizacaoppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'MODELO'
      FieldName = 'MODELO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppDBrelatorioLocalizacaoppField38: TppField
      FieldAlias = 'DATACOMPRA'
      FieldName = 'DATACOMPRA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 37
    end
    object ppDBrelatorioLocalizacaoppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIASGARANTIA'
      FieldName = 'DIASGARANTIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppDBrelatorioLocalizacaoppField40: TppField
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 10
      DisplayWidth = 10
      Position = 39
    end
    object ppDBrelatorioLocalizacaoppField41: TppField
      FieldAlias = 'REVENDEDOR'
      FieldName = 'REVENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppDBrelatorioLocalizacaoppField42: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 41
    end
    object ppDBrelatorioLocalizacaoppField43: TppField
      FieldAlias = 'DESCMODELO'
      FieldName = 'DESCMODELO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 42
    end
    object ppDBrelatorioLocalizacaoppField44: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 43
    end
    object ppDBrelatorioLocalizacaoppField45: TppField
      FieldAlias = 'COR'
      FieldName = 'COR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 44
    end
    object ppDBrelatorioLocalizacaoppField46: TppField
      FieldAlias = 'DESCSTATUS'
      FieldName = 'DESCSTATUS'
      FieldLength = 30
      DisplayWidth = 30
      Position = 45
    end
    object ppDBrelatorioLocalizacaoppField47: TppField
      FieldAlias = 'DESCLOCAL'
      FieldName = 'DESCLOCAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 46
    end
    object ppDBrelatorioLocalizacaoppField48: TppField
      FieldAlias = 'DESCTIPOSERV'
      FieldName = 'DESCTIPOSERV'
      FieldLength = 30
      DisplayWidth = 30
      Position = 47
    end
    object ppDBrelatorioLocalizacaoppField49: TppField
      FieldAlias = 'DESCTIPOEQUIP'
      FieldName = 'DESCTIPOEQUIP'
      FieldLength = 30
      DisplayWidth = 30
      Position = 48
    end
    object ppDBrelatorioLocalizacaoppField50: TppField
      FieldAlias = 'DESCMARCA'
      FieldName = 'DESCMARCA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 49
    end
    object ppDBrelatorioLocalizacaoppField51: TppField
      FieldAlias = 'DESCFABRICANTE'
      FieldName = 'DESCFABRICANTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 50
    end
    object ppDBrelatorioLocalizacaoppField52: TppField
      FieldAlias = 'CARACTERISTICA'
      FieldName = 'CARACTERISTICA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 51
    end
    object ppDBrelatorioLocalizacaoppField53: TppField
      FieldAlias = 'OBSORCACEITO'
      FieldName = 'OBSORCACEITO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 52
    end
    object ppDBrelatorioLocalizacaoppField54: TppField
      FieldAlias = 'OBSORCCOMUNICADO'
      FieldName = 'OBSORCCOMUNICADO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 53
    end
    object ppDBrelatorioLocalizacaoppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'TECNICODAOS'
      FieldName = 'TECNICODAOS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
  end
  object ppRelatorioLocalizacao: TppReport
    AutoStop = False
    DataPipeline = ppDBrelatorioLocalizacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 400
    PrinterSetup.mmMarginLeft = 400
    PrinterSetup.mmMarginRight = 400
    PrinterSetup.mmMarginTop = 400
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 1055
    Top = 332
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBrelatorioLocalizacao'
    object ppHeaderBand13: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 57944
      mmPrintPosition = 0
      object ppLabel272: TppLabel
        UserName = 'Label174'
        Caption = 'Aparelhos Pendentes por Status.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 3704
        mmTop = 39423
        mmWidth = 51435
        BandType = 0
      end
      object ppLabel273: TppLabel
        UserName = 'Label187'
        Caption = 'Modelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 65617
        mmTop = 52652
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel274: TppLabel
        UserName = 'Label188'
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 181557
        mmTop = 52123
        mmWidth = 9948
        BandType = 0
      end
      object ppLine107: TppLine
        UserName = 'Line65'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3704
        mmTop = 57679
        mmWidth = 199496
        BandType = 0
      end
      object ppLabel275: TppLabel
        UserName = 'Label278'
        Caption = 'Aparelho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 29633
        mmTop = 52652
        mmWidth = 14023
        BandType = 0
      end
      object ppRegion12: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 1588
        mmTop = 265
        mmWidth = 206111
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel276: TppLabel
        UserName = 'Label250'
        Caption = 'O.S.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11906
        mmTop = 52123
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel277: TppLabel
        UserName = 'Label277'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 135732
        mmTop = 52123
        mmWidth = 9790
        BandType = 0
      end
    end
    object ppDetailBand13: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText176: TppDBText
        UserName = 'DBText135'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBrelatorioLocalizacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBrelatorioLocalizacao'
        mmHeight = 3881
        mmLeft = 61913
        mmTop = 0
        mmWidth = 62442
        BandType = 4
      end
      object ppLine108: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine109: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 202936
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine110: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 3704
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppLine111: TppLine
        UserName = 'Line64'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 3704
        mmTop = 4233
        mmWidth = 199496
        BandType = 4
      end
      object ppLine112: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 61119
        mmTop = 0
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText177: TppDBText
        UserName = 'DBText161'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBrelatorioLocalizacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBrelatorioLocalizacao'
        mmHeight = 3881
        mmLeft = 25400
        mmTop = 0
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText178: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCSTATUS'
        DataPipeline = ppDBrelatorioLocalizacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBrelatorioLocalizacao'
        mmHeight = 3881
        mmLeft = 153988
        mmTop = 0
        mmWidth = 48154
        BandType = 4
      end
      object ppDBText179: TppDBText
        UserName = 'DBText150'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBrelatorioLocalizacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBrelatorioLocalizacao'
        mmHeight = 3969
        mmLeft = 4763
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppLine113: TppLine
        UserName = 'Line82'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 152929
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine115: TppLine
        UserName = 'Line115'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText175: TppDBText
        UserName = 'DBText175'
        DataField = 'DESCMARCA'
        DataPipeline = ppDBrelatorioLocalizacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBrelatorioLocalizacao'
        mmHeight = 3881
        mmLeft = 125942
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel280: TppLabel
        UserName = 'Label271'
        Caption = 'Total Pe'#231'as:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 150019
        mmTop = 1058
        mmWidth = 19050
        BandType = 8
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataPipeline = ppDBrelatorioLocalizacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBrelatorioLocalizacao'
        mmHeight = 4191
        mmLeft = 187071
        mmTop = 1323
        mmWidth = 15071
        BandType = 8
      end
      object ppLine114: TppLine
        UserName = 'Line106'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 6085
        mmTop = 5821
        mmWidth = 196850
        BandType = 8
      end
    end
  end
  object ppDBEPecasPendentes: TppDBPipeline
    DataSource = C_PecasPendentesDS
    UserName = 'ppDBEPecasPendentes'
    Left = 498
    Top = 268
  end
  object ppEntradaMIX: TppReport
    AutoStop = False
    DataPipeline = ppDBEntradaAssistencia2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 123
    Top = 100
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEntradaAssistencia2'
    object ppHeaderBand15: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 269346
      mmPrintPosition = 0
      object ppLabel421: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 28046
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText250: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 28046
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel422: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 33338
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel423: TppLabel
        UserName = 'Label3'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 38100
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel424: TppLabel
        UserName = 'Label4'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 114565
        mmTop = 38100
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel425: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 42863
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel426: TppLabel
        UserName = 'Label6'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 42863
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText251: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 33338
        mmWidth = 96309
        BandType = 0
      end
      object ppDBText252: TppDBText
        UserName = 'DBText3'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 38100
        mmWidth = 96573
        BandType = 0
      end
      object ppDBText253: TppDBText
        UserName = 'DBText4'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 38100
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText254: TppDBText
        UserName = 'DBText5'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 16669
        mmTop = 42863
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText255: TppDBText
        UserName = 'DBText6'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 59531
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText256: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 125677
        mmTop = 33338
        mmWidth = 11783
        BandType = 0
      end
      object ppLabel427: TppLabel
        UserName = 'Label7'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 115888
        mmTop = 33338
        mmWidth = 8996
        BandType = 0
      end
      object ppLine136: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 47890
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel428: TppLabel
        UserName = 'Label8'
        Caption = 'Equip:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 1323
        mmTop = 48948
        mmWidth = 10089
        BandType = 0
      end
      object ppDBText257: TppDBText
        UserName = 'DBText8'
        DataField = 'EQUIPAMENTO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 11642
        mmTop = 49213
        mmWidth = 32015
        BandType = 0
      end
      object ppDBText258: TppDBText
        UserName = 'DBText10'
        DataField = 'MARCA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 113506
        mmTop = 49742
        mmWidth = 41804
        BandType = 0
      end
      object ppDBText259: TppDBText
        UserName = 'DBText11'
        DataField = 'TIPO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 49742
        mmWidth = 37306
        BandType = 0
      end
      object ppLabel429: TppLabel
        UserName = 'Label9'
        Caption = 'Modelo/Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 43127
        mmTop = 49477
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel430: TppLabel
        UserName = 'Label11'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 49477
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel431: TppLabel
        UserName = 'Label12'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 54504
        mmWidth = 17992
        BandType = 0
      end
      object ppDBMemo29: TppDBMemo
        UserName = 'DBPARTESAGRAGADAS'
        CharWrap = False
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 9790
        mmLeft = 24871
        mmTop = 54504
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel432: TppLabel
        UserName = 'Label13'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 65088
        mmWidth = 21431
        BandType = 0
      end
      object ppDBMemo30: TppDBMemo
        UserName = 'DBDEFEITOALEGADO'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 24077
        mmTop = 65352
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine137: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 77788
        mmWidth = 200819
        BandType = 0
      end
      object ppLine138: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1852
        mmLeft = 265
        mmTop = 144463
        mmWidth = 196850
        BandType = 0
      end
      object ppRegion15: TppRegion
        UserName = 'ppRegion15'
        Brush.Style = bsClear
        Caption = 'ppRegion15'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 25135
        mmLeft = 1588
        mmTop = 0
        mmWidth = 198702
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel433: TppLabel
          UserName = 'Label10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4057
          mmLeft = 36777
          mmTop = 28575
          mmWidth = 12277
          BandType = 0
        end
      end
      object ppDBText260: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 122819
        mmTop = 27781
        mmWidth = 25612
        BandType = 0
      end
      object ppDBText261: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 164871
        mmTop = 27781
        mmWidth = 26952
        BandType = 0
      end
      object ppLabel434: TppLabel
        UserName = 'lbEntrega'
        Caption = 'COMPROVANTE DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 28046
        mmWidth = 51858
        BandType = 0
      end
      object ppDBText274: TppDBText
        UserName = 'DBText274'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6350
        mmLeft = 137054
        mmTop = 148696
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel452: TppLabel
        UserName = 'Label452'
        Caption = 'Data :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 27781
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel453: TppLabel
        UserName = 'Label453'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 27781
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel454: TppLabel
        UserName = 'Label454'
        Caption = 'CPF/CNPJ: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 106892
        mmTop = 42863
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText278: TppDBText
        UserName = 'DBText278'
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 126207
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object myDBCheckBox72: TmyDBCheckBox
        UserName = 'DBCheckBox302'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 32015
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel455: TppLabel
        UserName = 'Label455'
        Caption = 'Garantia de F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 33073
        mmWidth = 23813
        BandType = 0
      end
      object myDBCheckBox73: TmyDBCheckBox
        UserName = 'DBCheckBox73'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 37571
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel456: TppLabel
        UserName = 'Label456'
        Caption = 'Fora de Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 38629
        mmWidth = 20373
        BandType = 0
      end
      object myDBCheckBox74: TmyDBCheckBox
        UserName = 'DBCheckBox74'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 42598
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel457: TppLabel
        UserName = 'Label457'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 43656
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel458: TppLabel
        UserName = 'Label458'
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 135732
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText279: TppDBText
        UserName = 'DBText279'
        DataField = 'USUARIO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 15081
        mmTop = 139965
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel459: TppLabel
        UserName = 'Label459'
        Caption = 'Via do Cliente '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 179123
        mmTop = 134673
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel460: TppLabel
        UserName = 'Label460'
        Caption = 'Termos e Condi'#231#245'es da Assist'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 46302
        mmTop = 78846
        mmWidth = 90223
        BandType = 0
      end
      object ppLabel461: TppLabel
        UserName = 'Label4601'
        Caption = 'Comprovante de Entrada Interno - OS N: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 37306
        mmTop = 148696
        mmWidth = 98690
        BandType = 0
      end
      object ppLabel462: TppLabel
        UserName = 'Label462'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 5821
        mmTop = 156634
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText280: TppDBText
        UserName = 'DBText280'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 18521
        mmTop = 156634
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel463: TppLabel
        UserName = 'Label463'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 117475
        mmTop = 156634
        mmWidth = 8996
        BandType = 0
      end
      object ppDBText281: TppDBText
        UserName = 'DBText281'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 127265
        mmTop = 156634
        mmWidth = 11783
        BandType = 0
      end
      object ppLabel464: TppLabel
        UserName = 'Label464'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 161396
        mmWidth = 16140
        BandType = 0
      end
      object ppDBText282: TppDBText
        UserName = 'DBText282'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 18521
        mmTop = 161396
        mmWidth = 96573
        BandType = 0
      end
      object ppDBText283: TppDBText
        UserName = 'DBText283'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 127265
        mmTop = 161396
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel465: TppLabel
        UserName = 'Label465'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 116152
        mmTop = 161396
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel466: TppLabel
        UserName = 'Label466'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 5027
        mmTop = 166159
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText284: TppDBText
        UserName = 'DBText284'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 18256
        mmTop = 166159
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel467: TppLabel
        UserName = 'Label467'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 52388
        mmTop = 166159
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText285: TppDBText
        UserName = 'DBText285'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 61119
        mmTop = 166159
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel468: TppLabel
        UserName = 'Label468'
        Caption = 'CPF/CNPJ: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 108479
        mmTop = 166159
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText286: TppDBText
        UserName = 'DBText286'
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 127794
        mmTop = 166159
        mmWidth = 28310
        BandType = 0
      end
      object myDBCheckBox75: TmyDBCheckBox
        UserName = 'DBCheckBox75'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6085
        mmLeft = 168805
        mmTop = 155311
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel469: TppLabel
        UserName = 'Label469'
        Caption = 'Garantia de F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174890
        mmTop = 156369
        mmWidth = 23813
        BandType = 0
      end
      object myDBCheckBox76: TmyDBCheckBox
        UserName = 'DBCheckBox76'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6085
        mmLeft = 168805
        mmTop = 160867
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel470: TppLabel
        UserName = 'Label470'
        Caption = 'Fora de Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 161925
        mmWidth = 20373
        BandType = 0
      end
      object myDBCheckBox77: TmyDBCheckBox
        UserName = 'DBCheckBox77'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 6085
        mmLeft = 168805
        mmTop = 165894
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel471: TppLabel
        UserName = 'Label471'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 166952
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel447: TppLabel
        UserName = 'Label447'
        Caption = 'Equipamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 174890
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText275: TppDBText
        UserName = 'DBText275'
        DataField = 'EQUIPAMENTO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 25929
        mmTop = 174890
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel448: TppLabel
        UserName = 'Label448'
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 175155
        mmWidth = 7938
        BandType = 0
      end
      object ppDBText276: TppDBText
        UserName = 'DBText276'
        DataField = 'DESCTIPOEQUIP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 75406
        mmTop = 175155
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel449: TppLabel
        UserName = 'Label449'
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 110596
        mmTop = 175155
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText277: TppDBText
        UserName = 'DBText103'
        DataField = 'DESCMODELO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4498
        mmLeft = 125148
        mmTop = 175155
        mmWidth = 71967
        BandType = 0
      end
      object ppDBMemo33: TppDBMemo
        UserName = 'DBPARTESAGRAGADAS2'
        CharWrap = False
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10319
        mmLeft = 24342
        mmTop = 180182
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel451: TppLabel
        UserName = 'Label451'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 5027
        mmTop = 180182
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel472: TppLabel
        UserName = 'Label472'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1058
        mmTop = 190765
        mmWidth = 21431
        BandType = 0
      end
      object ppDBMemo34: TppDBMemo
        UserName = 'DBDEFEITOALEGADO4'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 11113
        mmLeft = 23813
        mmTop = 191030
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine141: TppLine
        UserName = 'Line141'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1852
        mmLeft = 0
        mmTop = 172244
        mmWidth = 200819
        BandType = 0
      end
      object ppLabel450: TppLabel
        UserName = 'Label450'
        Caption = 'Data :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 529
        mmTop = 204788
        mmWidth = 10319
        BandType = 0
      end
      object ppDBText287: TppDBText
        UserName = 'DBText287'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 11959
        mmTop = 205317
        mmWidth = 25612
        BandType = 0
      end
      object ppLabel473: TppLabel
        UserName = 'Label473'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 38365
        mmTop = 204788
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText288: TppDBText
        UserName = 'DBText288'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 36019
        mmTop = 205052
        mmWidth = 26952
        BandType = 0
      end
      object ppLabel435: TppLabel
        UserName = 'Label435'
        Caption = 'Via da Assist'#234'ncia '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 141817
        mmTop = 214048
        mmWidth = 26723
        BandType = 0
      end
      object ppRichText3: TppRichText
        OnPrint = ppRTLegislacaoPrint
        UserName = 'ppRTLegislacao1'
        Caption = 'RTLegislacao'
        mmHeight = 47361
        mmLeft = 529
        mmTop = 84931
        mmWidth = 197115
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel335: TppLabel
        UserName = 'Label335'
        Caption = '_______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 136261
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel346: TppLabel
        UserName = 'Label4602'
        Caption = 'Termos e Condi'#231#245'es da Assist'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 45773
        mmTop = 212990
        mmWidth = 90223
        BandType = 0
      end
      object ppRichText4: TppRichText
        OnPrint = ppRTLegislacaoPrint
        UserName = 'RichText4'
        Caption = 'RTLegislacao'
        mmHeight = 47361
        mmLeft = 0
        mmTop = 219075
        mmWidth = 197115
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel347: TppLabel
        UserName = 'Label347'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 74877
        mmTop = 135732
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText212: TppDBText
        UserName = 'DBText212'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 83079
        mmTop = 138907
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel348: TppLabel
        UserName = 'Label348'
        Caption = '_______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 84667
        mmTop = 135996
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel344: TppLabel
        UserName = 'Label344'
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 64823
        mmTop = 204788
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel345: TppLabel
        UserName = 'Label345'
        Caption = '_______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 78581
        mmTop = 205317
        mmWidth = 48154
        BandType = 0
      end
      object ppDBText213: TppDBText
        UserName = 'DBText213'
        DataField = 'USUARIO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 78317
        mmTop = 209021
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText214: TppDBText
        UserName = 'DBText214'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 146315
        mmTop = 207963
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel349: TppLabel
        UserName = 'Label349'
        Caption = '_______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 147902
        mmTop = 205052
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel350: TppLabel
        UserName = 'Label350'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 138113
        mmTop = 204788
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel334: TppLabel
        UserName = 'Label334'
        Caption = 'NS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 49742
        mmWidth = 5821
        BandType = 0
      end
      object ppDBText207: TppDBText
        UserName = 'DBText104'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 162454
        mmTop = 49742
        mmWidth = 37042
        BandType = 0
      end
    end
    object ppDetailBand15: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand14: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppComprovanteEntrega: TppReport
    AutoStop = False
    DataPipeline = ppDBOrcamento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8,5 x 11 pol.; 216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desenv\Fontes_BR\SyncLoja\rptEntradas.rtm'
    DeviceType = 'Screen'
    Left = 131
    Top = 252
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBOrcamento'
    object ppHeaderBand14: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 182563
      mmPrintPosition = 0
      object ppLabel314: TppLabel
        UserName = 'Label1'
        Caption = 'OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 28046
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText193: TppDBText
        UserName = 'DBText1'
        DataField = 'OSNUMERO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 75671
        mmTop = 28046
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label2'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 33338
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label3'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 38100
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label4'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 114565
        mmTop = 38100
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel318: TppLabel
        UserName = 'Label5'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 42863
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel319: TppLabel
        UserName = 'Label6'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 42863
        mmWidth = 8202
        BandType = 0
      end
      object ppDBText194: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 33338
        mmWidth = 96309
        BandType = 0
      end
      object ppDBText195: TppDBText
        UserName = 'DBText3'
        DataField = 'ENDERECO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 38100
        mmWidth = 96573
        BandType = 0
      end
      object ppDBText196: TppDBText
        UserName = 'DBText4'
        DataField = 'BAIRRO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 38100
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText197: TppDBText
        UserName = 'DBText5'
        DataField = 'CIDADE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 16669
        mmTop = 42863
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText198: TppDBText
        UserName = 'DBText6'
        DataField = 'CEP'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 59531
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText199: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'FONE1'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 125677
        mmTop = 33338
        mmWidth = 11783
        BandType = 0
      end
      object ppLabel320: TppLabel
        UserName = 'Label7'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 115888
        mmTop = 33338
        mmWidth = 8996
        BandType = 0
      end
      object ppLine125: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 47890
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel324: TppLabel
        UserName = 'Label12'
        Caption = 'Acess'#243'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 63765
        mmWidth = 17992
        BandType = 0
      end
      object ppDBMemo19: TppDBMemo
        UserName = 'DBPARTESAGRAGADAS'
        CharWrap = False
        DataField = 'COMACESSORIOOBS'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 9790
        mmLeft = 25135
        mmTop = 63765
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel325: TppLabel
        UserName = 'Label13'
        Caption = 'Def. Alegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 74348
        mmWidth = 21431
        BandType = 0
      end
      object ppDBMemo22: TppDBMemo
        UserName = 'DBDEFEITOALEGADO'
        CharWrap = False
        DataField = 'DEFEITOALEGADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 25400
        mmTop = 74613
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine126: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 57150
        mmWidth = 200819
        BandType = 0
      end
      object ppLine127: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1852
        mmLeft = 1323
        mmTop = 175948
        mmWidth = 196850
        BandType = 0
      end
      object ppRegion13: TppRegion
        UserName = 'ppRegion13'
        Brush.Style = bsClear
        Caption = 'ppRegion13'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 25135
        mmLeft = 1588
        mmTop = 0
        mmWidth = 198702
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel326: TppLabel
          UserName = 'Label10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4057
          mmLeft = 36777
          mmTop = 28575
          mmWidth = 12277
          BandType = 0
        end
      end
      object ppDBText203: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'DATAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 122819
        mmTop = 27781
        mmWidth = 25612
        BandType = 0
      end
      object ppDBText204: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'HORAENTRADA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 4163
        mmLeft = 164871
        mmTop = 27781
        mmWidth = 26952
        BandType = 0
      end
      object ppLabel327: TppLabel
        UserName = 'lbEntrega'
        Caption = 'COMPROVANTE DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 28046
        mmWidth = 51858
        BandType = 0
      end
      object ppLabel328: TppLabel
        UserName = 'Label452'
        Caption = 'Data :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 27781
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel329: TppLabel
        UserName = 'Label453'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 27781
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel330: TppLabel
        UserName = 'Label454'
        Caption = 'CPF/CNPJ: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 106892
        mmTop = 42863
        mmWidth = 19050
        BandType = 0
      end
      object ppDBText206: TppDBText
        UserName = 'DBText278'
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 126207
        mmTop = 42863
        mmWidth = 28310
        BandType = 0
      end
      object myDBCheckBox46: TmyDBCheckBox
        UserName = 'DBCheckBox302'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'GARANTIAFABRICA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 32015
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel331: TppLabel
        UserName = 'Label455'
        Caption = 'Garantia de F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 33073
        mmWidth = 23813
        BandType = 0
      end
      object myDBCheckBox47: TmyDBCheckBox
        UserName = 'DBCheckBox73'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'FORAGARANTIA'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 37571
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel332: TppLabel
        UserName = 'Label456'
        Caption = 'Fora de Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 38629
        mmWidth = 20373
        BandType = 0
      end
      object myDBCheckBox48: TmyDBCheckBox
        UserName = 'DBCheckBox74'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBEntradaAssistencia2
        DataField = 'RETORNO'
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 42598
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel333: TppLabel
        UserName = 'Label457'
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173038
        mmTop = 43656
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel336: TppLabel
        UserName = 'Label460'
        Caption = 'Comprovante de Saida - Termos de Garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 41804
        mmTop = 50006
        mmWidth = 110596
        BandType = 0
      end
      object ppTermosGarantia: TppRichText
        OnPrint = ppRTLegislacaoPrint
        UserName = 'ppTermosGarantia'
        Caption = 'TermosGarantia'
        mmHeight = 63236
        mmLeft = 529
        mmTop = 102394
        mmWidth = 197115
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBMemo25: TppDBMemo
        UserName = 'DEFEITOENCONTRADO'
        CharWrap = False
        DataField = 'DEFEITOENCONTRADO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 10583
        mmLeft = 24342
        mmTop = 87313
        mmWidth = 172509
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine129: TppLine
        UserName = 'Line129'
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1323
        mmLeft = 0
        mmTop = 99748
        mmWidth = 200819
        BandType = 0
      end
      object ppLabel338: TppLabel
        UserName = 'Label338'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 178065
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel339: TppLabel
        UserName = 'Label339'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 21960
        mmTop = 178065
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel340: TppLabel
        UserName = 'Label340'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 119856
        mmTop = 178065
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel341: TppLabel
        UserName = 'Label3401'
        Caption = 'Valor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 178065
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel342: TppLabel
        UserName = 'Label342'
        Caption = 'Total  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 184944
        mmTop = 178065
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel351: TppLabel
        UserName = 'Label351'
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 166688
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel352: TppLabel
        UserName = 'Label352'
        Caption = '_______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 167217
        mmWidth = 48154
        BandType = 0
      end
      object ppDBText215: TppDBText
        UserName = 'DBText215'
        DataField = 'USUARIO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 13494
        mmTop = 170921
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText216: TppDBText
        UserName = 'DBText216'
        DataField = 'NOME'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3704
        mmLeft = 81492
        mmTop = 169863
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel353: TppLabel
        UserName = 'Label353'
        Caption = '_______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 83079
        mmTop = 166952
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel354: TppLabel
        UserName = 'Label354'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 73290
        mmTop = 166688
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText217: TppDBText
        UserName = 'DBText217'
        DataField = 'NUMEROSERIE'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 163248
        mmTop = 58473
        mmWidth = 37042
        BandType = 0
      end
      object ppLabel343: TppLabel
        UserName = 'Label343'
        Caption = 'NS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 58473
        mmWidth = 5821
        BandType = 0
      end
      object ppDBText218: TppDBText
        UserName = 'DBText106'
        DataField = 'MARCA'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 114300
        mmTop = 58473
        mmWidth = 41804
        BandType = 0
      end
      object ppLabel355: TppLabel
        UserName = 'Label355'
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 58208
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText219: TppDBText
        UserName = 'DBText219'
        DataField = 'TIPO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 58473
        mmWidth = 37306
        BandType = 0
      end
      object ppLabel356: TppLabel
        UserName = 'Label356'
        Caption = 'Modelo/Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 43921
        mmTop = 58208
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText220: TppDBText
        UserName = 'DBText220'
        DataField = 'EQUIPAMENTO'
        DataPipeline = ppDBEntradaAssistencia2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEntradaAssistencia2'
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 57944
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel357: TppLabel
        UserName = 'Label357'
        Caption = 'Equip:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 57679
        mmWidth = 10054
        BandType = 0
      end
    end
    object ppDetailBand14: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText205: TppDBText
        UserName = 'DBText402'
        DataField = 'CODIGO'
        DataPipeline = ppDBOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 4064
        mmLeft = 265
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText208: TppDBText
        UserName = 'DBText208'
        DataField = 'DESCRICAOITEM'
        DataPipeline = ppDBOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 0
        mmWidth = 97102
        BandType = 4
      end
      object ppDBText209: TppDBText
        UserName = 'DBText209'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 119327
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText210: TppDBText
        UserName = 'DBText210'
        DataField = 'VALOR'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText211: TppDBText
        UserName = 'DBText211'
        DataField = 'SUBTOTAL'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand13: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        AutoSize = True
        DataField = 'SUBTOTAL'
        DataPipeline = ppDBOrcamento
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOrcamento'
        mmHeight = 4304
        mmLeft = 168504
        mmTop = 0
        mmWidth = 32315
        BandType = 8
      end
      object ppLabel337: TppLabel
        UserName = 'Label337'
        Caption = 'Total Pe'#231'as/Servi'#231'os:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 132557
        mmTop = 265
        mmWidth = 34396
        BandType = 8
      end
    end
  end
end

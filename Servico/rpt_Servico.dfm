object RptServico: TRptServico
  Left = 477
  Top = 220
  Width = 309
  Height = 366
  Caption = 'RptServico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppOS: TppReport
    AutoStop = False
    DataPipeline = dbOS
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
    Left = 76
    Top = 63
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbOS'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object rbrgCabecalho: TppRegion
        UserName = 'rbrgCabecalho'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 26988
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 143669
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Style = psInsideFrame
        Pen.Width = 2
        mmHeight = 130969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Visible = False
        mmHeight = 7938
        mmLeft = 160867
        mmTop = 43921
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'ORDEM DE SERVI'#199'O N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 59002
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = '1. DADOS DO CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3048
        mmTop = 10054
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = '2. SERVI'#199'OS PRESTADOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 47096
        mmWidth = 44979
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = '3. EXECUTADOS POR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 63765
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = '4. VISTO DO CLIENTE OU RESPONS'#193'VEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 91546
        mmWidth = 68263
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 2910
        mmTop = 68792
        mmWidth = 191559
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 2910
        mmTop = 14817
        mmWidth = 148696
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Contrato N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 26988
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Nome do Edif'#237'cio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 31485
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 13229
        mmTop = 35983
        mmWidth = 14817
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMCONTRATO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 26988
        mmWidth = 54240
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 91281
        mmTop = 26988
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'EDIFICIO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 31485
        mmWidth = 118534
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'FONE1'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 110596
        mmTop = 26988
        mmWidth = 38629
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ENDERECO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 35983
        mmWidth = 67469
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'BAIRRO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 134673
        mmTop = 35983
        mmWidth = 41275
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'ROTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 6085
        mmLeft = 145786
        mmTop = 44979
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Chamado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 53446
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Vistoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 58738
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Corretiva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 58738
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Preventiva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 53446
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Outros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 62706
        mmTop = 53446
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = ' - OS N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 48948
        mmTop = 58738
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 64558
        mmTop = 58738
        mmWidth = 20638
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 2910
        mmTop = 52652
        mmWidth = 191559
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 16404
        mmLeft = 110331
        mmTop = 52652
        mmWidth = 2117
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 2910
        mmTop = 97367
        mmWidth = 191559
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 69586
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Mat.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 69586
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Assinatura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 135732
        mmTop = 69850
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'AVISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 42598
        mmTop = 75142
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'CHEGADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 75142
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'T'#201'RMINO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 75142
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 99484
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Assinatura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 99484
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 99484
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Discrimina'#231#227'o do Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 104775
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Equip. Normal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 110596
        mmWidth = 20902
        BandType = 0
      end
      object lbEquipParado: TppLabel
        UserName = 'Label301'
        Caption = 'Equip. Parado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 115888
        mmWidth = 20638
        BandType = 0
      end
      object lbEquipFuncPend: TppLabel
        UserName = 'lbEquipFuncPend'
        Caption = 'Equip. Func. C/ Pend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 120915
        mmWidth = 31221
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 22225
        mmLeft = 55563
        mmTop = 105569
        mmWidth = 137054
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'DESCRICAOSERVICO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 22225
        mmLeft = 55563
        mmTop = 105569
        mmWidth = 137054
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label31'
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 25135
        mmTop = 80963
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label33'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 25135
        mmTop = 85725
        mmWidth = 8467
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 7938
        mmTop = 79640
        mmWidth = 183092
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 106363
        mmTop = 103188
        mmWidth = 47890
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 163248
        mmTop = 103188
        mmWidth = 28840
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 12700
        mmTop = 103188
        mmWidth = 75406
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ROTA'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 45508
        mmWidth = 31485
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DTAVISO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 39952
        mmTop = 81227
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'HORAAVISO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 39952
        mmTop = 85990
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DTCHEGADA'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 81227
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'HORACHEGADA'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 85990
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText101'
        DataField = 'DTTERMINO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 137848
        mmTop = 81227
        mmWidth = 16933
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'false'
        BooleanTrue = '1'
        DataPipeline = dbOS
        DataField = 'TIPOSERVICO'
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 3969
        mmTop = 52123
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'False'
        BooleanTrue = '1'
        DataPipeline = dbOS
        DataField = 'STATUSATENDIMENTO'
        Transparent = True
        Visible = False
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 4498
        mmTop = 109802
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        BooleanFalse = 'False'
        BooleanTrue = '2'
        DataPipeline = dbOS
        DataField = 'STATUSATENDIMENTO'
        Transparent = True
        Visible = False
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 4498
        mmTop = 115094
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox4'
        BooleanFalse = 'False'
        BooleanTrue = '3'
        DataPipeline = dbOS
        DataField = 'STATUSATENDIMENTO'
        Transparent = True
        Visible = False
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 4498
        mmTop = 119856
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox5'
        BooleanFalse = 'False'
        BooleanTrue = '2'
        DataPipeline = dbOS
        DataField = 'TIPOSERVICO'
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 3969
        mmTop = 57415
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox6'
        BooleanFalse = 'False'
        BooleanTrue = '3'
        DataPipeline = dbOS
        DataField = 'TIPOSERVICO'
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 29104
        mmTop = 52123
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox7'
        BooleanFalse = 'False'
        BooleanTrue = '4'
        DataPipeline = dbOS
        DataField = 'TIPOSERVICO'
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 29104
        mmTop = 57415
        mmWidth = 6350
        BandType = 0
      end
      object myDBCheckBox8: TmyDBCheckBox
        UserName = 'DBCheckBox8'
        BooleanFalse = 'False'
        BooleanTrue = '5'
        DataPipeline = dbOS
        DataField = 'TIPOSERVICO'
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 56886
        mmTop = 52123
        mmWidth = 6350
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText13'
        DataField = 'NOMEFUNC'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 69850
        mmWidth = 67469
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText14'
        DataField = 'CODFUNC'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3704
        mmLeft = 100013
        mmTop = 69850
        mmWidth = 33602
        BandType = 0
      end
      object myDBCheckBox9: TmyDBCheckBox
        UserName = 'DBCheckBox9'
        BooleanFalse = 'False'
        BooleanTrue = '4'
        DataPipeline = dbOS
        DataField = 'STATUSATENDIMENTO'
        Transparent = True
        Visible = False
        DataPipelineName = 'dbOS'
        mmHeight = 6350
        mmLeft = 4498
        mmTop = 124884
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'lbEquipFuncPend1'
        Caption = 'Passageiro Preso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 9790
        mmTop = 125942
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 124619
        mmTop = 35984
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16933
        mmTop = 22490
        mmWidth = 10848
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'NOME'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 22225
        mmWidth = 118798
        BandType = 0
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbDetalhe'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 134409
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbDetalhe
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
          DataPipelineName = 'dbDetalhe'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13494
            mmPrintPosition = 0
            object ppLabel31: TppLabel
              UserName = 'Label1'
              Caption = 'PE'#199'AS E SERVI'#199'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 81249
              mmTop = 794
              mmWidth = 34883
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Caption = 'Codigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 6350
              mmTop = 7144
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              Caption = 'Descri'#231#227'o do Item'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 27517
              mmTop = 7144
              mmWidth = 28575
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              Caption = 'Unidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 103717
              mmTop = 7144
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              Caption = 'Pre'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 128059
              mmTop = 7144
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              Caption = 'Qtde.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 149225
              mmTop = 7144
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              Caption = 'Sub.Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 169863
              mmTop = 7144
              mmWidth = 15346
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 2646
              mmTop = 12171
              mmWidth = 183886
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'CODIGO'
              DataPipeline = dbDetalhe
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 4233
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'VALOR'
              DataPipeline = dbDetalhe
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 120121
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'DESCRICAOITEM'
              DataPipeline = dbDetalhe
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 25400
              mmTop = 529
              mmWidth = 68263
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              DataField = 'UNIDADE'
              DataPipeline = dbDetalhe
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 99748
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              DataField = 'QUANTIDADE'
              DataPipeline = dbDetalhe
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 140759
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              DataField = 'icSubTotal'
              DataPipeline = dbDetalhe
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 168011
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'icSubTotal'
              DataPipeline = dbDetalhe
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbDetalhe'
              mmHeight = 3969
              mmLeft = 168011
              mmTop = 794
              mmWidth = 17198
              BandType = 7
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 2646
              mmTop = 5556
              mmWidth = 183886
              BandType = 7
            end
            object ppLine11: TppLine
              UserName = 'Line101'
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 2646
              mmTop = 265
              mmWidth = 183886
              BandType = 7
            end
          end
        end
      end
      object ppDBText23: TppDBText
        UserName = 'DBText15'
        DataField = 'NUMERO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 5821
        mmLeft = 62971
        mmTop = 1323
        mmWidth = 38629
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label101'
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3970
        mmLeft = 99219
        mmTop = 35983
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'NRO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3970
        mmLeft = 113506
        mmTop = 35983
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 16669
        mmTop = 40481
        mmWidth = 11377
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CIDADE'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 30427
        mmTop = 40481
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label102'
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3970
        mmLeft = 88106
        mmTop = 40481
        mmWidth = 5122
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'UF'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 93927
        mmTop = 40481
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3970
        mmLeft = 103452
        mmTop = 40481
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'CEP'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 111654
        mmTop = 40481
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'HORATERMINO'
        DataPipeline = dbOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOS'
        mmHeight = 3969
        mmLeft = 137849
        mmTop = 85990
        mmWidth = 16933
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
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
  object dbOS: TppDBPipeline
    DataSource = C_OSDS
    UserName = 'dbOS'
    Left = 71
    Top = 8
    object dbOSppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORDEMSERVICO'
      FieldName = 'ORDEMSERVICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object dbOSppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object dbOSppField3: TppField
      FieldAlias = 'NUMCONTRATO'
      FieldName = 'NUMCONTRATO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 2
    end
    object dbOSppField4: TppField
      FieldAlias = 'NUMMAQUINA'
      FieldName = 'NUMMAQUINA'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object dbOSppField5: TppField
      FieldAlias = 'EDIFICIO'
      FieldName = 'EDIFICIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object dbOSppField6: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbOSppField7: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object dbOSppField8: TppField
      FieldAlias = 'DTAVISO'
      FieldName = 'DTAVISO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object dbOSppField9: TppField
      FieldAlias = 'HORAAVISO'
      FieldName = 'HORAAVISO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 8
    end
    object dbOSppField10: TppField
      FieldAlias = 'DTCHEGADA'
      FieldName = 'DTCHEGADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object dbOSppField11: TppField
      FieldAlias = 'HORACHEGADA'
      FieldName = 'HORACHEGADA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 10
    end
    object dbOSppField12: TppField
      FieldAlias = 'DTTERMINO'
      FieldName = 'DTTERMINO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object dbOSppField13: TppField
      FieldAlias = 'HORATERMINO'
      FieldName = 'HORATERMINO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 12
    end
    object dbOSppField14: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 255
      DisplayWidth = 255
      Position = 13
    end
    object dbOSppField15: TppField
      FieldAlias = 'ROTA'
      FieldName = 'ROTA'
      FieldLength = 25
      DisplayWidth = 25
      Position = 14
    end
    object dbOSppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOSERVICO'
      FieldName = 'TIPOSERVICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbOSppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUSATENDIMENTO'
      FieldName = 'STATUSATENDIMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object dbOSppField18: TppField
      FieldAlias = 'NOMEFUNC'
      FieldName = 'NOMEFUNC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object dbOSppField19: TppField
      FieldAlias = 'CODFUNC'
      FieldName = 'CODFUNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object dbOSppField20: TppField
      FieldAlias = 'DESCRICAOSERVICO'
      FieldName = 'DESCRICAOSERVICO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 19
    end
    object dbOSppField21: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object dbOSppField22: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 21
    end
    object dbOSppField23: TppField
      FieldAlias = 'Q_ServicosDet'
      FieldName = 'Q_ServicosDet'
      FieldLength = 0
      DisplayWidth = 10
      Position = 22
    end
    object dbOSppField24: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object dbOSppField25: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 24
    end
    object dbOSppField26: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 25
    end
    object dbOSppField27: TppField
      FieldAlias = 'NRO'
      FieldName = 'NRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
  end
  object Q_OS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      
        ' os.numero,os.ordemservico, f.nome, f.numcontrato, e.nummaquina,' +
        ' f.edificio, f.endereco, f.bairro, f.cidade, f.uf, f.cep, f.nro,'
      ' os.tiposervico,'
      ' os.statusatendimento,'
      
        ' os.dtaviso, os.horaaviso, os.dtchegada, os.horachegada, os.dtte' +
        'rmino, os.horatermino,'
      
        ' os.obs, r.descricao rota, func.nome as nomefunc, func.codigo as' +
        ' codfunc'
      ', os.descricaoservico, f.fone1'
      ''
      'from ordensservicos os'
      'left join favorecidos f on os.cliente = f.favorecido'
      'left join favorecidos FUNC on os.funcionario = FUNC.FAVORECIDO'
      'left join equipamentos e on os.equipamento = e.equipamento'
      'left join tiposservicos ts on os.tiposervico = ts.tiposervico'
      
        'left join statusatendimentos sa on os.statusatendimento = sa.sta' +
        'tusatendimento'
      'left join rotas r on os.rota = r.rota'
      ''
      ''
      'where os.ordemservico = :OS')
    Left = 24
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OS'
        ParamType = ptUnknown
      end>
  end
  object C_OS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_OS'
    Left = 20
    Top = 102
    object C_OSORDEMSERVICO: TIntegerField
      FieldName = 'ORDEMSERVICO'
      Origin = 'ORDENSSERVICOS.ORDEMSERVICO'
      Required = True
    end
    object C_OSNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_OSNUMCONTRATO: TStringField
      FieldName = 'NUMCONTRATO'
      Origin = 'FAVORECIDOS.NUMCONTRATO'
      Size = 25
    end
    object C_OSNUMMAQUINA: TStringField
      FieldName = 'NUMMAQUINA'
      Origin = 'EQUIPAMENTOS.NUMMAQUINA'
      Size = 25
    end
    object C_OSEDIFICIO: TStringField
      FieldName = 'EDIFICIO'
      Origin = 'FAVORECIDOS.EDIFICIO'
      Size = 50
    end
    object C_OSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_OSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_OSDTAVISO: TDateField
      FieldName = 'DTAVISO'
      Origin = 'ORDENSSERVICOS.DTAVISO'
    end
    object C_OSHORAAVISO: TTimeField
      FieldName = 'HORAAVISO'
      Origin = 'ORDENSSERVICOS.HORAAVISO'
    end
    object C_OSDTCHEGADA: TDateField
      FieldName = 'DTCHEGADA'
      Origin = 'ORDENSSERVICOS.DTCHEGADA'
    end
    object C_OSHORACHEGADA: TTimeField
      FieldName = 'HORACHEGADA'
      Origin = 'ORDENSSERVICOS.HORACHEGADA'
    end
    object C_OSDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      Origin = 'ORDENSSERVICOS.DTTERMINO'
    end
    object C_OSHORATERMINO: TTimeField
      FieldName = 'HORATERMINO'
      Origin = 'ORDENSSERVICOS.HORATERMINO'
    end
    object C_OSOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ORDENSSERVICOS.OBS'
      Size = 255
    end
    object C_OSROTA: TStringField
      FieldName = 'ROTA'
      Origin = 'ROTAS.ROTA'
      Size = 25
    end
    object C_OSTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'ORDENSSERVICOS.TIPOSERVICO'
    end
    object C_OSSTATUSATENDIMENTO: TIntegerField
      FieldName = 'STATUSATENDIMENTO'
      Origin = 'ORDENSSERVICOS.STATUSATENDIMENTO'
    end
    object C_OSNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Origin = 'FAVORECIDOS.NOMEFUNC'
      Size = 50
    end
    object C_OSCODFUNC: TStringField
      FieldName = 'CODFUNC'
      Origin = 'FAVORECIDOS.CODFUNC'
    end
    object C_OSDESCRICAOSERVICO: TStringField
      FieldName = 'DESCRICAOSERVICO'
      Origin = 'ORDENSSERVICOS.DESCRICAOSERVICO'
      Size = 255
    end
    object C_OSFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_OSNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'ORDENSSERVICOS.NUMERO'
      Size = 12
    end
    object C_OSQ_ServicosDet: TDataSetField
      FieldName = 'Q_ServicosDet'
    end
    object C_OSCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_OSUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_OSCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_OSNRO: TStringField
      FieldName = 'NRO'
      Origin = 'FAVORECIDOS.NRO'
    end
  end
  object P_OS: TDataSetProvider
    DataSet = Q_OS
    Constraints = True
    Left = 24
    Top = 56
  end
  object C_OSDS: TDataSource
    DataSet = C_OS
    Left = 22
    Top = 155
  end
  object Q_ServicosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDs
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
    Left = 176
    Top = 14
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDEMSERVICO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ServicosDet: TClientDataSet
    Tag = 100
    Active = True
    Aggregates = <>
    DataSetField = C_OSQ_ServicosDet
    Params = <>
    OnCalcFields = C_ServicosDetCalcFields
    Left = 180
    Top = 60
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
    Left = 182
    Top = 121
  end
  object Q_MasterDs: TDataSource
    DataSet = Q_OS
    Left = 77
    Top = 118
  end
  object dbDetalhe: TppDBPipeline
    DataSource = C_ServicosDetDs
    UserName = 'dbDetalhe'
    Left = 247
    Top = 16
  end
end

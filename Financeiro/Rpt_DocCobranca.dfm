object RptDocCobranca: TRptDocCobranca
  Left = 548
  Top = 138
  BorderStyle = bsNone
  Caption = 'RptDocCobranca'
  ClientHeight = 270
  ClientWidth = 515
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object zrDuplicata: TZReport
    Left = 190
    Top = 57
    Width = 76
    Height = 60
    DataSet = C_Titulos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options.LineSpacing = zrd16
    Options.AutoHeight = False
    Minimized = True
    object zrvVENCIMENTO: TZRField
      Format.Width = 10
      DataField = 'VENCIMENTO'
      DataSet = C_Titulos
    end
    object zrvNOME: TZRField
      Format.Width = 50
      DataField = 'NOME'
      DataSet = C_Titulos
    end
    object zrvCPF_CNPJ: TZRField
      Format.Width = 14
      DataField = 'CPF_CNPJ'
      DataSet = C_Titulos
    end
    object zrvVALOR: TZRField
      Format.FloatFormat = ffCurrency
      Format.DisplayMask = '#,###,###,##0.00'
      Format.Width = 10
      DataField = 'VALOR'
      DataSet = C_Titulos
    end
    object zrDuplicataDetailHeader: TZRBand
      Left = 2
      Top = 11
      Width = 73
      Height = 6
      Frame.Bottom = 1
      Stretch = False
      BandType = zbtDetailHeader
      object ZRLabel1: TZRLabel
        Left = 0
        Top = 0
        Width = 50
        Height = 1
        Caption = 'N_O_T_A   P_R_O_M_I_S_S_O_R_I_A'
      end
      object zr1: TZRLabel
        Left = 0
        Top = 1
        Width = 44
        Height = 1
      end
      object zr2: TZRLabel
        Left = 0
        Top = 2
        Width = 44
        Height = 1
      end
      object zr3: TZRLabel
        Left = 0
        Top = 3
        Width = 44
        Height = 1
      end
      object zr4: TZRLabel
        Left = 0
        Top = 4
        Width = 44
        Height = 1
      end
      object zr5: TZRLabel
        Left = 45
        Top = 1
        Width = 26
        Height = 1
        Alignment.X = zawRight
      end
      object zr6: TZRLabel
        Left = 45
        Top = 2
        Width = 26
        Height = 1
        Alignment.X = zawRight
      end
      object zr7: TZRLabel
        Left = 45
        Top = 3
        Width = 25
        Height = 1
        Alignment.X = zawRight
      end
      object zr8: TZRLabel
        Left = 45
        Top = 4
        Width = 26
        Height = 1
        Alignment.X = zawRight
      end
    end
    object zrDuplicataDetail: TZRBand
      Left = 2
      Top = 17
      Width = 73
      Height = 5
      Stretch = True
      BandType = zbtDetail
      object ZRLabel6: TZRLabel
        Left = 0
        Top = 0
        Width = 18
        Height = 1
        Caption = 'VALOR TOTAL EM R$:'
      end
      object ZRLabel7: TZRLabel
        Left = 0
        Top = 1
        Width = 18
        Height = 1
        Caption = 'VENCIMENTO.......:'
      end
      object ZRLabel8: TZRLabel
        Left = 20
        Top = 0
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Variable = zrvVALOR
      end
      object ZRLabel9: TZRLabel
        Left = 20
        Top = 1
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Variable = zrvVENCIMENTO
      end
      object zrTexto: TZRLabel
        Left = 0
        Top = 3
        Width = 73
        Height = 1
        AutoSize = zasHeight
        WordWrap = True
        BeforePrint = zrTextoBeforePrint
      end
    end
    object zrDuplicataChild: TZRBand
      Left = 2
      Top = 22
      Width = 73
      Height = 8
      ForceKind = [zfkPageAfter]
      Stretch = False
      BandType = zbtChild
      ParentIndex = 1
      object ZRLabel10: TZRLabel
        Left = 5
        Top = 0
        Width = 9
        Height = 1
        Caption = 'EMITENTE:'
      end
      object ZRLabel11: TZRLabel
        Left = 5
        Top = 1
        Width = 9
        Height = 1
        Caption = 'CLIENTE.:'
      end
      object ZRLabel14: TZRLabel
        Left = 5
        Top = 2
        Width = 9
        Height = 1
        Caption = 'CPF/CNPJ:'
      end
      object zrEmitente: TZRLabel
        Left = 15
        Top = 0
        Width = 42
        Height = 1
        BeforePrint = zrEmitenteBeforePrint
      end
      object ZRLabel12: TZRLabel
        Left = 15
        Top = 1
        Width = 42
        Height = 1
        Variable = zrvNOME
      end
      object ZRLabel15: TZRLabel
        Left = 15
        Top = 2
        Width = 42
        Height = 1
        BeforePrint = ZRLabel15BeforePrint
      end
      object ZRLabel16: TZRLabel
        Left = 16
        Top = 5
        Width = 42
        Height = 1
        Frame.Bottom = 1
      end
      object ZRLabel18: TZRLabel
        Left = 16
        Top = 6
        Width = 42
        Height = 1
        Alignment.X = zawCenter
        Variable = zrvNOME
      end
    end
  end
  object rbDuplicata: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 140000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 116
    Top = 5
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 128588
      mmPrintPosition = 0
      object rgCabDup: TppRegion
        UserName = 'rgCabDup'
        Pen.Style = psClear
        Visible = False
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 125148
        mmWidth = 2910
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText1'
        DataField = 'CODVENDEDOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 3704
        mmWidth = 23548
        BandType = 4
      end
      object dbNotaFiscal: TppDBText
        UserName = 'NotaFiscal'
        DataField = 'NOTAFISCAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 51329
        mmWidth = 20902
        BandType = 4
      end
      object ppDBValor: TppDBText
        UserName = 'DBValor'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 51329
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'NotaFiscal1'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 51329
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 115623
        mmTop = 51329
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CODCLIENTE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 8731
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FONE1'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 14288
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'FONE2'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 19844
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'PLANOPAGAMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 25400
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText4'
        DataField = 'COMPETENCIA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 167217
        mmTop = 32544
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'Antecipado'
        DataField = 'VALORDESCANTECIPADO'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 57415
        mmTop = 62706
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DATAANTECIPACAO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 62706
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'Antecipado1'
        DataField = 'VALORJUROSMORA'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 57150
        mmTop = 69321
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 79640
        mmWidth = 106098
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 84931
        mmWidth = 106098
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 43656
        mmTop = 90488
        mmWidth = 106098
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 90488
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 90488
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 96838
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 43921
        mmTop = 101336
        mmWidth = 37042
        BandType = 4
      end
      object MemoExtenso: TppMemo
        OnPrint = MemoExtensoPrint
        UserName = 'Extenso'
        Caption = 'Extenso'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 10848
        mmLeft = 43921
        mmTop = 109538
        mmWidth = 156898
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'PAI'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 51329
        mmTop = 19315
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'MAE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 51329
        mmTop = 24606
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText9'
        DataField = 'DATANASC'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 51329
        mmTop = 29898
        mmWidth = 23548
        BandType = 4
      end
      object ppDataExtenso: TppMemo
        OnPrint = ppDataExtensoPrint
        UserName = 'Extenso1'
        Caption = 'Extenso'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 4763
        mmLeft = 25929
        mmTop = 39952
        mmWidth = 102659
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText10'
        DataField = 'TOTAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 4057
        mmLeft = 10319
        mmTop = 15610
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText99: TppDBText
        UserName = 'DBText12'
        DataField = 'icDia'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4057
        mmLeft = 81492
        mmTop = 5556
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText21'
        DataField = 'icMes'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 4057
        mmLeft = 104775
        mmTop = 5556
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText22'
        DataField = 'icAno'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 128059
        mmTop = 5821
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object C_Titulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Titulos'
    OnCalcFields = C_TitulosCalcFields
    Left = 31
    Top = 104
    object C_TitulosNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'TITULOSARECEBER.NOTAFISCAL'
      Size = 15
    end
    object C_TitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
    end
    object C_TitulosFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_TitulosFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_TitulosPLANOPAGAMENTO: TStringField
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'PLANOSPAGAMENTO.PLANOPAGAMENTO'
      Size = 30
    end
    object C_TitulosCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
      Origin = 'TITULOSARECEBER.COMPETENCIA'
    end
    object C_TitulosVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Origin = 'TITULOSARECEBER.VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_TitulosVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Origin = 'TITULOSARECEBER.VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_TitulosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TitulosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_TitulosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_TitulosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_TitulosUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_TitulosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_TitulosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      Size = 14
    end
    object C_TitulosINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Origin = 'FAVORECIDOS.INSCRICAO_EST'
      Size = 14
    end
    object C_TitulosCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Origin = 'FAVORECIDOS.CODVENDEDOR'
    end
    object C_TitulosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
      Size = 50
    end
    object C_TitulosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Origin = 'FAVORECIDOS.CODCLIENTE'
    end
    object C_TitulosDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
      Origin = 'TITULOSARECEBER.DATAANTECIPACAO'
    end
    object C_TitulosDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'FAVORECIDOS.DATANASC'
    end
    object C_TitulosPAI: TStringField
      FieldName = 'PAI'
      Origin = 'CLIENTES.PAI'
      Size = 50
    end
    object C_TitulosMAE: TStringField
      FieldName = 'MAE'
      Origin = 'CLIENTES.MAE'
      Size = 50
    end
    object C_TitulosTIPOCOBRANCA: TIntegerField
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TITULOSARECEBER.TIPOCOBRANCA'
    end
    object C_TitulosDESCTIPOCOBRANCA: TStringField
      FieldName = 'DESCTIPOCOBRANCA'
      Origin = 'TIPOSCOBRANCA.DESCTIPOCOBRANCA'
      Size = 30
    end
    object C_TitulosNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Origin = 'CARTEIRAS.NUMEROCARTEIRA'
      Size = 10
    end
    object C_TitulosLOCALDEPAGAMENTO: TStringField
      FieldName = 'LOCALDEPAGAMENTO'
      Origin = 'CARTEIRAS.LOCALDEPAGAMENTO'
      Size = 50
    end
    object C_TitulosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'CARTEIRAS.ESPECIE'
      Size = 10
    end
    object C_TitulosESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Origin = 'CARTEIRAS.ESPECIEDOC'
      Size = 10
    end
    object C_TitulosQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Origin = 'CARTEIRAS.QUANTIDADE'
      Size = 15
    end
    object C_TitulosACEITE: TStringField
      FieldName = 'ACEITE'
      Origin = 'CARTEIRAS.ACEITE'
      FixedChar = True
      Size = 1
    end
    object C_TitulosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'CARTEIRAS.AGENCIA'
      Size = 10
    end
    object C_TitulosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CARTEIRAS.CODIGO'
      Size = 15
    end
    object C_TitulosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'CARTEIRAS.NOSSONUMERO'
      Size = 50
    end
    object C_TitulosJUROSINSTRUCOES: TFloatField
      FieldName = 'JUROSINSTRUCOES'
      Origin = 'CARTEIRAS.JUROSINSTRUCOES'
    end
    object C_TitulosVALOR_TEMP: TBCDField
      FieldName = 'VALOR_TEMP'
      Origin = 'TITULOSARECEBER.VALOR_TEMP'
      Precision = 18
      Size = 2
    end
    object C_TitulosINSTRUCOES_TEMP: TStringField
      FieldName = 'INSTRUCOES_TEMP'
      Origin = 'CARTEIRAS.INSTRUCOES_TEMP'
      Size = 2000
    end
    object C_TitulosCOBRAREMISSAO: TStringField
      FieldName = 'COBRAREMISSAO'
      Origin = 'CARTEIRAS.COBRAREMISSAO'
      Size = 1
    end
    object C_TitulosTARIFAEMISSAO: TBCDField
      FieldName = 'TARIFAEMISSAO'
      Origin = 'CARTEIRAS.TARIFAEMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TitulosINSTRUCOES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'INSTRUCOES'
      Size = 2050
    end
    object C_TitulosVALOR: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR'
    end
    object C_TitulosPREIMPRESSO: TStringField
      FieldName = 'PREIMPRESSO'
      Origin = 'CARTEIRAS.PREIMPRESSO'
      Size = 1
    end
    object C_TitulosDIGITOCODIGO: TStringField
      FieldName = 'DIGITOCODIGO'
      Origin = 'CARTEIRAS.DIGITOCODIGO'
      Size = 1
    end
    object C_TitulosNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Origin = 'CONTAS.NUMCONTA'
      Size = 15
    end
    object C_TitulosCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Origin = 'FAVORECIDOS.CODBANCO'
    end
    object C_TitulosDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Origin = 'FAVORECIDOS.DESCBANCO'
      Size = 50
    end
    object C_TitulosLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Origin = 'FAVORECIDOS.LOGOTIPO'
      Size = 150
    end
    object C_TitulosID: TIntegerField
      FieldName = 'ID'
      Origin = 'TITULOSARECEBER.ID'
      Required = True
    end
    object C_TitulosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'TITULOSARECEBER.OBS'
      Size = 255
    end
    object C_TitulosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_TitulosicDia: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icDia'
    end
    object C_TitulosicMes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icMes'
    end
    object C_TitulosicAno: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icAno'
    end
    object C_TitulosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_TitulosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TitulosClienteIdentificacao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ClienteIdentificacao'
      Size = 14
    end
    object C_TitulosNOME_AVAL: TStringField
      FieldName = 'NOME_AVAL'
      Size = 50
    end
    object C_TitulosENDERECO_AVAL: TStringField
      FieldName = 'ENDERECO_AVAL'
      Size = 50
    end
    object C_TitulosCIDADE_AVAL: TStringField
      FieldName = 'CIDADE_AVAL'
      Size = 30
    end
    object C_TitulosCEP_AVAL: TStringField
      FieldName = 'CEP_AVAL'
      Size = 10
    end
    object C_TitulosCPF_AVAL: TStringField
      FieldName = 'CPF_AVAL'
      Size = 11
    end
    object C_TitulosRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object C_TitulosOBSSAIDA: TStringField
      FieldName = 'OBSSAIDA'
      Size = 255
    end
    object C_TitulosTIPOCARTEIRA: TStringField
      FieldName = 'TIPOCARTEIRA'
      Size = 2
    end
    object C_TitulosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_TitulosNRO: TStringField
      FieldName = 'NRO'
      Size = 4
    end
    object C_TitulosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object C_TitulosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TitulosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      FixedChar = True
      Size = 1
    end
    object C_TitulosBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_TitulosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TitulosDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 1
    end
    object C_TitulosCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 10
    end
    object C_TitulosSACADOR_NOME: TStringField
      FieldName = 'SACADOR_NOME'
      Size = 50
    end
    object C_TitulosSACADOR_CPFCNPJ: TStringField
      FieldName = 'SACADOR_CPFCNPJ'
      Size = 14
    end
    object C_TitulosCEDENTE_NOME: TStringField
      FieldName = 'CEDENTE_NOME'
      Size = 50
    end
    object C_TitulosCEDENTE_CPFCNPJ: TStringField
      FieldName = 'CEDENTE_CPFCNPJ'
      Size = 14
    end
    object C_TitulosIMGBOLETOIMPRESSO: TStringField
      FieldName = 'IMGBOLETOIMPRESSO'
      Size = 500
    end
    object C_TitulosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TitulosDIGITONOSSONUMERO: TStringField
      FieldName = 'DIGITONOSSONUMERO'
      FixedChar = True
      Size = 1
    end
    object C_TitulosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 15
    end
    object C_TitulosJUROSCALCULADO: TBCDField
      FieldName = 'JUROSCALCULADO'
      Precision = 18
      Size = 2
    end
    object C_TitulosFALTARECEBER: TBCDField
      FieldName = 'FALTARECEBER'
      Precision = 18
      Size = 2
    end
    object C_TitulosicSaldoRestante: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSaldoRestante'
    end
  end
  object Q_Titulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '    t.notafiscal,'
      '    t.titulo,'
      '    t.valor as valor_temp,'
      '    cast((((t.percentualmora / 30) *'
      '    (case when current_date - t.vencimento <= 0 then 0 '
      
        '    else current_date - t.vencimento end)) * t.valor) / 100 as n' +
        'umeric (15, 2))     as juroscalculado,'
      '   coalesce(t.faltareceber, 0) as faltareceber,'
      '    t.vencimento,'
      '    v.codigo codvendedor,'
      '    v.nome vendedor,'
      '    f.codigo codcliente,'
      '    f.fone1,'
      '    f.fone2,'
      '    p.descricao planopagamento,'
      '    t.competencia,'
      '    t.valordescantecipado,'
      '    t.valorjurosmora,'
      '    f.razao nome,'
      '    f.endereco,'
      '    f.email,'
      '    f.nro,'
      '    f.favorecido,'
      '    f.bairro,'
      '    f.cidade,'
      '    f.uf,'
      '    f.cep,'
      '    f.cpf_cnpj,'
      '    f.inscricao_est,'
      '    t.dataantecipacao,'
      '    f.datanasc,'
      '    c.pai,'
      '    c.mae,'
      '    t.tipocobranca,'
      '    tc.descricao desctipocobranca,'
      '    cnt.numconta,'
      '    b.codigo codbanco,'
      '    b.nome descbanco,'
      '    b.logotipo,'
      '    t.id,'
      '    t.obs,'
      '    s.total,'
      '    s.data,'
      '    c.nome_aval,'
      '    c.endereco_aval,'
      '    c.cidade_aval,'
      '    c.cep_aval,'
      '    c.ssn_aval cpf_aval,'
      '    f.rg,'
      '    s.obs obssaida,'
      '    cart.carteira,'
      '    cart.numerocarteira,'
      '    cart.localdepagamento,'
      '    cart.especie,'
      '    cart.especiedoc,'
      '    cart.aceite,'
      '    cart.agencia,'
      '    cart.codigo,'
      '    t.nossonumero,'
      '    t.digitonossonumero,'
      '    cart.quantidade,'
      '    cart.instrucoes instrucoes_temp,'
      '    cart.descricao,'
      '    cart.desativado,'
      '    cart.banco,'
      '    cart.conta,'
      '    cart.jurosinstrucoes,'
      '    cart.cobraremissao,'
      '    cart.tarifaemissao,'
      '    cart.preimpresso,'
      '    cart.digitocodigo,'
      '    cart.tipocarteira,'
      '    cart.digitoagencia,'
      '    cart.convenio,'
      '    ava.nome as sacador_nome,'
      '    ava.cpf_cnpj as sacador_cpfcnpj,'
      '    ced.nome as cedente_nome,'
      '    ced.cpf_cnpj as cedente_cpfcnpj,'
      '    cart.imgboletoimpresso,'
      '    s.numero'
      'from  TitulosAReceber t '
      'inner join saidas s on t.venda = s.saida '
      'inner join favorecidos f on t.cliente = f.favorecido '
      'left join favorecidos v on s.vendedor = v.favorecido '
      
        'left join planospagamento p on s.planopagamento = p.planopagamen' +
        'to '
      'left join clientes c on t.cliente = c.favorecido '
      'left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca '
      'left join carteiras cart on t.carteira = cart.carteira '
      'left join contas cnt on cart.conta = cnt.conta '
      'left join favorecidos b on b.favorecido = cnt.banco'
      'left join favorecidos ced on (ced.favorecido = cart.idcedente)'
      'left join favorecidos ava on (ava.favorecido = cart.idsacador)'
      ''
      
        'WHERE (not (UPPER(F.NOME) starting with '#39'CONSUMIDOR'#39')) and t.VEN' +
        'DA = :SAIDA'
      'ORDER By t.venda, t.tipocobranca, t.titulo')
    Left = 26
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'saida'
        ParamType = ptUnknown
      end>
  end
  object P_Titulos: TDataSetProvider
    DataSet = Q_Titulos
    Constraints = True
    Left = 32
    Top = 56
  end
  object C_TitulosDS: TDataSource
    DataSet = C_Titulos
    Left = 32
    Top = 152
  end
  object dbTitulos: TppDBPipeline
    DataSource = C_TitulosDS
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'dbTitulos'
    Left = 32
    Top = 200
    object dbTitulosppField1: TppField
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField2: TppField
      FieldAlias = 'TITULO'
      FieldName = 'TITULO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField3: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField4: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField5: TppField
      FieldAlias = 'FONE2'
      FieldName = 'FONE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField6: TppField
      FieldAlias = 'PLANOPAGAMENTO'
      FieldName = 'PLANOPAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField7: TppField
      FieldAlias = 'COMPETENCIA'
      FieldName = 'COMPETENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField8: TppField
      FieldAlias = 'VALORDESCANTECIPADO'
      FieldName = 'VALORDESCANTECIPADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField9: TppField
      FieldAlias = 'VALORJUROSMORA'
      FieldName = 'VALORJUROSMORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField10: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField11: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField12: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField13: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField14: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField15: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField16: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField17: TppField
      FieldAlias = 'INSCRICAO_EST'
      FieldName = 'INSCRICAO_EST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField18: TppField
      FieldAlias = 'CODVENDEDOR'
      FieldName = 'CODVENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField19: TppField
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField20: TppField
      FieldAlias = 'CODCLIENTE'
      FieldName = 'CODCLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField21: TppField
      FieldAlias = 'DATAANTECIPACAO'
      FieldName = 'DATAANTECIPACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField22: TppField
      FieldAlias = 'DATANASC'
      FieldName = 'DATANASC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField23: TppField
      FieldAlias = 'PAI'
      FieldName = 'PAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField24: TppField
      FieldAlias = 'MAE'
      FieldName = 'MAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField25: TppField
      FieldAlias = 'TIPOCOBRANCA'
      FieldName = 'TIPOCOBRANCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField26: TppField
      FieldAlias = 'DESCTIPOCOBRANCA'
      FieldName = 'DESCTIPOCOBRANCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField27: TppField
      FieldAlias = 'NUMEROCARTEIRA'
      FieldName = 'NUMEROCARTEIRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField28: TppField
      FieldAlias = 'LOCALDEPAGAMENTO'
      FieldName = 'LOCALDEPAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField29: TppField
      FieldAlias = 'ESPECIE'
      FieldName = 'ESPECIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField30: TppField
      FieldAlias = 'ESPECIEDOC'
      FieldName = 'ESPECIEDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField31: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField32: TppField
      FieldAlias = 'ACEITE'
      FieldName = 'ACEITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField33: TppField
      FieldAlias = 'AGENCIA'
      FieldName = 'AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField34: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField35: TppField
      FieldAlias = 'NOSSONUMERO'
      FieldName = 'NOSSONUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField36: TppField
      FieldAlias = 'JUROSINSTRUCOES'
      FieldName = 'JUROSINSTRUCOES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField37: TppField
      FieldAlias = 'VALOR_TEMP'
      FieldName = 'VALOR_TEMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField38: TppField
      FieldAlias = 'INSTRUCOES_TEMP'
      FieldName = 'INSTRUCOES_TEMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField39: TppField
      FieldAlias = 'COBRAREMISSAO'
      FieldName = 'COBRAREMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField40: TppField
      FieldAlias = 'TARIFAEMISSAO'
      FieldName = 'TARIFAEMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField41: TppField
      FieldAlias = 'INSTRUCOES'
      FieldName = 'INSTRUCOES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField42: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField43: TppField
      FieldAlias = 'PREIMPRESSO'
      FieldName = 'PREIMPRESSO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField44: TppField
      FieldAlias = 'DIGITOCODIGO'
      FieldName = 'DIGITOCODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField45: TppField
      FieldAlias = 'NUMCONTA'
      FieldName = 'NUMCONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField46: TppField
      FieldAlias = 'CODBANCO'
      FieldName = 'CODBANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField47: TppField
      FieldAlias = 'DESCBANCO'
      FieldName = 'DESCBANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField48: TppField
      FieldAlias = 'LOGOTIPO'
      FieldName = 'LOGOTIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField49: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField50: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField51: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField52: TppField
      FieldAlias = 'icDia'
      FieldName = 'icDia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField53: TppField
      FieldAlias = 'icMes'
      FieldName = 'icMes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object dbTitulosppField54: TppField
      FieldAlias = 'icAno'
      FieldName = 'icAno'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object CLIENTEIDENTIFICACAO: TppField
      FieldAlias = 'CLIENTEIDENTIFICACAO'
      FieldName = 'CLIENTEIDENTIFICACAO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 54
    end
    object DATA: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object endereco_aval: TppField
      FieldAlias = 'endereco_aval'
      FieldName = 'endereco_aval'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object cidade_aval: TppField
      FieldAlias = 'cidade_aval'
      FieldName = 'cidade_aval'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object cep_aval: TppField
      FieldAlias = 'cep_aval'
      FieldName = 'cep_aval'
      FieldLength = 10
      DisplayWidth = 10
      Position = 58
    end
    object dbTitulosCPF_Aval: TppField
      FieldAlias = 'CPF_Aval'
      FieldName = 'CPF_Aval'
      FieldLength = 10
      DisplayWidth = 10
      Position = 59
    end
    object dbTitulosppField55: TppField
      FieldAlias = 'Nome_aval'
      FieldName = 'Nome_aval'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object dbTitulosrg: TppField
      FieldAlias = 'rg'
      FieldName = 'rg'
      FieldLength = 10
      DisplayWidth = 10
      Position = 61
    end
    object OBSSAIDA: TppField
      FieldAlias = 'OBSSAIDA'
      FieldName = 'OBSSAIDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 62
    end
    object dbTitulosNRO: TppField
      FieldAlias = 'NRO'
      FieldName = 'NRO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 63
    end
    object dbTitulosppField56: TppField
      FieldAlias = 'DIGITONOSSONUMERO'
      FieldName = 'DIGITONOSSONUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 64
    end
    object dbTitulosppField57: TppField
      FieldAlias = 'JUROSCALCULADO'
      FieldName = 'JUROSCALCULADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 65
    end
    object dbTitulosppField58: TppField
      FieldAlias = 'FALTARECEBER'
      FieldName = 'FALTARECEBER'
      FieldLength = 10
      DisplayWidth = 10
      Position = 66
    end
    object dbTitulosppField59: TppField
      FieldAlias = 'icSaldoRestante'
      FieldName = 'icSaldoRestante'
      FieldLength = 10
      DisplayWidth = 10
      Position = 67
    end
  end
  object rbBoleto: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 102000
    PrinterSetup.mmPaperWidth = 175000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\Temp\Templates\BoletoFerreira.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 115
    Top = 56
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 97631
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'LOCALDEPAGAMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 3440
        mmTop = 8467
        mmWidth = 103452
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'COMPETENCIA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 9525
        mmTop = 20638
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 32808
        mmTop = 20638
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'ESPECIEDOC'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 69850
        mmTop = 20902
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'ACEITE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 90223
        mmTop = 20902
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'COMPETENCIA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 112713
        mmTop = 21960
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'ESPECIE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 46302
        mmTop = 28046
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'QUANTIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 69586
        mmTop = 28046
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 98690
        mmTop = 28310
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 138642
        mmTop = 28046
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'VALORDESCANTECIPADO'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 139436
        mmTop = 39423
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'VALORJUROSMORA'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3387
        mmLeft = 140494
        mmTop = 46831
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 57944
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 64029
        mmWidth = 90488
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText401'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 67733
        mmWidth = 90488
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'BAIRRO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 71438
        mmWidth = 43921
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'INSTRUCOES'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        OnGetMemo = ppDBMemo1GetMemo
        DataPipelineName = 'dbTitulos'
        mmHeight = 21431
        mmLeft = 7144
        mmTop = 40217
        mmWidth = 128323
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Caption = 'NOME DA EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 16669
        mmWidth = 103717
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 51858
        mmTop = 71438
        mmWidth = 41540
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 93663
        mmTop = 71438
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 75142
        mmWidth = 43921
        BandType = 4
      end
      object rgCabBol: TppRegion
        UserName = 'rgCabBol'
        Pen.Style = psClear
        Visible = False
        mmHeight = 2117
        mmLeft = 145786
        mmTop = 6615
        mmWidth = 2910
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4445
        mmLeft = 142875
        mmTop = 5292
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 112977
        mmTop = 64029
        mmWidth = 34660
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 99484
        mmTop = 64029
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object DlgMsg: TDlgMsg
    Left = 114
    Top = 108
  end
  object rbDuplicataImp: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
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
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 191
    Top = 6
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 106627
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 103981
        mmLeft = 1323
        mmTop = 794
        mmWidth = 195792
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.75
        mmHeight = 15610
        mmLeft = 162984
        mmTop = 27252
        mmWidth = 265
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 55298
        mmTop = 36513
        mmWidth = 141552
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.75
        mmHeight = 15875
        mmLeft = 1323
        mmTop = 27252
        mmWidth = 53975
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 39423
        mmWidth = 195792
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 26988
        mmWidth = 195527
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 87048
        mmTop = 32279
        mmWidth = 75936
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 10583
        mmLeft = 1323
        mmTop = 42598
        mmWidth = 195527
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 26458
        mmLeft = 162984
        mmTop = 794
        mmWidth = 34131
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.75
        mmHeight = 26194
        mmLeft = 162984
        mmTop = 794
        mmWidth = 265
        BandType = 4
      end
      object ppMemo2: TppMemo
        UserName = 'Memo2'
        Caption = '2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          'PARA USO DA INSTITUI'#199#195'O'
          'FINANCEIRA')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 165100
        mmTop = 1323
        mmWidth = 29104
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Caption = '6'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Lines.Strings = (
          'E'
          'M'
          'I'
          'T'
          'E'
          'N'
          'T'
          'E')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 25400
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 5027
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'FATURA N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 63236
        mmTop = 30427
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'FATURA/DUPLICATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 28840
        mmWidth = 28310
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'VALOR EM REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 96309
        mmTop = 32808
        mmWidth = 22754
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'DUPLICATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 137319
        mmTop = 28840
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'N'#186' de Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 137319
        mmTop = 32808
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 170392
        mmTop = 30163
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'DESCONTO DE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 43921
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'COND. ESPECIAIS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 48419
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'NOME DO SACADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 54240
        mmWidth = 27252
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.75
        mmHeight = 30956
        mmLeft = 1323
        mmTop = 52917
        mmWidth = 54240
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 58738
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 63236
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'ESTADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 67998
        mmWidth = 12435
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 72496
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'INSC. ESTADUAL N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 128059
        mmTop = 72496
        mmWidth = 27252
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line101'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 529
        mmLeft = 1323
        mmTop = 76200
        mmWidth = 195527
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 529
        mmLeft = 1323
        mmTop = 83608
        mmWidth = 195527
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.75
        mmHeight = 7144
        mmLeft = 59531
        mmTop = 76729
        mmWidth = 26194
        BandType = 4
      end
      object ppMemo3: TppMemo
        UserName = 'Memo3'
        Caption = 'Memo3'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'VALOR POR'
          'EXTENSO')
        Transparent = True
        mmHeight = 6350
        mmLeft = 63500
        mmTop = 77258
        mmWidth = 16933
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemoExtenso_Impresso: TppMemo
        OnPrint = MemoExtensoPrint
        UserName = 'MemoExtenso_Impresso'
        Caption = 'MemoExtenso_Impresso'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7673
        mmLeft = 85461
        mmTop = 76465
        mmWidth = 111654
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemoAceite: TppMemo
        UserName = 'MemoAceite'
        Caption = 'MemoAceite'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Lines.Strings = (
          
            'RECONHE'#199'O(EMOS) A EXATID'#195'O DESTA DUPLICATA DE VENDA MERCANTIL NA' +
            ' IMPORT'#194'NCIA ACIMA PAGAREI(EMOS) '#192' SYNCTECH SOLU'#199#213'ES EM INFORM'#193'T' +
            'ICA LTDA., OU A SUA ORDEM NA PRA'#199'A E VENCIMENTO ACIMA INDICADO.')
        Transparent = True
        mmHeight = 9525
        mmLeft = 56356
        mmTop = 84667
        mmWidth = 138907
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'DATA DO ACEITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 100806
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'ASSINATURA DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 141288
        mmTop = 101336
        mmWidth = 36513
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line12'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 59796
        mmTop = 100013
        mmWidth = 136525
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'EM                 /               /             '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61119
        mmTop = 96309
        mmWidth = 43921
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'NOTAFISCAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 58738
        mmTop = 38100
        mmWidth = 24871
        BandType = 4
      end
      object ppDBValor_Impresso: TppDBText
        UserName = 'DBValor_Impresso'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 89429
        mmTop = 38100
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 130704
        mmTop = 38100
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 164571
        mmTop = 38100
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 84931
        mmTop = 54240
        mmWidth = 110861
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 74613
        mmTop = 58738
        mmWidth = 93134
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 72496
        mmTop = 63236
        mmWidth = 123296
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 69586
        mmTop = 67998
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 71173
        mmTop = 72496
        mmWidth = 42863
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 72496
        mmWidth = 39688
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.75
        mmHeight = 26194
        mmLeft = 7408
        mmTop = 794
        mmWidth = 265
        BandType = 4
      end
      object rbrgCabecalho: TppRegion
        UserName = 'rbrgCabecalho'
        Brush.Style = bsClear
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 25400
        mmLeft = 7673
        mmTop = 1588
        mmWidth = 155311
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'DATA DA EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 136261
          mmTop = 18257
          mmWidth = 26194
          BandType = 4
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 143140
          mmTop = 22226
          mmWidth = 13494
          BandType = 4
        end
        object ppRichText: TppRichText
          UserName = 'RichText'
          mmHeight = 23548
          mmLeft = 8731
          mmTop = 2646
          mmWidth = 126736
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
        end
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.75
        mmHeight = 15610
        mmLeft = 129382
        mmTop = 27252
        mmWidth = 265
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.75
        mmHeight = 15610
        mmLeft = 87048
        mmTop = 27252
        mmWidth = 265
        BandType = 4
      end
      object ppDataExtensoDupImp: TppMemo
        OnPrint = ppDataExtensoDupImpPrint
        UserName = 'Memo4'
        Caption = 'Memo4'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 4498
        mmTop = 86784
        mmWidth = 49742
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText172: TppDBText
        UserName = 'DBText172'
        DataField = 'NRO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 58738
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 128059
        mmTop = 67998
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText173: TppDBText
        UserName = 'DBText173'
        DataField = 'BAIRRO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 67998
        mmWidth = 55298
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Caption = 'N'#218'MERO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 168805
        mmTop = 58738
        mmWidth = 13335
        BandType = 4
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 84138
        mmTop = 67998
        mmWidth = 6646
        BandType = 4
      end
      object ppDBText174: TppDBText
        UserName = 'DBText174'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 67998
        mmWidth = 22490
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ID'
      DataPipeline = dbTitulos
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbTitulos'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object rbCarne: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
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
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 191
    Top = 105
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 57415
      mmPrintPosition = 0
      object ppImage4: TppImage
        UserName = 'Image4'
        Center = False
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0954474946496D6167656C0500004749463839611A031500F70000FFFFFF5A5A
          5ABDBDBDEFF7F7D6DEDEA5ADAD8C94946B73737B84844A525231393908101094
          ADC69C9CA5212129000000FFFFFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000002C00000000
          1A0315000008FF0001081C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2
          C58B18336ADCC8B1A3C78F20438A1C49B2A4499207120810A0E00182933063CA
          9C49B3A6CD9B3873EADCC9B3A74F990310101038C041809F48932A5DCAB4A9D3
          A750A34A654A40C0C0A009064CDDCAB5ABD7AF60C38A1DDBB5C04B8104122820
          CBB6ADDBB770E3CA9D9B34C08206040AD855A095AEDFBF80030B1E4C786A0107
          0A162C501020C081A185234B9E4CB9B2E5CB441528401000EF00027D318B1E4D
          BAB4E9D3370F2C0E0019B5EBD7B063CB9E2D50806205AD69EBDECDBBB7EFA5A1
          191A70F0C0EAEFE3C8932B5F7E71808002050410001DBCE00006071A30DFCEBD
          BBF7E3033E17FF3060A041F4E9E109326050FDBBFBF7F0E353FE2CA04103F208
          1A48AF6F80BDD6FFF20528E080048E259E000620905F82E445C79F7DD139281D
          68055668E18518DA341D74F72170404A0E2096C0011E3696805AAC15F4C08A02
          ADF8408B2C02E0228C2FCA18E38C36D688E38E37F6E8238D40E618248F3A1669
          E4903F0AA92491481EB964924C3EE96494544269E5945736A9A5945B5689E597
          5D66C9E5985E86092699629689E6996AB699E69B6CC269E69C6BD2E9669C78DA
          29679D7C3EB08003D235F618028A2DF0980309B046C001063496DB9D7AE629A5
          A490DA18E9A57DEE59E9A69A764AA9A79872FAE9A8A1829A29A9A7968AAAA8AA
          B69AEAABACC2516A6AAC38160A645A07A438E30001286014013B2ED0AB711916
          6BECB1C842549500E9199457AF0848D72C010A1890ECB5D866ABAD41E2952868
          AF0E14B0EDB8E4966BA156D33D072185E6B6EBEEBB030604003B}
        mmHeight = 4498
        mmLeft = 265
        mmTop = 49213
        mmWidth = 198173
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Style = bsClear
        mmHeight = 49477
        mmLeft = 57679
        mmTop = 1588
        mmWidth = 135996
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 23548
        mmLeft = 794
        mmTop = 1588
        mmWidth = 57415
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'CARN'#202' DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 13229
        mmTop = 2646
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 6350
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 10848
        mmWidth = 50536
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 15610
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 20108
        mmWidth = 50536
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 26194
        mmLeft = 794
        mmTop = 24871
        mmWidth = 57415
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'SACADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 21696
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        OnGetText = ppDBText56GetText
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 21696
        mmWidth = 97896
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 70644
        mmTop = 25665
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 25665
        mmWidth = 97896
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71967
        mmTop = 29633
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText501'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 29633
        mmWidth = 85990
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73025
        mmTop = 33602
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 33602
        mmWidth = 45244
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'INSC. EST. N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 136790
        mmTop = 33602
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 29633
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 182827
        mmTop = 29633
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 33602
        mmWidth = 28310
        BandType = 4
      end
      object ppCabCarne: TppRichText
        UserName = 'CabCarne'
        Caption = 'CabCarne'
        mmHeight = 18256
        mmLeft = 60854
        mmTop = 2381
        mmWidth = 132027
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'FATURA N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 25929
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'CARN'#202' N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 30692
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'NOTAFISCAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 25929
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 30427
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'C'#211'DIGO DO CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 16669
        mmTop = 35454
        mmWidth = 25400
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        DataField = 'CODCLIENTE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 9260
        mmLeft = 2646
        mmTop = 39423
        mmWidth = 53975
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'VENCIMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 67469
        mmTop = 37571
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 37571
        mmWidth = 35454
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'VALOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 126471
        mmTop = 37571
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 139700
        mmTop = 37571
        mmWidth = 48948
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'CARN'#202' N'#186'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 41540
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText132: TppDBText
        UserName = 'DBText132'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 90752
        mmTop = 41540
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 123296
        mmTop = 41275
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText134: TppDBText
        UserName = 'DBText134'
        DataField = 'VENDEDOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3704
        mmLeft = 139700
        mmTop = 41275
        mmWidth = 48948
        BandType = 4
      end
      object ppDBText135: TppDBText
        UserName = 'DBText135'
        CharWrap = True
        DataField = 'OBSSAIDA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 5556
        mmLeft = 59531
        mmTop = 45508
        mmWidth = 132292
        BandType = 4
      end
    end
  end
  object rbDupCarne: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 140000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'E:\Temp\Templates\dupcarne.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 276
    Top = 3
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 186796
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'rgCabDup'
        Pen.Style = psClear
        Stretch = True
        Visible = False
        mmHeight = 3175
        mmLeft = 209021
        mmTop = 161132
        mmWidth = 2910
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText2'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 66411
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'NotaFiscal1'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 86254
        mmTop = 66411
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText3'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 116152
        mmTop = 66411
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText5'
        DataField = 'CODCLIENTE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 5556
        mmTop = 152929
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText6'
        DataField = 'FONE1'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 84402
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText7'
        DataField = 'FONE2'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 89959
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'Antecipado'
        DataField = 'VALORDESCANTECIPADO'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 74083
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText11'
        DataField = 'DATAANTECIPACAO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 116681
        mmTop = 74083
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText13'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 84667
        mmWidth = 106098
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText14'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 89959
        mmWidth = 106098
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText15'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 95515
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText16'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 92340
        mmTop = 95515
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText17'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 95515
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText18'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 119327
        mmTop = 101336
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText19'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 101336
        mmWidth = 37042
        BandType = 4
      end
      object ppMemo4: TppMemo
        OnPrint = MemoExtensoPrint
        UserName = 'Extenso'
        Caption = 'Extenso'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 10848
        mmLeft = 47625
        mmTop = 107686
        mmWidth = 144727
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 66411
        mmWidth = 9790
        BandType = 4
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 24606
        mmTop = 66411
        mmWidth = 9790
        BandType = 4
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 5821
        mmTop = 168540
        mmWidth = 9790
        BandType = 4
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 128323
        mmTop = 168540
        mmWidth = 9790
        BandType = 4
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 34925
        mmTop = 168540
        mmWidth = 9790
        BandType = 4
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 168540
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText72: TppDBText
        UserName = 'DBText72'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 160602
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 127529
        mmTop = 153194
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 160602
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 160338
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 153194
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 152929
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        DataField = 'CODCLIENTE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 127529
        mmTop = 146579
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 139965
        mmWidth = 81227
        BandType = 4
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 5556
        mmTop = 146579
        mmWidth = 81227
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 139965
        mmWidth = 81227
        BandType = 4
      end
      object ppDataExtensoDupCarne: TppMemo
        OnPrint = ppDataExtensoDupCarnePrint
        UserName = 'DataExtensoDupCarne'
        Caption = 'DataExtensoDupCarne'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 47890
        mmTop = 50271
        mmWidth = 144992
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rbCarne_II: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 70000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 189
    Top = 156
    Version = '6.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbTitulos'
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 69000
      mmPrintPosition = 0
      object ppDBText91: TppDBText
        UserName = 'DBText54'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 42598
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText55'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 33338
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText93: TppDBText
        UserName = 'DBText56'
        CharWrap = True
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 7938
        mmLeft = 56621
        mmTop = 22490
        mmWidth = 56621
        BandType = 4
      end
      object ppDBText100: TppDBText
        UserName = 'DBText63'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 56621
        mmTop = 33338
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText65'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 42598
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText76'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 33338
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        CharWrap = True
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 7938
        mmLeft = 129117
        mmTop = 22490
        mmWidth = 56621
        BandType = 4
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 33338
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 52123
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 164307
        mmTop = 52652
        mmWidth = 21431
        BandType = 4
      end
    end
  end
  object ppCarne_Identificado: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
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
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 189
    Top = 209
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 70000
      mmPrintPosition = 0
      object ppDBText105: TppDBText
        UserName = 'DBText56'
        CharWrap = True
        OnGetText = ppDBText105GetText
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3895
        mmLeft = 10319
        mmTop = 13229
        mmWidth = 77523
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText63'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 24342
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText113: TppDBText
        UserName = 'DBText65'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 6085
        mmLeft = 159279
        mmTop = 3969
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText114: TppDBText
        UserName = 'DBText76'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 163777
        mmTop = 18256
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 90488
        mmTop = 13229
        mmWidth = 105040
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3895
        mmLeft = 59531
        mmTop = 18521
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText106'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3895
        mmLeft = 130440
        mmTop = 18521
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3895
        mmLeft = 59531
        mmTop = 24342
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        OnGetText = ppDBText108GetText
        AutoSize = True
        DataField = 'CLIENTEIDENTIFICACAO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3852
        mmLeft = 10319
        mmTop = 19050
        mmWidth = 39328
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        DataField = 'DATA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 11642
        mmTop = 30692
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        DataField = 'DATA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 98425
        mmTop = 18785
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        CharWrap = True
        OnGetText = ppDBText118GetText
        AutoSize = True
        DataField = 'CLIENTEIDENTIFICACAO'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 10848
        mmLeft = 93134
        mmTop = 46038
        mmWidth = 50800
        BandType = 4
      end
    end
  end
  object ppPromissoria_Identificada: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 95000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 378
    Top = 7
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand8: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 94000
      mmPrintPosition = 0
      object ppDBText115: TppDBText
        UserName = 'NotaFiscal'
        DataField = 'NOTAFISCAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 69586
        mmTop = 11113
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBValor'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 106892
        mmTop = 11113
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText13'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 50536
        mmTop = 55563
        mmWidth = 61913
        BandType = 4
      end
      object ppDBText128: TppDBText
        UserName = 'DBText14'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 40746
        mmTop = 62442
        mmWidth = 70115
        BandType = 4
      end
      object ppDBText129: TppDBText
        UserName = 'DBText15'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 40746
        mmTop = 69056
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText130: TppDBText
        UserName = 'DBText16'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 69056
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText131: TppDBText
        UserName = 'DBText17'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 98690
        mmTop = 69056
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText133: TppDBText
        UserName = 'DBText19'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 76465
        mmWidth = 32279
        BandType = 4
      end
      object ppMemo5: TppMemo
        OnPrint = MemoExtensoPrint
        UserName = 'Extenso'
        Caption = 'SESSENTA E SEIS REAIS'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 10848
        mmLeft = 40746
        mmTop = 34660
        mmWidth = 156898
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText138: TppDBText
        UserName = 'DBText12'
        DataField = 'icDia'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 11377
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText139: TppDBText
        UserName = 'DBText21'
        DataField = 'icMes'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 11377
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText140: TppDBText
        UserName = 'DBText22'
        DataField = 'icAno'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 191823
        mmTop = 11377
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        DataField = 'Nome_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 143404
        mmTop = 55563
        mmWidth = 65352
        BandType = 4
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        DataField = 'endereco_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 62442
        mmWidth = 70115
        BandType = 4
      end
      object ppDBText120: TppDBText
        UserName = 'DBText120'
        DataField = 'cidade_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 69056
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 69056
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText122: TppDBText
        UserName = 'DBText122'
        DataField = 'cep_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 189177
        mmTop = 69321
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText123: TppDBText
        UserName = 'DBText123'
        DataField = 'CPF_Aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 76465
        mmWidth = 50006
        BandType = 4
      end
      object ppLocalPgto: TppLabel
        UserName = 'LocalPgto'
        OnGetText = ppLocalPgtoGetText
        Caption = 'LocalPgto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 50536
        mmTop = 48683
        mmWidth = 22860
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        OnGetText = ppDBText117GetText
        AutoSize = True
        DataField = 'icDia'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4191
        mmLeft = 33867
        mmTop = 21431
        mmWidth = 8382
        BandType = 4
      end
      object ppDBText124: TppDBText
        UserName = 'DBText124'
        OnGetText = ppDBText124GetText
        AutoSize = True
        DataField = 'icMes'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 21431
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText125'
        OnGetText = ppDBText125GetText
        AutoSize = True
        DataField = 'icAno'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4191
        mmLeft = 82815
        mmTop = 21431
        mmWidth = 9652
        BandType = 4
      end
      object ppEmpresa: TppLabel
        UserName = 'LocalPgto1'
        OnGetText = ppEmpresaGetText
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 59531
        mmTop = 28046
        mmWidth = 17780
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel36GetText
        Caption = '(ei)(emos)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 119327
        mmTop = 21431
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText126: TppDBText
        UserName = 'DBText126'
        DataField = 'rg'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 76465
        mmWidth = 28840
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        OnGetText = ppLabel35GetText
        Caption = 'Label35'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 155311
        mmTop = 49213
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        OnGetText = ppLabel37GetText
        Caption = 'Label37'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178065
        mmTop = 49213
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        OnGetText = ppLabel38GetText
        Caption = 'Label38'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 194205
        mmTop = 49213
        mmWidth = 11377
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppCarne_Identificado_impresso: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
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
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 349
    Top = 201
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 70000
      mmPrintPosition = 0
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 16933
        mmLeft = 3704
        mmTop = 0
        mmWidth = 83344
        BandType = 4
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 8467
        mmLeft = 156369
        mmTop = 23283
        mmWidth = 40217
        BandType = 4
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 8467
        mmLeft = 123031
        mmTop = 23283
        mmWidth = 33867
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 7673
        mmLeft = 3704
        mmTop = 46831
        mmWidth = 83344
        BandType = 4
      end
      object ppShape21: TppShape
        UserName = 'Shape201'
        mmHeight = 7673
        mmLeft = 156634
        mmTop = 46831
        mmWidth = 39952
        BandType = 4
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 7673
        mmLeft = 156634
        mmTop = 39423
        mmWidth = 39952
        BandType = 4
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 8731
        mmLeft = 156634
        mmTop = 31221
        mmWidth = 39952
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 23283
        mmLeft = 91017
        mmTop = 31221
        mmWidth = 65881
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 8467
        mmLeft = 91017
        mmTop = 23019
        mmWidth = 32279
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 7144
        mmLeft = 91017
        mmTop = 16404
        mmWidth = 105569
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 7673
        mmLeft = 3704
        mmTop = 39423
        mmWidth = 83344
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 8467
        mmLeft = 3704
        mmTop = 30956
        mmWidth = 83344
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 8467
        mmLeft = 3704
        mmTop = 23019
        mmWidth = 83344
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 7144
        mmLeft = 3704
        mmTop = 16404
        mmWidth = 83344
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 16669
        mmLeft = 156898
        mmTop = 0
        mmWidth = 39688
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 11113
        mmLeft = 91017
        mmTop = 55033
        mmWidth = 105569
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 11113
        mmLeft = 3704
        mmTop = 55033
        mmWidth = 83344
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText56'
        CharWrap = True
        OnGetText = ppDBText105GetText
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 19315
        mmWidth = 75406
        BandType = 4
      end
      object ppDBText137: TppDBText
        UserName = 'DBText63'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 34925
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText141: TppDBText
        UserName = 'DBText65'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 6085
        mmLeft = 159279
        mmTop = 2910
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText142: TppDBText
        UserName = 'DBText76'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 162454
        mmTop = 26458
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText143: TppDBText
        UserName = 'DBText1'
        CharWrap = True
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 107156
        mmTop = 19315
        mmWidth = 88106
        BandType = 4
      end
      object ppDBText144: TppDBText
        UserName = 'DBText45'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 59002
        mmTop = 26723
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText145: TppDBText
        UserName = 'DBText106'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 126471
        mmTop = 26458
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText146: TppDBText
        UserName = 'DBText107'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 57944
        mmTop = 34925
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText147: TppDBText
        UserName = 'DBText108'
        OnGetText = ppDBText108GetText
        AutoSize = True
        DataField = 'CLIENTEIDENTIFICACAO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 26723
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText109'
        DataField = 'DATA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 42598
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText149: TppDBText
        UserName = 'DBText110'
        DataField = 'DATA'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 92604
        mmTop = 26458
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText118'
        CharWrap = True
        OnGetText = ppDBText118GetText
        AutoSize = True
        DataField = 'CLIENTEIDENTIFICACAO'
        DataPipeline = dbTitulos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'C39HrP24DhTt'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 10848
        mmLeft = 95779
        mmTop = 55033
        mmWidth = 50800
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 5027
        mmTop = 17198
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 50800
        mmTop = 24077
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'PRESTA'#199#195'O N. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 4233
        mmTop = 32015
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'VALOR DA PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 50006
        mmTop = 32015
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'DATA COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 4498
        mmTop = 39952
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = '(+) MORA/MULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 50271
        mmTop = 40217
        mmWidth = 18521
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = '(-) DESCONTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 156898
        mmTop = 31750
        mmWidth = 15875
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = '(=) VALOR COBRADO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 50271
        mmTop = 47625
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 91811
        mmTop = 16933
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'DATA COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 91811
        mmTop = 24077
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'PRESTA'#199#195'O N. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 124090
        mmTop = 24077
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'VALOR DA PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 158486
        mmTop = 24077
        mmWidth = 20902
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = '(-) DESCONTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 4233
        mmTop = 47625
        mmWidth = 15875
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = '(+) MORA/MULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 157163
        mmTop = 40217
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = '(=) VALOR COBRADO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 156898
        mmTop = 47361
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'A U T E N T I C A '#199' '#195' 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 30163
        mmTop = 55033
        mmWidth = 26988
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'A U T E N T I C A '#199' '#195' 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 160073
        mmTop = 55033
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 159544
        mmTop = 794
        mmWidth = 14023
        BandType = 4
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 31221
        mmLeft = 49213
        mmTop = 23283
        mmWidth = 265
        BandType = 4
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 16669
        mmLeft = 91017
        mmTop = 0
        mmWidth = 66675
        BandType = 4
      end
      object ppImage2: TppImage
        OnPrint = ppImage2Print
        UserName = 'Image2'
        MaintainAspectRatio = False
        mmHeight = 14817
        mmLeft = 93134
        mmTop = 1058
        mmWidth = 51594
        BandType = 4
      end
      object ppImage3: TppImage
        OnPrint = ppImage3Print
        UserName = 'Image3'
        MaintainAspectRatio = False
        mmHeight = 14817
        mmLeft = 14023
        mmTop = 794
        mmWidth = 51594
        BandType = 4
      end
      object ppDBText175: TppDBText
        UserName = 'DBText1101'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 2910
        mmLeft = 92340
        mmTop = 32279
        mmWidth = 62971
        BandType = 4
      end
      object ppDBText176: TppDBText
        UserName = 'DBText176'
        DataField = 'BAIRRO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 2910
        mmLeft = 92340
        mmTop = 35983
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText177: TppDBText
        UserName = 'DBText177'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 2910
        mmLeft = 111390
        mmTop = 35983
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText178: TppDBText
        UserName = 'DBText178'
        CharWrap = True
        DataField = 'CODCLIENTE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 91546
        mmTop = 19315
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText179: TppDBText
        UserName = 'DBText179'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 2910
        mmLeft = 99748
        mmTop = 39688
        mmWidth = 39158
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3006
        mmLeft = 92340
        mmTop = 39688
        mmWidth = 6562
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3006
        mmLeft = 105569
        mmTop = 19844
        mmWidth = 1101
        BandType = 4
      end
      object ppDBText180: TppDBText
        UserName = 'DBText180'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 2910
        mmLeft = 136525
        mmTop = 35983
        mmWidth = 18521
        BandType = 4
      end
    end
  end
  object ppProm_iden_impressa: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 95000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 378
    Top = 63
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand10: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 99219
      mmPrintPosition = 0
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 3969
        mmLeft = 41540
        mmTop = 38365
        mmWidth = 155311
        BandType = 4
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 37571
        mmLeft = 121709
        mmTop = 57150
        mmWidth = 83344
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 37571
        mmLeft = 17463
        mmTop = 57150
        mmWidth = 102659
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 34131
        mmLeft = 17198
        mmTop = 23019
        mmWidth = 187855
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 15875
        mmLeft = 73554
        mmTop = 6615
        mmWidth = 131498
        BandType = 4
      end
      object ppDBText151: TppDBText
        UserName = 'NotaFiscal'
        DataField = 'NOTAFISCAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 15346
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText152: TppDBText
        UserName = 'DBValor'
        DataField = 'VALOR'
        DataPipeline = dbTitulos
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 129382
        mmTop = 15610
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText153: TppDBText
        UserName = 'DBText13'
        Color = clSilver
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 59002
        mmWidth = 71438
        BandType = 4
      end
      object ppDBText154: TppDBText
        UserName = 'DBText14'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 37835
        mmTop = 65617
        mmWidth = 74877
        BandType = 4
      end
      object ppDBText155: TppDBText
        UserName = 'DBText15'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 72496
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText16'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 80169
        mmTop = 72496
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText17'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 95779
        mmTop = 72496
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText158: TppDBText
        UserName = 'DBText19'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 26988
        mmTop = 79904
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText159: TppDBText
        UserName = 'DBText12'
        DataField = 'icDia'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 15610
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText160: TppDBText
        UserName = 'DBText21'
        DataField = 'icMes'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 182827
        mmTop = 15610
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText22'
        DataField = 'icAno'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 192352
        mmTop = 15346
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText111'
        DataField = 'Nome_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 60590
        mmWidth = 81756
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText119'
        DataField = 'endereco_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 65881
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText164: TppDBText
        UserName = 'DBText120'
        DataField = 'cidade_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 72496
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText165: TppDBText
        UserName = 'DBText121'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 72231
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText166: TppDBText
        UserName = 'DBText122'
        DataField = 'cep_aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 188384
        mmTop = 72231
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText167: TppDBText
        UserName = 'DBText123'
        DataField = 'CPF_Aval'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 79640
        mmWidth = 50006
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'LocalPgto'
        OnGetText = ppLocalPgtoGetText
        Caption = 'LocalPgto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 53446
        mmTop = 52388
        mmWidth = 17272
        BandType = 4
      end
      object ppDBText168: TppDBText
        UserName = 'DBText117'
        OnGetText = ppDBText117GetText
        AutoSize = True
        DataField = 'icDia'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 24871
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText169: TppDBText
        UserName = 'DBText124'
        OnGetText = ppDBText124GetText
        AutoSize = True
        DataField = 'icMes'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3969
        mmLeft = 56886
        mmTop = 24871
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText125'
        OnGetText = ppDBText125GetText
        AutoSize = True
        DataField = 'icAno'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 83608
        mmTop = 24606
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel60: TppLabel
        UserName = 'LocalPgto1'
        OnGetText = ppEmpresaGetText
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 92340
        mmTop = 31485
        mmWidth = 103188
        BandType = 4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText126'
        DataField = 'rg'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 4233
        mmLeft = 76200
        mmTop = 79375
        mmWidth = 28840
        BandType = 4
      end
      object ppLabel62: TppLabel
        UserName = 'Label35'
        OnGetText = ppLabel35GetText
        Caption = 'Label35'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 172509
        mmTop = 52652
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel63: TppLabel
        UserName = 'Label37'
        OnGetText = ppLabel37GetText
        Caption = 'Label37'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 183621
        mmTop = 52652
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel64: TppLabel
        UserName = 'Label38'
        OnGetText = ppLabel38GetText
        Caption = 'Label38'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 194205
        mmTop = 52652
        mmWidth = 10054
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 15875
        mmLeft = 16933
        mmTop = 6615
        mmWidth = 55827
        BandType = 4
      end
      object ppImage1: TppImage
        OnPrint = ppImage1Print
        UserName = 'Image1'
        MaintainAspectRatio = False
        mmHeight = 14817
        mmLeft = 18785
        mmTop = 7144
        mmWidth = 51594
        BandType = 4
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Num.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 15346
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'Valor R$ :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112977
        mmTop = 15610
        mmWidth = 15610
        BandType = 4
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'Vencimento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 152136
        mmTop = 15610
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 15875
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 190500
        mmTop = 15875
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'NO DIA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 19315
        mmTop = 25665
        mmWidth = 10245
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52123
        mmTop = 25400
        mmWidth = 3969
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 79111
        mmTop = 25135
        mmWidth = 3969
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label702'
        Caption = 'A QUANTIA DE :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 19050
        mmTop = 38365
        mmWidth = 20997
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'LOCAL DO PAGAMENTO : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 17992
        mmTop = 52388
        mmWidth = 34798
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'DATA EMISSAO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 143669
        mmTop = 52652
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 180182
        mmTop = 52652
        mmWidth = 3175
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 191559
        mmTop = 52652
        mmWidth = 3175
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'NOME DO EMITENTE :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 18521
        mmTop = 59531
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'ENDERE'#199'O :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 66146
        mmWidth = 17463
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label801'
        Caption = 'MUNICIPIO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 73025
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 80169
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'RG :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 70115
        mmTop = 79904
        mmWidth = 5757
        BandType = 4
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'UF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 74083
        mmTop = 73025
        mmWidth = 5292
        BandType = 4
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'CEP :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 87577
        mmTop = 73025
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'NOME DO AVALISTA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 122238
        mmTop = 57415
        mmWidth = 28194
        BandType = 4
      end
      object ppLabel88: TppLabel
        UserName = 'Label802'
        Caption = 'ENDERE'#199'O :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122238
        mmTop = 66675
        mmWidth = 17463
        BandType = 4
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = 'MUNICIPIO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123031
        mmTop = 73025
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'CPF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123561
        mmTop = 79904
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'ASSINATURA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 89429
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'ASSINATURA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123561
        mmTop = 89429
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'PAGAR(EI)(EMOS) POR ESTA '#218'NICA VIA DE NOTA PROMISS'#211'RIA,'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 115888
        mmTop = 24871
        mmWidth = 87461
        BandType = 4
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        Caption = 'CORRESPONDENTE(S) AO(S) DE MESMO N'#218'MERO '#192' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 19050
        mmTop = 32279
        mmWidth = 69850
        BandType = 4
      end
      object ppMemo6: TppMemo
        OnPrint = MemoExtensoPrint
        UserName = 'Extenso'
        Caption = 'SESSENTA E SEIS REAIS'
        CharWrap = True
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Stretch = True
        mmHeight = 10848
        mmLeft = 42863
        mmTop = 37835
        mmWidth = 160602
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'EM MOEDA CORRENTE DESTE PAIS. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 45244
        mmWidth = 50271
        BandType = 4
      end
      object ppImage5: TppImage
        UserName = 'Image5'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D61676549200000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080122003803012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
          A28A2800A28A2800A2BCBFF6A0FDB5BE11FEC57E155D63E2C7C46F07F806CE6B
          4BABCB48F58D4E382EB534B54579C5A5B93E75D4881E31E5C08F213246A14B3A
          83CFFEC21FF050EF85FF00F0525F87BE26F177C23D5750D7BC29E19F103786DB
          54B8D3E5B18F50B84B2B4BB77863982CDE5A8BC48C99638C9922930A5363B807
          B85145140051451401E7FF00B58FC74FF865FF00D963E25FC4CFECBFEDCFF857
          7E15D53C4FFD9BF69FB2FF00687D8AD25B9F23CDD8FE5EFF002B6EFD8DB77676
          B6307F9E1F85BFF0548FF82827FC178FC7763E05F879F15BE0FF00C13D3FC43E
          6694F63A2789ACBC377F24F671B6A2D731C6F3DCF884EF4548CC964A60658D95
          8055B96AFE93BC59E13D2FC7BE15D4B42D774CD3F5AD135AB496C350D3EFEDD2
          E6D6FEDE54292C32C4E0A491BA332B230218120820D7E50FED79FF000671FECD
          1F1AB4E9AE3E16EABE30F82BADADA436F6B1DBDDBF88346DEB3979279ADEF1CD
          D4923C4C63023BC8A352B1B6C24389003F37F45FF820EDBFC34FF82FBFC05F80
          9F1EFC79A87C5893E2E787E6F883E34BDB3927B492EEF443AB5CDC599BB91DEE
          2E2392E34D21EE888269639DC85824C38FE8FBF643FD8BFE17FEC17F06A1F87F
          F08FC1FA7F82FC290DDCD7ED696F24B7125CDC4A4179A69E6779A69080881E57
          62B1C71A02123455FC01F1DFFC10FF00FE0A11FF0004C7FDA7FC0FF1BBE1C6B5
          A7FED0D27C1BB4BBB3F0DCA9A9C9A85D69BE1FB48A48A3D3A4D32F992558EE2D
          2E2E234B3D3649DE32F2AC4EB218A47FD8FF00F822A7EDE3F153F6FBFD9635FD
          6BE357C35FF8557F137C17E2BB8F0C6B3A37D82EF4EDF8B4B3BF827FB25DE67B
          6DD6F7F08D8EF26ED9E6860B2AA2007D7F45145001451450079FFED63E01F157
          C57FD963E25F85BC0BAD7FC235E36F12F85754D2BC3DABFDB26B3FECAD467B49
          62B6B9F3E10D2C5E5CCC8FE6460BAEDCA824015F883FF0E0BFF82A77FD1EA7FE
          65EF177FF2257ED77EDBBF1AF55FD9AFF62FF8BDF11B42B7D3EEF5BF00F82B59
          F1269F05FC6F25ACD71676335C4492AA323B465E350C15D4904E181E47F2E5FB
          39FF00C13B7E38FF00C150FF00658FDA03F6F2D4BE367D8FC7BF0B755B8D6E39
          E713A6ABAA5E6976906A3732C773014161F67B56B7166B0A32EF896202D638D1
          E803EDFF00F8705FFC153BFE8F53FF0032F78BBFF912BF43FF00E0DFCF00FC4A
          F845FB357C50F067C5CF8E1A7FC7AF1DF83FE255F695A96B367E25D4BC431E8C
          E9A6E98CDA59BABE8A36F321777678E2DD1C724CE8584AB2A27E387C1AFDBA7F
          6E6FF82E2FECCFE08FD99FE106B5E20D534FD0BC2A748F8BBE2BD4D6DACBFB41
          6E7569A3B737BAA16699EDD74D4B54648556F2EF66A7E64778B935FB9DFF0004
          6DFF008256E97FF0483FD91EE7E18E9FE30D43C7579AB7882EBC49A9EAD71609
          611CB71347040A90DBABC8628D60B58010D2C85A4F31B72AB2C6801F58514514
          0051451401F3FF00FC158BFE5165FB4B7FD92AF147FE9A2EABF982FD817FE0B9
          DFF0C39FF04B2F8D5FB347FC2AEFF84A3FE1707F6E7FC547FF000927D8BFB27F
          B4B48834DFF8F5FB2C9E7795E4F99FEB537EEDBF2E371FEBF6BF147FE0A05FF0
          75C78853F69F7F837FB1A7C33D3FE37F88AC6ECC0FAF35A5EEB56BAE3C314EF7
          7069B6162D1CD711C6111C5E09BCB610CE56278BCBB8600FCF0FF822A7FC1C85
          FF000E7CFD9635FF00867FF0A67FE1627F6E78AEE3C4FF00DA5FF096FF006479
          1E6DA59DB791E57D8A7DD8FB26EDFBC67CCC6D1B727F7FBFE08A9FF055BFF87C
          1FECB1AFFC4CFF00840BFE15DFF61F8AEE3C31FD9BFDB7FDAFE7F95696773E7F
          9BF67836E7ED7B766C38F2F3B8EEC0FCC0F0E7FC1D6FFB537EC9BF14FC3FFF00
          0D5DFB2EFF00C227E09F126E86DFEC7E1BD5FC2DAAB79735BFDA2E2DBFB4A596
          2BCF26190E6DC795B9E58774F10FBDFB9DF007E3F7837F6A5F835E1EF885F0F7
          C43A7F8ABC1BE2AB4179A66A766C4C770992AC0AB00F1C88EAC8F1B85923911D
          1D55D594007614514500145145007E787FC15E3F68DFDA5FE01F8D3E2741E14F
          0AEA177F007C45F02BC4217C65A5DE25AEA1E01F1659E95AFDFA5E23C2DF6A58
          E48ADACE1DF22AC4933DA98E68E4DF14FF00287FC1931F0B7E1C37ECB1F15FC6
          D6F63E1F9BE2EAF8ADB44BFBCF3965D56CF433696735AC5E596260B796E85E36
          E55513BDB618BFD99047FB7D5F803FB4BFFC1BA9FB507FC134FF006C9BBF8C5F
          F04FFF00116ED2755DF676FE1F9356B58F55D120B9591AE2D651A97FA1DFE9F1
          B47098CCF234EAED0131C8F6FF006A600FD3FF00F82F5FC2DF871F13FF00E091
          FF001C9BE2658F87EEB4FF000DF856FF005BD0AE355996DFFB3B5C86DA51A6CB
          6F29652970D74F1C28AAD99BCF3010EB3346FF00287FC1985E2CD57C47FF0004
          A1F1459EA1A96A17D67A0FC4AD4AC34C82E2E1E58F4EB76D3F4CB86861562447
          199E79E528B80649A46C6E7627F3BFE36FECDDFB707FC1523F68EF09FC07FDAD
          FF00686F83FF000F7FB0755B7963D175EF1B78561BF5BCBB6B78A348B46D1E51
          3DDEA0F6F705ED92E1114ABC8A9345F68FDE7F45DFB17FEC87E0DFD82FF660F0
          7FC23F87F0EA10F853C1768F6F68D7F746E6EAE5E495E79E795C800C92CF2CB2
          B04558D4C842222054500F50A28A2800A28A2803CFFF006B1F8E9FF0CBFF00B2
          C7C4BF899FD97FDB9FF0AEFC2BAA789FFB37ED3F65FED0FB15A4B73E479BB1FC
          BDFE56DDFB1B6EECED6C60FE00FF00C117FF00688F8A9E15F813FB557FC148BE
          2EFC56FF0084BF56F09F85753F877E1EB1F10C577A979DAC5C5C586A36D098E1
          28B69A7FDBAE6CE18EDEDF6C63ED939FF45488349FD0F7C58F85BA0FC71F859E
          26F04F8A6C7FB53C33E30D2AEB44D5ECFCE920FB5D9DCC2F0CF17991B2C89BA3
          765DC8CAC339041C1AFE687C61FF0006E47FC1413E147FC263FB39F81750FEDE
          FD9EFC59E2BB2D42E7564F145969BA0EABE5E043A85CD8BCED791796AC8D7104
          714BBA4B388A8BA36D6B2500701FB147FC110FFE1BD3FE091FFB457ED71F113C
          71F1034FF1B683FDB5AEF879EF2D3CFB6F127F675B7DBAFEF2E679F32DEFDAA6
          33DB096374F267B799DCDC1DD12FEBFF00FC1A35FB4BF8ABF688FF008247DBE9
          DE29BBFED0FF00855FE2BBDF06E917524B34B73269D15B59DE411CAF23B67C9F
          B6B411AA044482081028D84B78FF00FC15A7F627FDA3BF66DFF8271FECEFFB15
          FEC8BE1CF107897C3FE24D2B56D37C79AD6956EF67F6DF2120B99D6E2F6E2E0C
          1A75BEA371757F2BC324C3CCDA2DA373117865FBBBFE08B5FF0004CFB7FF0082
          51FEC19E1FF86135F69FAC78AEEAEE7D7BC59A9D819FECBA86A971B158C4B2B1
          2238A08ADEDD582C42416C253146F23AD007D6145145001451450073FF00163E
          29683F03BE16789BC6DE29BEFECBF0CF83F4ABAD6F57BCF2649FEC9676D0BCD3
          CBE5C6AD23ED8D19B6A2B31C6002702BF207FE0923FF0005D9FDA0BF6E8F8A7F
          1FBE3C7C44F07FFC23BFB2AFC1DF87FABDFAE95E1ED3E1973A9DACD1DF4508BB
          B9659AF3501A689D2411BC36C3F70CF140D3465FF57BF6B1F819FF000D41FB2C
          7C4BF867FDA9FD87FF000B13C2BAA7863FB4BECDF6AFECFF00B6DA4B6DE7F95B
          D3CCD9E6EED9BD776DC6E5CE47F244BFB4FF00C71FD907F636F8BBFF0004F3D6
          BE13F93E26F1F7C40D3AEEEEDDEDE7B8D7A0BC0D6645A5B450B34773F6992CB4
          C6B7963DCAD1B4A504E2E6192100F7FF00865F1CBFE0A39FF050AF859F19BF6C
          EF06FC66F10681E12F853AA9D56F340D3FC5B3E9DA57FA1C315DDC5B58E90CEF
          6B25BD9DA1864963BBFF008F9462337733CAA7F6FF00FE0DEFFF008293EBDFF0
          543FF8271E8FE36F188F33C7BE17D56E7C27E27BC8ECA3B3B6D52F2DD21992EA
          28D1D80F32D6E6D9A4C2C4BE7F9E12248C20AFCF0FDB8FE2C5C7FC1BDBFF0006
          F87C38FD9BA6F07E9FA87C58FDA23C3FAED9F88EF4DB416F6BA4BDDC71FF006A
          1B96B799CDDDE5BC1A85BD8C120731B8B5594B08E24B693EDFFF0083613F60EF
          197EC0FF00F04B9D3F4BF88165A8689E2BF885E20BBF19DDE857F682DEEB4049
          E1B6B582DE501D8F98D059C53B2B88E488DC989E35789B201FA1F45145001451
          450079FF00ED63F1D3FE197FF658F897F133FB2FFB73FE15DF85754F13FF0066
          FDA7ECBFDA1F62B496E7C8F3763F97BFCADBBF636DDD9DAD8C1FC41FF88E73FE
          AD77FF003247FF007AEBF6FBF6B1F8E9FF000CBFFB2C7C4BF899FD97FDB9FF00
          0AEFC2BAA789FF00B37ED3F65FED0FB15A4B73E479BB1FCBDFE56DDFB1B6EECE
          D6C60FE20FFC4739FF0056BBFF009923FF00BD7401CFF88BFE0F44F0AF8BFC77
          E1DF14EADFB1BF87F54F13783FED3FD83ABDDF8E219EFF0044FB4C622B9FB2CE
          DA49920F3630124F2CAEF500364715FABFFF000454FF0082ADFF00C3E0FF0065
          8D7FE267FC205FF0AEFF00B0FC5771E18FECDFEDBFED7F3FCAB4B3B9F3FCDFB3
          C1B73F6BDBB361C7979DC77607E607FC4739FF0056BBFF009923FF00BD75FA7F
          FF000454FF0082ADFF00C3E0FF00658D7FE267FC205FF0AEFF00B0FC5771E18F
          ECDFEDBFED7F3FCAB4B3B9F3FCDFB3C1B73F6BDBB361C7979DC7760007D7F451
          45001451450073FF00163E16E83F1C7E16789BC13E29B1FED4F0CF8C34ABAD13
          57B3F3A483ED767730BC33C5E646CB226E8DD977232B0CE410706BF1C7E3E7FC
          1053C03FF04EBF0AF87B42F873FF000519F8A1FB27E89E22BBBDBF9F4FF14F8D
          6DAD6D7C4370A96A8D35B4505D6969E646823595C898B07806630A37FEA77FC1
          427FE12AFF008605F8E1FF00082FFC241FF09B7FC2BFD7BFE11EFEC2F3BFB57F
          B47FB3AE3ECDF64F27F7BF68F3B6797E5FCFBF6EDE715FC997C14FD86FE3E7C2
          BF0ADC69FAEFFC13EFC61F12AF26BB6B84D4FC49E0BF1D4175021445102AE9D7
          B690F960AB302D1B49991B2E542AA807D7F6DFF073AFED3DFB287856F3506FDA
          27F66FFDA6AF356BB82DE2D31FC13AF585D68A8A9333CF1B0D334785A363B15C
          3C93499F2B622AF9AD5FB7DFF0466FDBE7C7DFF0520FD8BEC7E237C46F853A87
          C27D6E4BB8ECE08265B95B5F12DB9B1B3B85D5EC967891D6CEE1EE24112879C0
          117FAF90E48FC71F817FF0543FDBEBF65FFED4FF008567FF0004E0F87FF0EFFB
          73CAFED2FF008463F67FF11691FDA1E56FF2BCEFB3CE9E66CF364DBBB3B7CC7C
          6371CFEBFF00FC1153F6BCF8FBFB68FECB1AFF008A7F68CF85FF00F0A9FC6D61
          E2BB8D2AC748FF00847351D07ED3A725A59CB1DCF917D2492B6E9A6B84F31484
          3E5600CAB1201F5FD1451400514514019FE2CF16697E02F0AEA5AEEBBA969FA2
          E89A2DA4B7FA86A17F7096D6B616F1217966965721238D115999D880A0124802
          BF9D1F11FF00C147BF6D6FF838EBF6C9F107827F65BF107883E0A7C22F0AEDBE
          4BB8B539744FECE8916E120B9D5B53B357B937176CCEAB63033C43CB53B24FB2
          CB775FBBDFF0509F85BAF7C71FD817E387827C2D63FDA9E26F187C3FD7B44D22
          CFCE8E0FB5DE5CE9D710C11799232C69BA4755DCECAA339240C9AFC81FF832E7
          F6E9F871A1FC13F1A7ECF1A96B5FD95F13755F15DDF8C347B2BB558E1D76CDAC
          2CA1963B59377EF2E21FB1C92490901BCA6122798B1CE6200F0FFDA67C03FF00
          053EFF00820AE9DA3FC6AF117C70D43E2E7837ED69A76B71BF89753F17E8DA7A
          19E078E3BFB7D4628DEDE3B97510ADD5B6D914B3462785E78C4BFB9DFF0004C5
          FF008285F857FE0A81FB1B785FE2E785AD7FB27FB5BCDB3D5F4492FA1BBB9F0F
          EA30B6C9ED6568CFFBB2C65D6379209A090C71F98147907FC1C1BFB74FC38FD8
          D7FE0995F14349F1B6B5F67F107C58F0AEB3E0FF000AE8F6AAB2DFEAD7977652
          5B991632C316F079E924D3310A8A5546E96486293C03FE0CDBF85BAF7C3FFF00
          8247EA5AB6AF63F63D3FC71F10354D6F4497CE8E4FB6D9A5B58D834B85625317
          563751ED70ADFBADD8DACACC01FABD45145001451450015FCF8FFC1697F642FF
          0082737ED4BFB79F882C6DFF00698D3FE02FC72BEF1041A6F8BA2B5F0D5D6B1E
          17B8BF7DEB3CB70E8915ADB5E34B2C22E67FB6AC31BC1399E313B4F28FD9EFF8
          29AF8B355F017FC136FF00683D7742D4B50D175BD17E1AF88EFF004FD42C2E1E
          DAEAC2E22D2EE5E29A2950878E44755657520A9008208AFE747FE094BFF0486F
          837FB5BFFC1093F6A7F8E9E32B2F105C7C46F00FF6D7FC2377D6BAA35BC3A47F
          64E8D6FA9A6D840F2E4FB4493B45379C24FDD2AF95E449990807D41F0EBFE0D4
          0FD9C7F657F0249F1D3E3B7ED35FF09C7C0BD0F4A83C42F2E91A4A68B61AA40D
          241242C6F22BABB92E2DEE636312456812799AE62F2650FB55FF0057BFE094DF
          F0504F871FF050CF827E2ED5BE10F87FFB03E197C36F15C9E01F0D95B65B2875
          1B3B3B0B1952E20B4089F64B7FF4931C5091B845146CCB1339863FC01FF8239F
          FC1223E23FFC177BE1178263F1B78D3FE105FD9EFF00679FB4F8574D1A76EBAB
          FD66F2E7527D5F508E182498C56D70D0DFA23DEB47B76C760820B9314A63FE93
          BF643FD8BFE17FEC17F06A1F87FF0008FC1FA7F82FC290DDCD7ED696F24B7125
          CDC4A4179A69E6779A69080881E5762B1C71A0212345500F50A28A2800A28A28
          03C7FF00E0A13F0B75EF8E3FB02FC70F04F85AC7FB53C4DE30F87FAF689A459F
          9D1C1F6BBCB9D3AE21822F324658D3748EABB9D954672481935FCF0FC02FF825
          C7FC158BF65FFD963C6BF053C0BE05FEC3F865F113EDDFF090E8DFDB5E0EBAFE
          D0FB6DA476573FBF9A779E3DF6F1227EEE45DBB772ED6258FF0047DFB58FC74F
          F865FF00D963E25FC4CFECBFEDCFF8577E15D53C4FFD9BF69FB2FF00687D8AD2
          5B9F23CDD8FE5EFF002B6EFD8DB77676B6307F991F0F7C4DFF00828A7FC14FBE
          017C78FDAD7C33F1ABC61E19F03FC3FBB9AE353D1340F1E5F787ED634B7B68EE
          2EA0D32C2197CB58ECACDA195CCCE924C1B2AF7570640403D43F62AFD82BFE0A
          FF00FF0004EDF859A87827E0EF853FE10FF0CEA9AAC9ADDD59FF0069F82B50F3
          6F2486185E5F32EA5964198EDE15DA1828D99032493FB3FF00F0454FF86B0FF8
          658D7FFE1B17FE4A6FFC25771FD99FF207FF00903FD92CFCAFF905FEE3FE3E3E
          D7F7BF79EBF2ECAE7FFE0DEFFF008293EBDFF0543FF8271E8FE36F188F33C7BE
          17D56E7C27E27BC8ECA3B3B6D52F2DD21992EA28D1D80F32D6E6D9A4C2C4BE7F
          9E12248C20AFB7E800A28A2800A28A2803E7FF00F82B17FCA2CBF696FF00B255
          E28FFD345D57F305FB02FF00C173BFE1873FE0965F1ABF668FF855DFF0947FC2
          E0FEDCFF008A8FFE124FB17F64FF0069691069BFF1EBF6593CEF2BC9F33FD6A6
          FDDB7E5C6E3FD7ED1401FCA17FC1153FE0E42FF873E7ECB1AFFC33FF008533FF
          000B13FB73C5771E27FED2FF0084B7FB23C8F36D2CEDBC8F2BEC53EEC7D9376F
          DE33E66368DB93FBFDFF000454FF0082ADFF00C3E0FF00658D7FE267FC205FF0
          AEFF00B0FC5771E18FECDFEDBFED7F3FCAB4B3B9F3FCDFB3C1B73F6BDBB361C7
          979DC77607D7F4500145145001451450067F8B3C59A5F80BC2BA96BBAEEA5A7E
          8BA268B692DFEA1A85FDC25B5AD85BC485E59A595C848E344566676202804920
          0AFCA1FDAF3FE0F1CFD9A3E0AE9D35BFC2DD2BC61F1AB5B6B486E2D64B7B47F0
          FE8DBDA72924135C5E20BA8E44894C80C7672C6C5A35DE09731FE977ED63F033
          FE1A83F658F897F0CFFB53FB0FFE162785754F0C7F697D9BED5FD9FF006DB496
          DBCFF2B7A799B3CDDDB37AEEDB8DCB9C8FE787E16FFC12DFFE0A09FF00041CF1
          DD8F8EBE1E7C29F83FF1B34FF0F799AABDF689E19B2F125FC73DE46DA735B472
          3C16DE211B1192431D93081564666255AE5680343C77FF0005C0FF0082847FC1
          4E3F69FF0003FC11F871A2E9FF00B3CC9F192D2EEF3C3712699269F75A9787EE
          E29258F519353BE5795A3B7B4B7B8912F34D8E0790A4AD12348228D3F63FFE08
          A9FB07FC54FD813F658D7F45F8D5F12BFE16A7C4DF1A78AEE3C4FACEB3F6FBBD
          47666D2CEC2083ED77789EE76DBD84277BA47B77F9414AC4AEFF00861A2FFC17
          8ADFE25FFC17DFE02FC7BF8F7E03D43E13C9F08FC3F37C3EF1A5959C73DDC969
          7A61D5ADAE2F0DA4889716F1C771A912F6A4CF3451C0E034F2610FF47DFB21FE
          DA1F0BFF006F4F8350FC40F847E30D3FC69E149AEE6B06BBB78E5824B6B88880
          F0CD04C8934320051C24A8A5A3923700A488CC01EA1451450014514500797FED
          BBF1AF55FD9AFF0062FF008BDF11B42B7D3EEF5BF00F82B59F1269F05FC6F25A
          CD71676335C4492AA323B465E350C15D4904E181E47CC1FF0006F4FF00C1503C
          7DFF000565FD8BFC4FF11BE2368FE0FD175BD17C6B75E1B820F0DDADCDB5ABDB
          C5636170AECB3CF33990BDD48090E0602FCA0824FB7FFC158BFE5165FB4B7FD9
          2AF147FE9A2EABF9C2FF00822A7FC131BF6D0FDB47F658D7FC53FB39FED09FF0
          A9BC1361E2BB8D2AFB48FF0084EF5DD07ED3A8A5A59CB25CF9163049136E866B
          74F318873E5608C2A9201FD36FED41FB14FC23FDB53C2ABA3FC58F873E0FF1F5
          9C36975656926B1A6473DD6989748A939B4B823CEB591C2467CC81D240638D83
          0645239FFD843FE09E3F0BFF00E09B5F0F7C4DE11F847A56A1A0F853C4DE206F
          12369771A84B7D1E9F70F656968E90C93169BCB616692112C921124B261826C4
          4FC71FF8705FFC153BFE8F53FF0032F78BBFF912BF4FFF00E08A9FB227C7DFD8
          BBF658D7FC2DFB467C50FF0085B3E36BFF0015DC6AB63ABFFC247A8EBDF66D39
          ED2CE28EDBCFBE8E39576CD0DC3F96A0A0F3720E598000FAFE8A28A0028A28A0
          0E3FF685F829A5FED29F00BC71F0E75DB8D42D344F1FF87EFF00C37A84F60E91
          DD436F796D25BCAF133ABA2C812462A59180206548E0FE28EA7FF056EFD997FE
          0D8BD1FC53FB37FC09D2FE207C7FF105BF8ADF5AF1349ABF886CAD6C345BC96D
          63B6B8B317D05A7EF2E21FB1DB07856D9951A6955A712C4F02FEBF7FC1427E29
          6BDF03BF605F8E1E36F0B5F7F65F89BC1FF0FF005ED6F48BCF2639FEC9796DA7
          5C4D04BE5C8AD1BED9115B6BAB29C6082322BF207FE0CB9FD85BE1C6B9F04FC6
          9FB43EA5A2FF006AFC4DD2BC5777E0FD1EF2ECAC90E8566B616534B25AC7B7F7
          77137DB248E49892DE5288D3CB59271280741FB347FC1ED3F0E3E207C53B4D27
          E297C19F107C37F0CDE6C8BFB7B4AF102F88BEC52B4D1A6FB8B6FB2DB482DD23
          69647784CD2FEEC2A43216F97F6BBC27E2CD2FC7BE15D375DD0B52D3F5AD135A
          B48AFF004FD42C2E12E6D6FEDE540F14D14A84A491BA32B2BA9218104120D7C6
          1FF0706FEC2DF0E3F6CAFF0082657C50D5BC6DA2FDA3C41F09BC2BACF8C3C2BA
          C5A958AFF49BCB4B292E0C6B21539B79FC848E685815750AC36CB1C32C7E01FF
          00066DFC52D7BE207FC123F52D2757BEFB669FE07F881AA689A245E4C71FD8AC
          DEDAC6FDA2CAA82F9BABEBA9373966FDEEDCED555500FD5EA28A2800A28A2803
          3FC59E13D2FC7BE15D4B42D774CD3F5AD135AB496C350D3EFEDD2E6D6FEDE542
          92C32C4E0A491BA332B230218120820D7F3A3E23FF008270FEDADFF06E2FED93
          E20F1B7ECB7E1FF107C6BF845E2ADB6296916992EB7FDA313ADC3C16DAB69966
          C973F68B465765BE815223E628DF1FDAA5B4AFDFEFDAC7FE13BFF8658F897FF0
          AB7FE4A6FF00C22BAA7FC223FF001EFF00F218FB24BF62FF008F8FDC7FC7C795
          FEBBF77FDFF9735F883FF1BD7FF3FF000AFA803CBFF699F1F7FC14FBFE0BD5A7
          68FF00057C45F03F50F847E0DFB5A6A3ADC8FE1AD4FC21A36A0827812392FEE3
          519647B88ED9D84CB6B6DBA462AD208267823317EE77FC1317FE09EBE15FF825
          F7EC6DE17F847E16BAFED6FEC9F36F357D6E4B186D2E7C41A8CCDBE7BA95631F
          EEC5187691E38218233249E5863FCF0FED8BFF00059FFF00829C7EC0DE3B87C2
          DF153E2FF87FC3FE2693779BA45A5B782758BFB0C470CA3ED5059453496BBE39
          E278FCF09E62B129B82B11FB3FFF0006DEFED3BFB417ED77FB02EA9E36FDA326
          F105E789B51F15CADE1EBCD57C370E87FDA1A1BE9DA7CD6D716F1C30411CD6EF
          24B70C93AAB07C901C8500007DFF0045145001451450073FF163E29683F03BE1
          6789BC6DE29BEFECBF0CF83F4ABAD6F57BCF2649FEC9676D0BCD3CBE5C6AD23E
          D8D19B6A2B31C6002702BF9C1FDB73FE0EC5F8A9FB6CF8EEE3E1FF00C21D73C3
          FF00B2EFC39D53ED56B2F8CB5B4BBD435B920F2EED43492595B5CC963E746F6E
          02D9DBCB3C1708ACB79E5EE65FE8FBE2C7C2DD07E38FC2CF137827C5363FDA9E
          19F1869575A26AF67E74907DAECEE6178678BCC8D9644DD1BB2EE465619C820E
          0D7C41FF0010B8FEC27FF4437FF2F3F107FF00275007E787FC12B3E207FC126B
          FE09B5A769BAEEB1F1874FF8BFF162C6EDEEE3F17EBBF0E7C4091E9E44F14B6F
          F61B06B5961B59213044CB700BDC091A62B2AC6E224FDAEFD8ABF6F5F84FFF00
          0511F859A878DBE0EF8AFF00E130F0CE97AAC9A25D5E7F665E69FE55E470C333
          C5E5DD45148711DC42DB82953BF00E4103E60FF885C7F613FF00A21BFF00979F
          883FF93ABE9FFD8ABF60AF84FF00F04EDF859A87827E0EF853FE10FF000CEA9A
          AC9ADDD59FF69DE6A1E6DE490C30BCBE65D4B2C8331DBC2BB43051B320649240
          3D828A28A0028A28A0028A28A0028A28A0028A28A00FFFD9}
        mmHeight = 89959
        mmLeft = 2381
        mmTop = 4763
        mmWidth = 13494
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 360
    Top = 136
  end
  object gbTitulo1: TgbTitulo
    BoletoComImagem = False
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    Sacador.TipoInscricao = tiPessoaFisica
    Sacador.NumeroCPFCGC = '07197040493'
    Sacador.Nome = 'Everton Pereira dos Santos'
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebClienteEmite
    Left = 424
    Top = 136
  end
  object rbTituloReceber: TppReport
    AutoStop = False
    DataPipeline = dbTitulos
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
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 277
    Top = 65
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbTitulos'
    object ppHeaderBand7: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand11: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 93398
      mmPrintPosition = 0
      object ppShape31: TppShape
        UserName = 'Shape1'
        mmHeight = 89165
        mmLeft = 1323
        mmTop = 265
        mmWidth = 195792
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.75
        mmHeight = 13758
        mmLeft = 162984
        mmTop = 27252
        mmWidth = 265
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 1323
        mmTop = 36513
        mmWidth = 195527
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 37306
        mmWidth = 195527
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 26988
        mmWidth = 195527
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line6'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 48948
        mmTop = 31750
        mmWidth = 114036
        BandType = 4
      end
      object ppShape32: TppShape
        UserName = 'Shape2'
        mmHeight = 26458
        mmLeft = 162984
        mmTop = 794
        mmWidth = 34131
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.75
        mmHeight = 26194
        mmLeft = 162984
        mmTop = 794
        mmWidth = 265
        BandType = 4
      end
      object ppMemo7: TppMemo
        UserName = 'Memo2'
        Caption = '2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Lines.Strings = (
          'PARA USO DA INSTITUI'#199#195'O'
          'FINANCEIRA')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 165100
        mmTop = 1323
        mmWidth = 29104
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo8: TppMemo
        UserName = 'Memo1'
        Caption = '6'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Lines.Strings = (
          'E'
          'M'
          'I'
          'T'
          'E'
          'N'
          'T'
          'E')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 25400
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 5027
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label3'
        Caption = 'FATURA N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 30427
        mmWidth = 18521
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label4'
        Caption = 'FATURA/DUPLICATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 66675
        mmTop = 27781
        mmWidth = 31485
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label5'
        Caption = 'VALOR EM REAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 32808
        mmWidth = 22754
        BandType = 4
      end
      object ppLabel101: TppLabel
        UserName = 'Label6'
        Caption = 'DUPLICATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 130175
        mmTop = 27781
        mmWidth = 19579
        BandType = 4
      end
      object ppLabel102: TppLabel
        UserName = 'Label7'
        Caption = 'N'#186' de Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 131763
        mmTop = 32808
        mmWidth = 16140
        BandType = 4
      end
      object ppLabel103: TppLabel
        UserName = 'Label8'
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 29898
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel106: TppLabel
        UserName = 'Label11'
        Caption = 'NOME DO SACADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 41804
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label12'
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 46302
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label13'
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 50800
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel109: TppLabel
        UserName = 'Label14'
        Caption = 'ESTADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 55563
        mmWidth = 12435
        BandType = 4
      end
      object ppLabel110: TppLabel
        UserName = 'Label15'
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 55563
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel111: TppLabel
        UserName = 'Label16'
        Caption = 'INSC. ESTADUAL N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120915
        mmTop = 55563
        mmWidth = 27252
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line101'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 529
        mmLeft = 1323
        mmTop = 59531
        mmWidth = 195527
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line13'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 529
        mmLeft = 1323
        mmTop = 68527
        mmWidth = 195527
        BandType = 4
      end
      object ppMemo9: TppMemo
        UserName = 'Memo3'
        Caption = 'Memo3'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'VALOR POR EXTENSO')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 62706
        mmWidth = 44715
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemoExtensoTitulo: TppMemo
        OnPrint = ppMemoExtensoTituloPrint
        UserName = 'MemoExtenso_ImpressoTitulo'
        Caption = 'MemoExtenso_ImpressoTitulo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7673
        mmLeft = 55827
        mmTop = 60590
        mmWidth = 125942
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemoAceiteTitulo: TppMemo
        UserName = 'MemoAceite'
        Caption = 'MemoAceite'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Lines.Strings = (
          
            'RECONHE'#199'O(EMOS) A EXATID'#195'O DESTA DUPLICATA DE VENDA MERCANTIL NA' +
            ' IMPORT'#194'NCIA ACIMA PAGAREI(EMOS) '#192' SYNCTECH SOLU'#199#213'ES EM INFORM'#193'T' +
            'ICA LTDA., OU A SUA ORDEM NA PRA'#199'A E VENCIMENTO ACIMA INDICADO.')
        Transparent = True
        mmHeight = 9525
        mmLeft = 56356
        mmTop = 69586
        mmWidth = 138907
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label17'
        Caption = 'DATA DO ACEITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 70644
        mmTop = 84667
        mmWidth = 26988
        BandType = 4
      end
      object ppLabel113: TppLabel
        UserName = 'Label18'
        Caption = 'ASSINATURA DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 141288
        mmTop = 85196
        mmWidth = 38629
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line12'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 59796
        mmTop = 83873
        mmWidth = 136525
        BandType = 4
      end
      object ppLabel114: TppLabel
        UserName = 'Label19'
        Caption = 'EM                 /               /             '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 61119
        mmTop = 80169
        mmWidth = 43921
        BandType = 4
      end
      object ppDBText181: TppDBText
        UserName = 'DBText44'
        DataField = 'NOTAFISCAL'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 37042
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText182: TppDBText
        UserName = 'DBValor_Impresso'
        DataField = 'icSaldoRestante'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 63765
        mmTop = 37042
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText183: TppDBText
        UserName = 'DBText46'
        DataField = 'TITULO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 125148
        mmTop = 37042
        mmWidth = 30692
        BandType = 4
      end
      object ppDBText184: TppDBText
        UserName = 'DBText47'
        DataField = 'VENCIMENTO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 37042
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText185: TppDBText
        UserName = 'DBText48'
        DataField = 'NOME'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 31485
        mmTop = 41804
        mmWidth = 164307
        BandType = 4
      end
      object ppDBText186: TppDBText
        UserName = 'DBText49'
        DataField = 'ENDERECO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 46302
        mmWidth = 92604
        BandType = 4
      end
      object ppDBText187: TppDBText
        UserName = 'DBText50'
        DataField = 'CIDADE'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 50800
        mmWidth = 94721
        BandType = 4
      end
      object ppDBText188: TppDBText
        UserName = 'DBText51'
        DataField = 'UF'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 55563
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText189: TppDBText
        UserName = 'DBText52'
        DataField = 'CPF_CNPJ'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 55563
        mmWidth = 42863
        BandType = 4
      end
      object ppDBText190: TppDBText
        UserName = 'DBText53'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 148961
        mmTop = 55563
        mmWidth = 46831
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.75
        mmHeight = 26194
        mmLeft = 7408
        mmTop = 794
        mmWidth = 265
        BandType = 4
      end
      object ppRegion2: TppRegion
        UserName = 'rbrgCabecalho'
        Brush.Style = bsClear
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 25400
        mmLeft = 7673
        mmTop = 1588
        mmWidth = 155311
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel115: TppLabel
          UserName = 'Label20'
          Caption = 'DATA DA EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 133879
          mmTop = 18257
          mmWidth = 28046
          BandType = 4
        end
        object ppSystemVariable8: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 139965
          mmTop = 22226
          mmWidth = 15610
          BandType = 4
        end
        object ppRichText1: TppRichText
          UserName = 'RichText'
          mmHeight = 23548
          mmLeft = 8731
          mmTop = 2646
          mmWidth = 124619
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
        end
      end
      object ppLine31: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.75
        mmHeight = 13758
        mmLeft = 116417
        mmTop = 27252
        mmWidth = 265
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.75
        mmHeight = 13758
        mmLeft = 48419
        mmTop = 27252
        mmWidth = 794
        BandType = 4
      end
      object ppMemo12: TppMemo
        OnPrint = ppDataExtensoDupImpPrint
        UserName = 'Memo4'
        Caption = 'Memo4'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 4498
        mmTop = 71702
        mmWidth = 49742
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText191: TppDBText
        UserName = 'DBText172'
        DataField = 'NRO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 46302
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel116: TppLabel
        UserName = 'Label93'
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114565
        mmTop = 50800
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText192: TppDBText
        UserName = 'DBText173'
        DataField = 'BAIRRO'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 129382
        mmTop = 50800
        mmWidth = 66411
        BandType = 4
      end
      object ppLabel117: TppLabel
        UserName = 'Label94'
        Caption = 'N'#218'MERO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114565
        mmTop = 46302
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel118: TppLabel
        UserName = 'Label95'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 55563
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText193: TppDBText
        UserName = 'DBText174'
        DataField = 'CEP'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 55563
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 46302
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText194: TppDBText
        UserName = 'DBText194'
        DataField = 'FONE1'
        DataPipeline = dbTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTitulos'
        mmHeight = 3175
        mmLeft = 160867
        mmTop = 46302
        mmWidth = 34925
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'ID'
      DataPipeline = dbTitulos
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbTitulos'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end

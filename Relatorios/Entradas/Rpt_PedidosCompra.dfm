object RptPedidosCompra: TRptPedidosCompra
  Left = 189
  Top = 56
  Width = 1122
  Height = 575
  Caption = 'RptPedidosCompra'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object zr40Colunas: TZReport
    Left = 643
    Top = 20
    Width = 40
    Height = 52
    DataSet = Q_InvItens
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options.LineSpacing = zrd16
    Options.AutoHeight = False
    Options.Escapes.Model = emEpsonLXSeries
    Options.PaperType = zptContinuous
    Options.Acentos = Retorno_Carro
    Options.Scissors = False
    Margins.Left = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Minimized = True
    object cCODIGO: TZRField
      Format.Width = 13
      DataField = 'CODIGO'
      DataSet = Q_InvItens
    end
    object cDESCRICAO: TZRField
      Format.Width = 255
      DataField = 'ITEMDESC'
      DataSet = Q_InvItens
    end
    object cQUANTIDADE: TZRField
      Format.DisplayMask = '#,##0.###'
      Format.Width = 19
      DataField = 'QUANTIDADE'
      DataSet = Q_InvItens
    end
    object cPRECO: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 10
      DataField = 'PRECO'
      DataSet = Q_InvItens
    end
    object cTOTAL: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      DataField = 'TOTAL'
      DataSet = Q_InvItens
    end
    object cUNIDADE: TZRField
      Format.Width = 6
      DataField = 'UNIDADE'
      DataSet = Q_InvItens
    end
    object cTAX: TZRField
      Format.Width = 1
      DataField = 'TAXAVEL'
      DataSet = Q_InvItens
    end
    object cTotalGeral: TZRAggregator
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      Variable = cTOTAL
    end
    object cQtdeItens: TZRAggregator
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      Variable = cTOTAL
    end
    object cOBS: TZRField
      Format.Width = 255
      DataField = 'OBS'
      DataSet = Q_Invoice
    end
    object cDATA: TZRField
      Format.DisplayMask = 'dd/mm/yyyy'
      Format.Width = 10
      DataField = 'DATA'
      DataSet = Q_Invoice
    end
    object cTOTALITENS: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      DataField = 'TOTALITENS'
      DataSet = Q_InvItens
    end
    object cIMPOSTO: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      DataField = 'IMPOSTO'
      DataSet = Q_InvItens
    end
    object cTOTALINVOICE: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      DataField = 'TOTAL'
      DataSet = Q_Invoice
    end
    object zrvNomeCliente: TZRField
      Format.Width = 50
      DataField = 'NOME'
      DataSet = Q_Invoice
    end
    object zrvDesconto40Col: TZRField
      Format.DisplayMask = '#,###,###,###,##0.00'
      Format.Width = 19
      DataField = 'DESCONTO'
      DataSet = Q_InvItens
    end
    object zrvOutras40Col: TZRField
      Format.DisplayMask = '#,###,###,###,##0.00'
      Format.Width = 19
      DataField = 'OUTRASDESPESAS'
      DataSet = Q_InvItens
    end
    object cFone1: TZRField
      Format.Width = 20
      DataField = 'FONE1'
      DataSet = Q_InvItens
    end
    object zrvEnderecoCliente: TZRField
      Format.Width = 40
      DataField = 'ENDERECOENTREGA'
      DataSet = Q_InvItens
    end
    object zrv40ColunasPlanoPag: TZRField
      Format.Width = 30
      DataField = 'PLANOPAG'
      DataSet = Q_Invoice
    end
    object zrv40ColunasVendedor: TZRField
      Format.Width = 50
      DataField = 'VENDEDOR'
      DataSet = Q_InvItens
    end
    object zrv40ColunasOBS: TZRField
      Format.Width = 1255
      DataField = 'OBS'
      DataSet = Q_InvItens
    end
    object zrv40ColunasCOLUNA01: TZRField
      Format.Width = 20
      DataField = 'COLUNA1'
      DataSet = Q_InvItens
    end
    object zrvLocalizacao: TZRField
      Format.Width = 15
      DataField = 'LOCAL'
      DataSet = Q_InvItens
    end
    object zrv40ColunasCOLUNA02: TZRField
      Format.Width = 20
      DataField = 'COLUNA2'
      DataSet = Q_InvItens
    end
    object cTIT2_CAMPO02: TZRField
      Format.Width = 20
      DataField = 'TIT2_CAMPO2'
      DataSet = Q_Invoice
    end
    object cTIT2_CAMPO01: TZRField
      Format.Width = 20
      DataField = 'TIT2_CAMPO1'
      DataSet = Q_Invoice
    end
    object zrv40ColunasDATAENTREGA: TZRField
      Format.Width = 10
      DataField = 'DATAENTREGA'
      DataSet = Q_InvItens
    end
    object cTIT2_FABRICANTE: TZRField
      Format.Width = 20
      DataField = 'TIT2_FABRICANTE'
      DataSet = Q_InvItens
    end
    object cFABRICANTE: TZRField
      Format.Width = 30
      DataField = 'FABRICANTE'
      DataSet = Q_InvItens
    end
    object eINVOICE: TZRField
      Format.Width = 12
      DataField = 'INVOICE'
      DataSet = Q_Invoice
    end
    object eDESCONTO: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 19
      DataField = 'DESCONTO'
      DataSet = Q_Invoice
    end
    object eOUTRASDESPESAS: TZRField
      Format.DisplayMask = '#,###,##0.00'
      Format.Width = 10
      DataField = 'OUTRASDESPESAS'
      DataSet = Q_Invoice
    end
    object eCAMPO01: TZRField
      Format.Width = 50
      DataField = 'CAMPO01'
      DataSet = Q_Invoice
    end
    object eCAMPO02: TZRField
      Format.Width = 50
      DataField = 'CAMPO02'
      DataSet = Q_Invoice
    end
    object eDESCTIPOMOVIMENTO: TZRField
      Format.Width = 30
      DataField = 'DESCRICAO'
      DataSet = Q_Invoice
    end
    object eCODIGOCLIENTE: TZRField
      Format.Width = 20
      DataField = 'CODIGOCLIENTE'
      DataSet = Q_Invoice
    end
    object zr40ColunasGroup: TZRGroup
      Variable = zrvLocalizacao
    end
    object zr40ColunasHeader: TZRBand
      Left = 0
      Top = 11
      Width = 40
      Height = 5
      Stretch = False
      BandType = zbtHeader
      object zrCidade3: TZRLabel
        Left = 1
        Top = 2
        Width = 39
        Height = 1
        Alignment.X = zawCenter
        Caption = 'zrCidade3'
      end
      object zrEndereco3: TZRLabel
        Left = 1
        Top = 1
        Width = 39
        Height = 1
        Alignment.X = zawCenter
        Caption = 'zrEndereco3'
      end
      object zrNomeEmpresa3: TZRLabel
        Left = 1
        Top = 0
        Width = 39
        Height = 1
        Alignment.X = zawCenter
        Caption = 'zrNomeEmpresa3'
      end
      object zrFone3: TZRLabel
        Left = 1
        Top = 3
        Width = 39
        Height = 1
        Alignment.X = zawCenter
        Caption = 'zrFone'
      end
    end
    object zr40ColunasChild: TZRBand
      Left = 0
      Top = 16
      Width = 40
      Height = 2
      Stretch = False
      BandType = zbtChild
      ParentIndex = 0
      object zrData: TZRLabel
        Left = 0
        Top = 0
        Width = 9
        Height = 1
        Caption = 'Data'
        Variable = cDATA
      end
      object zrNumeroInvoice: TZRLabel
        Left = 19
        Top = 0
        Width = 21
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahBandTop
        Caption = '# Invoice'
      end
      object ZRLabel76: TZRLabel
        Left = 12
        Top = 1
        Width = 28
        Height = 1
        Caption = 'Data'
        Variable = zrvNomeCliente
      end
      object ZRLabel92: TZRLabel
        Left = 0
        Top = 1
        Width = 7
        Height = 1
        Caption = 'Data'
        Variable = eCODIGOCLIENTE
      end
      object ZRLabel93: TZRLabel
        Left = 8
        Top = 1
        Width = 3
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = '-'
      end
    end
    object zr40ColunasColumnHeader: TZRBand
      Left = 0
      Top = 18
      Width = 40
      Height = 4
      Frame.Top = 1
      Frame.Bottom = 1
      Stretch = False
      BandType = zbtColumnHeader
      object zrLabelCodigo: TZRLabel
        Left = 0
        Top = 1
        Width = 9
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahBandTop
        Caption = 'CODIGO'
      end
      object zrLabelDescricao: TZRLabel
        Left = 10
        Top = 1
        Width = 18
        Height = 1
        Alignment.Y = zahCenter
        Caption = 'DESCRICAO'
      end
      object zrLabelPreco: TZRLabel
        Left = 0
        Top = 2
        Width = 9
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'PRECO'
      end
      object zrLabelQuantidade: TZRLabel
        Left = 14
        Top = 2
        Width = 10
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'QUANTIDADE'
      end
      object zrLabelTotal: TZRLabel
        Left = 29
        Top = 2
        Width = 11
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'TOTAL'
      end
    end
    object zr40ColunasGroupHeader: TZRBand
      Left = 0
      Top = 22
      Width = 40
      Height = 1
      Stretch = False
      Visible = False
      BandType = zbtGroupHeader
      GroupOrder = 0
    end
    object zr40ColunasDetail: TZRBand
      Left = 0
      Top = 23
      Width = 40
      Height = 2
      Stretch = False
      BandType = zbtDetail
      object zrDBCodigo: TZRLabel
        Left = 0
        Top = 0
        Width = 9
        Height = 1
        Caption = 'Codigo'
        Variable = cCODIGO
      end
      object zrDBItemDescricao: TZRLabel
        Left = 11
        Top = 0
        Width = 26
        Height = 1
        Caption = 'Codigo'
        Variable = cDESCRICAO
      end
      object zrLabelSimbolo1: TZRLabel
        Left = 10
        Top = 1
        Width = 3
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = ' X'
      end
      object zrDBPreco: TZRLabel
        Left = 0
        Top = 1
        Width = 9
        Height = 1
        Alignment.X = zawCenter
        Caption = 'Codigo'
        Variable = cPRECO
      end
      object zrDBQuantidade: TZRLabel
        Left = 14
        Top = 1
        Width = 10
        Height = 1
        Alignment.X = zawCenter
        Caption = 'Codigo'
        Variable = cQUANTIDADE
      end
      object zrLabelSimbolo2: TZRLabel
        Left = 25
        Top = 1
        Width = 3
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = ' ='
      end
      object zrDBSubTotalItem: TZRLabel
        Left = 29
        Top = 1
        Width = 11
        Height = 1
        Alignment.X = zawCenter
        Caption = 'Codigo'
        Variable = cTOTAL
      end
    end
    object zr40ColunasDetailFooter: TZRBand
      Left = 0
      Top = 25
      Width = 40
      Height = 1
      Frame.Top = 1
      Stretch = False
      BandType = zbtDetailFooter
    end
    object zr40ColunasFooter: TZRBand
      Left = 0
      Top = 26
      Width = 40
      Height = 11
      Stretch = False
      BandType = zbtFooter
      object ZRTotalLabel4: TZRTotalLabel
        Left = 0
        Top = 0
        Width = 5
        Height = 1
        Alignment.X = zawRight
        Kind = ztkCount
        Level = zr40Colunas
        Variable = cQtdeItens
      end
      object ZRLabel75: TZRLabel
        Left = 6
        Top = 0
        Width = 6
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahBandTop
        Caption = 'itens'
      end
      object ZRLabel77: TZRLabel
        Left = 17
        Top = 0
        Width = 7
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'Total +'
      end
      object zrSumTotalItens: TZRTotalLabel
        Left = 25
        Top = 0
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Kind = ztkSum
        Level = zr40Colunas
        Variable = cTotalGeral
      end
      object ZRLabel78: TZRLabel
        Left = 14
        Top = 1
        Width = 10
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'Desconto -'
      end
      object ZRLabel79: TZRLabel
        Left = 25
        Top = 1
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Caption = 'Codigo'
        Variable = eDESCONTO
      end
      object ZRLabel80: TZRLabel
        Left = 13
        Top = 2
        Width = 11
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'Acrescimo +'
      end
      object ZRLabel81: TZRLabel
        Left = 25
        Top = 2
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Caption = 'Codigo'
        Variable = eOUTRASDESPESAS
      end
      object ZRLabel82: TZRLabel
        Left = 11
        Top = 3
        Width = 13
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'Total Final ='
      end
      object ZRLabel83: TZRLabel
        Left = 25
        Top = 3
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Caption = 'Codigo'
        Variable = cTOTALINVOICE
      end
      object ZRLabel84: TZRLabel
        Left = 0
        Top = 5
        Width = 40
        Height = 1
        Caption = 'Codigo'
        Variable = cOBS
      end
      object ZRLabel85: TZRLabel
        Left = 0
        Top = 7
        Width = 13
        Height = 1
        Caption = 'Codigo'
        Variable = cTIT2_CAMPO01
      end
      object ZRLabel86: TZRLabel
        Left = 0
        Top = 8
        Width = 13
        Height = 1
        Caption = 'Codigo'
        Variable = cTIT2_CAMPO02
      end
      object ZRLabel87: TZRLabel
        Left = 14
        Top = 7
        Width = 26
        Height = 1
        Caption = 'Codigo'
        Variable = eCAMPO01
      end
      object ZRLabel88: TZRLabel
        Left = 14
        Top = 8
        Width = 26
        Height = 1
        Caption = 'Codigo'
        Variable = eCAMPO02
      end
      object zrLabelPlanoPagamento: TZRLabel
        Left = 0
        Top = 10
        Width = 11
        Height = 1
        Alignment.X = zawCenter
        Alignment.Y = zahCenter
        Caption = 'Plano Pgto:'
      end
      object zrDBPlanoPagamento: TZRLabel
        Left = 12
        Top = 10
        Width = 27
        Height = 1
        Caption = 'Codigo'
        Variable = zrv40ColunasPlanoPag
      end
    end
    object zr40ColunasSubDetail: TZRSubDetail
      Left = 0
      Top = 39
      Width = 40
      Height = 1
      DataSet = Q_Parcelas
      Stretch = False
      MasterIndex = 6
      object pPARCELA: TZRField
        Format.Width = 10
        DataField = 'PARCELA'
        DataSet = Q_Parcelas
      end
      object pVALOR: TZRField
        Format.FloatFormat = ffCurrency
        Format.DisplayMask = '##0.00'
        Format.Width = 19
        DataField = 'VALOR'
        DataSet = Q_Parcelas
      end
      object pVENCIMENTO: TZRField
        Format.DisplayMask = 'dd/mm/yyyy'
        Format.Width = 10
        DataField = 'VENCIMENTO'
        DataSet = Q_Parcelas
      end
      object pCOMPRA: TZRField
        Format.Width = 10
        DataField = 'COMPRA'
        DataSet = Q_Parcelas
      end
      object pTITULO: TZRField
        Format.Width = 15
        DataField = 'TITULO'
        DataSet = Q_Parcelas
      end
      object zrDBParcelaTitulo: TZRLabel
        Left = 0
        Top = 0
        Width = 4
        Height = 1
        Caption = 'Codigo'
        Variable = pPARCELA
      end
      object zrDBNumeroTitulo: TZRLabel
        Left = 5
        Top = 0
        Width = 9
        Height = 1
        Alignment.X = zawCenter
        Caption = 'Codigo'
        Variable = pTITULO
      end
      object zrDBVencimentoTitulo: TZRLabel
        Left = 16
        Top = 0
        Width = 11
        Height = 1
        Alignment.X = zawCenter
        Caption = 'Codigo'
        Variable = pVENCIMENTO
      end
      object zrDBValorTitulo: TZRLabel
        Left = 29
        Top = 0
        Width = 10
        Height = 1
        Alignment.X = zawRight
        Caption = 'Codigo'
        Variable = pVALOR
      end
      object zr40ColunasSubDetailColumnHeader: TZRBand
        Left = 0
        Top = 37
        Width = 40
        Height = 2
        Stretch = False
        BandType = zbtColumnHeader
        object ZRLabel91: TZRLabel
          Left = 0
          Top = 0
          Width = 3
          Height = 1
          Alignment.X = zawCenter
          Alignment.Y = zahCenter
          Caption = '#'
        end
        object zrLabelTituloParcela: TZRLabel
          Left = 5
          Top = 0
          Width = 9
          Height = 1
          Alignment.X = zawCenter
          Alignment.Y = zahCenter
          Caption = 'TITULO'
        end
        object zrLabelVencimento: TZRLabel
          Left = 16
          Top = 0
          Width = 11
          Height = 1
          Alignment.X = zawCenter
          Alignment.Y = zahCenter
          Caption = 'VENCIMENTO'
        end
        object zrLabelValorParcela: TZRLabel
          Left = 29
          Top = 0
          Width = 10
          Height = 1
          Alignment.X = zawCenter
          Alignment.Y = zahCenter
          Caption = 'VALOR'
        end
        object zrLabelSeparador: TZRLabel
          Left = 0
          Top = 1
          Width = 40
          Height = 1
          Alignment.X = zawCenter
          Caption = '----------------------------------------'
        end
      end
      object zr40ColunasSubDetailDetailFooter: TZRBand
        Left = 0
        Top = 40
        Width = 40
        Height = 11
        Stretch = False
        BandType = zbtDetailFooter
        object zrLabelTipoMovimento: TZRLabel
          Left = 0
          Top = 1
          Width = 9
          Height = 1
          Alignment.Y = zahCenter
          Caption = 'Operacao:'
        end
        object zrDescTipoMovimento: TZRLabel
          Left = 10
          Top = 1
          Width = 29
          Height = 1
          Caption = 'DescTipoMovimento'
        end
        object zrLabelPontoSubDetail: TZRLabel
          Left = 38
          Top = 9
          Width = 2
          Height = 1
          Alignment.Y = zahCenter
          Caption = ' .'
        end
      end
    end
  end
  object rbInvoice: TppReport
    AutoStop = False
    DataPipeline = dbpInvoice
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Units = utScreenPixels
    DeviceType = 'Screen'
    Left = 591
    Top = 24
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpInvoice'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 82021
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Color = clGray
        Shape = stRoundRect
        mmHeight = 24606
        mmLeft = 5292
        mmTop = 42598
        mmWidth = 109273
        BandType = 0
      end
      object rbrgCabecalho: TppRegion
        UserName = 'rbrgCabecalho'
        Brush.Style = bsClear
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 25929
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Color = clWhite
          Position = lpLeft
          Weight = 0.75
          mmHeight = 26458
          mmLeft = 1587
          mmTop = 1323
          mmWidth = 3175
          BandType = 0
        end
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DATA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 32544
        mmWidth = 23019
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Pen.Color = clGray
        mmHeight = 3969
        mmLeft = 9790
        mmTop = 40481
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 10583
        mmTop = 40746
        mmWidth = 22754
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clGray
        Pen.Color = clGray
        Pen.Style = psClear
        mmHeight = 7144
        mmLeft = 157957
        mmTop = 30956
        mmWidth = 40217
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Pen.Color = clGray
        mmHeight = 7144
        mmLeft = 157163
        mmTop = 30163
        mmWidth = 40217
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText2GetText
        DataField = 'INVOICE'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 5821
        mmLeft = 157692
        mmTop = 30692
        mmWidth = 39158
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'NOME'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 46038
        mmWidth = 101071
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'ENDERECO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 51065
        mmWidth = 101071
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CIDADEUFZIP'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 56092
        mmWidth = 100806
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        OnGetText = ppDBText13GetText
        DataField = 'FONE1'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 9525
        mmTop = 61383
        mmWidth = 40217
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        OnGetText = ppDBText14GetText
        DataField = 'FAX'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 51065
        mmTop = 61383
        mmWidth = 59796
        BandType = 0
      end
      object dfTITData: TppDBText
        UserName = 'dfTITData'
        DataField = 'TIT2_DATA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 32544
        mmWidth = 17198
        BandType = 0
      end
      object rbrgCampo02: TppRegion
        UserName = 'Region2'
        Pen.Style = psClear
        mmHeight = 13229
        mmLeft = 33073
        mmTop = 67733
        mmWidth = 26723
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape15: TppShape
          UserName = 'Shape15'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 7938
          mmLeft = 34131
          mmTop = 71437
          mmWidth = 24871
          BandType = 0
        end
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          DataField = 'CAMPO02'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 35719
          mmTop = 73289
          mmWidth = 22225
          BandType = 0
        end
        object dfTITCampo2: TppDBText
          UserName = 'DBText301'
          AutoSize = True
          DataField = 'TIT2_CAMPO2'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 36513
          mmTop = 69586
          mmWidth = 19346
          BandType = 0
        end
      end
      object rbrgCampo03: TppRegion
        UserName = 'Region3'
        Pen.Style = psClear
        mmHeight = 12965
        mmLeft = 60061
        mmTop = 67998
        mmWidth = 27252
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape17: TppShape
          UserName = 'Shape17'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 7938
          mmLeft = 60854
          mmTop = 71702
          mmWidth = 24871
          BandType = 0
        end
        object ppDBText33: TppDBText
          UserName = 'DBText33'
          DataField = 'CAMPO03'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 62442
          mmTop = 73554
          mmWidth = 22225
          BandType = 0
        end
        object dfTITCampo3: TppDBText
          UserName = 'dfTITCampo3'
          AutoSize = True
          DataField = 'TIT2_CAMPO3'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 63500
          mmTop = 69850
          mmWidth = 19346
          BandType = 0
        end
      end
      object rbrgCampo04: TppRegion
        UserName = 'Region4'
        Pen.Style = psClear
        mmHeight = 12700
        mmLeft = 87577
        mmTop = 67998
        mmWidth = 26723
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape19: TppShape
          UserName = 'Shape19'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 7938
          mmLeft = 88371
          mmTop = 71702
          mmWidth = 24871
          BandType = 0
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'CAMPO04'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 89958
          mmTop = 73554
          mmWidth = 22225
          BandType = 0
        end
        object dfTITCampo4: TppDBText
          UserName = 'dfTITCampo4'
          AutoSize = True
          DataField = 'TIT2_CAMPO4'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 91017
          mmTop = 69850
          mmWidth = 19346
          BandType = 0
        end
      end
      object rbrgCampo01: TppRegion
        UserName = 'Region5'
        Pen.Style = psClear
        mmHeight = 12965
        mmLeft = 5292
        mmTop = 67733
        mmWidth = 27252
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape13: TppShape
          UserName = 'Shape13'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 7938
          mmLeft = 6351
          mmTop = 71437
          mmWidth = 24871
          BandType = 0
        end
        object ppDBText29: TppDBText
          UserName = 'DBText29'
          DataField = 'CAMPO01'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 7938
          mmTop = 73289
          mmWidth = 22225
          BandType = 0
        end
        object dfTITCampo1: TppDBText
          UserName = 'dfTITCampo1'
          AutoSize = True
          DataField = 'TIT2_CAMPO1'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 8731
          mmTop = 69586
          mmWidth = 19346
          BandType = 0
        end
      end
      object dfTITTipoMov: TppDBText
        UserName = 'dfTITTipoMov'
        DataField = 'DESCRICAO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 5821
        mmLeft = 69056
        mmTop = 29104
        mmWidth = 74877
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 32544
        mmWidth = 1323
        BandType = 0
      end
      object ppStatus: TppDBText
        UserName = 'Status'
        OnGetText = ppStatusGetText
        DataField = 'STATUS'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 69056
        mmTop = 34925
        mmWidth = 74877
        BandType = 0
      end
      object regInfoEntrega: TppRegion
        UserName = 'regInfoEntrega'
        Caption = 'regInfoEntrega'
        Pen.Style = psClear
        mmHeight = 28310
        mmLeft = 115623
        mmTop = 39158
        mmWidth = 86784
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape23: TppShape
          UserName = 'Shape23'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 7938
          mmLeft = 117740
          mmTop = 57943
          mmWidth = 29633
          BandType = 0
        end
        object dfTITDataEnt: TppDBText
          UserName = 'DBText303'
          AutoSize = True
          DataField = 'TIT2_DATAENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 120121
          mmTop = 56621
          mmWidth = 28109
          BandType = 0
        end
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          DataField = 'DATAENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 119063
          mmTop = 60324
          mmWidth = 26988
          BandType = 0
        end
        object ppShape25: TppShape
          UserName = 'Shape25'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 7938
          mmLeft = 149490
          mmTop = 57943
          mmWidth = 50800
          BandType = 0
        end
        object dfTITTipoEnt: TppDBText
          UserName = 'dfTITTipoEnt'
          AutoSize = True
          DataField = 'TIT2_TIPOENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 151871
          mmTop = 56621
          mmWidth = 27601
          BandType = 0
        end
        object ppDBText43: TppDBText
          UserName = 'DBText43'
          DataField = 'TIPOENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 151077
          mmTop = 60324
          mmWidth = 48154
          BandType = 0
        end
        object ppShape21: TppShape
          UserName = 'Shape21'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 12171
          mmLeft = 117740
          mmTop = 43655
          mmWidth = 82550
          BandType = 0
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          DataField = 'ENDERECOENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4498
          mmLeft = 119327
          mmTop = 45243
          mmWidth = 78581
          BandType = 0
        end
        object dfTITLocEnt: TppDBText
          UserName = 'DBText302'
          AutoSize = True
          DataField = 'TIT2_LOCALENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 120121
          mmTop = 41540
          mmWidth = 30607
          BandType = 0
        end
        object ppDBText41: TppDBText
          UserName = 'DBText41'
          DataField = 'CIDADEUFZIPENTREGA'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 119327
          mmTop = 50270
          mmWidth = 78581
          BandType = 0
        end
      end
      object lbCancelado: TppLabel
        UserName = 'lbCancelado'
        Caption = 'Cancelado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 90752
        mmTop = 38629
        mmWidth = 32808
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object srItens: TppSubReport
        UserName = 'srItens'
        ExpandAll = True
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbpInvItens'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 199761
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpInvItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Units = utScreenPixels
          Left = 240
          Top = 208
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpInvItens'
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object rbshItens: TppShape
              UserName = 'rbshItens'
              Brush.Color = 15724527
              Pen.Color = 15724527
              Pen.Style = psClear
              mmHeight = 4233
              mmLeft = 2117
              mmTop = 0
              mmWidth = 200025
              BandType = 4
            end
            object lnCodigo: TppLine
              UserName = 'lnCodigo'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 2381
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object lnSubTotal: TppLine
              UserName = 'lnSubTotal'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 125942
              mmTop = 0
              mmWidth = 1058
              BandType = 4
            end
            object lnColuna1: TppLine
              UserName = 'lnColuna1'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 157427
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object lnCliente: TppLine
              UserName = 'lnCliente'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 136525
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object lnPreco: TppLine
              UserName = 'lnPreco'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 105040
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object dbtCliente: TppDBText
              UserName = 'lbFuncionario2'
              DataField = 'NOMECLIENTE'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 137054
              mmTop = 265
              mmWidth = 6350
              BandType = 4
            end
            object dbtCodigo: TppDBText
              UserName = 'lbCodigo1'
              OnGetText = dbtCodigoGetText
              DataField = 'CODIGO'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 2910
              mmTop = 265
              mmWidth = 12435
              BandType = 4
            end
            object dbtDescricao: TppDBText
              UserName = 'dbtDescricao'
              DataField = 'ITEMDESC'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 16404
              mmTop = 265
              mmWidth = 41010
              BandType = 4
            end
            object dbtUnidade: TppDBText
              UserName = 'dbtUnidade'
              DataField = 'UNIDADE'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 78317
              mmTop = 265
              mmWidth = 6350
              BandType = 4
            end
            object dbtQuantidade: TppDBText
              OnPrint = dbtQuantidadePrint
              UserName = 'lbQuantidade1'
              DataField = 'QUANTIDADE'
              DataPipeline = dbpInvItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 85990
              mmTop = 265
              mmWidth = 8467
              BandType = 4
            end
            object dbtPreco: TppDBText
              UserName = 'dbtPreco'
              OnGetText = dbtPrecoGetText
              DataField = 'PRECO'
              DataPipeline = dbpInvItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 105834
              mmTop = 265
              mmWidth = 8996
              BandType = 4
            end
            object dbtSubTotal: TppDBText
              UserName = 'lbSubTotal1'
              OnGetText = dbtPrecoGetText
              DataField = 'TOTAL'
              DataPipeline = dbpInvItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 127000
              mmTop = 265
              mmWidth = 8731
              BandType = 4
            end
            object dbtColuna1: TppDBText
              UserName = 'dbtColuna1'
              DataField = 'QTDRECEBIDA'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 157957
              mmTop = 265
              mmWidth = 7673
              BandType = 4
            end
            object dbtColuna2: TppDBText
              UserName = 'dbtColuna2'
              DataField = 'QUANTIDADEVOLUME'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 167217
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object dbtColuna3: TppDBText
              UserName = 'dbtColuna3'
              DataField = 'COLUNA3'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 176213
              mmTop = 265
              mmWidth = 8202
              BandType = 4
            end
            object dbtColuna4: TppDBText
              UserName = 'dbtColuna4'
              DataField = 'COLUNA4'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 185738
              mmTop = 265
              mmWidth = 7938
              BandType = 4
            end
            object lnDescricao: TppLine
              UserName = 'lnDescricao'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 15610
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object lnUnidade: TppLine
              UserName = 'lnUnidade'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 77523
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object lnQuantidade: TppLine
              UserName = 'lnQuantidade'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 85196
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object lnColuna2: TppLine
              UserName = 'lnColuna2'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 166159
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object lnColuna3: TppLine
              UserName = 'lnColuna3'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 175155
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object lnColuna4: TppLine
              UserName = 'lnColuna4'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 184944
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object dbtReferencia: TppDBText
              UserName = 'dbtReferencia'
              CharWrap = True
              OnGetText = dbtReferenciaGetText
              DataField = 'REFERENCIA'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3704
              mmLeft = 58473
              mmTop = 265
              mmWidth = 33867
              BandType = 4
            end
            object lnReferencia: TppLine
              UserName = 'lnFuncionario1'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 57679
              mmTop = 0
              mmWidth = 2646
              BandType = 4
            end
            object dbtQtdRecebida: TppDBText
              UserName = 'dbtQtdRecebida'
              DataField = 'QTDRECEBIDA'
              DataPipeline = dbpInvItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 95779
              mmTop = 265
              mmWidth = 8996
              BandType = 4
            end
            object lnQtdRecebida: TppLine
              UserName = 'lnFuncionario2'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 94986
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object lnSituacao: TppLine
              UserName = 'lnCliente1'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 151077
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object dbtSituacao: TppDBText
              UserName = 'dbtSituacao'
              DataField = 'SITUACAO'
              DataPipeline = dbpInvItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 152400
              mmTop = 265
              mmWidth = 4498
              BandType = 4
            end
            object subComposicaoItens: TppSubReport
              UserName = 'subComposicaoItens'
              ExpandAll = False
              NewPrintJob = False
              TraverseAllData = False
              DataPipelineName = 'dbCompItens'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 4498
              mmWidth = 203200
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport3: TppChildReport
                AutoStop = False
                DataPipeline = dbCompItens
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'Carta'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 279401
                PrinterSetup.mmPaperWidth = 215900
                PrinterSetup.PaperSize = 1
                Units = utScreenPixels
                Version = '6.02'
                mmColumnWidth = 0
                DataPipelineName = 'dbCompItens'
                object ppTitleBand1: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand4: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3704
                  mmPrintPosition = 0
                  object dbtDescComposicao: TppDBText
                    UserName = 'dbtDescComposicao'
                    DataField = 'DESCRICAOCOMPRA'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 28046
                    mmTop = 0
                    mmWidth = 55298
                    BandType = 4
                  end
                  object dbtQtdeComposicao: TppDBText
                    UserName = 'dbtQtdeComposicao'
                    DataField = 'QUANTIDADE'
                    DataPipeline = dbCompItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbCompItens'
                    mmHeight = 3704
                    mmLeft = 11906
                    mmTop = 0
                    mmWidth = 8202
                    BandType = 4
                  end
                  object dbtUnidComposicao: TppDBText
                    UserName = 'dbtQtdeComposicao1'
                    DataField = 'UNIDADE'
                    DataPipeline = dbCompItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'dbCompItens'
                    mmHeight = 3704
                    mmLeft = 20638
                    mmTop = 0
                    mmWidth = 6350
                    BandType = 4
                  end
                end
                object ppSummaryBand2: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
              end
            end
            object lnIPI: TppLine
              UserName = 'lnCliente2'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 143669
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object dbtIPI: TppDBText
              UserName = 'dbtIPI'
              OnGetText = dbtPrecoGetText
              DataField = 'IPI'
              DataPipeline = dbpInvItens
              DisplayFormat = '0.00%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 144727
              mmTop = 265
              mmWidth = 5556
              BandType = 4
            end
            object lnDesconto: TppLine
              UserName = 'lnPreco1'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 115359
              mmTop = 0
              mmWidth = 1323
              BandType = 4
            end
            object dbtDesconto: TppDBText
              UserName = 'dbtPreco1'
              OnGetText = dbtPrecoGetText
              DataField = 'DESCONTO'
              DataPipeline = dbpInvItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3881
              mmLeft = 116417
              mmTop = 265
              mmWidth = 8731
              BandType = 4
            end
          end
        end
      end
    end
    object rbRodape: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object rbrgSumario: TppRegion
        UserName = 'Region6'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 15081
        mmLeft = 0
        mmTop = 0
        mmWidth = 203730
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 11113
          mmLeft = 2117
          mmTop = 2910
          mmWidth = 198173
          BandType = 8
        end
        object dfTITMensagem: TppDBText
          UserName = 'dfTITMensagem'
          AutoSize = True
          DataField = 'TIT2_MENSAGEM'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 4233
          mmTop = 1058
          mmWidth = 31073
          BandType = 8
        end
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'OBS'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 8202
          mmLeft = 3440
          mmTop = 5556
          mmWidth = 194998
          BandType = 8
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 206375
      object rbsrParcelas: TppSubReport
        UserName = 'rbsrParcelas'
        ExpandAll = True
        NewPrintJob = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'dbpParcelas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 148167
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          Columns = 3
          DataPipeline = dbpParcelas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Units = utScreenPixels
          Left = 160
          Top = 112
          Version = '6.02'
          mmColumnWidth = 48948
          DataPipelineName = 'dbpParcelas'
          object ppColumnHeaderBand1: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppShape12: TppShape
              UserName = 'Shape12'
              Brush.Color = 16053492
              Pen.Color = clGray
              mmHeight = 5292
              mmLeft = 2117
              mmTop = 0
              mmWidth = 46567
              BandType = 2
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              AutoSize = False
              Caption = '#'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 3440
              mmTop = 794
              mmWidth = 4233
              BandType = 2
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 28840
              mmTop = 794
              mmWidth = 19315
              BandType = 2
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 5292
              mmLeft = 8731
              mmTop = 0
              mmWidth = 2117
              BandType = 2
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 9260
              mmTop = 794
              mmWidth = 19050
              BandType = 2
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 5027
              mmLeft = 28310
              mmTop = 265
              mmWidth = 4763
              BandType = 2
            end
          end
          object ppDetailBand3: TppDetailBand
            Save = True
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'PARCELA'
              DataPipeline = dbpParcelas
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbpParcelas'
              mmHeight = 3704
              mmLeft = 2646
              mmTop = 265
              mmWidth = 5821
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'VENCIMENTO'
              DataPipeline = dbpParcelas
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpParcelas'
              mmHeight = 3704
              mmLeft = 9525
              mmTop = 265
              mmWidth = 17992
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'VALOR'
              DataPipeline = dbpParcelas
              DisplayFormat = '#,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpParcelas'
              mmHeight = 3704
              mmLeft = 29369
              mmTop = 265
              mmWidth = 18521
              BandType = 4
            end
            object ppLine21: TppLine
              UserName = 'Line201'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 28310
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 8731
              mmTop = 0
              mmWidth = 1852
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 2117
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 47096
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Pen.Color = clGray
              Position = lpBottom
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 2381
              mmTop = 2646
              mmWidth = 46038
              BandType = 4
            end
          end
          object ppColumnFooterBand1: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object rgDesconto: TppRegion
        UserName = 'Region9'
        Brush.Style = bsClear
        Pen.Color = clGray
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 151342
        mmTop = 0
        mmWidth = 50271
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText5: TppDBText
          UserName = 'dfTITTotal1'
          DataField = 'TIT2_DESCONTOS'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 152929
          mmTop = 1058
          mmWidth = 22754
          BandType = 7
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'DESCONTO'
          DataPipeline = dbpInvoice
          DisplayFormat = '#,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 177007
          mmTop = 1058
          mmWidth = 23019
          BandType = 7
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 176213
          mmTop = 794
          mmWidth = 1852
          BandType = 7
        end
      end
      object rgFrete: TppRegion
        UserName = 'Region10'
        Brush.Style = bsClear
        Pen.Color = clGray
        ShiftRelativeTo = rgDesconto
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 151342
        mmTop = 5556
        mmWidth = 50271
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'TIT2_FRETE'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 152665
          mmTop = 6615
          mmWidth = 23019
          BandType = 7
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          DataField = 'FRETE'
          DataPipeline = dbpInvoice
          DisplayFormat = '#,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 177006
          mmTop = 6614
          mmWidth = 23019
          BandType = 7
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 176213
          mmTop = 6350
          mmWidth = 1852
          BandType = 7
        end
      end
      object rgJuros: TppRegion
        UserName = 'Region11'
        Brush.Style = bsClear
        Pen.Color = clGray
        ShiftRelativeTo = rgFrete
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 151342
        mmTop = 11113
        mmWidth = 50271
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'TIT2_JUROS'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 152665
          mmTop = 12171
          mmWidth = 23019
          BandType = 7
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'JUROS'
          DataPipeline = dbpInvoice
          DisplayFormat = '#,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 177007
          mmTop = 12171
          mmWidth = 23019
          BandType = 7
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 176213
          mmTop = 11906
          mmWidth = 1852
          BandType = 7
        end
      end
      object rgDespesas: TppRegion
        UserName = 'Region101'
        Brush.Style = bsClear
        Pen.Color = clGray
        ShiftRelativeTo = rgJuros
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 151342
        mmTop = 16669
        mmWidth = 50271
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'TIT2_DESPESAS'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 152665
          mmTop = 17727
          mmWidth = 23019
          BandType = 7
        end
        object ppDBText21: TppDBText
          UserName = 'DBText21'
          DataField = 'OUTRASDESPESAS'
          DataPipeline = dbpInvoice
          DisplayFormat = '#,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 177007
          mmTop = 17727
          mmWidth = 23019
          BandType = 7
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 176213
          mmTop = 17463
          mmWidth = 1852
          BandType = 7
        end
      end
      object rgTotalInvoice: TppRegion
        UserName = 'Region13'
        Brush.Style = bsClear
        Pen.Style = psClear
        Transparent = True
        mmHeight = 8996
        mmLeft = 150813
        mmTop = 28840
        mmWidth = 52123
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape16'
          Brush.Color = clGray
          Pen.Color = clGray
          Pen.Style = psClear
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 152401
          mmTop = 30692
          mmWidth = 49742
          BandType = 7
        end
        object ppShape18: TppShape
          UserName = 'Shape18'
          Brush.Color = 16053492
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 151872
          mmTop = 30163
          mmWidth = 49477
          BandType = 7
        end
        object dfTITTotal: TppDBText
          UserName = 'dfTITTotal'
          DataField = 'TIT2_TOTALFINAL'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 152930
          mmTop = 30957
          mmWidth = 23019
          BandType = 7
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          OnGetText = dbtPrecoGetText
          DataField = 'TOTAL'
          DataPipeline = dbpInvoice
          DisplayFormat = '#0.00,'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 176478
          mmTop = 30957
          mmWidth = 24077
          BandType = 7
        end
      end
      object rgValorIPI: TppRegion
        UserName = 'Region1'
        Brush.Style = bsClear
        Caption = 'Region1'
        Pen.Color = clGray
        ShiftRelativeTo = rgDespesas
        Stretch = True
        Transparent = True
        mmHeight = 6350
        mmLeft = 151342
        mmTop = 22754
        mmWidth = 50271
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText201'
          DataField = 'TIT2_IPI'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 151607
          mmTop = 23813
          mmWidth = 24077
          BandType = 7
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          OnGetText = dbtPrecoGetText
          DataField = 'VALORIPI'
          DataPipeline = dbpInvoice
          DisplayFormat = '#,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 4233
          mmLeft = 177007
          mmTop = 23812
          mmWidth = 23019
          BandType = 7
        end
        object ppLine6: TppLine
          UserName = 'Line101'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4763
          mmLeft = 176213
          mmTop = 23283
          mmWidth = 1852
          BandType = 7
        end
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 200819
      mmPrintPosition = 0
      object shpIPI: TppShape
        Tag = 21
        UserName = 'shpIPI'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 146050
        mmTop = 76200
        mmWidth = 9790
        BandType = 9
      end
      object shpCliente: TppShape
        Tag = 21
        UserName = 'shpTax1'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 136525
        mmTop = 76200
        mmWidth = 9790
        BandType = 9
      end
      object shpQtdRecebida: TppShape
        Tag = 21
        UserName = 'shpQuantidade1'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 92075
        mmTop = 76200
        mmWidth = 13494
        BandType = 9
      end
      object shpColuna1: TppShape
        Tag = 21
        UserName = 'shpColuna1'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 160073
        mmTop = 76200
        mmWidth = 16140
        BandType = 9
      end
      object shpColuna2: TppShape
        Tag = 21
        UserName = 'shpColuna2'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 175948
        mmTop = 76200
        mmWidth = 10583
        BandType = 9
      end
      object shpColuna4: TppShape
        Tag = 21
        UserName = 'shpColuna4'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 194205
        mmTop = 76200
        mmWidth = 7673
        BandType = 9
      end
      object shpColuna3: TppShape
        Tag = 21
        UserName = 'shpColuna3'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 186267
        mmTop = 76200
        mmWidth = 8202
        BandType = 9
      end
      object shpUnidade: TppShape
        Tag = 21
        UserName = 'Shape101'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 77258
        mmTop = 76200
        mmWidth = 5292
        BandType = 9
      end
      object shpSubtotal: TppShape
        Tag = 21
        UserName = 'shpSubtotal'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 124354
        mmTop = 76200
        mmWidth = 11906
        BandType = 9
      end
      object shpQuantidade: TppShape
        Tag = 21
        UserName = 'shpQuantidade'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 82286
        mmTop = 76200
        mmWidth = 10054
        BandType = 9
      end
      object shpReferencia: TppShape
        Tag = 21
        UserName = 'shpReferencia'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 57415
        mmTop = 76200
        mmWidth = 20108
        BandType = 9
      end
      object shpCodigo: TppShape
        Tag = 21
        UserName = 'shpCodigo'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 1588
        mmTop = 76200
        mmWidth = 12965
        BandType = 9
      end
      object lbCodigo: TppDBText
        Tag = 20
        UserName = 'lbCodigo'
        OnGetText = lbCodigoGetText
        DataField = 'TIT2_CODIGO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 76994
        mmWidth = 12171
        BandType = 9
      end
      object lbReferencia: TppDBText
        Tag = 20
        UserName = 'lbReferencia'
        DataField = 'TIT2_REFERENCIA'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 57944
        mmTop = 76994
        mmWidth = 19050
        BandType = 9
      end
      object lbQuantidade: TppDBText
        Tag = 20
        UserName = 'lbQuantidade'
        DataField = 'TIT2_QUANTIDADE'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 76994
        mmWidth = 8996
        BandType = 9
      end
      object lbSubTotal: TppDBText
        Tag = 20
        UserName = 'lbSubTotal'
        DataField = 'TIT2_SUBTOTAL'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 124090
        mmTop = 76994
        mmWidth = 12171
        BandType = 9
      end
      object lbColuna1: TppDBText
        Tag = 20
        UserName = 'lbColuna1'
        DataField = 'TIT2_COLUNA1'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 160867
        mmTop = 76994
        mmWidth = 14552
        BandType = 9
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clGray
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 1588
        mmTop = 81756
        mmWidth = 200290
        BandType = 9
      end
      object shpDescricao: TppShape
        Tag = 21
        UserName = 'shpDescricao'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 14023
        mmTop = 76200
        mmWidth = 43656
        BandType = 9
      end
      object lbDescricao: TppDBText
        Tag = 20
        UserName = 'lbFuncionario1'
        DataField = 'TIT2_DESCRICAO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 76994
        mmWidth = 41275
        BandType = 9
      end
      object lbUnidade: TppDBText
        Tag = 20
        UserName = 'dfTITQtd1'
        DataField = 'TIT2_UNIDADE'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 76994
        mmWidth = 5292
        BandType = 9
      end
      object shpPreco: TppShape
        Tag = 21
        UserName = 'shpPreco'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 105304
        mmTop = 76200
        mmWidth = 9260
        BandType = 9
      end
      object lbPreco: TppDBText
        Tag = 20
        UserName = 'dfTITQtd2'
        DataField = 'TIT2_PRECO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 105834
        mmTop = 76994
        mmWidth = 7938
        BandType = 9
      end
      object lbColuna2: TppDBText
        Tag = 20
        UserName = 'dfTITSubTotal1'
        DataField = 'TIT2_COLUNA2'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 76994
        mmWidth = 9525
        BandType = 9
      end
      object lbColuna3: TppDBText
        Tag = 20
        UserName = 'lbColuna3'
        DataField = 'TIT2_COLUNA3'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 76994
        mmWidth = 6879
        BandType = 9
      end
      object lbColuna4: TppDBText
        Tag = 20
        UserName = 'lbColuna4'
        DataField = 'TIT2_COLUNA4'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 194998
        mmTop = 76994
        mmWidth = 6350
        BandType = 9
      end
      object lbQtdRecebida: TppDBText
        Tag = 20
        UserName = 'lbQuantidade2'
        DataField = 'TIT2_QTDRECEBIDA'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 92604
        mmTop = 76994
        mmWidth = 12435
        BandType = 9
      end
      object lbCliente: TppDBText
        Tag = 20
        UserName = 'lbCliente'
        DataField = 'TIT2_FUNCIONARIO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 137054
        mmTop = 76994
        mmWidth = 8467
        BandType = 9
      end
      object shpSituacao: TppShape
        Tag = 21
        UserName = 'shpSituacao'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 155575
        mmTop = 76200
        mmWidth = 4763
        BandType = 9
      end
      object lbSituacao: TppDBText
        Tag = 20
        UserName = 'lbSituacao'
        DataField = 'TIT2_SITUACAO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 76994
        mmWidth = 4233
        BandType = 9
      end
      object regTermo: TppRegion
        UserName = 'regTermo'
        Caption = 'regTermo'
        Pen.Style = psClear
        mmHeight = 9260
        mmLeft = 265
        mmTop = 191559
        mmWidth = 100277
        BandType = 9
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape5: TppShape
          OnPrint = ppDBText3Print
          UserName = 'Shape5'
          Pen.Color = clGray
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 1588
          mmTop = 193940
          mmWidth = 97631
          BandType = 9
        end
        object ppDBText3: TppDBText
          OnPrint = ppDBText3Print
          UserName = 'DBText3'
          DataField = 'PLANOPAG'
          DataPipeline = dbpInvoice
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3969
          mmLeft = 3705
          mmTop = 195527
          mmWidth = 93663
          BandType = 9
        end
        object dfTITTermo: TppDBText
          OnPrint = ppDBText3Print
          UserName = 'dfTITTermo'
          AutoSize = True
          DataField = 'TIT2_TERMOS'
          DataPipeline = dbpInvoice
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          DataPipelineName = 'dbpInvoice'
          mmHeight = 3387
          mmLeft = 3969
          mmTop = 192353
          mmWidth = 19473
          BandType = 9
        end
      end
      object lbIPI: TppDBText
        Tag = 20
        UserName = 'lbIPI'
        DataField = 'TIT2_IPI'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 76994
        mmWidth = 8467
        BandType = 9
      end
      object shpDesconto: TppShape
        Tag = 21
        UserName = 'shpPreco2'
        Brush.Style = bsClear
        Pen.Color = clGray
        mmHeight = 115359
        mmLeft = 114300
        mmTop = 76200
        mmWidth = 10319
        BandType = 9
      end
      object lbDesconto: TppDBText
        Tag = 20
        UserName = 'lbDesconto'
        DataField = 'TIT_DESCONTO'
        DataPipeline = dbpInvoice
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 76994
        mmWidth = 8996
        BandType = 9
      end
      object shpTotalItem: TppShape
        OnPrint = dbtTotalItemPrint
        UserName = 'shpPreco1'
        Brush.Color = 15658734
        Pen.Color = clGray
        mmHeight = 5027
        mmLeft = 124090
        mmTop = 192088
        mmWidth = 30956
        BandType = 9
      end
      object dbtTotalItem: TppDBCalc
        OnPrint = dbtTotalItemPrint
        UserName = 'dbtTotalItem'
        OnGetText = dbtPrecoGetText
        DataField = 'TOTALITENS'
        DataPipeline = dbpInvoice
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3895
        mmLeft = 124619
        mmTop = 192088
        mmWidth = 29369
        BandType = 9
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
  end
  object Q_InvoiceDS: TDataSource
    DataSet = Q_Invoice
    Left = 24
    Top = 77
  end
  object Q_Invoice: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select   s.Entrada, '
      '             s.numero as invoice, '
      '             s.data, '
      '             s.total, '
      '             s.situacao,'
      '             s.dataentrega, '
      '             s.PrevisaoEntrega,'
      '             fe.enderecoentrega, '
      '             s.desconto,'
      '             s.imposto,'
      '             s.frete,'
      '             s.outrasdespesas,'
      '             s.juros, s.totalitens,'
      '             s.status,'
      '             s.impresso,'
      '             s.CIF_FOB as TIPOFRETE,'
      '             s.placaveic,'
      '             s.transportadora,'
      '             s.DESCESPECIE,'
      '             s.DESCMARCA,'
      '             s.DESCNUMERO,'
      '             f.cpf_cnpj,'
      '             f.codigo as codigocliente,'
      '             f.inscricao_est,'
      '             f.razao,'
      '             f.CEP,'
      '             f.CIDADE,'
      '             f.UF,'
      
        '             '#39'Cep: '#39' || fe.cepentrega || '#39' - '#39' || fe.cidadeentre' +
        'ga || '#39' - '#39'||fe.ufentrega as cidadeufzipentrega, '
      '             te.descricao as tipoentrega,'
      '             f.fone1, f.fax, f.bairro,'
      '             s.campo01, s.campo02, s.campo03, s.campo04,'
      '             pp.descricao as planopag,'
      '             s.obs, '
      '             f.nome, '
      '             f.endereco,'
      
        '             f.bairro || '#39' Cep: '#39'||f.cep||'#39' - '#39'||f.cidade||'#39' - '#39 +
        '||f.uf as cidadeufzip, '
      '             tm.*,'
      '             tp.tipoorigem,'
      '             s.cfopentrada as cfopnota,'
      '             s.serienota,'
      '             s.uforigem as ufdestino,'
      '             s.basecalcicms,'
      '             s.valoricms,'
      '             s.valoripi,'
      '             s.basecalcsubst,'
      '             s.valoricmssubst, '
      '             s.valorseguro,'
      '             s.pesobruto,'
      '             s.pesoliquido,'
      '             s.aliqicmscompra as aliqicmsvenda,'
      '             s.valorisentas,'
      '             s.possuiicms,'
      '             s.contabilizaicms,'
      '             s.modelo,'
      '             s.valoroutrasicms,'
      '             s.valorisentasipi,'
      '             s.valoroutrasipi,'
      '             s.volumes,'
      '             tem.Arquivo,'
      '             transp.nome as transp_nome,'
      '             transp.endereco as transp_endereco,'
      '             transp.bairro as transp_bairro,'
      '             transp.cidade as transp_cidade,'
      '             transp.uf as transp_uf,'
      '             transp.cpf_cnpj as transp_cpf_cnpj,'
      '             transp.inscricao_est as transp_inscricao_est,'
      '             ven.Descricao as VENDEDOR,'
      '             ven.Codigo as CODIGOVENDEDOR,'
      '             temped.arquivo as ArquivoTemplate,'
      '            '#39'Desconto'#39' as TIT_DESCONTO'
      'From Entradas s'
      'Left Join TiposMovimento tm On s.tipomovimento=tm.tipomovimento'
      'Left Join TiposPadrao tp On tm.tipopadrao = tp.tipopadrao'
      'Left Join Favorecidos f On s.favorecido=f.favorecido'
      'Left Join Favorecidosentrega fe On s.localentrega=fe.entrega'
      
        'Left Join PlanosPagamento pp On s.planopagamento=pp.planopagamen' +
        'to'
      'Left Join TiposEntrega te On s.tipoentrega=te.tipoentrega'
      'Left Join Templates tem on tm.templatenotafiscal = tem.template'
      'Left Join Templates temped on tm.template = temped.template'
      
        'Left Join Favorecidos transp on transp.favorecido = s.transporta' +
        'dora'
      'Left Join fabricantes Ven on Ven.fabricante = s.Vendedor'
      'Where s.Entrada =:Entrada')
    Left = 24
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Entrada'
        ParamType = ptUnknown
      end>
    object Q_InvoiceINVOICE: TIBStringField
      FieldName = 'INVOICE'
      Size = 12
    end
    object Q_InvoiceDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_InvoiceSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object Q_InvoiceDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object Q_InvoiceENDERECOENTREGA: TIBStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 40
    end
    object Q_InvoiceCIDADEUFZIPENTREGA: TIBStringField
      DisplayWidth = 53
      FieldName = 'CIDADEUFZIPENTREGA'
      Size = 53
    end
    object Q_InvoiceTIPOENTREGA: TIBStringField
      FieldName = 'TIPOENTREGA'
      Size = 30
    end
    object Q_InvoiceFONE1: TIBStringField
      FieldName = 'FONE1'
    end
    object Q_InvoiceFAX: TIBStringField
      FieldName = 'FAX'
    end
    object Q_InvoiceCAMPO01: TIBStringField
      FieldName = 'CAMPO01'
      Size = 50
    end
    object Q_InvoiceCAMPO02: TIBStringField
      FieldName = 'CAMPO02'
      Size = 50
    end
    object Q_InvoiceCAMPO03: TIBStringField
      FieldName = 'CAMPO03'
      Size = 50
    end
    object Q_InvoiceCAMPO04: TIBStringField
      FieldName = 'CAMPO04'
      Size = 50
    end
    object Q_InvoicePLANOPAG: TIBStringField
      FieldName = 'PLANOPAG'
      Size = 30
    end
    object Q_InvoiceOBS: TIBStringField
      FieldName = 'OBS'
      Size = 255
    end
    object Q_InvoiceNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_InvoiceENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object Q_InvoiceCIDADEUFZIP: TIBStringField
      DisplayWidth = 100
      FieldName = 'CIDADEUFZIP'
      Size = 100
    end
    object Q_InvoiceTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object Q_InvoiceDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Q_InvoiceTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Q_InvoiceBAIXAESTOQUE: TIBStringField
      FieldName = 'BAIXAESTOQUE'
      Size = 1
    end
    object Q_InvoiceCALCCOMISSAO: TIBStringField
      FieldName = 'CALCCOMISSAO'
      Size = 1
    end
    object Q_InvoicePOSSUIENTREGA: TIBStringField
      FieldName = 'POSSUIENTREGA'
      Size = 1
    end
    object Q_InvoiceBLOQUEARSEATRASADO: TIBStringField
      FieldName = 'BLOQUEARSEATRASADO'
      Size = 1
    end
    object Q_InvoiceBLOQUEARPORSITUACAO: TIBStringField
      FieldName = 'BLOQUEARPORSITUACAO'
      Size = 1
    end
    object Q_InvoiceBLOQUEARPORESTOQUE: TIBStringField
      FieldName = 'BLOQUEARPORESTOQUE'
      Size = 1
    end
    object Q_InvoiceLIMITEFAVORECIDO: TIBStringField
      FieldName = 'LIMITEFAVORECIDO'
      Size = 1
    end
    object Q_InvoiceSIGLAINICIAL: TIBStringField
      FieldName = 'SIGLAINICIAL'
      Size = 3
    end
    object Q_InvoiceTIT1_DATA: TIBStringField
      FieldName = 'TIT1_DATA'
      Size = 15
    end
    object Q_InvoiceTIT2_DATA: TIBStringField
      FieldName = 'TIT2_DATA'
      Size = 15
    end
    object Q_InvoiceTIT1_NUMERO: TIBStringField
      FieldName = 'TIT1_NUMERO'
      Size = 15
    end
    object Q_InvoiceTIT2_NUMERO: TIBStringField
      FieldName = 'TIT2_NUMERO'
      Size = 15
    end
    object Q_InvoiceCB_INFOENTREGA: TIBStringField
      FieldName = 'CB_INFOENTREGA'
      Size = 1
    end
    object Q_InvoiceTIT1_LOCALENTREGA: TIBStringField
      FieldName = 'TIT1_LOCALENTREGA'
    end
    object Q_InvoiceTIT1_DATAENTREGA: TIBStringField
      FieldName = 'TIT1_DATAENTREGA'
    end
    object Q_InvoiceTIT1_TIPOENTREGA: TIBStringField
      FieldName = 'TIT1_TIPOENTREGA'
    end
    object Q_InvoiceTIT2_LOCALENTREGA: TIBStringField
      FieldName = 'TIT2_LOCALENTREGA'
    end
    object Q_InvoiceTIT2_DATAENTREGA: TIBStringField
      FieldName = 'TIT2_DATAENTREGA'
    end
    object Q_InvoiceTIT2_TIPOENTREGA: TIBStringField
      FieldName = 'TIT2_TIPOENTREGA'
    end
    object Q_InvoiceCB_VENDEDOR: TIBStringField
      FieldName = 'CB_VENDEDOR'
      Size = 1
    end
    object Q_InvoiceTIT1_VENDEDOR: TIBStringField
      FieldName = 'TIT1_VENDEDOR'
    end
    object Q_InvoiceTIT2_VENDEDOR: TIBStringField
      FieldName = 'TIT2_VENDEDOR'
    end
    object Q_InvoiceCB_PEDIDO: TIBStringField
      FieldName = 'CB_PEDIDO'
      Size = 1
    end
    object Q_InvoiceTIT1_PEDIDO: TIBStringField
      FieldName = 'TIT1_PEDIDO'
    end
    object Q_InvoiceTIT2_PEDIDO: TIBStringField
      FieldName = 'TIT2_PEDIDO'
    end
    object Q_InvoiceCB_COMISSAO: TIBStringField
      FieldName = 'CB_COMISSAO'
      Size = 1
    end
    object Q_InvoiceTIT1_COMISSAO: TIBStringField
      FieldName = 'TIT1_COMISSAO'
    end
    object Q_InvoiceTIT2_COMISSAO: TIBStringField
      FieldName = 'TIT2_COMISSAO'
    end
    object Q_InvoiceCB_TERMOS: TIBStringField
      FieldName = 'CB_TERMOS'
      Size = 1
    end
    object Q_InvoiceTIT1_TERMOS: TIBStringField
      FieldName = 'TIT1_TERMOS'
    end
    object Q_InvoiceTIT2_TERMOS: TIBStringField
      FieldName = 'TIT2_TERMOS'
    end
    object Q_InvoiceCB_MENSAGEM: TIBStringField
      FieldName = 'CB_MENSAGEM'
      Size = 1
    end
    object Q_InvoiceTIT1_MENSAGEM: TIBStringField
      FieldName = 'TIT1_MENSAGEM'
    end
    object Q_InvoiceTIT2_MENSAGEM: TIBStringField
      FieldName = 'TIT2_MENSAGEM'
    end
    object Q_InvoiceCB_DESCONTOS: TIBStringField
      FieldName = 'CB_DESCONTOS'
      Size = 1
    end
    object Q_InvoiceTIT1_DESCONTOS: TIBStringField
      FieldName = 'TIT1_DESCONTOS'
    end
    object Q_InvoiceTIT2_DESCONTOS: TIBStringField
      FieldName = 'TIT2_DESCONTOS'
    end
    object Q_InvoiceCB_FRETE: TIBStringField
      FieldName = 'CB_FRETE'
      Size = 1
    end
    object Q_InvoiceTIT1_FRETE: TIBStringField
      FieldName = 'TIT1_FRETE'
    end
    object Q_InvoiceTIT2_FRETE: TIBStringField
      FieldName = 'TIT2_FRETE'
    end
    object Q_InvoiceCB_TOTALITENS: TIBStringField
      FieldName = 'CB_TOTALITENS'
      Size = 1
    end
    object Q_InvoiceTIT1_TOTALITENS: TIBStringField
      FieldName = 'TIT1_TOTALITENS'
    end
    object Q_InvoiceTIT2_TOTALITENS: TIBStringField
      FieldName = 'TIT2_TOTALITENS'
    end
    object Q_InvoiceCB_TOTALFINAL: TIBStringField
      FieldName = 'CB_TOTALFINAL'
      Size = 1
    end
    object Q_InvoiceTIT1_TOTALFINAL: TIBStringField
      FieldName = 'TIT1_TOTALFINAL'
    end
    object Q_InvoiceTIT2_TOTALFINAL: TIBStringField
      FieldName = 'TIT2_TOTALFINAL'
    end
    object Q_InvoiceTIT1_DESCRICAO: TIBStringField
      FieldName = 'TIT1_DESCRICAO'
    end
    object Q_InvoiceTIT1_QUANTIDADE: TIBStringField
      FieldName = 'TIT1_QUANTIDADE'
    end
    object Q_InvoiceTIT1_PRECO: TIBStringField
      FieldName = 'TIT1_PRECO'
    end
    object Q_InvoiceTIT1_SUBTOTAL: TIBStringField
      FieldName = 'TIT1_SUBTOTAL'
    end
    object Q_InvoiceTIT2_DESCRICAO: TIBStringField
      FieldName = 'TIT2_DESCRICAO'
    end
    object Q_InvoiceTIT2_QUANTIDADE: TIBStringField
      FieldName = 'TIT2_QUANTIDADE'
    end
    object Q_InvoiceTIT2_PRECO: TIBStringField
      FieldName = 'TIT2_PRECO'
    end
    object Q_InvoiceTIT2_SUBTOTAL: TIBStringField
      FieldName = 'TIT2_SUBTOTAL'
    end
    object Q_InvoiceCB_JUROS: TIBStringField
      FieldName = 'CB_JUROS'
      Size = 1
    end
    object Q_InvoiceTIT1_JUROS: TIBStringField
      FieldName = 'TIT1_JUROS'
    end
    object Q_InvoiceTIT2_JUROS: TIBStringField
      FieldName = 'TIT2_JUROS'
    end
    object Q_InvoiceCB_DESPESAS: TIBStringField
      FieldName = 'CB_DESPESAS'
      Size = 1
    end
    object Q_InvoiceTIT1_DESPESAS: TIBStringField
      FieldName = 'TIT1_DESPESAS'
    end
    object Q_InvoiceTIT2_DESPESAS: TIBStringField
      FieldName = 'TIT2_DESPESAS'
    end
    object Q_InvoiceCB_CAMPO01: TIBStringField
      FieldName = 'CB_CAMPO01'
      Size = 1
    end
    object Q_InvoiceTIT1_CAMPO1: TIBStringField
      FieldName = 'TIT1_CAMPO1'
    end
    object Q_InvoiceTIT2_CAMPO1: TIBStringField
      FieldName = 'TIT2_CAMPO1'
    end
    object Q_InvoiceCB_CAMPO02: TIBStringField
      FieldName = 'CB_CAMPO02'
      Size = 1
    end
    object Q_InvoiceTIT1_CAMPO2: TIBStringField
      FieldName = 'TIT1_CAMPO2'
    end
    object Q_InvoiceTIT2_CAMPO2: TIBStringField
      FieldName = 'TIT2_CAMPO2'
    end
    object Q_InvoiceCB_CAMPO03: TIBStringField
      FieldName = 'CB_CAMPO03'
      Size = 1
    end
    object Q_InvoiceTIT1_CAMPO3: TIBStringField
      FieldName = 'TIT1_CAMPO3'
    end
    object Q_InvoiceTIT2_CAMPO3: TIBStringField
      FieldName = 'TIT2_CAMPO3'
    end
    object Q_InvoiceCB_CAMPO04: TIBStringField
      FieldName = 'CB_CAMPO04'
      Size = 1
    end
    object Q_InvoiceTIT1_CAMPO4: TIBStringField
      FieldName = 'TIT1_CAMPO4'
    end
    object Q_InvoiceTIT2_CAMPO4: TIBStringField
      FieldName = 'TIT2_CAMPO4'
    end
    object Q_InvoiceCB_CODIGO: TIBStringField
      FieldName = 'CB_CODIGO'
      Size = 1
    end
    object Q_InvoiceTIT1_CODIGO: TIBStringField
      FieldName = 'TIT1_CODIGO'
    end
    object Q_InvoiceTIT2_CODIGO: TIBStringField
      FieldName = 'TIT2_CODIGO'
    end
    object Q_InvoiceCB_FUNCIONARIO: TIBStringField
      FieldName = 'CB_FUNCIONARIO'
      Size = 1
    end
    object Q_InvoiceTIT1_FUNCIONARIO: TIBStringField
      FieldName = 'TIT1_FUNCIONARIO'
    end
    object Q_InvoiceTIT2_FUNCIONARIO: TIBStringField
      FieldName = 'TIT2_FUNCIONARIO'
    end
    object Q_InvoiceTIT1_COLUNA1: TIBStringField
      FieldName = 'TIT1_COLUNA1'
    end
    object Q_InvoiceTIT1_COLUNA2: TIBStringField
      FieldName = 'TIT1_COLUNA2'
    end
    object Q_InvoiceTIT1_COLUNA3: TIBStringField
      FieldName = 'TIT1_COLUNA3'
    end
    object Q_InvoiceTIT1_COLUNA4: TIBStringField
      FieldName = 'TIT1_COLUNA4'
    end
    object Q_InvoiceTIT2_COLUNA1: TIBStringField
      FieldName = 'TIT2_COLUNA1'
    end
    object Q_InvoiceTIT2_COLUNA2: TIBStringField
      FieldName = 'TIT2_COLUNA2'
    end
    object Q_InvoiceTIT2_COLUNA3: TIBStringField
      FieldName = 'TIT2_COLUNA3'
    end
    object Q_InvoiceTIT2_COLUNA4: TIBStringField
      FieldName = 'TIT2_COLUNA4'
    end
    object Q_InvoiceCORTITULOS: TIntegerField
      FieldName = 'CORTITULOS'
    end
    object Q_InvoiceTIPOFAVPADRAO: TIntegerField
      FieldName = 'TIPOFAVPADRAO'
    end
    object Q_InvoiceTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object Q_InvoiceCB_COLUNA1: TIBStringField
      FieldName = 'CB_COLUNA1'
      Size = 1
    end
    object Q_InvoiceCB_COLUNA2: TIBStringField
      FieldName = 'CB_COLUNA2'
      Size = 1
    end
    object Q_InvoiceCB_COLUNA3: TIBStringField
      FieldName = 'CB_COLUNA3'
      Size = 1
    end
    object Q_InvoiceCB_COLUNA4: TIBStringField
      FieldName = 'CB_COLUNA4'
      Size = 1
    end
    object Q_InvoiceTIT1_UNIDADE: TIBStringField
      FieldName = 'TIT1_UNIDADE'
    end
    object Q_InvoiceTIT2_UNIDADE: TIBStringField
      FieldName = 'TIT2_UNIDADE'
    end
    object Q_InvoiceFOTO: TIBStringField
      FieldName = 'FOTO'
      Size = 1
    end
    object Q_InvoiceTIT1_VALIDADE: TIBStringField
      FieldName = 'TIT1_VALIDADE'
    end
    object Q_InvoiceTIT2_VALIDADE: TIBStringField
      FieldName = 'TIT2_VALIDADE'
    end
    object Q_InvoiceCB_REFERENCIA: TIBStringField
      FieldName = 'CB_REFERENCIA'
      Size = 1
    end
    object Q_InvoiceTIT1_REFERENCIA: TIBStringField
      FieldName = 'TIT1_REFERENCIA'
    end
    object Q_InvoiceTIT2_REFERENCIA: TIBStringField
      FieldName = 'TIT2_REFERENCIA'
    end
    object Q_InvoiceTIT1_QTDRECEBIDA: TIBStringField
      FieldName = 'TIT1_QTDRECEBIDA'
    end
    object Q_InvoiceTIT2_QTDRECEBIDA: TIBStringField
      FieldName = 'TIT2_QTDRECEBIDA'
    end
    object Q_InvoiceTIT1_SITUACAO: TIBStringField
      FieldName = 'TIT1_SITUACAO'
    end
    object Q_InvoiceTIT2_SITUACAO: TIBStringField
      FieldName = 'TIT2_SITUACAO'
    end
    object Q_InvoiceENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Required = True
    end
    object Q_InvoicePREVISAOENTREGA: TDateField
      FieldName = 'PREVISAOENTREGA'
    end
    object Q_InvoiceATUALIZACUSTO: TIBStringField
      FieldName = 'ATUALIZACUSTO'
      Size = 3
    end
    object Q_InvoiceATUALIZAPRECO: TIBStringField
      FieldName = 'ATUALIZAPRECO'
      Size = 3
    end
    object Q_InvoiceINCLUIDESCONTO: TIBStringField
      FieldName = 'INCLUIDESCONTO'
      Size = 1
    end
    object Q_InvoiceATUALIZAPRECOMANUAL: TIBStringField
      FieldName = 'ATUALIZAPRECOMANUAL'
      Size = 1
    end
    object Q_InvoiceSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Q_InvoiceCB_STATUS: TIBStringField
      FieldName = 'CB_STATUS'
      Size = 1
    end
    object Q_InvoiceCB_CODIGOFORN: TIBStringField
      FieldName = 'CB_CODIGOFORN'
      Size = 1
    end
    object Q_InvoiceTIT1_CODIGOFORN: TIBStringField
      FieldName = 'TIT1_CODIGOFORN'
    end
    object Q_InvoiceTIT2_CODIGOFORN: TIBStringField
      FieldName = 'TIT2_CODIGOFORN'
    end
    object Q_InvoiceTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
      Origin = 'TIPOSPADRAO.TIPOORIGEM'
    end
    object Q_InvoiceCB_COMPOSICAOITENS: TIBStringField
      FieldName = 'CB_COMPOSICAOITENS'
      Origin = 'TIPOSMOVIMENTO.CB_COMPOSICAOITENS'
      Size = 1
    end
    object Q_InvoiceSERIENOTA: TIBStringField
      FieldName = 'SERIENOTA'
      Origin = 'ENTRADAS.SERIENOTA'
      Size = 3
    end
    object Q_InvoiceUFDESTINO: TIBStringField
      FieldName = 'UFDESTINO'
      Origin = 'ENTRADAS.UFORIGEM'
      Size = 2
    end
    object Q_InvoicePOSSUIICMS1: TIBStringField
      FieldName = 'POSSUIICMS1'
      Origin = 'ENTRADAS.POSSUIICMS'
      Size = 1
    end
    object Q_InvoiceCONTABILIZAICMS1: TIBStringField
      FieldName = 'CONTABILIZAICMS1'
      Origin = 'ENTRADAS.CONTABILIZAICMS'
      Size = 1
    end
    object Q_InvoiceMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'ENTRADAS.MODELO'
      Size = 2
    end
    object Q_InvoiceVOLUMES: TFloatField
      FieldName = 'VOLUMES'
      Origin = 'ENTRADAS.VOLUMES'
    end
    object Q_InvoiceCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      Size = 14
    end
    object Q_InvoiceCODIGOCLIENTE: TIBStringField
      FieldName = 'CODIGOCLIENTE'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object Q_InvoiceINSCRICAO_EST: TIBStringField
      FieldName = 'INSCRICAO_EST'
      Origin = 'FAVORECIDOS.INSCRICAO_EST'
      Size = 14
    end
    object Q_InvoiceRAZAO: TIBStringField
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object Q_InvoiceBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object Q_InvoiceARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object Q_InvoiceCB_FABRICANTE: TIBStringField
      FieldName = 'CB_FABRICANTE'
      Origin = 'TIPOSMOVIMENTO.CB_FABRICANTE'
      FixedChar = True
      Size = 1
    end
    object Q_InvoiceIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = 'ENTRADAS.IMPRESSO'
      Size = 1
    end
    object Q_InvoiceCB_GERARNUM: TIBStringField
      FieldName = 'CB_GERARNUM'
      Origin = 'TIPOSMOVIMENTO.CB_GERARNUM'
      Size = 1
    end
    object Q_InvoiceCB_TOPRINTER: TIBStringField
      FieldName = 'CB_TOPRINTER'
      Origin = 'TIPOSMOVIMENTO.CB_TOPRINTER'
      Size = 1
    end
    object Q_InvoiceTIPONOTAFISCAL: TIBStringField
      FieldName = 'TIPONOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.TIPONOTAFISCAL'
      Size = 3
    end
    object Q_InvoiceCFOPNOTA: TIBStringField
      FieldName = 'CFOPNOTA'
      Origin = 'ENTRADAS.CFOPENTRADA'
      Size = 4
    end
    object Q_InvoiceTIPOFRETE: TIBStringField
      FieldName = 'TIPOFRETE'
      Origin = 'ENTRADAS.CIF_FOB'
      Size = 1
    end
    object Q_InvoicePLACAVEIC: TIBStringField
      FieldName = 'PLACAVEIC'
      Origin = 'ENTRADAS.PLACAVEIC'
      Size = 10
    end
    object Q_InvoiceTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Origin = 'ENTRADAS.TRANSPORTADORA'
    end
    object Q_InvoiceDESCESPECIE: TIBStringField
      FieldName = 'DESCESPECIE'
      Origin = 'ENTRADAS.DESCESPECIE'
      Size = 15
    end
    object Q_InvoiceDESCMARCA: TIBStringField
      FieldName = 'DESCMARCA'
      Origin = 'ENTRADAS.DESCMARCA'
      Size = 15
    end
    object Q_InvoiceDESCNUMERO: TIBStringField
      FieldName = 'DESCNUMERO'
      Origin = 'ENTRADAS.DESCNUMERO'
      Size = 10
    end
    object Q_InvoiceCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object Q_InvoiceCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object Q_InvoiceUF: TIBStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object Q_InvoiceTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TIPOSMOVIMENTO.TEMPLATE'
    end
    object Q_InvoiceCB_IMPDOC: TIBStringField
      FieldName = 'CB_IMPDOC'
      Origin = 'TIPOSMOVIMENTO.CB_IMPDOC'
      Size = 1
    end
    object Q_InvoiceARQUIVOTEMPLATE: TIBStringField
      FieldName = 'ARQUIVOTEMPLATE'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object Q_InvoiceTIT1_IPI: TIBStringField
      FieldName = 'TIT1_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT1_IPI'
    end
    object Q_InvoiceTIT2_IPI: TIBStringField
      FieldName = 'TIT2_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT2_IPI'
    end
    object Q_InvoiceCB_IPI: TIBStringField
      FieldName = 'CB_IPI'
      Origin = 'TIPOSMOVIMENTO.CB_IPI'
      Size = 1
    end
    object Q_InvoiceCB_NOTAFISCAL: TIBStringField
      FieldName = 'CB_NOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.CB_NOTAFISCAL'
      Size = 1
    end
    object Q_InvoiceTIT_DESCONTO: TIBStringField
      FieldName = 'TIT_DESCONTO'
      Required = True
      FixedChar = True
      Size = 8
    end
    object Q_InvoiceTIT1_CFOP: TIBStringField
      FieldName = 'TIT1_CFOP'
      Origin = 'TIPOSMOVIMENTO.TIT1_CFOP'
    end
    object Q_InvoiceTIT2_CFOP: TIBStringField
      FieldName = 'TIT2_CFOP'
      Origin = 'TIPOSMOVIMENTO.TIT2_CFOP'
    end
    object Q_InvoiceOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
      Origin = 'ENTRADAS.OUTRASDESPESAS'
    end
    object Q_InvoiceTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'ENTRADAS.TOTAL'
    end
    object Q_InvoiceDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'ENTRADAS.DESCONTO'
      Precision = 18
      Size = 2
    end
    object Q_InvoiceFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = 'ENTRADAS.FRETE'
      Precision = 18
      Size = 2
    end
    object Q_InvoiceJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'ENTRADAS.JUROS'
    end
    object Q_InvoiceTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
      Origin = 'ENTRADAS.TOTALITENS'
    end
    object Q_InvoicePOSSUIICMS: TIBStringField
      FieldName = 'POSSUIICMS'
      Origin = 'TIPOSMOVIMENTO.POSSUIICMS'
      Size = 1
    end
    object Q_InvoicePOSSUIIPI: TIBStringField
      FieldName = 'POSSUIIPI'
      Origin = 'TIPOSMOVIMENTO.POSSUIIPI'
      Size = 1
    end
    object Q_InvoicePOSSUIISS: TIBStringField
      FieldName = 'POSSUIISS'
      Origin = 'TIPOSMOVIMENTO.POSSUIISS'
      Size = 1
    end
    object Q_InvoiceBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
      Origin = 'ENTRADAS.BASECALCICMS'
    end
    object Q_InvoiceVALORICMS: TFloatField
      FieldName = 'VALORICMS'
      Origin = 'ENTRADAS.VALORICMS'
    end
    object Q_InvoiceVALORIPI: TFloatField
      FieldName = 'VALORIPI'
      Origin = 'ENTRADAS.VALORIPI'
    end
    object Q_InvoiceBASECALCSUBST: TFloatField
      FieldName = 'BASECALCSUBST'
      Origin = 'ENTRADAS.BASECALCSUBST'
    end
    object Q_InvoiceVALORICMSSUBST: TFloatField
      FieldName = 'VALORICMSSUBST'
      Origin = 'ENTRADAS.VALORICMSSUBST'
    end
    object Q_InvoiceVALORSEGURO: TFloatField
      FieldName = 'VALORSEGURO'
      Origin = 'ENTRADAS.VALORSEGURO'
    end
    object Q_InvoicePESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'ENTRADAS.PESOBRUTO'
    end
    object Q_InvoicePESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
      Origin = 'ENTRADAS.PESOLIQUIDO'
    end
    object Q_InvoiceALIQICMSVENDA: TIBBCDField
      FieldName = 'ALIQICMSVENDA'
      Origin = 'ENTRADAS.ALIQICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object Q_InvoiceVALORISENTAS: TFloatField
      FieldName = 'VALORISENTAS'
      Origin = 'ENTRADAS.VALORISENTAS'
    end
    object Q_InvoiceVALOROUTRASICMS: TFloatField
      FieldName = 'VALOROUTRASICMS'
      Origin = 'ENTRADAS.VALOROUTRASICMS'
    end
    object Q_InvoiceVALORISENTASIPI: TFloatField
      FieldName = 'VALORISENTASIPI'
      Origin = 'ENTRADAS.VALORISENTASIPI'
    end
    object Q_InvoiceVALOROUTRASIPI: TFloatField
      FieldName = 'VALOROUTRASIPI'
      Origin = 'ENTRADAS.VALOROUTRASIPI'
    end
    object Q_InvoiceIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
  end
  object dbpInvoice: TppDBPipeline
    DataSource = Q_InvoiceDS
    SkipWhenNoRecords = False
    UserName = 'dbpInvoice'
    Left = 24
    Top = 128
    object dbpInvoiceppField1: TppField
      FieldAlias = 'INVOICE'
      FieldName = 'INVOICE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbpInvoiceppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object dbpInvoiceppField3: TppField
      FieldAlias = 'SITUACAO'
      FieldName = 'SITUACAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object dbpInvoiceppField4: TppField
      FieldAlias = 'DATAENTREGA'
      FieldName = 'DATAENTREGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object dbpInvoiceppField5: TppField
      FieldAlias = 'ENDERECOENTREGA'
      FieldName = 'ENDERECOENTREGA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object dbpInvoiceppField6: TppField
      FieldAlias = 'CIDADEUFZIPENTREGA'
      FieldName = 'CIDADEUFZIPENTREGA'
      FieldLength = 53
      DisplayWidth = 53
      Position = 5
    end
    object dbpInvoiceppField7: TppField
      FieldAlias = 'TIPOENTREGA'
      FieldName = 'TIPOENTREGA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object dbpInvoiceppField8: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object dbpInvoiceppField9: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object dbpInvoiceppField10: TppField
      FieldAlias = 'CAMPO01'
      FieldName = 'CAMPO01'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object dbpInvoiceppField11: TppField
      FieldAlias = 'CAMPO02'
      FieldName = 'CAMPO02'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object dbpInvoiceppField12: TppField
      FieldAlias = 'CAMPO03'
      FieldName = 'CAMPO03'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object dbpInvoiceppField13: TppField
      FieldAlias = 'CAMPO04'
      FieldName = 'CAMPO04'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object dbpInvoiceppField14: TppField
      FieldAlias = 'PLANOPAG'
      FieldName = 'PLANOPAG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object dbpInvoiceppField15: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 255
      DisplayWidth = 255
      Position = 14
    end
    object dbpInvoiceppField16: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object dbpInvoiceppField17: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object dbpInvoiceppField18: TppField
      FieldAlias = 'CIDADEUFZIP'
      FieldName = 'CIDADEUFZIP'
      FieldLength = 100
      DisplayWidth = 100
      Position = 17
    end
    object dbpInvoiceppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object dbpInvoiceppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRETE'
      FieldName = 'FRETE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object dbpInvoiceppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTRASDESPESAS'
      FieldName = 'OUTRASDESPESAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object dbpInvoiceppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object dbpInvoiceppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOMOVIMENTO'
      FieldName = 'TIPOMOVIMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object dbpInvoiceppField24: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object dbpInvoiceppField25: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object dbpInvoiceppField26: TppField
      FieldAlias = 'BAIXAESTOQUE'
      FieldName = 'BAIXAESTOQUE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 25
    end
    object dbpInvoiceppField27: TppField
      FieldAlias = 'CALCCOMISSAO'
      FieldName = 'CALCCOMISSAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 26
    end
    object dbpInvoiceppField28: TppField
      FieldAlias = 'POSSUIENTREGA'
      FieldName = 'POSSUIENTREGA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object dbpInvoiceppField29: TppField
      FieldAlias = 'BLOQUEARSEATRASADO'
      FieldName = 'BLOQUEARSEATRASADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object dbpInvoiceppField30: TppField
      FieldAlias = 'BLOQUEARPORSITUACAO'
      FieldName = 'BLOQUEARPORSITUACAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 29
    end
    object dbpInvoiceppField31: TppField
      FieldAlias = 'BLOQUEARPORESTOQUE'
      FieldName = 'BLOQUEARPORESTOQUE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object dbpInvoiceppField32: TppField
      FieldAlias = 'LIMITEFAVORECIDO'
      FieldName = 'LIMITEFAVORECIDO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 31
    end
    object dbpInvoiceppField33: TppField
      FieldAlias = 'SIGLAINICIAL'
      FieldName = 'SIGLAINICIAL'
      FieldLength = 3
      DisplayWidth = 3
      Position = 32
    end
    object dbpInvoiceppField34: TppField
      FieldAlias = 'TIT1_DATA'
      FieldName = 'TIT1_DATA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object dbpInvoiceppField35: TppField
      FieldAlias = 'TIT2_DATA'
      FieldName = 'TIT2_DATA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object dbpInvoiceppField36: TppField
      FieldAlias = 'TIT1_NUMERO'
      FieldName = 'TIT1_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object dbpInvoiceppField37: TppField
      FieldAlias = 'TIT2_NUMERO'
      FieldName = 'TIT2_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 36
    end
    object dbpInvoiceppField38: TppField
      FieldAlias = 'CB_INFOENTREGA'
      FieldName = 'CB_INFOENTREGA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object dbpInvoiceppField39: TppField
      FieldAlias = 'TIT1_LOCALENTREGA'
      FieldName = 'TIT1_LOCALENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object dbpInvoiceppField40: TppField
      FieldAlias = 'TIT1_DATAENTREGA'
      FieldName = 'TIT1_DATAENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object dbpInvoiceppField41: TppField
      FieldAlias = 'TIT1_TIPOENTREGA'
      FieldName = 'TIT1_TIPOENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object dbpInvoiceppField42: TppField
      FieldAlias = 'TIT2_LOCALENTREGA'
      FieldName = 'TIT2_LOCALENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object dbpInvoiceppField43: TppField
      FieldAlias = 'TIT2_DATAENTREGA'
      FieldName = 'TIT2_DATAENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 42
    end
    object dbpInvoiceppField44: TppField
      FieldAlias = 'TIT2_TIPOENTREGA'
      FieldName = 'TIT2_TIPOENTREGA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 43
    end
    object dbpInvoiceppField45: TppField
      FieldAlias = 'CB_VENDEDOR'
      FieldName = 'CB_VENDEDOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 44
    end
    object dbpInvoiceppField46: TppField
      FieldAlias = 'TIT1_VENDEDOR'
      FieldName = 'TIT1_VENDEDOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 45
    end
    object dbpInvoiceppField47: TppField
      FieldAlias = 'TIT2_VENDEDOR'
      FieldName = 'TIT2_VENDEDOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 46
    end
    object dbpInvoiceppField48: TppField
      FieldAlias = 'CB_PEDIDO'
      FieldName = 'CB_PEDIDO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object dbpInvoiceppField49: TppField
      FieldAlias = 'TIT1_PEDIDO'
      FieldName = 'TIT1_PEDIDO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 48
    end
    object dbpInvoiceppField50: TppField
      FieldAlias = 'TIT2_PEDIDO'
      FieldName = 'TIT2_PEDIDO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object dbpInvoiceppField51: TppField
      FieldAlias = 'CB_COMISSAO'
      FieldName = 'CB_COMISSAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 50
    end
    object dbpInvoiceppField52: TppField
      FieldAlias = 'TIT1_COMISSAO'
      FieldName = 'TIT1_COMISSAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 51
    end
    object dbpInvoiceppField53: TppField
      FieldAlias = 'TIT2_COMISSAO'
      FieldName = 'TIT2_COMISSAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 52
    end
    object dbpInvoiceppField54: TppField
      FieldAlias = 'CB_TERMOS'
      FieldName = 'CB_TERMOS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 53
    end
    object dbpInvoiceppField55: TppField
      FieldAlias = 'TIT1_TERMOS'
      FieldName = 'TIT1_TERMOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 54
    end
    object dbpInvoiceppField56: TppField
      FieldAlias = 'TIT2_TERMOS'
      FieldName = 'TIT2_TERMOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 55
    end
    object dbpInvoiceppField57: TppField
      FieldAlias = 'CB_MENSAGEM'
      FieldName = 'CB_MENSAGEM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 56
    end
    object dbpInvoiceppField58: TppField
      FieldAlias = 'TIT1_MENSAGEM'
      FieldName = 'TIT1_MENSAGEM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 57
    end
    object dbpInvoiceppField59: TppField
      FieldAlias = 'TIT2_MENSAGEM'
      FieldName = 'TIT2_MENSAGEM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 58
    end
    object dbpInvoiceppField60: TppField
      FieldAlias = 'CB_DESCONTOS'
      FieldName = 'CB_DESCONTOS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 59
    end
    object dbpInvoiceppField61: TppField
      FieldAlias = 'TIT1_DESCONTOS'
      FieldName = 'TIT1_DESCONTOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 60
    end
    object dbpInvoiceppField62: TppField
      FieldAlias = 'TIT2_DESCONTOS'
      FieldName = 'TIT2_DESCONTOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 61
    end
    object dbpInvoiceppField63: TppField
      FieldAlias = 'CB_FRETE'
      FieldName = 'CB_FRETE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 62
    end
    object dbpInvoiceppField64: TppField
      FieldAlias = 'TIT1_FRETE'
      FieldName = 'TIT1_FRETE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 63
    end
    object dbpInvoiceppField65: TppField
      FieldAlias = 'TIT2_FRETE'
      FieldName = 'TIT2_FRETE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object dbpInvoiceppField66: TppField
      FieldAlias = 'CB_TOTALITENS'
      FieldName = 'CB_TOTALITENS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object dbpInvoiceppField67: TppField
      FieldAlias = 'TIT1_TOTALITENS'
      FieldName = 'TIT1_TOTALITENS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 66
    end
    object dbpInvoiceppField68: TppField
      FieldAlias = 'TIT2_TOTALITENS'
      FieldName = 'TIT2_TOTALITENS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 67
    end
    object dbpInvoiceppField69: TppField
      FieldAlias = 'CB_TOTALFINAL'
      FieldName = 'CB_TOTALFINAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 68
    end
    object dbpInvoiceppField70: TppField
      FieldAlias = 'TIT1_TOTALFINAL'
      FieldName = 'TIT1_TOTALFINAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 69
    end
    object dbpInvoiceppField71: TppField
      FieldAlias = 'TIT2_TOTALFINAL'
      FieldName = 'TIT2_TOTALFINAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 70
    end
    object dbpInvoiceppField72: TppField
      FieldAlias = 'TIT1_DESCRICAO'
      FieldName = 'TIT1_DESCRICAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 71
    end
    object dbpInvoiceppField73: TppField
      FieldAlias = 'TIT1_QUANTIDADE'
      FieldName = 'TIT1_QUANTIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 72
    end
    object dbpInvoiceppField74: TppField
      FieldAlias = 'TIT1_PRECO'
      FieldName = 'TIT1_PRECO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 73
    end
    object dbpInvoiceppField75: TppField
      FieldAlias = 'TIT1_SUBTOTAL'
      FieldName = 'TIT1_SUBTOTAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 74
    end
    object dbpInvoiceppField76: TppField
      FieldAlias = 'TIT2_DESCRICAO'
      FieldName = 'TIT2_DESCRICAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 75
    end
    object dbpInvoiceppField77: TppField
      FieldAlias = 'TIT2_QUANTIDADE'
      FieldName = 'TIT2_QUANTIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 76
    end
    object dbpInvoiceppField78: TppField
      FieldAlias = 'TIT2_PRECO'
      FieldName = 'TIT2_PRECO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 77
    end
    object dbpInvoiceppField79: TppField
      FieldAlias = 'TIT2_SUBTOTAL'
      FieldName = 'TIT2_SUBTOTAL'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object dbpInvoiceppField80: TppField
      FieldAlias = 'CB_JUROS'
      FieldName = 'CB_JUROS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 79
    end
    object dbpInvoiceppField81: TppField
      FieldAlias = 'TIT1_JUROS'
      FieldName = 'TIT1_JUROS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 80
    end
    object dbpInvoiceppField82: TppField
      FieldAlias = 'TIT2_JUROS'
      FieldName = 'TIT2_JUROS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 81
    end
    object dbpInvoiceppField83: TppField
      FieldAlias = 'CB_DESPESAS'
      FieldName = 'CB_DESPESAS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 82
    end
    object dbpInvoiceppField84: TppField
      FieldAlias = 'TIT1_DESPESAS'
      FieldName = 'TIT1_DESPESAS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 83
    end
    object dbpInvoiceppField85: TppField
      FieldAlias = 'TIT2_DESPESAS'
      FieldName = 'TIT2_DESPESAS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 84
    end
    object dbpInvoiceppField86: TppField
      FieldAlias = 'CB_CAMPO01'
      FieldName = 'CB_CAMPO01'
      FieldLength = 1
      DisplayWidth = 1
      Position = 85
    end
    object dbpInvoiceppField87: TppField
      FieldAlias = 'TIT1_CAMPO1'
      FieldName = 'TIT1_CAMPO1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 86
    end
    object dbpInvoiceppField88: TppField
      FieldAlias = 'TIT2_CAMPO1'
      FieldName = 'TIT2_CAMPO1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 87
    end
    object dbpInvoiceppField89: TppField
      FieldAlias = 'CB_CAMPO02'
      FieldName = 'CB_CAMPO02'
      FieldLength = 1
      DisplayWidth = 1
      Position = 88
    end
    object dbpInvoiceppField90: TppField
      FieldAlias = 'TIT1_CAMPO2'
      FieldName = 'TIT1_CAMPO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 89
    end
    object dbpInvoiceppField91: TppField
      FieldAlias = 'TIT2_CAMPO2'
      FieldName = 'TIT2_CAMPO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 90
    end
    object dbpInvoiceppField92: TppField
      FieldAlias = 'CB_CAMPO03'
      FieldName = 'CB_CAMPO03'
      FieldLength = 1
      DisplayWidth = 1
      Position = 91
    end
    object dbpInvoiceppField93: TppField
      FieldAlias = 'TIT1_CAMPO3'
      FieldName = 'TIT1_CAMPO3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object dbpInvoiceppField94: TppField
      FieldAlias = 'TIT2_CAMPO3'
      FieldName = 'TIT2_CAMPO3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 93
    end
    object dbpInvoiceppField95: TppField
      FieldAlias = 'CB_CAMPO04'
      FieldName = 'CB_CAMPO04'
      FieldLength = 1
      DisplayWidth = 1
      Position = 94
    end
    object dbpInvoiceppField96: TppField
      FieldAlias = 'TIT1_CAMPO4'
      FieldName = 'TIT1_CAMPO4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object dbpInvoiceppField97: TppField
      FieldAlias = 'TIT2_CAMPO4'
      FieldName = 'TIT2_CAMPO4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 96
    end
    object dbpInvoiceppField98: TppField
      FieldAlias = 'CB_CODIGO'
      FieldName = 'CB_CODIGO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 97
    end
    object dbpInvoiceppField99: TppField
      FieldAlias = 'TIT1_CODIGO'
      FieldName = 'TIT1_CODIGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 98
    end
    object dbpInvoiceppField100: TppField
      FieldAlias = 'TIT2_CODIGO'
      FieldName = 'TIT2_CODIGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 99
    end
    object dbpInvoiceppField101: TppField
      FieldAlias = 'CB_FUNCIONARIO'
      FieldName = 'CB_FUNCIONARIO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 100
    end
    object dbpInvoiceppField102: TppField
      FieldAlias = 'TIT1_FUNCIONARIO'
      FieldName = 'TIT1_FUNCIONARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 101
    end
    object dbpInvoiceppField103: TppField
      FieldAlias = 'TIT2_FUNCIONARIO'
      FieldName = 'TIT2_FUNCIONARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 102
    end
    object dbpInvoiceppField104: TppField
      FieldAlias = 'TIT1_COLUNA1'
      FieldName = 'TIT1_COLUNA1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 103
    end
    object dbpInvoiceppField105: TppField
      FieldAlias = 'TIT1_COLUNA2'
      FieldName = 'TIT1_COLUNA2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 104
    end
    object dbpInvoiceppField106: TppField
      FieldAlias = 'TIT1_COLUNA3'
      FieldName = 'TIT1_COLUNA3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 105
    end
    object dbpInvoiceppField107: TppField
      FieldAlias = 'TIT1_COLUNA4'
      FieldName = 'TIT1_COLUNA4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 106
    end
    object dbpInvoiceppField108: TppField
      FieldAlias = 'TIT2_COLUNA1'
      FieldName = 'TIT2_COLUNA1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 107
    end
    object dbpInvoiceppField109: TppField
      FieldAlias = 'TIT2_COLUNA2'
      FieldName = 'TIT2_COLUNA2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 108
    end
    object dbpInvoiceppField110: TppField
      FieldAlias = 'TIT2_COLUNA3'
      FieldName = 'TIT2_COLUNA3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 109
    end
    object dbpInvoiceppField111: TppField
      FieldAlias = 'TIT2_COLUNA4'
      FieldName = 'TIT2_COLUNA4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 110
    end
    object dbpInvoiceppField112: TppField
      Alignment = taRightJustify
      FieldAlias = 'CORTITULOS'
      FieldName = 'CORTITULOS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 111
    end
    object dbpInvoiceppField113: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOFAVPADRAO'
      FieldName = 'TIPOFAVPADRAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 112
    end
    object dbpInvoiceppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOPADRAO'
      FieldName = 'TIPOPADRAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 113
    end
    object dbpInvoiceppField115: TppField
      FieldAlias = 'CB_COLUNA1'
      FieldName = 'CB_COLUNA1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 114
    end
    object dbpInvoiceppField116: TppField
      FieldAlias = 'CB_COLUNA2'
      FieldName = 'CB_COLUNA2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 115
    end
    object dbpInvoiceppField117: TppField
      FieldAlias = 'CB_COLUNA3'
      FieldName = 'CB_COLUNA3'
      FieldLength = 1
      DisplayWidth = 1
      Position = 116
    end
    object dbpInvoiceppField118: TppField
      FieldAlias = 'CB_COLUNA4'
      FieldName = 'CB_COLUNA4'
      FieldLength = 1
      DisplayWidth = 1
      Position = 117
    end
    object dbpInvoiceppField119: TppField
      FieldAlias = 'TIT1_UNIDADE'
      FieldName = 'TIT1_UNIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 118
    end
    object dbpInvoiceppField120: TppField
      FieldAlias = 'TIT2_UNIDADE'
      FieldName = 'TIT2_UNIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 119
    end
    object dbpInvoiceppField121: TppField
      FieldAlias = 'FOTO'
      FieldName = 'FOTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 120
    end
    object dbpInvoiceppField122: TppField
      FieldAlias = 'TIT1_VALIDADE'
      FieldName = 'TIT1_VALIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 121
    end
    object dbpInvoiceppField123: TppField
      FieldAlias = 'TIT2_VALIDADE'
      FieldName = 'TIT2_VALIDADE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 122
    end
    object dbpInvoiceppField124: TppField
      FieldAlias = 'CB_REFERENCIA'
      FieldName = 'CB_REFERENCIA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 123
    end
    object dbpInvoiceppField125: TppField
      FieldAlias = 'TIT1_REFERENCIA'
      FieldName = 'TIT1_REFERENCIA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 124
    end
    object dbpInvoiceppField126: TppField
      FieldAlias = 'TIT2_REFERENCIA'
      FieldName = 'TIT2_REFERENCIA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 125
    end
    object dbpInvoiceppField127: TppField
      FieldAlias = 'TIT1_QTDRECEBIDA'
      FieldName = 'TIT1_QTDRECEBIDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 126
    end
    object dbpInvoiceppField128: TppField
      FieldAlias = 'TIT2_QTDRECEBIDA'
      FieldName = 'TIT2_QTDRECEBIDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 127
    end
    object dbpInvoiceppField129: TppField
      FieldAlias = 'TIT1_SITUACAO'
      FieldName = 'TIT1_SITUACAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 128
    end
    object dbpInvoiceppField130: TppField
      FieldAlias = 'TIT2_SITUACAO'
      FieldName = 'TIT2_SITUACAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 129
    end
    object dbpInvoiceppField131: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 130
    end
    object dbpInvoiceppField132: TppField
      FieldAlias = 'PREVISAOENTREGA'
      FieldName = 'PREVISAOENTREGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 131
    end
    object dbpInvoiceppField133: TppField
      FieldAlias = 'ATUALIZACUSTO'
      FieldName = 'ATUALIZACUSTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 132
    end
    object dbpInvoiceppField134: TppField
      FieldAlias = 'ATUALIZAPRECO'
      FieldName = 'ATUALIZAPRECO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 133
    end
    object dbpInvoiceppField135: TppField
      FieldAlias = 'INCLUIDESCONTO'
      FieldName = 'INCLUIDESCONTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 134
    end
    object dbpInvoiceppField136: TppField
      FieldAlias = 'ATUALIZAPRECOMANUAL'
      FieldName = 'ATUALIZAPRECOMANUAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 135
    end
    object dbpInvoiceppField137: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 136
    end
    object dbpInvoiceppField138: TppField
      FieldAlias = 'CB_STATUS'
      FieldName = 'CB_STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 137
    end
    object dbpInvoiceppField139: TppField
      FieldAlias = 'CB_CODIGOFORN'
      FieldName = 'CB_CODIGOFORN'
      FieldLength = 1
      DisplayWidth = 1
      Position = 138
    end
    object dbpInvoiceppField140: TppField
      FieldAlias = 'TIT1_CODIGOFORN'
      FieldName = 'TIT1_CODIGOFORN'
      FieldLength = 20
      DisplayWidth = 20
      Position = 139
    end
    object dbpInvoiceppField141: TppField
      FieldAlias = 'TIT2_CODIGOFORN'
      FieldName = 'TIT2_CODIGOFORN'
      FieldLength = 20
      DisplayWidth = 20
      Position = 140
    end
    object dbpInvoiceppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPOSTO'
      FieldName = 'IMPOSTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 141
    end
    object dbpInvoiceppField143: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOORIGEM'
      FieldName = 'TIPOORIGEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 142
    end
    object dbpInvoiceppField144: TppField
      FieldAlias = 'CB_COMPOSICAOITENS'
      FieldName = 'CB_COMPOSICAOITENS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 143
    end
    object dbpInvoiceppField145: TppField
      FieldAlias = 'SERIENOTA'
      FieldName = 'SERIENOTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 144
    end
    object dbpInvoiceppField146: TppField
      FieldAlias = 'UFDESTINO'
      FieldName = 'UFDESTINO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 145
    end
    object dbpInvoiceppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASECALCICMS'
      FieldName = 'BASECALCICMS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 146
    end
    object dbpInvoiceppField148: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORICMS'
      FieldName = 'VALORICMS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 147
    end
    object dbpInvoiceppField149: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORIPI'
      FieldName = 'VALORIPI'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 148
    end
    object dbpInvoiceppField150: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASECALCSUBST'
      FieldName = 'BASECALCSUBST'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 149
    end
    object dbpInvoiceppField151: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORICMSSUBST'
      FieldName = 'VALORICMSSUBST'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 150
    end
    object dbpInvoiceppField152: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORSEGURO'
      FieldName = 'VALORSEGURO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 151
    end
    object dbpInvoiceppField153: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOBRUTO'
      FieldName = 'PESOBRUTO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 152
    end
    object dbpInvoiceppField154: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOLIQUIDO'
      FieldName = 'PESOLIQUIDO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 153
    end
    object dbpInvoiceppField155: TppField
      Alignment = taRightJustify
      FieldAlias = 'ALIQICMSVENDA'
      FieldName = 'ALIQICMSVENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 154
    end
    object dbpInvoiceppField156: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORISENTAS'
      FieldName = 'VALORISENTAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 155
    end
    object dbpInvoiceppField157: TppField
      FieldAlias = 'POSSUIICMS1'
      FieldName = 'POSSUIICMS1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 156
    end
    object dbpInvoiceppField158: TppField
      FieldAlias = 'CONTABILIZAICMS1'
      FieldName = 'CONTABILIZAICMS1'
      FieldLength = 1
      DisplayWidth = 1
      Position = 157
    end
    object dbpInvoiceppField159: TppField
      FieldAlias = 'MODELO'
      FieldName = 'MODELO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 158
    end
    object dbpInvoiceppField160: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOROUTRASICMS'
      FieldName = 'VALOROUTRASICMS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 159
    end
    object dbpInvoiceppField161: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORISENTASIPI'
      FieldName = 'VALORISENTASIPI'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 160
    end
    object dbpInvoiceppField162: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOROUTRASIPI'
      FieldName = 'VALOROUTRASIPI'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 161
    end
    object dbpInvoiceppField163: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUMES'
      FieldName = 'VOLUMES'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 162
    end
    object dbpInvoiceppField164: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 163
    end
    object dbpInvoiceppField165: TppField
      FieldAlias = 'CODIGOCLIENTE'
      FieldName = 'CODIGOCLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 164
    end
    object dbpInvoiceppField166: TppField
      FieldAlias = 'INSCRICAO_EST'
      FieldName = 'INSCRICAO_EST'
      FieldLength = 14
      DisplayWidth = 14
      Position = 165
    end
    object dbpInvoiceppField167: TppField
      FieldAlias = 'RAZAO'
      FieldName = 'RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 166
    end
    object dbpInvoiceppField168: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 167
    end
    object dbpInvoiceppField169: TppField
      FieldAlias = 'ARQUIVO'
      FieldName = 'ARQUIVO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 168
    end
    object dbpInvoiceppField170: TppField
      FieldAlias = 'CB_FABRICANTE'
      FieldName = 'CB_FABRICANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 169
    end
    object dbpInvoiceppField171: TppField
      FieldAlias = 'IMPRESSO'
      FieldName = 'IMPRESSO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 170
    end
    object dbpInvoiceppField172: TppField
      FieldAlias = 'CB_GERARNUM'
      FieldName = 'CB_GERARNUM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 171
    end
    object dbpInvoiceppField173: TppField
      FieldAlias = 'CB_TOPRINTER'
      FieldName = 'CB_TOPRINTER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 172
    end
    object dbpInvoiceppField174: TppField
      FieldAlias = 'TIPONOTAFISCAL'
      FieldName = 'TIPONOTAFISCAL'
      FieldLength = 3
      DisplayWidth = 3
      Position = 173
    end
    object dbpInvoiceppField175: TppField
      FieldAlias = 'CFOPNOTA'
      FieldName = 'CFOPNOTA'
      FieldLength = 4
      DisplayWidth = 4
      Position = 174
    end
    object dbpInvoiceppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 175
    end
    object dbpInvoiceppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALITENS'
      FieldName = 'TOTALITENS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 176
    end
    object dbpInvoiceppField178: TppField
      FieldAlias = 'TIPOFRETE'
      FieldName = 'TIPOFRETE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 177
    end
    object dbpInvoiceppField179: TppField
      FieldAlias = 'PLACAVEIC'
      FieldName = 'PLACAVEIC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 178
    end
    object dbpInvoiceppField180: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTADORA'
      FieldName = 'TRANSPORTADORA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 179
    end
    object dbpInvoiceppField181: TppField
      FieldAlias = 'DESCESPECIE'
      FieldName = 'DESCESPECIE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 180
    end
    object dbpInvoiceppField182: TppField
      FieldAlias = 'DESCMARCA'
      FieldName = 'DESCMARCA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 181
    end
    object dbpInvoiceppField183: TppField
      FieldAlias = 'DESCNUMERO'
      FieldName = 'DESCNUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 182
    end
    object dbpInvoiceppField184: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 183
    end
    object dbpInvoiceppField185: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 184
    end
    object dbpInvoiceppField186: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 185
    end
    object dbpInvoiceppField187: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPLATE'
      FieldName = 'TEMPLATE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 186
    end
    object dbpInvoiceppField188: TppField
      FieldAlias = 'CB_IMPDOC'
      FieldName = 'CB_IMPDOC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 187
    end
    object dbpInvoiceppField189: TppField
      FieldAlias = 'ARQUIVOTEMPLATE'
      FieldName = 'ARQUIVOTEMPLATE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 188
    end
    object dbpInvoiceppField190: TppField
      FieldAlias = 'TIT1_IPI'
      FieldName = 'TIT1_IPI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 189
    end
    object dbpInvoiceppField191: TppField
      FieldAlias = 'TIT2_IPI'
      FieldName = 'TIT2_IPI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 190
    end
    object dbpInvoiceppField192: TppField
      FieldAlias = 'CB_IPI'
      FieldName = 'CB_IPI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 191
    end
    object dbpInvoiceppField193: TppField
      FieldAlias = 'CB_NOTAFISCAL'
      FieldName = 'CB_NOTAFISCAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 192
    end
    object dbpInvoiceppField194: TppField
      FieldAlias = 'TIT_DESCONTO'
      FieldName = 'TIT_DESCONTO'
      FieldLength = 8
      DisplayWidth = 8
      Position = 193
    end
    object dbpInvoiceppField195: TppField
      FieldAlias = 'TIT1_CFOP'
      FieldName = 'TIT1_CFOP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 194
    end
    object dbpInvoiceppField196: TppField
      FieldAlias = 'TIT2_CFOP'
      FieldName = 'TIT2_CFOP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 195
    end
  end
  object Q_InvItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_InvoiceDS
    SQL.Strings = (
      'Select si.Entrada, i.codigo, si.descricao as itemdesc,'
      'si.quantidade, si.preco, si.QtdRecebida, si.Situacao, '
      'si.subtotalitem as total, si.entradaitem,'
      
        'i.tipoitem, si.taxavel, si.coluna1, si.coluna2, si.coluna3, si.c' +
        'oluna4, '
      'f.nome as NomeCliente, si.unidade, i.referencia, si.codigoforn,'
      
        'fab.descricao as fabricante, si.cst, si.aliqicms, si.ipi, si.val' +
        'oripiprod, si.pdesconto, si.desconto,'
      'NUMEROLOTE , si.quantidadevolume, si.cfopentrada, si.cfopcst'
      'From EntradasItens si'
      'Left Join itens i on si.item=i.item'
      'Left Join favorecidos f on si.ClienteRef = f.favorecido'
      'Left Join fabricantes fab on i.fabricante = fab.fabricante'
      'Where si.Entrada = :Entrada')
    Left = 87
    Top = 21
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ENTRADA'
        ParamType = ptUnknown
        Size = 4
      end>
    object Q_InvItensCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object Q_InvItensITEMDESC: TIBStringField
      FieldName = 'ITEMDESC'
      Size = 50
    end
    object Q_InvItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object Q_InvItensTAXAVEL: TIBStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object Q_InvItensCOLUNA1: TIBStringField
      FieldName = 'COLUNA1'
    end
    object Q_InvItensCOLUNA2: TIBStringField
      FieldName = 'COLUNA2'
    end
    object Q_InvItensCOLUNA3: TIBStringField
      FieldName = 'COLUNA3'
    end
    object Q_InvItensCOLUNA4: TIBStringField
      FieldName = 'COLUNA4'
    end
    object Q_InvItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Q_InvItensENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object Q_InvItensQTDRECEBIDA: TIBBCDField
      FieldName = 'QTDRECEBIDA'
      Precision = 18
      Size = 3
    end
    object Q_InvItensSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object Q_InvItensNOMECLIENTE: TIBStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object Q_InvItensREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object Q_InvItensCODIGOFORN: TIBStringField
      FieldName = 'CODIGOFORN'
    end
    object Q_InvItensENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
      Origin = 'ENTRADASITENS.ENTRADAITEM'
      Required = True
    end
    object Q_InvItensFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
    object Q_InvItensNUMEROLOTE: TIBStringField
      FieldName = 'NUMEROLOTE'
      Origin = 'ENTRADASITENS.NUMEROLOTE'
      Size = 12
    end
    object Q_InvItensCFOPENTRADA: TIBStringField
      FieldName = 'CFOPENTRADA'
      Origin = 'ENTRADASITENS.CFOPENTRADA'
      Size = 4
    end
    object Q_InvItensCFOPCST: TIBStringField
      FieldName = 'CFOPCST'
      Origin = 'ENTRADASITENS.CFOPCST'
      Size = 4
    end
    object Q_InvItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADASITENS.QUANTIDADE'
    end
    object Q_InvItensPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'ENTRADASITENS.PRECO'
    end
    object Q_InvItensTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'ENTRADASITENS.SUBTOTALITEM'
    end
    object Q_InvItensALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'ENTRADASITENS.ALIQICMS'
    end
    object Q_InvItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'ENTRADASITENS.IPI'
    end
    object Q_InvItensVALORIPIPROD: TFloatField
      FieldName = 'VALORIPIPROD'
      Origin = 'ENTRADASITENS.VALORIPIPROD'
    end
    object Q_InvItensPDESCONTO: TFloatField
      FieldName = 'PDESCONTO'
      Origin = 'ENTRADASITENS.PDESCONTO'
    end
    object Q_InvItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'ENTRADASITENS.DESCONTO'
    end
    object Q_InvItensQUANTIDADEVOLUME: TFloatField
      FieldName = 'QUANTIDADEVOLUME'
      Origin = 'ENTRADASITENS.QUANTIDADEVOLUME'
    end
    object Q_InvItensCST: TIBStringField
      FieldName = 'CST'
      Origin = 'ENTRADASITENS.CST'
      Size = 3
    end
  end
  object Q_InvItensDS: TDataSource
    DataSet = Q_InvItens
    Left = 89
    Top = 68
  end
  object dbpInvItens: TppDBPipeline
    DataSource = Q_InvItensDS
    SkipWhenNoRecords = False
    UserName = 'dbpInvItens'
    Left = 84
    Top = 128
    MasterDataPipelineName = 'dbpInvoice'
    object dbpInvItensppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbpInvItensppField2: TppField
      FieldAlias = 'ITEMDESC'
      FieldName = 'ITEMDESC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object dbpInvItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object dbpInvItensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object dbpInvItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOITEM'
      FieldName = 'TIPOITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbpInvItensppField6: TppField
      FieldAlias = 'TAXAVEL'
      FieldName = 'TAXAVEL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object dbpInvItensppField7: TppField
      FieldAlias = 'COLUNA1'
      FieldName = 'COLUNA1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object dbpInvItensppField8: TppField
      FieldAlias = 'COLUNA2'
      FieldName = 'COLUNA2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object dbpInvItensppField9: TppField
      FieldAlias = 'COLUNA3'
      FieldName = 'COLUNA3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object dbpInvItensppField10: TppField
      FieldAlias = 'COLUNA4'
      FieldName = 'COLUNA4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object dbpInvItensppField11: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 10
    end
    object dbpInvItensppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object dbpInvItensppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDRECEBIDA'
      FieldName = 'QTDRECEBIDA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object dbpInvItensppField14: TppField
      FieldAlias = 'SITUACAO'
      FieldName = 'SITUACAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object dbpInvItensppField15: TppField
      FieldAlias = 'NOMECLIENTE'
      FieldName = 'NOMECLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object dbpInvItensppField16: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 25
      DisplayWidth = 25
      Position = 15
    end
    object dbpInvItensppField17: TppField
      FieldAlias = 'CODIGOFORN'
      FieldName = 'CODIGOFORN'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object dbpInvItensppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADAITEM'
      FieldName = 'ENTRADAITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object dbpInvItensppField19: TppField
      FieldAlias = 'FABRICANTE'
      FieldName = 'FABRICANTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 18
    end
    object dbpInvItensppField20: TppField
      FieldAlias = 'CST'
      FieldName = 'CST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 19
    end
    object dbpInvItensppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'ALIQICMS'
      FieldName = 'ALIQICMS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object dbpInvItensppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI'
      FieldName = 'IPI'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object dbpInvItensppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORIPIPROD'
      FieldName = 'VALORIPIPROD'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
    object dbpInvItensppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'PDESCONTO'
      FieldName = 'PDESCONTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 23
    end
    object dbpInvItensppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 24
    end
    object dbpInvItensppField26: TppField
      FieldAlias = 'NUMEROLOTE'
      FieldName = 'NUMEROLOTE'
      FieldLength = 12
      DisplayWidth = 12
      Position = 25
    end
    object dbpInvItensppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object dbpInvItensppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADEVOLUME'
      FieldName = 'QUANTIDADEVOLUME'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 27
    end
    object dbpInvItensppField29: TppField
      FieldAlias = 'CFOPENTRADA'
      FieldName = 'CFOPENTRADA'
      FieldLength = 4
      DisplayWidth = 4
      Position = 28
    end
    object dbpInvItensppField30: TppField
      FieldAlias = 'CFOPCST'
      FieldName = 'CFOPCST'
      FieldLength = 4
      DisplayWidth = 4
      Position = 29
    end
    object dbpInvItensppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'ENTRADA'
      DetailFieldName = 'ENTRADA'
      DetailSortOrder = soAscending
    end
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_InvoiceDS
    SQL.Strings = (
      
        'Select tr.parcela, tr.valor, tr.vencimento, tr.Compra,  tr.titul' +
        'o'
      'From DuplicatasAPagar tr'
      'Where tr.Compra = :Entrada'
      'Order By tr.parcela')
    Left = 399
    Top = 26
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ENTRADA'
        ParamType = ptUnknown
        Size = 4
      end>
    object Q_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object Q_ParcelasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_ParcelasCOMPRA: TIntegerField
      FieldName = 'COMPRA'
    end
    object Q_ParcelasTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = 'DUPLICATASAPAGAR.TITULO'
      Size = 15
    end
  end
  object Q_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 400
    Top = 77
  end
  object dbpParcelas: TppDBPipeline
    DataSource = Q_ParcelasDS
    RangeEnd = reCount
    RangeEndCount = 27
    SkipWhenNoRecords = False
    UserName = 'dbpParcelas'
    Left = 400
    Top = 232
    MasterDataPipelineName = 'dbpInvoice'
    object dbpParcelasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbpParcelasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object dbpParcelasppField3: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object dbpParcelasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMPRA'
      FieldName = 'COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbpParcelasppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'ENTRADA'
      DetailFieldName = 'COMPRA'
      DetailSortOrder = soAscending
    end
  end
  object C_Parcelas: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'COMPRA'
    MasterFields = 'ENTRADA'
    MasterSource = Q_InvoiceDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'P_Parcelas'
    Left = 402
    Top = 172
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_ParcelasVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ParcelasCOMPRA: TIntegerField
      FieldName = 'COMPRA'
    end
  end
  object P_Parcelas: TDataSetProvider
    DataSet = Q_Parcelas
    Constraints = True
    Left = 400
    Top = 125
  end
  object rbNotaFiscal: TppReport
    AutoStop = False
    DataPipeline = dbpInvItens
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Temp\Templates\NF_Entrada.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OnPreviewFormCreate = rbNotaFiscalPreviewFormCreate
    Left = 592
    Top = 77
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpInvItens'
    object ppCabecalho: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 74348
      mmPrintPosition = 0
      object ppDBText192: TppDBText
        UserName = 'Razao'
        DataField = 'RAZAO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 41540
        mmWidth = 103981
        BandType = 0
      end
      object ppDBText193: TppDBText
        UserName = 'Natureza'
        DataField = 'DESCRICAO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 27252
        mmWidth = 72496
        BandType = 0
      end
      object ppDBText194: TppDBText
        UserName = 'CFOP'
        DataField = 'CFOPNOTA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 27252
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Saida'
        OnGetText = ppLabel66GetText
        Caption = ' x '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 133086
        mmTop = 5556
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Entrada'
        OnGetText = ppLabel67GetText
        Caption = ' x '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 153194
        mmTop = 5556
        mmWidth = 4763
        BandType = 0
      end
      object ppDBText195: TppDBText
        UserName = 'NOTAFISCAL1'
        OnGetText = ppDBText195GetText
        DataField = 'INVOICE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 529
        mmWidth = 21696
        BandType = 0
      end
      object ppDBText196: TppDBText
        UserName = 'Endereco'
        DataField = 'ENDERECO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 51594
        mmWidth = 83344
        BandType = 0
      end
      object ppDBText197: TppDBText
        UserName = 'Bairro'
        DataField = 'BAIRRO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 93398
        mmTop = 51594
        mmWidth = 49213
        BandType = 0
      end
      object ppDBText198: TppDBText
        UserName = 'CEP'
        DataField = 'CEP'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 150813
        mmTop = 51594
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText199: TppDBText
        UserName = 'DataEmissao'
        DataField = 'DATA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 41540
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText200: TppDBText
        UserName = 'DataSaidaOuEntrada'
        DataField = 'DATA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 179917
        mmTop = 51594
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText201: TppDBText
        UserName = 'Municipio'
        DataField = 'CIDADE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 61119
        mmWidth = 83608
        BandType = 0
      end
      object ppDBText202: TppDBText
        UserName = 'Fone'
        DataField = 'FONE1'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 61119
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText203: TppDBText
        UserName = 'UF'
        DataField = 'UF'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 119327
        mmTop = 61119
        mmWidth = 19315
        BandType = 0
      end
      object ppDBText204: TppDBText
        UserName = 'CPF_CNPJ'
        OnGetText = ppDBText204GetText
        DataField = 'CPF_CNPJ'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 133879
        mmTop = 41540
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText205: TppDBText
        UserName = 'InscricaoEstadual'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 139700
        mmTop = 61119
        mmWidth = 27781
        BandType = 0
      end
      object NUMEROPARC_1: TppLabel
        UserName = 'NUMEROPARC_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3316
        mmLeft = 5027
        mmTop = 65617
        mmWidth = 10866
        BandType = 0
      end
      object NUMEROPARC_2: TppLabel
        UserName = 'NUMEROPARC_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 74348
        mmTop = 65617
        mmWidth = 10866
        BandType = 0
      end
      object NUMEROPARC_3: TppLabel
        UserName = 'NUMEROPARC_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 65617
        mmWidth = 10866
        BandType = 0
      end
      object VENCIMENTOPARC_1: TppLabel
        UserName = 'VENCIMENTOPARC_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 65617
        mmWidth = 18556
        BandType = 0
      end
      object VENCIMENTOPARC_2: TppLabel
        UserName = 'VENC_PARC2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89429
        mmTop = 65617
        mmWidth = 18556
        BandType = 0
      end
      object VENCIMENTOPARC_3: TppLabel
        UserName = 'VENC_PARC3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160338
        mmTop = 65617
        mmWidth = 18556
        BandType = 0
      end
      object NUMEROPARC_4: TppLabel
        UserName = 'NUMEROPARC_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3316
        mmLeft = 5027
        mmTop = 69586
        mmWidth = 10866
        BandType = 0
      end
      object NUMEROPARC_5: TppLabel
        UserName = 'NUMEROPARC_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 74613
        mmTop = 69586
        mmWidth = 10866
        BandType = 0
      end
      object NUMEROPARC_6: TppLabel
        UserName = 'NUMEROPARC_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145521
        mmTop = 69586
        mmWidth = 10866
        BandType = 0
      end
      object VENCIMENTOPARC_4: TppLabel
        UserName = 'VENCIMENTOPARC_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18785
        mmTop = 69586
        mmWidth = 18556
        BandType = 0
      end
      object VENCIMENTOPARC_5: TppLabel
        UserName = 'VENC_PARC5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89429
        mmTop = 69586
        mmWidth = 18556
        BandType = 0
      end
      object VENCIMENTOPARC_6: TppLabel
        UserName = 'VENCIMENTOPARC_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160338
        mmTop = 69586
        mmWidth = 18556
        BandType = 0
      end
      object VALORPARC_1: TppLabel
        UserName = 'VALORPARC_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 39934
        mmTop = 65617
        mmWidth = 20391
        BandType = 0
      end
      object VALORPARC_2: TppLabel
        UserName = 'VALORPARC_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 110049
        mmTop = 65617
        mmWidth = 20391
        BandType = 0
      end
      object VALORPARC_3: TppLabel
        UserName = 'VALORPARC_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 181222
        mmTop = 65617
        mmWidth = 20391
        BandType = 0
      end
      object VALORPARC_4: TppLabel
        UserName = 'VALORPARC_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 40199
        mmTop = 69586
        mmWidth = 20391
        BandType = 0
      end
      object VALORPARC_5: TppLabel
        UserName = 'VALORPARC_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 110049
        mmTop = 69586
        mmWidth = 20391
        BandType = 0
      end
      object VALORPARC_6: TppLabel
        UserName = 'VALORPARC_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 181222
        mmTop = 69586
        mmWidth = 20391
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'Hora'
        VarType = vtTime
        DisplayFormat = 'hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 60854
        mmWidth = 8202
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object subComposicaoItensNF: TppSubReport
        UserName = 'subComposicaoItensNF'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = subIdentificacoesNF
        TraverseAllData = False
        DataPipelineName = 'dbCompItens'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 15346
        mmWidth = 216000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport12: TppChildReport
          AutoStop = False
          DataPipeline = dbCompItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbCompItens'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand17: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              UserName = 'DBText1'
              DataField = 'QUANTIDADE'
              DataPipeline = dbCompItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCompItens'
              mmHeight = 3175
              mmLeft = 16140
              mmTop = 529
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'UNIDADE'
              DataPipeline = dbCompItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCompItens'
              mmHeight = 3175
              mmLeft = 26723
              mmTop = 529
              mmWidth = 6350
              BandType = 4
            end
            object ppDBText95: TppDBText
              UserName = 'DBText2'
              DataField = 'DESCRICAO'
              DataPipeline = dbCompItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCompItens'
              mmHeight = 3175
              mmLeft = 33602
              mmTop = 529
              mmWidth = 50536
              BandType = 4
            end
            object ppDBText302: TppDBText
              UserName = 'DBText3'
              DataField = 'SERIAL'
              DataPipeline = dbCompItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCompItens'
              mmHeight = 3175
              mmLeft = 84667
              mmTop = 529
              mmWidth = 33602
              BandType = 4
            end
          end
          object ppSummaryBand9: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 0
        mmWidth = 214578
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText206: TppDBText
          UserName = 'Codigo'
          DataField = 'CODIGO'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3440
          mmLeft = 4498
          mmTop = 794
          mmWidth = 15875
          BandType = 4
        end
        object ppDBText208: TppDBText
          UserName = 'CST'
          DataField = 'CST'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 102394
          mmTop = 794
          mmWidth = 4498
          BandType = 4
        end
        object ppDBText209: TppDBText
          UserName = 'Unid'
          DataField = 'UNIDADE'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 107686
          mmTop = 794
          mmWidth = 5292
          BandType = 4
        end
        object ppDBText210: TppDBText
          UserName = 'Quantidade'
          DataField = 'QUANTIDADE'
          DataPipeline = dbpInvItens
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 113771
          mmTop = 794
          mmWidth = 17727
          BandType = 4
        end
        object ppDBText211: TppDBText
          UserName = 'Preco'
          DataField = 'PRECO'
          DataPipeline = dbpInvItens
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 132292
          mmTop = 794
          mmWidth = 18785
          BandType = 4
        end
        object ppDBText212: TppDBText
          UserName = 'Total'
          DataField = 'TOTAL'
          DataPipeline = dbpInvItens
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 152136
          mmTop = 794
          mmWidth = 18785
          BandType = 4
        end
        object ppDBText213: TppDBText
          UserName = 'ICMS'
          DataField = 'ALIQICMS'
          DataPipeline = dbpInvItens
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 171980
          mmTop = 794
          mmWidth = 8202
          BandType = 4
        end
        object ppLabel68: TppLabel
          UserName = 'Desconto'
          OnGetText = ppLabel68GetText
          Caption = 'Desc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          mmHeight = 3175
          mmLeft = 216000
          mmTop = 794
          mmWidth = 265
          BandType = 4
        end
        object ppDBMemo10: TppDBMemo
          UserName = 'NomeDoProduto'
          CharWrap = True
          DataField = 'ITEMDESC'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Stretch = True
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3440
          mmLeft = 21167
          mmTop = 794
          mmWidth = 80698
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppDBText189: TppDBText
          UserName = 'NumeroLote'
          DataField = 'NUMEROLOTE'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 207434
          mmTop = 794
          mmWidth = 7938
          BandType = 4
        end
        object ppDBText207: TppDBText
          UserName = 'IPI'
          DataField = 'IPI'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 180711
          mmTop = 794
          mmWidth = 3969
          BandType = 4
        end
        object ppDBText297: TppDBText
          UserName = 'ValorIPI'
          DataField = 'VALORIPIPROD'
          DataPipeline = dbpInvItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 185473
          mmTop = 794
          mmWidth = 6615
          BandType = 4
        end
        object ppDesconto: TppDBText
          UserName = 'Desconto1'
          DataField = 'DESCONTO'
          DataPipeline = dbpInvItens
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 200555
          mmTop = 794
          mmWidth = 6350
          BandType = 4
        end
        object ppPercDesconto: TppDBText
          UserName = 'PercDesconto'
          DataField = 'PDESCONTO'
          DataPipeline = dbpInvItens
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'dbpInvItens'
          mmHeight = 3175
          mmLeft = 192352
          mmTop = 794
          mmWidth = 7408
          BandType = 4
        end
      end
      object ppFabricanteNF: TppDBMemo
        UserName = 'FabricanteNF'
        CharWrap = False
        DataField = 'FABRICANTE'
        DataPipeline = dbpInvItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ShiftRelativeTo = ppRegion1
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbpInvItens'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 4498
        mmWidth = 71173
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object dbtDescComplementarNF: TppDBMemo
        UserName = 'dbtDescComplementarNF'
        CharWrap = False
        DataField = 'DESCRICAOCOMPLEMENTAR'
        DataPipeline = dbpInvItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ShiftRelativeTo = ppFabricanteNF
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbpInvItens'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 7938
        mmWidth = 80963
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object subIdentificacoesNF: TppSubReport
        UserName = 'subIdentificacoesNF'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = dbtDescComplementarNF
        TraverseAllData = False
        DataPipelineName = 'dbSaidasItensIdent'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 11377
        mmWidth = 216000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport14: TppChildReport
          AutoStop = False
          Columns = 4
          DataPipeline = dbSaidasItensIdent
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '6.02'
          mmColumnWidth = 54000
          DataPipelineName = 'dbSaidasItensIdent'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppColumnHeaderBand4: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand19: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText262: TppDBText
              UserName = 'DBText262'
              AutoSize = True
              DataField = 'SERIAL'
              DataPipeline = dbSaidasItensIdent
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbSaidasItensIdent'
              mmHeight = 3175
              mmLeft = 3704
              mmTop = 529
              mmWidth = 47890
              BandType = 4
            end
          end
          object ppColumnFooterBand4: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand11: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppFooterBand11: TppFooterBand
      BeforeGenerate = ppFooterBand11BeforeGenerate
      mmBottomOffset = 0
      mmHeight = 109538
      mmPrintPosition = 0
      object lbContinuacao2: TppLabel
        UserName = 'lbContinuacao1'
        Caption = '***  Continua'#231#227'o da nota na pr'#243'xima folha  ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 15081
        mmWidth = 70644
        BandType = 8
      end
      object lbContinuacao: TppLabel
        UserName = 'lbContinuacao'
        Caption = '***  Continua'#231#227'o da nota na pr'#243'xima folha  ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 6879
        mmWidth = 70644
        BandType = 8
      end
      object ppDBText215: TppDBText
        Tag = 50
        UserName = 'BaseCalcICMS'
        DataField = 'BASECALCICMS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 7673
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText216: TppDBText
        Tag = 50
        UserName = 'ValorICMS'
        DataField = 'VALORICMS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 7673
        mmWidth = 31485
        BandType = 8
      end
      object ppDBText217: TppDBText
        Tag = 50
        UserName = 'BaseCalcSubst'
        OnGetText = ppDBText217GetText
        DataField = 'BASECALCSUBST'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 82550
        mmTop = 7673
        mmWidth = 32015
        BandType = 8
      end
      object ppDBText218: TppDBText
        Tag = 50
        UserName = 'ValorICMSSubst'
        OnGetText = ppDBText217GetText
        DataField = 'VALORICMSSUBST'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 126736
        mmTop = 7673
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText219: TppDBText
        Tag = 50
        UserName = 'TotalItens'
        OnGetText = ppDBText217GetText
        DataField = 'TOTALITENS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 164571
        mmTop = 7673
        mmWidth = 26458
        BandType = 8
      end
      object ppDBText220: TppDBText
        Tag = 50
        UserName = 'Frete'
        DataField = 'FRETE'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 15875
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText221: TppDBText
        Tag = 50
        UserName = 'ValorSeguro'
        DataField = 'VALORSEGURO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 39952
        mmTop = 16140
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText222: TppDBText
        Tag = 50
        UserName = 'OutrasDespesas'
        OnGetText = ppDBText217GetText
        DataField = 'OUTRASDESPESAS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 15610
        mmWidth = 32015
        BandType = 8
      end
      object ppDBText223: TppDBText
        Tag = 50
        UserName = 'Valor_IPI'
        OnGetText = ppDBText217GetText
        DataField = 'VALORIPI'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 127265
        mmTop = 15081
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText224: TppDBText
        Tag = 50
        UserName = 'TotaldaNota'
        OnGetText = ppDBText217GetText
        DataField = 'TOTAL'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 161925
        mmTop = 15081
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText225: TppDBText
        UserName = 'TipoFrete'
        OnGetText = ppDBText225GetText
        DataField = 'TIPOFRETE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 106098
        mmTop = 25665
        mmWidth = 6879
        BandType = 8
      end
      object ppDBText226: TppDBText
        UserName = 'Especie'
        DataField = 'DESCESPECIE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 29898
        mmTop = 47361
        mmWidth = 38894
        BandType = 8
      end
      object ppDBText227: TppDBText
        UserName = 'Marca'
        DataField = 'DESCMARCA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 71702
        mmTop = 47361
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText228: TppDBText
        UserName = 'Numero'
        DataField = 'DESCNUMERO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 95250
        mmTop = 47361
        mmWidth = 20108
        BandType = 8
      end
      object ppDBText229: TppDBText
        UserName = 'PesoBruto'
        DataField = 'PESOBRUTO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 123296
        mmTop = 47361
        mmWidth = 33073
        BandType = 8
      end
      object ppDBText230: TppDBText
        UserName = 'PesoLiquido'
        DataField = 'PESOLIQUIDO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 160602
        mmTop = 47361
        mmWidth = 33073
        BandType = 8
      end
      object ppDBText231: TppDBText
        UserName = 'NumeroNotaFiscal'
        OnGetText = ppDBText195GetText
        DataField = 'INVOICE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 85461
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText232: TppDBText
        UserName = 'NomeTransportadora'
        DataField = 'TRANSP_NOME'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 25665
        mmWidth = 93663
        BandType = 8
      end
      object ppDBText233: TppDBText
        UserName = 'EnderecoTransportadora'
        DataField = 'TRANSP_ENDERECO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 36248
        mmWidth = 94192
        BandType = 8
      end
      object ppDBText234: TppDBText
        UserName = 'Volumes'
        DataField = 'VOLUMES'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 47361
        mmWidth = 20902
        BandType = 8
      end
      object ppDBText235: TppDBText
        UserName = 'CidadeTransportadora'
        DataField = 'TRANSP_CIDADE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 99219
        mmTop = 36248
        mmWidth = 44186
        BandType = 8
      end
      object ppDBText236: TppDBText
        UserName = 'UFTransportadora'
        DataField = 'TRANSP_UF'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 144992
        mmTop = 36248
        mmWidth = 6350
        BandType = 8
      end
      object ppDBText237: TppDBText
        UserName = 'CPF_CNPJ_Transportadora'
        OnGetText = ppDBText204GetText
        DataField = 'TRANSP_CPF_CNPJ'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 156634
        mmTop = 25665
        mmWidth = 39688
        BandType = 8
      end
      object ppDBText238: TppDBText
        UserName = 'InscEstadualTransportadora'
        DataField = 'TRANSP_INSCRICAO_EST'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 156369
        mmTop = 36248
        mmWidth = 40217
        BandType = 8
      end
      object ppDBText239: TppDBText
        UserName = 'PlacaVeiculo'
        DataField = 'PLACAVEIC'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 126471
        mmTop = 25665
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel69: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel69GetText
        Caption = 'Desconto Promocional:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 19579
        mmTop = 529
        mmWidth = 33867
        BandType = 8
      end
      object dbtDescontos: TppDBText
        UserName = 'dbtDescontos'
        OnGetText = dbtDescontosGetText
        DataField = 'DESCONTO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 529
        mmWidth = 18785
        BandType = 8
      end
      object ppDBMemo9: TppDBMemo
        UserName = 'Mensagem'
        CharWrap = False
        DataField = 'OBS'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 19844
        mmLeft = 2381
        mmTop = 61119
        mmWidth = 87577
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText159: TppDBText
        UserName = 'NomeVendedor'
        DataField = 'VENDEDOR'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 34925
        mmTop = 88106
        mmWidth = 55033
        BandType = 8
      end
      object ppDBText166: TppDBText
        UserName = 'CodigoVendedor'
        DataField = 'CODIGOVENDEDOR'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 34660
        mmTop = 84402
        mmWidth = 55033
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'FreteEmitente'
        OnGetText = ppLabel7GetText
        AutoSize = False
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 25929
        mmWidth = 3704
        BandType = 8
      end
      object ppLabel13: TppLabel
        UserName = 'FreteDestinatario'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 119592
        mmTop = 25929
        mmWidth = 3704
        BandType = 8
      end
    end
  end
  object DlgMsg: TDlgMsg
    Left = 72
    Top = 232
  end
  object rbServicos: TppReport
    AutoStop = False
    DataPipeline = dbpInvoice
    OnStartPage = rbServicosStartPage
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Temp\Templates\Nota Fiscal Walber.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    Left = 592
    Top = 125
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpInvoice'
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 69056
      mmPrintPosition = 0
      object ppDBText240: TppDBText
        UserName = 'Nome'
        DataField = 'NOME'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 33602
        mmWidth = 101865
        BandType = 0
      end
      object ppDBText241: TppDBText
        UserName = 'Natureza'
        DataField = 'DESCRICAO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 24871
        mmWidth = 80169
        BandType = 0
      end
      object ppDBText242: TppDBText
        UserName = 'CFOP'
        DataField = 'CFOPNOTA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 24606
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Saida'
        OnGetText = ppLabel70GetText
        Caption = ' x '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 144198
        mmTop = 6615
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Entrada'
        OnGetText = ppLabel71GetText
        Caption = ' x '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 164042
        mmTop = 6879
        mmWidth = 4763
        BandType = 0
      end
      object ppDBText243: TppDBText
        UserName = 'NumeroNota'
        DataField = 'INVOICE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3969
        mmLeft = 179123
        mmTop = 529
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText244: TppDBText
        UserName = 'Endereco'
        DataField = 'ENDERECO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 39688
        mmWidth = 97631
        BandType = 0
      end
      object ppDBText245: TppDBText
        UserName = 'Bairro'
        DataField = 'BAIRRO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 40217
        mmWidth = 47625
        BandType = 0
      end
      object ppDBText246: TppDBText
        UserName = 'CEP'
        DataField = 'CEP'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 40217
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText247: TppDBText
        UserName = 'DataEmissao'
        DataField = 'DATA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 194469
        mmTop = 33867
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText248: TppDBText
        UserName = 'DataEntrada_Saida'
        DataField = 'DATA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 194469
        mmTop = 40481
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText249: TppDBText
        UserName = 'Cidade'
        DataField = 'CIDADE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 46038
        mmWidth = 83608
        BandType = 0
      end
      object ppDBText250: TppDBText
        UserName = 'Fone'
        DataField = 'FONE1'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 98425
        mmTop = 46302
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText251: TppDBText
        UserName = 'UF'
        DataField = 'UF'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 133615
        mmTop = 46567
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText252: TppDBText
        UserName = 'CPF_CNPJ'
        OnGetText = ppDBText204GetText2
        DataField = 'CPF_CNPJ'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 33867
        mmWidth = 31750
        BandType = 0
      end
      object ppDBText253: TppDBText
        UserName = 'InscricaoEstadual'
        DataField = 'INSCRICAO_EST'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 46567
        mmWidth = 27781
        BandType = 0
      end
      object NumeroParcS_1: TppLabel
        UserName = 'NUMEROPARC_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 56092
        mmWidth = 10848
        BandType = 0
      end
      object NumeroParcS_2: TppLabel
        UserName = 'NUMEROPARC_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 85725
        mmTop = 56356
        mmWidth = 10848
        BandType = 0
      end
      object NumeroParcS_3: TppLabel
        UserName = 'NUMEROPARC_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 56621
        mmWidth = 10848
        BandType = 0
      end
      object VencimentoParcS_1: TppLabel
        UserName = 'VENCIMENTOPARC_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 65088
        mmTop = 56621
        mmWidth = 18521
        BandType = 0
      end
      object VencimentoParcS_2: TppLabel
        UserName = 'VENCIMENTOPARC_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 130704
        mmTop = 56356
        mmWidth = 18521
        BandType = 0
      end
      object VencimentoParcS_3: TppLabel
        UserName = 'VENCIMENTOPARC_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 194469
        mmTop = 56621
        mmWidth = 18521
        BandType = 0
      end
      object NumeroParcS_4: TppLabel
        UserName = 'NUMEROPARC_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 22225
        mmTop = 60325
        mmWidth = 10848
        BandType = 0
      end
      object NumeroParcS_5: TppLabel
        UserName = 'NUMEROPARC_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 85725
        mmTop = 60061
        mmWidth = 10848
        BandType = 0
      end
      object NumeroParcS_6: TppLabel
        UserName = 'PARC_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 60325
        mmWidth = 10848
        BandType = 0
      end
      object VencimentoParcS_4: TppLabel
        UserName = 'VENCIMENTOPARC_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 60325
        mmWidth = 18521
        BandType = 0
      end
      object VencimentoParcS_5: TppLabel
        UserName = 'VENCIMENTOPARC_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 60061
        mmWidth = 18521
        BandType = 0
      end
      object VencimentoParcS_6: TppLabel
        UserName = 'VENCIMENTOPARC_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 194205
        mmTop = 60325
        mmWidth = 18521
        BandType = 0
      end
      object ValorParcS_1: TppLabel
        UserName = 'VALORPARC_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 38629
        mmTop = 56621
        mmWidth = 20373
        BandType = 0
      end
      object ValorParcS_2: TppLabel
        UserName = 'VALORPARC_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 105834
        mmTop = 56356
        mmWidth = 20373
        BandType = 0
      end
      object ValorParcS_3: TppLabel
        UserName = 'VALORPARC_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 56621
        mmWidth = 20373
        BandType = 0
      end
      object ValorParcS_4: TppLabel
        UserName = 'VALORPARC_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 38365
        mmTop = 60325
        mmWidth = 20373
        BandType = 0
      end
      object ValorParcS_5: TppLabel
        UserName = 'VALORPARC_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 105834
        mmTop = 60061
        mmWidth = 20373
        BandType = 0
      end
      object ValorParcS_6: TppLabel
        UserName = 'VALORPARC_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 60325
        mmWidth = 20373
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'Hora'
        VarType = vtTime
        DisplayFormat = 'hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200025
        mmTop = 47096
        mmWidth = 6879
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 100013
      mmPrintPosition = 0
      object Produtos: TppSubReport
        UserName = 'Produtos'
        ExpandAll = True
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbpInvItens'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 216000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 145000
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = dbpInvItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbpInvItens'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand15: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 19050
            mmPrintPosition = 0
            object SubComposicaoItensNFS: TppSubReport
              UserName = 'ComposicaoItens'
              ExpandAll = False
              NewPrintJob = False
              ShiftRelativeTo = subIdentificacoesNFS
              TraverseAllData = False
              DataPipelineName = 'dbCompItens'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 14817
              mmWidth = 216000
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport13: TppChildReport
                AutoStop = False
                DataPipeline = dbCompItens
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'Carta'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 0
                PrinterSetup.mmMarginLeft = 0
                PrinterSetup.mmMarginRight = 0
                PrinterSetup.mmMarginTop = 0
                PrinterSetup.mmPaperHeight = 279000
                PrinterSetup.mmPaperWidth = 216000
                PrinterSetup.PaperSize = 1
                Units = utMillimeters
                Version = '6.02'
                mmColumnWidth = 0
                DataPipelineName = 'dbCompItens'
                object ppTitleBand4: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
                object ppDetailBand18: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3704
                  mmPrintPosition = 0
                  object ppDBText96: TppDBText
                    UserName = 'Quantidade'
                    DataField = 'QUANTIDADE'
                    DataPipeline = dbCompItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'dbCompItens'
                    mmHeight = 3175
                    mmLeft = 15346
                    mmTop = 265
                    mmWidth = 7938
                    BandType = 4
                  end
                  object ppDBText134: TppDBText
                    UserName = 'Unidade'
                    DataField = 'UNIDADE'
                    DataPipeline = dbCompItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'dbCompItens'
                    mmHeight = 3175
                    mmLeft = 24077
                    mmTop = 265
                    mmWidth = 5821
                    BandType = 4
                  end
                  object ppDBText137: TppDBText
                    UserName = 'Descricao'
                    DataField = 'DESCRICAO'
                    DataPipeline = dbCompItens
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = []
                    Transparent = True
                    DataPipelineName = 'dbCompItens'
                    mmHeight = 3175
                    mmLeft = 30427
                    mmTop = 265
                    mmWidth = 72231
                    BandType = 4
                  end
                end
                object ppSummaryBand10: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 0
                  mmPrintPosition = 0
                end
              end
            end
            object dbtDescComplementarNFS: TppDBMemo
              UserName = 'DescricaoComplementar'
              CharWrap = False
              DataField = 'DESCRICAOCOMPLEMENTAR'
              DataPipeline = dbpInvItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ShiftRelativeTo = ppFabricanteNFS
              Stretch = True
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3969
              mmLeft = 17727
              mmTop = 7144
              mmWidth = 158221
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object ppRegion2: TppRegion
              UserName = 'Region1'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 215900
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText254: TppDBText
                UserName = 'Codigo'
                DataField = 'CODIGO'
                DataPipeline = dbpInvItens
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3440
                mmLeft = 2117
                mmTop = 265
                mmWidth = 15875
                BandType = 4
              end
              object ppDBText255: TppDBText
                UserName = 'DescricaoItem'
                DataField = 'ITEMDESC'
                DataPipeline = dbpInvItens
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                WordWrap = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 29633
                mmTop = 265
                mmWidth = 85725
                BandType = 4
              end
              object ppDBText256: TppDBText
                UserName = 'CST'
                DataField = 'CST'
                DataPipeline = dbpInvItens
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                Visible = False
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 125942
                mmTop = 265
                mmWidth = 4498
                BandType = 4
              end
              object ppDBText257: TppDBText
                UserName = 'Unidade'
                DataField = 'UNIDADE'
                DataPipeline = dbpInvItens
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 130704
                mmTop = 265
                mmWidth = 5292
                BandType = 4
              end
              object ppDBText258: TppDBText
                UserName = 'Quantidade'
                DataField = 'QUANTIDADE'
                DataPipeline = dbpInvItens
                DisplayFormat = '#,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 136525
                mmTop = 265
                mmWidth = 10583
                BandType = 4
              end
              object ppDBText259: TppDBText
                UserName = 'Preco'
                DataField = 'PRECO'
                DataPipeline = dbpInvItens
                DisplayFormat = '#,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 148961
                mmTop = 265
                mmWidth = 19844
                BandType = 4
              end
              object ppDBText260: TppDBText
                UserName = 'Total'
                DataField = 'TOTAL'
                DataPipeline = dbpInvItens
                DisplayFormat = '#,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 182827
                mmTop = 265
                mmWidth = 21167
                BandType = 4
              end
              object ppDBText261: TppDBText
                UserName = 'AliqICMS'
                DataField = 'ALIQICMS'
                DataPipeline = dbpInvItens
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 203994
                mmTop = 265
                mmWidth = 4763
                BandType = 4
              end
              object ppPercDescontoServ: TppDBText
                UserName = 'PercentualDesconto'
                DataField = 'PDESCONTO'
                DataPipeline = dbpInvItens
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbpInvItens'
                mmHeight = 3175
                mmLeft = 169863
                mmTop = 265
                mmWidth = 6085
                BandType = 4
              end
            end
            object ppDBText298: TppDBText
              UserName = 'IPI'
              DataField = 'IPI'
              DataPipeline = dbpInvItens
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3175
              mmLeft = 188384
              mmTop = 6615
              mmWidth = 9260
              BandType = 4
            end
            object ppDBText299: TppDBText
              UserName = 'ValorIPI'
              DataField = 'VALORIPIPROD'
              DataPipeline = dbpInvItens
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3175
              mmLeft = 201877
              mmTop = 6350
              mmWidth = 2646
              BandType = 4
            end
            object ppDescontoServ: TppDBText
              UserName = 'Desconto'
              DataField = 'DESCONTO'
              DataPipeline = dbpInvItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3175
              mmLeft = 181505
              mmTop = 9525
              mmWidth = 3969
              BandType = 4
            end
            object subIdentificacoesNFS: TppSubReport
              UserName = 'Identificacoes'
              ExpandAll = False
              NewPrintJob = False
              ShiftRelativeTo = dbtDescComplementarNFS
              TraverseAllData = False
              DataPipelineName = 'dbSaidasItensIdent'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 10848
              mmWidth = 216000
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport15: TppChildReport
                AutoStop = False
                DataPipeline = dbSaidasItensIdent
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'Carta'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 0
                PrinterSetup.mmMarginLeft = 0
                PrinterSetup.mmMarginRight = 0
                PrinterSetup.mmMarginTop = 0
                PrinterSetup.mmPaperHeight = 279000
                PrinterSetup.mmPaperWidth = 216000
                PrinterSetup.PaperSize = 1
                Units = utMillimeters
                Version = '6.02'
                mmColumnWidth = 0
                DataPipelineName = 'dbSaidasItensIdent'
                object ppHeaderBand14: TppHeaderBand
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                end
                object ppDetailBand21: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                end
                object ppFooterBand14: TppFooterBand
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                end
              end
            end
            object ppFabricanteNFS: TppDBMemo
              UserName = 'Fabricante'
              CharWrap = False
              DataField = 'FABRICANTE'
              DataPipeline = dbpInvItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ShiftRelativeTo = ppRegion2
              Stretch = True
              Transparent = True
              DataPipelineName = 'dbpInvItens'
              mmHeight = 3704
              mmLeft = 17727
              mmTop = 3440
              mmWidth = 79640
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
          end
          object ppSummaryBand7: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object Servicos: TppSubReport
        UserName = 'Servicos'
        ExpandAll = True
        NewPrintJob = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'dbServicos'
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 79904
        mmWidth = 179388
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 35719
        mmStopPosition = 0
        object ppChildReport11: TppChildReport
          AutoStop = False
          DataPipeline = dbServicos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbServicos'
          object ppHeaderBand13: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand16: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText263: TppDBText
              UserName = 'Quantidade'
              DataField = 'QUANTIDADE'
              DataPipeline = dbServicos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'dbServicos'
              mmHeight = 3440
              mmLeft = 109802
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText264: TppDBText
              UserName = 'Total'
              DataField = 'SubTotal'
              DataPipeline = dbServicos
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbServicos'
              mmHeight = 3440
              mmLeft = 149754
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBMemo12: TppDBMemo
              UserName = 'DescricaoServico'
              CharWrap = False
              DataField = 'Descricao'
              DataPipeline = dbServicos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Stretch = True
              Transparent = True
              DataPipelineName = 'dbServicos'
              mmHeight = 3704
              mmLeft = 8731
              mmTop = 0
              mmWidth = 98161
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
            object BaseCalculoISS: TppDBCalc
              UserName = 'TotalServicos'
              DataField = 'SubTotal'
              DataPipeline = dbServicos
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'dbServicos'
              mmHeight = 3175
              mmLeft = 183092
              mmTop = 0
              mmWidth = 21960
              BandType = 4
            end
          end
          object ppFooterBand12: TppFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand8: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLabel91: TppLabel
        UserName = 'AliquotaISS'
        OnGetText = ppLabel91GetText
        Caption = 'Al'#237'quota ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 84931
        mmWidth = 19315
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'ValorISS'
        OnGetText = ppLabel92GetText
        Caption = 'Valor do ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 185209
        mmTop = 90752
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText307: TppDBText
        Tag = 50
        UserName = 'DBText307'
        OnGetText = ppDBText307GetText
        DataField = 'TOTALSERVICOS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 185473
        mmTop = 96044
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppFooterBand13: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 109273
      mmPrintPosition = 0
      object ppDBMemo11: TppDBMemo
        UserName = 'Mensagem'
        CharWrap = False
        DataField = 'OBS'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 22754
        mmLeft = 2910
        mmTop = 44186
        mmWidth = 98954
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText265: TppDBText
        Tag = 50
        UserName = 'BASECALCICMS'
        DataField = 'BASECALCICMS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 7673
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText266: TppDBText
        Tag = 50
        UserName = 'VALORICMS'
        DataField = 'VALORICMS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 7673
        mmWidth = 31485
        BandType = 8
      end
      object ppDBText267: TppDBText
        Tag = 50
        UserName = 'BASECALCSUBST'
        DataField = 'BASECALCSUBST'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 78052
        mmTop = 7673
        mmWidth = 36513
        BandType = 8
      end
      object ppDBText268: TppDBText
        Tag = 50
        UserName = 'VALORICMSSUBST'
        DataField = 'VALORICMSSUBST'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 122767
        mmTop = 7673
        mmWidth = 33867
        BandType = 8
      end
      object ppDBText269: TppDBText
        Tag = 50
        UserName = 'TOTALITENS'
        DataField = 'TOTALITENS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 7673
        mmWidth = 26458
        BandType = 8
      end
      object ppDBText270: TppDBText
        Tag = 50
        UserName = 'Frete'
        DataField = 'FRETE'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 13494
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText271: TppDBText
        Tag = 50
        UserName = 'ValorSeguro'
        DataField = 'VALORSEGURO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 39952
        mmTop = 13758
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText272: TppDBText
        Tag = 50
        UserName = 'OutrasDespesas'
        DataField = 'OUTRASDESPESAS'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 13758
        mmWidth = 32015
        BandType = 8
      end
      object ppDBText273: TppDBText
        Tag = 50
        UserName = 'ValorIPI'
        DataField = 'VALORIPI'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 127265
        mmTop = 13229
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText274: TppDBText
        Tag = 50
        UserName = 'TotaldaNota'
        DataField = 'TOTAL'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3704
        mmLeft = 175684
        mmTop = 13229
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText275: TppDBText
        Tag = 50
        UserName = 'TipoFrete'
        OnGetText = ppDBText275GetText
        DataField = 'TIPOFRETE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 22490
        mmWidth = 6879
        BandType = 8
      end
      object ppDBText276: TppDBText
        Tag = 50
        UserName = 'Especie'
        DataField = 'DESCESPECIE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 50800
        mmTop = 35454
        mmWidth = 30427
        BandType = 8
      end
      object ppDBText277: TppDBText
        Tag = 50
        UserName = 'Marca'
        DataField = 'DESCMARCA'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 86254
        mmTop = 35454
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText278: TppDBText
        Tag = 50
        UserName = 'Numero'
        DataField = 'DESCNUMERO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 115623
        mmTop = 35454
        mmWidth = 20108
        BandType = 8
      end
      object ppDBText279: TppDBText
        Tag = 50
        UserName = 'PesoBruto'
        DataField = 'PESOBRUTO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 148961
        mmTop = 35454
        mmWidth = 33073
        BandType = 8
      end
      object ppDBText280: TppDBText
        Tag = 50
        UserName = 'PesoLiquido'
        DataField = 'PESOLIQUIDO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 184150
        mmTop = 35454
        mmWidth = 24871
        BandType = 8
      end
      object ppDBText281: TppDBText
        UserName = 'NumeroNota1'
        DataField = 'INVOICE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3969
        mmLeft = 173038
        mmTop = 60325
        mmWidth = 26194
        BandType = 8
      end
      object ppDBText282: TppDBText
        Tag = 50
        UserName = 'NomeTransportadora'
        DataField = 'TRANSP_NOME'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 22490
        mmWidth = 93663
        BandType = 8
      end
      object ppDBText283: TppDBText
        Tag = 50
        UserName = 'Endereco_Transportadora'
        DataField = 'TRANSP_ENDERECO'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 29104
        mmWidth = 89429
        BandType = 8
      end
      object ppDBText284: TppDBText
        Tag = 50
        UserName = 'Volumes'
        DataField = 'VOLUMES'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 35454
        mmWidth = 24871
        BandType = 8
      end
      object ppDBText285: TppDBText
        Tag = 50
        UserName = 'Cidade_Transportadora'
        DataField = 'TRANSP_CIDADE'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 120121
        mmTop = 29104
        mmWidth = 37571
        BandType = 8
      end
      object ppDBText286: TppDBText
        Tag = 50
        UserName = 'TransportadoraUF'
        DataField = 'TRANSP_UF'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 160602
        mmTop = 29104
        mmWidth = 6350
        BandType = 8
      end
      object ppDBText287: TppDBText
        Tag = 50
        UserName = 'CPF_CNPJ_Transportadora'
        OnGetText = ppDBText204GetText2
        DataField = 'TRANSP_CPF_CNPJ'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 22490
        mmWidth = 39688
        BandType = 8
      end
      object ppDBText288: TppDBText
        Tag = 50
        UserName = 'TransportadoraInscEstadual'
        DataField = 'TRANSP_INSCRICAO_EST'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3440
        mmLeft = 170127
        mmTop = 29104
        mmWidth = 40217
        BandType = 8
      end
      object ppDBText289: TppDBText
        Tag = 50
        UserName = 'Placa'
        DataField = 'PLACAVEIC'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 136261
        mmTop = 22490
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel93: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel93GetText
        Caption = 'Desconto Promocional:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 19579
        mmTop = 529
        mmWidth = 33867
        BandType = 8
      end
      object ppDBText290: TppDBText
        UserName = 'dbtDesconto'
        OnGetText = ppLabel93GetText
        DataField = 'DESCONTO'
        DataPipeline = dbpInvoice
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 529
        mmWidth = 18785
        BandType = 8
      end
      object lbContinuacaoServ: TppLabel
        UserName = 'lbContinuacao'
        Caption = '***  Continua'#231#227'o da nota na pr'#243'xima folha  ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 7938
        mmWidth = 82286
        BandType = 8
      end
      object lbContinuacaoServ2: TppLabel
        UserName = 'lbContinuacao2'
        Caption = '***  Continua'#231#227'o da nota na pr'#243'xima folha  ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 13758
        mmWidth = 82286
        BandType = 8
      end
      object ppLabel14: TppLabel
        UserName = 'Emitente'
        OnGetText = ppLabel14GetText
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 22490
        mmWidth = 2381
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Destinatario'
        OnGetText = ppLabel23GetText
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 22490
        mmWidth = 2381
        BandType = 8
      end
      object ppDBText300: TppDBText
        UserName = 'CodigoVendedor'
        DataField = 'CODIGOVENDEDOR'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 59531
        mmWidth = 29104
        BandType = 8
      end
      object ppDBText301: TppDBText
        UserName = 'Vendedor'
        DataField = 'VENDEDOR'
        DataPipeline = dbpInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpInvoice'
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 62971
        mmWidth = 64294
        BandType = 8
      end
    end
  end
  object dbCompItens: TppDBPipeline
    DataSource = C_CompItensDS
    SkipWhenNoRecords = False
    UserName = 'dbCompItens'
    Left = 498
    Top = 233
    MasterDataPipelineName = 'dbpInvItens'
    object dbCompItensppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'ENTRADAITEM'
      DetailFieldName = 'ENTRADAITEM'
      DetailSortOrder = soAscending
    end
  end
  object C_CompItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 504
    Top = 26
    object C_CompItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADASITENSFILHOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_CompItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADASITENSFILHOS.UNIDADE'
      Size = 6
    end
    object C_CompItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_CompItensENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
      Origin = 'ENTRADASITENSFILHOS.ENTRADAITEM'
    end
  end
  object Q_CompItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_InvItensDS
    SQL.Strings = (
      'select sif.entradaitem,sif.quantidade, sif.unidade, i.descricao'
      'from entradasitensfilhos sif '
      'inner join itens i on i.item = sif.item'
      'where sif.entradaItem = :entradaitem')
    Left = 505
    Top = 73
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ENTRADAITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_CompItensDS: TDataSource
    DataSet = C_CompItens
    Left = 504
    Top = 119
  end
  object C_SaidasItensIdentDS: TDataSource
    DataSet = C_SaidasItensIdent
    Left = 181
    Top = 117
  end
  object C_ServicosDS: TDataSource
    DataSet = C_Servicos
    Left = 183
    Top = 75
  end
  object C_Servicos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 179
    Top = 30
    object C_ServicosCodigo: TStringField
      FieldName = 'Codigo'
    end
    object C_ServicosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object C_ServicosUnd: TStringField
      FieldName = 'Und'
      Size = 6
    end
    object C_ServicosPreco: TCurrencyField
      FieldName = 'Preco'
    end
    object C_ServicosQuantidade: TCurrencyField
      FieldName = 'Quantidade'
    end
    object C_ServicosSubTotal: TCurrencyField
      FieldName = 'SubTotal'
    end
  end
  object dbServicos: TppDBPipeline
    DataSource = C_ServicosDS
    OpenDataSource = False
    UserName = 'dbServicos'
    Left = 181
    Top = 172
    object dbServicosppField1: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbServicosppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbServicosppField3: TppField
      FieldAlias = 'Und'
      FieldName = 'Und'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbServicosppField4: TppField
      FieldAlias = 'Preco'
      FieldName = 'Preco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbServicosppField5: TppField
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbServicosppField6: TppField
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object dbSaidasItensIdent: TppDBPipeline
    DataSource = C_SaidasItensIdentDS
    UserName = 'dbSaidasItensIdent'
    Left = 272
    Top = 177
    MasterDataPipelineName = 'dbpInvItens'
    object dbSaidasItensIdentppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'ENTRADAITEM'
      DetailFieldName = 'ENTRADAITEM'
      DetailSortOrder = soAscending
    end
  end
  object C_SaidasItensIdent: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 280
    Top = 31
    object C_SaidasItensIdentENTRADAITEMIDENT: TIntegerField
      FieldName = 'ENTRADAITEMIDENT'
      Origin = 'ENTRADASITENSIDENTS.ENTRADAITEMIDENT'
      Required = True
    end
    object C_SaidasItensIdentENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
      Origin = 'ENTRADASITENSIDENTS.ENTRADAITEM'
    end
    object C_SaidasItensIdentENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADASITENSIDENTS.ENTRADA'
    end
    object C_SaidasItensIdentSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'ENTRADASITENSIDENTS.SERIAL'
      Size = 25
    end
  end
  object Q_SaidasItensIdent: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_InvItensDS
    SQL.Strings = (
      'select * from entradasitensidents'
      'where entradaitem = :entradaitem')
    Left = 280
    Top = 81
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ENTRADAITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Q_CompItens
    Constraints = True
    Left = 498
    Top = 176
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_InvoiceDS
    SQL.Strings = (
      
        'SELECT ei.entrada, ei.entradaitem, i.codigo, ei.descricao as ite' +
        'mdesc, ei.quantidade, ei.preco, ei.descricao,'
      'ei.subtotalitem as total, '
      'i.tipoitem, ei.coluna1, ei.coluna2, ei.coluna3, ei.coluna4, '
      
        'ei.unidade, i.referencia, ti.descricao as desctipoitem, ei.numer' +
        'olote,'
      
        'ei.basecalcicmsprod, ei.ipi, ei.aliqicms, ei.cst, ei.reducaocst,' +
        ' ei.situacaoecf,'
      
        'ei.cfopentrada, ei.basecalcsubstprod, ei.valoripiprod, ei.tva, e' +
        'i.numerolote,'
      'ei.valoricmsprod, ei.valorisentasprod, ei.valoricmssubstprod,'
      'fab.descricao as fabricante, ei.desconto,'
      
        'ei.pdesconto, ei.cfopcst, ei.fator, ei.almoxarifado, L.descricao' +
        ' as Local,'
      
        'ei.taxavel, ei.ordem, ei.sequencia , ei.precovenda, ei.quantidad' +
        'evolume'
      ''
      'FROM entradasitens ei'
      'INNER JOIN itens i on ei.item=i.item'
      'INNER JOIN tipositens ti on ti.tipoitem = i.tipoitem'
      'LEFT JOIN fabricantes fab on i.fabricante = fab.fabricante'
      'LEFT JOIN LOCALIZACOES L ON L.localizacao = I.localizacao'
      ''
      
        ' Where ei.entrada = :entrada  and ei.empresa = :empresa and ei.p' +
        'dv = :pdv'
      'Order By i.tipoitem,fab.descricao,i.descricao,ei.ordem')
    Left = 299
    Top = 326
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'entrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PDV'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 377
    Top = 325
  end
  object Q_ItensDS: TDataSource
    DataSet = Q_Itens
    Left = 456
    Top = 326
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 524
    Top = 325
  end
end

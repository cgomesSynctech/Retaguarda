inherited DlgPosicaoCaixas: TDlgPosicaoCaixas
  Left = 284
  Top = 187
  Width = 443
  Height = 185
  HelpContext = 0
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 317
    Height = 115
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 81
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Hint = 'Mostrar o relat'#243'rio'
      Caption = 'Visualizar'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000007777777000000070FFFFFFF07777700000000070F7
        7777F07777000000000070F77777F07770007000000070F77780008700077000
        000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
        08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
        EFEFFF0770777000000077780000000708777000000077770077777807777000
        0000777770077700777770000000777777800087777770000000777777777777
        777770000000}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 435
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 204
      Caption = 'Relat'#243'rio movimenta'#231#227'o dos caixas do dia.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 414
    end
    inherited lbUpperHint: TTS_Label
      Left = 437
    end
    inherited lbCaption: TdxfLabel
      Width = 181
      AutoSize = True
      Caption = 'Posi'#231#227'o dos Caixas'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 317
    Height = 115
    Color = 15724519
    object Barra: TdxfProgressBar
      Left = 42
      Top = 100
      Width = 247
      Height = 14
      BarBevelOuter = bvRaised
      BeginColor = clWhite
      BevelOuter = bvNone
      EndColor = 3487231
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Max = 5
      Min = 0
      Orientation = orHorizontal
      ParentFont = False
      Position = 5
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 10
      Style = sExSolid
      TabOrder = 0
      TransparentGlyph = True
      Visible = False
    end
    object TS_Memo1: TTS_Memo
      Left = 36
      Top = 14
      Width = 258
      TabOrder = 1
      ReadOnly = True
      StyleController = DMProjeto.esFinanceiro
      Lines.Strings = (
        'O objetivo deste relat'#243'rio '#233' mostrar toda a '
        'movimenta'#231#227'o que est'#225' ocorrendo dentro da loja '
        'em cada caixa.'
        '')
      WantReturns = False
      Height = 67
      StoredValues = 64
    end
    object Grafico: TChart
      Left = 8
      Top = 112
      Width = 305
      Height = 185
      Legend.Alignment = laBottom
      Legend.ColorWidth = 15
      Legend.Font.Height = -9
      Legend.Frame.Visible = False
      Legend.ShadowColor = clWhite
      Legend.ShadowSize = 0
      Legend.Symbol.Width = 15
      Legend.TextStyle = ltsPlain
      Legend.TopPos = 9
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 0
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      AxisBehind = False
      AxisVisible = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      Visible = False
      object Serie: TPieSeries
        Marks.Arrow.Color = clGray
        Marks.ArrowLength = 8
        Marks.BackColor = clWhite
        Marks.Color = clWhite
        Marks.Frame.Visible = False
        Marks.Style = smsPercent
        Marks.Visible = True
        PercentFormat = '##0.##%'
        SeriesColor = clRed
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Order = loDescending
      end
    end
    object ckbGrafico: TTS_CheckBox
      Left = 32
      Top = 81
      Width = 121
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = 'Imprimir &Gr'#225'fico'
      State = cbsChecked
      DisableEdit = False
      Height = 21
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 442
    Top = 198
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 444
    Top = 147
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 393
    Top = 197
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Posi'#231#227'o dos Caixas'
    Left = 250
    Top = 10
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 360
    end
  end
  object ppPosicaoCaixas: TppReport
    AutoStop = False
    DataPipeline = dbPorCaixa
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297128
    PrinterSetup.mmPaperWidth = 210080
    PrinterSetup.PaperSize = 9
    Units = utScreenPixels
    DeviceType = 'Screen'
    Left = 404
    Top = 64
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbPorCaixa'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 47361
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Pen.Style = psClear
        mmHeight = 25135
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 195263
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Posi'#231#227'o dos Caixas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 72231
        mmTop = 27781
        mmWidth = 52652
        BandType = 1
      end
      object lbData: TppLabel
        UserName = 'lbPeriodo1'
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 33867
        mmWidth = 9525
        BandType = 1
      end
      object Resumo: TppSubReport
        UserName = 'Resumo'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'dbDisponivel'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197380
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbDisponivel
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Left = 364
          Top = 308
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbDisponivel'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLabel2: TppLabel
              UserName = 'Label2'
              AutoSize = False
              Caption = ' Resumo de todos os Caixas'
              Color = 16247774
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 11
              Font.Style = [fsBold]
              mmHeight = 4763
              mmLeft = 9525
              mmTop = 3440
              mmWidth = 58208
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Pen.Color = 14401179
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 9260
              mmTop = 8202
              mmWidth = 58473
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Pen.Color = 14401179
              Position = lpRight
              Weight = 0.75
              mmHeight = 4763
              mmLeft = 6879
              mmTop = 3440
              mmWidth = 2646
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'DESCRICAO'
              DataPipeline = dbDisponivel
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbDisponivel'
              mmHeight = 3704
              mmLeft = 15875
              mmTop = 529
              mmWidth = 60590
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'TOTAL'
              DataPipeline = dbDisponivel
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbDisponivel'
              mmHeight = 3704
              mmLeft = 76994
              mmTop = 529
              mmWidth = 21431
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'TOTAL'
              DataPipeline = dbDisponivel
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbDisponivel'
              mmHeight = 3881
              mmLeft = 68527
              mmTop = 529
              mmWidth = 30163
              BandType = 7
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 76465
              mmTop = 0
              mmWidth = 22225
              BandType = 7
            end
          end
        end
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'DESCRICAO'
        DataPipeline = dbPorCaixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbPorCaixa'
        mmHeight = 3969
        mmLeft = 23019
        mmTop = 529
        mmWidth = 50536
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'TOTAL'
        DataPipeline = dbPorCaixa
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbPorCaixa'
        mmHeight = 3969
        mmLeft = 73819
        mmTop = 529
        mmWidth = 24606
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 145521
      mmPrintPosition = 0
      object ppImgFormaPagamento: TppImage
        UserName = 'ImgFormaPagamento'
        MaintainAspectRatio = False
        mmHeight = 45508
        mmLeft = 106363
        mmTop = 36513
        mmWidth = 89694
        BandType = 9
      end
      object ppImgCaixas: TppImage
        UserName = 'ppImgCaixas'
        MaintainAspectRatio = False
        mmHeight = 60854
        mmLeft = 106363
        mmTop = 83344
        mmWidth = 89694
        BandType = 9
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'NOMECONTA'
      DataPipeline = dbPorCaixa
      KeepTogether = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbPorCaixa'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppConta: TppDBText
          OnPrint = ppContaPrint
          UserName = 'Conta'
          DataField = 'NOMECONTA'
          DataPipeline = dbPorCaixa
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbPorCaixa'
          mmHeight = 4233
          mmLeft = 15875
          mmTop = 3440
          mmWidth = 57679
          BandType = 3
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'TOTAL'
          DataPipeline = dbPorCaixa
          DisplayFormat = '#,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          LookAhead = True
          DataPipelineName = 'dbPorCaixa'
          mmHeight = 4233
          mmLeft = 74083
          mmTop = 3440
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object daDataModule1: TdaDataModule
    end
  end
  object Q_Disponivel: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select fp.Descricao, sum(t.valor) as Total'
      'from transacoes t '
      
        '        inner join formaspagamento fp on t.formapagamento = fp.f' +
        'ormapagamento'
      '        inner join contas c on t.conta = c.conta'
      'Where c.tipoconta = 1 and t.formapagamento > 0'
      'group by fp.descricao')
    Filtered = True
    OnFilterRecord = Q_DisponivelFilterRecord
    Left = 24
    Top = 60
    object Q_DisponivelDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_DisponivelTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object Q_PorCaixa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select t.Conta, c.Descricao as NomeConta, fp.Descricao, c.Situac' +
        'ao, sum(t.valor) as Total'
      'from transacoes t '
      
        '        inner join formaspagamento fp on t.formapagamento = fp.f' +
        'ormapagamento'
      '        inner join contas c on t.conta = c.conta'
      'Where c.tipoconta = 1 and t.formapagamento > 0'
      'Group by t.Conta, c.Descricao, fp.descricao, c.Situacao')
    Filtered = True
    OnFilterRecord = Q_PorCaixaFilterRecord
    Left = 200
    Top = 60
    object Q_PorCaixaNOMECONTA: TIBStringField
      FieldName = 'NOMECONTA'
      Size = 50
    end
    object Q_PorCaixaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_PorCaixaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object Q_PorCaixaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Q_PorCaixaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
  end
  object Q_DisponivelDS: TDataSource
    DataSet = Q_Disponivel
    Left = 24
    Top = 156
  end
  object Q_PorCaixaDS: TDataSource
    DataSet = Q_PorCaixa
    Left = 200
    Top = 156
  end
  object dbDisponivel: TppDBPipeline
    DataSource = Q_DisponivelDS
    OpenDataSource = False
    UserName = 'dbDisponivel'
    Left = 24
    Top = 108
    object dbDisponivelppField1: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbDisponivelppField2: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object dbPorCaixa: TppDBPipeline
    DataSource = Q_PorCaixaDS
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'dbPorCaixa'
    Left = 200
    Top = 108
    object dbPorCaixappField1: TppField
      FieldAlias = 'NOMECONTA'
      FieldName = 'NOMECONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbPorCaixappField2: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbPorCaixappField3: TppField
      FieldAlias = 'SITUACAO'
      FieldName = 'SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbPorCaixappField4: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbPorCaixappField5: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
end

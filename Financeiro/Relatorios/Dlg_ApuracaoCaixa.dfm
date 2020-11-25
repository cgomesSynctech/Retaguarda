inherited DlgApuracaoCaixa: TDlgApuracaoCaixa
  Left = 225
  Top = 180
  Width = 565
  Height = 356
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 439
    Height = 286
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 252
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 557
    Gradient.ColorStart = 13223591
    inherited btHelp: TTS_SpeedButton
      Left = 521
    end
    inherited lbCaption: TdxfLabel
      Width = 197
      AutoSize = True
      Caption = 'Apura'#231#227'o dos Caixas'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 439
    Height = 286
    Color = 15724519
    OnEnter = pnDadosEnter
    object dtData: TTS_MonthCalendar
      Left = 153
      Top = 0
      Width = 172
      Height = 211
      Date = 39013.6097249306
      TabOrder = 0
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 497
    Top = 133
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 400
    Top = 45
  end
  inherited Beep: TBTBeeper
    Left = 514
    Top = 188
  end
  inherited FormStorage: TFormStorage
    Left = 526
    Top = 49
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Apura'#231#227'o dos Caixas'
    Left = 385
    Top = 179
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 501
    Top = 83
  end
  object Q_Resumo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select fp.FormaPagamento, fp.Descricao, '
      '           (Select Sum(t.valor) From Transacoes t'
      
        '           Where t.Conta = :Conta and t.Data < :Data and  t.form' +
        'apagamento = fp.formapagamento) as SaldoAnterior,'
      '           '
      '           (Select Sum(t.valor) From Transacoes t'
      
        '           Where t.Conta = :Conta and t.Data <= :Data and  t.for' +
        'mapagamento = fp.formapagamento) as SaldoAtual,'
      '           '
      '           (Select Sum(t.valor) From Transacoes t'
      
        '           Where t.TipoTransacao = '#39'C'#39' and t.Conta = :Conta and ' +
        't.Data = :Data and t.formapagamento = fp.formapagamento) as Entr' +
        'adas,'
      ''
      '           (Select Sum(t.valor) From Transacoes t'
      
        '           Where t.TipoTransacao = '#39'D'#39' and  t.Conta = :Conta and' +
        ' t.Situacao is Null'
      
        '           and t.Data = :Data and t.formapagamento = fp.formapag' +
        'amento) as Saidas,'
      ''
      '           (Select Sum(t.valor) From Transacoes t'
      
        '            Where t.TipoTransacao = '#39'D'#39'  and t.Situacao = '#39'R'#39' an' +
        'd t.Conta = :Conta and t.Data = :Data and'
      '            t.formapagamento = fp.formapagamento) as Repasse'
      ''
      'From FormasPagamento fp'
      'Where fp.especie in (1,5) and fp.desativado = '#39'N'#39' '
      'Order by fp.FormaPagamento')
    Left = 160
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end>
    object Q_ResumoFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
    end
    object Q_ResumoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_ResumoSALDOANTERIOR: TIBBCDField
      FieldName = 'SALDOANTERIOR'
      Precision = 18
      Size = 2
    end
    object Q_ResumoSALDOATUAL: TIBBCDField
      FieldName = 'SALDOATUAL'
      Precision = 18
      Size = 2
    end
    object Q_ResumoENTRADAS: TIBBCDField
      FieldName = 'ENTRADAS'
      Precision = 18
      Size = 2
    end
    object Q_ResumoSAIDAS: TIBBCDField
      FieldName = 'SAIDAS'
      Precision = 18
      Size = 2
    end
    object Q_ResumoREPASSE: TIBBCDField
      FieldName = 'REPASSE'
      Precision = 18
      Size = 2
    end
  end
  object dbResumo: TppDBPipeline
    DataSource = Q_ResumoDS
    CloseDataSource = True
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'dbResumo'
    Left = 99
    Top = 185
    object dbResumoppField1: TppField
      FieldAlias = 'FORMAPAGAMENTO'
      FieldName = 'FORMAPAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbResumoppField2: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbResumoppField3: TppField
      FieldAlias = 'SALDOANTERIOR'
      FieldName = 'SALDOANTERIOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbResumoppField4: TppField
      FieldAlias = 'SALDOATUAL'
      FieldName = 'SALDOATUAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbResumoppField5: TppField
      FieldAlias = 'ENTRADAS'
      FieldName = 'ENTRADAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbResumoppField6: TppField
      FieldAlias = 'SAIDAS'
      FieldName = 'SAIDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbResumoppField7: TppField
      FieldAlias = 'REPASSE'
      FieldName = 'REPASSE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object Q_ResumoDS: TDataSource
    DataSet = Q_Resumo
    Left = 234
    Top = 187
  end
  object ppFechamento: TppReport
    AutoStop = False
    DataPipeline = dbResumo
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
    Left = 99
    Top = 132
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbResumo'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 25400
        mmLeft = 1058
        mmTop = 1852
        mmWidth = 195263
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Style = bsClear
          Pen.Style = psClear
          mmHeight = 13229
          mmLeft = 25400
          mmTop = 32809
          mmWidth = 13229
          BandType = 1
        end
      end
      object ppData: TppLabel
        UserName = 'Data'
        Caption = '21/06/2001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 85461
        mmTop = 37835
        mmWidth = 26458
        BandType = 1
      end
      object lbTitulo: TppLabel
        UserName = 'FechamentoCaixa1'
        Caption = 'Relat'#243'rio do Caixa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 78317
        mmTop = 32015
        mmWidth = 40746
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 113242
        mmTop = 8202
        mmWidth = 24342
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 15790320
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 10583
        mmTop = 8202
        mmWidth = 49477
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Resumo dos Saldos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 8731
        mmWidth = 47890
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape302'
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 59796
        mmTop = 8202
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Saldo Anterior'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61383
        mmTop = 8731
        mmWidth = 25400
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 87048
        mmTop = 8202
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Recebimentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 88106
        mmTop = 8731
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Pagamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114565
        mmTop = 8731
        mmWidth = 21960
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 137319
        mmTop = 8202
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Repassado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 138642
        mmTop = 8731
        mmWidth = 19050
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 15790320
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 158486
        mmTop = 8202
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 8731
        mmWidth = 9790
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DESCRICAO'
        DataPipeline = dbResumo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 12171
        mmTop = 265
        mmWidth = 46567
        BandType = 4
      end
      object dbSaldoAnt: TppDBText
        UserName = 'dbSaldoAnt'
        DataField = 'SALDOANTERIOR'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 61648
        mmTop = 265
        mmWidth = 23548
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clSilver
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 87048
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clSilver
        Position = lpRight
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 8467
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Pen.Color = clSilver
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 59796
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'ENTRADAS'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 88106
        mmTop = 265
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'SAIDAS'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'REPASSE'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 138377
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'SALDOATUAL'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 159279
        mmTop = 265
        mmWidth = 19844
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Color = clSilver
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 113242
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Pen.Color = clSilver
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 137319
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Pen.Color = clSilver
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 158486
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Pen.Color = clSilver
        Position = lpLeft
        Weight = 0.75
        mmHeight = 5027
        mmLeft = 180182
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 529
        mmWidth = 8467
        BandType = 7
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 15790320
        Pen.Color = 14408667
        mmHeight = 5027
        mmLeft = 10583
        mmTop = 265
        mmWidth = 169863
        BandType = 7
      end
      object dbtSaldoAtual: TppDBCalc
        UserName = 'dbtSaldoAtual'
        DataField = 'SALDOATUAL'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 157957
        mmTop = 529
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'ENTRADAS'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 88106
        mmTop = 265
        mmWidth = 23813
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'SAIDAS'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 112448
        mmTop = 265
        mmWidth = 23813
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'REPASSE'
        DataPipeline = dbResumo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 265
        mmWidth = 23813
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppDBTitulos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppTitulos: TppChildReport
          AutoStop = False
          DataPipeline = ppDBTitulos
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
          DataPipelineName = 'ppDBTitulos'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20108
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              Brush.Color = 16776176
              mmHeight = 6350
              mmLeft = 6615
              mmTop = 13758
              mmWidth = 180446
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 'Apura'#231#227'o dos Titulos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 84244
              mmTop = 2381
              mmWidth = 35772
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Rec. Hoje'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 88106
              mmTop = 14817
              mmWidth = 15452
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'A Receber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 67469
              mmTop = 14817
              mmWidth = 16510
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Caption = 'Tipo Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 9525
              mmTop = 14817
              mmWidth = 25612
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'A Pagar'
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 131763
              mmTop = 14817
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'Pgto Hoje'
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 150019
              mmTop = 14817
              mmWidth = 15452
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'Pgto Saldo'
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 168805
              mmTop = 14817
              mmWidth = 17145
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'Rec. Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4586
              mmLeft = 106892
              mmTop = 14817
              mmWidth = 17145
              BandType = 1
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 5821
              mmLeft = 64823
              mmTop = 13758
              mmWidth = 794
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 5821
              mmLeft = 85461
              mmTop = 13758
              mmWidth = 794
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 5821
              mmLeft = 105040
              mmTop = 13758
              mmWidth = 794
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 5821
              mmLeft = 125942
              mmTop = 13758
              mmWidth = 794
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 5821
              mmLeft = 145786
              mmTop = 13758
              mmWidth = 794
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 5821
              mmLeft = 166688
              mmTop = 13758
              mmWidth = 794
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              CharWrap = True
              DataField = 'DESCRICAO'
              DataPipeline = ppDBTitulos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 9260
              mmTop = 0
              mmWidth = 38100
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              CharWrap = True
              DataField = 'RECEBIDOSHOJE'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 86254
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              CharWrap = True
              DataField = 'TOTALARECEBERABERTO'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 66675
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              CharWrap = True
              DataField = 'ARECEBERSALDO'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 106892
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              CharWrap = True
              Color = clMaroon
              DataField = 'APAGARSALDO'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 168805
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              CharWrap = True
              Color = clMaroon
              DataField = 'PAGASHOJE'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 148167
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              CharWrap = True
              Color = clMaroon
              DataField = 'APAGARATEHOJE'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 4233
              mmLeft = 127265
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 6615
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 64558
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 85461
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 105040
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 125942
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 145786
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 166688
              mmTop = 0
              mmWidth = 794
              BandType = 4
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 187061
              mmTop = 0
              mmWidth = 508
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppShape10: TppShape
              UserName = 'Shape10'
              mmHeight = 5556
              mmLeft = 64558
              mmTop = 0
              mmWidth = 122767
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              CharWrap = True
              DataField = 'TOTALARECEBERABERTO'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 3881
              mmLeft = 66675
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              CharWrap = True
              DataField = 'RECEBIDOSHOJE'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 3881
              mmLeft = 86254
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              CharWrap = True
              DataField = 'ARECEBERSALDO'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 3881
              mmLeft = 106892
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              CharWrap = True
              Color = clMaroon
              DataField = 'APAGARATEHOJE'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 3881
              mmLeft = 127265
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              CharWrap = True
              Color = clMaroon
              DataField = 'PAGASHOJE'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 3881
              mmLeft = 148167
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              CharWrap = True
              Color = clMaroon
              DataField = 'APAGARSALDO'
              DataPipeline = ppDBTitulos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppDBTitulos'
              mmHeight = 3881
              mmLeft = 168805
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 166688
              mmTop = 265
              mmWidth = 794
              BandType = 7
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 145786
              mmTop = 265
              mmWidth = 794
              BandType = 7
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 125942
              mmTop = 265
              mmWidth = 794
              BandType = 7
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 105040
              mmTop = 529
              mmWidth = 794
              BandType = 7
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Pen.Width = 0
              Position = lpLeft
              Weight = 0.0199999995529652
              mmHeight = 4763
              mmLeft = 85461
              mmTop = 265
              mmWidth = 794
              BandType = 7
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 6615
              mmTop = 0
              mmWidth = 58473
              BandType = 7
            end
          end
        end
      end
    end
  end
  object Q_Titulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select tc.descricao, '
      ''
      '(select coalesce( Sum( t.valor),0) from titulosareceber t'
      
        '  where tc.tipocobranca = t.tipocobranca and ((t.status between ' +
        '1 and 40) or (t.datapago = current_date)) ) as TotalAReceberAber' +
        'to,'
      ''
      '(select coalesce( Sum( t1.valor),0) from titulosareceber t1'
      
        'where tc.tipocobranca = t1.tipocobranca and t1.datapago = curren' +
        't_date and t1.status = 50) as RecebidosHoje,'
      ''
      '(select coalesce( Sum( t.valor),0) from titulosareceber t'
      
        '  where tc.tipocobranca = t.tipocobranca and ((t.status between ' +
        '1 and 40) ) ) as AReceberSaldo,'
      ''
      ''
      '(select coalesce( sum(d.valor),0) from  duplicatasapagar d'
      
        '  where tc.tipocobranca = d.tipocobranca  and ((d.status between' +
        ' 1 and 40) or (d.datapago = current_date) ) ) as APagarAteHoje,'
      ''
      '(select coalesce( sum(d1.valor),0) from  duplicatasapagar d1'
      
        '  where tc.tipocobranca = d1.tipocobranca and d1.datapago = curr' +
        'ent_date) as PagasHoje,'
      ''
      '((select coalesce( sum(d.valor),0) from  duplicatasapagar d'
      
        '  where tc.tipocobranca = d.tipocobranca  and (d.status between ' +
        '1 and 40)  )) as aPagarSaldo'
      'From  tiposcobranca tc'
      'Order By tc.Descricao')
    Left = 166
    Top = 248
    object Q_TitulosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSCOBRANCA.DESCRICAO'
      Size = 50
    end
    object Q_TitulosTOTALARECEBERABERTO: TIBBCDField
      FieldName = 'TOTALARECEBERABERTO'
      Precision = 18
      Size = 2
    end
    object Q_TitulosRECEBIDOSHOJE: TIBBCDField
      FieldName = 'RECEBIDOSHOJE'
      Precision = 18
      Size = 2
    end
    object Q_TitulosARECEBERSALDO: TIBBCDField
      FieldName = 'ARECEBERSALDO'
      Precision = 18
      Size = 2
    end
    object Q_TitulosAPAGARATEHOJE: TIBBCDField
      FieldName = 'APAGARATEHOJE'
      Precision = 18
      Size = 2
    end
    object Q_TitulosPAGASHOJE: TIBBCDField
      FieldName = 'PAGASHOJE'
      Precision = 18
      Size = 2
    end
    object Q_TitulosAPAGARSALDO: TIBBCDField
      FieldName = 'APAGARSALDO'
      Precision = 18
      Size = 2
    end
  end
  object Q_TitulosDs: TDataSource
    DataSet = Q_Titulos
    Left = 236
    Top = 241
  end
  object ppDBTitulos: TppDBPipeline
    DataSource = Q_TitulosDs
    CloseDataSource = True
    UserName = 'DBTitulos'
    Left = 98
    Top = 244
    object ppDBTitulosppField1: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBTitulosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALARECEBERABERTO'
      FieldName = 'TOTALARECEBERABERTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object ppDBTitulosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEBIDOSHOJE'
      FieldName = 'RECEBIDOSHOJE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object ppDBTitulosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ARECEBERSALDO'
      FieldName = 'ARECEBERSALDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppDBTitulosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'APAGARATEHOJE'
      FieldName = 'APAGARATEHOJE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppDBTitulosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAGASHOJE'
      FieldName = 'PAGASHOJE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppDBTitulosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'APAGARSALDO'
      FieldName = 'APAGARSALDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
  end
end

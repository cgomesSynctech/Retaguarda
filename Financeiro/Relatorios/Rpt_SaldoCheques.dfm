inherited RptSaldoCheques: TRptSaldoCheques
  Left = 219
  Top = 156
  HelpContext = 0
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Financeiro'
  ClientHeight = 184
  ClientWidth = 442
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Name = 'MS Sans Serif'
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 324
    Height = 141
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 107
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Visualizar'
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
    Width = 442
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 130
      Caption = 'Movimenta'#231#227'o de Cheques'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 435
    end
    inherited lbUpperHint: TTS_Label
      Left = 423
    end
    inherited lbCaption: TdxfLabel
      Width = 169
      AutoSize = True
      Caption = 'Saldo de Cheques'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 324
    Height = 141
    Color = 15724519
    object TS_Label1: TTS_Label
      Left = 4
      Top = 44
      Width = 81
      Caption = 'No per'#237'odo de:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 178
      Top = 45
      Width = 14
      Caption = ' a '
      FormatoTabela = False
      LinkToResult = 0
    end
    object DataI: TTS_DateTimePicker
      Left = 90
      Top = 43
      Width = 86
      TabOrder = 0
      AutoSize = False
      StyleController = DMProjeto.esFinanceiro
      ButtonGlyph.Data = {
        AE040000424DAE0400000000000036040000280000000A0000000A0000000100
        0800000000007800000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
        A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
        FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
        0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
        FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
      Date = -700000
      UseEditMask = True
      Height = 19
      StoredValues = 4
    end
    object DataF: TTS_DateTimePicker
      Left = 198
      Top = 43
      Width = 86
      TabOrder = 1
      AutoSize = False
      StyleController = DMProjeto.esFinanceiro
      ButtonGlyph.Data = {
        AE040000424DAE0400000000000036040000280000000A0000000A0000000100
        0800000000007800000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
        A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
        FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
        0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
        FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
      Date = -700000
      UseEditMask = True
      Height = 19
      StoredValues = 4
    end
    object Barra: TdxfProgressBar
      Left = 32
      Top = 89
      Width = 259
      Height = 13
      BarBevelOuter = bvRaised
      BeginColor = clWhite
      BevelOuter = bvNone
      EndColor = 5197823
      Max = 5
      Min = 0
      Orientation = orHorizontal
      Position = 5
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 10
      Style = sExSolid
      TabOrder = 2
      TransparentGlyph = True
      Visible = False
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 270
    Top = 90
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Saldo de Cheques'
    Left = 270
    Top = 138
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 492
    end
  end
  object Q_Entradas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select t.data, f.nome, t.valor, c.Descricao as DescConta, t.numc' +
        'heque, dd.Vencimento, t.favorecido, f.tipofavorecido, t.idgerado' +
        'r, t.tipooperacao'
      'From   Transacoes t inner join Contas c on t.conta = c.conta'
      
        '           inner join Favorecidos f on t.favorecido = f.favoreci' +
        'do'
      '           left join DepositosDoc dd on t.iddoc = dd.iddoc'
      
        'Where t.data >= :DataI and t.data <= :DataF and t.situacao is nu' +
        'll '
      
        '           and t.tipotransacao = '#39'C'#39' and t.formapagamento IN (2,' +
        '3) '
      '           and c.tipoconta = 1'
      '')
    Left = 88
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end>
    object Q_EntradasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_EntradasNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_EntradasDESCCONTA: TIBStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object Q_EntradasDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_EntradasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_EntradasNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object Q_EntradasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object Q_EntradasTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object Q_EntradasIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object Q_EntradasTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
  end
  object Q_Saidas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select t.data, f.nome, f_abs(t.valor) as Valor, top.Descricao as' +
        ' DescTipoOperacao, t.numcheque, u.loginname as Usuario,'
      
        '           d.favorecido, f.tipofavorecido, d.TipoDeposito, d.Dep' +
        'osito'
      'From   Transacoes t inner join Contas c on t.conta = c.conta'
      
        '           inner join TiposOrigens top on t.tipooperacao = top.o' +
        'rigem'
      '           left join DepositosDoc dd on t.iddoc = dd.iddoc'
      '           left join Depositos d on dd.deposito = d.deposito'
      
        '           left join Favorecidos f on d.favorecido = f.favorecid' +
        'o'
      
        '           left join OperacoesFinanceiras opf on t.idgerador = o' +
        'pf.operacao'
      '           left join Usuarios u on u.usuario = opf.usuario'
      
        'Where t.data >= :DataI and t.data <= :DataF and t.situacao is nu' +
        'll '
      
        '           and t.tipotransacao = '#39'D'#39' and t.formapagamento IN (2,' +
        '3) '
      '           and c.tipoconta = 1')
    Left = 172
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end>
    object Q_SaidasDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_SaidasNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_SaidasVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object Q_SaidasDESCTIPOOPERACAO: TIBStringField
      FieldName = 'DESCTIPOOPERACAO'
      Size = 40
    end
    object Q_SaidasNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object Q_SaidasUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object Q_SaidasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object Q_SaidasTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object Q_SaidasTIPODEPOSITO: TIntegerField
      FieldName = 'TIPODEPOSITO'
    end
    object Q_SaidasDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
  end
  object Q_SaldoAnt: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select sum( t.Valor ) as SaldoAnterior'
      'From Transacoes t'
      '         inner join Contas c on t.conta = c.conta'
      'Where t.Data < :DataI and t.formapagamento IN (2,3) and '
      '            t.situacao is null and c.tipoconta = 1')
    Left = 8
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end>
    object Q_SaldoAntSALDOANTERIOR: TIBBCDField
      FieldName = 'SALDOANTERIOR'
      Precision = 18
      Size = 2
    end
  end
  object ppSaldoCheques: TppReport
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
    Left = 140
    Top = 48
    Version = '6.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 25665
        mmLeft = 0
        mmTop = 794
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Saldo de Cheques'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 28840
        mmWidth = 37571
        BandType = 0
      end
      object lbPeriodo: TppLabel
        UserName = 'lbPeriodo'
        Caption = 'lbPeriodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 34660
        mmWidth = 14288
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Saldo Anterior:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 3440
        mmWidth = 23283
        BandType = 4
      end
      object subEntradas: TppSubReport
        UserName = 'subEntradas'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbEntradas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 11113
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbEntradas
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
          Left = 236
          Top = 196
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbEntradas'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Caption = ' Entradas'
              Color = 16445671
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              mmHeight = 4233
              mmLeft = 2910
              mmTop = 3704
              mmWidth = 33338
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 2646
              mmTop = 7938
              mmWidth = 33602
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 0
              mmTop = 3704
              mmWidth = 2910
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = '# Cheque'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 26723
              mmTop = 13229
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 'Nome'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 59531
              mmTop = 13229
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 12435
              mmTop = 13229
              mmWidth = 5821
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 87842
              mmTop = 13229
              mmWidth = 14552
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 166159
              mmTop = 13229
              mmWidth = 6350
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label101'
              Caption = 'Conta Atual'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 123031
              mmTop = 13229
              mmWidth = 15875
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 25665
              mmTop = 16933
              mmWidth = 14817
              BandType = 1
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 41804
              mmTop = 16933
              mmWidth = 44186
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 6879
              mmTop = 16934
              mmWidth = 17463
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 87048
              mmTop = 16933
              mmWidth = 16933
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 105834
              mmTop = 16933
              mmWidth = 52917
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 160073
              mmTop = 16933
              mmWidth = 20638
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 39158
              mmTop = 13229
              mmWidth = 1323
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 83608
              mmTop = 13229
              mmWidth = 2381
              BandType = 1
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 24077
              mmTop = 13229
              mmWidth = 794
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 101600
              mmTop = 12965
              mmWidth = 2381
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 156369
              mmTop = 13229
              mmWidth = 2381
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 178330
              mmTop = 13229
              mmWidth = 2381
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'NUMCHEQUE'
              DataPipeline = dbEntradas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText3DrawCommandClick
              OnDrawCommandCreate = ppDBText3DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 3440
              mmLeft = 25400
              mmTop = 264
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'NOME'
              DataPipeline = dbEntradas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText2DrawCommandClick
              OnDrawCommandCreate = ppDBText2DrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 3440
              mmLeft = 41540
              mmTop = 264
              mmWidth = 44186
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              DataField = 'DATA'
              DataPipeline = dbEntradas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText3DrawCommandClick
              OnDrawCommandCreate = ppDBText3DrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 3440
              mmLeft = 6879
              mmTop = 264
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'VENCIMENTO'
              DataPipeline = dbEntradas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText3DrawCommandClick
              OnDrawCommandCreate = ppDBText3DrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 3440
              mmLeft = 87048
              mmTop = 264
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'DESCCONTA'
              DataPipeline = dbEntradas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText3DrawCommandClick
              OnDrawCommandCreate = ppDBText3DrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 3440
              mmLeft = 105834
              mmTop = 264
              mmWidth = 52652
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'VALOR'
              DataPipeline = dbEntradas
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText3DrawCommandClick
              OnDrawCommandCreate = ppDBText3DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 3440
              mmLeft = 160073
              mmTop = 264
              mmWidth = 20902
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object dbTotalEntradas: TppDBCalc
              UserName = 'dbTotalEntradas'
              DataField = 'VALOR'
              DataPipeline = dbEntradas
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbEntradas'
              mmHeight = 4233
              mmLeft = 157427
              mmTop = 529
              mmWidth = 23548
              BandType = 7
            end
          end
        end
      end
      object subSaidas: TppSubReport
        UserName = 'subSaidas'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = subEntradas
        TraverseAllData = False
        DataPipelineName = 'dbSaidas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 17463
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbSaidas
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
          Left = 260
          Top = 220
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbSaidas'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Caption = ' Saidas'
              Color = 15592180
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              mmHeight = 4233
              mmLeft = 3175
              mmTop = 5821
              mmWidth = 33338
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 2910
              mmTop = 10054
              mmWidth = 33602
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 265
              mmTop = 5821
              mmWidth = 2910
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = '# Cheque'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 28840
              mmTop = 15346
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'Nome'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 62971
              mmTop = 15346
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 15081
              mmTop = 15346
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'Usu'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 92604
              mmTop = 15346
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label102'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 166159
              mmTop = 15346
              mmWidth = 6350
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = 'Opera'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 127265
              mmTop = 15081
              mmWidth = 11906
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 27781
              mmTop = 19050
              mmWidth = 14817
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 43921
              mmTop = 19050
              mmWidth = 44186
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 8996
              mmTop = 19050
              mmWidth = 17463
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 89165
              mmTop = 19050
              mmWidth = 16933
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 107950
              mmTop = 19050
              mmWidth = 50536
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 160073
              mmTop = 19050
              mmWidth = 20638
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 40217
              mmTop = 15081
              mmWidth = 2381
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line101'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 85725
              mmTop = 15346
              mmWidth = 2381
              BandType = 1
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3704
              mmLeft = 24606
              mmTop = 15346
              mmWidth = 1852
              BandType = 1
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 103981
              mmTop = 15346
              mmWidth = 2381
              BandType = 1
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 156104
              mmTop = 15346
              mmWidth = 2381
              BandType = 1
            end
            object ppLine28: TppLine
              UserName = 'Line28'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 178330
              mmTop = 15081
              mmWidth = 2381
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'NUMCHEQUE'
              DataPipeline = dbSaidas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText9DrawCommandClick
              OnDrawCommandCreate = ppDBText9DrawCommandCreate
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 3440
              mmLeft = 27517
              mmTop = 529
              mmWidth = 15081
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'NOME'
              DataPipeline = dbSaidas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText8DrawCommandClick
              OnDrawCommandCreate = ppDBText8DrawCommandCreate
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 3440
              mmLeft = 43656
              mmTop = 529
              mmWidth = 44186
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'DATA'
              DataPipeline = dbSaidas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText9DrawCommandClick
              OnDrawCommandCreate = ppDBText9DrawCommandCreate
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 3440
              mmLeft = 8996
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'DESCTIPOOPERACAO'
              DataPipeline = dbSaidas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText9DrawCommandClick
              OnDrawCommandCreate = ppDBText9DrawCommandCreate
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 3440
              mmLeft = 107686
              mmTop = 529
              mmWidth = 50800
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'VALOR'
              DataPipeline = dbSaidas
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText9DrawCommandClick
              OnDrawCommandCreate = ppDBText9DrawCommandCreate
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 3440
              mmLeft = 160073
              mmTop = 529
              mmWidth = 20902
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'USUARIO'
              DataPipeline = dbSaidas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              OnDrawCommandClick = ppDBText9DrawCommandClick
              OnDrawCommandCreate = ppDBText9DrawCommandCreate
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 3440
              mmLeft = 88900
              mmTop = 529
              mmWidth = 17727
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 11377
            mmPrintPosition = 0
            object dbTotalSaidas: TppDBCalc
              UserName = 'dbTotalSaidas'
              DataField = 'VALOR'
              DataPipeline = dbSaidas
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbSaidas'
              mmHeight = 4233
              mmLeft = 158221
              mmTop = 265
              mmWidth = 22490
              BandType = 7
            end
          end
        end
      end
      object lbSaldoAnt: TppLabel
        UserName = 'lbSaldoAnt'
        OnGetText = lbSaldoAntGetText
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 3440
        mmWidth = 24342
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Saldo Atual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 137584
        mmTop = 1058
        mmWidth = 18785
        BandType = 7
      end
      object lbSaldoAtual: TppLabel
        UserName = 'lbSaldoAtual'
        OnGetText = lbSaldoAtualGetText
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 157163
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
    end
  end
  object dbSaldoAnt: TppDBPipeline
    DataSource = Q_SaldoAntDS
    OpenDataSource = False
    UserName = 'dbSaldoAnt'
    Left = 8
    Top = 136
    object dbSaldoAntppField1: TppField
      FieldAlias = 'SALDOANT'
      FieldName = 'SALDOANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
  end
  object dbEntradas: TppDBPipeline
    DataSource = Q_EntradasDS
    OpenDataSource = False
    UserName = 'dbEntradas'
    Left = 88
    Top = 140
    object dbEntradasppField1: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField3: TppField
      FieldAlias = 'DESCCONTA'
      FieldName = 'DESCCONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField4: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField5: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField6: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField7: TppField
      FieldAlias = 'FAVORECIDO'
      FieldName = 'FAVORECIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField8: TppField
      FieldAlias = 'TIPOFAVORECIDO'
      FieldName = 'TIPOFAVORECIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField9: TppField
      FieldAlias = 'IDGERADOR'
      FieldName = 'IDGERADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbEntradasppField10: TppField
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object dbSaidas: TppDBPipeline
    DataSource = Q_SaidasDS
    OpenDataSource = False
    UserName = 'dbSaidas'
    Left = 176
    Top = 140
    object dbSaidasppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object dbSaidasppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object dbSaidasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object dbSaidasppField4: TppField
      FieldAlias = 'DESCTIPOOPERACAO'
      FieldName = 'DESCTIPOOPERACAO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object dbSaidasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbSaidasppField6: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object dbSaidasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'FAVORECIDO'
      FieldName = 'FAVORECIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object dbSaidasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOFAVORECIDO'
      FieldName = 'TIPOFAVORECIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object dbSaidasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPODEPOSITO'
      FieldName = 'TIPODEPOSITO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object dbSaidasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEPOSITO'
      FieldName = 'DEPOSITO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
  end
  object Q_SaldoAntDS: TDataSource
    DataSet = Q_SaldoAnt
    Left = 8
    Top = 184
  end
  object Q_EntradasDS: TDataSource
    DataSet = Q_Entradas
    Left = 88
    Top = 184
  end
  object Q_SaidasDS: TDataSource
    DataSet = Q_Saidas
    Left = 172
    Top = 184
  end
end

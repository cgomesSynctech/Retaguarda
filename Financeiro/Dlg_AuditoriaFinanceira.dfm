inherited DlgAuditoriaFinanceira: TDlgAuditoriaFinanceira
  Left = 230
  Top = 165
  Width = 495
  Height = 242
  Caption = 'Financeiro'
  Color = 15920370
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 369
    Height = 172
    TabOrder = 2
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 138
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
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
    Width = 487
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 257
      Caption = 'Todas as opera'#231#245'es que foram realizadas no per'#237'odo.'
    end
    inherited lbUpperHint: TTS_Label
      Left = 479
    end
    inherited lbCaption: TdxfLabel
      Width = 192
      AutoSize = True
      Caption = 'Auditoria Financeira'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 369
    Height = 172
    Color = 15724519
    TabOrder = 0
    object TS_Label1: TTS_Label
      Left = 26
      Top = 33
      Width = 85
      Caption = 'No per'#237'odo de:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 211
      Top = 33
      Width = 15
      Caption = ' a '
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 26
      Top = 62
      Width = 85
      Caption = 'Usu'#225'rio:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 26
      Top = 91
      Width = 85
      Caption = 'Conta:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label1: TLabel
      Left = 9
      Top = 134
      Width = 354
      Height = 26
      Caption = 
        'Aten'#231#227'o: Para fazer o controle de auditoria '#233' necess'#225'rio que o p' +
        'ar'#226'metro "AuditoriaFinanceira" seja igual a "S".'
      WordWrap = True
    end
    object Barra: TdxfProgressBar
      Left = 39
      Top = 115
      Width = 291
      Height = 14
      BarBevelOuter = bvRaised
      BeginColor = clWhite
      BevelOuter = bvNone
      EndColor = 5197823
      Max = 4
      Min = 0
      Orientation = orHorizontal
      Position = 4
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 1
      Style = sExSolid
      TabOrder = 4
      TransparentGlyph = True
      Visible = False
    end
    object dtDataI: TTS_DateTimePicker
      Left = 116
      Top = 30
      Width = 93
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
      Height = 21
      StoredValues = 4
    end
    object dtDataF: TTS_DateTimePicker
      Left = 232
      Top = 30
      Width = 93
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
      Height = 21
      StoredValues = 4
    end
    object cmbUsuario: TTS_LookupComboBox
      Left = 116
      Top = 60
      Width = 209
      TabOrder = 2
      StyleController = DMProjeto.esFinanceiro
      ClearKey = 32
      ListFieldName = 'LOGINNAME'
      KeyFieldName = 'USUARIO'
      ListSource = C_UsuariosDS
      LookupKeyValue = Null
      Height = 19
    end
    object cmbConta: TTS_PopupEdit
      Left = 116
      Top = 88
      Width = 209
      TabOrder = 3
      StyleController = DMProjeto.esFinanceiro
      PopupFormBorderStyle = pbsSimple
      OnInitPopup = cmbContaInitPopup
      LookupSource = DMFinanceiro.C_ContasCxBcDS
      LookupKeyValue = 0
      Height = 19
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 369
    Top = 82
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 368
    Top = 135
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 369
    Top = 33
  end
  inherited FormStorage: TFormStorage
    Left = 208
    Top = 48
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Auditoria Financeira'
    FirstEditField = dtDataI
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 544
    end
  end
  object ppAuditoria: TppReport
    AutoStop = False
    DataPipeline = dbAuditoria
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
    Left = 41
    Top = 48
    Version = '6.02'
    mmColumnWidth = 197300
    DataPipelineName = 'dbAuditoria'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 48419
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'AUDITORIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 3175
        mmTop = 31221
        mmWidth = 32544
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
        mmLeft = 2381
        mmTop = 37835
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'AUDITORIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 30956
        mmWidth = 32544
        BandType = 0
      end
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 26458
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 195527
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = dbAuditoria
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        DataPipelineName = 'dbAuditoria'
        mmHeight = 4233
        mmLeft = 16140
        mmTop = 794
        mmWidth = 65352
        BandType = 4
      end
      object Sub: TppSubReport
        UserName = 'Sub'
        DrillDownComponent = ppDBText2
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbAuditoriaDet'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5292
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbAuditoriaDet
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
          Left = 324
          Top = 184
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbAuditoriaDet'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              Brush.Color = 15724527
              Pen.Color = clGray
              mmHeight = 4763
              mmLeft = 32808
              mmTop = 3439
              mmWidth = 15081
              BandType = 1
            end
            object ppShape1: TppShape
              UserName = 'Shape1'
              Brush.Color = 15724527
              Pen.Color = clGray
              mmHeight = 4763
              mmLeft = 12700
              mmTop = 3439
              mmWidth = 20373
              BandType = 1
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 17727
              mmTop = 3969
              mmWidth = 9790
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              AutoSize = False
              Caption = 'Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 35190
              mmTop = 3969
              mmWidth = 9790
              BandType = 1
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              Brush.Color = 15724527
              Pen.Color = clGray
              mmHeight = 4763
              mmLeft = 47625
              mmTop = 3439
              mmWidth = 30427
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = 'Usu'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 55033
              mmTop = 3969
              mmWidth = 15346
              BandType = 1
            end
            object ppShape5: TppShape
              UserName = 'Shape5'
              Brush.Color = 15724527
              Pen.Color = clGray
              mmHeight = 4763
              mmLeft = 77788
              mmTop = 3439
              mmWidth = 20902
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              AutoSize = False
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 82550
              mmTop = 3969
              mmWidth = 13494
              BandType = 1
            end
            object ppShape6: TppShape
              UserName = 'Shape6'
              Brush.Color = 15724527
              Pen.Color = clGray
              mmHeight = 4763
              mmLeft = 98425
              mmTop = 3439
              mmWidth = 72496
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Caption = 'Observa'#231#245'es'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 123296
              mmTop = 3969
              mmWidth = 20902
              BandType = 1
            end
          end
          object ppDetailBand1: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLine1: TppLine
              UserName = 'Line1'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 10848
              mmTop = 0
              mmWidth = 2117
              BandType = 4
            end
            object ppData: TppDBText
              UserName = 'Data'
              DataField = 'DATA'
              DataPipeline = dbAuditoriaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDataDrawCommandClick
              OnDrawCommandCreate = ppDataDrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbAuditoriaDet'
              mmHeight = 3704
              mmLeft = 14023
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4233
              mmLeft = 170657
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'HORA'
              DataPipeline = dbAuditoriaDet
              DisplayFormat = 'hh:mm'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDataDrawCommandClick
              OnDrawCommandCreate = ppDataDrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbAuditoriaDet'
              mmHeight = 3704
              mmLeft = 34925
              mmTop = 265
              mmWidth = 10848
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'LOGINNAME'
              DataPipeline = dbAuditoriaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDataDrawCommandClick
              OnDrawCommandCreate = ppDataDrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbAuditoriaDet'
              mmHeight = 3704
              mmLeft = 48154
              mmTop = 265
              mmWidth = 29369
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'VALOR'
              DataPipeline = dbAuditoriaDet
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDataDrawCommandClick
              OnDrawCommandCreate = ppDataDrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbAuditoriaDet'
              mmHeight = 3704
              mmLeft = 78846
              mmTop = 265
              mmWidth = 19050
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'DESCRICAO'
              DataPipeline = dbAuditoriaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDataDrawCommandClick
              OnDrawCommandCreate = ppDataDrawCommandCreate
              Transparent = True
              DataPipelineName = 'dbAuditoriaDet'
              mmHeight = 3704
              mmLeft = 99748
              mmTop = 265
              mmWidth = 70115
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppLine3: TppLine
              UserName = 'Line3'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 12700
              mmTop = 0
              mmWidth = 158221
              BandType = 7
            end
          end
        end
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TOTAL'
        DataPipeline = dbAuditoria
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbAuditoria'
        mmHeight = 4233
        mmLeft = 81756
        mmTop = 794
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'GRUPO'
      DataPipeline = dbAuditoria
      KeepTogether = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbAuditoria'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'GRUPO'
          DataPipeline = dbAuditoria
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbAuditoria'
          mmHeight = 4763
          mmLeft = 10054
          mmTop = 2117
          mmWidth = 32544
          BandType = 3
          GroupNo = 0
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = clGray
          Pen.Style = psClear
          Shape = stSquare
          mmHeight = 2117
          mmLeft = 6350
          mmTop = 3704
          mmWidth = 1852
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2381
        mmPrintPosition = 0
      end
    end
  end
  object Q_Auditoria: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a.tipo, t.grupo, t.descricao, sum(a.valor) as Total from ' +
        'Auditorias a inner join TiposAuditoria t on a.tipo = t.tipo'
      'group by a.tipo, t.grupo, t.descricao'
      'order by t.grupo, t.tipo desc')
    Left = 128
    Top = 92
    object Q_AuditoriaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object Q_AuditoriaGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Size = 25
    end
    object Q_AuditoriaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Q_AuditoriaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object Q_AuditoriaDS: TDataSource
    DataSet = Q_Auditoria
    Left = 108
    Top = 244
  end
  object dbAuditoria: TppDBPipeline
    DataSource = Q_AuditoriaDS
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'dbAuditoria'
    Left = 112
    Top = 196
    object dbAuditoriappField1: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbAuditoriappField2: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbAuditoriappField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbAuditoriappField4: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object Q_AuditoriaDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_AuditoriaDS
    SQL.Strings = (
      
        'select DATA, TIPO, HORA, u.LOGINNAME, DESCRICAO, VALOR, IDGERADO' +
        'R, IDTABELA, TIPOOPERACAO '
      'from AUDITORIAS a, USUARIOS u'
      'where TIPO = :TIPO and a.usuario = u.usuario')
    Left = 40
    Top = 92
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptUnknown
      end>
    object Q_AuditoriaDetDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_AuditoriaDetHORA: TTimeField
      FieldName = 'HORA'
    end
    object Q_AuditoriaDetDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object Q_AuditoriaDetVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_AuditoriaDetIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object Q_AuditoriaDetIDTABELA: TIntegerField
      FieldName = 'IDTABELA'
    end
    object Q_AuditoriaDetTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object Q_AuditoriaDetLOGINNAME: TIBStringField
      FieldName = 'LOGINNAME'
      Required = True
      Size = 30
    end
    object Q_AuditoriaDetTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object Q_AuditoriaDetDS: TDataSource
    DataSet = Q_AuditoriaDet
    Left = 24
    Top = 244
  end
  object dbAuditoriaDet: TppDBPipeline
    DataSource = Q_AuditoriaDetDS
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'dbAuditoriaDet'
    Left = 24
    Top = 196
    MasterDataPipelineName = 'dbAuditoria'
    object dbAuditoriaDetppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField2: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField3: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField4: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField5: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField6: TppField
      FieldAlias = 'IDGERADOR'
      FieldName = 'IDGERADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField7: TppField
      FieldAlias = 'IDTABELA'
      FieldName = 'IDTABELA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField8: TppField
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbAuditoriaDetppField9: TppField
      FieldAlias = 'LOGINNAME'
      FieldName = 'LOGINNAME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select USUARIO, LOGINNAME from USUARIOS'
      'where DESATIVADO = '#39'N'#39
      'order by LoginName')
    Left = 272
    Top = 92
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Usuarios'
    Left = 272
    Top = 196
    object C_UsuariosLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Required = True
      Size = 30
    end
    object C_UsuariosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
  end
  object C_UsuariosDS: TDataSource
    DataSet = C_Usuarios
    Left = 272
    Top = 244
  end
  object P_Usuarios: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 272
    Top = 292
  end
end

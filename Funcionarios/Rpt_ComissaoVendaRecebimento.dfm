inherited RptComissaoVendaRecebimento: TRptComissaoVendaRecebimento
  Left = 453
  Top = 169
  Width = 480
  Height = 303
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 346
    Height = 222
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 188
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Imprimir'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 464
    Gradient.ColorStart = 12240214
    inherited btHelp: TTS_SpeedButton
      Left = 436
    end
    inherited lbCaption: TdxfLabel
      Width = 293
      AutoSize = True
      Caption = 'Comiss'#227'o Venda/Recebimento'
      Effect3D.ShadowedColor = 12240214
    end
  end
  inherited pnDados: TTS_Panel
    Width = 346
    Height = 222
    Color = 15396297
    object Label1: TLabel
      Left = 35
      Top = 36
      Width = 50
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label2: TLabel
      Left = 30
      Top = 63
      Width = 55
      Height = 13
      Caption = 'Data Inicio:'
    end
    object Label3: TLabel
      Left = 33
      Top = 90
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object dtInicio: TTS_DateTimePicker
      Left = 88
      Top = 60
      Width = 121
      TabOrder = 0
      AutoSize = False
      StyleController = DMProjeto.esFuncionarios
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
    object dtFim: TTS_DateTimePicker
      Left = 88
      Top = 86
      Width = 121
      TabOrder = 1
      AutoSize = False
      StyleController = DMProjeto.esFuncionarios
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
    object edFuncionario: TTS_EditFavorecido
      Left = 89
      Top = 34
      Width = 231
      Hint = 
        '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
        '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
        'a pelo EIN. Ex: EIN:6719034663'
      Style.ButtonStyle = btsFlat
      TabOrder = 2
      StyleController = DMProjeto.esFuncionarios
      Buttons = <
        item
          Default = True
          Glyph.Data = {
            26050000424D260500000000000036040000280000000F0000000F0000000100
            080000000000F000000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            070707070707070707000707070707070707070707FCFC000700070707070707
            0707070704FEFC00070007070707070707070704FEFC00070700070707070707
            0707FCFEFC0007070700070707000000000707A4000707070700070700060606
            0600A4A40707070707000707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
            FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
            FEFE060007070707070007FEFFFFFFFEFEFE000707070707070007A4FFFFFFFE
            FE060707070707070700070707A4A4A400070707070707070700070707070707
            07070707070707070700}
          Kind = bkGlyph
          Width = 18
        end
        item
          Default = False
          Glyph.Data = {
            06050000424D060500000000000036040000280000000D0000000D0000000100
            080000000000D000000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            0707070707070700000007070707070707070707070707000000070707070700
            00000707070707000000070707070700FC000707070707000000070707070700
            FC000707070707000000070700000000FC000000000707000000070700FCFCFC
            FCFCFCFC000707000000070700000000FC000000000707000000070707070700
            FC000707070707000000070707070700FC000707070707000000070707070700
            0000070707070700000007070707070707070707070707000000070707070707
            07070707070707000000}
          Kind = bkGlyph
          Width = 17
        end>
      SelecionarVarios = False
      TipoFavorecido = 3
      C_Localizar = DMProjeto.C_LocalizarFav
      ID = 0
      Height = 19
      ExistButtons = True
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 28
    Top = 240
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 16
    Top = 200
  end
  inherited Beep: TBTBeeper
    Left = 60
    Top = 200
  end
  inherited FormStorage: TFormStorage
    Left = 44
    Top = 164
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Comiss'#227'o Venda/Recebimento'
    Left = 96
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 397
    Top = 206
  end
  object ppDBComissaoVenda: TppDBPipeline
    DataSource = Q_ComissoesVendaDs
    UserName = 'DBComissaoVenda'
    Left = 270
    Top = 156
    object ppDBComissaoVendappField1: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 0
    end
    object ppDBComissaoVendappField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBComissaoVendappField3: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBComissaoVendappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppDBComissaoVendappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO'
      FieldName = 'COMISSAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object ppComissao: TppReport
    AutoStop = False
    DataPipeline = ppDBComissaoVenda
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
    Left = 270
    Top = 208
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBComissaoVenda'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 94790
        mmTop = 30692
        mmWidth = 8594
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 3727
        mmTop = 38629
        mmWidth = 12573
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 29369
        mmTop = 38629
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Total Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 38629
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 179388
        mmTop = 38629
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 38629
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMERO'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DATA'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CLIENTE'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 265
        mmWidth = 82815
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'TOTAL'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 146579
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'COMISSAO'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 529
        mmLeft = 1058
        mmTop = 265
        mmWidth = 196321
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 529
        mmLeft = 1323
        mmTop = 5292
        mmWidth = 196321
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COMISSAO'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TOTAL'
        DataPipeline = ppDBComissaoVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoVenda'
        mmHeight = 3969
        mmLeft = 146579
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Totais ==>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 122048
        mmTop = 794
        mmWidth = 18711
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6350
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
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
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 9790
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Numero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4022
              mmLeft = 5821
              mmTop = 5821
              mmWidth = 12573
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 31485
              mmTop = 5821
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 52917
              mmTop = 5821
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Caption = 'Total Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 146844
              mmTop = 5821
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'Comiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 181505
              mmTop = 5821
              mmWidth = 15610
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'COMISSAO'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 180182
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'TOTAL'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 148961
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'CLIENTE'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 53181
              mmTop = 529
              mmWidth = 82815
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'DATA'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 30956
              mmTop = 529
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'NUMERO'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 5292
              mmTop = 529
              mmWidth = 15610
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppLine3: TppLine
              UserName = 'Line3'
              Weight = 0.75
              mmHeight = 529
              mmLeft = 1323
              mmTop = 265
              mmWidth = 196321
              BandType = 7
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'Totais ==>>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4022
              mmLeft = 124090
              mmTop = 794
              mmWidth = 18711
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'TOTAL'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 148696
              mmTop = 794
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'COMISSAO'
              DataPipeline = ppDBComissaoVenda
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBComissaoVenda'
              mmHeight = 3969
              mmLeft = 179917
              mmTop = 794
              mmWidth = 17198
              BandType = 7
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Weight = 0.75
              mmHeight = 529
              mmLeft = 1323
              mmTop = 5292
              mmWidth = 196321
              BandType = 7
            end
          end
        end
      end
    end
  end
  object Q_ComissoesVendaDs: TDataSource
    DataSet = Q_ComissoesVenda
    Left = 268
    Top = 106
  end
  object Q_ComissoesVenda: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select s.numero, s.data, f.Nome as cliente,  s.total, (s.total /' +
        ' 2.00 ) * (v.comissao / 100.00) as Comissao'
      'from saidas s'
      
        '  inner join tiposmovimento m on m.tipomovimento = s.tipomovimen' +
        'to'
      '  inner join favorecidos f on f.favorecido = s.favorecido'
      '  inner join favorecidos v on v.favorecido = s.vendedor'
      'where s.data >= :Inicio and s.data <= :Fim'
      'and s.situacao = '#39'N'#39
      'and m.calccomissao = '#39'S'#39)
    Left = 274
    Top = 54
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fim'
        ParamType = ptUnknown
      end>
    object Q_ComissoesVendaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'SAIDAS.NUMERO'
      Size = 12
    end
    object Q_ComissoesVendaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'SAIDAS.DATA'
    end
    object Q_ComissoesVendaCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object Q_ComissoesVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SAIDAS.TOTAL'
    end
    object Q_ComissoesVendaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
  end
  object Q_ComissaoRecebimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select t.notafiscal, t.datapago, f.nome as Cliente, t.valorpago,' +
        ' (t.valorpago / 2.00 ) * (v.comissao / 100.00) as Comissao'
      'from titulosareceber t'
      '  inner join  saidas s on s.saida = t.venda'
      
        '  inner join tiposmovimento m on m.tipomovimento = s.tipomovimen' +
        'to'
      '  inner join favorecidos f on f.favorecido = s.favorecido'
      '  inner join favorecidos v on v.favorecido = s.vendedor'
      'where s.data >= :Inicio and s.data <= :Fim'
      'and s.situacao = '#39'N'#39
      'and t.status = 50'
      'and m.calccomissao = '#39'S'#39)
    Left = 278
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fim'
        ParamType = ptUnknown
      end>
    object Q_ComissaoRecebimentoNOTAFISCAL: TIBStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'TITULOSARECEBER.NOTAFISCAL'
      Size = 15
    end
    object Q_ComissaoRecebimentoDATAPAGO: TDateField
      FieldName = 'DATAPAGO'
      Origin = 'TITULOSARECEBER.DATAPAGO'
    end
    object Q_ComissaoRecebimentoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object Q_ComissaoRecebimentoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object Q_ComissaoRecebimentoVALORPAGO: TIBBCDField
      FieldName = 'VALORPAGO'
      Origin = 'TITULOSARECEBER.VALORPAGO'
      Precision = 18
      Size = 2
    end
  end
  object Q_ComissaoRecebimentoDs: TDataSource
    DataSet = Q_ComissaoRecebimento
    Left = 206
    Top = 26
  end
  object ppDBComissaoRecebimento: TppDBPipeline
    DataSource = Q_ComissaoRecebimentoDs
    UserName = 'DBComissaoRecebimento'
    Left = 214
    Top = 154
    object ppDBComissaoRecebimentoppField1: TppField
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBComissaoRecebimentoppField2: TppField
      FieldAlias = 'DATAPAGO'
      FieldName = 'DATAPAGO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBComissaoRecebimentoppField3: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBComissaoRecebimentoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORPAGO'
      FieldName = 'VALORPAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppDBComissaoRecebimentoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO'
      FieldName = 'COMISSAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object Q_Funcionarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select f.favorecido,'
      '       f.nome,'
      '       f.dataadimissao,'
      '       c.descricao as cargo,'
      
        '       (select sum(((perccomissao * recebidovenda ) / 100) ) fro' +
        'm comissoes'
      
        '        where data >= :datai and data <= :dataf and funcionario ' +
        '=                 f.favorecido) as Comissao,'
      '       (select sum(pf.valorcomissao) from payrollsfunc pf'
      '        inner join payrolls p on p.payroll = pf.payroll'
      '        inner join duplicatasapagar d on d.id = pf.idapagar'
      '        inner join retiradas r on r.retirada = d.natureza'
      '        where pf.data >= :datai and pf.data <= :dataf and'
      '                   pf.funcionario = f.favorecido and'
      '                   p.status <> '#39'C'#39') as Pagamento,'
      '       (select sum(valor) from comissoesdev'
      
        '        where data >= :datai and data <= :dataf and funcionario ' +
        '=         f.favorecido) as Devolucoes'
      'from favorecidos f'
      'inner join cargos c on f.cargo = c.cargo'
      'where f.tipofavorecido = 3 and f.desativado = '#39'N'#39' '
      '          and ( f.favorecido = :funcio OR :todos = 0 ) '
      'order by f.nome')
    UniDirectional = True
    Left = 31
    Top = 53
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'funcio'
        ParamType = ptUnknown
        Value = '10'
      end
      item
        DataType = ftUnknown
        Name = 'todos'
        ParamType = ptUnknown
      end>
  end
  object C_Funcionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Funcionarios'
    Left = 28
    Top = 96
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
    object C_FuncionariosDATAADIMISSAO: TDateField
      FieldName = 'DATAADIMISSAO'
      Origin = 'FAVORECIDOS.DATAADIMISSAO'
    end
    object C_FuncionariosCARGO: TStringField
      FieldName = 'CARGO'
      Origin = 'CARGOS.CARGO'
      Size = 30
    end
    object C_FuncionariosPAGAMENTO: TBCDField
      FieldName = 'PAGAMENTO'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosDEVOLUCOES: TBCDField
      FieldName = 'DEVOLUCOES'
      Precision = 18
      Size = 2
    end
    object C_FuncionariosSaldoAnterior: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'SaldoAnterior'
    end
    object C_FuncionariosAReceber: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'AReceber'
    end
    object C_FuncionariosCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 3
    end
  end
  object P_Funcionarios: TDataSetProvider
    DataSet = Q_Funcionarios
    Constraints = True
    Left = 26
    Top = 133
  end
  object C_FuncionariosDS: TDataSource
    DataSet = C_Funcionarios
    Left = 24
    Top = 175
  end
end

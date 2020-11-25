inherited DlgExtratoContas: TDlgExtratoContas
  Left = 418
  Top = 65
  Width = 544
  Height = 395
  Caption = 'Financeiro'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 410
    Height = 314
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 280
    end
    inherited btComando2: TTS_SpeedButton
      Top = 75
    end
    inherited btComando1: TTS_SpeedButton
      Top = 108
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Hint = '&Visualizar o Extrato'
      Caption = '&Visualizar'
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        0800000000009001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2F8008ED4DF006BC9D10048B8C30025AABD0000AAC5000092
        AF00007A930000626200004A4A0000323200D4E3FF00B1C7FF008EABFF006B8F
        FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
        5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
        5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000101E7EEEEEE
        EEEEEEEEEEEEEEEEEEEEF100F1010101EE000000000000000000000000F10013
        00F10101EE00E723E5E5E4E4E4E4E3E3F100110B13000101EE008F238F8F8F8F
        8F8F8FF100110B1200F10101EE00E723E5E5E4E3E3E3F100110B1200F1010101
        EE008F238F8F8F8F8FF100110B1200F1E7010101EE00E924E7E7E7E3F100110B
        1200F1EEE7010101EE00F000000000F00013111200F100EEE70101EAF000ED24
        E4E4E7ED00F0E100F1E300EEE701E8EE00E72323FFFFFFE4E70000F18F8F00EE
        E701ECF098952323959595959598F1ECE3E300EEE701EE00968E23238E8E8E8E
        8E9600EE8F8F00EEE701EE00E4FF2323FFFFFFFFFFE400EEE5E500EEE701EE00
        E4FF2323FFFFFFFFFFE400EE000000EEE701EE009895232395959595959800EE
        FFE500EEE701ECF0998E23238E8E8E8E8E99F0ECE5EC00EEE701E8EE00E72323
        FFFFFFFFE700EEE8EC00EEE7010101EAF000ED24E4E4E7ED00F0EAEC00EEE701
        01010101EAEEF000000000F0EE000000EEE701010101010101E8ECEEEEEEEEEE
        EEEEEEEEE70101010101}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Height = 7
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 528
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Top = 25
      Width = 282
      Caption = 'Movimenta'#231#227'o das Contas Banc'#225'rias e Caixas da Empresa.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 429
    end
    inherited lbUpperHint: TTS_Label
      Left = 527
    end
    inherited lbCaption: TdxfLabel
      Width = 171
      AutoSize = True
      Caption = 'Extrato de Contas'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 410
    Height = 314
    Color = 15724519
    object TS_Panel1: TTS_Panel
      Tag = -1
      Left = 1
      Top = 1
      Width = 408
      Height = 312
      HelpContext = -1
      Align = alClient
      BevelOuter = bvNone
      Color = 15724519
      TabOrder = 0
      DesignSize = (
        408
        312)
      object TS_Label1: TTS_Label
        Left = 9
        Top = 11
        Width = 117
        Caption = 'Informe a Conta:'
        FocusControl = cmbContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTipoTransacao: TTS_Label
        Left = 11
        Top = 102
        Width = 112
        Alignment = taLeftJustify
        Caption = 'Tipos de Transa'#231#227'o:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object Label2: TTS_Label
        Left = 17
        Top = 36
        Width = 113
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Per'#237'odo do Extrato de:'
        FocusControl = dtDataI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object Label3: TTS_Label
        Left = 230
        Top = 36
        Width = 6
        Height = 13
        Caption = 'a'
        FocusControl = dtDataF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label3: TTS_Label
        Left = 68
        Top = 60
        Width = 58
        Height = 13
        Caption = 'Por ordem:'
        FocusControl = rdCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Shape1: TTS_Shape
        Left = 12
        Top = 118
        Width = 394
        Height = 170
        Anchors = [akLeft, akTop, akRight, akBottom]
        Brush.Style = bsClear
        Pen.Color = 13223591
        Transparent = False
      end
      object lbMarcar: TTS_Label
        Left = 127
        Top = 103
        Width = 65
        Caption = 'Marcar todos'
        Enabled = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object clbTipoTransacao: TTS_CheckListBox
        Tag = -1
        Left = 13
        Top = 119
        Width = 392
        Height = 168
        HelpContext = -1
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Columns = 2
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        DataSet = Q_TiposTransacoes
        KeyField = 'Origem'
        ListField = 'Descricao'
        Transparent = False
      end
      object rdCronologico: TTS_RadioButton
        Tag = -1
        Left = 127
        Top = 60
        Width = 108
        Height = 17
        HelpContext = -1
        Caption = 'Cronol'#243'gica'
        Checked = True
        Color = 15724519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        TabStop = True
        OnClick = rdCronologicoClick
        Transparent = False
      end
      object rdTransacional: TTS_RadioButton
        Tag = -1
        Left = 127
        Top = 77
        Width = 117
        Height = 17
        HelpContext = -1
        Caption = 'Transacional'
        Color = 15724519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        OnClick = rdTransacionalClick
        Transparent = False
      end
      object ckbACompensar: TTS_CheckBox
        Tag = -2
        Left = 246
        Top = 72
        Width = 154
        HelpContext = -2
        Color = 15724519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 6
        Caption = 'Cheques a Compensar'
        StyleController = DMProjeto.esFinanceiro
        DisableEdit = False
        Height = 21
      end
      object ckbADepositar: TTS_CheckBox
        Tag = -2
        Left = 246
        Top = 54
        Width = 154
        HelpContext = -2
        Color = 15724519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 5
        Caption = 'Cheques a Depositar'
        StyleController = DMProjeto.esFinanceiro
        DisableEdit = False
        Height = 21
      end
      object dtDataI: TTS_DateTimePicker
        Tag = -2
        Left = 127
        Top = 33
        Width = 90
        HelpContext = -2
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
        DateOnError = deToday
        UseEditMask = True
        Height = 21
        StoredValues = 4
      end
      object dtDataF: TTS_DateTimePicker
        Tag = -2
        Left = 249
        Top = 33
        Width = 85
        HelpContext = -2
        TabOrder = 2
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
        DateOnError = deToday
        UseEditMask = True
        Height = 21
        StoredValues = 4
      end
      object cmbContas: TTS_PopupEdit
        Tag = -2
        Left = 127
        Top = 9
        Width = 271
        HelpContext = -2
        TabOrder = 0
        StyleController = DMProjeto.esFinanceiro
        OnChange = cmbContasClick
        PopupFormBorderStyle = pbsSysPanel
        OnInitPopup = cmbContasInitPopup
        LookupSource = DMFinanceiro.C_ContasCxBcDS
        LookupKeyValue = 0
        Height = 19
      end
      object ckbCartoesAReceber: TTS_CheckBox
        Tag = -2
        Left = 246
        Top = 91
        Width = 154
        HelpContext = -2
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 7
        Caption = 'Cart'#245'es a Receber'
        StyleController = DMProjeto.esFinanceiro
        DisableEdit = False
        Height = 19
      end
      object TS_Panel2: TTS_Panel
        Left = 0
        Top = 285
        Width = 408
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 9
        BackgroundOptions.Opaque = False
        object Barra: TdxfProgressBar
          Left = 66
          Top = 7
          Width = 281
          Height = 15
          BarBevelOuter = bvRaised
          BeginColor = clWhite
          BevelOuter = bvNone
          EndColor = 5197823
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Max = 13
          Min = 0
          Orientation = orHorizontal
          ParentFont = False
          Position = 0
          ShowText = True
          ShowTextStyle = stsPercent
          Step = 10
          Style = sExSolid
          TabOrder = 0
          TransparentGlyph = True
          Visible = False
        end
      end
      object ckbMarcar: TTS_CheckBox
        Left = 107
        Top = 100
        Width = 21
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 10
        OnClick = ckbMarcarClick
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 262
    Top = 166
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 364
    Top = 163
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 209
    Top = 165
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Extrato de Contas'
    OnRefresh = FormsComponentRefresh
    FirstEditField = cmbContas
    Left = 142
    Top = 166
  end
  object ppExtratoCronologico: TppReport [9]
    AutoStop = False
    DataPipeline = ppCronologico
    NoDataBehaviors = [ndBlankReport]
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
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppExtratoCronologicoPreviewFormCreate
    Left = 96
    Top = 7
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppCronologico'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 57150
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        mmHeight = 32808
        mmLeft = 3175
        mmTop = 24606
        mmWidth = 194469
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = clGray
          Pen.Color = clGray
          Pen.Style = psClear
          mmHeight = 28046
          mmLeft = 194734
          mmTop = 27517
          mmWidth = 2117
          BandType = 1
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          Pen.Color = clGray
          mmHeight = 23813
          mmLeft = 139965
          mmTop = 31221
          mmWidth = 56092
          BandType = 1
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 15790320
          Pen.Color = clGray
          mmHeight = 5292
          mmLeft = 139965
          mmTop = 26193
          mmWidth = 56092
          BandType = 1
        end
        object lbTituloRelatorio: TppLabel
          UserName = 'lbTituloRelatorio'
          OnGetText = lbTituloRelatorioGetText
          Caption = 'lbTituloRelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 4498
          mmTop = 26194
          mmWidth = 41540
          BandType = 1
        end
        object lbPeriodo: TppLabel
          UserName = 'lbTituloRelatorio1'
          OnGetText = lbPeriodoGetText
          Caption = 'lbPeriodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 32544
          mmWidth = 14288
          BandType = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Resumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 160073
          mmTop = 26722
          mmWidth = 14288
          BandType = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Saldo Anterior'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 141023
          mmTop = 32014
          mmWidth = 21960
          BandType = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Total de Cr'#233'ditos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 141023
          mmTop = 36512
          mmWidth = 26458
          BandType = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'Total de D'#233'bitos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 141023
          mmTop = 41010
          mmWidth = 25400
          BandType = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          OnGetText = ppLabel5GetText
          Caption = 'Saldo do Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 141023
          mmTop = 50006
          mmWidth = 23813
          BandType = 1
        end
        object lbSaldoAnt: TppLabel
          UserName = 'lbSaldoAnt'
          OnGetText = ppLabel21GetText
          AutoSize = False
          Caption = 'lbSaldoAnt'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170128
          mmTop = 32015
          mmWidth = 24342
          BandType = 1
        end
        object lbTotCreditos: TppLabel
          UserName = 'lbTotCreditos'
          OnGetText = lbTotCreditosGetText
          AutoSize = False
          Caption = 'lbTotCreditos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170128
          mmTop = 36513
          mmWidth = 24342
          BandType = 1
        end
        object lbTotalDebitos: TppLabel
          UserName = 'lbTotalDebitos'
          OnGetText = lbTotalDebitosGetText
          AutoSize = False
          Caption = 'lbTotalDebitos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170128
          mmTop = 41010
          mmWidth = 24342
          BandType = 1
        end
        object lbSaldoAtual: TppLabel
          UserName = 'lbSaldoAtual'
          OnGetText = lbSaldoAtualGetText
          AutoSize = False
          Caption = 'lbSaldoAtual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170128
          mmTop = 50006
          mmWidth = 24342
          BandType = 1
        end
        object ppLine23: TppLine
          UserName = 'Line23'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 23813
          mmLeft = 169334
          mmTop = 31221
          mmWidth = 1852
          BandType = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Movimenta'#231#227'o da Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 50536
          mmWidth = 42863
          BandType = 1
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 'Saldo da Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 141023
          mmTop = 45508
          mmWidth = 23548
          BandType = 1
        end
        object lbSaldoConta: TppLabel
          UserName = 'Label21'
          OnGetText = lbSaldoContaGetText
          AutoSize = False
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170128
          mmTop = 45508
          mmWidth = 24342
          BandType = 1
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 794
          mmLeft = 141288
          mmTop = 55033
          mmWidth = 55563
          BandType = 1
        end
      end
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 24077
        mmLeft = 1588
        mmTop = 265
        mmWidth = 194205
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object regChequePre: TppRegion
        UserName = 'regChequePre'
        Caption = 'regChequePre'
        Pen.Style = psClear
        mmHeight = 20902
        mmLeft = 69321
        mmTop = 35719
        mmWidth = 68792
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape18: TppShape
          UserName = 'Shape18'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 13494
          mmLeft = 71702
          mmTop = 42333
          mmWidth = 65617
          BandType = 1
        end
        object ppShape13: TppShape
          UserName = 'Shape13'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 70644
          mmTop = 50271
          mmWidth = 23019
          BandType = 1
        end
        object ppShape15: TppShape
          UserName = 'Shape15'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 115094
          mmTop = 50271
          mmWidth = 21696
          BandType = 1
        end
        object ppShape16: TppShape
          UserName = 'Shape16'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 93134
          mmTop = 45773
          mmWidth = 22225
          BandType = 1
        end
        object ppShape10: TppShape
          UserName = 'Shape10'
          Brush.Color = 16053492
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 70644
          mmTop = 41275
          mmWidth = 66146
          BandType = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Cheques Pr'#233'-Datados:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 71438
          mmTop = 41540
          mmWidth = 34660
          BandType = 1
        end
        object lbPreDatados: TppLabel
          UserName = 'lbPreDatados'
          OnGetText = lbPreDatadosGetText
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 105040
          mmTop = 41540
          mmWidth = 30692
          BandType = 1
        end
        object ppShape12: TppShape
          UserName = 'Shape12'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 70644
          mmTop = 45773
          mmWidth = 23019
          BandType = 1
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          Caption = '0 - 30'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 77258
          mmTop = 46038
          mmWidth = 10319
          BandType = 1
        end
        object lbPre30: TppLabel
          UserName = 'lbPre30'
          OnGetText = lbPre30GetText
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 78846
          mmTop = 50536
          mmWidth = 6879
          BandType = 1
        end
        object ppShape14: TppShape
          UserName = 'Shape14'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 93398
          mmTop = 50271
          mmWidth = 21960
          BandType = 1
        end
        object lbPre60: TppLabel
          UserName = 'lbPre60'
          OnGetText = lbPre60GetText
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 101071
          mmTop = 50536
          mmWidth = 6879
          BandType = 1
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = '31 - 60'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 98161
          mmTop = 46038
          mmWidth = 12700
          BandType = 1
        end
        object ppShape17: TppShape
          UserName = 'Shape17'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 115094
          mmTop = 45773
          mmWidth = 21696
          BandType = 1
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = '> 60'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 121444
          mmTop = 46038
          mmWidth = 8467
          BandType = 1
        end
        object lbPreMaior60: TppLabel
          UserName = 'lbPreMaior60'
          OnGetText = lbPreMaior60GetText
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 122767
          mmTop = 50536
          mmWidth = 6879
          BandType = 1
        end
      end
    end
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppRegion2: TppRegion
        OnPrint = ppRegion2Print
        UserName = 'Region2'
        Pen.Style = psClear
        ShiftRelativeTo = ppRegion3
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 6879
        mmWidth = 196321
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label19'
          Caption = 'Saldo Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 12435
          mmTop = 7673
          mmWidth = 28575
          BandType = 0
        end
        object ppLabel21: TppLabel
          UserName = 'lbValSaldoAnt1'
          OnGetText = ppLabel21GetText
          AutoSize = False
          Caption = 'lbValSaldoAnt'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 172773
          mmTop = 7673
          mmWidth = 20902
          BandType = 0
        end
      end
      object ppRegion3: TppRegion
        UserName = 'Region3'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 6879
        mmLeft = 794
        mmTop = 265
        mmWidth = 196586
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Dia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3704
          mmTop = 1588
          mmWidth = 5027
          BandType = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label101'
          Caption = 'Hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 12435
          mmTop = 1588
          mmWidth = 13494
          BandType = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Favorecido/Sacado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 71173
          mmTop = 1588
          mmWidth = 29104
          BandType = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = ' # Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 103981
          mmTop = 1588
          mmWidth = 16404
          BandType = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'D'#233'bito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 130440
          mmTop = 1588
          mmWidth = 10054
          BandType = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 155575
          mmTop = 1588
          mmWidth = 11113
          BandType = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Saldo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 180711
          mmTop = 1588
          mmWidth = 8467
          BandType = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 1588
          mmTop = 5821
          mmWidth = 8996
          BandType = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 12171
          mmTop = 5821
          mmWidth = 55298
          BandType = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 68792
          mmTop = 5821
          mmWidth = 33602
          BandType = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 103981
          mmTop = 5821
          mmWidth = 17463
          BandType = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 123031
          mmTop = 5821
          mmWidth = 24077
          BandType = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 148696
          mmTop = 5821
          mmWidth = 24077
          BandType = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1058
          mmLeft = 174361
          mmTop = 5821
          mmWidth = 20638
          BandType = 0
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 10319
          mmTop = 1852
          mmWidth = 1588
          BandType = 0
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 67204
          mmTop = 1852
          mmWidth = 1588
          BandType = 0
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 102129
          mmTop = 1588
          mmWidth = 1588
          BandType = 0
        end
        object ppLine27: TppLine
          UserName = 'Line27'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 121179
          mmTop = 1588
          mmWidth = 1588
          BandType = 0
        end
        object ppLine28: TppLine
          UserName = 'Line28'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 146844
          mmTop = 1588
          mmWidth = 1588
          BandType = 0
        end
        object ppLine29: TppLine
          UserName = 'Line29'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 172509
          mmTop = 1852
          mmWidth = 1588
          BandType = 0
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 4233
          mmLeft = 194998
          mmTop = 1852
          mmWidth = 1588
          BandType = 0
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppShape30: TppShape
        UserName = 'Shape30'
        Brush.Style = bsClear
        OnDrawCommandClick = ppShape30DrawCommandClick
        OnDrawCommandCreate = ppShape30DrawCommandCreate
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object dbtdata: TppDBText
        UserName = 'dbtdata'
        DataField = 'DATA'
        DataPipeline = ppCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'HISTORICO'
        DataPipeline = ppCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 12171
        mmTop = 0
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NOME'
        DataPipeline = ppCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 69056
        mmTop = 0
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        OnGetText = ppDBText4GetText
        DataField = 'NUMCHEQUE'
        DataPipeline = ppCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        OnGetText = ppDBText5GetText
        DataField = 'VALOR'
        DataPipeline = ppCronologico
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 121973
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        OnGetText = ppDBText6GetText
        DataField = 'VALOR'
        DataPipeline = ppCronologico
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        OnGetText = ppDBText8GetText
        DataField = 'SIGLA'
        DataPipeline = ppCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 139700
        mmTop = 0
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        OnGetText = ppDBText9GetText
        DataField = 'SIGLA'
        DataPipeline = ppCronologico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCronologico'
        mmHeight = 3704
        mmLeft = 166159
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object dbtSaldo: TppVariable
        OnPrint = dbtSaldoPrint
        UserName = 'dbtSaldo'
        OnGetText = dbtSaldoGetText
        AutoSize = False
        CalcOrder = 0
        DataType = dtSingle
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        OnCalc = dbtSaldoCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 39952
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15461355
        Pen.Style = psClear
        mmHeight = 4763
        mmLeft = 265
        mmTop = 529
        mmWidth = 194734
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label11'
        Caption = 'Saldo Atual em'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 128059
        mmTop = 529
        mmWidth = 23548
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel19GetText
        Caption = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 152400
        mmTop = 529
        mmWidth = 11906
        BandType = 7
      end
      object ChequesACompensar: TppSubReport
        UserName = 'ChequesACompensar'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = regLimiteCredito
        TraverseAllData = False
        DataPipelineName = 'ppChqComp'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 21431
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppChqComp
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
          Template.FileName = 'E:\MaxPlus\ChequesACompensar.rtm'
          Left = 144
          Top = 88
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppChqComp'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              OnGetText = ppDBText7GetText
              DataField = 'NUMCHEQUE'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText7DrawCommandClick
              OnDrawCommandCreate = ppDBText7DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 4498
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'NOME'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText7DrawCommandClick
              OnDrawCommandCreate = ppDBText7DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 24342
              mmTop = 265
              mmWidth = 74083
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'VALOR'
              DataPipeline = ppChqComp
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText7DrawCommandClick
              OnDrawCommandCreate = ppDBText7DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'DATA'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText7DrawCommandClick
              OnDrawCommandCreate = ppDBText7DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 124884
              mmTop = 265
              mmWidth = 17463
              BandType = 4
            end
            object dbtDia: TppDBText
              OnPrint = dbtDiaPrint
              UserName = 'dbtDia'
              OnGetText = dbtDiaGetText
              DataField = 'VENCIMENTO'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText7DrawCommandClick
              OnDrawCommandCreate = ppDBText7DrawCommandCreate
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 148696
              mmTop = 265
              mmWidth = 12700
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc1'
              OnGetText = ppDBCalc2GetText
              DataField = 'VALOR'
              DataPipeline = ppChqComp
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 95515
              mmTop = 529
              mmWidth = 25135
              BandType = 7
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = ppChqComp
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppChqComp'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 14552
              mmPrintPosition = 0
              object ppShape19: TppShape
                UserName = 'Shape19'
                Brush.Color = clSilver
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 5292
                mmTop = 2117
                mmWidth = 39423
                BandType = 3
                GroupNo = 0
              end
              object ppLabel23: TppLabel
                UserName = 'Label23'
                AutoSize = False
                Caption = 'Cheques a Compensar'
                Color = 15395583
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                OnDrawCommandClick = ppLabel23DrawCommandClick
                mmHeight = 4233
                mmLeft = 4498
                mmTop = 1852
                mmWidth = 39423
                BandType = 3
                GroupNo = 0
              end
              object ppLabel24: TppLabel
                UserName = 'Label24'
                Caption = 'N'#186' Cheque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 4498
                mmTop = 8996
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object ppLabel25: TppLabel
                UserName = 'Label25'
                Caption = 'Favorecido'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 25135
                mmTop = 8996
                mmWidth = 15081
                BandType = 3
                GroupNo = 0
              end
              object ppLabel26: TppLabel
                UserName = 'Label26'
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 107686
                mmTop = 8996
                mmWidth = 7144
                BandType = 3
                GroupNo = 0
              end
              object ppLabel27: TppLabel
                UserName = 'Label27'
                Caption = 'Para o dia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 148432
                mmTop = 8996
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel28: TppLabel
                UserName = 'Label28'
                Caption = 'Emitido em'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 125413
                mmTop = 8996
                mmWidth = 15610
                BandType = 3
                GroupNo = 0
              end
              object ppLine8: TppLine
                UserName = 'Line8'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 4233
                mmTop = 12964
                mmWidth = 16933
                BandType = 3
                GroupNo = 0
              end
              object ppLine9: TppLine
                UserName = 'Line9'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 24077
                mmTop = 12964
                mmWidth = 74348
                BandType = 3
                GroupNo = 0
              end
              object ppLine10: TppLine
                UserName = 'Line10'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 100277
                mmTop = 12964
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line101'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 123031
                mmTop = 12964
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine12: TppLine
                UserName = 'Line12'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 146315
                mmTop = 12964
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLine33: TppLine
                UserName = 'Line33'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 4233
                mmLeft = 20902
                mmTop = 8996
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine34: TppLine
                UserName = 'Line34'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 98161
                mmTop = 9260
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine35: TppLine
                UserName = 'Line35'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 120386
                mmTop = 8996
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine36: TppLine
                UserName = 'Line36'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 143140
                mmTop = 9260
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine37: TppLine
                UserName = 'Line37'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 163777
                mmTop = 8996
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'FORMAPAGAMENTO'
            DataPipeline = ppChqComp
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppChqComp'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                DataField = 'FORMAPAGAMENTO'
                DataPipeline = ppChqComp
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                DataPipelineName = 'ppChqComp'
                mmHeight = 4233
                mmLeft = 4233
                mmTop = 0
                mmWidth = 49477
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                DataField = 'VALOR'
                DataPipeline = ppChqComp
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppChqComp'
                mmHeight = 3704
                mmLeft = 94986
                mmTop = 529
                mmWidth = 25665
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc2'
                DataPipeline = ppChqComp
                DisplayFormat = '###,### cheque(s)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppChqComp'
                mmHeight = 3969
                mmLeft = 4498
                mmTop = 265
                mmWidth = 78846
                BandType = 5
                GroupNo = 1
              end
            end
          end
        end
      end
      object ChequesADepositar: TppSubReport
        UserName = 'ChequesADepositar'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = regLimiteCredito
        TraverseAllData = False
        DataPipelineName = 'ppChqDep'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 15610
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppChqDep
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
          Template.FileName = 'E:\MaxPlus\ChequesADepositar.rtm'
          Left = 176
          Top = 120
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppChqDep'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'NUMCHEQUE'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 2910
              mmTop = 265
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'TITULARCHEQUE'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 24871
              mmTop = 265
              mmWidth = 72761
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              DataField = 'VALOR'
              DataPipeline = ppChqDep
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 100013
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              DataField = 'DATA'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 124090
              mmTop = 265
              mmWidth = 19050
              BandType = 4
            end
            object dbtVenc1: TppDBText
              OnPrint = dbtVenc1Print
              UserName = 'dbtVenc1'
              OnGetText = dbtVenc1GetText
              DataField = 'VENCIMENTO'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 147902
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'VALOR'
              DataPipeline = ppChqDep
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 100542
              mmTop = 265
              mmWidth = 20108
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'NUMCHEQUE'
              DataPipeline = ppChqDep
              DisplayFormat = '###,### cheque(s)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 3440
              mmTop = 0
              mmWidth = 57679
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = ppChqDep
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppChqDep'
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 15081
              mmPrintPosition = 0
              object ppShape11: TppShape
                UserName = 'Shape101'
                Brush.Color = clSilver
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 5027
                mmTop = 2381
                mmWidth = 58208
                BandType = 3
                GroupNo = 0
              end
              object ppLabel35: TppLabel
                UserName = 'Label35'
                AutoSize = False
                Caption = 'Cheques Recebidos a Depositar'
                Color = 16774378
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                OnDrawCommandClick = ppLabel35DrawCommandClick
                mmHeight = 4763
                mmLeft = 4498
                mmTop = 1588
                mmWidth = 57944
                BandType = 3
                GroupNo = 0
              end
              object ppLabel36: TppLabel
                UserName = 'Label301'
                Caption = 'N'#186' Cheque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 4763
                mmTop = 9525
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object ppLabel37: TppLabel
                UserName = 'Label37'
                Caption = 'Sacado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 25400
                mmTop = 9525
                mmWidth = 10054
                BandType = 3
                GroupNo = 0
              end
              object ppLabel38: TppLabel
                UserName = 'Label38'
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 107421
                mmTop = 9525
                mmWidth = 7144
                BandType = 3
                GroupNo = 0
              end
              object ppLabel39: TppLabel
                UserName = 'Label39'
                Caption = 'Para o dia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 146844
                mmTop = 9525
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel40: TppLabel
                UserName = 'Label40'
                Caption = 'Emiss'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 127000
                mmTop = 9525
                mmWidth = 11377
                BandType = 3
                GroupNo = 0
              end
              object ppLine18: TppLine
                UserName = 'Line18'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 4498
                mmTop = 13493
                mmWidth = 16933
                BandType = 3
                GroupNo = 0
              end
              object ppLine19: TppLine
                UserName = 'Line19'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 24342
                mmTop = 13493
                mmWidth = 74348
                BandType = 3
                GroupNo = 0
              end
              object ppLine20: TppLine
                UserName = 'Line20'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 100542
                mmTop = 13493
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine21: TppLine
                UserName = 'Line21'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 123296
                mmTop = 13493
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine22: TppLine
                UserName = 'Line22'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 145521
                mmTop = 13493
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLine40: TppLine
                UserName = 'Line40'
                Pen.Color = clGray
                Position = lpRight
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 96838
                mmTop = 9790
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine41: TppLine
                UserName = 'Line401'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 21167
                mmTop = 9790
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine42: TppLine
                UserName = 'Line42'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 120650
                mmTop = 9790
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine43: TppLine
                UserName = 'Line43'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 143404
                mmTop = 9790
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine44: TppLine
                UserName = 'Line44'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 162984
                mmTop = 9525
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
      object dbtSaldoAtual: TppVariable
        OnPrint = dbtSaldoAtualPrint
        UserName = 'dbtSaldoAtual'
        OnGetText = dbtSaldoAtualGetText
        AutoSize = False
        CalcOrder = 0
        DataType = dtSingle
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 794
        mmWidth = 26194
        BandType = 7
      end
      object regLimiteCredito: TppRegion
        UserName = 'regLimiteCredito'
        Caption = 'regLimiteCredito'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 10319
        mmLeft = 139700
        mmTop = 4498
        mmWidth = 55298
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Limite de Cr'#233'dito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 141817
          mmTop = 5292
          mmWidth = 27781
          BandType = 7
        end
        object ppLimiteCredito: TppLabel
          UserName = 'Label201'
          OnGetText = ppLimiteCreditoGetText
          AutoSize = False
          Caption = 'Label201'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170392
          mmTop = 5292
          mmWidth = 23283
          BandType = 7
        end
        object ppSaldoDisponivel: TppLabel
          UserName = 'Label20'
          OnGetText = ppSaldoDisponivelGetText
          AutoSize = False
          Caption = 'Label20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 170392
          mmTop = 10054
          mmWidth = 23283
          BandType = 7
        end
        object ppLabel18: TppLabel
          UserName = 'Label17'
          Caption = 'Saldo Dispon'#237'vel:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 142875
          mmTop = 10054
          mmWidth = 26723
          BandType = 7
        end
      end
      object SubCartoesAReceber: TppSubReport
        UserName = 'SubCartoesAReceber'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = regLimiteCredito
        TraverseAllData = False
        DataPipelineName = 'dbCartoes'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 27252
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = dbCartoes
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
          Left = 264
          Top = 172
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbCartoes'
          object ppTitleBand7: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand8: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              OnGetText = ppDBText37GetText
              DataField = 'HISTORICO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 794
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              DataField = 'DESCFORMAPAGAMENTO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 32015
              mmTop = 0
              mmWidth = 66675
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              DataField = 'VALOROPERACAO'
              DataPipeline = dbCartoes
              DisplayFormat = '##,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 99484
              mmTop = 0
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              DataField = 'DATA'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 123561
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText41: TppDBText
              OnPrint = ppDBText41Print
              UserName = 'DBText41'
              OnGetText = ppDBText41GetText
              DataField = 'RECEBIDO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 145786
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand8: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              DataField = 'VALOROPERACAO'
              DataPipeline = dbCartoes
              DisplayFormat = '##,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 265
              mmWidth = 21431
              BandType = 7
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = dbCartoes
            KeepTogether = True
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbCartoes'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 15875
              mmPrintPosition = 0
              object ppShape32: TppShape
                UserName = 'Shape32'
                Brush.Color = clSilver
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 4763
                mmTop = 3175
                mmWidth = 62971
                BandType = 3
                GroupNo = 0
              end
              object ppLabel75: TppLabel
                UserName = 'Label75'
                AutoSize = False
                Caption = 'Cart'#245'es a Receber (Apresentados)'
                Color = 15724519
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                mmHeight = 4498
                mmLeft = 4233
                mmTop = 2381
                mmWidth = 62442
                BandType = 3
                GroupNo = 0
              end
              object ppLabel76: TppLabel
                UserName = 'Label76'
                Caption = '# Apresenta'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 4498
                mmTop = 10319
                mmWidth = 23283
                BandType = 3
                GroupNo = 0
              end
              object ppLabel77: TppLabel
                UserName = 'Label77'
                Caption = 'Nome do Cart'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 32015
                mmTop = 10319
                mmWidth = 26458
                BandType = 3
                GroupNo = 0
              end
              object ppLabel78: TppLabel
                UserName = 'Label78'
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 107156
                mmTop = 10319
                mmWidth = 7144
                BandType = 3
                GroupNo = 0
              end
              object ppLabel79: TppLabel
                UserName = 'Label79'
                Caption = 'Para o dia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 146579
                mmTop = 10319
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel80: TppLabel
                UserName = 'Label401'
                Caption = 'Data'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 129646
                mmTop = 10319
                mmWidth = 6615
                BandType = 3
                GroupNo = 0
              end
              object ppLine66: TppLine
                UserName = 'Line66'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 4233
                mmTop = 14288
                mmWidth = 24077
                BandType = 3
                GroupNo = 0
              end
              object ppLine67: TppLine
                UserName = 'Line67'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 30692
                mmTop = 14288
                mmWidth = 67733
                BandType = 3
                GroupNo = 0
              end
              object ppLine68: TppLine
                UserName = 'Line201'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 100277
                mmTop = 14288
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine69: TppLine
                UserName = 'Line69'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 123031
                mmTop = 14288
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine70: TppLine
                UserName = 'Line70'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 145257
                mmTop = 14288
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLine71: TppLine
                UserName = 'Line402'
                Pen.Color = clGray
                Position = lpRight
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 29104
                mmTop = 10319
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine72: TppLine
                UserName = 'Line72'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 28046
                mmTop = 10583
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine73: TppLine
                UserName = 'Line73'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 120386
                mmTop = 10583
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine74: TppLine
                UserName = 'Line74'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 143140
                mmTop = 10583
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine75: TppLine
                UserName = 'Line75'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 162719
                mmTop = 10319
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
      object subPorFormaPagamento: TppSubReport
        UserName = 'subPorFormaPagamento'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        ShiftRelativeTo = ChequesADepositar
        TraverseAllData = False
        DataPipelineName = 'ppPorFormaPagamento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 33073
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport8: TppChildReport
          AutoStop = False
          DataPipeline = ppPorFormaPagamento
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
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppPorFormaPagamento'
          object ppTitleBand9: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppShape34: TppShape
              UserName = 'Shape34'
              Pen.Color = clGray
              mmHeight = 4498
              mmLeft = 3175
              mmTop = 1323
              mmWidth = 46302
              BandType = 1
            end
            object ppLabel87: TppLabel
              UserName = 'Label87'
              Caption = 'Resumo por Forma de Pagamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 4498
              mmTop = 1852
              mmWidth = 43127
              BandType = 1
            end
            object ppShape35: TppShape
              UserName = 'Shape35'
              Pen.Color = clGray
              mmHeight = 4498
              mmLeft = 49213
              mmTop = 1323
              mmWidth = 20373
              BandType = 1
            end
            object ppShape36: TppShape
              UserName = 'Shape36'
              Pen.Color = clGray
              mmHeight = 4498
              mmLeft = 69321
              mmTop = 1323
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel88: TppLabel
              UserName = 'Label88'
              Caption = 'D'#233'bitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 55033
              mmTop = 1852
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel89: TppLabel
              UserName = 'Label89'
              Caption = 'Cr'#233'ditos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 74348
              mmTop = 1852
              mmWidth = 10054
              BandType = 1
            end
          end
          object ppDetailBand10: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              UserName = 'DBText1'
              DataField = 'DESCRICAO'
              DataPipeline = ppPorFormaPagamento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppPorFormaPagamento'
              mmHeight = 3440
              mmLeft = 4498
              mmTop = 265
              mmWidth = 43656
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText47'
              DataField = 'DEBITOS'
              DataPipeline = ppPorFormaPagamento
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppPorFormaPagamento'
              mmHeight = 3704
              mmLeft = 49477
              mmTop = 265
              mmWidth = 19315
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText48'
              DataField = 'CREDITOS'
              DataPipeline = ppPorFormaPagamento
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppPorFormaPagamento'
              mmHeight = 3704
              mmLeft = 70115
              mmTop = 265
              mmWidth = 17992
              BandType = 4
            end
            object ppLine86: TppLine
              UserName = 'Line86'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 88371
              mmTop = 0
              mmWidth = 3704
              BandType = 4
            end
            object ppLine87: TppLine
              UserName = 'Line87'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 1852
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppLine89: TppLine
              UserName = 'Line89'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 69321
              mmTop = 0
              mmWidth = 3704
              BandType = 4
            end
            object ppLine90: TppLine
              UserName = 'Line90'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 49213
              mmTop = 0
              mmWidth = 3704
              BandType = 4
            end
          end
          object ppSummaryBand10: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppLine88: TppLine
              UserName = 'Line88'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 85461
              BandType = 7
            end
          end
        end
      end
    end
  end
  object Q_CronoDS: TDataSource [10]
    DataSet = Q_Cronologico
    Left = 26
    Top = 296
  end
  object Q_ChqCompDS: TDataSource [11]
    DataSet = Q_ChqComp
    Left = 84
    Top = 296
  end
  object Q_ChqDepDS: TDataSource [12]
    DataSet = Q_ChqDep
    Left = 200
    Top = 296
  end
  object Q_ChqDep: TIBQuery [13]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      
        '    dd.VALOR, dd.NUMCHEQUE, dd.VENCIMENTO, dd.IDDoc, dd.TITULARC' +
        'HEQUE, f.NOME, d.data, 1 as Grupo'
      'FROM'
      
        '        depositos d inner join depositosdoc dd on d.deposito = d' +
        'd.deposito and d.empresa = dd.empresa and d.pdv = dd.pdv'
      '        left join favorecidos f on d.favorecido = f.favorecido'
      
        '        inner join formaspagamento fp on dd.formapagamento = fp.' +
        'formapagamento'
      'WHERE    '
      '    dd.CONTAATUAL = 1'
      '    AND fp.Especie = 1'
      '    and dd.ForaDaEmpresa = '#39'N'#39
      '    and dd.Status < 50'
      'ORDER BY'
      '    dd.vencimento')
    Left = 200
    Top = 257
    object IBStringField4: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DateField4: TDateField
      FieldName = 'DATA'
    end
    object IBStringField5: TIBStringField
      FieldName = 'TITULARCHEQUE'
      Size = 50
    end
    object Q_ChqDepVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_ChqDepNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object Q_ChqDepVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_ChqDepGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object Q_ChqDepIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
  end
  object ppChqDep: TppDBPipeline [14]
    DataSource = Q_ChqDepDS
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'ChqDep'
    Left = 200
    Top = 209
    object ppChqDepppField1: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField3: TppField
      FieldAlias = 'TITULARCHEQUE'
      FieldName = 'TITULARCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField4: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField5: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField6: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField7: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppChqDepppField8: TppField
      FieldAlias = 'IDDOC'
      FieldName = 'IDDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object Q_ChqComp: TIBQuery [15]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT rd.IDDoc,'
      
        '    rd.VALOR, rd.NUMCHEQUE, rd.VENCIMENTO, rd.CHEQUENOMINAL, f.N' +
        'OME, fp.Descricao as FormaPagamento,  r.data, 1 as Grupo'
      
        'FROM ((RetiradasDoc rd inner join Retiradas r on rd.empresa = r.' +
        'empresa and  rd.Retirada = r.retirada and  rd.pdv = r.pdv) '
      'INNER JOIN Favorecidos f ON rd.favorecidodoc = f.favorecido) '
      
        'INNER JOIN FormasPagamento fp on rd.formapagamento = fp.formapag' +
        'amento '
      'WHERE rd.CONTA = :conta  AND rd.STATUS = 3'
      'ORDER BY'
      '    rd.FormaPagamento, rd.vencimento')
    Left = 84
    Top = 257
    ParamData = <
      item
        DataType = ftInteger
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object Q_ChqCompVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object Q_ChqCompCHEQUENOMINAL: TIBStringField
      FieldName = 'CHEQUENOMINAL'
      Size = 50
    end
    object Q_ChqCompNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ChqCompDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_ChqCompNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object Q_ChqCompVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_ChqCompFORMAPAGAMENTO: TIBStringField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
      Size = 50
    end
    object Q_ChqCompGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object Q_ChqCompIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
  end
  object ppChqComp: TppDBPipeline [16]
    DataSource = Q_ChqCompDS
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'ChqComp'
    Left = 84
    Top = 209
    object ppChqCompppField1: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField2: TppField
      FieldAlias = 'CHEQUENOMINAL'
      FieldName = 'CHEQUENOMINAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField3: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField4: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField5: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField6: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField7: TppField
      FieldAlias = 'FORMAPAGAMENTO'
      FieldName = 'FORMAPAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppChqCompppField8: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object ppCronologico: TppDBPipeline [17]
    DataSource = Q_CronoDS
    CloseDataSource = True
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'Cronologico'
    Left = 28
    Top = 209
    object ppCronologicoppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField2: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField4: TppField
      FieldAlias = 'TIPOTRANSACAO'
      FieldName = 'TIPOTRANSACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField5: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField6: TppField
      FieldAlias = 'SIGLA'
      FieldName = 'SIGLA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField7: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField8: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField9: TppField
      FieldAlias = 'IDGERADOR'
      FieldName = 'IDGERADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField10: TppField
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField11: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField12: TppField
      FieldAlias = 'FAVORECIDO'
      FieldName = 'FAVORECIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppCronologicoppField13: TppField
      FieldAlias = 'IDDOC'
      FieldName = 'IDDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object Q_Cronologico: TIBQuery [18]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      
        '   t.id, t.conta, t.data, t.valor, t.tipotransacao, t.numcheque,' +
        ' t.historico,  f.nome, fp.sigla, t.idgerador, t.tipooperacao, t.' +
        'favorecido, t.iddoc'
      'FROM'
      '   transacoes t '
      
        '   inner join formaspagamento fp on t.formapagamento = fp.formap' +
        'agamento'
      '   left join favorecidos f on t.favorecido = f.favorecido'
      'WHERE'
      
        '    t.data >= :dataini and t.data <= :datafim and t.conta = :con' +
        'ta '
      'ORDER BY'
      '    t.data, t.id')
    Left = 28
    Top = 257
    ParamData = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'datafim'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object Q_CronologicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_CronologicoCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object Q_CronologicoDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_CronologicoTIPOTRANSACAO: TIBStringField
      FieldName = 'TIPOTRANSACAO'
      Size = 1
    end
    object Q_CronologicoNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_CronologicoSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object Q_CronologicoNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object Q_CronologicoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_CronologicoIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object Q_CronologicoTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object Q_CronologicoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object Q_CronologicoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'TRANSACOES.FAVORECIDO'
    end
    object Q_CronologicoIDDOC: TIntegerField
      FieldName = 'IDDOC'
    end
  end
  object ppExtratoTransacional: TppReport [19]
    AutoStop = False
    DataPipeline = ppTipoTran
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
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppExtratoTransacionalPreviewFormCreate
    Left = 260
    Top = 5
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppTipoTran'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 57415
      mmPrintPosition = 0
      object ppRegion4: TppRegion
        UserName = 'Region4'
        Pen.Style = psClear
        mmHeight = 32279
        mmLeft = 1852
        mmTop = 24871
        mmWidth = 195263
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 1852
          mmLeft = 131763
          mmTop = 53710
          mmWidth = 61913
          BandType = 0
        end
        object ppShape7: TppShape
          UserName = 'Shape7'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 27517
          mmLeft = 191559
          mmTop = 28046
          mmWidth = 2117
          BandType = 0
        end
        object ppShape8: TppShape
          UserName = 'Shape8'
          Pen.Color = clGray
          mmHeight = 23283
          mmLeft = 130704
          mmTop = 31485
          mmWidth = 62177
          BandType = 0
        end
        object ppShape9: TppShape
          UserName = 'Shape9'
          Brush.Color = 15790320
          Pen.Color = clGray
          mmHeight = 5292
          mmLeft = 130704
          mmTop = 26458
          mmWidth = 62177
          BandType = 0
        end
        object ppLabel22: TppLabel
          UserName = 'lbTituloRelatorio2'
          OnGetText = lbTituloRelatorioGetText
          Caption = 'lbTituloRelatorio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 3175
          mmTop = 26459
          mmWidth = 41540
          BandType = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          OnGetText = lbPeriodoGetText
          Caption = 'lbPeriodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3175
          mmTop = 32809
          mmWidth = 14288
          BandType = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          Caption = 'Resumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 152400
          mmTop = 26987
          mmWidth = 14288
          BandType = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Saldo Anterior'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 32279
          mmWidth = 21960
          BandType = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Cr'#233'ditos e Dep'#243'sitos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 36777
          mmWidth = 31750
          BandType = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'D'#233'bitos e Taxas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 41275
          mmWidth = 24871
          BandType = 0
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Saldo da Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 50271
          mmWidth = 23548
          BandType = 0
        end
        object ppLabel47: TppLabel
          UserName = 'lbValSaldoAnt2'
          OnGetText = ppLabel21GetText
          AutoSize = False
          Caption = 'lbValSaldoAnt'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 166423
          mmTop = 32279
          mmWidth = 24871
          BandType = 0
        end
        object ppLabel48: TppLabel
          UserName = 'lbTotCreditos1'
          OnGetText = lbTotCreditosGetText
          AutoSize = False
          Caption = 'lbTotCreditos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 166423
          mmTop = 36777
          mmWidth = 24871
          BandType = 0
        end
        object ppLabel49: TppLabel
          UserName = 'lbTotalDebitos1'
          OnGetText = lbTotalDebitosGetText
          AutoSize = False
          Caption = 'lbTotalDebitos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 166423
          mmTop = 41275
          mmWidth = 24871
          BandType = 0
        end
        object ppLabel50: TppLabel
          UserName = 'lbValSaldoAtual1'
          OnGetText = lbSaldoAtualGetText
          AutoSize = False
          Caption = 'lbValSaldoAtual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 166423
          mmTop = 45773
          mmWidth = 24871
          BandType = 0
        end
        object ppLine45: TppLine
          UserName = 'Line45'
          Pen.Color = clGray
          Position = lpLeft
          Weight = 0.75
          mmHeight = 23019
          mmLeft = 165100
          mmTop = 31750
          mmWidth = 1852
          BandType = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = 'Por tipo de Transa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 51858
          mmWidth = 38629
          BandType = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          Caption = 'Saldo Financeiro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 132027
          mmTop = 45773
          mmWidth = 25400
          BandType = 0
        end
        object lbSaldoFinal: TppLabel
          UserName = 'lbSaldoFinal'
          OnGetText = lbSaldoContaGetText
          AutoSize = False
          Caption = 'lbSaldoFinal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 166423
          mmTop = 50271
          mmWidth = 24871
          BandType = 0
        end
      end
      object regCab2: TppRegion
        UserName = 'regCab1'
        Caption = 'regCab'
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 24077
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object regChequePre2: TppRegion
        UserName = 'regChequePre1'
        Caption = 'regChequePre2'
        Pen.Style = psClear
        mmHeight = 20902
        mmLeft = 56356
        mmTop = 34925
        mmWidth = 73819
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape20: TppShape
          UserName = 'Shape20'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 13494
          mmLeft = 58738
          mmTop = 41540
          mmWidth = 70115
          BandType = 0
        end
        object ppShape21: TppShape
          UserName = 'Shape21'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 57679
          mmTop = 49477
          mmWidth = 23813
          BandType = 0
        end
        object ppShape22: TppShape
          UserName = 'Shape22'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 104511
          mmTop = 49477
          mmWidth = 23548
          BandType = 0
        end
        object ppShape23: TppShape
          UserName = 'Shape23'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 81227
          mmTop = 44979
          mmWidth = 23548
          BandType = 0
        end
        object ppShape24: TppShape
          UserName = 'Shape102'
          Brush.Color = 16053492
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 57679
          mmTop = 40481
          mmWidth = 70379
          BandType = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Cheques Pr'#233'-Datados:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 58472
          mmTop = 40746
          mmWidth = 34660
          BandType = 0
        end
        object ppLabel29: TppLabel
          UserName = 'lbPreDatados1'
          OnGetText = lbPreDatadosGetText
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 104511
          mmTop = 40746
          mmWidth = 22490
          BandType = 0
        end
        object ppShape25: TppShape
          UserName = 'Shape25'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 57679
          mmTop = 44979
          mmWidth = 23813
          BandType = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = '0 - 30'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 64823
          mmTop = 45244
          mmWidth = 10319
          BandType = 0
        end
        object ppLabel31: TppLabel
          UserName = 'lbPre301'
          OnGetText = lbPre30GetText
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 66146
          mmTop = 49742
          mmWidth = 6879
          BandType = 0
        end
        object ppShape26: TppShape
          UserName = 'Shape26'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 81227
          mmTop = 49477
          mmWidth = 23548
          BandType = 0
        end
        object ppLabel32: TppLabel
          UserName = 'lbPre601'
          OnGetText = lbPre60GetText
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 89959
          mmTop = 49742
          mmWidth = 6879
          BandType = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = '31 - 60'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 87048
          mmTop = 45244
          mmWidth = 12700
          BandType = 0
        end
        object ppShape27: TppShape
          UserName = 'Shape27'
          Pen.Color = clGray
          mmHeight = 4763
          mmLeft = 104511
          mmTop = 44979
          mmWidth = 23548
          BandType = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          Caption = '> 60'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112184
          mmTop = 45244
          mmWidth = 8467
          BandType = 0
        end
        object ppLabel51: TppLabel
          UserName = 'lbPreMaior601'
          OnGetText = lbPreMaior60GetText
          Caption = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 49742
          mmWidth = 6879
          BandType = 0
        end
      end
    end
    object ppDetailBand5: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Color = 15461355
        DataField = 'DESCRICAO'
        DataPipeline = ppTipoTran
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        DataPipelineName = 'ppTipoTran'
        mmHeight = 4498
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 61648
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.5
        mmHeight = 1588
        mmLeft = 6085
        mmTop = 5556
        mmWidth = 61913
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Pen.Color = clGray
        Pen.Width = 2
        Position = lpRight
        Weight = 1.5
        mmHeight = 4763
        mmLeft = 4763
        mmTop = 1323
        mmWidth = 1588
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        DrillDownComponent = ppDBText23
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppTransacional'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6615
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppTransacional
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
          Left = 252
          Top = 216
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppTransacional'
          object ppTitleBand5: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape31: TppShape
              UserName = 'Shape31'
              Brush.Style = bsClear
              OnDrawCommandClick = ppShape31DrawCommandClick
              OnDrawCommandCreate = ppShape31DrawCommandCreate
              Pen.Style = psClear
              mmHeight = 4498
              mmLeft = 9525
              mmTop = 0
              mmWidth = 168540
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              OnGetText = ppDBText25GetText
              DataField = 'DATA'
              DataPipeline = ppTransacional
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppTransacional'
              mmHeight = 3440
              mmLeft = 9790
              mmTop = 265
              mmWidth = 8996
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'NOME'
              DataPipeline = ppTransacional
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTransacional'
              mmHeight = 3440
              mmLeft = 73554
              mmTop = 265
              mmWidth = 41275
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'FORMADEPAGAMENTO'
              DataPipeline = ppTransacional
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTransacional'
              mmHeight = 3440
              mmLeft = 118004
              mmTop = 265
              mmWidth = 34925
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'HISTORICO'
              DataPipeline = ppTransacional
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTransacional'
              mmHeight = 3440
              mmLeft = 21431
              mmTop = 265
              mmWidth = 49742
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              DataField = 'VALOR'
              DataPipeline = ppTransacional
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppTransacional'
              mmHeight = 3440
              mmLeft = 156369
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
            object ppLine52: TppLine
              UserName = 'Line52'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 177800
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppLine53: TppLine
              UserName = 'Line53'
              Pen.Color = clGray
              Position = lpRight
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 7938
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 2646
            mmPrintPosition = 0
            object ppLine54: TppLine
              UserName = 'Line54'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 2646
              mmLeft = 8996
              mmTop = 0
              mmWidth = 169069
              BandType = 7
            end
          end
          object ppGroup9: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = ppTransacional
            KeepTogether = True
            UserName = 'Group9'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppTransacional'
            object ppGroupHeaderBand9: TppGroupHeaderBand
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object regCabColunas: TppRegion
                UserName = 'regCabColunas'
                Brush.Color = 15461355
                Pen.Color = clGray
                Stretch = True
                mmHeight = 5292
                mmLeft = 8996
                mmTop = 264
                mmWidth = 169069
                BandType = 3
                GroupNo = 0
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                object ppLabel54: TppLabel
                  UserName = 'Label102'
                  Caption = 'Dia'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Tahoma'
                  Font.Size = 10
                  Font.Style = []
                  Transparent = True
                  mmHeight = 4233
                  mmLeft = 11642
                  mmTop = 793
                  mmWidth = 5027
                  BandType = 3
                  GroupNo = 0
                end
                object ppLabel55: TppLabel
                  UserName = 'Label55'
                  Caption = 'Memo'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Tahoma'
                  Font.Size = 10
                  Font.Style = []
                  Transparent = True
                  mmHeight = 4233
                  mmLeft = 22754
                  mmTop = 794
                  mmWidth = 9525
                  BandType = 3
                  GroupNo = 0
                end
                object ppLabel56: TppLabel
                  UserName = 'Label56'
                  Caption = 'Favorecido/Cliente'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Tahoma'
                  Font.Size = 10
                  Font.Style = []
                  Transparent = True
                  mmHeight = 4233
                  mmLeft = 72761
                  mmTop = 794
                  mmWidth = 28575
                  BandType = 3
                  GroupNo = 0
                end
                object ppLabel57: TppLabel
                  UserName = 'Label57'
                  Caption = 'Forma de Pagamento'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Tahoma'
                  Font.Size = 10
                  Font.Style = []
                  Transparent = True
                  mmHeight = 4233
                  mmLeft = 117740
                  mmTop = 793
                  mmWidth = 33338
                  BandType = 3
                  GroupNo = 0
                end
                object ppLabel60: TppLabel
                  UserName = 'Label60'
                  Caption = 'Valor'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Name = 'Tahoma'
                  Font.Size = 10
                  Font.Style = []
                  Transparent = True
                  mmHeight = 4233
                  mmLeft = 162454
                  mmTop = 794
                  mmWidth = 7938
                  BandType = 3
                  GroupNo = 0
                end
                object ppLine48: TppLine
                  UserName = 'Line48'
                  Pen.Color = clGray
                  Position = lpLeft
                  Weight = 0.75
                  mmHeight = 4498
                  mmLeft = 18521
                  mmTop = 528
                  mmWidth = 1588
                  BandType = 3
                  GroupNo = 0
                end
                object ppLine49: TppLine
                  UserName = 'Line49'
                  Pen.Color = clGray
                  Position = lpLeft
                  Weight = 0.75
                  mmHeight = 4498
                  mmLeft = 71173
                  mmTop = 793
                  mmWidth = 1588
                  BandType = 3
                  GroupNo = 0
                end
                object ppLine50: TppLine
                  UserName = 'Line50'
                  Pen.Color = clGray
                  Position = lpLeft
                  Weight = 0.75
                  mmHeight = 4498
                  mmLeft = 115624
                  mmTop = 793
                  mmWidth = 1588
                  BandType = 3
                  GroupNo = 0
                end
                object ppLine51: TppLine
                  UserName = 'Line501'
                  Pen.Color = clGray
                  Position = lpLeft
                  Weight = 0.75
                  mmHeight = 4498
                  mmLeft = 153724
                  mmTop = 528
                  mmWidth = 1588
                  BandType = 3
                  GroupNo = 0
                end
              end
            end
            object ppGroupFooterBand9: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
      object ppDBText24: TppDBText
        OnPrint = ppDBText24Print
        UserName = 'DBText24'
        DataField = 'TOTAL'
        DataPipeline = ppTipoTran
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppTipoTran'
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 1058
        mmWidth = 26988
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object SubChequesACompensar: TppSubReport
        UserName = 'SubChequesACompensar'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = SubChequesADepositar
        TraverseAllData = False
        DataPipelineName = 'ppChqComp'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7144
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppChqComp
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
          Left = 288
          Top = 180
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppChqComp'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              UserName = 'DBText7'
              OnGetText = ppDBText7GetText
              DataField = 'NUMCHEQUE'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText30DrawCommandClick
              OnDrawCommandCreate = ppDBText30DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 4233
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText10'
              DataField = 'NOME'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText30DrawCommandClick
              OnDrawCommandCreate = ppDBText30DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 24342
              mmTop = 265
              mmWidth = 74083
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText11'
              DataField = 'VALOR'
              DataPipeline = ppChqComp
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText30DrawCommandClick
              OnDrawCommandCreate = ppDBText30DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 265
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText12'
              DataField = 'DATA'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText30DrawCommandClick
              OnDrawCommandCreate = ppDBText30DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 124884
              mmTop = 265
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'dbtDia'
              DataField = 'VENCIMENTO'
              DataPipeline = ppChqComp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText30DrawCommandClick
              OnDrawCommandCreate = ppDBText30DrawCommandCreate
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 148696
              mmTop = 265
              mmWidth = 12700
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc1'
              OnGetText = ppDBCalc5GetText
              DataField = 'VALOR'
              DataPipeline = ppChqComp
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqComp'
              mmHeight = 3704
              mmLeft = 95515
              mmTop = 529
              mmWidth = 25135
              BandType = 7
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = ppChqComp
            KeepTogether = True
            UserName = 'Group6'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppChqComp'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 15875
              mmPrintPosition = 0
              object ppShape28: TppShape
                UserName = 'Shape19'
                Brush.Color = clGray
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 5821
                mmTop = 3440
                mmWidth = 49213
                BandType = 3
                GroupNo = 0
              end
              object ppLabel52: TppLabel
                UserName = 'Label23'
                AutoSize = False
                Caption = 'Cheques a Compensar'
                Color = 15395583
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                mmHeight = 4233
                mmLeft = 6350
                mmTop = 3175
                mmWidth = 48419
                BandType = 3
                GroupNo = 0
              end
              object ppLabel64: TppLabel
                UserName = 'Label24'
                Caption = ' # Cheque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 6085
                mmTop = 10319
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel65: TppLabel
                UserName = 'Label25'
                Caption = 'Favorecido'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 25135
                mmTop = 10319
                mmWidth = 15081
                BandType = 3
                GroupNo = 0
              end
              object ppLabel66: TppLabel
                UserName = 'Label26'
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 107686
                mmTop = 10319
                mmWidth = 7144
                BandType = 3
                GroupNo = 0
              end
              object ppLabel67: TppLabel
                UserName = 'Label27'
                Caption = 'Para o dia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 148432
                mmTop = 10319
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel68: TppLabel
                UserName = 'Label28'
                Caption = 'Emitido em'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 125413
                mmTop = 10319
                mmWidth = 15610
                BandType = 3
                GroupNo = 0
              end
              object ppLine13: TppLine
                UserName = 'Line8'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 5821
                mmTop = 14288
                mmWidth = 16933
                BandType = 3
                GroupNo = 0
              end
              object ppLine14: TppLine
                UserName = 'Line9'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 24077
                mmTop = 14288
                mmWidth = 74348
                BandType = 3
                GroupNo = 0
              end
              object ppLine15: TppLine
                UserName = 'Line10'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 100277
                mmTop = 14288
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine16: TppLine
                UserName = 'Line101'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 123031
                mmTop = 14288
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine17: TppLine
                UserName = 'Line12'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 146315
                mmTop = 14288
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLine31: TppLine
                UserName = 'Line33'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 4233
                mmLeft = 22490
                mmTop = 10319
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine32: TppLine
                UserName = 'Line34'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 98161
                mmTop = 10583
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine38: TppLine
                UserName = 'Line35'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 120386
                mmTop = 10319
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine39: TppLine
                UserName = 'Line36'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 143140
                mmTop = 10583
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine55: TppLine
                UserName = 'Line37'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 163777
                mmTop = 10319
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'FORMAPAGAMENTO'
            DataPipeline = ppChqComp
            KeepTogether = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppChqComp'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBText31: TppDBText
                UserName = 'DBText13'
                DataField = 'FORMAPAGAMENTO'
                DataPipeline = ppChqComp
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                DataPipelineName = 'ppChqComp'
                mmHeight = 4233
                mmLeft = 5821
                mmTop = 0
                mmWidth = 49477
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc4'
                DataField = 'VALOR'
                DataPipeline = ppChqComp
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppChqComp'
                mmHeight = 3704
                mmLeft = 94986
                mmTop = 529
                mmWidth = 25665
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object SubChequesADepositar: TppSubReport
        UserName = 'SubChequesADepositar'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppChqDep'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1323
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = ppChqDep
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
          Left = 312
          Top = 204
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppChqDep'
          object ppTitleBand6: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand7: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText32: TppDBText
              UserName = 'DBText18'
              DataField = 'NUMCHEQUE'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 3969
              mmTop = 265
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText19'
              DataField = 'TITULARCHEQUE'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 24871
              mmTop = 265
              mmWidth = 72761
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText20'
              DataField = 'VALOR'
              DataPipeline = ppChqDep
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 100013
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText21'
              DataField = 'DATA'
              DataPipeline = ppChqDep
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 124090
              mmTop = 265
              mmWidth = 19050
              BandType = 4
            end
            object ppDBText36: TppDBText
              OnPrint = ppDBText36Print
              UserName = 'DBText22'
              DataField = 'VENCIMENTO'
              DataPipeline = ppChqDep
              DisplayFormat = 'dd/mm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              OnDrawCommandClick = ppDBText18DrawCommandClick
              OnDrawCommandCreate = ppDBText18DrawCommandCreate
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 147902
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand7: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'VALOR'
              DataPipeline = ppChqDep
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 100542
              mmTop = 265
              mmWidth = 20108
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'NUMCHEQUE'
              DataPipeline = ppChqDep
              DisplayFormat = '###,### cheque(s)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppChqDep'
              mmHeight = 3704
              mmLeft = 3440
              mmTop = 0
              mmWidth = 57679
              BandType = 7
            end
          end
          object ppGroup7: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = ppChqDep
            KeepTogether = True
            UserName = 'Group7'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppChqDep'
            object ppGroupHeaderBand7: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 16140
              mmPrintPosition = 0
              object ppShape29: TppShape
                UserName = 'Shape101'
                Brush.Color = clGray
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 5821
                mmTop = 3175
                mmWidth = 58208
                BandType = 3
                GroupNo = 0
              end
              object ppLabel69: TppLabel
                UserName = 'Label35'
                AutoSize = False
                Caption = 'Cheques Recebidos a Depositar'
                Color = 16774378
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                mmHeight = 4498
                mmLeft = 6350
                mmTop = 2646
                mmWidth = 57415
                BandType = 3
                GroupNo = 0
              end
              object ppLabel70: TppLabel
                UserName = 'Label301'
                Caption = '# Cheque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 5821
                mmTop = 10583
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel71: TppLabel
                UserName = 'Label37'
                Caption = 'Sacado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 25135
                mmTop = 10583
                mmWidth = 10054
                BandType = 3
                GroupNo = 0
              end
              object ppLabel72: TppLabel
                UserName = 'Label38'
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 107156
                mmTop = 10583
                mmWidth = 7144
                BandType = 3
                GroupNo = 0
              end
              object ppLabel73: TppLabel
                UserName = 'Label39'
                Caption = 'Para o dia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 146579
                mmTop = 10583
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel74: TppLabel
                UserName = 'Label40'
                Caption = 'Emiss'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 126736
                mmTop = 10583
                mmWidth = 11377
                BandType = 3
                GroupNo = 0
              end
              object ppLine56: TppLine
                UserName = 'Line18'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 5027
                mmTop = 14552
                mmWidth = 16933
                BandType = 3
                GroupNo = 0
              end
              object ppLine57: TppLine
                UserName = 'Line19'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 24077
                mmTop = 14552
                mmWidth = 74348
                BandType = 3
                GroupNo = 0
              end
              object ppLine58: TppLine
                UserName = 'Line20'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 100277
                mmTop = 14552
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine59: TppLine
                UserName = 'Line21'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 123031
                mmTop = 14552
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine60: TppLine
                UserName = 'Line22'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 145257
                mmTop = 14552
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLine61: TppLine
                UserName = 'Line40'
                Pen.Color = clGray
                Position = lpRight
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 22490
                mmTop = 10583
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine62: TppLine
                UserName = 'Line401'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 21696
                mmTop = 10848
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine63: TppLine
                UserName = 'Line42'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 120386
                mmTop = 10848
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine64: TppLine
                UserName = 'Line43'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 143140
                mmTop = 10848
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine65: TppLine
                UserName = 'Line44'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 162719
                mmTop = 10583
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand7: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
      object SubCartoesAReceber2: TppSubReport
        UserName = 'SubCartoesAReceber2'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = SubChequesACompensar
        TraverseAllData = False
        DataPipelineName = 'dbCartoes'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 13229
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport7: TppChildReport
          AutoStop = False
          DataPipeline = dbCartoes
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
          Left = 264
          Top = 168
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbCartoes'
          object ppTitleBand8: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand9: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText42: TppDBText
              UserName = 'DBText42'
              OnGetText = ppDBText37GetText
              DataField = 'HISTORICO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 794
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText43: TppDBText
              UserName = 'DBText43'
              DataField = 'DESCFORMAPAGAMENTO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 32015
              mmTop = 0
              mmWidth = 66675
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText44'
              DataField = 'VALOROPERACAO'
              DataPipeline = dbCartoes
              DisplayFormat = '##,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 99484
              mmTop = 0
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText45: TppDBText
              UserName = 'DBText401'
              DataField = 'DATA'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 123561
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText46'
              DataField = 'RECEBIDO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 145786
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand9: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              DataField = 'VALOROPERACAO'
              DataPipeline = dbCartoes
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 3704
              mmLeft = 97631
              mmTop = 529
              mmWidth = 23019
              BandType = 7
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'GRUPO'
            DataPipeline = dbCartoes
            KeepTogether = True
            UserName = 'Group8'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbCartoes'
            object ppGroupHeaderBand8: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 15610
              mmPrintPosition = 0
              object ppShape33: TppShape
                UserName = 'Shape33'
                Brush.Color = clSilver
                Pen.Style = psClear
                mmHeight = 4763
                mmLeft = 5027
                mmTop = 2910
                mmWidth = 62971
                BandType = 3
                GroupNo = 0
              end
              object ppLabel81: TppLabel
                UserName = 'Label81'
                AutoSize = False
                Caption = 'Cart'#245'es a Receber (Apresentados)'
                Color = 15724519
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Name = 'Tahoma'
                Font.Size = 10
                Font.Style = [fsBold]
                mmHeight = 4498
                mmLeft = 4498
                mmTop = 2117
                mmWidth = 62442
                BandType = 3
                GroupNo = 0
              end
              object ppLabel82: TppLabel
                UserName = 'Label82'
                Caption = '# Apresenta'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 4763
                mmTop = 10054
                mmWidth = 23283
                BandType = 3
                GroupNo = 0
              end
              object ppLabel83: TppLabel
                UserName = 'Label83'
                Caption = 'Nome do Cart'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 32279
                mmTop = 10054
                mmWidth = 26458
                BandType = 3
                GroupNo = 0
              end
              object ppLabel84: TppLabel
                UserName = 'Label84'
                Caption = 'Valor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 107421
                mmTop = 10054
                mmWidth = 7144
                BandType = 3
                GroupNo = 0
              end
              object ppLabel85: TppLabel
                UserName = 'Label85'
                Caption = 'Para o dia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 146844
                mmTop = 10054
                mmWidth = 14023
                BandType = 3
                GroupNo = 0
              end
              object ppLabel86: TppLabel
                UserName = 'Label86'
                Caption = 'Data'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 129911
                mmTop = 10054
                mmWidth = 6615
                BandType = 3
                GroupNo = 0
              end
              object ppLine76: TppLine
                UserName = 'Line76'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 4498
                mmTop = 14021
                mmWidth = 24077
                BandType = 3
                GroupNo = 0
              end
              object ppLine77: TppLine
                UserName = 'Line77'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 30956
                mmTop = 14021
                mmWidth = 67733
                BandType = 3
                GroupNo = 0
              end
              object ppLine78: TppLine
                UserName = 'Line78'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 100542
                mmTop = 14021
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine79: TppLine
                UserName = 'Line79'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 123296
                mmTop = 14021
                mmWidth = 20373
                BandType = 3
                GroupNo = 0
              end
              object ppLine80: TppLine
                UserName = 'Line701'
                Pen.Color = clGray
                Weight = 0.75
                mmHeight = 1588
                mmLeft = 145521
                mmTop = 14021
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLine81: TppLine
                UserName = 'Line81'
                Pen.Color = clGray
                Position = lpRight
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 29369
                mmTop = 10054
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine82: TppLine
                UserName = 'Line82'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 28310
                mmTop = 10319
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine83: TppLine
                UserName = 'Line83'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 120650
                mmTop = 10319
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine84: TppLine
                UserName = 'Line84'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 143404
                mmTop = 10319
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
              object ppLine85: TppLine
                UserName = 'Line85'
                Pen.Color = clGray
                Position = lpLeft
                Weight = 0.75
                mmHeight = 3969
                mmLeft = 162984
                mmTop = 10054
                mmWidth = 1852
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
  end
  object Q_Transacional: TIBQuery [20]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_TipoTranDS
    SQL.Strings = (
      'SELECT'
      
        '   t.id, t.conta, t.data, t.valor, t.tipotransacao, t.numcheque,' +
        ' t.historico,  f.nome, fp.sigla, t.idgerador, t.tipooperacao, 1 ' +
        'as Grupo, '
      'fp.descricao as formadepagamento'
      'FROM'
      '   transacoes t '
      
        '   inner join formaspagamento fp on t.formapagamento = fp.formap' +
        'agamento'
      '   left join favorecidos f on t.favorecido = f.favorecido'
      'WHERE'
      
        '    t.data >= :DataI and t.data <= :DataF and t.conta = :conta a' +
        'nd'
      '    t.TipoOperacao = :TipoOperacao'
      'ORDER BY'
      '    t.data, t.id')
    Left = 271
    Top = 255
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TipoOperacao'
        ParamType = ptUnknown
      end>
    object Q_TransacionalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_TransacionalCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object Q_TransacionalDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_TransacionalVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_TransacionalTIPOTRANSACAO: TIBStringField
      FieldName = 'TIPOTRANSACAO'
      Size = 1
    end
    object Q_TransacionalNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object Q_TransacionalHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object Q_TransacionalNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_TransacionalSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Size = 6
    end
    object Q_TransacionalFORMADEPAGAMENTO: TIBStringField
      FieldName = 'FORMADEPAGAMENTO'
      Required = True
      Size = 50
    end
    object Q_TransacionalIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object Q_TransacionalTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object Q_TransacionalGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
  end
  object Q_TransacionalDS: TDataSource [21]
    DataSet = Q_Transacional
    Left = 271
    Top = 295
  end
  object ppTransacional: TppDBPipeline [22]
    DataSource = Q_TransacionalDS
    CloseDataSource = True
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'Transacional'
    Left = 271
    Top = 207
    MasterDataPipelineName = 'ppTipoTran'
    object ppTransacionalppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField2: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField4: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField5: TppField
      FieldAlias = 'TIPOTRANSACAO'
      FieldName = 'TIPOTRANSACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField6: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField7: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField8: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField9: TppField
      FieldAlias = 'SIGLA'
      FieldName = 'SIGLA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField10: TppField
      FieldAlias = 'FORMADEPAGAMENTO'
      FieldName = 'FORMADEPAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField11: TppField
      FieldAlias = 'IDGERADOR'
      FieldName = 'IDGERADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField12: TppField
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppTransacionalppField13: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object ppTipoTran: TppDBPipeline [23]
    DataSource = Q_TipoTranDS
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'TipoTran'
    Left = 347
    Top = 207
    object ppTipoTranppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppTipoTranppField2: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object ppTipoTranppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
  end
  object Q_TipoTran: TIBQuery [24]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select t.tipooperacao, o.Descricao, sum(t.Valor) as Total'
      
        'from transacoes t left join tiposorigens o on t.tipooperacao = o' +
        '.origem'
      
        'where t.data >= :DataI and t.data <= :DataF and t.Conta = :Conta' +
        ' and t.TipoOperacao IN ( :tipos )'
      'group by t.tipooperacao, o.Descricao')
    Left = 343
    Top = 255
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftVariant
        Name = 'tipos'
        ParamType = ptUnknown
      end>
    object Q_TipoTranTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object Q_TipoTranDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Q_TipoTranTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object Q_TipoTranDS: TDataSource [25]
    DataSet = Q_TipoTran
    Left = 343
    Top = 295
  end
  object Q_TiposTransacoes: TIBQuery [26]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Origem, Descricao From TiposOrigens'
      'Where Upper(Modulo) = '#39'FINANCEIRO'#39)
    Left = 59
    Top = 149
    object Q_TiposTransacoesORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Required = True
    end
    object Q_TiposTransacoesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object Q_CartoesAReceber: TIBQuery [27]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select opf.Operacao, opf.Data, '
      
        '           fp.Descricao as DescFormaPagamento,                  ' +
        '                                      opf.ValorOperacao, '
      '           opf.Recebido,'
      '           opf.historico,'
      '           1 as Grupo'
      'From OperacoesFinanceiras opf '
      
        '         inner join FormasPagamento fp on opf.formapagamento =  ' +
        '        fp.formapagamento'
      'Where opf.TipoOperacao = 11 '
      '           and opf.Floating = 0 '
      
        '           and opf.contadestino = :conta and opf.Situacao is nul' +
        'l'
      'Order by opf.Recebido')
    Left = 145
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object Q_CartoesAReceberOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object Q_CartoesAReceberDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_CartoesAReceberDESCFORMAPAGAMENTO: TIBStringField
      FieldName = 'DESCFORMAPAGAMENTO'
      Required = True
      Size = 50
    end
    object Q_CartoesAReceberVALOROPERACAO: TIBBCDField
      FieldName = 'VALOROPERACAO'
      Precision = 18
      Size = 2
    end
    object Q_CartoesAReceberRECEBIDO: TDateField
      FieldName = 'RECEBIDO'
    end
    object Q_CartoesAReceberHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object Q_CartoesAReceberGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
  end
  object dbCartoes: TppDBPipeline [28]
    DataSource = Q_CartoesDS
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'dbCartoes'
    Left = 145
    Top = 208
    object dbCartoesppField1: TppField
      FieldAlias = 'OPERACAO'
      FieldName = 'OPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbCartoesppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbCartoesppField3: TppField
      FieldAlias = 'DESCFORMAPAGAMENTO'
      FieldName = 'DESCFORMAPAGAMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbCartoesppField4: TppField
      FieldAlias = 'VALOROPERACAO'
      FieldName = 'VALOROPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbCartoesppField5: TppField
      FieldAlias = 'RECEBIDO'
      FieldName = 'RECEBIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbCartoesppField6: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbCartoesppField7: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object Q_CartoesDS: TDataSource [29]
    DataSet = Q_CartoesAReceber
    Left = 145
    Top = 296
  end
  object Q_PorFormaPagamento: TIBQuery [30]
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select fp.descricao, '
      '          (select sum(t.valor)'
      '           from transacoes t '
      
        '           where t.data >= :datai and t.data <= :dataf and t.con' +
        'ta = :conta and            t.formapagamento = fp.formapagamento ' +
        'and t.tipotransacao = '#39'C'#39') as Creditos,'
      '          (select sum(t.valor)'
      '           from transacoes t '
      
        '           where t.data >= :datai and t.data <= :dataf and t.con' +
        'ta = :conta and                       t.formapagamento = fp.form' +
        'apagamento and t.tipotransacao = '#39'D'#39') as Debitos'
      'from FormasPagamento fp'
      'where fp.formapagamento > 0 and fp.desativado = '#39'N'#39
      'order by fp.especie')
    Filtered = True
    OnFilterRecord = Q_PorFormaPagamentoFilterRecord
    Left = 456
    Top = 252
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
        Name = 'conta'
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
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object Q_PorFormaPagamentoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'FORMASPAGAMENTO.DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_PorFormaPagamentoCREDITOS: TIBBCDField
      FieldName = 'CREDITOS'
      Precision = 18
      Size = 2
    end
    object Q_PorFormaPagamentoDEBITOS: TIBBCDField
      FieldName = 'DEBITOS'
      Precision = 18
      Size = 2
    end
  end
  object ppPorFormaPagamento: TppDBPipeline [31]
    DataSource = Q_PorFormaPagamentoDS
    UserName = 'PorFormaPagamento'
    Left = 452
    Top = 206
  end
  object Q_PorFormaPagamentoDS: TDataSource [32]
    DataSet = Q_PorFormaPagamento
    Left = 456
    Top = 296
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 313
    Top = 161
    inherited Ajuda1: TMenuItem
      HelpContext = 364
    end
  end
end

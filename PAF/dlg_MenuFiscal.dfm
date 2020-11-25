inherited dlgMenuFiscal: TdlgMenuFiscal
  Left = 279
  Top = 141
  Width = 646
  Height = 436
  Caption = 'Caixa'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_SpeedButton14: TTS_SpeedButton [0]
    Left = 18
    Top = 258
    Width = 150
    Height = 30
    RepeatedClick = False
    Border = False
  end
  object TS_SpeedButton15: TTS_SpeedButton [1]
    Left = 186
    Top = 258
    Width = 150
    Height = 30
    RepeatedClick = False
    Border = False
  end
  inherited pnNavigator: TTS_Panel
    Left = 512
    Height = 355
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 321
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 630
    Gradient.ColorStart = 9685651
    inherited lbEstadoForm: TTS_Label
      Width = 3
      Caption = ''
    end
    inherited btHelp: TTS_SpeedButton
      Left = 602
    end
    inherited lbCaption: TdxfLabel
      Width = 112
      AutoSize = True
      Caption = 'Menu Fiscal'
      Effect3D.ShadowedColor = 9685651
    end
  end
  inherited pnDados: TTS_Panel
    Width = 512
    Height = 355
    Color = 14674655
    object pnCriterios: TTS_Panel
      Left = 171
      Top = 1
      Width = 340
      Height = 353
      Align = alClient
      Color = 14674655
      TabOrder = 0
      object sbLX: TTS_SpeedButton
        Left = 18
        Top = 2
        Width = 150
        Height = 30
        Caption = 'L&X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sbLXClick
        RepeatedClick = False
        Border = True
      end
      object sbDAVEmitidos: TTS_SpeedButton
        Left = 186
        Top = 2
        Width = 150
        Height = 30
        Caption = '&DAV Emitidos'
        Enabled = False
        OnClick = sbDAVEmitidosClick
        RepeatedClick = False
        Border = True
      end
      object sbEncerrantes: TTS_SpeedButton
        Left = 186
        Top = 34
        Width = 150
        Height = 30
        Caption = 'Encerrantes'
        Enabled = False
        OnClick = sbEncerrantesClick
        RepeatedClick = False
        Border = True
      end
      object sbLMFC: TTS_SpeedButton
        Left = 18
        Top = 34
        Width = 150
        Height = 30
        Caption = '&LMFC'
        OnClick = sbLMFCClick
        RepeatedClick = False
        Border = True
      end
      object sbTransfMesas: TTS_SpeedButton
        Left = 186
        Top = 66
        Width = 150
        Height = 30
        Caption = 'Transf. Mesas'
        Enabled = False
        OnClick = sbTransfMesasClick
        RepeatedClick = False
        Border = True
      end
      object sbLMSF: TTS_SpeedButton
        Left = 18
        Top = 66
        Width = 150
        Height = 30
        Caption = 'LM&FS'
        OnClick = sbLMSFClick
        RepeatedClick = False
        Border = True
      end
      object sbMesasAbertas: TTS_SpeedButton
        Left = 186
        Top = 98
        Width = 150
        Height = 30
        Caption = 'Mesas Abertas'
        Enabled = False
        OnClick = sbMesasAbertasClick
        RepeatedClick = False
        Border = True
      end
      object sbEspelhoMFD: TTS_SpeedButton
        Left = 18
        Top = 98
        Width = 150
        Height = 30
        Caption = '&Espelho MFD'
        OnClick = sbEspelhoMFDClick
        RepeatedClick = False
        Border = True
      end
      object sbManifestofiscalviagens: TTS_SpeedButton
        Left = 186
        Top = 130
        Width = 150
        Height = 30
        Caption = 'Manifesto Fiscal de Viagens'
        Enabled = False
        OnClick = sbManifestofiscalviagensClick
        RepeatedClick = False
        Border = True
      end
      object sbArqMFD: TTS_SpeedButton
        Left = 18
        Top = 130
        Width = 150
        Height = 30
        Caption = '&Arq. MFD'
        OnClick = sbArqMFDClick
        RepeatedClick = False
        Border = True
      end
      object sbTabProd: TTS_SpeedButton
        Left = 18
        Top = 162
        Width = 150
        Height = 30
        Caption = 'Tab. &Prod.'
        OnClick = sbTabProdClick
        RepeatedClick = False
        Border = True
      end
      object sbLeituradoMovimentoDiario: TTS_SpeedButton
        Left = 186
        Top = 162
        Width = 150
        Height = 30
        Caption = 'Leitura do Movimento Di'#225'rio'
        Enabled = False
        OnClick = sbLeituradoMovimentoDiarioClick
        RepeatedClick = False
        Border = True
      end
      object sbEstoque: TTS_SpeedButton
        Left = 18
        Top = 194
        Width = 150
        Height = 30
        Caption = 'Esto&que'
        OnClick = sbEstoqueClick
        RepeatedClick = False
        Border = True
      end
      object sbIdentificacaoPAFECF: TTS_SpeedButton
        Left = 186
        Top = 194
        Width = 150
        Height = 30
        Caption = 'Identifica'#231#227'o do P&AF-ECF'
        OnClick = sbIdentificacaoPAFECFClick
        RepeatedClick = False
        Border = True
      end
      object sbMovimentoPorECF: TTS_SpeedButton
        Left = 18
        Top = 226
        Width = 150
        Height = 30
        Caption = 'Mo&vimento Por ECF'
        OnClick = sbMovimentoPorECFClick
        RepeatedClick = False
        Border = True
      end
      object sbVendasnoPeriodo: TTS_SpeedButton
        Left = 186
        Top = 226
        Width = 150
        Height = 30
        Caption = 'Vendas do Per'#237'&odo'
        OnClick = sbVendasnoPeriodoClick
        RepeatedClick = False
        Border = True
      end
      object sbMeiosPagto: TTS_SpeedButton
        Left = 18
        Top = 258
        Width = 150
        Height = 30
        Caption = 'Meios de Pa&gto.'
        OnClick = sbMeiosPagtoClick
        RepeatedClick = False
        Border = True
      end
      object sbTabIndiceTecnicoProducao: TTS_SpeedButton
        Left = 186
        Top = 258
        Width = 150
        Height = 30
        Caption = 'Tab. '#205'ndice T'#233'cnico Produ'#231#227'o'
        Enabled = False
        OnClick = sbTabIndiceTecnicoProducaoClick
        RepeatedClick = False
        Border = True
      end
      object anmMenuFiscal: TAnimate
        Left = 1
        Top = 292
        Width = 338
        Height = 60
        Align = alBottom
        Active = False
        CommonAVI = aviCopyFiles
        StopFrame = 31
        Visible = False
      end
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 170
      Height = 353
      Align = alLeft
      Color = 14674655
      TabOrder = 1
      object rgCriterio: TTS_RadioGroup
        Left = 1
        Top = 1
        Width = 168
        Height = 124
        Align = alTop
        Caption = 'Filtrar Por:'
        ItemIndex = 0
        Items.Strings = (
          'Periodo'
          'CRZ'
          'COO')
        TabOrder = 0
        OnClick = rgCriterioClick
        Transparent = True
      end
      object pcWhere: TTS_PageControl
        Left = 1
        Top = 125
        Width = 168
        Height = 126
        ActivePage = tsCriterio
        Align = alTop
        OwnerDraw = True
        TabOrder = 1
        ActivePageIndex = 0
        Transparent = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        TabFontActive.Charset = DEFAULT_CHARSET
        TabFontActive.Color = clWindowText
        TabFontActive.Height = -11
        TabFontActive.Name = 'MS Sans Serif'
        TabFontActive.Style = []
        object tsCriterio: TTS_TabSheet
          Caption = 'Data'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label1: TTS_Label
            Left = 6
            Top = 25
            Width = 44
            Caption = 'Inicio:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label2: TTS_Label
            Left = 6
            Top = 44
            Width = 43
            Caption = 'Fim:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dtInicio: TTS_DateTimePicker
            Left = 52
            Top = 22
            Width = 87
            TabOrder = 0
            AutoSize = False
            StyleController = DMProjeto.esCaixa
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
            Left = 52
            Top = 42
            Width = 87
            TabOrder = 1
            AutoSize = False
            StyleController = DMProjeto.esCaixa
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
        end
        object tsCRZ: TTS_TabSheet
          Caption = 'CRZ'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label3: TTS_Label
            Left = 6
            Top = 25
            Width = 44
            Caption = 'Inicio:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label4: TTS_Label
            Left = 6
            Top = 44
            Width = 43
            Caption = 'Fim:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfCRZInicio: TTS_Edit
            Left = 54
            Top = 22
            Width = 74
            TabOrder = 0
            StyleController = DMProjeto.esCaixa
            Height = 19
          end
          object dfCRZFIM: TTS_Edit
            Left = 54
            Top = 42
            Width = 74
            TabOrder = 1
            StyleController = DMProjeto.esCaixa
            Height = 19
          end
        end
        object tsCOO: TTS_TabSheet
          Caption = 'COO'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label5: TTS_Label
            Left = 6
            Top = 25
            Width = 44
            Caption = 'Inicio:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label6: TTS_Label
            Left = 6
            Top = 44
            Width = 43
            Caption = 'Fim:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfCOOInicio: TTS_Edit
            Left = 54
            Top = 22
            Width = 74
            TabOrder = 0
            StyleController = DMProjeto.esCaixa
            Height = 19
          end
          object dfCOOFim: TTS_Edit
            Left = 54
            Top = 42
            Width = 74
            TabOrder = 1
            StyleController = DMProjeto.esCaixa
            Height = 19
          end
        end
      end
      object rgEnviarPara: TTS_RadioGroup
        Left = 1
        Top = 251
        Width = 168
        Height = 112
        Align = alTop
        Caption = 'Enviar Para:'
        ItemIndex = 0
        Items.Strings = (
          '&Impressora'
          '&Arquivo')
        TabOrder = 2
        Transparent = True
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 538
    Top = 65534
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 586
    Top = 3
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 338
    Top = 0
  end
  inherited Beep: TBTBeeper
    Left = 300
    Top = 65532
  end
  inherited FormStorage: TFormStorage
    Left = 392
    Top = 0
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msCaixa
    BarEndColor = 9685651
    CaptionShadow = 9685651
    FormColor = 14674655
    Modulo = 'Caixa'
    Caption = 'Menu Fiscal'
    Left = 486
    Top = 4
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 455
    Top = 0
  end
  object sdParaArquivo: TSaveDialog
    FileName = '*.*'
    Left = 228
    Top = 10
  end
  object Q_SQL: TIBQuery
    Database = DMProject.DB_Projeto
    Transaction = DMProject.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 114
    Top = 26
  end
end

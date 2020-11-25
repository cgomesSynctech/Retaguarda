inherited FrmCompras: TFrmCompras
  Left = 222
  Top = 119
  Width = 1053
  Height = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 930
    Height = 474
    inherited btComando1: TTS_SpeedButton
      Caption = 'Pedidos'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btContabilidade: TTS_SpeedButton
      Caption = 'Contabilidade'
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 440
    end
    object btConsig: TTS_SpeedButton [12]
      Left = 1
      Top = 304
      Width = 113
      Caption = 'Consigna'#231#245'es'
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
        00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
        BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
        003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
        3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
        FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
        BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
        3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
        003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000}
      Layout = blGlyphRight
      OnMouseUp = btConsigMouseUp
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    inherited pnInicioFim: TTS_Panel
      Top = 337
    end
  end
  inherited pnDados: TTS_Panel
    Width = 930
    Height = 474
    inherited Grid: TTS_QDBGrid
      Width = 928
      Height = 472
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 928
      Height = 472
    end
    inherited sbDados: TTS_Panel
      Width = 928
      Height = 472
      inherited TS_Shape1: TTS_Shape
        Width = 928
      end
      inherited lbOperacao: TTS_Label
        Left = 616
        Width = 57
        Height = 16
      end
      inherited TS_Bevel1: TTS_Bevel
        Width = 933
      end
      inherited cmbTipoMovimento: TTS_DBLookupComboBox
        Left = 710
        DataSource = DMCompras.C_TabelaDS
        ClearKey = 32
        ListSource = DMCompras.C_TiposMovimentoDS
        Height = 19
      end
      inherited cmbTipoFav: TTS_DBLookupTipoFav
        Height = 19
      end
      inherited dfFavorecido: TTS_DBEditFavorecido
        Width = 218
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
          #227'o'
        DataSource = DMCompras.C_TabelaDS
        Height = 19
        ExistButtons = True
      end
      inherited DBEdit1: TDBEdit
        Left = 328
        DataSource = DMCompras.C_TabelaDS
      end
      inherited DBEdit3: TDBEdit
        DataSource = DMCompras.C_TabelaDS
      end
      inherited DBEdit4: TDBEdit
        DataSource = DMCompras.C_TabelaDS
      end
      inherited DBEdit5: TDBEdit
        DataSource = DMCompras.C_TabelaDS
      end
      inherited pgCabecalho: TTS_PageControl
        Left = 0
        Top = 28
        Width = 928
        Height = 169
        ActivePage = tsFiscal
        Align = alTop
        Style = tsTabs
        TabIndex = 1
        ActivePageIndex = 1
        TabColor = 15196656
        TabColorActive = 11775972
        inherited tsCabecalho: TTS_TabSheet
          Caption = 'Dados'
          TabVisible = True
          object TS_Label1: TTS_Label [0]
            Left = 465
            Top = 89
            Width = 54
            Cursor = crHandPoint
            Alignment = taLeftJustify
            Caption = 'Indexador:'
            FocusControl = cmbIndexador
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
            FormatoTabela = False
            LinkTo = 'FrmIndexadores'
            LinkToResult = 0
          end
          inherited pnNumero: TTS_Panel
            Left = 784
            Top = 1
            inherited dbtNumero: TTS_DBTextEffect
              DataSource = DMCompras.C_TabelaDS
            end
          end
          inherited pnData: TTS_Panel
            Left = 683
            Top = 1
            inherited dbtData: TTS_DBTextEffect
              DataSource = DMCompras.C_TabelaDS
            end
            inherited cbLockDate: TTS_CheckBox
              Height = 19
            end
          end
          inherited pnAdicionais: TTS_Panel
            Left = 335
            Top = 1
            inherited pnCampo01: TTS_Panel
              inherited dfAdd1: TTS_DBEdit
                DataSource = DMCompras.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo02: TTS_Panel
              inherited dfAdd2: TTS_DBEdit
                DataSource = DMCompras.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo04: TTS_Panel
              inherited dfAdd4: TTS_DBEdit
                DataSource = DMCompras.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo03: TTS_Panel
              inherited dfAdd3: TTS_DBEdit
                DataSource = DMCompras.C_TabelaDS
                Height = 19
              end
            end
          end
          inherited pnFornecedor: TTS_Panel
            Left = 3
            Top = 1
            Height = 104
            inherited dbtFornecedor: TTS_DBTextEffect
              DataSource = DMCompras.C_TabelaDS
              NullValue = 'Escolha acima o Fornecedor'
            end
            inherited dbtObs: TTS_DBTextEffect
              DataSource = DMCompras.C_TabelaDS
            end
            inherited TS_DBEdit1: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit2: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit3: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit4: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited dfCPF_CNPJ: TTS_DBEdit
              Top = 63
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited dfBairro: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit7: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
            inherited dfInscricaoEst: TTS_DBEdit
              DataSource = DMCompras.C_TabelaDS
              Height = 17
            end
          end
          inherited pnPrevisao: TTS_Panel
            Left = 783
            Top = 43
            Visible = False
            inherited TS_DBEditDate1: TTS_DBEditDate
              DataSource = DMCompras.C_TabelaDS
              Height = 19
            end
          end
          inherited pnStatus: TTS_Panel
            Left = 208
            Top = 88
            inherited dfStatus: TTS_DBLookupComboBox
              DataSource = DMCompras.C_TabelaDS
              Height = 19
            end
          end
          object cmbIndexador: TTS_DBLookupComboBox
            Left = 523
            Top = 87
            Width = 93
            Style.BorderColor = 2433120
            TabOrder = 6
            DataField = 'lkIndexador'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
        end
        object tsFiscal: TTS_TabSheet
          Caption = 'Nota Fiscal'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label15: TTS_Label
            Left = 477
            Top = 6
            Width = 44
            Caption = 'Emiss'#227'o:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label16: TTS_Label
            Left = 309
            Top = 24
            Width = 39
            Caption = 'S'#233'rie:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label17: TTS_Label
            Left = 390
            Top = 24
            Width = 36
            Caption = 'CFOP:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label18: TTS_Label
            Left = 498
            Top = 24
            Width = 60
            Caption = 'CFOP Ent.:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Bevel2: TTS_Bevel
            Left = 2
            Top = 43
            Width = 613
            Height = 2
          end
          object TS_Label11: TTS_Label
            Left = -2
            Top = 6
            Width = 48
            Caption = 'N'#186' Nota:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 62
            Top = 24
            Width = 44
            Caption = 'Especie:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label13: TTS_Label
            Left = 134
            Top = 24
            Width = 48
            Caption = 'Modelo:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 144
            Top = 6
            Width = 36
            Caption = 'NF-e:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object pnBaseCalcICMS: TTS_Panel
            Tag = -1
            Left = 1
            Top = 50
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 7
            DesignSize = (
              92
              34)
            object TS_Shape3: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label20: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Base C'#225'lc. ICMS'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditDate2: TTS_DBEditNumber
              Tag = -2
              Left = 6
              Top = 15
              Width = 85
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'BASECALCICMS'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnAliqICMS: TTS_Panel
            Tag = -1
            Left = 97
            Top = 50
            Width = 50
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 8
            DesignSize = (
              50
              34)
            object TS_Shape4: TTS_Shape
              Left = 1
              Top = 0
              Width = 47
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Visible = False
              Transparent = False
            end
            object TS_Label21: TTS_Label
              Left = 2
              Top = 1
              Width = 45
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = '% ICMS'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Visible = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditDate3: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 43
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              Visible = False
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'ALIQICMSCOMPRA'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnValorICMS: TTS_Panel
            Tag = -1
            Left = 151
            Top = 50
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 9
            DesignSize = (
              92
              34)
            object TS_Shape6: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label22: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor ICMS'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditDate4: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 85
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'VALORICMS'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnBaseCalcICMSSubst: TTS_Panel
            Tag = -1
            Left = 247
            Top = 50
            Width = 122
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 10
            DesignSize = (
              122
              34)
            object TS_Shape15: TTS_Shape
              Left = 1
              Top = 0
              Width = 119
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label23: TTS_Label
              Left = 2
              Top = 1
              Width = 117
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Base C'#225'lc. ICMS Subst.'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditDate5: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 115
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'BASECALCSUBST'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnValorSeguro: TTS_Panel
            Tag = -1
            Left = 97
            Top = 88
            Width = 146
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 13
            DesignSize = (
              146
              34)
            object TS_Shape17: TTS_Shape
              Left = 1
              Top = 0
              Width = 143
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label5: TTS_Label
              Left = 2
              Top = 1
              Width = 141
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor do Seguro'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditNumber4: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 139
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'VALORSEGURO'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnOutrasDespesas: TTS_Panel
            Tag = -1
            Left = 247
            Top = 88
            Width = 122
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 14
            DesignSize = (
              122
              34)
            object TS_Shape18: TTS_Shape
              Left = 1
              Top = 0
              Width = 119
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label6: TTS_Label
              Left = 2
              Top = 1
              Width = 117
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Outras Despesas'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditNumber5: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 115
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'OUTRASDESPESAS'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnValorIPI: TTS_Panel
            Tag = -1
            Left = 373
            Top = 88
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 15
            DesignSize = (
              92
              34)
            object TS_Shape19: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label7: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor do IPI'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditNumber6: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 85
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'VALORIPI'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnTotalNota: TTS_Panel
            Tag = -1
            Left = 469
            Top = 88
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 16
            DesignSize = (
              92
              34)
            object TS_Shape20: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label9: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Total da Nota'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object dfTotal: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 85
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              OnExit = dfTotalExit
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'TOTAL'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnValorICMSSubst: TTS_Panel
            Tag = -1
            Left = 373
            Top = 50
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 11
            DesignSize = (
              92
              34)
            object TS_Shape21: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label10: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor ICMS Subst.'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditNumber8: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 85
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'VALORICMSSUBST'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object pnTotalProdutos: TTS_Panel
            Tag = -1
            Left = 469
            Top = 50
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 12
            DesignSize = (
              92
              34)
            object TS_Shape22: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label8: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Total Produtos'
              Color = 11775972
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditNumber9: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 85
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.Edges = []
              TabOrder = 0
              TabStop = False
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'TOTALITENS'
              DataSource = DMCompras.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                000000FD000006060404040404040400000006FF0606060606060400000006FE
                0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                FEFF06000000FD0606060606060606FD0000}
              Height = 17
              StoredValues = 1
            end
          end
          object dfDataNota: TTS_DBEditDate
            Left = 522
            Top = 4
            Width = 85
            TabOrder = 1
            DataField = 'DATANOTA'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
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
            Height = 19
          end
          object dfSerie: TTS_DBEdit
            Left = 349
            Top = 22
            Width = 32
            TabOrder = 4
            DataField = 'SERIENOTA'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCFOPEntrada: TTS_DBPopupEdit
            Tag = -2
            Left = 561
            Top = 22
            Width = 48
            HelpContext = -2
            TabOrder = 6
            DataField = 'CFOPENTRADA'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPEntradaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfCFOPNota: TTS_DBPopupEdit
            Tag = -2
            Left = 427
            Top = 22
            Width = 50
            HelpContext = -2
            TabOrder = 5
            DataField = 'CFOPNOTA'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPNotaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfNotaFiscal: TTS_DBEdit
            Left = 49
            Top = 4
            Width = 92
            TabOrder = 0
            OnExit = dfNotaFiscalExit
            DataField = 'NUMERO'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object pnFreteTotal: TTS_Panel
            Tag = -1
            Left = 1
            Top = 88
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 17
            DesignSize = (
              92
              34)
            object pnFreteExterno: TTS_Panel
              Tag = -1
              Left = 1
              Top = 0
              Width = 92
              Height = 34
              HelpContext = -1
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              BorderWidth = 1
              Color = 15196656
              TabOrder = 0
              DesignSize = (
                92
                34)
              object TS_Shape23: TTS_Shape
                Left = 1
                Top = 0
                Width = 89
                Height = 34
                Anchors = [akLeft, akTop, akRight, akBottom]
                Transparent = False
              end
              object lbFreteExterno: TTS_Label
                Left = 2
                Top = 1
                Width = 87
                Alignment = taCenter
                Anchors = [akLeft, akTop, akRight, akBottom]
                Caption = 'Frete Externo'
                Color = 11775972
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                OnDblClick = lbFreteExternoDblClick
                TagStr = 'Titulos'
                FormatoTabela = False
                LinkToResult = 0
              end
              object edFreteExterno: TTS_DBEditNumber
                Tag = -2
                Left = 4
                Top = 15
                Width = 85
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.Edges = []
                TabOrder = 0
                OnExit = dfFrete2Exit
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataField = 'FRETEEXTERNO'
                DataSource = DMCompras.C_TabelaDS
                StyleController = esVendas
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 17
                StoredValues = 1
              end
            end
            object pnValorFrete: TTS_Panel
              Tag = -1
              Left = 1
              Top = 0
              Width = 92
              Height = 34
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              Color = 15196656
              TabOrder = 1
              DesignSize = (
                92
                34)
              object TS_Shape16: TTS_Shape
                Left = 1
                Top = 0
                Width = 89
                Height = 34
                Anchors = [akLeft, akTop, akRight, akBottom]
                Transparent = False
              end
              object lbFreteNormal: TTS_Label
                Left = 2
                Top = 1
                Width = 87
                Alignment = taCenter
                Anchors = [akLeft, akTop, akRight, akBottom]
                Caption = 'Valor do Frete'
                Color = 11775972
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                OnDblClick = lbFreteNormalDblClick
                TagStr = 'Titulos'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfFrete2: TTS_DBEditNumber
                Tag = -2
                Left = 4
                Top = 15
                Width = 85
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.Edges = []
                TabOrder = 0
                OnExit = dfFrete2Exit
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataField = 'FRETE'
                DataSource = DMCompras.C_TabelaDS
                StyleController = esVendas
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 17
                StoredValues = 1
              end
            end
          end
          object dfEspecie: TTS_DBEdit
            Left = 109
            Top = 22
            Width = 32
            TabOrder = 2
            DataField = 'ESPECIE'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfModelo: TTS_DBEdit
            Left = 184
            Top = 22
            Width = 103
            TabOrder = 3
            DataField = 'MODELO'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfChaveNFe: TTS_DBEdit
            Left = 184
            Top = 2
            Width = 289
            TabOrder = 18
            OnExit = dfChaveNFeExit
            DataField = 'CHAVENFE'
            DataSource = DMCompras.C_TabelaDS
            MaxLength = 0
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
            StoredValues = 2
          end
          object cbFreteIncluso: TTS_DBCheckBox
            Left = 2
            Top = 122
            Width = 91
            Style.BorderStyle = xbsNone
            Style.ButtonTransparence = ebtNone
            TabOrder = 19
            Caption = 'Frete Incluso'
            DataField = 'FRETEINCLUSO'
            DataSource = DMCompras.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueGrayed = 'S'
            ValueUnchecked = 'N'
            NullStyle = nsInactive
            DisableEdit = False
            Height = 19
          end
        end
      end
      inherited pgItens: TTS_PageControl
        Left = 0
        Top = 206
        Width = 928
        Height = 266
        Align = alBottom
        inherited tsItens: TTS_TabSheet
          BevelInner = bvRaised
          BevelOuter = bvLowered
          inherited dbgItens: TTS_QDBGrid
            Width = 920
            Height = 238
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryField = 'SubTotal'
                    SummaryFormat = '>SubTotal=#,###,###,##0.000'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'VALORIPIPROD'
                    SummaryFormat = '>VALORIPIPROD=#,###,##0.00'
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'desconto'
                    SummaryFormat = '>desconto=#,###,##0.00'
                    SummaryType = cstSum
                  end>
                Name = 'Default'
              end>
            DataSource = DMCompras.C_ItensDS
            Filter.Criteria = {00000000}
            OnCustomDraw = dbgItensCustomDraw
            TS_SelectedColumn = 'SEQUENCIA'
            TS_SummaryFields.Strings = (
              'SubTotal;Sum'
              'VALORIPIPROD;sum'
              'desconto;sum')
            inherited dbgItensSEQUENCIA: TdxDBGridMaskColumn [0]
            end
            inherited dbgItensCodigoForn: TdxDBGridButtonColumn [1]
              Width = 67
            end
            inherited dbgItensI_CODIGO: TdxDBGridButtonColumn [2]
              Width = 65
            end
            inherited dbgItensDESCRICAO: TdxDBGridButtonColumn [3]
              Width = 112
            end
            inherited dbgItensReferencia: TdxDBGridButtonColumn [4]
              Caption = 'Refer'#234'ncia'
              Width = 74
            end
            inherited dbgItensI_NCM: TdxDBGridColumn [5]
              Width = 66
            end
            inherited dbgItensI_UNIDADE: TdxDBGridLookupColumn [6]
              Width = 37
            end
            inherited dbgItensQUANTIDADE: TdxDBGridMaskColumn [7]
            end
            inherited dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn [8]
            end
            inherited dbgItensPRECO: TdxDBGridPopupColumn [9]
              Width = 65
            end
            inherited dbgItensSubTotal: TdxDBGridColumn [10]
              Width = 64
              SummaryFooterFormat = '#,###,###,##0.000'
            end
            inherited dbgItensPRECOVENDA: TdxDBGridColumn [11]
              HeaderAlignment = taCenter
              Width = 101
            end
            inherited dbgItensNumeroLote: TdxDBGridColumn [12]
              Width = 145
            end
            inherited dbgItensSitECF: TdxDBGridLookupColumn [13]
              Visible = True
              Width = 122
              DropDownWidth = 150
            end
            inherited dbgItensCST: TdxDBGridLookupColumn [14]
              Visible = True
              Width = 100
              FieldName = 'lookUpCSTs'
              DropDownWidth = 380
            end
            inherited dbgItensStatus: TdxDBGridImageColumn [15]
              Width = 49
            end
            inherited dbgItensCliente: TdxDBGridButtonColumn [16]
              Width = 127
            end
            inherited dbgItensValidade: TdxDBGridDateColumn [17]
              Width = 120
            end
            inherited dbgItensColuna1: TdxDBGridColumn [18]
              Width = 223
            end
            inherited dbgItensColuna2: TdxDBGridColumn [19]
              Width = 223
            end
            inherited dbgItensColuna3: TdxDBGridColumn [20]
              Width = 223
            end
            inherited dbgItensColuna4: TdxDBGridColumn [21]
              Width = 223
            end
            inherited dbgItensUsoTipoItem: TdxDBGridColumn [22]
              Width = 147
            end
            inherited dbgItensI_Percentual: TdxDBGridColumn [23]
              Width = 212
            end
            inherited dbgItensAtualizaCusto: TdxDBGridColumn [24]
              Width = 141
            end
            object dbgItensFATORPRECO: TdxDBGridMaskColumn [25]
              Caption = 'Fator de Pre'#231'o'
              HeaderAlignment = taCenter
              Visible = False
              Width = 123
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FATORPRECO'
            end
            inherited dbgItensTipoItem: TdxDBGridColumn [26]
              Caption = 'Tipo Item'
              Width = 91
            end
            inherited dbgItensFABRICACAO: TdxDBGridDateColumn [27]
              Width = 67
            end
            inherited dbgItensATUALIZOUPRECO: TdxDBGridColumn [28]
              Width = 141
            end
            object dbgItenslkIndexador: TdxDBGridColumn [29]
              Caption = 'Indexador'
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 107
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lkIndexador'
            end
            inherited dbgItensI_DescricaoCompra: TdxDBGridColumn [30]
              Caption = 'Descri'#231#227'o Compra'
              Width = 449
            end
            inherited dbgItensColumn26: TdxDBGridColumn [31]
              Width = 61
            end
            inherited dbgItensColumn27: TdxDBGridColumn [32]
              Width = 97
            end
            inherited dbgItensTVA: TdxDBGridMaskColumn [33]
              Width = 61
            end
            inherited dbgItensCFOP: TdxDBGridPopupColumn [34]
              OnInitPopup = dbgItensCFOPInitPopup
            end
            inherited dbgItensDesconto: TdxDBGridMaskColumn [35]
              Visible = False
              Width = 50
              SummaryFooterType = cstSum
              SummaryFooterFormat = '#,###,##0.00'
            end
            inherited dbgItensPDESCONTO: TdxDBGridMaskColumn [36]
              Visible = False
              Width = 68
            end
            inherited dbgItensCFOPCST: TdxDBGridColumn [37]
              Caption = 'Cfop Cst'
              Width = 64
            end
            inherited dbgItensBASECALCICMSPROD: TdxDBGridColumn [38]
              Width = 88
            end
            inherited dbgItensAliqICMS: TdxDBGridMaskColumn [39]
              Visible = True
              Width = 61
            end
            inherited dbgItensVALORICMSPROD: TdxDBGridColumn [40]
              Width = 75
            end
            inherited dbgItensBASECALCSUBSTPROD: TdxDBGridColumn [41]
              Width = 101
            end
            inherited dbgItensvaloricmssubstprod: TdxDBGridColumn [42]
              Width = 93
              FieldName = 'VALORICMSSUBSTPROD'
            end
            object dbgItensCstIPI: TdxDBGridLookupColumn [43]
              Alignment = taLeftJustify
              Caption = 'Cst IPI'
              HeaderAlignment = taCenter
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lookUpCSTsIPI'
              DropDownWidth = 250
            end
            inherited dbgItensIPI: TdxDBGridMaskColumn [44]
              Caption = '% IPI'
              Visible = True
              Width = 56
            end
            inherited dbgItensVALORIPIPROD: TdxDBGridColumn [45]
              Width = 83
              SummaryFooterFormat = '#,###,##0.00'
            end
            inherited dbgItensCOMPENSACAOCUSTO: TdxDBGridMaskColumn [46]
              Visible = False
              Width = 88
            end
            inherited dbgItenslkAlmoxarifado: TdxDBGridLookupColumn [47]
              Width = 60
            end
            inherited dbgItensCSTPISCOFINS: TdxDBGridLookupColumn [48]
              Caption = 'Cst Pis/Cofins'
              Width = 78
              FieldName = 'lookUpCSTsPisCofins'
              DropDownWidth = 680
            end
            inherited dbgItensALIQPIS: TdxDBGridColumn [49]
              Caption = '% Pis'
              Width = 70
            end
            object dbgItensValorPisProd: TdxDBGridMaskColumn [50]
              Caption = 'Valor Pis'
              HeaderAlignment = taCenter
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALORPISPROD'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '#,###,##0.00'
            end
            inherited dbgItensALIQCOFINS: TdxDBGridColumn [51]
              Caption = '% Cofins'
            end
            object dbgItensValorCofinsProd: TdxDBGridMaskColumn [52]
              Caption = 'Valor Cofins'
              HeaderAlignment = taCenter
              Width = 94
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALORCOFINSPROD'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '#,###,##0.00'
            end
            inherited dbgItensFrete: TdxDBGridColumn
              Width = 79
              SummaryFooterType = cstSum
              SummaryFooterFormat = '#,###,##0.00'
            end
            inherited dbgItensSeguro: TdxDBGridColumn
              Alignment = taRightJustify
              HeaderAlignment = taCenter
              Width = 92
              SummaryFooterType = cstSum
              SummaryFooterFormat = '#,###,##0.00'
            end
            inherited dbgItensoutrasdespesas: TdxDBGridColumn
              Alignment = taRightJustify
              HeaderAlignment = taCenter
              Width = 102
              FieldName = 'RATEIODESPESAS'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '#,###,##0.00'
            end
            object dbgItensESTOQUE: TdxDBGridMaskColumn
              Caption = 'Estoque'
              DisableEditor = True
              Visible = False
              Width = 119
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'I_ESTOQUE'
              DisableFilter = True
            end
          end
        end
        inherited tsTermos: TTS_TabSheet
          inherited TS_Shape12: TTS_Shape
            Width = 876
          end
          inherited pnMensagem: TTS_Panel
            Width = 452
            Height = 118
            inherited dfObs: TTS_DBMemo
              Width = 446
              DataSource = DMCompras.C_TabelaDS
              MaxLength = 500
              Height = 95
              StoredValues = 2
            end
            inherited dfMensagem: TTS_PopupEdit
              Width = 453
              Height = 21
              StoredValues = 65
            end
          end
          inherited dbgParcelas: TTS_QDBGrid
            Left = 461
            Height = 182
            DataSource = DMCompras.C_ParcelasDS
            Filter.Criteria = {00000000}
          end
          inherited cbPagar: TTS_CheckBox
            Left = 746
          end
          inherited pnHorizontal: TTS_Panel
            Width = 880
            inherited TS_Label4: TTS_Label
              Left = 505
              Top = 11
              Width = 17
              Height = 14
              Font.Height = -13
            end
            inherited pnFrete: TTS_Panel
              inherited dfFrete: TTS_DBEditNumber
                DataSource = DMCompras.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnDescontos: TTS_Panel
              inherited dfDesconto: TTS_DBEditNumber
                DataSource = DMCompras.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnTotalItens: TTS_Panel
              inherited TS_DBText5: TTS_DBText
                DataSource = DMCompras.C_TabelaDS
              end
            end
            inherited pnDespesas: TTS_Panel
              inherited dfDespesas: TTS_DBEditNumber
                DataSource = DMCompras.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnJuros: TTS_Panel
              Width = 82
              inherited TS_Shape13: TTS_Shape
                Width = 67
              end
              inherited lbJuros: TTS_Label
                Width = 65
              end
              inherited TS_DBEditNumber1: TTS_DBEditNumber
                Width = 66
                DataSource = DMCompras.C_TabelaDS
                Height = 21
                StoredValues = 1
              end
            end
            inherited pnTotalFinal: TTS_Panel
              Left = 781
              inherited TS_DBEditNumber2: TTS_DBEditNumber
                DataField = 'TOTALCalc'
                DataSource = DMCompras.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            object TS_Panel1: TTS_Panel
              Tag = -1
              Left = 429
              Top = 0
              Width = 82
              Height = 40
              HelpContext = -1
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '+'
              Color = 15196656
              TabOrder = 6
              TagStr = '265'
              DesignSize = (
                82
                40)
              object TS_Shape7: TTS_Shape
                Left = 11
                Top = 0
                Width = 68
                Height = 39
                Anchors = [akLeft, akTop, akRight, akBottom]
                Brush.Color = 15196656
                Transparent = False
              end
              object TS_Label3: TTS_Label
                Left = 12
                Top = 1
                Width = 66
                Height = 16
                Alignment = taCenter
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Outros'
                Color = 11775972
                FocusControl = TS_DBEditNumber7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'Titulos'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_DBEditNumber7: TTS_DBEditNumber
                Tag = -2
                Left = 14
                Top = 17
                Width = 62
                HelpContext = -2
                Color = 15196656
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                DataField = 'BASEIMPOSTO'
                DataSource = DMCompras.C_TabelaDS
                ReadOnly = True
                StyleController = esVendas
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 65
              end
            end
          end
          inherited pnTermos: TTS_Panel
            Width = 452
            inherited lbTermos: TTS_Label
              Width = 448
            end
            inherited cmbTermos: TTS_DBLookupComboBox
              Width = 446
              DataSource = DMCompras.C_TabelaDS
            end
          end
          inherited dbgMensagens: TTS_QDBGrid
            Width = 452
            OnDblClick = nil
            DataSource = DMCompras.C_TabelaDS
            Filter.Criteria = {00000000}
          end
        end
        inherited tsEntrega: TTS_TabSheet
          inherited TS_DBText1: TTS_DBText
            DataSource = DMCompras.C_TabelaDS
          end
          inherited pnLocalEntrega: TTS_Panel
            inherited TS_DBLookupComboBox1: TTS_DBLookupComboBox
              DataSource = DMCompras.C_TabelaDS
              Height = 19
            end
          end
          inherited pnTipoEntrega: TTS_Panel
            inherited cmbTipoEntrega: TTS_DBLookupComboBox
              DataSource = DMCompras.C_TabelaDS
              Height = 19
            end
          end
          inherited dfCliente: TTS_DBEditFavorecido
            DataSource = DMCompras.C_TabelaDS
            Height = 19
            ExistButtons = True
          end
          inherited cmbTipoFavEntrega: TTS_DBLookupTipoFav
            Height = 19
          end
        end
      end
      inherited cbEtiquetas: TTS_CheckBox
        Left = 612
        Top = 200
        StyleController = DMProjeto.esFornecedores
      end
      inherited cbImprimir: TTS_CheckBox
        Left = 737
        Top = 200
        StyleController = DMProjeto.esFornecedores
        State = cbsUnchecked
      end
      inherited pnSetas: TTS_Panel
        Left = 715
        Top = 202
      end
      inherited cbSemPreco: TTS_CheckBox
        Left = 843
        Top = 200
        StyleController = DMProjeto.esFornecedores
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 928
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1045
    inherited lbCaption: TdxfLabel
      Width = 159
      Caption = 'Entrada de Itens'
    end
    inherited lbDesativado: TdxfLabel
      Left = 632
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1008
    end
    inherited lbCancelado: TdxfLabel
      Left = 511
      Top = -13
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 42
    Top = 365
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 136
    Top = 300
  end
  inherited ppmPadrao: TTS_PopupMenu
    inherited Pedidos1: TMenuItem
      OnClick = btComando1Click
    end
  end
  inherited FormComponent: TFormComponent
    BeforeSave = FormComponentBeforeSave
    Caption = 'Entrada de Itens'
    Left = 582
    Top = 187
  end
  inherited Beep: TBTBeeper
    Left = 540
    Top = 76
  end
  inherited FormStorage: TFormStorage
    Left = 299
    Top = 295
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 186
    Top = 364
  end
  inherited esVendas: TdxEditStyleController
    Left = 740
    Top = 9
  end
  inherited esEndereco: TdxEditStyleController
    Left = 286
    Top = 11
  end
  inherited ppmUltimo: TTS_PopupMenu
    inherited ltimoparaOperao1: TMenuItem [1]
      Caption = #218'ltimo Gravado'
    end
    inherited UltimoGravado: TMenuItem [5]
      Visible = False
    end
  end
  inherited ppmOutros: TTS_PopupMenu
    Left = 670
    Top = 378
    inherited ReceberPagamento1: TMenuItem
      Caption = 'Fazer Pagamentos'
    end
  end
  inherited tmInvoice: TTimer
    Left = 502
    Top = 76
  end
  inherited ppmParcelas: TTS_PopupMenu
    Left = 519
    Top = 321
  end
  object ppmConsig: TTS_PopupMenu
    Left = 557
    Top = 322
    object Itens1: TMenuItem
      Caption = 'Itens'
      OnClick = Itens1Click
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      OnClick = Movimentos1Click
    end
  end
end

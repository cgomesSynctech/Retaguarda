inherited FrmOutrasEntradas: TFrmOutrasEntradas
  Left = 320
  Top = 35
  Width = 1033
  Height = 630
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 910
    Height = 560
    inherited btComando1: TTS_SpeedButton
      Caption = 'Pedidos'
      OnClick = btComando1Click
    end
    inherited btContabilidade: TTS_SpeedButton
      Caption = 'Contabilidade'
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 526
    end
  end
  inherited pnDados: TTS_Panel
    Width = 910
    Height = 560
    inherited Grid: TTS_QDBGrid
      Width = 908
      Height = 558
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 908
      Height = 558
    end
    inherited sbDados: TTS_Panel
      Width = 908
      Height = 558
      inherited TS_Shape1: TTS_Shape
        Width = 908
      end
      inherited lbOperacao: TTS_Label
        Left = 440
        Width = 57
        Height = 16
      end
      inherited TS_Bevel1: TTS_Bevel
        Width = 913
      end
      inherited cmbTipoMovimento: TTS_DBLookupComboBox
        Left = 690
        DataSource = DMOutrasEntradas.C_TabelaDS
        ClearKey = 32
        ListSource = DMOutrasEntradas.C_TiposMovimentoDS
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
        DataSource = DMOutrasEntradas.C_TabelaDS
        Height = 19
        ExistButtons = True
      end
      inherited DBEdit1: TDBEdit
        DataSource = DMOutrasEntradas.C_TabelaDS
      end
      inherited DBEdit3: TDBEdit
        DataSource = DMOutrasEntradas.C_TabelaDS
      end
      inherited DBEdit4: TDBEdit
        DataSource = DMOutrasEntradas.C_TabelaDS
      end
      inherited DBEdit5: TDBEdit
        DataSource = DMOutrasEntradas.C_TabelaDS
      end
      inherited pgCabecalho: TTS_PageControl
        Left = 2
        Width = 896
        Height = 222
        ActivePage = tsFiscal
        Style = tsTabs
        TabIndex = 1
        ActivePageIndex = 1
        TabColor = 15196656
        TabColorActive = 11775972
        inherited tsCabecalho: TTS_TabSheet
          Caption = 'Dados'
          TabVisible = True
          object TS_Label13: TTS_Label [0]
            Left = 434
            Top = 88
            Width = 19
            Cursor = crHandPoint
            Alignment = taLeftJustify
            Caption = 'DI:'
            FocusControl = lcbDI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
            FormatoTabela = False
            LinkTo = 'FrmDetalheImportacoes'
            LinkToResult = 0
          end
          inherited pnNumero: TTS_Panel
            Left = 797
            inherited dbtNumero: TTS_DBTextEffect
              DataSource = DMOutrasEntradas.C_TabelaDS
            end
          end
          inherited pnData: TTS_Panel
            Left = 696
            inherited dbtData: TTS_DBTextEffect
              DataSource = DMOutrasEntradas.C_TabelaDS
            end
            inherited cbLockDate: TTS_CheckBox
              Height = 19
            end
          end
          inherited pnAdicionais: TTS_Panel
            Left = 344
            inherited pnCampo01: TTS_Panel
              inherited dfAdd1: TTS_DBEdit
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo02: TTS_Panel
              inherited dfAdd2: TTS_DBEdit
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo04: TTS_Panel
              inherited dfAdd4: TTS_DBEdit
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo03: TTS_Panel
              inherited dfAdd3: TTS_DBEdit
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 19
              end
            end
          end
          inherited pnFornecedor: TTS_Panel
            Left = 3
            Height = 103
            inherited dbtFornecedor: TTS_DBTextEffect
              DataSource = DMOutrasEntradas.C_TabelaDS
              NullValue = 'Escolha acima o Fornecedor'
            end
            inherited dbtObs: TTS_DBTextEffect
              Top = 84
              DataSource = DMOutrasEntradas.C_TabelaDS
            end
            inherited TS_DBEdit1: TTS_DBEdit
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit2: TTS_DBEdit
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit3: TTS_DBEdit
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit4: TTS_DBEdit
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 17
            end
            inherited dfCPF_CNPJ: TTS_DBEdit
              Height = 17
            end
            inherited dfBairro: TTS_DBEdit
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit7: TTS_DBEdit
              Height = 17
            end
            inherited dfInscricaoEst: TTS_DBEdit
              Height = 17
            end
          end
          inherited pnPrevisao: TTS_Panel
            Left = 796
            Visible = False
            inherited TS_DBEditDate1: TTS_DBEditDate
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 19
            end
          end
          inherited pnStatus: TTS_Panel
            Left = 208
            Top = 86
            inherited dfStatus: TTS_DBLookupComboBox
              Top = 0
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 19
            end
          end
          object lcbDI: TTS_DBLookupComboBox
            Left = 454
            Top = 85
            Width = 161
            Style.BorderColor = 2433120
            TabOrder = 6
            DataField = 'lkpDI'
            DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 408
            Top = 6
            Width = 79
            Caption = 'Emiss'#227'o:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label16: TTS_Label
            Left = 76
            Top = 26
            Width = 39
            Caption = 'S'#233'rie:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label17: TTS_Label
            Left = 355
            Top = 26
            Width = 42
            Caption = 'CFOP:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label18: TTS_Label
            Left = 474
            Top = 26
            Width = 82
            Caption = 'CFOP Entrada:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Bevel2: TTS_Bevel
            Left = 2
            Top = 47
            Width = 613
            Height = 2
          end
          object TS_Label11: TTS_Label
            Left = -2
            Top = 6
            Width = 76
            Caption = 'N'#186' Nota Fiscal:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 152
            Top = 26
            Width = 76
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
            Left = 3
            Top = 54
            Width = 89
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 5
            DesignSize = (
              89
              34)
            object TS_Shape3: TTS_Shape
              Left = 1
              Top = 0
              Width = 86
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label20: TTS_Label
              Left = 2
              Top = 1
              Width = 84
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
              Left = 4
              Top = 15
              Width = 82
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 100
            Top = 54
            Width = 50
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 6
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 154
            Top = 54
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 250
            Top = 54
            Width = 122
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 8
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
          object pnValorFrete: TTS_Panel
            Tag = -1
            Left = 4
            Top = 92
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
            object TS_Shape16: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label1: TTS_Label
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
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_DBEditNumber3: TTS_DBEditNumber
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
              DataField = 'FRETE'
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 100
            Top = 92
            Width = 146
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 12
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 250
            Top = 92
            Width = 122
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 13
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 376
            Top = 92
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 14
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 472
            Top = 92
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 376
            Top = 54
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 472
            Top = 54
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 10
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
              DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 489
            Top = 4
            Width = 118
            TabOrder = 1
            DataField = 'DATANOTA'
            DataSource = DMOutrasEntradas.C_TabelaDS
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
            Left = 116
            Top = 24
            Width = 31
            TabOrder = 2
            DataField = 'SERIENOTA'
            DataSource = DMOutrasEntradas.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCFOPEntrada: TTS_DBPopupEdit
            Tag = -2
            Left = 559
            Top = 24
            Width = 48
            HelpContext = -2
            TabOrder = 4
            DataField = 'CFOPENTRADA'
            DataSource = DMOutrasEntradas.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPEntradaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfCFOPNota: TTS_DBPopupEdit
            Tag = -2
            Left = 400
            Top = 24
            Width = 49
            HelpContext = -2
            TabOrder = 3
            DataField = 'CFOPNOTA'
            DataSource = DMOutrasEntradas.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPNotaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfNotaFiscal: TTS_DBEdit
            Left = 75
            Top = 4
            Width = 72
            TabOrder = 0
            OnExit = dfNotaFiscalExit
            DataField = 'NUMERO'
            DataSource = DMOutrasEntradas.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit5: TTS_DBEdit
            Left = 230
            Top = 24
            Width = 118
            TabOrder = 16
            DataField = 'MODELO'
            DataSource = DMOutrasEntradas.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfChaveNFe: TTS_DBEdit
            Left = 184
            Top = 4
            Width = 257
            TabOrder = 17
            DataField = 'CHAVENFE'
            DataSource = DMOutrasEntradas.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object pnTransportadora: TTS_Panel
            Tag = -1
            Left = 678
            Top = 4
            Width = 192
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 18
          end
          object TS_Panel2: TTS_Panel
            Tag = -1
            Left = 3
            Top = 132
            Width = 192
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 19
            DesignSize = (
              192
              34)
            object TS_Shape27: TTS_Shape
              Left = 1
              Top = 0
              Width = 189
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label19: TTS_Label
              Left = 2
              Top = 1
              Width = 187
              Cursor = crHandPoint
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Transportadora'
              Color = 11775972
              FocusControl = cmbTransportadora
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentColor = False
              ParentFont = False
              Transparent = False
              TagStr = 'Titulos'
              FormatoTabela = False
              LinkTo = 'FrmFornecedores'
              LinkToResult = 0
            end
            object cmbTransportadora: TTS_DBLookupComboBox
              Tag = -2
              Left = 2
              Top = 14
              Width = 188
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'lkTransportadora'
              DataSource = DMOutrasEntradas.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DropDownRows = 15
              ClearKey = 32
              Revertable = True
              LookupKeyValue = Null
              Height = 20
            end
          end
          object pnPlaca: TTS_Panel
            Tag = -1
            Left = 196
            Top = 132
            Width = 75
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 20
            DesignSize = (
              75
              34)
            object TS_Shape29: TTS_Shape
              Left = 1
              Top = 0
              Width = 72
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label25: TTS_Label
              Left = 2
              Top = 1
              Width = 70
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Placa Ve'#237'c.'
              Color = 11775972
              FocusControl = dfPlaca
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
            object dfPlaca: TTS_DBEdit
              Tag = -2
              Left = 5
              Top = 15
              Width = 68
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              Alignment = taLeftJustify
              DataField = 'PLACAVEIC'
              DataSource = DMOutrasEntradas.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DistinctEditOn = False
              Height = 17
              StoredValues = 1
            end
          end
          object pnEspecie: TTS_Panel
            Tag = -1
            Left = 272
            Top = 132
            Width = 77
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 21
            DesignSize = (
              77
              34)
            object TS_Shape30: TTS_Shape
              Left = 1
              Top = 0
              Width = 74
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label26: TTS_Label
              Left = 2
              Top = 1
              Width = 72
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Esp'#233'cie'
              Color = 11775972
              FocusControl = dfEspecie
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
            object dfEspecie: TTS_DBEdit
              Tag = -2
              Left = 5
              Top = 15
              Width = 70
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              Alignment = taLeftJustify
              DataField = 'ESPECIE'
              DataSource = DMOutrasEntradas.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DistinctEditOn = False
              Height = 17
              StoredValues = 1
            end
          end
          object pnPesoBruto: TTS_Panel
            Tag = -1
            Left = 350
            Top = 132
            Width = 74
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 22
            DesignSize = (
              74
              34)
            object TS_Shape32: TTS_Shape
              Left = 1
              Top = 0
              Width = 71
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label24: TTS_Label
              Left = 2
              Top = 1
              Width = 69
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Peso Bruto'
              Color = 11775972
              FocusControl = dfPesoBruto
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
            object dfPesoBruto: TTS_DBEditNumber
              Tag = -2
              Left = 3
              Top = 15
              Width = 67
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'PESOBRUTO'
              DataSource = DMOutrasEntradas.C_TabelaDS
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
          object pnPesoLiquido: TTS_Panel
            Tag = -1
            Left = 425
            Top = 132
            Width = 74
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 23
            DesignSize = (
              74
              34)
            object TS_Shape33: TTS_Shape
              Left = 1
              Top = 0
              Width = 71
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label27: TTS_Label
              Left = 2
              Top = 1
              Width = 69
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Peso L'#237'quido'
              Color = 11775972
              FocusControl = dfPesoLiquido
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
            object dfPesoLiquido: TTS_DBEditNumber
              Tag = -2
              Left = 3
              Top = 15
              Width = 67
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'PESOLIQUIDO'
              DataSource = DMOutrasEntradas.C_TabelaDS
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
        end
      end
      inherited pgItens: TTS_PageControl
        Top = 256
        Width = 897
        Height = 292
        ActivePage = tsItens
        TabIndex = 0
        ActivePageIndex = 0
        inherited tsItens: TTS_TabSheet
          BevelInner = bvRaised
          BevelOuter = bvLowered
          inherited dbgItens: TTS_QDBGrid
            Width = 889
            Height = 264
            DataSource = DMOutrasEntradas.C_ItensDS
            Filter.Criteria = {00000000}
            OnCustomDraw = dbgItensCustomDraw
            TS_SelectedColumn = 'SEQUENCIA'
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
              Width = 94
            end
            inherited dbgItensNumeroLote: TdxDBGridColumn [6]
              Width = 140
            end
            inherited dbgItensI_UNIDADE: TdxDBGridLookupColumn [7]
              Width = 46
            end
            inherited dbgItensQUANTIDADE: TdxDBGridMaskColumn [8]
              Width = 42
            end
            inherited dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn [9]
              Width = 41
            end
            inherited dbgItensStatus: TdxDBGridImageColumn [10]
              Width = 39
            end
            inherited dbgItensCliente: TdxDBGridButtonColumn [11]
              Width = 122
            end
            inherited dbgItensValidade: TdxDBGridDateColumn [12]
              Width = 115
            end
            inherited dbgItensColuna1: TdxDBGridColumn [13]
              HeaderAlignment = taCenter
              Width = 209
            end
            inherited dbgItensColuna2: TdxDBGridColumn [14]
              HeaderAlignment = taCenter
              Width = 209
            end
            inherited dbgItensColuna3: TdxDBGridColumn [15]
              HeaderAlignment = taCenter
              Width = 209
            end
            inherited dbgItensColuna4: TdxDBGridColumn [16]
              HeaderAlignment = taCenter
              Width = 209
            end
            inherited dbgItensUsoTipoItem: TdxDBGridColumn [17]
              HeaderAlignment = taCenter
              Width = 142
            end
            inherited dbgItensI_Percentual: TdxDBGridColumn [18]
              HeaderAlignment = taCenter
              Width = 199
            end
            inherited dbgItensAtualizaCusto: TdxDBGridColumn [19]
              HeaderAlignment = taCenter
              Width = 136
            end
            inherited dbgItensPRECO: TdxDBGridPopupColumn [20]
              Width = 65
            end
            inherited dbgItensSubTotal: TdxDBGridColumn [21]
              Width = 64
            end
            inherited dbgItensFABRICACAO: TdxDBGridDateColumn [22]
              Width = 62
            end
            inherited dbgItensTipoItem: TdxDBGridColumn [23]
              Width = 86
            end
            inherited dbgItensDesconto: TdxDBGridMaskColumn [24]
              Visible = False
              Width = 50
            end
            inherited dbgItensPDESCONTO: TdxDBGridMaskColumn [25]
              Visible = False
              Width = 63
            end
            inherited dbgItensPRECOVENDA: TdxDBGridColumn [26]
              HeaderAlignment = taCenter
              Width = 98
            end
            inherited dbgItensSitECF: TdxDBGridLookupColumn [27]
              Visible = True
              Width = 90
            end
            inherited dbgItensCST: TdxDBGridLookupColumn [28]
              Visible = True
              Width = 70
              FieldName = 'lookUpCSTs'
              DropDownWidth = 380
            end
            inherited dbgItensCFOPCST: TdxDBGridColumn [29]
              Caption = 'Cfop Cst'
            end
            inherited dbgItensATUALIZOUPRECO: TdxDBGridColumn [30]
              Width = 136
            end
            inherited dbgItensColumn26: TdxDBGridColumn [31]
              Width = 56
            end
            inherited dbgItensColumn27: TdxDBGridColumn [32]
              Width = 90
            end
            inherited dbgItensBASECALCICMSPROD: TdxDBGridColumn [33]
              Width = 82
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensAliqICMS: TdxDBGridMaskColumn [34]
              Visible = True
            end
            inherited dbgItensVALORICMSPROD: TdxDBGridColumn [35]
              Width = 91
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensBASECALCSUBSTPROD: TdxDBGridColumn [36]
              Width = 109
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensvaloricmssubstprod: TdxDBGridColumn [37]
              Width = 96
              FieldName = 'VALORICMSSUBSTPROD'
              SummaryFooterFormat = '##,##0.00'
            end
            object dbgItensCstIPI: TdxDBGridLookupColumn [38]
              Caption = 'Cst IPI'
              HeaderAlignment = taCenter
              Width = 51
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lookUpCSTsIPI'
              DropDownWidth = 250
            end
            inherited dbgItensIPI: TdxDBGridMaskColumn [39]
              Caption = '% IPI'
              Visible = True
            end
            inherited dbgItensVALORIPIPROD: TdxDBGridColumn [40]
              Width = 105
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensTVA: TdxDBGridMaskColumn [41]
              Width = 56
            end
            inherited dbgItensCFOP: TdxDBGridPopupColumn [42]
              OnInitPopup = dbgItensCFOPInitPopup
            end
            inherited dbgItensI_DescricaoCompra: TdxDBGridColumn [43]
              Width = 420
            end
            inherited dbgItensCOMPENSACAOCUSTO: TdxDBGridMaskColumn [44]
              Visible = False
              Width = 86
            end
            inherited dbgItensALIQPIS: TdxDBGridColumn [45]
              Caption = '% Pis'
            end
            object dbgItensValorPisProd: TdxDBGridMaskColumn [46]
              Alignment = taRightJustify
              Caption = 'Valor Pis'
              HeaderAlignment = taCenter
              Width = 93
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALORPISPROD'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensALIQCOFINS: TdxDBGridColumn [47]
              Caption = '% Cofins'
              Width = 58
            end
            object dbgItensValorCofinsProd: TdxDBGridMaskColumn [48]
              Alignment = taRightJustify
              Caption = 'Valor Cofins'
              HeaderAlignment = taCenter
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALORCOFINSPROD'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItenslkAlmoxarifado: TdxDBGridLookupColumn [49]
              Width = 55
            end
            inherited dbgItensCSTPISCOFINS: TdxDBGridLookupColumn [50]
              Caption = 'Cst Pis Cofins'
              Width = 78
              FieldName = 'lookUpCSTsPisCofins'
              DropDownWidth = 680
            end
            inherited dbgItensFrete: TdxDBGridColumn
              Alignment = taRightJustify
              Width = 64
              SummaryFooterType = cstSum
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensSeguro: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 64
              SummaryFooterType = cstSum
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensoutrasdespesas: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 118
              FieldName = 'RATEIODESPESAS'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '##,##0.00'
            end
            object dbgItensV_BCII: TdxDBGridCurrencyColumn
              Caption = 'Base C. II'
              Visible = False
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'V_BCII'
              Nullable = False
            end
            object dbgItensV_DESPADUII: TdxDBGridCurrencyColumn
              Caption = 'Dep. Adu.'
              Visible = False
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'V_DESPADUII'
              Nullable = False
            end
            object dbgItensV_II: TdxDBGridCurrencyColumn
              Caption = 'Imp. Import.'
              Visible = False
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'V_II'
              Nullable = False
            end
            object dbgItensV_IOFII: TdxDBGridCurrencyColumn
              Caption = 'IOF'
              Visible = False
              Width = 65
              BandIndex = 0
              RowIndex = 0
              FieldName = 'V_IOFII'
              Nullable = False
            end
          end
        end
        inherited tsTermos: TTS_TabSheet
          inherited TS_Shape12: TTS_Shape
            Width = 890
          end
          inherited pnMensagem: TTS_Panel
            Width = 466
            Height = 144
            inherited dfObs: TTS_DBMemo
              Width = 460
              DataSource = DMOutrasEntradas.C_TabelaDS
              MaxLength = 500
              Height = 121
              StoredValues = 2
            end
            inherited dfMensagem: TTS_PopupEdit
              Width = 467
              Height = 21
              StoredValues = 65
            end
          end
          inherited dbgParcelas: TTS_QDBGrid
            Left = 475
            Height = 208
            Visible = False
            DataSource = DMOutrasEntradas.C_ParcelasDS
            Filter.Criteria = {00000000}
          end
          inherited cbPagar: TTS_CheckBox
            Left = 760
          end
          inherited pnHorizontal: TTS_Panel
            Width = 894
            inherited TS_Label4: TTS_Label
              Left = 505
              Top = 11
              Width = 17
              Height = 14
              Font.Height = -13
            end
            inherited pnFrete: TTS_Panel
              inherited dfFrete: TTS_DBEditNumber
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnDescontos: TTS_Panel
              inherited dfDesconto: TTS_DBEditNumber
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnTotalItens: TTS_Panel
              inherited TS_DBText5: TTS_DBText
                DataSource = DMOutrasEntradas.C_TabelaDS
              end
            end
            inherited pnDespesas: TTS_Panel
              inherited dfDespesas: TTS_DBEditNumber
                DataSource = DMOutrasEntradas.C_TabelaDS
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
                DataSource = DMOutrasEntradas.C_TabelaDS
                Height = 21
                StoredValues = 1
              end
            end
            inherited pnTotalFinal: TTS_Panel
              Left = 795
              inherited TS_DBEditNumber2: TTS_DBEditNumber
                DataField = 'TOTALCalc'
                DataSource = DMOutrasEntradas.C_TabelaDS
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
                DataSource = DMOutrasEntradas.C_TabelaDS
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
            Width = 466
            Visible = False
            inherited lbTermos: TTS_Label
              Width = 462
            end
            inherited cmbTermos: TTS_DBLookupComboBox
              Width = 460
              DataSource = DMOutrasEntradas.C_TabelaDS
            end
          end
          inherited dbgMensagens: TTS_QDBGrid
            Width = 466
            OnDblClick = nil
            DataSource = DMOutrasEntradas.C_TabelaDS
            Filter.Criteria = {00000000}
          end
        end
        inherited tsEntrega: TTS_TabSheet
          inherited TS_DBText1: TTS_DBText
            DataSource = DMOutrasEntradas.C_TabelaDS
          end
          inherited pnLocalEntrega: TTS_Panel
            inherited TS_DBLookupComboBox1: TTS_DBLookupComboBox
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 19
            end
          end
          inherited pnTipoEntrega: TTS_Panel
            inherited cmbTipoEntrega: TTS_DBLookupComboBox
              DataSource = DMOutrasEntradas.C_TabelaDS
              Height = 19
            end
          end
          inherited dfCliente: TTS_DBEditFavorecido
            DataSource = DMOutrasEntradas.C_TabelaDS
            Height = 19
            ExistButtons = True
          end
          inherited cmbTipoFavEntrega: TTS_DBLookupTipoFav
            Height = 19
          end
        end
      end
      inherited cbEtiquetas: TTS_CheckBox
        Left = 382
        Top = 250
      end
      inherited cbImprimir: TTS_CheckBox
        Left = 490
        Top = 250
        State = cbsUnchecked
      end
      inherited pnSetas: TTS_Panel
        Left = 705
        Top = 224
        Width = 11
        Height = 14
        inherited btItensDown: TTS_SpeedButton
          Width = 11
          Height = 14
        end
        inherited btItensUp: TTS_SpeedButton
          Width = 11
          Height = 14
        end
      end
      inherited cbSemPreco: TTS_CheckBox
        Left = 593
        Top = 250
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 908
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1025
    inherited lbCaption: TdxfLabel
      Width = 159
      Caption = 'Entrada de Itens'
    end
    inherited lbDesativado: TdxfLabel
      Left = 612
    end
    inherited btHelp: TTS_SpeedButton
      Left = 988
    end
    inherited lbCancelado: TdxfLabel
      Left = 491
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 527
    Top = 306
    inherited Pedidos1: TMenuItem
      OnClick = btComando1Click
    end
  end
  inherited FormComponent: TFormComponent
    Caption = 'Entrada de Itens'
    Left = 584
    Top = 323
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 555
    Top = 394
  end
  inherited FormStorage: TFormStorage
    Left = 403
    Top = 399
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 406
    Top = 108
  end
  inherited ppmFornecedor: TTS_PopupMenu
    Left = 715
    Top = 389
  end
  inherited ppmUltimo: TTS_PopupMenu
    Left = 497
    Top = 348
    inherited ltimoparaOperao1: TMenuItem [1]
      Caption = #218'ltimo Gravado'
    end
    inherited UltimoGravado: TMenuItem [5]
      Visible = False
    end
  end
  inherited ppmOutros: TTS_PopupMenu
    inherited ReceberPagamento1: TMenuItem
      Caption = 'Fazer Pagamentos'
    end
  end
  inherited ppmGrid: TTS_PopupMenu
    Left = 645
  end
  inherited ppmParcelas: TTS_PopupMenu
    Left = 581
    Top = 297
  end
end

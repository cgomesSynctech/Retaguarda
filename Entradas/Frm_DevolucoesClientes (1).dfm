inherited FrmDevolucoesClientes: TFrmDevolucoesClientes
  Left = 346
  Top = 52
  Width = 920
  Height = 516
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 797
    Height = 442
    inherited btComando1: TTS_SpeedButton
      Caption = 'Vendas...'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 408
    end
  end
  inherited pnDados: TTS_Panel
    Width = 797
    Height = 442
    inherited Grid: TTS_QDBGrid
      Width = 795
      Height = 440
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 795
      Height = 440
    end
    inherited sbDados: TTS_Panel
      Width = 795
      Height = 440
      Color = 16116702
      inherited TS_Shape1: TTS_Shape
        Width = 795
        Brush.Color = 14859922
      end
      inherited lbOperacao: TTS_Label
        Left = 514
      end
      inherited TS_Bevel1: TTS_Bevel
        Width = 800
      end
      inherited pgCabecalho: TTS_PageControl [3]
        Left = 2
        Width = 785
        Height = 128
        Style = tsTabs
        TabIndex = 0
        inherited tsCabecalho: TTS_TabSheet
          Caption = 'Dados'
          TabVisible = True
          inherited pnNumero: TTS_Panel
            Left = 679
            inherited lbNumero: TTS_Label
              Color = 14859922
            end
            inherited dbtNumero: TTS_DBTextEffect
              DataSource = DMDevolucoesClientes.C_TabelaDS
            end
          end
          inherited pnData: TTS_Panel
            Left = 679
            Top = 42
            Width = 89
            Color = 16116702
            inherited dbtData: TTS_DBTextEffect
              Width = 87
              DataSource = DMDevolucoesClientes.C_TabelaDS
            end
            inherited lbData: TTS_Label
              Width = 87
              Color = 14859922
            end
            inherited cbLockDate: TTS_CheckBox
              Color = 14859922
              ParentColor = False
              Height = 19
            end
          end
          inherited pnAdicionais: TTS_Panel
            Left = 292
            Color = 16116702
            inherited pnCampo04: TTS_Panel [0]
              inherited lbCampo04: TTS_Label
                Color = 14859922
              end
              inherited dfAdd4: TTS_DBEdit
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo01: TTS_Panel [1]
              inherited lbCampo01: TTS_Label
                Color = 14859922
              end
              inherited dfAdd1: TTS_DBEdit
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo02: TTS_Panel [2]
              inherited lbCampo02: TTS_Label
                Color = 14859922
              end
              inherited dfAdd2: TTS_DBEdit
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo03: TTS_Panel
              inherited lbCampo03: TTS_Label
                Color = 14859922
              end
              inherited dfAdd3: TTS_DBEdit
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
              end
            end
          end
          inherited pnFornecedor: TTS_Panel
            Left = 3
            inherited dbtFornecedor: TTS_DBTextEffect
              Color = 14859922
              DataSource = DMDevolucoesClientes.C_TabelaDS
            end
            inherited dbtObs: TTS_DBTextEffect
              DataSource = DMDevolucoesClientes.C_TabelaDS
            end
            inherited TS_DBEdit1: TTS_DBEdit
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit2: TTS_DBEdit
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit3: TTS_DBEdit
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit4: TTS_DBEdit
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 17
            end
            inherited dfCPF_CNPJ: TTS_DBEdit
              Height = 17
            end
            inherited dfBairro: TTS_DBEdit
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 579
            Top = 0
            Color = 16116702
            inherited TS_Shape14: TTS_Shape
              Visible = False
            end
            inherited lbPrevisao: TTS_Label
              Color = 14859922
              Visible = False
            end
            inherited TS_DBEditDate1: TTS_DBEditDate
              Top = 23
              Visible = False
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 19
            end
          end
          inherited pnStatus: TTS_Panel
            Left = 212
            Top = 86
            Height = 22
            Color = 16116702
            inherited TS_Label2: TTS_Label
              Left = 1
              Visible = False
            end
            inherited dfStatus: TTS_DBLookupComboBox
              Left = 38
              Style.BorderColor = 14859922
              Visible = False
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 19
            end
          end
          object pnVendedor: TTS_Panel
            Tag = -1
            Left = 207
            Top = 60
            Width = 185
            Height = 38
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 16247774
            TabOrder = 6
            TagStr = '0'
            DesignSize = (
              185
              38)
            object TS_Shape3: TTS_Shape
              Left = 5
              Top = 0
              Width = 176
              Height = 37
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object lbVendedor: TTS_Label
              Left = 6
              Top = 1
              Width = 174
              Height = 13
              Cursor = crHandPoint
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Vendedor'
              Color = 14859922
              FocusControl = cmbVendedor
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
              LinkTo = 'FrmFuncionarios'
              LinkToResult = 0
            end
            object cmbVendedor: TTS_DBLookupComboBox
              Tag = -2
              Left = 7
              Top = 16
              Width = 174
              Hint = 'Escolha o Vendedor para o qual a comiss'#227'o ser'#225' atribuida.'
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
              DataField = 'lkVendedor'
              DataSource = DMDevolucoesClientes.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DropDownRows = 15
              ClearKey = 32
              Revertable = True
              LookupKeyValue = Null
              Height = 18
            end
          end
        end
        object tsFiscal: TTS_TabSheet
          Caption = 'Nota Fiscal'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label16: TTS_Label
            Left = 216
            Top = 2
            Width = 32
            Caption = 'S'#233'rie:'
            FocusControl = dfSerie
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label17: TTS_Label
            Left = 3
            Top = 2
            Width = 35
            Alignment = taLeftJustify
            Caption = 'CFOP:'
            FocusControl = dfCFOPNota
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Bevel2: TTS_Bevel
            Left = 1
            Top = 22
            Width = 605
            Height = 2
          end
          object TS_Label25: TTS_Label
            Left = 282
            Top = 2
            Width = 35
            Caption = 'Modelo:'
            FocusControl = dfModelo
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label18: TTS_Label
            Left = 88
            Top = 1
            Width = 78
            Caption = 'CFOP Entrada:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 350
            Top = 2
            Width = 35
            Caption = 'NF-e:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object pnBaseCalcICMS: TTS_Panel
            Tag = -1
            Left = 0
            Top = 28
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 3
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
            object TS_Label20: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Base C'#225'lc. ICMS'
              Color = 14859922
              FocusControl = dfBaseCalculo
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
            object dfBaseCalculo: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'BASECALCICMS'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 96
            Top = 28
            Width = 50
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 4
            DesignSize = (
              50
              34)
            object TS_Shape17: TTS_Shape
              Left = 1
              Top = 0
              Width = 47
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label21: TTS_Label
              Left = 2
              Top = 1
              Width = 45
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = '% ICMS'
              Color = 14859922
              FocusControl = dfAliqICMS
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
            object dfAliqICMS: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'ALIQICMSCOMPRA'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 150
            Top = 28
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 5
            DesignSize = (
              92
              34)
            object TS_Shape18: TTS_Shape
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
              Color = 14859922
              FocusControl = dfValorICMS
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
            object dfValorICMS: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'VALORICMS'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 246
            Top = 28
            Width = 122
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 6
            DesignSize = (
              122
              34)
            object TS_Shape19: TTS_Shape
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
              Color = 14859922
              FocusControl = dfBaseCalcSubst
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
            object dfBaseCalcSubst: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'BASECALCSUBST'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 0
            Top = 65
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
            object TS_Shape20: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label5: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor do Frete'
              Color = 14859922
              FocusControl = dfValorFrete
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
            object dfValorFrete: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'FRETE'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 96
            Top = 65
            Width = 146
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 10
            DesignSize = (
              146
              34)
            object TS_Shape21: TTS_Shape
              Left = 1
              Top = 0
              Width = 143
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label6: TTS_Label
              Left = 2
              Top = 1
              Width = 141
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor do Seguro'
              Color = 14859922
              FocusControl = dfValorSeguro
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
            object dfValorSeguro: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'VALORSEGURO'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 246
            Top = 65
            Width = 122
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 11
            DesignSize = (
              122
              34)
            object TS_Shape22: TTS_Shape
              Left = 1
              Top = 0
              Width = 119
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label7: TTS_Label
              Left = 2
              Top = 1
              Width = 117
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Outras Despesas'
              Color = 14859922
              FocusControl = dfOutrasDespesas
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
            object dfOutrasDespesas: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'OUTRASDESPESAS'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 372
            Top = 65
            Width = 97
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 12
            DesignSize = (
              97
              34)
            object TS_Shape23: TTS_Shape
              Left = 1
              Top = 0
              Width = 94
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label8: TTS_Label
              Left = 2
              Top = 1
              Width = 92
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor do IPI'
              Color = 14859922
              FocusControl = dfValorIPI
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
            object dfValorIPI: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 90
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
              DataField = 'VALORIPI'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 517
            Top = 65
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 13
            DesignSize = (
              92
              34)
            object TS_Shape24: TTS_Shape
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
              Color = 14859922
              FocusControl = dfTotal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'TOTAL'
              DataSource = DMDevolucoesClientes.C_TabelaDS
              ReadOnly = False
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
              StoredValues = 65
            end
          end
          object pnValorICMSSubst: TTS_Panel
            Tag = -1
            Left = 372
            Top = 28
            Width = 97
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 7
            DesignSize = (
              97
              34)
            object TS_Shape25: TTS_Shape
              Left = 1
              Top = 0
              Width = 94
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label10: TTS_Label
              Left = 2
              Top = 1
              Width = 92
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Valor ICMS Subst.'
              Color = 14859922
              FocusControl = dfValorICMSSubst
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
            object dfValorICMSSubst: TTS_DBEditNumber
              Tag = -2
              Left = 4
              Top = 15
              Width = 90
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
              DataField = 'VALORICMSSUBST'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Left = 517
            Top = 28
            Width = 92
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 8
            DesignSize = (
              92
              34)
            object TS_Shape26: TTS_Shape
              Left = 1
              Top = 0
              Width = 89
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label11: TTS_Label
              Left = 2
              Top = 1
              Width = 87
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Total Produtos'
              Color = 14859922
              FocusControl = dfTotalProdutos
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
            object dfTotalProdutos: TTS_DBEditNumber
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
              Style.ButtonTransparence = ebtHideInactive
              Style.Edges = []
              TabOrder = 0
              TabStop = False
              OnClick = cmbVendedorClick
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'TOTALITENS'
              DataSource = DMDevolucoesClientes.C_TabelaDS
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
          object dfSerie: TTS_DBEdit
            Left = 250
            Top = 0
            Width = 31
            TabOrder = 1
            DataField = 'SERIENOTA'
            DataSource = DMDevolucoesClientes.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object dfCFOPNota: TTS_DBPopupEdit
            Tag = -2
            Left = 38
            Top = 1
            Width = 49
            HelpContext = -2
            TabOrder = 0
            DataField = 'CFOPNOTA'
            DataSource = DMDevolucoesClientes.C_TabelaDS
            StyleController = DMProjeto.esClientes
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPNotaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfModelo: TTS_DBEdit
            Left = 318
            Top = 0
            Width = 31
            TabOrder = 2
            DataField = 'MODELO'
            DataSource = DMDevolucoesClientes.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object dfCFOPEntrada: TTS_DBPopupEdit
            Tag = -2
            Left = 168
            Top = 0
            Width = 48
            HelpContext = -2
            TabOrder = 14
            DataField = 'CFOPENTRADA'
            DataSource = DMDevolucoesClientes.C_TabelaDS
            StyleController = DMProjeto.esClientes
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPEntradaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfChaveNFe: TTS_DBEdit
            Left = 388
            Top = 0
            Width = 217
            TabOrder = 15
            OnExit = dfChaveNFeExit
            DataField = 'CHAVENFE'
            DataSource = DMDevolucoesClientes.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
        end
      end
      inherited cmbTipoMovimento: TTS_DBLookupComboBox [4]
        Left = 577
        Style.BorderColor = clNavy
        DataSource = DMDevolucoesClientes.C_TabelaDS
        ClearKey = 32
        ListSource = DMDevolucoesClientes.C_TiposMovimentoDS
        Height = 19
      end
      inherited cmbTipoFav: TTS_DBLookupTipoFav [5]
        Style.BorderColor = clNavy
        Height = 19
      end
      inherited dfFavorecido: TTS_DBEditFavorecido [6]
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
          #227'o'
        Style.BorderColor = clNavy
        DataSource = DMDevolucoesClientes.C_TabelaDS
        StyleController = DMProjeto.esClientes
        TipoFavorecido = 1
        Height = 19
        ExistButtons = True
      end
      inherited DBEdit1: TDBEdit [7]
        DataSource = DMDevolucoesClientes.C_TabelaDS
      end
      inherited DBEdit3: TDBEdit [8]
        DataSource = DMDevolucoesClientes.C_TabelaDS
      end
      inherited DBEdit4: TDBEdit [9]
        DataSource = DMDevolucoesClientes.C_TabelaDS
      end
      inherited pnPreco: TPanel [10]
      end
      inherited DBEdit5: TDBEdit [11]
        DataSource = DMDevolucoesClientes.C_TabelaDS
      end
      inherited pgItens: TTS_PageControl
        Left = 1
        Top = 159
        Width = 786
        Height = 278
        TabColor = 16116702
        TabColorActive = 14859922
        inherited tsItens: TTS_TabSheet
          BevelInner = bvRaised
          BevelOuter = bvLowered
          inherited dbgItens: TTS_QDBGrid
            Width = 778
            Height = 250
            DataSource = DMDevolucoesClientes.C_ItensDS
            Filter.Criteria = {00000000}
            HeaderColor = 14859922
            TS_SelectedColumn = 'SEQUENCIA'
            TS_TipoDescricao = tdVenda
            inherited dbgItensSEQUENCIA: TdxDBGridMaskColumn [0]
              Width = 23
            end
            inherited dbgItensI_CODIGO: TdxDBGridButtonColumn [1]
              Width = 72
            end
            inherited dbgItensDESCRICAO: TdxDBGridButtonColumn [2]
              Width = 134
            end
            inherited dbgItensI_UNIDADE: TdxDBGridLookupColumn [3]
              DisableEditor = True
              Width = 52
            end
            inherited dbgItensQUANTIDADE: TdxDBGridMaskColumn [4]
              Width = 50
            end
            inherited dbgItensPRECO: TdxDBGridPopupColumn [5]
              Width = 64
            end
            inherited dbgItensStatus: TdxDBGridImageColumn [6]
              HeaderAlignment = taCenter
              Width = 21
            end
            inherited dbgItensCliente: TdxDBGridButtonColumn [7]
              Width = 73
            end
            inherited dbgItensValidade: TdxDBGridDateColumn [8]
              Width = 69
            end
            inherited dbgItensNumeroLote: TdxDBGridColumn [9]
              Width = 82
            end
            inherited dbgItensSubTotal: TdxDBGridColumn [10]
              DisableEditor = True
              Width = 74
            end
            inherited dbgItensReferencia: TdxDBGridButtonColumn [11]
              Width = 69
            end
            inherited dbgItensI_DescricaoCompra: TdxDBGridColumn [12]
              Width = 246
            end
            inherited dbgItensUsoTipoItem: TdxDBGridColumn [13]
              Width = 83
            end
            inherited dbgItensI_Percentual: TdxDBGridColumn [14]
              Width = 118
            end
            inherited dbgItensCodigoForn: TdxDBGridButtonColumn [15]
              Visible = False
              Width = 73
            end
            inherited dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn [16]
            end
            inherited dbgItensFABRICACAO: TdxDBGridDateColumn [17]
              Width = 67
            end
            inherited dbgItensATUALIZOUPRECO: TdxDBGridColumn [18]
              Width = 80
            end
            inherited dbgItensColuna2: TdxDBGridColumn [19]
              Width = 123
            end
            inherited dbgItensTipoItem: TdxDBGridColumn [20]
              Width = 51
            end
            inherited dbgItensColuna1: TdxDBGridColumn [21]
              Width = 123
            end
            inherited dbgItensPRECOVENDA: TdxDBGridColumn [22]
              HeaderAlignment = taCenter
              Width = 86
            end
            inherited dbgItensColuna4: TdxDBGridColumn [23]
              Width = 123
            end
            inherited dbgItensColuna3: TdxDBGridColumn [24]
              Width = 123
            end
            inherited dbgItensI_NCM: TdxDBGridColumn [25]
              Width = 79
            end
            inherited dbgItensCFOPCST: TdxDBGridColumn [26]
              Caption = 'Cfop Cst'
            end
            inherited dbgItensAtualizaCusto: TdxDBGridColumn [27]
              Width = 80
            end
            inherited dbgItensSitECF: TdxDBGridLookupColumn
              Visible = True
              Width = 59
              DropDownWidth = 150
            end
            inherited dbgItensCST: TdxDBGridLookupColumn
              Alignment = taCenter
              Visible = True
              Width = 57
              DropDownWidth = 380
            end
            inherited dbgItensBASECALCICMSPROD: TdxDBGridColumn [30]
              Width = 68
            end
            inherited dbgItensAliqICMS: TdxDBGridMaskColumn [31]
              Visible = True
              Width = 58
            end
            inherited dbgItensVALORICMSPROD: TdxDBGridColumn [32]
            end
            inherited dbgItensBASECALCSUBSTPROD: TdxDBGridColumn [33]
              Width = 103
            end
            inherited dbgItensvaloricmssubstprod: TdxDBGridColumn [34]
            end
            object dbgItensCSTIPI: TdxDBGridLookupColumn [35]
              Caption = 'Cst IPI'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lookUpCSTsIPI'
              DropDownWidth = 250
            end
            inherited dbgItensIPI: TdxDBGridMaskColumn [36]
              Caption = '% IPI'
              Visible = True
              Width = 50
            end
            inherited dbgItensVALORIPIPROD: TdxDBGridColumn [37]
              Width = 64
            end
            inherited dbgItensTVA: TdxDBGridMaskColumn [38]
              Width = 59
            end
            inherited dbgItensCFOP: TdxDBGridPopupColumn [39]
            end
            inherited dbgItensCSTPISCOFINS: TdxDBGridLookupColumn [40]
              Caption = 'Cst Pis/Cofins'
              Width = 77
              FieldName = 'lookUpCSTsPisCofins'
              DropDownWidth = 680
            end
            inherited dbgItensALIQPIS: TdxDBGridColumn [41]
              Caption = '% Pis'
              Width = 55
            end
            inherited dbgItensALIQCOFINS: TdxDBGridColumn [42]
              Caption = '% Cofins'
              Width = 69
            end
            object dbgItensVALORPISPROD: TdxDBGridMaskColumn [43]
              Caption = 'Valor Pis'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALORPISPROD'
              SummaryFooterType = cstSum
            end
            object dbgItensVALORCOFINSPROD: TdxDBGridMaskColumn [44]
              Caption = 'Valor Cofins'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALORCOFINSPROD'
              SummaryFooterType = cstSum
            end
            inherited dbgItensColumn27: TdxDBGridColumn [45]
              Width = 95
            end
            inherited dbgItensDesconto: TdxDBGridMaskColumn [46]
            end
            inherited dbgItensPDESCONTO: TdxDBGridMaskColumn [47]
              Visible = False
            end
            inherited dbgItensCOMPENSACAOCUSTO: TdxDBGridMaskColumn [48]
              Visible = False
            end
            inherited dbgItenslkAlmoxarifado: TdxDBGridLookupColumn [49]
              Width = 58
            end
            inherited dbgItensColumn26: TdxDBGridColumn [50]
              HeaderAlignment = taCenter
              Width = 59
            end
            inherited dbgItensFrete: TdxDBGridColumn
              Visible = False
              Width = 64
            end
            inherited dbgItensSeguro: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 64
            end
            inherited dbgItensoutrasdespesas: TdxDBGridColumn
              HeaderAlignment = taCenter
              Visible = False
            end
          end
        end
        inherited tsTermos: TTS_TabSheet
          inherited TS_Shape12: TTS_Shape
            Width = 779
            Brush.Color = 14859922
          end
          inherited dbgParcelas: TTS_QDBGrid [1]
            Left = 364
            Height = 194
            Visible = False
            BandColor = 14859922
            DataSource = DMDevolucoesClientes.C_ParcelasDS
            Filter.Criteria = {00000000}
            HeaderColor = 14859922
          end
          inherited cbPagar: TTS_CheckBox [2]
            Left = 649
            State = cbsUnchecked
          end
          inherited pnHorizontal: TTS_Panel [3]
            Left = -5
            Width = 783
            Color = 16116702
            inherited TS_Label4: TTS_Label
              Left = 509
              Top = 10
              Width = 13
              Height = 15
              Font.Height = -13
            end
            inherited pnFrete: TTS_Panel
              Color = 16116702
              inherited lbFrete: TTS_Label
                Color = 14859922
              end
              inherited dfFrete: TTS_DBEditNumber
                Font.Color = clNavy
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnDescontos: TTS_Panel
              Color = 16116702
              inherited lbDescontos: TTS_Label
                Color = 14859922
              end
              inherited dfDesconto: TTS_DBEditNumber
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnTotalItens: TTS_Panel
              Color = 16116702
              inherited TS_Shape10: TTS_Shape
                Brush.Color = 16116702
              end
              inherited lbTotalItens: TTS_Label
                Color = 14859922
              end
              inherited TS_DBText5: TTS_DBText
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Font.Color = clNavy
                Visible = False
              end
            end
            inherited pnDespesas: TTS_Panel
              Color = 16116702
              inherited lbDespesas: TTS_Label
                Color = 14859922
              end
              inherited dfDespesas: TTS_DBEditNumber
                Font.Color = clNavy
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnJuros: TTS_Panel
              Color = 16116702
              inherited lbJuros: TTS_Label
                Color = 14859922
              end
              inherited TS_DBEditNumber1: TTS_DBEditNumber
                Font.Color = clNavy
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 21
                StoredValues = 1
              end
            end
            inherited pnTotalFinal: TTS_Panel
              Left = 684
              inherited lbTotalFinal: TTS_Label
                Color = 14859922
                Font.Color = clNavy
              end
              inherited TS_DBEditNumber2: TTS_DBEditNumber
                Font.Color = clNavy
                DataSource = DMDevolucoesClientes.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            object TS_Panel1: TTS_Panel
              Tag = -1
              Left = 433
              Top = 0
              Width = 82
              Height = 40
              HelpContext = -1
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '+'
              Color = 16116702
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
                Brush.Color = 16116702
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
                Color = 14859922
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
                Color = 16116702
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                DataField = 'BASEIMPOSTO'
                DataSource = DMDevolucoesClientes.C_TabelaDS
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
          inherited pnTermos: TTS_Panel [4]
            Width = 355
            inherited lbTermos: TTS_Label
              Width = 351
              Color = 14859922
            end
            inherited cmbTermos: TTS_DBLookupComboBox
              Width = 353
              DataSource = DMDevolucoesClientes.C_TabelaDS
            end
          end
          inherited pnMensagem: TTS_Panel [5]
            Top = 101
            Width = 355
            Height = 148
            inherited dfObs: TTS_DBMemo
              Left = 2
              Top = 18
              Width = 351
              DataSource = DMDevolucoesClientes.C_TabelaDS
              Height = 127
            end
            inherited dfMensagem: TTS_PopupEdit
              Width = 357
              Color = 14859922
              LookupSource = DMDevolucoesClientes.C_MensagensOperacoesDS
              Height = 21
              StoredValues = 65
            end
          end
          inherited dbgMensagens: TTS_QDBGrid
            Left = 491
            Top = 110
            Width = 504
            Color = 14859922
            OnDblClick = nil
            DataSource = DMDevolucoesClientes.C_MensagensOperacoesDS
            Filter.Criteria = {00000000}
            GroupPanelColor = 16116702
            HeaderColor = 16116702
            TS_AnotherColor = 14859922
          end
          object dfTotalItens: TTS_DBEditNumber
            Tag = -2
            Left = 1
            Top = 17
            Width = 82
            HelpContext = -2
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            DataField = 'TOTALITENS'
            DataSource = DMDevolucoesClientes.C_TabelaDS
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
            Height = 24
            StoredValues = 1
          end
        end
        inherited tsEntrega: TTS_TabSheet
          TabVisible = False
          inherited pnLocalEntrega: TTS_Panel
            inherited TS_DBLookupComboBox1: TTS_DBLookupComboBox
              Height = 19
            end
          end
          inherited pnTipoEntrega: TTS_Panel
            inherited cmbTipoEntrega: TTS_DBLookupComboBox
              Height = 19
            end
          end
          inherited dfCliente: TTS_DBEditFavorecido
            Height = 19
            ExistButtons = True
          end
          inherited cmbTipoFavEntrega: TTS_DBLookupTipoFav
            Height = 19
          end
        end
      end
      inherited cbEtiquetas: TTS_CheckBox
        Left = 477
        Top = 158
        Visible = False
      end
      inherited cbImprimir: TTS_CheckBox
        Left = 577
        Top = 158
      end
      inherited pnSetas: TTS_Panel
        Left = 771
        Top = 163
        Caption = ''
        Color = 16116702
      end
      inherited cbSemPreco: TTS_CheckBox
        Left = 696
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 795
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 912
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 372
      Caption = 'Devolu'#231#245'es de Mercadorias de Clientes'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbDesativado: TdxfLabel
      Left = 499
    end
    inherited btHelp: TTS_SpeedButton
      Left = 875
    end
    inherited lbCancelado: TdxfLabel
      Left = 267
      Top = -17
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 130
    Top = 414
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Devolu'#231#245'es de Mercadorias de Clientes'
    Left = 556
    Top = 301
  end
  inherited Beep: TBTBeeper
    Left = 16
    Top = 328
  end
  inherited FormStorage: TFormStorage
    Left = 436
    Top = 305
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 622
    Top = 422
  end
  inherited TransitionSaidas: TTransitionList
    Left = 324
    Top = 288
  end
  inherited ppmUltimo: TTS_PopupMenu
    inherited ltimoparaoCliente1: TMenuItem
      Caption = #218'ltimo para o Cliente'
    end
  end
  inherited ppmOutros: TTS_PopupMenu
    object ReferenciarNotas1: TMenuItem
      Caption = 'Referenciar Notas'
      OnClick = ReferenciarNotas1Click
    end
  end
  inherited ppmGrid: TTS_PopupMenu
    Left = 333
    Top = 362
  end
  inherited ppmParcelas: TTS_PopupMenu
    Left = 509
    Top = 337
  end
  inherited Q_SQLt: TIBQuery
    Left = 121
    Top = 360
  end
end

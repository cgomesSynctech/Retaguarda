inherited FrmDevolucoesFornecedores: TFrmDevolucoesFornecedores
  Left = 173
  Top = 159
  Width = 818
  Height = 499
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 695
    Height = 429
    inherited btComando1: TTS_SpeedButton
      Caption = 'Compras...'
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 395
    end
  end
  inherited pnDados: TTS_Panel
    Width = 695
    Height = 429
    inherited Grid: TTS_QDBGrid
      Width = 693
      Height = 427
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 693
      Height = 427
    end
    inherited sbDados: TTS_Panel
      Width = 693
      Height = 427
      Color = 15196656
      inherited TS_Shape1: TTS_Shape
        Width = 693
        Brush.Color = 11775972
      end
      inherited lbOperacao: TTS_Label
        Left = 418
      end
      inherited TS_Bevel1: TTS_Bevel
        Width = 698
      end
      inherited cmbTipoMovimento: TTS_DBLookupComboBox
        Left = 477
        Style.BorderColor = clMaroon
        DataSource = DMDevolucoesFornecedores.C_TabelaDS
        ClearKey = 32
        ListSource = DMDevolucoesFornecedores.C_TiposMovimentoDS
        Height = 19
      end
      inherited cmbTipoFav: TTS_DBLookupTipoFav
        Style.BorderColor = clMaroon
        TipoFavorecido = 2
        Height = 19
      end
      inherited dfFavorecido: TTS_DBEditFavorecido
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
          #227'o'
        Style.BorderColor = clMaroon
        DataSource = DMDevolucoesFornecedores.C_TabelaDS
        TipoFavorecido = 2
        Height = 19
        ExistButtons = True
      end
      inherited DBEdit1: TDBEdit
        DataSource = DMDevolucoesFornecedores.C_TabelaDS
      end
      inherited DBEdit2: TDBEdit
        DataSource = DMDevolucoesFornecedores.C_ItensDS
      end
      inherited DBEdit3: TDBEdit
        DataSource = DMDevolucoesFornecedores.C_TabelaDS
      end
      inherited DBEdit4: TDBEdit
        DataSource = DMDevolucoesFornecedores.C_TabelaDS
      end
      inherited pgCabecalho: TTS_PageControl
        Width = 688
        Height = 162
        ActivePage = tsFiscal
        Style = tsTabs
        TabIndex = 1
        ActivePageIndex = 1
        TabColor = 15196656
        TabColorActive = 11775972
        inherited tsCabecalho: TTS_TabSheet
          Caption = 'Dados'
          TabVisible = True
          inherited cbClienteTaxavel: TTS_DBCheckBox
            Left = -2
            Top = 108
            DataSource = DMDevolucoesFornecedores.C_TabelaDS
            Height = 17
          end
          inherited pnNumero: TTS_Panel
            Left = 592
            inherited dbtNumero: TTS_DBTextEffect
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
            end
          end
          inherited pnData: TTS_Panel
            Left = 491
            inherited dbtData: TTS_DBTextEffect
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
            end
            inherited cbLockDate: TTS_CheckBox
              Height = 19
            end
          end
          inherited pnAdicionais: TTS_Panel
            Left = 244
            Color = 15196656
            inherited pnCampo01: TTS_Panel
              inherited dfAdd1: TTS_DBEdit
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo02: TTS_Panel
              inherited dfAdd2: TTS_DBEdit
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo04: TTS_Panel
              inherited dfAdd4: TTS_DBEdit
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo03: TTS_Panel
              inherited dfAdd3: TTS_DBEdit
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
          end
          inherited pnLocalEntrega: TTS_Panel
            Left = 491
            inherited lcbLocaisEntrega: TTS_LookupComboBox
              Height = 19
            end
          end
          inherited pnCliente: TTS_Panel
            Height = 96
            inherited dbtCliente: TTS_DBTextEffect
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              NullValue = 'Escolha acima o Fornecedor'
            end
            inherited dbtObs: TTS_DBTextEffect
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
            end
            inherited TS_DBEdit1: TTS_DBEdit
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit2: TTS_DBEdit
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit3: TTS_DBEdit
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit4: TTS_DBEdit
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 17
            end
            inherited dfBairro: TTS_DBEdit
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit6: TTS_DBEdit
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 17
            end
            inherited dfCPF_CNPJ: TTS_DBEdit
              Height = 17
            end
            inherited dfInscricaoEst: TTS_DBEdit
              Height = 17
            end
          end
          inherited pnFotoCliente: TTS_Panel
            Height = 96
          end
          inherited pnHorizontal: TTS_Panel
            Left = -5
            Top = 97
            Width = 687
            Color = 15196656
            inherited pnVendedor: TTS_Panel
              Color = 15196656
              Visible = False
              inherited cmbVendedor: TTS_DBLookupComboBox
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
            inherited pnDataEntrega: TTS_Panel
              Left = 598
              Color = 15196656
              inherited dfDataEntrega: TTS_DBEditDate
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 21
              end
            end
            inherited pnPedido: TTS_Panel
              Color = 15196656
              Visible = False
              inherited dfPOCliente: TTS_DBEdit
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
            inherited pnTipoEntrega: TTS_Panel
              Left = 489
              Color = 15196656
              inherited cmbTipoEntrega: TTS_DBLookupComboBox
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 21
              end
            end
            inherited pnComissao: TTS_Panel
              Color = 15196656
              Visible = False
              inherited dfComissao: TTS_DBEdit
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
              end
            end
            inherited pnValidade: TTS_Panel
              Color = 15196656
              Visible = False
              inherited TS_DBEditDate1: TTS_DBEditDate
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 21
              end
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
            Left = 100
            Top = 2
            Width = 39
            Caption = 'S'#233'rie:'
            FocusControl = dfSerie
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label17: TTS_Label
            Left = 3
            Top = 1
            Width = 35
            Alignment = taLeftJustify
            Caption = 'CFOP:'
            FocusControl = dfCFOPNota
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Bevel2: TTS_Bevel
            Left = 1
            Top = 21
            Width = 670
            Height = 2
          end
          object TS_Label25: TTS_Label
            Left = 200
            Top = 3
            Width = 39
            Caption = 'Modelo:'
            FocusControl = dfModelo
            FormatoTabela = False
            LinkToResult = 0
          end
          object pnBaseCalcICMS: TTS_Panel
            Tag = -1
            Left = 7
            Top = 26
            Width = 96
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 3
            DesignSize = (
              96
              34)
            object TS_Shape16: TTS_Shape
              Left = 0
              Top = 0
              Width = 93
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label20: TTS_Label
              Left = 2
              Top = 1
              Width = 90
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
              Width = 89
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 111
            Top = 26
            Width = 62
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 4
            DesignSize = (
              62
              34)
            object TS_Shape17: TTS_Shape
              Left = 1
              Top = 0
              Width = 59
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label21: TTS_Label
              Left = 2
              Top = 1
              Width = 57
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
              Width = 55
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
              DataField = 'ALIQICMSVENDA'
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 182
            Top = 26
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 281
            Top = 26
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 6
            Top = 63
            Width = 115
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 9
            DesignSize = (
              115
              34)
            object TS_Shape20: TTS_Shape
              Left = 1
              Top = 0
              Width = 112
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label5: TTS_Label
              Left = 2
              Top = 1
              Width = 110
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
              Width = 108
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 128
            Top = 63
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 281
            Top = 63
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 410
            Top = 63
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 580
            Top = 63
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              ReadOnly = True
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
            Left = 410
            Top = 26
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 580
            Top = 26
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 142
            Top = 0
            Width = 31
            TabOrder = 1
            DataField = 'SERIENOTA'
            DataSource = DMDevolucoesFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCFOPNota: TTS_DBPopupEdit
            Tag = -2
            Left = 38
            Top = 0
            Width = 49
            HelpContext = -2
            TabOrder = 0
            DataField = 'CFOPNOTA'
            DataSource = DMDevolucoesFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = dfCFOPNotaInitPopup
            Height = 19
            StoredValues = 4
          end
          object dfModelo: TTS_DBEdit
            Left = 242
            Top = 0
            Width = 31
            TabOrder = 2
            DataField = 'MODELO'
            DataSource = DMDevolucoesFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object pnTransportadora: TTS_Panel
            Tag = -1
            Left = 6
            Top = 100
            Width = 192
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 14
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
            object TS_Label12: TTS_Label
              Left = 2
              Top = 1
              Width = 187
              Cursor = crHandPoint
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Transportadora'
              Color = 14859922
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DropDownRows = 15
              ClearKey = 32
              Revertable = True
              LookupKeyValue = Null
              Height = 20
            end
          end
          object pnCIF_FOB: TTS_Panel
            Tag = -1
            Left = 198
            Top = 100
            Width = 104
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 15
            DesignSize = (
              104
              34)
            object TS_Shape28: TTS_Shape
              Left = 1
              Top = 0
              Width = 101
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label13: TTS_Label
              Left = 2
              Top = 1
              Width = 99
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Frete por Conta'
              Color = 14859922
              FocusControl = dfCIF_FOB
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
            object dfCIF_FOB: TTS_DBImageEdit
              Left = 3
              Top = 15
              Width = 99
              Style.Edges = []
              TabOrder = 0
              DataField = 'TIPOFRETE'
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              StyleController = DMProjeto.esClientes
              Descriptions.Strings = (
                'CIF'
                'FOB')
              ImageIndexes.Strings = (
                '0'
                '1')
              Values.Strings = (
                'C'
                'F')
              Height = 19
            end
          end
          object pnPlaca: TTS_Panel
            Tag = -1
            Left = 302
            Top = 100
            Width = 75
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 16
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
            object TS_Label14: TTS_Label
              Left = 2
              Top = 1
              Width = 70
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Placa Ve'#237'c.'
              Color = 14859922
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DistinctEditOn = False
              Height = 17
              StoredValues = 1
            end
          end
          object pnEspecie: TTS_Panel
            Tag = -1
            Left = 377
            Top = 100
            Width = 77
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 17
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
            object TS_Label15: TTS_Label
              Left = 2
              Top = 1
              Width = 72
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Esp'#233'cie'
              Color = 14859922
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
              DataField = 'DESCESPECIE'
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DistinctEditOn = False
              Height = 17
              StoredValues = 1
            end
          end
          object pnMarca: TTS_Panel
            Tag = -1
            Left = 454
            Top = 100
            Width = 70
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 18
            DesignSize = (
              70
              34)
            object TS_Shape31: TTS_Shape
              Left = 1
              Top = 0
              Width = 67
              Height = 34
              Anchors = [akLeft, akTop, akRight, akBottom]
              Transparent = False
            end
            object TS_Label18: TTS_Label
              Left = 2
              Top = 1
              Width = 65
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Marca'
              Color = 14859922
              FocusControl = dfMarca
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
            object dfMarca: TTS_DBEdit
              Tag = -2
              Left = 3
              Top = 15
              Width = 63
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
              DataField = 'DESCMARCA'
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              StyleController = esVendas
              OnMouseEnter = cmbTipoEntregaMouseEnter
              DistinctEditOn = False
              Height = 17
              StoredValues = 1
            end
          end
          object pnPesoBruto: TTS_Panel
            Tag = -1
            Left = 524
            Top = 100
            Width = 74
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 19
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
            object TS_Label19: TTS_Label
              Left = 2
              Top = 1
              Width = 69
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Peso Bruto'
              Color = 14859922
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
            Left = 598
            Top = 100
            Width = 74
            Height = 34
            HelpContext = -1
            BevelOuter = bvNone
            BorderWidth = 1
            Color = 15196656
            TabOrder = 20
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
            object TS_Label24: TTS_Label
              Left = 2
              Top = 1
              Width = 69
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Peso L'#237'quido'
              Color = 14859922
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
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
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
      inherited DBEdit5: TDBEdit
        DataSource = DMDevolucoesFornecedores.C_TabelaDS
      end
      inherited pgItens: TTS_PageControl
        Top = 190
        Width = 686
        Height = 224
        TabColor = 15196656
        TabColorActive = 11775972
        inherited tsItens: TTS_TabSheet
          BevelInner = bvRaised
          BevelOuter = bvLowered
          inherited TS_Shape15: TTS_Shape
            Left = 575
            Pen.Color = 11775972
          end
          inherited dfFoto: TTS_Image
            Left = 576
          end
          inherited pnTotItens: TTS_Panel
            Left = 575
            Top = 155
            Color = 15196656
            inherited TS_DBText1: TTS_DBText
              Color = 15196656
              Font.Color = clRed
            end
          end
          inherited dbgItens: TTS_QDBGrid
            Width = 570
            Height = 192
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryField = 'SUBTOTAL'
                    SummaryFormat = '>SUBTOTAL=##,##0.00'
                    SummaryType = cstSum
                  end>
                Name = 'Default'
              end>
            DataSource = DMDevolucoesFornecedores.C_ItensDS
            Filter.Criteria = {00000000}
            TS_ShowSelectionColumn = True
            TS_SelectedColumn = 'SEQUENCIA'
            TS_SummaryFields.Strings = (
              'SUBTOTAL;SUM'
              'CODIGO;COUNT')
            inherited dbgItensSEQUENCIA: TdxDBGridMaskColumn [0]
              Visible = True
            end
            inherited dbgItensI_CODIGO: TdxDBGridButtonColumn [1]
              Visible = True
            end
            inherited dbgItensDESCRICAO: TdxDBGridButtonColumn [2]
              Visible = True
            end
            inherited dbgItensReferencia: TdxDBGridButtonColumn [3]
              Width = 70
            end
            inherited dbgItensI_UNIDADE: TdxDBGridLookupColumn [4]
              Visible = True
            end
            inherited dbgItensQUANTIDADE: TdxDBGridMaskColumn [5]
              Visible = True
            end
            inherited dbgItensPRECO: TdxDBGridPopupColumn [6]
              Visible = True
            end
            inherited dbgItensSubTotal: TdxDBGridColumn [7]
              Visible = True
              SummaryFooterFormat = '##,##0.00'
            end
            inherited dbgItensTipoItem: TdxDBGridColumn [8]
              Width = 81
            end
            inherited dbgItensStatus: TdxDBGridImageColumn [9]
            end
            inherited dbgItensNumeroLote: TdxDBGridPopupColumn [10]
              Width = 86
            end
            inherited dbgItensFuncProducao: TdxDBGridLookupColumn [11]
              Width = 115
            end
            inherited dbgItensI_CLASFISCAL: TdxDBGridColumn [12]
            end
            inherited dbgItensUsoTipoItem: TdxDBGridColumn [13]
              Width = 128
            end
            inherited dbgItensColuna1: TdxDBGridColumn [14]
              Width = 196
            end
            inherited dbgItensColuna2: TdxDBGridColumn [15]
              Width = 196
            end
            inherited dbgItensColuna3: TdxDBGridColumn [16]
              Width = 196
            end
            inherited dbgItensColuna4: TdxDBGridColumn [17]
              Width = 196
            end
            inherited dbgItensBaixoEstoque: TdxDBGridColumn [18]
              Width = 125
            end
            inherited dbgItenscfopcst: TdxDBGridColumn [19]
              Alignment = taRightJustify
              HeaderAlignment = taCenter
            end
            inherited dbgItensI_Percentual: TdxDBGridColumn [20]
              Width = 188
            end
            inherited dbgItensCST: TdxDBGridLookupColumn [21]
              Alignment = taCenter
              Caption = 'Cst ICMS'
              HeaderAlignment = taCenter
              Width = 65
              FieldName = 'lkCST'
              DropDownWidth = 380
            end
            inherited dbgItensBASECALCICMSPROD: TdxDBGridMaskColumn [22]
              Caption = 'Base ICMS'
              HeaderAlignment = taCenter
              Width = 80
              SummaryFooterType = cstSum
            end
            inherited dbgItensAliqICMS: TdxDBGridMaskColumn [23]
              Visible = True
              Width = 50
            end
            inherited dbgItensVALORICMSPROD: TdxDBGridMaskColumn [24]
              Caption = 'Valor ICMS'
              HeaderAlignment = taCenter
              Width = 80
              SummaryFooterType = cstSum
            end
            inherited dbgItensBASECALCSUBSTPROD: TdxDBGridMaskColumn [25]
              Caption = 'Base ICMS Subst.'
              HeaderAlignment = taCenter
              SummaryFooterType = cstSum
            end
            inherited dbgItensVALORICMSSUBSTPROD: TdxDBGridMaskColumn [26]
              Caption = 'Valor ICMS Subst.'
              HeaderAlignment = taCenter
              SummaryFooterType = cstSum
            end
            inherited dbgItensCSTIPI: TdxDBGridLookupColumn [27]
              HeaderAlignment = taCenter
              Width = 50
              FieldName = 'lkCSTIPI'
              DropDownWidth = 250
            end
            inherited dbgItensALIQIPI: TdxDBGridColumn [28]
              Caption = '% IPI'
              HeaderAlignment = taCenter
              Width = 121
            end
            inherited dbgItensIPI: TdxDBGridMaskColumn [29]
              Width = 58
            end
            inherited dbgItensVALORIPIPROD: TdxDBGridColumn [30]
              Caption = 'Valor IPI'
              HeaderAlignment = taCenter
              Width = 80
            end
            inherited dbgItensCSTPISCOFINS: TdxDBGridLookupColumn [31]
              Alignment = taCenter
              Caption = 'Cst Pis/Cofins'
              HeaderAlignment = taCenter
              Width = 70
              FieldName = 'lkCSTPisCofins'
              DropDownWidth = 380
            end
            inherited dbgItensALIQPIS: TdxDBGridColumn [32]
              HeaderAlignment = taCenter
              Width = 75
            end
            inherited dbgItensALIQCOFINS: TdxDBGridColumn [33]
              HeaderAlignment = taCenter
              Width = 75
            end
            inherited dbgItensVALORPISPROD: TdxDBGridColumn [34]
              Caption = 'Valor Pis'
              HeaderAlignment = taCenter
              Width = 75
            end
            inherited dbgItensVALORCOFINSPROD: TdxDBGridColumn [35]
              Caption = 'Valor Cofins'
              HeaderAlignment = taCenter
              Width = 75
            end
            inherited dbgItensBaixaEstoque: TdxDBGridColumn [36]
              Width = 95
            end
            inherited dbgItensSitECF: TdxDBGridLookupColumn [37]
              Visible = True
              Width = 110
            end
            inherited dbgItensPromocao: TdxDBGridColumn [38]
              Width = 75
            end
            inherited dbgItensTVA: TdxDBGridMaskColumn [39]
            end
            inherited dbgItensQtdFaturada: TdxDBGridMaskColumn [40]
              Width = 134
            end
            inherited dbgItensNumeroItem: TdxDBGridColumn [41]
            end
            inherited dbgItensRegistro: TdxDBGridColumn [42]
              Width = 71
            end
            inherited dbgItensUltrapassouMesclagem: TdxDBGridColumn [43]
              Width = 152
            end
            inherited dbgItensCFOP: TdxDBGridPopupColumn [44]
            end
            inherited dbgItensColumn19: TdxDBGridColumn [45]
              Width = 103
            end
            inherited dbgItenslkAlmox: TdxDBGridLookupColumn [46]
              Width = 65
            end
            inherited dbgItensI_Descricao: TdxDBGridColumn [47]
              Width = 344
            end
            inherited dbgItensicPercComissao: TdxDBGridColumn [48]
              Width = 75
            end
            inherited dbgItensColumn20: TdxDBGridColumn [49]
              Width = 196
            end
            inherited dbgItensPDESCONTO: TdxDBGridCalcColumn [50]
            end
            inherited dbgItensMesclado: TdxDBGridColumn [51]
              Width = 81
            end
            inherited dbgItensicGrupoDesconto: TdxDBGridColumn [52]
              Width = 70
            end
            inherited dbgItensPRECOTABELA: TdxDBGridColumn [53]
              Width = 53
            end
            object dbgItensRATEIODESPESAS: TdxDBGridMaskColumn
              Caption = 'Rateio despesas'
              Visible = False
              Width = 118
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RATEIODESPESAS'
            end
            object dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn
              Caption = 'Qtd. Volume'
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QUANTIDADEVOLUME'
              SummaryFooterType = cstSum
            end
          end
          inherited pnVolumes: TTS_Panel
            Left = 575
            Top = 112
            Color = 15196656
            inherited dfVolumes: TTS_DBEditNumber
              OnValidate = dfVolumesValidate
              Height = 21
              StoredValues = 1
            end
          end
        end
        inherited tsTermos: TTS_TabSheet
          inherited TS_Shape12: TTS_Shape
            Width = 576
            Brush.Color = 11775972
          end
          inherited lbTipoCobranca: TTS_Label
            Left = 555
          end
          inherited lbCarteira: TTS_Label
            Left = 557
          end
          inherited pnTermos: TTS_Panel
            Width = 255
            Visible = False
            inherited lbTermos: TTS_Label
              Width = 251
            end
            inherited cmbTermos: TTS_DBLookupComboBox
              Width = 126
              Height = 19
            end
          end
          inherited pnTotalFinal: TTS_Panel
            Left = 579
            inherited lbTotalFinal: TTS_Label
              Font.Color = clRed
            end
            inherited dbtTotalFinal: TTS_DBTextEffect
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Font.Color = clRed
              Font.Height = -15
            end
          end
          inherited pnSomaTotal: TTS_Panel
            Width = 581
            Color = 15196656
            inherited TS_Label4: TTS_Label
              Left = 509
              Top = 11
              Width = 16
              Height = 14
              Font.Height = -13
            end
            inherited pnFrete: TTS_Panel
              Left = 178
              Color = 15196656
              inherited dfFrete: TTS_DBEditNumber
                Font.Color = clMaroon
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnDescontos: TTS_Panel
              Width = 84
              Color = 15196656
              inherited TS_Shape9: TTS_Shape
                Width = 70
              end
              inherited lbDescontos: TTS_Label
                Width = 68
              end
              inherited dfDesconto: TTS_DBEditNumber
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnTotalItens: TTS_Panel
              Color = 15196656
              inherited TS_Shape10: TTS_Shape
                Brush.Color = 15196656
              end
              inherited TS_DBText5: TTS_DBText
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Font.Color = clMaroon
              end
            end
            inherited pnDespesas: TTS_Panel
              Left = 264
              Color = 15196656
              inherited dfDespesas: TTS_DBEditNumber
                Font.Color = clMaroon
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnJuros: TTS_Panel
              Left = 346
              Color = 15196656
              inherited TS_Shape13: TTS_Shape
                Brush.Color = 15196656
              end
              inherited TS_DBText7: TTS_DBText
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Font.Color = clMaroon
              end
            end
            object TS_Panel3: TTS_Panel
              Tag = -1
              Left = 432
              Top = 0
              Width = 83
              Height = 38
              HelpContext = -1
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '+'
              Color = 15196656
              TabOrder = 5
              TagStr = '347'
              DesignSize = (
                83
                38)
              object TS_Shape7: TTS_Shape
                Left = 11
                Top = 0
                Width = 68
                Height = 37
                Anchors = [akLeft, akTop, akRight]
                Brush.Color = 15196656
                Transparent = False
              end
              object TS_DBText2: TTS_DBText
                Left = 12
                Top = 20
                Width = 64
                Height = 16
                Alignment = taRightJustify
                Anchors = [akLeft, akTop, akRight]
                DataField = 'BASEIMPOSTO'
                DataSource = DMDevolucoesFornecedores.C_TabelaDS
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                StyleControler = esVendas
                AllowEditOnClick = False
                EditFont.Charset = DEFAULT_CHARSET
                EditFont.Color = clWindowText
                EditFont.Height = -11
                EditFont.Name = 'MS Sans Serif'
                EditFont.Style = []
                EditOffSet.x = 0
                EditOffSet.y = 0
              end
              object TS_Label26: TTS_Label
                Left = 12
                Top = 1
                Width = 66
                Height = 16
                Alignment = taCenter
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Outros'
                Color = 14859922
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
            end
          end
          inherited cbReceber: TTS_CheckBox
            Left = 553
            Top = 158
            Visible = False
          end
          inherited dbgMensagens: TTS_QDBGrid
            Left = 41
            Top = 87
            Color = 11775972
            DataSource = DMDevolucoesFornecedores.C_MensagensOperacoesDS
            Filter.Criteria = {00000000}
          end
          inherited cmbTipoCobranca: TTS_DBLookupComboBox
            Left = 606
            DataSource = DMDevolucoesFornecedores.C_TabelaDS
            Height = 19
          end
          inherited cmbCarteira: TTS_DBLookupComboBox
            Left = 606
            DataSource = DMDevolucoesFornecedores.C_TabelaDS
            Height = 19
          end
          inherited dbgParcelas: TTS_QDBGrid
            Left = 264
            Height = 145
            Visible = False
            DataSource = DMDevolucoesFornecedores.C_ParcelasDS
            Filter.Criteria = {00000000}
          end
          inherited pnMensagem: TTS_Panel
            Top = 49
            Width = 255
            Height = 101
            inherited dfMensagem: TTS_PopupEdit
              Width = 257
              LookupSource = DMDevolucoesFornecedores.C_MensagensOperacoesDS
              Height = 21
              StoredValues = 65
            end
            inherited dfObs: TTS_DBMemo
              Width = 248
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              MaxLength = 500
              OnValidate = dfObsValidate
              Height = 78
              StoredValues = 2
            end
          end
        end
        inherited tsContrato: TTS_TabSheet
          inherited TS_Panel1: TTS_Panel
            Width = 667
            Height = 184
            inherited TS_DBMemo1: TTS_DBMemo
              Top = 23
              Width = 663
              DataSource = DMDevolucoesFornecedores.C_TabelaDS
              Height = 158
            end
            inherited dfContrato: TTS_PopupEdit
              Width = 610
              LookupSource = DMDevolucoesFornecedores.C_TermosContratoDS
              Height = 21
              StoredValues = 65
            end
          end
          inherited dbgContratos: TTS_QDBGrid
            DataSource = DMDevolucoesFornecedores.C_TermosContratoDS
            Filter.Criteria = {00000000}
          end
        end
      end
      inherited pnSetas: TTS_Panel
        Left = 670
        Top = 193
        Color = 15196656
      end
      inherited cbImprimir: TTS_CheckBox
        Left = 279
        Top = 190
      end
      inherited pnStatus: TTS_Panel
        Left = 395
        Top = 190
        Color = 15196656
        inherited dfStatus: TTS_DBLookupComboBox
          DataSource = DMDevolucoesFornecedores.C_TabelaDS
          Height = 19
        end
      end
      inherited pnLotes: TTS_Panel
        Left = 192
        Top = 214
        inherited dbgLotes: TTS_QDBGrid
          Filter.Criteria = {00000000}
          inherited dxDBGridMaskColumn1: TdxDBGridMaskColumn
            SortedOrder = 1
          end
          inherited dxDBGridMaskColumn2: TdxDBGridMaskColumn
            Sorted = csDown
            SortedOrder = 0
          end
        end
      end
      inherited pnPreco: TPanel
        inherited pnOutros: TPanel
          inherited dbgTabelasPreco: TTS_QDBGrid
            Filter.Criteria = {00000000}
          end
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 693
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 810
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 243
      Caption = 'Devolu'#231#245'es Fornecedores'
      Effect3D.ShadowedColor = 11775972
    end
    inherited lbDesativado: TdxfLabel
      Left = 521
    end
    inherited btHelp: TTS_SpeedButton
      Left = 773
    end
    inherited lbCancelado: TdxfLabel
      Left = 379
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 165
    Top = 65
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 208
    Top = 68
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 110
    Top = 390
  end
  inherited ImgPadrao: TImageList
    Left = 238
    Top = 382
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Devolu'#231#245'es Fornecedores'
    Left = 170
    Top = 212
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 36
    Top = 357
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 378
    Top = 284
  end
  inherited ppmCliente: TTS_PopupMenu
    Left = 164
    Top = 391
  end
  inherited ppmUltimo: TTS_PopupMenu
    object ltimoGravado1: TMenuItem [1]
      Caption = #218'ltimo Gravado'
      OnClick = dxBarUltParaOperacaoClick
    end
    inherited UltimoGravado: TMenuItem
      Caption = #218'ltimo Gravado (anterior)'
      Visible = False
    end
  end
  inherited ppmOutros: TTS_PopupMenu
    Left = 518
    Top = 330
    object ReferenciarNotas1: TMenuItem
      Caption = 'Referenciar Notas'
      OnClick = ReferenciarNotas1Click
    end
  end
  inherited tmInvoice: TTimer
    Left = 629
    Top = 70
  end
  inherited ppmGrid: TTS_PopupMenu
    Left = 383
    Top = 323
  end
end

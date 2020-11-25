inherited FrmFormasPagamento: TFrmFormasPagamento
  Left = 442
  Top = 158
  Width = 584
  Height = 420
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 453
    Height = 339
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 305
    end
    inherited pnAvancaRecua: TTS_Panel
      inherited btUltimoReg: TTS_SpeedButton
        Width = 30
      end
    end
  end
  inherited pnDados: TTS_Panel
    Width = 453
    Height = 339
    inherited Grid: TTS_QDBGrid
      Width = 451
      Height = 337
      KeyField = 'FORMAPAGAMENTO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridFORMAPAGAMENTO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMAPAGAMENTO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o da Forma de Pagamento'
        HeaderAlignment = taCenter
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridREFCREDITO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFCREDITO'
      end
      object GridCARENCIACREDITO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARENCIACREDITO'
      end
      object GridCONTALIBERACAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTALIBERACAO'
      end
      object GridDESATIVADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESATIVADO'
      end
      object GridESPECIE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESPECIE'
      end
      object GridSIGLA: TdxDBGridMaskColumn
        Caption = 'Sigla'
        HeaderAlignment = taCenter
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SIGLA'
      end
      object GridCODIGOECF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOECF'
      end
      object GridMELHORDIACOMPRA: TdxDBGridMaskColumn
        Caption = 'Melhor dia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MELHORDIACOMPRA'
      end
      object GridFORNECEDOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORNECEDOR'
      end
      object GridDescEspecie: TdxDBGridLookupColumn
        Caption = 'Esp'#233'cie'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescEspecie'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Width = 142
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridDescContaCart: TdxDBGridLookupColumn
        Caption = 'Conta-Banco'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescContaCart'
      end
      object GridMENORPARCELA: TdxDBGridMaskColumn
        Caption = 'Menor Parcela'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENORPARCELA'
      end
      object GridENCARGOS: TdxDBGridMaskColumn
        Caption = 'Encargos'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENCARGOS'
      end
      object GridTIPOFAVORECIDO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object GridCONTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA'
      end
      object GridDescContaCartao: TdxDBGridLookupColumn
        Caption = 'Conta Cart'#227'o'
        HeaderAlignment = taCenter
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescContaCartao'
      end
      object GridCONTARECEBER: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTARECEBER'
      end
      object GridDescContaReceber: TdxDBGridLookupColumn
        Caption = 'Conta a Receber'
        HeaderAlignment = taCenter
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescContaReceber'
      end
      object GridCONTAPAGAR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTAPAGAR'
      end
      object GridDescContaPagar: TdxDBGridLookupColumn
        Caption = 'Conta a Pagar'
        HeaderAlignment = taCenter
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescContaPagar'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 451
      Height = 337
    end
    inherited sbDados: TTS_Panel
      Width = 451
      Height = 337
      Color = 15724519
      object TS_Shape2: TTS_Shape
        Left = 8
        Top = 88
        Width = 420
        Height = 3
        Brush.Color = 14078909
        Pen.Style = psClear
        Transparent = False
      end
      object Label1: TTS_Label
        Left = 73
        Top = 35
        Width = 71
        Height = 13
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object Label2: TTS_Label
        Left = 118
        Top = 56
        Width = 26
        Height = 13
        Caption = 'Sigla:'
        FocusControl = dfSigla
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTipoFormaPagamento: TTS_Label
        Left = 8
        Top = 14
        Width = 135
        Height = 13
        Caption = 'Tipo Forma Pagamento:'
        FocusControl = cmbTipoFormaPagamento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape1: TTS_Shape
        Left = 16
        Top = 80
        Width = 117
        Height = 19
        Brush.Color = 14078909
        Pen.Style = psClear
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label7: TTS_Label
        Left = 12
        Top = 82
        Width = 113
        Caption = 'Dados Espec'#237'ficos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 146
        Top = 33
        Width = 211
        TabOrder = 1
        DataField = 'Descricao'
        DataSource = DMFormasPagamento.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfSigla: TTS_DBEdit
        Left = 146
        Top = 54
        Width = 48
        TabOrder = 2
        DataField = 'Sigla'
        DataSource = DMFormasPagamento.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object cmbTipoFormaPagamento: TTS_DBLookupComboBox
        Left = 146
        Top = 12
        Width = 211
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DataField = 'DescEspecie'
        DataSource = DMFormasPagamento.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        OnChange = cmbTipoFormaPagamentoChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'ESPECIE'
        ListSource = DMFormasPagamento.C_EspeciesDS
        LookupKeyValue = Null
        Height = 19
      end
      object Page: TTS_PageControl
        Left = 1
        Top = 104
        Width = 457
        Height = 231
        ActivePage = tsCartao
        OwnerDraw = True
        Style = tsButtons
        TabOrder = 3
        TabStop = False
        ActivePageIndex = 0
        Transparent = False
        TabColor = clBlack
        TabColorActive = clBlack
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
        object tsCartao: TTS_TabSheet
          Caption = 'Cart'#227'o Cr'#233'dito'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object Label4: TTS_Label
            Left = 3
            Top = 135
            Width = 138
            Height = 13
            Caption = 'Encargos a Descontar:'
            FocusControl = dfDescontar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object Label8: TTS_Label
            Left = -6
            Top = 92
            Width = 146
            Height = 13
            Caption = 'Conta-Banco para o Cr'#233'dito:'
            FocusControl = cmbConta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object Label11: TTS_Label
            Left = -8
            Top = 32
            Width = 148
            Height = 13
            Caption = 'Contar esses dias a partir:'
            FocusControl = dfData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object Label5: TTS_Label
            Left = -15
            Top = 6
            Width = 309
            Height = 13
            Caption = 'Quantidade de Dias para a Administradora Creditar:'
            FocusControl = dfDias
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object Label9: TTS_Label
            Left = 4
            Top = 155
            Width = 137
            Height = 13
            Caption = 'Valor M'#237'nimo:'
            FocusControl = dfValorMinimo
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label4: TTS_Label
            Left = -6
            Top = 53
            Width = 146
            Height = 13
            Caption = 'Conta a Receber:'
            FocusControl = cmbContaReceber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label15: TTS_Label
            Left = 224
            Top = 154
            Width = 134
            Height = 13
            AutoSize = True
            Caption = 'Intervalo entre as parcelas:'
            FocusControl = TS_DBEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label16: TTS_Label
            Left = -6
            Top = 72
            Width = 146
            Height = 13
            Caption = 'Conta a Despesa:'
            FocusControl = cmbContaReceber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblBandeiraCartao: TTS_Label
            Left = 48
            Top = 177
            Width = 93
            Height = 13
            Caption = 'Bandeira Cart'#227'o:'
            FocusControl = dfDescontar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfDias: TTS_DBEdit
            Left = 295
            Top = 4
            Width = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DataField = 'CarenciaCredito'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            DistinctEditOn = False
            Height = 19
          end
          object cmbConta: TTS_DBPopupEdit
            Left = 142
            Top = 90
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            DataField = 'DescContaCart'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaInitPopup
            Height = 19
          end
          object dfDescontar: TTS_DBEditNumber
            Left = 142
            Top = 132
            Width = 72
            TabOrder = 5
            DataField = 'ENCARGOS'
            DataSource = DMFormasPagamento.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfValorMinimo: TTS_DBEditNumber
            Left = 142
            Top = 153
            Width = 72
            TabOrder = 6
            DataField = 'MENORPARCELA'
            DataSource = DMFormasPagamento.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dbFavorecido: TTS_DBEditFavorecido
            Tag = 50
            Left = 142
            Top = 111
            Width = 281
            Hint = 
              'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
              'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
              ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
              ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
              #227'o'
            Style.ButtonStyle = btsFlat
            TabOrder = 4
            DataField = 'NOME'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
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
            LookupTipoFav = TS_DBLookupTipoFav2
            SelecionarVarios = False
            TipoFavorecido = 2
            C_Localizar = DMProjeto.C_LocalizarFav
            ID = 0
            ChaveEstrangeira = 'Fornecedor'
            Height = 19
            ExistButtons = True
          end
          object TS_DBLookupTipoFav2: TTS_DBLookupTipoFav
            Tag = 50
            Left = 32
            Top = 110
            Width = 109
            Hint = 
              'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
              ' de edi'#231#227'o ao lado.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            TabStop = False
            StyleController = DMProjeto.esFinanceiro
            ListFieldName = 'DESCRICAO'
            KeyFieldName = 'TIPOFAVORECIDO'
            ListSource = DMProjeto.C_TipoFavDS
            LookupKeyValue = Null
            TipoFavorecido = 2
          end
          object cmbContaReceber: TTS_DBPopupEdit
            Left = 142
            Top = 51
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            DataField = 'DescContaReceber'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaReceberInitPopup
            Height = 19
          end
          object dfData: TTS_DBImageEdit
            Left = 142
            Top = 30
            Width = 185
            TabOrder = 1
            DataField = 'REFCREDITO'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            Descriptions.Strings = (
              'da Data da Venda'
              'do Vencimento da Parcela')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              'V'
              'P')
            Height = 19
          end
          object TS_DBEdit3: TTS_DBEdit
            Left = 360
            Top = 152
            Width = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            DataField = 'INTERVALOPARCELAS'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            DistinctEditOn = False
            Height = 19
          end
          object cmbContaDespesa: TTS_DBPopupEdit
            Left = 142
            Top = 70
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            DataField = 'lkpContaDespesa'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaDespesaInitPopup
            Height = 19
          end
          object cbCartaoTEF: TTS_DBCheckBox
            Left = 4
            Top = 197
            Width = 157
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 10
            Alignment = taRightJustify
            Caption = 'Chamar o Gerenciador TEF?'
            DataField = 'CARTAOTEF'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esClientes
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
            NullStyle = nsUnchecked
            DisableEdit = False
            Height = 19
            StoredValues = 1
          end
          object cmbBandeirasCartao: TTS_DBLookupComboBox
            Left = 142
            Top = 174
            Width = 247
            Style.BorderColor = 14859922
            TabOrder = 11
            DataField = 'lkBandeirasCartao'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFuncionarios
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
        end
        object tsCartaoEmpresa: TTS_TabSheet
          Caption = 'Cart'#227'o da Empresa'
          ImageIndex = 2
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label2: TTS_Label
            Left = 31
            Top = 57
            Width = 103
            Height = 13
            Caption = 'Dia de Vencimento:'
            FocusControl = dfVenc
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label3: TTS_Label
            Left = -48
            Top = 81
            Width = 182
            Height = 13
            Caption = 'Melhor dia para Compra:'
            FocusControl = dfMelhorDia
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label1: TTS_Label
            Left = 64
            Top = 34
            Width = 70
            Height = 13
            Caption = 'Conta:'
            FocusControl = cmbContaCartao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
            Tag = 51
            Left = 21
            Top = 7
            Width = 113
            Hint = 
              'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
              ' de edi'#231#227'o ao lado.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TabStop = False
            StyleController = DMProjeto.esFinanceiro
            DropDownRows = 15
            ListFieldName = 'DESCRICAO'
            KeyFieldName = 'TIPOFAVORECIDO'
            ListSource = DMProjeto.C_TipoFavDS
            LookupKeyValue = Null
            TipoFavorecido = 2
          end
          object dfVenc: TTS_DBEdit
            Left = 137
            Top = 56
            Width = 25
            TabOrder = 2
            DataField = 'CarenciaCredito'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            DistinctEditOn = False
            Height = 19
          end
          object dfMelhorDia: TTS_DBEdit
            Left = 137
            Top = 79
            Width = 25
            TabOrder = 3
            DataField = 'MelhorDiaCompra'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            DistinctEditOn = False
            Height = 19
          end
          object dfForn: TTS_DBEditFavorecido
            Tag = 51
            Left = 137
            Top = 8
            Width = 281
            Hint = 
              'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
              'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
              ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
              ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
              #227'o'
            Style.ButtonStyle = btsFlat
            TabOrder = 0
            DataField = 'NOME'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
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
            LookupTipoFav = TS_DBLookupTipoFav1
            SelecionarVarios = False
            TipoFavorecido = 2
            C_Localizar = DMProjeto.C_LocalizarFav
            ID = 0
            ChaveEstrangeira = 'Fornecedor'
            Height = 19
            ExistButtons = True
          end
          object cmbContaCartao: TTS_DBPopupEdit
            Left = 137
            Top = 32
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DataField = 'DescContaPagar'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaCartaoInitPopup
            Height = 19
          end
        end
        object tsOutros: TTS_TabSheet
          Caption = 'Outros'
          ImageIndex = 2
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label5: TTS_Label
            Left = -11
            Top = 16
            Width = 146
            Height = 13
            Caption = 'Conta a Receber:'
            FocusControl = cmbContaReceber2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label6: TTS_Label
            Left = -12
            Top = 46
            Width = 146
            Height = 13
            Caption = 'Conta a Pagar:'
            FocusControl = cmbContaPagar2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object cmbContaReceber2: TTS_DBPopupEdit
            Left = 137
            Top = 14
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DataField = 'DescContaReceber'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaReceber2InitPopup
            Height = 19
          end
          object cmbContaPagar2: TTS_DBPopupEdit
            Left = 137
            Top = 44
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DataField = 'DescContaPagar'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaPagar2InitPopup
            Height = 19
          end
        end
        object tsChequeEletronico: TTS_TabSheet
          Caption = 'tsChequeEletronico'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label8: TTS_Label
            Left = 3
            Top = 117
            Width = 138
            Height = 13
            Caption = 'Encargos a Descontar:'
            FocusControl = TS_DBEditNumber1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label9: TTS_Label
            Left = -6
            Top = 74
            Width = 146
            Height = 13
            Caption = 'Conta-Banco para o Cr'#233'dito:'
            FocusControl = TS_DBPopupEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label10: TTS_Label
            Left = -8
            Top = 32
            Width = 148
            Height = 13
            Caption = 'Contar esses dias a partir:'
            FocusControl = TS_DBImageEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label11: TTS_Label
            Left = -15
            Top = 6
            Width = 309
            Height = 13
            Caption = 'Quantidade de Dias para a Administradora Creditar:'
            FocusControl = TS_DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 4
            Top = 137
            Width = 137
            Height = 13
            Caption = 'Valor M'#237'nimo:'
            FocusControl = TS_DBEditNumber2
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label13: TTS_Label
            Left = -6
            Top = 53
            Width = 146
            Height = 13
            Caption = 'Conta a Receber:'
            FocusControl = TS_DBPopupEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 224
            Top = 136
            Width = 134
            Height = 13
            AutoSize = True
            Caption = 'Intervalo entre as parcelas:'
            FocusControl = TS_DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_DBEdit1: TTS_DBEdit
            Left = 296
            Top = 4
            Width = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DataField = 'CarenciaCredito'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBPopupEdit1: TTS_DBPopupEdit
            Left = 142
            Top = 72
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DataField = 'DescContaCart'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaInitPopup
            Height = 19
          end
          object TS_DBEditNumber1: TTS_DBEditNumber
            Left = 142
            Top = 114
            Width = 72
            TabOrder = 2
            DataField = 'ENCARGOS'
            DataSource = DMFormasPagamento.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object TS_DBEditNumber2: TTS_DBEditNumber
            Left = 142
            Top = 135
            Width = 72
            TabOrder = 3
            DataField = 'MENORPARCELA'
            DataSource = DMFormasPagamento.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object TS_DBEditFavorecido1: TTS_DBEditFavorecido
            Tag = 50
            Left = 142
            Top = 93
            Width = 281
            Hint = 
              'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
              'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
              ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
              ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
              #227'o'
            Style.ButtonStyle = btsFlat
            TabOrder = 4
            DataField = 'NOME'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
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
            LookupTipoFav = TS_DBLookupTipoFav3
            SelecionarVarios = False
            TipoFavorecido = 2
            C_Localizar = DMProjeto.C_LocalizarFav
            ID = 0
            ChaveEstrangeira = 'Fornecedor'
            Height = 19
            ExistButtons = True
          end
          object TS_DBLookupTipoFav3: TTS_DBLookupTipoFav
            Tag = 50
            Left = 32
            Top = 92
            Width = 109
            Hint = 
              'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
              ' de edi'#231#227'o ao lado.'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            TabStop = False
            StyleController = DMProjeto.esFinanceiro
            ListFieldName = 'DESCRICAO'
            KeyFieldName = 'TIPOFAVORECIDO'
            ListSource = DMProjeto.C_TipoFavDS
            LookupKeyValue = Null
            TipoFavorecido = 2
          end
          object TS_DBPopupEdit2: TTS_DBPopupEdit
            Left = 142
            Top = 51
            Width = 281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            DataField = 'DescContaReceber'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            PopupFormBorderStyle = pbsSimple
            OnInitPopup = cmbContaReceberInitPopup
            Height = 19
          end
          object TS_DBImageEdit1: TTS_DBImageEdit
            Left = 142
            Top = 30
            Width = 185
            TabOrder = 7
            DataField = 'REFCREDITO'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            Descriptions.Strings = (
              'da Data da Venda'
              'do Vencimento da Parcela')
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              'V'
              'P')
            Height = 19
          end
          object TS_DBEdit2: TTS_DBEdit
            Left = 360
            Top = 134
            Width = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            DataField = 'INTERVALOPARCELAS'
            DataSource = DMFormasPagamento.C_TabelaDS
            StyleController = DMProjeto.esFinanceiro
            DistinctEditOn = False
            Height = 19
          end
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 451
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 568
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 212
      Caption = 'Formas de Pagamento'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 411
    Top = 86
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 256
    Top = 95
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 365
    Top = 36
  end
  inherited ImgPadrao: TImageList
    Left = 181
    Top = 77
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    CamposObrigatorios.Strings = (
      'cmbTipoFormaPagamento'
      'dfDescricao'
      'dfSigla'
      'dfForn;Especie=50'
      'cmbContaCartao;Especie=50'
      'dfVenc;Especie=50'
      'dfData;Especie in 3,10,30'
      'cmbConta;Especie in 3,10,30'
      'dbFavorecido;Especie in 3,10,30'
      'dfDescontar;Especie in 3,10,30')
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Formas de Pagamento'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    OnRefresh = FormComponentRefresh
    FirstEditField = dfDescricao
    Left = 224
    Top = 67
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 290
    Top = 60
    inherited Ajuda1: TMenuItem
      HelpContext = 478
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 369
    Top = 131
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 326
    Top = 104
  end
  object dlgFoto: TOpenPictureDialog
    Filter = 
      'Todas as Imagens (*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.jpg;*.' +
      'jpeg;*.bmp;*.ico;*.emf;*.wmf|JPEG Image File (*.jpg)|*.jpg|JPEG ' +
      'Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*' +
      '.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 401
    Top = 3
  end
  object ppmFoto: TTS_PopupMenu
    TrackButton = tbLeftButton
    Left = 272
    Top = 119
    object CarregarFoto: TMenuItem
      Caption = 'Carregar Foto...'
      ShortCut = 16454
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimparFoto1: TMenuItem
      Caption = 'Limpar Foto'
    end
  end
end

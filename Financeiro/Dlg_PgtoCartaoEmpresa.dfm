inherited DlgPgtoCartaoEmpresa: TDlgPgtoCartaoEmpresa
  Tag = -2
  Left = 135
  Top = 99
  Width = 605
  Height = 402
  Caption = 'Financeiro'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Tag = -1
    Top = 48
    Width = 479
    Height = 320
    HelpContext = -1
    Color = 15724519
    object TS_Panel1: TTS_Panel
      Tag = -1
      Left = 1
      Top = 1
      Width = 477
      Height = 318
      HelpContext = -1
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object TS_Panel2: TTS_Panel
        Tag = -1
        Left = 0
        Top = 0
        Width = 477
        Height = 68
        HelpContext = -1
        Align = alTop
        BevelOuter = bvNone
        Color = 15724519
        TabOrder = 0
        object TS_Shape3: TTS_Shape
          Left = 290
          Top = 5
          Width = 178
          Height = 62
          Brush.Color = clGray
          Pen.Style = psClear
          Shape = stRoundRect
          Transparent = False
        end
        object TS_Shape2: TTS_Shape
          Left = 288
          Top = 2
          Width = 177
          Height = 62
          Pen.Color = 13223591
          Shape = stRoundRect
          Transparent = False
        end
        object TS_Label1: TTS_Label
          Left = 0
          Top = 6
          Width = 70
          Height = 16
          Cursor = crHandPoint
          Caption = 'Cart'#227'o:'
          FocusControl = cmbCartao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          FormatoTabela = False
          LinkTo = 'FrmFormasPagamento'
          LinkToResult = 0
          OnSetParametrosForm = TS_Label1SetParametrosForm
        end
        object TS_Label3: TTS_Label
          Left = 5
          Top = 27
          Width = 65
          Height = 17
          Caption = 'Vencimento:'
          FocusControl = DataI
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label4: TTS_Label
          Left = 5
          Top = 48
          Width = 65
          Height = 17
          Caption = '# Fatura:'
          FocusControl = EdtNotaFiscal
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label2: TTS_Label
          Left = 295
          Top = 5
          Width = 90
          Alignment = taLeftJustify
          Caption = 'Valor da Fatura:'
          FocusControl = edValorFatura
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label9: TTS_Label
          Left = 296
          Top = 22
          Width = 89
          Alignment = taLeftJustify
          Caption = 'Items da Fatura:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label10: TTS_Label
          Left = 296
          Top = 35
          Width = 97
          Alignment = taLeftJustify
          Caption = 'Contas em Aberto:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label11: TTS_Label
          Left = 296
          Top = 49
          Width = 89
          Alignment = taLeftJustify
          Caption = 'Diferen'#231'a:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbDiferenca: TTS_Label
          Left = 368
          Top = 48
          Width = 78
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Shape4: TTS_Shape
          Left = 288
          Top = 22
          Width = 176
          Height = 1
          Pen.Color = 13223591
          Transparent = False
        end
        object lbCartoesSel: TTS_Label
          Left = 381
          Top = 22
          Width = 65
          Caption = '0,00'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbAberto: TTS_Label
          Left = 381
          Top = 35
          Width = 65
          Caption = '0,00'
          FormatoTabela = False
          LinkToResult = 0
        end
        object EdtNotaFiscal: TTS_Edit
          Tag = -2
          Left = 71
          Top = 45
          Width = 96
          HelpContext = -2
          TabOrder = 3
          MaxLength = 8
          StyleController = DMProjeto.esFinanceiro
          Height = 19
          StoredValues = 2
        end
        object DataI: TTS_DateTimePicker
          Tag = -2
          Left = 71
          Top = 25
          Width = 97
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
          UseEditMask = True
          Height = 19
          StoredValues = 4
        end
        object edValorFatura: TTS_CalcEdit
          Tag = -2
          Left = 387
          Top = 3
          Width = 75
          HelpContext = -2
          TabOrder = 1
          StyleController = DMProjeto.esFinanceiro
          Text = '0'
          OnChange = edValorFaturaChange
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
          DisplayFormat = '###,###,##0.00'
          Height = 19
          StoredValues = 1
        end
        object cmbCartao: TTS_LookupComboBox
          Tag = -2
          Left = 71
          Top = 4
          Width = 205
          HelpContext = -2
          TabOrder = 0
          StyleController = DMProjeto.esFinanceiro
          OnChange = cmbCartaoClick
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'FORMAPAGAMENTO'
          ListSource = DMFinanceiro.C_CartoesBusDS
          LookupKeyValue = Null
          Height = 19
        end
        object ckbPagar: TTS_CheckBox
          Tag = -2
          Left = 176
          Top = 44
          Width = 113
          HelpContext = -2
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 5
          Caption = 'Fazer Pagamento'
          StyleController = DMProjeto.esFornecedores
          DisableEdit = False
          Height = 22
        end
        object ckbImprimir: TTS_CheckBox
          Tag = -2
          Left = 176
          Top = 25
          Width = 113
          HelpContext = -2
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 4
          Caption = 'Imprimir Fatura'
          StyleController = DMProjeto.esFornecedores
          DisableEdit = False
          Height = 22
        end
      end
      object pnlFaturasAtraso: TTS_Panel
        Tag = -1
        Left = 0
        Top = 86
        Width = 477
        Height = 58
        HelpContext = -1
        Align = alTop
        BevelOuter = bvNone
        Color = 14803455
        TabOrder = 1
        Visible = False
        object DBAberto: TTS_QDBGrid
          Tag = -2
          Left = 0
          Top = 0
          Width = 477
          Height = 58
          HelpContext = -2
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'Valor'
                  SummaryFormat = '>Valor=###,###,##0.00'
                  SummaryType = cstSum
                end>
              Name = 'Default'
            end>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnDblClick = DBAbertoDblClick
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = Q_FaturasAtrasoDS
          Filter.Criteria = {00000000}
          GroupPanelColor = 15461355
          HeaderColor = 15461355
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          TS_PermitirQuantidade = False
          TS_DescriptionCanChange = False
          TS_AppendOnEnter = False
          RowFooterNodeFont.Charset = DEFAULT_CHARSET
          RowFooterNodeFont.Color = clWindowText
          RowFooterNodeFont.Height = -11
          RowFooterNodeFont.Name = 'Tahoma'
          RowFooterNodeFont.Style = [fsBold]
          TS_AccountFooterStyle = False
          TS_HideGroupHeader = False
          TS_AnotherColor = clWindow
          TS_ReportHeaderStyle = False
          GroupNodeFont.Charset = DEFAULT_CHARSET
          GroupNodeFont.Color = clWindowText
          GroupNodeFont.Height = -11
          GroupNodeFont.Name = 'Tahoma'
          GroupNodeFont.Style = []
          TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterFont.Color = clWindowText
          TS_SummaryFooterFont.Height = -11
          TS_SummaryFooterFont.Name = 'Tahoma'
          TS_SummaryFooterFont.Style = [fsBold]
          TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterSelFont.Color = clWindowText
          TS_SummaryFooterSelFont.Height = -11
          TS_SummaryFooterSelFont.Name = 'Tahoma'
          TS_SummaryFooterSelFont.Style = [fsBold]
          TS_ShowSelectionColumn = True
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_OnAfterSelection = DBAbertoTS_OnAfterSelection
          TS_SelectedColumn = '_icSelecionado'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFields.Strings = (
            'Valor;Sum')
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object DBAbertoID: TdxDBGridMaskColumn
            Visible = False
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object DBAbertoPARCELA: TdxDBGridMaskColumn
            Caption = '# Conta'
            HeaderAlignment = taCenter
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TITULO'
          end
          object DBAbertoVENCIMENTO: TdxDBGridDateColumn
            Caption = 'Vencimento'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VENCIMENTO'
          end
          object DBAbertoNOME: TdxDBGridMaskColumn
            Caption = 'Favorecido'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 243
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
          end
          object DBAbertoVALOR: TdxDBGridMaskColumn
            Caption = 'Valor'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
            SummaryFooterType = cstSum
            SummaryFooterFormat = '###,###,##0.00'
          end
        end
      end
      object pnlCaptionAtraso: TTS_Panel
        Tag = -1
        Left = 0
        Top = 68
        Width = 477
        Height = 18
        HelpContext = -1
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Fatura a pagar deste cart'#227'o em aberto:'
        Color = 13223591
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object TS_Panel4: TTS_Panel
        Tag = -1
        Left = 0
        Top = 144
        Width = 477
        Height = 174
        HelpContext = -1
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        object pnAjuste: TTS_Panel
          Tag = -1
          Left = 0
          Top = 100
          Width = 477
          Height = 74
          HelpContext = -1
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          Visible = False
          object TS_Panel6: TTS_Panel
            Tag = -1
            Left = 0
            Top = 0
            Width = 477
            Height = 18
            HelpContext = -1
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Ajuste da Fatura'
            Color = 15724519
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBAjustes: TTS_QDBGrid
            Tag = -2
            Left = 0
            Top = 18
            Width = 477
            Height = 56
            HelpContext = -2
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = C_AjusteDS
            Filter.Criteria = {00000000}
            GroupPanelColor = 15461355
            HeaderColor = 15461355
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            TS_PermitirQuantidade = False
            TS_DescriptionCanChange = False
            TS_AppendOnEnter = False
            RowFooterNodeFont.Charset = DEFAULT_CHARSET
            RowFooterNodeFont.Color = clWindowText
            RowFooterNodeFont.Height = -11
            RowFooterNodeFont.Name = 'Tahoma'
            RowFooterNodeFont.Style = [fsBold]
            TS_AccountFooterStyle = False
            TS_HideGroupHeader = False
            TS_AnotherColor = clWindow
            TS_ReportHeaderStyle = False
            GroupNodeFont.Charset = DEFAULT_CHARSET
            GroupNodeFont.Color = clWindowText
            GroupNodeFont.Height = -11
            GroupNodeFont.Name = 'Tahoma'
            GroupNodeFont.Style = []
            TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterFont.Color = clWindowText
            TS_SummaryFooterFont.Height = -11
            TS_SummaryFooterFont.Name = 'Tahoma'
            TS_SummaryFooterFont.Style = [fsBold]
            TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterSelFont.Color = clWindowText
            TS_SummaryFooterSelFont.Height = -11
            TS_SummaryFooterSelFont.Name = 'Tahoma'
            TS_SummaryFooterSelFont.Style = [fsBold]
            TS_LikeString = False
            TS_SelectionColor = 12054783
            TS_SelectionFont.Charset = DEFAULT_CHARSET
            TS_SelectionFont.Color = clWindowText
            TS_SelectionFont.Height = -11
            TS_SelectionFont.Name = 'Tahoma'
            TS_SelectionFont.Style = []
            TS_SelectedColumn = 'DescConta'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object DBAjustesConta: TdxDBGridMaskColumn
              Visible = False
              Width = 196
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Conta'
            end
            object DBAjustesDescConta: TdxDBGridPopupColumn
              Caption = 'Conta'
              HeaderAlignment = taCenter
              Width = 229
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DescConta'
              PopupFormBorderStyle = pbsSimple
              OnInitPopup = DBAjustesDescContaInitPopup
            end
            object DBAjustesMemo: TdxDBGridColumn
              Caption = 'Obs'
              HeaderAlignment = taCenter
              Width = 171
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Memo'
            end
            object DBAjustesValor: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 77
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Valor'
            end
          end
        end
        object TS_Panel3: TTS_Panel
          Tag = -1
          Left = 0
          Top = 0
          Width = 477
          Height = 100
          HelpContext = -1
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnCompras: TTS_Panel
            Tag = -1
            Left = 0
            Top = 0
            Width = 477
            Height = 18
            HelpContext = -1
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Compras efetuadas com o cart'#227'o'
            Color = 13223591
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBPagto: TTS_QDBGrid
            Tag = -2
            Left = 0
            Top = 18
            Width = 477
            Height = 82
            HelpContext = -2
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'IDDOC'
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryField = 'Valor'
                    SummaryFormat = '>Valor=###,###,##0.00'
                    SummaryType = cstSum
                  end>
                Name = 'Default'
              end>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnDblClick = DBPagtoDblClick
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = Q_CartoesDs
            Filter.Criteria = {00000000}
            GroupPanelColor = 15461355
            HeaderColor = 15461355
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            TS_PermitirQuantidade = False
            TS_DescriptionCanChange = False
            TS_AppendOnEnter = False
            RowFooterNodeFont.Charset = DEFAULT_CHARSET
            RowFooterNodeFont.Color = clWindowText
            RowFooterNodeFont.Height = -11
            RowFooterNodeFont.Name = 'Tahoma'
            RowFooterNodeFont.Style = [fsBold]
            TS_AccountFooterStyle = False
            TS_HideGroupHeader = False
            TS_AnotherColor = clWindow
            TS_ReportHeaderStyle = False
            GroupNodeFont.Charset = DEFAULT_CHARSET
            GroupNodeFont.Color = clWindowText
            GroupNodeFont.Height = -11
            GroupNodeFont.Name = 'Tahoma'
            GroupNodeFont.Style = []
            TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterFont.Color = clWindowText
            TS_SummaryFooterFont.Height = -11
            TS_SummaryFooterFont.Name = 'Tahoma'
            TS_SummaryFooterFont.Style = [fsBold]
            TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterSelFont.Color = clWindowText
            TS_SummaryFooterSelFont.Height = -11
            TS_SummaryFooterSelFont.Name = 'Tahoma'
            TS_SummaryFooterSelFont.Style = [fsBold]
            TS_ShowSelectionColumn = True
            TS_LikeString = False
            TS_SelectionColor = 12054783
            TS_SelectionFont.Charset = DEFAULT_CHARSET
            TS_SelectionFont.Color = clWindowText
            TS_SelectionFont.Height = -11
            TS_SelectionFont.Name = 'Tahoma'
            TS_SelectionFont.Style = []
            TS_OnAfterSelection = DBPagtoTS_OnAfterSelection
            TS_SelectedColumn = '_icSelecionado'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFields.Strings = (
              'Valor;Sum')
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object DBPagtoRETIRADA: TdxDBGridMaskColumn
              Visible = False
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RETIRADA'
            end
            object DBPagtoFAVORECIDODOC: TdxDBGridMaskColumn
              Visible = False
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FAVORECIDODOC'
            end
            object DBPagtoDATA: TdxDBGridDateColumn
              Caption = 'Data'
              HeaderAlignment = taCenter
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DATA'
              DisableFilter = True
            end
            object DBPagtoNOME: TdxDBGridMaskColumn
              Caption = 'Nome'
              HeaderAlignment = taCenter
              Width = 243
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOME'
              DisableFilter = True
            end
            object DBPagtoIDDOC: TdxDBGridMaskColumn
              Visible = False
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDDOC'
            end
            object DBPagtoVALOR: TdxDBGridMaskColumn
              Caption = 'Valor'
              HeaderAlignment = taCenter
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALOR'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '###,###,##0.00'
              DisableFilter = True
            end
            object DBPagtoTIPORETIRADA: TdxDBGridMaskColumn
              Visible = False
              Width = 76
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIPORETIRADA'
            end
            object DBPagtoHistorico: TdxDBGridColumn
              Caption = 'Memo'
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HISTORICO'
            end
          end
        end
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Tag = -1
    Left = 479
    Top = 48
    Height = 320
    HelpContext = -1
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 286
    end
    inherited btComando2: TTS_SpeedButton
      Top = 111
      Hint = 'Visualizar/Alterar os pagamentos anteriores'
      Caption = '&Hist'#243'rico'
      Glyph.Data = {
        0E070000424D0E0700000000000036040000280000001A0000001A0000000100
        080000000000D8020000C30E0000C30E00000001000000000000000000004000
        00006000000080000000A0000000C0000000E0000000FF000000008000004080
        00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
        000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
        000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
        40006000400080004000A0004000C0004000E0004000FF004000008040004080
        40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
        400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
        400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
        60006000600080006000A0006000C0006000E0006000FF006000008060004080
        60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
        600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
        600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
        80006000800080008000A0008000C0008000E0008000FF008000008080004080
        80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
        800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
        800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
        A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
        A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
        A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
        A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
        C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
        C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
        C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
        C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
        E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
        E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
        E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
        E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
        FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
        FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
        FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
        FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5B5B5949494949494949494
        949494B5B5B5B5B50000B5B5B5B5B5B5B5B50000000000000000000000949494
        B5B5B5B50000B5B5B5B5B5B5B500808080808080808080008400949494B5B5B5
        0000B5B5B5B5B5B5B50080808080808080808000840094949494B5B50000B5B5
        B5B5B5B5008080808080808080800000848400949494B5B50000B5B5B5B5B5B5
        008080808080808080800084848400B5B5B5B5B50000B5B5B5B5B50080808080
        808080808000000000848400B5B5B5B50000B5B5B5B5B5008080808080808080
        8000F8F80084848400B5B5B50000B5B5B5B50080808080808080808000F8F8F8
        0000000000B5B5B50000B5B5B5B500000000000000000000000707F800B5B5B5
        B5B5B5B50000B5B5B5B5B500F8F8F8F8F8F8F8F8F8F8F8F800B5B5B5B5B5B5B5
        0000B5B5B5B5B500F807070707070707070707F800B5B5B5B5B5B5B50000B5B5
        B5B5B500F8F8F8F8F8F8F8F8F8F8F8F800B5B5B5B5B5B5B50000B5B5B5B5B500
        F8070707F80000000000000000B5B5B5B5B5B5B50000B5B5B5B5B5B500F8F8F8
        00B5B5B5B5B5B5B5B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5000000B5B51F04
        040494B5B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5B5B5B5B5B51F04040494B5
        B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5B5B5B51F1F1F04040494949494B5B5
        B5B5B5B50000B5B5B5B5B5B5B5B5B5B504040404040404040494B5B5B5B5B5B5
        0000B5B5B5B5B5B5B5B5B5B5B50404040404040494B5B5B5B5B5B5B50000B5B5
        B5B5B5B5B5B5B5B5B5B5040404040494B5B5B5B5B5B5B5B50000B5B5B5B5B5B5
        B5B5B5B5B5B5B504040494B5B5B5B5B5B5B5B5B50000B5B5B5B5B5B5B5B5B5B5
        B5B5B5B504B5B5B5B5B5B5B5B5B5B5B50000}
      Visible = True
      OnClick = TS_SpeedButton3Click
    end
    inherited btComando1: TTS_SpeedButton
      Hint = 'Fazer ajustes de encargos/diversos'
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Ajustar'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
        33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
        0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
        8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
        0083333333338F38888888F3333333330F000F000083333333338F88838888F3
        333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
        33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
        0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
        88833388F333333333333333330083333333333333333388FF33333333333333
        3330033333333333333333388F33333333333333333303333333333333333333
        8333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      Visible = True
      OnClick = TS_SpeedButton1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Hint = 'Fazer um novo pagamento'
      Caption = 'Novo'
    end
    inherited btGravar: TTS_SpeedButton
      Hint = 'Gravar o pagamento da fatura'
    end
    object btCancelar: TTS_SpeedButton
      Left = 1
      Top = 177
      Width = 116
      Hint = 'Cancelar pagamento de fatura'
      Caption = 'Cancelar'
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00000000000000001300002100002000000F0000000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9000000000000000000
        000000000000000000000000000000B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0000000D04560A0458130D7D130D7D130D7D130D7D0A045803003E000000
        000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B900000000000000000014141414141414
        1414141414000000000000000000000000B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000101D27
        CB00002D1720B11720B11720B11720B11720B11720B100002D1C24C200002A00
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B90000000000009999990000006C6C6C6C6C6C6C6C6C6C6C6C6C6C
        6C6C6C6C0000008B8B8B000000000000B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9FF00FFFF00FFFF00FFFF00FFFF00FF0000000000311D27CB000034FFFFFF
        5D60641720B11720B11720B11720B15D6064B4B5B80000311C24C20000200000
        00FF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B900
        0000000000999999000000FFFFFF6161616C6C6C6C6C6C6C6C6C6C6C6C616161
        FFFFFF0000008B8B8B000000000000B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00
        FFFF00FFFF00FFFF00FFFF00FF0000331D27CB020427FFFFFFFFFFFFFFFFFF00
        00001720B11720B1000000FFFFFFFFFFFF8A8B900000091C24C2000000FF00FF
        FF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B90000009999
        99000000FFFFFFFFFFFFFFFFFF0000006C6C6C6C6C6C000000FFFFFFFFFFFFE0
        E0E00000008B8B8B000000B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FF
        FF00FFFF00FF0000001D27CB000013FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0002
        34000236FFFFFFFFFFFFFFFFFFFFFFFF7E81850000241C24C2000000FF00FFFF
        00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9000000999999000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFBEBE
        BE0000008B8B8B000000B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF
        00FF0000001D27CB11179100001AFFFFFFFFFFFFFFFFFFFFFFFF6D70746B6E73
        FFFFFFFFFFFFFFFFFFFFFFFF0000271C21BB1C21BB000000FF00FFFF00FFFF00
        FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9000000999999363636000000FFFFFFFF
        FFFFFFFFFFFFFFFF8E8E8E8B8B8BFFFFFFFFFFFFFFFFFFFFFFFF000000808080
        808080000000B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FF0000003520
        C91C24C21C24C21720B2000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0000061720B11C24C21C24C23520C9000000FF00FFFF00FFFF00FF
        B9B9B9B9B9B9B9B9B90000009999998B8B8B8B8B8B6C6C6C000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006C6C6C8B8B8B8B8B8B99
        9999000000B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FF0000001D27CB1D27CB
        1D27CB1D27CB10199036393EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF373A
        4010198E1D27CB1D27CB1D27CB1D27CB000023FF00FFFF00FFFF00FFB9B9B9B9
        B9B9B9B9B9000000999999999999999999999999333333000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000003030309999999999999999999999990000
        00B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FF0000001D29D21D29D21D29D21D
        29D21D29D2060D640C0F16FFFFFFFFFFFFFFFFFFFFFFFF818488060D641D29D2
        1D29D21D29D21D29D21D29D200033EFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9
        B9000000A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFC7C7C7000000A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2000000B9B9B9
        B9B9B9B9B9B9FF00FFFF00FFFF00FF0000001F2AD81F2AD81F2AD81F2AD81F2A
        D8070F67818488FFFFFFFFFFFFFFFFFFFFFFFF0C0F16070F671F2AD81F2AD81F
        2AD81F2AD81F2AD8000443FF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9000000
        ADADADADADADADADADADADADADADAD000000C7C7C7FFFFFFFFFFFFFFFFFFFFFF
        FF000000000000ADADADADADADADADADADADADADADAD000000B9B9B9B9B9B9B9
        B9B9FF00FFFF00FFFF00FF0000001F2CDE1F2CDE1F2CDE1F2CDE111C9D373A40
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36393E111C9D1F2CDE1F2CDE1F2C
        DE1F2CDE000026FF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9000000B6B6B6B6
        B6B6B6B6B6B6B6B6474747000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000474747B6B6B6B6B6B6B6B6B6B6B6B6000000B9B9B9B9B9B9B9B9B9FF00
        FFFF00FFFF00FF0000003C27EC202DE9202DE91C27D5000006FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000041C29D7202DE9202DE93C27EC
        000000FF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9000000D5D5D5C7C7C7C7C7
        C7A5A5A5000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000A8A8A8C7C7C7C7C7C7D5D5D5000000B9B9B9B9B9B9B9B9B9FF00FFFF00FF
        FF00FFFF00FF000000202EF4202EF4000234FFFFFFFFFFFFFFFFFFFFFFFF6B6E
        736D7074FFFFFFFFFFFFFFFFFFFFFFFF000024202DE9202EF4000026FF00FFFF
        00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9000000D8D8D8D8D8D8000000
        FFFFFFFFFFFFFFFFFFFFFFFF8B8B8B8E8E8EFFFFFFFFFFFFFFFFFFFFFFFF0000
        00C7C7C7D8D8D8000000B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF
        00FF0000003D2AFC000339808287FFFFFFFFFFFFFFFFFFB5B8BB020953020953
        B7BABCFFFFFFFFFFFFFFFFFFFFFFFF0000213D2AFC000026FF00FFFF00FFFF00
        FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9000000F1F1F1000000C4C4C4FFFFFFFF
        FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        F1F1F1000000B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00
        FF0000312334FF0003398A8B90FFFFFFFFFFFF0000002131FF2131FF000000FF
        FFFFFFFFFFFFFFFF0000003D2AFC000000FF00FFFF00FFFF00FFFF00FFFF00FF
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9000000ECECEC000000E0E0E0FFFFFFFFFF
        FF000000E9E9E9E9E9E9000000FFFFFFFFFFFFFFFFFF000000F1F1F1000000B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FF000000
        110F7C2334FF000339B2B4B7FFFFFFB2BAFF98A4FF98A2FFB2BAFFFFFFFF0000
        000000002334FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9000000141414ECECEC000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000ECECEC000000000000B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000C
        0D6E2334FF0003391723AAFFFFFFFFFFFFFFFFFFFFFFFF313DC43628F33628F3
        000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9000000000000ECECEC000000616161FFFFFFFFFFFFFF
        FFFFFFFFFFAAAAAAE0E0E0E0E0E0000000000000B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        001C24C22334FF2739FF949EFF717EFF2637FF402DFF000000000000FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B90000008B8B8BECECECF1F1F1FFFFFFFFFFFFEEEE
        EEFAFAFA000000000000B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9000000000000000000000000000000000000
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9}
      NumGlyphs = 2
      OnClick = btCancelarClick
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_Bevel2: TTS_Bevel
      Left = 1
      Top = 106
      Width = 116
      Height = 5
      Align = alTop
    end
    object btImprimir: TTS_SpeedButton
      Left = 1
      Top = 144
      Width = 116
      Hint = 'Imprimir Fatura'
      Caption = '&Imprimir'
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
      Visible = False
      OnClick = btImprimirClick
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object btContabilidade: TTS_SpeedButton
      Left = 1
      Top = 210
      Width = 116
      Hint = 'Verificar journal'
      Caption = 'Contabilidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        9E100000424D9E10000000000000360000002800000038000000190000000100
        18000000000068100000C40E0000C40E000000000000000000008000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF80808080808080808080808080
        8080808080808080808080808080808080808080808080BFBFBF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF0000008000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFC0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808080
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FFC0C0C08000FF8000FF8000FF0000000000000000000000
        000000000000000000000000008000FF8000FF8000FF8000FF8000FFBFBFBF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFC0C0C0
        8000FF8000FF8000FF8080808080808080808080808080808080808080808080
        808000FF8000FF8000FF8000FF8000FFBFBFBF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF000000C0C0C0C0C0C08000FF8000FF
        8000FF00FFFF00FFFF00FFFF00FFFF0000008000FF8000FF8000FF8000FFBFBF
        BF000000BFBFBFBFBFBFBFBFBF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF808080C0C0C0C0C0C08000FF8000FF8000FFC0C0C0C0C0C0C0C0C0
        C0C0C08080808000FF8000FF8000FF8000FFBFBFBF808080BFBFBFBFBFBFBFBF
        BF8000FF8000FF8000FF8000FF8000FF8000FF00000000000000000000000000
        0000C0C0C08000FF8000FF0000000000000000000000000000008000FF8000FF
        8000FF000000000000000000000000000000BFBFBFBFBFBF8000FF8000FF8000
        FF8000FF8000FF808080808080808080808080808080C0C0C08000FF8000FF80
        80808080808080808080808080808000FF8000FF8000FF808080808080808080
        808080808080BFBFBFBFBFBF8000FF8000FF8000FF8000FF00FFFF00FFFF00FF
        FF00FFFF00FFFF000000000000C0C0C08000FF8000FF00FFFF000000BFBFBF80
        00FF8000FF8000FF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000BFBFBF
        BFBFBF8000FF8000FF8000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080808080
        80C0C0C08000FF8000FFC0C0C0808080BFBFBF8000FF8000FF8000FFC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0808080808080BFBFBFBFBFBF8000FF000000000000
        0000000000000000000000000000000000000000000000000000008000FF00FF
        FF000000BFBFBF8000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000808080808080808080808080808080808080
        8080808080808080808080808080808000FFC0C0C0808080BFBFBF8000FF8080
        8080808080808080808080808080808080808080808080808080808080808080
        80808000FF000000BFBFBFBFBFBF8000FF0000008000FF8000FF8000FF000000
        8000FF8000FF00FFFF000000BFBFBF8000FF8000FF000000BFBFBFBFBFBF8000
        FF0000008000FF8000FF8000FF0000008000FF8000FF8000FF808080BFBFBFBF
        BFBF8000FF8080808000FF8000FF8000FF8080808000FF8000FFC0C0C0808080
        BFBFBF8000FF8000FF808080BFBFBFBFBFBF8000FF8080808000FF8000FF8000
        FF8080808000FF8000FF8000FF8000FF000000BFBFBF8000FF0000008000FF80
        00FF000000BFBFBF8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF
        000000BFBFBF8000FF0000008000FF8000FF000000BFBFBF8000FF8000FF8000
        FF8000FF808080BFBFBF8000FF8080808000FF8000FF808080BFBFBF8000FF80
        00FFC0C0C0808080BFBFBF8000FF8000FF8000FF808080BFBFBF8000FF808080
        8000FF8000FF808080BFBFBF8000FF8000FF8000FF8000FF000000BFBFBF8000
        FF0000008000FF8000FF000000BFBFBF8000FF8000FF00FFFF000000BFBFBF80
        00FF8000FF8000FF000000BFBFBF8000FF0000008000FF8000FF000000BFBFBF
        8000FF8000FF8000FF8000FF808080BFBFBF8000FF8080808000FF8000FF8080
        80BFBFBF8000FF8000FFC0C0C0808080BFBFBF8000FF8000FF8000FF808080BF
        BFBF8000FF8080808000FF8000FF808080BFBFBF8000FF8000FF8000FF8000FF
        000000BFBFBFBFBFBF0000008000FF8000FF0000008000FF8000FF8000FF00FF
        FF000000BFBFBF8000FF8000FF8000FF000000BFBFBFBFBFBF0000008000FF80
        00FF0000008000FF8000FF8000FF8000FF8000FF808080BFBFBFBFBFBF808080
        8000FF8000FF8080808000FF8000FF8000FFC0C0C0808080BFBFBF8000FF8000
        FF8000FF808080BFBFBFBFBFBF8080808000FF8000FF8080808000FF8000FF80
        00FF8000FF8000FF8000FF000000BFBFBF0000008000FF000000BFBFBF8000FF
        8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF8000FF000000BFBF
        BF0000008000FF000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF80
        8080BFBFBF8080808000FF808080BFBFBF8000FF8000FF8000FFC0C0C0808080
        BFBFBF8000FF8000FF8000FF8000FF808080BFBFBF8080808000FF808080BFBF
        BF8000FF8000FF8000FF8000FF8000FF8000FF000000BFBFBF0000008000FF00
        0000BFBFBF8000FF8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF
        8000FF000000BFBFBF0000008000FF000000BFBFBF8000FF8000FF8000FF8000
        FF8000FF8000FF808080BFBFBF8080808000FF808080BFBFBF8000FF8000FF80
        00FFC0C0C0808080BFBFBF8000FF8000FF8000FF8000FF808080BFBFBF808080
        8000FF808080BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF000000BFBF
        BF000000BFBFBF0000008000FF8000FF8000FF8000FF00FFFF000000BFBFBF80
        00FF8000FF8000FF8000FF000000BFBFBF000000BFBFBF0000008000FF8000FF
        8000FF8000FF8000FF8000FF8000FF808080BFBFBF808080BFBFBF8080808000
        FF8000FF8000FF8000FFC0C0C0808080BFBFBF8000FF8000FF8000FF8000FF80
        8080BFBFBF808080BFBFBF8080808000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF00000000FFFF000000BFBFBF8000FF8000FF8000FF8000FF00FF
        FF000000BFBFBF8000FF8000FF8000FF8000FF8000FF00000000FFFF000000BF
        BFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF808080C0C0C0
        808080BFBFBF8000FF8000FF8000FF8000FFC0C0C0808080BFBFBF8000FF8000
        FF8000FF8000FF8000FF808080C0C0C0808080BFBFBF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF00000000FFFF000000BFBFBF8000FF8000FF
        8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF8000FF8000FF0000
        0000FFFF000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF808080C0C0C0808080BFBFBF8000FF8000FF8000FF8000FFC0C0C0808080
        BFBFBF8000FF8000FF8000FF8000FF8000FF808080C0C0C0808080BFBFBF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF00000000FFFF00000080
        00FF8000FF8000FF8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF
        8000FF8000FF00000000FFFF0000008000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF808080C0C0C08080808000FF8000FF8000FF8000FF80
        00FFC0C0C0808080BFBFBF8000FF8000FF8000FF8000FF8000FF808080C0C0C0
        8080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF0000008000FF8000FF8000FF8000FF8000FF8000FF00FFFF000000BFBFBFBF
        BFBF8000FF8000FF8000FF8000FF8000FF0000008000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8080808000FF8000FF8000
        FF8000FF8000FF8000FFC0C0C0808080BFBFBFBFBFBF8000FF8000FF8000FF80
        00FF8000FF8080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FFC0C0C0000000C0C0C0C0C0C0BFBFBFBFBFBFBFBFBF00FFFF0000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBF
        BFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFC0C0C0808080
        C0C0C0C0C0C0BFBFBFBFBFBFBFBFBFC0C0C0808080808080808080BFBFBFBFBF
        BFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF80
        8080808080808080808080808080808080808080808080808080808080808080
        808080808080808080808080808080808080808080808080808080808080BFBF
        BF8000FF8000FF8000FF8000FF8000FF8000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF0000008000FF8000FF8000FF8000FF8000
        FF8000FF8000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C08080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF0000008000FF8000FF8000FF8000FF8000FF00FFFF00000000000000000080
        00FF8000FF8000FF8000FF8000FF8000FF0000008000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8080808000FF8000FF8000
        FF8000FF8000FFC0C0C08080808080808080808000FF8000FF8000FF8000FF80
        00FF8000FF8080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF00FF
        FF0000008000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FFC0C0C08080808000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF}
      Margin = 8
      NumGlyphs = 2
      ParentFont = False
      OnClick = btContabilidadeClick
      RepeatedClick = False
      Border = True
      Align = alTop
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Tag = -1
    Width = 597
    Height = 48
    HelpContext = -1
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 265
      Caption = 'Fatura do Cart'#227'o de Cr'#233'dito'
      Effect3D.ShadowedColor = 13223591
    end
    inherited lbEstadoForm: TTS_Label
      Top = 22
      Width = 352
      Height = 27
      AutoSize = False
      Caption = 
        'Pagamento da fatura '#224' administradora do cart'#227'o. '#13#10'Ser'#225' gerado um' +
        'a conta a pagar para a administradora do cart'#227'o.'
      WordWrap = True
    end
    inherited lbUpperHint: TTS_Label
      Left = 589
      Height = 48
    end
    object pnCancelado: TdxfLabel
      Left = 311
      Top = -6
      Width = 99
      Height = 50
      AutoSize = False
      Caption = 'Canc.'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6974207
      Font.Height = -32
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      Style = dxfNormal
      Angle = 17
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfRightBottom
      Effect3D.Depth = 3
      Effect3D.ShadowedColor = clBlack
      PenWidth = 1
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 514
    Top = 190
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 561
    Top = 189
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Fatura do Cart'#227'o de Cr'#233'dito'
    OnRefresh = FormsComponentRefresh
    FirstEditField = cmbCartao
  end
  inherited ppmHelp: TTS_PopupMenu
    Top = 160
    inherited Ajuda1: TMenuItem
      HelpContext = 271
    end
  end
  object DlgMsg1: TDlgMsg
    Left = 517
    Top = 234
  end
  object Q_Cartoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT rd.IDDoc, r.Retirada, r.TipoRetirada, r.Data, rd.Favoreci' +
        'doDoc, f.Nome, rd.Valor, rd.iddoc, rd.contapagar, r.historico'
      'FROM Retiradas r'
      
        '                          INNER JOIN RetiradasDoc rd ON r.Retira' +
        'da = rd.Retirada'
      
        '                          INNER JOIN Favorecidos f ON rd.Favorec' +
        'idoDoc = f.Favorecido'
      
        '                          INNER JOIN RetiradasDuplicatas rdd  on' +
        ' r.retirada = rdd.retirada'
      
        '                          INNER JOIN DuplicatasaPagar d on rdd.d' +
        'uplicata = d.id'
      'WHERE  (rd.FormaPagamento =  :FormaPg and'
      '                rd.Status = 7)'
      'Order By  rd.Vencimento'
      '')
    Left = 86
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FormaPg'
        ParamType = ptUnknown
      end>
  end
  object Q_CartoesDs: TDataSource
    DataSet = C_Cartoes
    Left = 86
    Top = 238
  end
  object Q_FaturasAtraso: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select d.ID, d.Titulo, d.Parcela, d.Competencia, (d.Valor-d.Valo' +
        'rPago-d.Descontos-d.CreditoUtilizado) as Valor, d.Vencimento, f.' +
        'Nome , d.fornecedor, d.compra'
      
        'from DuplicatasAPagar d LEFT JOIN Favorecidos f on d.fornecedor ' +
        '= f.Favorecido'
      'where d.status = 3 and d.Fornecedor = :Fornecedor'
      'order by d.vencimento')
    Left = 328
    Top = 173
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Fornecedor'
        ParamType = ptUnknown
      end>
  end
  object Q_FaturasAtrasoDS: TDataSource
    DataSet = C_FaturasAtraso
    Left = 328
    Top = 219
  end
  object C_Cartoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_CartoesProvider'
    Left = 89
    Top = 148
    object C_CartoesRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADAS.RETIRADA'
      Required = True
    end
    object C_CartoesFAVORECIDODOC: TIntegerField
      FieldName = 'FAVORECIDODOC'
      Origin = 'RETIRADASDOC.FAVORECIDODOC'
    end
    object C_CartoesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_CartoesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Origin = 'RETIRADASDOC.IDDOC'
      Required = True
    end
    object C_CartoesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'RETIRADASDOC.VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_CartoesDATA: TDateField
      FieldName = 'DATA'
      Origin = 'RETIRADAS.DATA'
    end
    object C_CartoesTIPORETIRADA: TIntegerField
      FieldName = 'TIPORETIRADA'
      Origin = 'RETIRADAS.TIPORETIRADA'
    end
    object C_Cartoes_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_CartoesCONTAPAGAR: TIntegerField
      FieldName = 'CONTAPAGAR'
      Origin = 'RETIRADASDOC.CONTAPAGAR'
    end
    object C_CartoesHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'RETIRADAS.HISTORICO'
      Size = 80
    end
  end
  object Q_CartoesProvider: TDataSetProvider
    DataSet = Q_Cartoes
    Constraints = True
    Options = [poAllowCommandText]
    Left = 84
    Top = 284
  end
  object C_FaturasAtraso: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Fornecedor'
        ParamType = ptUnknown
      end>
    ProviderName = 'Q_FaturasAtrasoProvider'
    Left = 329
    Top = 124
    object C_FaturasAtrasoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_FaturasAtrasoTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_FaturasAtrasoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_FaturasAtrasoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_FaturasAtrasoVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_FaturasAtrasoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_FaturasAtraso_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_FaturasAtrasoCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_FaturasAtrasoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_FaturasAtrasoCOMPRA: TIntegerField
      FieldName = 'COMPRA'
    end
  end
  object Q_FaturasAtrasoProvider: TDataSetProvider
    DataSet = Q_FaturasAtraso
    Constraints = True
    Options = [poAllowCommandText]
    Left = 328
    Top = 264
  end
  object C_Ajuste: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = C_AjusteNewRecord
    Left = 82
    Top = 338
    object C_AjusteConta: TIntegerField
      FieldName = 'Conta'
    end
    object C_AjusteValor: TFloatField
      FieldName = 'Valor'
      OnChange = C_AjusteValorChange
      DisplayFormat = '###,###,##0.00'
    end
    object C_AjusteDescConta: TStringField
      FieldKind = fkLookup
      FieldName = 'DescConta'
      LookupDataSet = DMFinanceiro.C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'Conta'
      Size = 40
      Lookup = True
    end
    object C_AjusteMemo: TStringField
      FieldName = 'Memo'
      Size = 250
    end
    object C_AjusteID: TIntegerField
      FieldName = 'ID'
    end
  end
  object C_AjusteDS: TDataSource
    DataSet = C_Ajuste
    Left = 150
    Top = 334
  end
  object ppFaturaCartao: TppReport
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
    Left = 281
    Top = 340
    Version = '6.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 56621
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 25665
        mmLeft = 794
        mmTop = 529
        mmWidth = 195527
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Cart'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 38629
        mmWidth = 13229
        BandType = 0
      end
      object lbCartao: TppLabel
        UserName = 'lbCartao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 38894
        mmWidth = 64294
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fatura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 43656
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 48419
        mmWidth = 21960
        BandType = 0
      end
      object lbFatura: TppLabel
        UserName = 'lbFatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 43656
        mmWidth = 64294
        BandType = 0
      end
      object lbVencimento: TppLabel
        UserName = 'lbVencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 48419
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Fatura do Cart'#227'o de Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 67469
        mmTop = 29633
        mmWidth = 65088
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbAtrasado'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1323
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbAtrasado
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
          Left = 336
          Top = 224
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbAtrasado'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Caption = 'Faturas em Atraso'
              Color = 15461355
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              mmHeight = 4233
              mmLeft = 12700
              mmTop = 4233
              mmWidth = 50800
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = '# Invoice'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 35454
              mmTop = 12965
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 12435
              mmTop = 12965
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 62177
              mmTop = 12965
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Favorecido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 86254
              mmTop = 12965
              mmWidth = 16404
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 163513
              mmTop = 12965
              mmWidth = 7938
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 12435
              mmTop = 17463
              mmWidth = 20108
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 35454
              mmTop = 17463
              mmWidth = 25400
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 62177
              mmTop = 17463
              mmWidth = 22490
              BandType = 1
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 86254
              mmTop = 17463
              mmWidth = 66940
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 154517
              mmTop = 17463
              mmWidth = 26723
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 32544
              mmTop = 13759
              mmWidth = 1852
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 60590
              mmTop = 13758
              mmWidth = 1852
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 84402
              mmTop = 13758
              mmWidth = 1852
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 153194
              mmTop = 13758
              mmWidth = 1852
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 181240
              mmTop = 13758
              mmWidth = 1852
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'COMPETENCIA'
              DataPipeline = dbAtrasado
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbAtrasado'
              mmHeight = 4233
              mmLeft = 12171
              mmTop = 265
              mmWidth = 20373
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'TITULO'
              DataPipeline = dbAtrasado
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbAtrasado'
              mmHeight = 4233
              mmLeft = 35454
              mmTop = 265
              mmWidth = 25929
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              DataField = 'VENCIMENTO'
              DataPipeline = dbAtrasado
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbAtrasado'
              mmHeight = 4233
              mmLeft = 62177
              mmTop = 265
              mmWidth = 22754
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'NOME'
              DataPipeline = dbAtrasado
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbAtrasado'
              mmHeight = 4233
              mmLeft = 86519
              mmTop = 265
              mmWidth = 66675
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'VALOR'
              DataPipeline = dbAtrasado
              DisplayFormat = '###,###,##0.0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbAtrasado'
              mmHeight = 4233
              mmLeft = 154517
              mmTop = 265
              mmWidth = 26458
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'VALOR'
              DataPipeline = dbAtrasado
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbAtrasado'
              mmHeight = 4233
              mmLeft = 152400
              mmTop = 265
              mmWidth = 28310
              BandType = 7
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'dbCartoes'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7938
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbCartoes
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
          Left = 352
          Top = 240
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbCartoes'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLabel11: TppLabel
              UserName = 'Label11'
              AutoSize = False
              Caption = 'Compras efetuadas'
              Color = 15461355
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              mmHeight = 4233
              mmLeft = 12700
              mmTop = 6350
              mmWidth = 50800
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = '# Invoice'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 35719
              mmTop = 15081
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 12700
              mmTop = 15081
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 62442
              mmTop = 15081
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'Favorecido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 86519
              mmTop = 15081
              mmWidth = 16404
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label101'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 162719
              mmTop = 15081
              mmWidth = 7938
              BandType = 1
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 12700
              mmTop = 19579
              mmWidth = 20108
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 35719
              mmTop = 19579
              mmWidth = 25400
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 62442
              mmTop = 19579
              mmWidth = 22490
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 86519
              mmTop = 19579
              mmWidth = 65881
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 153459
              mmTop = 19579
              mmWidth = 28046
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 32808
              mmTop = 15875
              mmWidth = 1852
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 60854
              mmTop = 15875
              mmWidth = 1852
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 84667
              mmTop = 15875
              mmWidth = 1852
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 152136
              mmTop = 15875
              mmWidth = 1852
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line101'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 181505
              mmTop = 15875
              mmWidth = 1852
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'DATA'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 12435
              mmTop = 265
              mmWidth = 20373
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'TITULO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 35719
              mmTop = 265
              mmWidth = 25929
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'VENCIMENTO'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 62442
              mmTop = 265
              mmWidth = 22754
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'NOME'
              DataPipeline = dbCartoes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 86784
              mmTop = 265
              mmWidth = 65617
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'VALOR'
              DataPipeline = dbCartoes
              DisplayFormat = '###,###,##0.0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 265
              mmWidth = 27781
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 9260
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'VALOR'
              DataPipeline = dbCartoes
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 151607
              mmTop = 265
              mmWidth = 29369
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'IDDOC'
              DataPipeline = dbCartoes
              DisplayFormat = '#### item(s)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'dbCartoes'
              mmHeight = 4233
              mmLeft = 12700
              mmTop = 265
              mmWidth = 35719
              BandType = 7
            end
          end
        end
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = ppSubReport2
        TraverseAllData = False
        DataPipelineName = 'dbAjuste'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14288
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = dbAjuste
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
          Left = 368
          Top = 256
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'dbAjuste'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 23548
            mmPrintPosition = 0
            object ppLabel17: TppLabel
              UserName = 'Label17'
              AutoSize = False
              Caption = 'Encargos/Outros'
              Color = 15461355
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              mmHeight = 4233
              mmLeft = 12700
              mmTop = 8731
              mmWidth = 50800
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = 'Nome da Conta'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 12700
              mmTop = 18521
              mmWidth = 23283
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 104246
              mmTop = 18521
              mmWidth = 7938
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 12700
              mmTop = 23019
              mmWidth = 83344
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 97896
              mmTop = 23019
              mmWidth = 21431
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 96044
              mmTop = 19315
              mmWidth = 1323
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 119327
              mmTop = 19315
              mmWidth = 1323
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'DescConta'
              DataPipeline = dbAjuste
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbAjuste'
              mmHeight = 4233
              mmLeft = 12435
              mmTop = 265
              mmWidth = 83873
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'Valor'
              DataPipeline = dbAjuste
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbAjuste'
              mmHeight = 4233
              mmLeft = 97367
              mmTop = 265
              mmWidth = 22490
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'Valor'
              DataPipeline = dbAjuste
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbAjuste'
              mmHeight = 4233
              mmLeft = 95250
              mmTop = 265
              mmWidth = 24871
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 26723
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'Resumo'
        Color = 15461355
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 1852
        mmWidth = 50800
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Total da Fatura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 10319
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Compras:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 15081
        mmWidth = 14817
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Encargos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 19844
        mmWidth = 15081
        BandType = 7
      end
      object lbTotalFatura: TppLabel
        UserName = 'lbTotalFatura'
        Caption = 'lbTotalFatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 39423
        mmTop = 10319
        mmWidth = 24077
        BandType = 7
      end
      object lbCompras: TppLabel
        UserName = 'lbCompras'
        Caption = 'lbCompras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 37306
        mmTop = 15081
        mmWidth = 26194
        BandType = 7
      end
      object lbEncargos: TppLabel
        UserName = 'lbEncargos'
        Caption = 'lbEncargos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 19844
        mmWidth = 26458
        BandType = 7
      end
    end
  end
  object dbCartoes: TppDBPipeline
    DataSource = Q_CartoesDs
    UserName = 'dbCartoes'
    Left = 457
    Top = 281
  end
  object dbAtrasado: TppDBPipeline
    DataSource = Q_FaturasAtrasoDS
    UserName = 'dbAtrasado'
    Left = 401
    Top = 305
    object dbAtrasadoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbAtrasadoppField2: TppField
      FieldAlias = 'TITULO'
      FieldName = 'TITULO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object dbAtrasadoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbAtrasadoppField4: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object dbAtrasadoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object dbAtrasadoppField6: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbAtrasadoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object dbAtrasadoppField8: TppField
      FieldAlias = 'COMPETENCIA'
      FieldName = 'COMPETENCIA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object dbAtrasadoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object dbAtrasadoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMPRA'
      FieldName = 'COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
  end
  object dbAjuste: TppDBPipeline
    DataSource = C_AjusteDS
    UserName = 'dbAjuste'
    Left = 513
    Top = 305
    object dbAjusteppField1: TppField
      FieldAlias = 'Conta'
      FieldName = 'Conta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbAjusteppField2: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbAjusteppField3: TppField
      FieldAlias = 'DescConta'
      FieldName = 'DescConta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
end

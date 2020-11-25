inherited FrmTransferenciasAlmox: TFrmTransferenciasAlmox
  Left = 376
  Top = 111
  Width = 725
  Height = 458
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 594
    Height = 377
    inherited btComando1: TTS_SpeedButton
      Caption = '&Imprimir'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Caption = ''
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 343
    end
  end
  inherited pnDados: TTS_Panel
    Width = 594
    Height = 377
    inherited Grid: TTS_QDBGrid
      Width = 592
      Height = 375
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 592
      Height = 375
    end
    inherited sbDados: TTS_Panel
      Width = 592
      Height = 375
      Color = 14019327
      object TS_Label2: TTS_Label
        Left = 23
        Top = 11
        Width = 102
        Caption = 'N'#250'mero:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 23
        Top = 34
        Width = 102
        Caption = 'Data:'
        FocusControl = TS_DBEditDate1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 23
        Top = 55
        Width = 102
        Caption = 'Usu'#225'rio:'
        FocusControl = TS_DBLookupComboBox1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 9
        Top = 87
        Width = 116
        Caption = 'Almoxarifado Origem:'
        FocusControl = dfAlmoxOrigem
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 9
        Top = 109
        Width = 116
        Caption = 'Almoxarifado Destino:'
        FocusControl = dfAlmoxDestino
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 8
        Top = 135
        Width = 128
        Alignment = taLeftJustify
        Caption = 'Itens da Transfer'#234'ncia:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit2: TTS_DBButtonEdit
        Left = 128
        Top = 10
        Width = 95
        TabOrder = 0
        OnKeyPress = TS_DBEdit2KeyPress
        DataField = 'NUMERO'
        DataSource = DMTransferenciasAlmox.C_TabelaDS
        StyleController = DMProjeto.esItens
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000F0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF0087FFFFFFFFFFFF0B3087FFFFFFFFFFF0BB0087FF
              FFFFFFFF0BB3008FFFFFFFFFF0BBB008FFFFFFFFF00BBB007FFFFFFF00BBB007
              FFF0FFFFF00BBB007FF0FFFFFFF00BB007F0FFFFFFFFF00B0070FFFFFFFFFFF0
              00F0FFFFFFFFFFFFFFF0}
            Kind = bkGlyph
          end>
        OnButtonClick = TS_DBEdit2ButtonClick
        Height = 19
        ExistButtons = True
      end
      object TS_DBEditDate1: TTS_DBEditDate
        Left = 128
        Top = 32
        Width = 96
        TabOrder = 1
        DataField = 'DATA'
        DataSource = DMTransferenciasAlmox.C_TabelaDS
        StyleController = DMProjeto.esItens
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
      object TS_DBLookupComboBox1: TTS_DBLookupComboBox
        Left = 128
        Top = 54
        Width = 131
        TabOrder = 2
        DataField = 'lkUsuario'
        DataSource = DMTransferenciasAlmox.C_TabelaDS
        StyleController = DMProjeto.esItens
        DropDownRows = 25
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object dfAlmoxOrigem: TTS_DBLookupComboBox
        Left = 128
        Top = 85
        Width = 216
        TabOrder = 3
        DataField = 'lkAmoxOrigem'
        DataSource = DMTransferenciasAlmox.C_TabelaDS
        StyleController = DMProjeto.esItens
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object dfAlmoxDestino: TTS_DBLookupComboBox
        Left = 128
        Top = 107
        Width = 216
        TabOrder = 4
        DataField = 'lkAlmoxDestino'
        DataSource = DMTransferenciasAlmox.C_TabelaDS
        StyleController = DMProjeto.esItens
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object dbgItens: TTS_QDBGrid
        Left = 5
        Top = 152
        Width = 588
        Height = 205
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'TRANSFALMOXITEM'
        SummaryGroups = <>
        SummarySeparator = '|'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMTransferenciasAlmox.C_TransfAlmoxItensDS
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
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        Anchors = [akLeft, akTop, akRight, akBottom]
        TS_PermitirQuantidade = True
        TS_DescriptionCanChange = False
        TS_AppendOnEnter = True
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
        GroupNodeFont.Style = [fsBold]
        TS_BeforeLocalizar = dbgItensTS_BeforeLocalizar
        TS_AposLocalizar = dbgItensTS_AposLocalizar
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
        TS_AfterNewRecord = dbgItensTS_AfterNewRecord
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'CODIGO'
        TS_ID = 0
        TS_ChaveEstrangeira = 'ITEM'
        TS_TipoItem = '1'
        TS_C_Localizar = DMProjeto.C_LocalizarItens
        TS_ItemColumns = 'Codigo;Descricao;Referencia'
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgItensCODIGO: TdxDBGridButtonColumn
          Caption = 'C'#243'digo'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgItensDESCRICAO: TdxDBGridButtonColumn
          Caption = 'Descri'#231#227'o'
          HeaderAlignment = taCenter
          Width = 181
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAO'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgItensREFERENCIA: TdxDBGridButtonColumn
          Caption = 'Refer'#234'ncia'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REFERENCIA'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgItensUNIDADE: TdxDBGridLookupColumn
          Caption = 'Unidade'
          HeaderAlignment = taCenter
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkUnidade'
        end
        object dbgItensQUANTIDADE: TdxDBGridMaskColumn
          Caption = 'Quantidade'
          DisableCustomizing = True
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QUANTIDADE'
        end
        object dbgItensFATOR: TdxDBGridMaskColumn
          Caption = 'Fator'
          Visible = False
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FATOR'
        end
        object dbgItensITEM: TdxDBGridMaskColumn
          Visible = False
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
        end
        object dbgItensNumeroLote: TdxDBGridPopupColumn
          Caption = 'Lote'
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUMEROLOTE'
          PopupControl = pnLotes
          OnInitPopup = dbgItensNumeroLoteInitPopup
          OnPopup = dbgItensNumeroLotePopup
        end
      end
      object pnLotes: TTS_Panel
        Left = 276
        Top = 236
        Width = 276
        Height = 110
        TabOrder = 6
        Visible = False
        object dbgLotes: TTS_QDBGrid
          Tag = -2
          Left = 1
          Top = 1
          Width = 274
          Height = 108
          HelpContext = -2
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'IDLote'
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnDblClick = dbgLotesDblClick
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
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
          HideSelectionColor = 16116702
          HideSelectionTextColor = clBlack
          HighlightColor = 16116702
          HighlightTextColor = clBlack
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
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
          TS_HideFocusedRect = hfShowAlways
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
          TS_MultiSelection = False
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = [fsBold]
          TS_SelectedColumn = 'NUMEROLOTE'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dxDBGridMaskColumn1: TdxDBGridMaskColumn
            Alignment = taLeftJustify
            Caption = 'N'#250'mero Lote'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 114
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'NUMEROLOTE'
            DisableFilter = True
          end
          object dxDBGridMaskColumn2: TdxDBGridMaskColumn
            Alignment = taLeftJustify
            Caption = 'Validade'
            DisableCustomizing = True
            DisableDragging = True
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'VALIDADE'
            DisableFilter = True
          end
          object dxDBGridMaskColumn3: TdxDBGridMaskColumn
            DisableCustomizing = True
            DisableDragging = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'ITEM'
            DisableFilter = True
          end
          object dxDBGridMaskColumn4: TdxDBGridMaskColumn
            Caption = 'Quantidade'
            DisableCustomizing = True
            DisableDragging = True
            HeaderAlignment = taCenter
            Width = 82
            BandIndex = 0
            RowIndex = 0
            DisableGrouping = True
            FieldName = 'icEstoqueLote'
            DisableFilter = True
          end
        end
      end
      object cbImprimir: TTS_CheckBox
        Left = 15
        Top = 358
        Width = 121
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 7
        Caption = 'Imprimir ao Salvar'
        StyleController = DMProjeto.esItens
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
      object ZRTransferencia: TZReport
        Left = 57
        Top = 23
        Width = 42
        Height = 60
        DataSet = DMTransferenciasAlmox.C_Tabela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options.LineSpacing = zrd16
        Options.AutoHeight = False
        Options.PaperType = zptContinuous
        Options.Acentos = Padrao
        Margins.Left = 1
        Minimized = True
        object zrvlkAmoxOrigem: TZRField
          Format.Width = 30
          DataField = 'lkAmoxOrigem'
          DataSet = DMTransferenciasAlmox.C_Tabela
        end
        object zrvlkAlmoxDestino: TZRField
          Format.Width = 30
          DataField = 'lkAlmoxDestino'
          DataSet = DMTransferenciasAlmox.C_Tabela
        end
        object zrvlkUsuario: TZRField
          Format.Width = 20
          DataField = 'lkUsuario'
          DataSet = DMTransferenciasAlmox.C_Tabela
        end
        object zrvDATA: TZRField
          Format.Width = 10
          DataField = 'DATA'
          DataSet = DMTransferenciasAlmox.C_Tabela
        end
        object zrvNUMERO: TZRField
          Format.Width = 7
          DataField = 'NUMERO'
          DataSet = DMTransferenciasAlmox.C_Tabela
        end
        object ZRTransferenciaGroup: TZRGroup
        end
        object ZRTransferenciaHeader: TZRBand
          Left = 1
          Top = 11
          Width = 40
          Height = 7
          Stretch = False
          BandType = zbtHeader
          object zrNome: TZRLabel
            Left = 0
            Top = 0
            Width = 21
            Height = 1
            FontStyles = [zfsBold]
            Caption = 'zrNomeEmpresa'
          end
          object zrEnd: TZRLabel
            Left = 0
            Top = 1
            Width = 27
            Height = 1
            Caption = 'zrEndereco'
          end
          object zrCid: TZRLabel
            Left = 0
            Top = 2
            Width = 27
            Height = 1
            Caption = 'zrCidade'
          end
          object zrFone: TZRLabel
            Left = 0
            Top = 3
            Width = 27
            Height = 1
            Caption = 'zrFone1'
          end
          object zrLin1: TZRLabel
            Left = 25
            Top = 0
            Width = 14
            Height = 1
            Alignment.X = zawRight
            Caption = 'zrLinha1'
          end
          object zrLin2: TZRLabel
            Left = 28
            Top = 1
            Width = 11
            Height = 1
            Alignment.X = zawRight
            Caption = 'zrLinha2'
          end
          object zrLin3: TZRLabel
            Left = 28
            Top = 2
            Width = 11
            Height = 1
            Alignment.X = zawRight
            Caption = 'zrLinha3'
          end
          object zrLin4: TZRLabel
            Left = 28
            Top = 3
            Width = 11
            Height = 1
            Alignment.X = zawRight
            Caption = 'zrLinha4'
          end
          object ZRTitulo: TZRLabel
            Left = 0
            Top = 5
            Width = 39
            Height = 1
            FontStyles = [zfsBold]
            Alignment.X = zawCenter
            Caption = 'Transfer'#234'ncia entre Almoxarifados'
          end
        end
        object ZRTransferenciaDetail: TZRBand
          Left = 1
          Top = 18
          Width = 40
          Height = 7
          Stretch = False
          BandType = zbtDetail
          object ZRLabel109: TZRLabel
            Left = 1
            Top = 2
            Width = 6
            Height = 1
            Alignment.X = zawRight
            Caption = 'Numero:'
          end
          object ZRLabel110: TZRLabel
            Left = 8
            Top = 2
            Width = 7
            Height = 1
            FontStyles = [zfsBold]
            Variable = zrvNUMERO
          end
          object ZRLabel112: TZRLabel
            Left = 23
            Top = 2
            Width = 16
            Height = 1
            Variable = zrvDATA
          end
          object ZRLabel111: TZRLabel
            Left = 17
            Top = 2
            Width = 5
            Height = 1
            Caption = 'Data:'
          end
          object ZRLabel1: TZRLabel
            Left = 0
            Top = 4
            Width = 8
            Height = 1
            Caption = 'Codigo'
          end
          object ZRLabel2: TZRLabel
            Left = 9
            Top = 4
            Width = 29
            Height = 1
            Caption = 'Descricao'
          end
          object ZRLabel3: TZRLabel
            Left = 9
            Top = 5
            Width = 4
            Height = 1
            Caption = 'Und'
          end
          object ZRLabel11: TZRLabel
            Left = 20
            Top = 5
            Width = 5
            Height = 1
            Caption = 'Fator'
          end
          object ZRLabel4: TZRLabel
            Left = 29
            Top = 5
            Width = 8
            Height = 1
            Alignment.X = zawRight
            Caption = 'Qtd.'
          end
          object ZRLabel5: TZRLabel
            Left = 0
            Top = 6
            Width = 39
            Height = 1
            Caption = '---------------------------------------'
          end
          object ZRLabel113: TZRLabel
            Left = 2
            Top = 0
            Width = 4
            Height = 1
            Alignment.X = zawRight
            Caption = 'De:'
          end
          object ZRLabel116: TZRLabel
            Left = 7
            Top = 0
            Width = 12
            Height = 1
            FontStyles = [zfsBold]
            Variable = zrvlkAmoxOrigem
          end
          object ZRLabel114: TZRLabel
            Left = 20
            Top = 0
            Width = 5
            Height = 1
            Alignment.X = zawRight
            Caption = 'Para:'
          end
          object ZRLabel115: TZRLabel
            Left = 26
            Top = 0
            Width = 13
            Height = 1
            FontStyles = [zfsBold]
            Variable = zrvlkAlmoxDestino
          end
        end
        object ZRTransferenciaSubDetail: TZRSubDetail
          Left = 1
          Top = 25
          Width = 40
          Height = 2
          DataSet = DMTransferenciasAlmox.C_TransfAlmoxItens
          Stretch = False
          MasterIndex = 1
          object zrvQUANTIDADE: TZRField
            Format.Width = 19
            DataField = 'QUANTIDADE'
            DataSet = DMTransferenciasAlmox.C_TransfAlmoxItens
          end
          object zrvFATOR: TZRField
            Format.Width = 10
            DataField = 'FATOR'
            DataSet = DMTransferenciasAlmox.C_TransfAlmoxItens
          end
          object zrvCODIGO: TZRField
            Format.Width = 13
            DataField = 'CODIGO'
            DataSet = DMTransferenciasAlmox.C_TransfAlmoxItens
          end
          object zrvDESCRICAO: TZRField
            Format.Width = 50
            DataField = 'DESCRICAO'
            DataSet = DMTransferenciasAlmox.C_TransfAlmoxItens
          end
          object zrvlkUnidade: TZRField
            Format.Width = 30
            DataField = 'lkUnidade'
            DataSet = DMTransferenciasAlmox.C_TransfAlmoxItens
          end
          object ZRLabel6: TZRLabel
            Left = 0
            Top = 0
            Width = 8
            Height = 1
            Caption = 'ZRLabel6'
            Variable = zrvCODIGO
          end
          object ZRLabel7: TZRLabel
            Left = 9
            Top = 0
            Width = 29
            Height = 1
            Caption = 'ZRLabel6'
            Variable = zrvDESCRICAO
          end
          object ZRLabel8: TZRLabel
            Left = 9
            Top = 1
            Width = 8
            Height = 1
            Caption = 'ZRLabel6'
            Variable = zrvlkUnidade
          end
          object ZRLabel9: TZRLabel
            Left = 20
            Top = 1
            Width = 5
            Height = 1
            Alignment.X = zawRight
            Caption = 'ZRLabel6'
            Variable = zrvFATOR
          end
          object ZRLabel10: TZRLabel
            Left = 29
            Top = 1
            Width = 8
            Height = 1
            Alignment.X = zawRight
            Caption = 'ZRLabel6'
            Variable = zrvQUANTIDADE
          end
        end
        object ZRTransferenciaFooter: TZRBand
          Left = 1
          Top = 27
          Width = 40
          Height = 7
          Stretch = False
          BandType = zbtFooter
          object ZRLabel14: TZRLabel
            Left = 0
            Top = 6
            Width = 39
            Height = 1
            Caption = '---------------------------------------'
          end
          object ZRLabel15: TZRLabel
            Left = 7
            Top = 4
            Width = 23
            Height = 1
            Alignment.X = zawCenter
            Caption = '---------------------------------------'
          end
          object ZRLabel16: TZRLabel
            Left = 7
            Top = 5
            Width = 23
            Height = 1
            Alignment.X = zawCenter
            Variable = zrvlkUsuario
          end
          object ZRLabel12: TZRLabel
            Left = 0
            Top = 0
            Width = 39
            Height = 1
            Caption = '---------------------------------------'
          end
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 592
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 709
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 328
      Caption = 'Tranfer'#234'ncias entre Almoxarifados'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 682
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 455
    Top = 11
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 387
    Top = 65517
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 536
    Top = 65534
  end
  inherited ImgPadrao: TImageList
    Left = 418
    Top = 65527
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Tranfer'#234'ncias entre Almoxarifados'
    OnGravou = FormComponentGravou
    SalvarUnicoRegistro = True
    Left = 471
    Top = 57
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 608
    Top = 13
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 587
    Top = 4
  end
  inherited Beep: TBTBeeper
    Left = 300
    Top = 65525
  end
  inherited FormStorage: TFormStorage
    Left = 499
    Top = 12
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 481
    Top = 300
  end
  object ppTransferencia: TppReport
    AutoStop = False
    DataPipeline = ppDBItens
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
    Left = 262
    Top = 57
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBItens'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 54504
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 21696
        mmTop = 33867
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Numero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 33867
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 38894
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 21696
        mmTop = 38894
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Respons'#225'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 135732
        mmTop = 38894
        mmWidth = 21421
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'lkUsuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 38894
        mmWidth = 40217
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Almox. Destino:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 59267
        mmTop = 38894
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Amox Origem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 61383
        mmTop = 33867
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'lkAmoxOrigem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 85725
        mmTop = 33867
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'lkAlmoxDestino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 85725
        mmTop = 38894
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 48154
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 42598
        mmTop = 47890
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 48154
        mmWidth = 13228
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 48154
        mmWidth = 18255
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Fator'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 150548
        mmTop = 48154
        mmWidth = 8202
        BandType = 0
      end
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 24077
        mmLeft = 1588
        mmTop = 265
        mmWidth = 194205
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1588
        mmLeft = 0
        mmTop = 44715
        mmWidth = 197115
        BandType = 0
      end
      object ppTitulo: TppLabel
        UserName = 'Titulo'
        AutoSize = False
        Caption = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 26988
        mmWidth = 195792
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CODIGO'
        DataPipeline = ppDBItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBItens'
        mmHeight = 3969
        mmLeft = 7408
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'lkUnidade'
        DataPipeline = ppDBItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBItens'
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 529
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'QUANTIDADE'
        DataPipeline = ppDBItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBItens'
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 529
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FATOR'
        DataPipeline = ppDBItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBItens'
        mmHeight = 3969
        mmLeft = 150548
        mmTop = 794
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBItens'
        mmHeight = 3969
        mmLeft = 42598
        mmTop = 529
        mmWidth = 79375
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppDBItens: TppDBPipeline
    DataSource = DMTransferenciasAlmox.C_TransfAlmoxItensDS
    UserName = 'DBItens'
    Left = 440
    Top = 69
  end
  object ppDBTransferencia: TppDBPipeline
    DataSource = DMTransferenciasAlmox.C_TabelaDS
    UserName = 'DBTransferencia'
    Left = 419
    Top = 52
  end
end

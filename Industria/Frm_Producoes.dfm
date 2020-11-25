inherited FrmProducao: TFrmProducao
  Left = 153
  Top = 75
  Width = 1137
  Height = 608
  Caption = 'M'#243'dulo de Ind'#250'stria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 1006
    Height = 527
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 493
    end
  end
  inherited pnDados: TTS_Panel
    Width = 1006
    Height = 527
    inherited Grid: TTS_QDBGrid
      Width = 1004
      Height = 525
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 1004
      Height = 525
    end
    inherited sbDados: TTS_Panel
      Width = 1004
      Height = 525
      object TS_Label2: TTS_Label
        Left = 51
        Top = 20
        Width = 50
        Caption = 'C'#243'digo:'
        FocusControl = df_CODIGO
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 43
        Top = 43
        Width = 57
        Caption = 'Descri'#231#227'o:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 42
        Top = 90
        Width = 57
        Caption = 'Insumo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 6
        Top = 111
        Width = 93
        Caption = 'Custo Produ'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 21
        Top = 135
        Width = 78
        Caption = 'Data In'#237'cio:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 211
        Top = 135
        Width = 57
        Caption = 'Data Fim:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbCliente: TTS_Label
        Left = 48
        Top = 65
        Width = 53
        Height = 13
        Caption = 'Cliente:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 7
        Top = 156
        Width = 93
        Caption = 'Validade:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 37
        Top = 429
        Width = 63
        Height = 20
        Caption = 'Observa'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object df_CODIGO: TTS_DBButtonEdit
        Left = 105
        Top = 17
        Width = 144
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMProducao.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000F0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFF1FFFFFFFFFFFFFFF0FF0087FFFFFFFFF1FF0B3087FFFFFFF0FFF0BB0087FF
              FFF2FFFF0BB3008FFFF1FFFFF0BBB008FFF0FFFFF00BBB007FF0FFFF00BBB007
              FFF3FFFFF00BBB007FF1FFFFFFF00BB007F1FFFFFFFFF00B0070FFFFFFFFFFF0
              00F2FFFFFFFFFFFFFFF1}
            Kind = bkGlyph
          end>
        OnButtonClick = df_CODIGOButtonClick
        Height = 19
        ExistButtons = True
      end
      object df_Descricao: TTS_DBEdit
        Left = 105
        Top = 40
        Width = 298
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMProducao.C_TabelaDS
        MaxLength = 150
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object cmbInsumo: TTS_DBLookupComboBox
        Left = 105
        Top = 86
        Width = 247
        Style.BorderColor = 14859922
        TabOrder = 2
        DataField = 'lkInsumos'
        DataSource = DMProducao.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object df_CustoHora: TTS_DBEditNumber
        Left = 105
        Top = 109
        Width = 86
        Style.BorderColor = 14859922
        TabOrder = 3
        DataField = 'CUSTO'
        DataSource = DMProducao.C_TabelaDS
        StyleController = DMProjeto.esGeral
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
        BeepOnError = False
        Height = 19
        StoredValues = 1
      end
      object TS_DBEditNumber1: TTS_DBEditNumber
        Left = 105
        Top = 154
        Width = 86
        Style.BorderColor = 14859922
        TabOrder = 4
        DataField = 'VALIDADE'
        DataSource = DMProducao.C_TabelaDS
        StyleController = DMProjeto.esGeral
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
        BeepOnError = False
        Height = 19
        StoredValues = 1
      end
      object TS_PageControlInsumos: TTS_PageControl
        Left = 8
        Top = 190
        Width = 997
        Height = 225
        ActivePage = tsTipoMaquina
        Align = alCustom
        OwnerDraw = True
        TabIndex = 0
        TabOrder = 5
        TabFillGradient = False
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
        object tsTipoMaquina: TTS_TabSheet
          Caption = '&Adicionar M'#225'quinas'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_QDBGrid3: TTS_QDBGrid
            Left = 0
            Top = 0
            Width = 989
            Height = 197
            Hint = 
              'Informe no grid as m'#225'quinas necess'#225'rias para produzir o insumo. ' +
              'Lembre-se tamb'#233'm de informar a quantidade e o tempo em minutos q' +
              'ue leva para produzir.'
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'PRODUCAOMAQUINA'
            SummaryGroups = <>
            SummarySeparator = '|'
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmMaquinasIndustria
            TabOrder = 0
            AutoSearchColor = clYellow
            AutoSearchTextColor = clNavy
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMProducao.C_ProducoesMaquinasDS
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
            OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ScrollBars = ssVertical
            TS_PermitirQuantidade = False
            Versoes = 'P,E'
            TS_DescriptionCanChange = False
            TS_GridMenuOptions = []
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
            TS_SelectedColumn = 'lkMaquinasIndustria'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object dxDBGridLookupColumn5: TdxDBGridLookupColumn
              Caption = 'M'#225'quina'
              HeaderAlignment = taCenter
              Sorted = csDown
              Width = 459
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lkMaquinasIndustria'
            end
            object dxDBGridMaskColumn8: TdxDBGridMaskColumn
              Alignment = taCenter
              Caption = 'Quantidade Utilizada'
              HeaderAlignment = taCenter
              Width = 95
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QUANTIDADEUTILIZADA'
            end
            object dxDBGridMaskColumn9: TdxDBGridMaskColumn
              Caption = 'Custo'
              HeaderAlignment = taCenter
              Width = 140
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CUSTO'
            end
            object TS_QDBGrid3Column5: TdxDBGridDateColumn
              Caption = 'Data In'#237'cio'
              HeaderAlignment = taCenter
              Width = 133
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTINICIO'
            end
            object TS_QDBGrid3Column6: TdxDBGridDateColumn
              Caption = 'Data Fim'
              HeaderAlignment = taCenter
              Width = 133
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DTFIM'
            end
          end
        end
        object tsMateriaPrima: TTS_TabSheet
          Caption = '&Adicionar Mat'#233'ria Prima'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_QDBGrid4: TTS_QDBGrid
            Left = 0
            Top = 0
            Width = 989
            Height = 197
            Hint = 
              'Informe no grid as mat'#233'rias primas necess'#225'rias para produzir o i' +
              'nsumo. Lembre-se tamb'#233'm de informar a quantidade.'
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'INSUMOMATERIAPRIMA'
            SummaryGroups = <>
            SummarySeparator = '|'
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = clYellow
            AutoSearchTextColor = clNavy
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMInsumosIndustria.C_InsumosMateriasPrimasDS
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
            OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ScrollBars = ssVertical
            TS_PermitirQuantidade = False
            Versoes = 'P,E'
            TS_DescriptionCanChange = False
            TS_GridMenuOptions = []
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
            TS_SelectedColumn = 'lkMateriaPrima'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object dxDBGridLookupColumn6: TdxDBGridLookupColumn
              Caption = 'Mat'#233'ria Prima'
              HeaderAlignment = taCenter
              Sorted = csDown
              Width = 430
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lkMateriaPrima'
            end
            object dxDBGridMaskColumn10: TdxDBGridMaskColumn
              Alignment = taCenter
              Caption = 'Quantidade'
              HeaderAlignment = taCenter
              Width = 90
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QUANTIDADE'
            end
          end
        end
        object tsInsumos: TTS_TabSheet
          Caption = '&Adicionar Insumos Utilizados'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_QDBGrid5: TTS_QDBGrid
            Left = 0
            Top = 0
            Width = 705
            Height = 197
            Hint = 
              'Informe no grid abaixo os insumos necess'#225'rios para produ'#231#227'o de u' +
              'm novo insumo.'
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'COMPOSICAOINSUMO'
            SummaryGroups = <>
            SummarySeparator = '|'
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            AutoSearchColor = clYellow
            AutoSearchTextColor = clNavy
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMInsumosIndustria.C_ComposicaoInsumosDS
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
            OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ScrollBars = ssVertical
            TS_PermitirQuantidade = False
            Versoes = 'P,E'
            TS_DescriptionCanChange = False
            TS_GridMenuOptions = []
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
            TS_SelectedColumn = 'lkInsumos'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object TS_QDBGrid5Column4: TdxDBGridLookupColumn
              Caption = 'Insumo'
              HeaderAlignment = taCenter
              Sorted = csDown
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lkInsumos'
            end
            object dxDBGridMaskColumn11: TdxDBGridMaskColumn
              Alignment = taCenter
              Caption = 'Quantidade'
              HeaderAlignment = taCenter
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QUANTIDADE'
            end
            object dxDBGridMaskColumn12: TdxDBGridMaskColumn
              Caption = 'Ordem Produ'#231#227'o'
              HeaderAlignment = taCenter
              Width = 96
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ORDEMPRODUCAO'
            end
          end
        end
      end
      object df_Observacao: TTS_DBMemo
        Left = 105
        Top = 426
        Width = 760
        TabOrder = 6
        DataField = 'OBSERVACAO'
        DataSource = DMProducao.C_TabelaDS
        MaxLength = 500
        StyleController = DMProjeto.esFuncionarios
        ScrollBars = ssBoth
        Height = 66
        StoredValues = 2
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 1004
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1121
    inherited lbCaption: TdxfLabel
      Width = 89
      Caption = 'Produ'#231#227'o'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1090
    end
  end
  object dfDataCompra: TTS_DBEditDate [3]
    Left = 106
    Top = 176
    Width = 99
    Style.BorderColor = 14859922
    TabOrder = 3
    TabStop = False
    DataField = 'DTINICIO'
    DataSource = DMProducao.C_TabelaDS
    ReadOnly = False
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
    StoredValues = 64
  end
  object TS_DBEditDate1: TTS_DBEditDate [4]
    Left = 276
    Top = 176
    Width = 99
    Style.BorderColor = 14859922
    TabOrder = 4
    TabStop = False
    DataField = 'DTFIM'
    DataSource = DMProducao.C_TabelaDS
    ReadOnly = False
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
    StoredValues = 64
  end
  object dfUltForn1: TTS_DBEditFavorecido [5]
    Tag = -2
    Left = 106
    Top = 107
    Width = 575
    Hint = 
      'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
      'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
      ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
      ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
      #227'o'
    HelpContext = -2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style.BorderColor = 14859922
    Style.ButtonStyle = btsFlat
    TabOrder = 5
    DataField = 'FAVORECIDO'
    DataSource = DMProducao.C_TabelaDS
    StyleController = DMProjeto.esItens
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
      end>
    Versoes = 'P,E'
    SelecionarVarios = False
    WhereAdicional = 'or favorecido = -9'
    C_Localizar = DMProjeto.C_LocalizarFav
    ID = 0
    ChaveEstrangeira = 'FAVORECIDO'
    Height = 19
    ExistButtons = True
  end
  inherited DlgMsg: TDlgMsg
    Left = 1061
    Top = 418
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 1058
    Top = 311
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 946
    Top = 163
  end
  inherited ImgPadrao: TImageList
    Left = 1063
    Top = 476
  end
  inherited FormComponent: TFormComponent
    Modulo = 'M'#243'dulo de Ind'#250'stria'
    Caption = 'Produ'#231#227'o'
    Left = 1058
    Top = 364
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 947
    Top = 108
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 947
    Top = 53
  end
  inherited Beep: TBTBeeper
    Left = 480
    Top = 16
  end
  inherited FormStorage: TFormStorage
    Left = 544
    Top = 16
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 946
    Top = 212
  end
  object ppmMaquinasIndustria: TTS_PopupMenu
    Left = 684
    Top = 183
    object ExcluirMaquina: TMenuItem
      Caption = 'Excluir M'#225'quina...'
      OnClick = ExcluirMaquinaClick
    end
  end
end

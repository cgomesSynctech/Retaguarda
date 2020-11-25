inherited FrmPromocoes: TFrmPromocoes
  Left = 235
  Top = 149
  Width = 588
  Height = 378
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 457
    Height = 297
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 263
    end
  end
  inherited pnDados: TTS_Panel
    Width = 457
    Height = 297
    inherited Grid: TTS_QDBGrid
      Width = 455
      Height = 295
      KeyField = 'PROMOCAO'
      DataSource = DMPromocoes.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridPROMOCAO: TdxDBGridMaskColumn
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOCAO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Promo'#231#227'o'
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridDATA_INICIAL: TdxDBGridDateColumn
        Caption = 'Inicio'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_INICIAL'
      end
      object GridDATA_FINAL: TdxDBGridDateColumn
        Caption = 'Fim'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_FINAL'
      end
      object GridITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object GridQ_PromocoesItens: TdxDBGridColumn
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Q_PromocoesItens'
      end
      object GridDESCRICAOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 247
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOITEM'
      end
      object GridFECHADA: TdxDBGridMaskColumn
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECHADA'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 455
      Height = 295
    end
    inherited sbDados: TTS_Panel
      Width = 455
      Height = 295
      Color = 14019327
      object TS_Label2: TTS_Label
        Left = 5
        Top = 38
        Width = 91
        Caption = 'T'#237'tulo Promo'#231#227'o:'
        FocusControl = dfTituloPromocao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 5
        Top = 62
        Width = 91
        Caption = 'Data Inicial:'
        FocusControl = dfDataI
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 5
        Top = 86
        Width = 91
        Caption = 'Data Final:'
        FocusControl = dfDataF
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 12
        Top = 121
        Width = 186
        Alignment = taLeftJustify
        Caption = '&Tabelas de Pre'#231'o e Unidades:'
        FocusControl = GridPrecos
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 5
        Top = 14
        Width = 91
        Caption = 'Item:'
        FocusControl = dfItem
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfItem: TTS_DBEditItem
        Left = 98
        Top = 12
        Width = 317
        Hint = 
          '# -> No in'#237'cio do Texto for'#231'a uma pesquisa pelo C'#243'digo. Ex: #123' +
          #13#10'& -> No in'#237'cio do Texto for'#231'a uma pesquisa pela Refer'#234'ncia. Ex' +
          ': &RF1234-567'
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        DataField = 'DESCRICAOITEM'
        DataSource = DMPromocoes.C_TabelaDS
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
            Visible = False
            Width = 17
          end>
        PermitirQuantidade = False
        SelecionarVariosItens = False
        TipoItem = '1,2,3'
        C_Localizar = DMProjeto.C_LocalizarItens
        ID = 0
        OnSelecionou = dfItemSelecionou
        ChaveEstrangeira = 'ITEM'
        Height = 19
        ExistButtons = True
      end
      object dfDataI: TTS_DBEditDate
        Left = 98
        Top = 60
        Width = 86
        TabOrder = 2
        DataField = 'DATA_INICIAL'
        DataSource = DMPromocoes.C_TabelaDS
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
      object dfDataF: TTS_DBEditDate
        Left = 98
        Top = 84
        Width = 86
        TabOrder = 3
        DataField = 'DATA_FINAL'
        DataSource = DMPromocoes.C_TabelaDS
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
      object dfTituloPromocao: TTS_DBPopupEdit
        Left = 98
        Top = 36
        Width = 317
        TabOrder = 1
        AutoSelect = False
        DataField = 'DESCRICAO'
        DataSource = DMPromocoes.C_TabelaDS
        StyleController = DMProjeto.esItens
        PopupControl = lbxTitulos
        PopupFormBorderStyle = pbsSysPanel
        Height = 19
      end
      object cbFechada: TTS_DBCheckBox
        Left = 290
        Top = 64
        Width = 127
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 5
        Alignment = taRightJustify
        Caption = 'Fechar / Suspender Promo'#231#227'o do Item'
        DataField = 'FECHADA'
        DataSource = DMPromocoes.C_TabelaDS
        StyleController = DMProjeto.esItens
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        MultiLine = True
        DisableEdit = False
        Height = 36
        StoredValues = 1
      end
      object GridPrecos: TTS_QDBGrid
        Left = 11
        Top = 138
        Width = 441
        Height = 154
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PROMOCAOITEM'
        SummaryGroups = <>
        SummarySeparator = '|'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = ppmGridPrecos
        TabOrder = 6
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMPromocoes.C_PromocoesItensDS
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
        TS_PermitirQuantidade = False
        TS_DescriptionCanChange = False
        TS_GridMenuOptions = [gmImprimir, gmExportar]
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
        TS_AfterNewRecord = GridPrecosTS_AfterNewRecord
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'lkTabelaDePreco'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object GridPrecosPROMOCAOITEM: TdxDBGridMaskColumn
          Visible = False
          Width = 84
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PROMOCAOITEM'
        end
        object GridPrecoslkTabela: TdxDBGridLookupColumn
          Caption = 'Tabela de Pre'#231'o'
          HeaderAlignment = taCenter
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkTabelaDePreco'
        end
        object GridPrecoslkUnidade: TdxDBGridLookupColumn
          Caption = 'Unidade'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkUnidade'
        end
        object GridPrecosPRECOPROMOCAO: TdxDBGridCalcColumn
          Caption = 'Pre'#231'o Promocional'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRECOPROMOCAO'
        end
        object GridPrecosPrecoTabela: TdxDBGridMaskColumn
          Caption = 'Pre'#231'o de Tabela'
          Color = 15658734
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          TabStop = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PrecoTabela'
        end
        object GridPrecosFechada: TdxDBGridCheckColumn
          Caption = 'Desativar'
          HeaderAlignment = taCenter
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECHADA'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object lbxTitulos: TDBLookupListBox
        Left = 99
        Top = 180
        Width = 315
        Height = 93
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = DMPromocoes.C_DescPromocoesDS
        TabOrder = 4
        Visible = False
        OnDblClick = lbxTitulosDblClick
        OnKeyPress = lbxTitulosKeyPress
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 455
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 572
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 105
      Caption = 'Promo'#231#245'es'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 545
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 301
    Top = 405
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 293
    Top = 404
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 391
    Top = 401
  end
  inherited ImgPadrao: TImageList
    Left = 278
    Top = 401
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'dfItem'
      'dfTituloPromocao'
      'dfDataI'
      'dfDataF')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Promo'#231#245'es'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    FirstEditField = dfItem
    Left = 295
    Top = 0
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 342
    Top = 398
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Top = 402
  end
  inherited FormStorage: TFormStorage
    Left = 96
    Top = 403
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 514
    Top = 258
  end
  object ppmGridPrecos: TTS_PopupMenu
    Left = 304
    Top = 226
  end
end

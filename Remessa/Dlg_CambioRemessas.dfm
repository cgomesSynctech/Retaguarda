inherited DlgCambioRemessas: TDlgCambioRemessas
  Left = 62
  Top = 134
  Width = 699
  Height = 394
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 573
    Height = 317
    Color = 15456728
    object TS_Label1: TTS_Label
      Left = 39
      Top = 29
      Width = 65
      Caption = 'Data:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object edData: TTS_DateTimePicker
      Left = 107
      Top = 27
      Width = 74
      TabOrder = 2
      AutoSize = False
      StyleController = DMProjeto.esRemessa
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
      OnDateChange = edDataDateChange
      Height = 19
      StoredValues = 4
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 179
      Width = 571
      Height = 22
      Align = alBottom
      Color = 15456728
      TabOrder = 4
      object TS_Label2: TTS_Label
        Left = 5
        Top = 2
        Width = 284
        Height = 19
        Alignment = taLeftJustify
        Caption = 'C'#226'mbio Cobrado pelo Agentes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Book Antiqua'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
    end
    object dbgAgentes: TTS_QDBGrid
      Left = 1
      Top = 50
      Width = 571
      Height = 129
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FAVORECIDO'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmAgentes
      TabOrder = 3
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAgentes
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnColumnSorting = dbgAgentesColumnSorting
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
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgAgentesFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgAgentesCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        HeaderGlyph.Data = {
          22020000424D2202000000000000B6000000280000000D0000000D0000000100
          1000030000006C01000000000000000000001000000000000000007C0000E003
          00001F000000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF
          0000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
          0000FFFFFF00388C388C388C388C388C388C388C388C388C388C388C388C388C
          0000388C388C388C388C388C388C388C388C388C388C388C388C388C0000388C
          388C388C388C388C000000000000388C388C388C388C388C0000388C388C388C
          388C388C00001F000000388C388C388C388C388C0000388C388C388C388C388C
          00001F000000388C388C388C388C388C0000388C388C00000000000000001F00
          0000000000000000388C388C0000388C388C00001F001F001F001F001F001F00
          1F000000388C388C0000388C388C00000000000000001F000000000000000000
          388C388C0000388C388C388C388C388C00001F000000388C388C388C388C388C
          0000388C388C388C388C388C00001F000000388C388C388C388C388C0000388C
          388C388C388C388C000000000000388C388C388C388C388C0000388C388C388C
          388C388C388C388C388C388C388C388C388C388C0000388C388C388C388C388C
          388C388C388C388C388C388C388C388C0000}
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstSum
        SummaryFooterField = 'FAVORECIDO'
      end
      object dbgAgentesNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 441
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
    end
    object dbgCambio: TTS_QDBGrid
      Left = 1
      Top = 201
      Width = 571
      Height = 115
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'AGENCIA_CAMBIO'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmCambio
      TabOrder = 5
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsAgenciaCambio
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnColumnSorting = dbgCambioColumnSorting
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
      TS_SelectedColumn = 'cbIndexador'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgCambioAGENCIA_CAMBIO: TdxDBGridMaskColumn
        Visible = False
        Width = 162
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGENCIA_CAMBIO'
      end
      object dbgCambioAGENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGENCIA'
      end
      object dbgCambioINDEXADOR: TdxDBGridMaskColumn
        Visible = False
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDEXADOR'
      end
      object dbgCambiocbIndexador: TdxDBGridLookupColumn
        HeaderAlignment = taCenter
        HeaderGlyph.Data = {
          22020000424D2202000000000000B6000000280000000D0000000D0000000100
          1000030000006C01000000000000000000001000000000000000007C0000E003
          00001F000000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF
          0000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
          0000FFFFFF00388C388C388C388C388C388C388C388C388C388C388C388C388C
          0000388C388C388C388C388C388C388C388C388C388C388C388C388C0000388C
          388C388C388C388C000000000000388C388C388C388C388C0000388C388C388C
          388C388C00001F000000388C388C388C388C388C0000388C388C388C388C388C
          00001F000000388C388C388C388C388C0000388C388C00000000000000001F00
          0000000000000000388C388C0000388C388C00001F001F001F001F001F001F00
          1F000000388C388C0000388C388C00000000000000001F000000000000000000
          388C388C0000388C388C388C388C388C00001F000000388C388C388C388C388C
          0000388C388C388C388C388C00001F000000388C388C388C388C388C0000388C
          388C388C388C388C000000000000388C388C388C388C388C0000388C388C388C
          388C388C388C388C388C388C388C388C388C388C0000388C388C388C388C388C
          388C388C388C388C388C388C388C388C0000}
        Width = 291
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cbIndexador'
      end
      object dbgCambioCAMBIO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMBIO'
      end
      object dbgCambioDATA: TdxDBGridDateColumn
        Visible = False
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgCambioFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
    end
    object dfTipoFav: TTS_DBLookupTipoFav
      Left = 9
      Top = 4
      Width = 95
      Hint = 
        'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
        ' de edi'#231#227'o ao lado.'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      StyleController = DMProjeto.esRemessa
      DropDownRows = 15
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'TIPOFAVORECIDO'
      ListSource = DMProjeto.C_TipoFavDS
      LookupKeyValue = Null
      TipoFavorecido = 7
    end
    object edFavorecido: TTS_EditFavorecido
      Left = 108
      Top = 5
      Width = 292
      Hint = 
        '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
        '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
        'a pelo EIN. Ex: EIN:6719034663'
      Style.ButtonStyle = btsFlat
      TabOrder = 1
      StyleController = DMProjeto.esRemessa
      OnChange = edFavorecidoChange
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
      LookupTipoFav = dfTipoFav
      TipoFavorecido = 7
      C_Localizar = DMProjeto.C_LocalizarFav
      ID = 0
      OnSelecionou = edFavorecidoSelecionou
      Height = 19
      ExistButtons = True
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 573
    Height = 317
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 283
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 691
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 411
      Caption = 'Cadastro/Consulta do C'#226'mbio dos Agentes'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 655
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 307
    Top = 65535
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 458
    Top = 0
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 442
    Top = 56
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Cadastro/Consulta do C'#226'mbio dos Agentes'
    FirstEditField = edFavorecido
    Left = 368
    Top = 0
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 500
    Top = 59
  end
  object Q_Agentes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select favorecido, codigo, nome from favorecidos'
      'where tipofavorecido=7')
    Left = 60
    Top = 142
  end
  object Q_AgenciaCambio: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsMestre
    SQL.Strings = (
      'Select agc.*, agc.agencia as favorecido from agencias_cambio agc'
      'where agencia=:favorecido')
    UpdateObject = upAgenciaCambio
    Left = 301
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
  end
  object C_Agentes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PAgentes'
    Left = 61
    Top = 236
    object C_AgentesFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_AgentesCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_AgentesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object C_AgentesQ_AgenciaCambio: TDataSetField
      FieldName = 'Q_AgenciaCambio'
    end
  end
  object PAgentes: TDataSetProvider
    DataSet = Q_Agentes
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText]
    Left = 60
    Top = 190
  end
  object dsAgentes: TDataSource
    DataSet = C_Agentes
    Left = 60
    Top = 282
  end
  object dsMestre: TDataSource
    DataSet = Q_Agentes
    Left = 184
    Top = 197
  end
  object dsAgenciaCambio: TDataSource
    DataSet = C_CambioAgencia
    Left = 297
    Top = 253
  end
  object C_CambioAgencia: TClientDataSet
    Aggregates = <>
    DataSetField = C_AgentesQ_AgenciaCambio
    Filtered = True
    Params = <>
    BeforeInsert = C_CambioAgenciaBeforeInsert
    OnNewRecord = C_CambioAgenciaNewRecord
    Left = 299
    Top = 193
    object C_CambioAgenciaAGENCIA_CAMBIO: TIntegerField
      FieldName = 'AGENCIA_CAMBIO'
      Required = True
    end
    object C_CambioAgenciaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object C_CambioAgenciaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_CambioAgenciaCAMBIO: TBCDField
      DisplayLabel = 'C'#226'mbio'
      FieldName = 'CAMBIO'
      Precision = 18
      Size = 2
    end
    object C_CambioAgenciaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_CambioAgenciaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_CambioAgenciacbIndexador: TStringField
      DisplayLabel = 'Indexador'
      FieldKind = fkLookup
      FieldName = 'cbIndexador'
      LookupDataSet = C_Indexador
      LookupKeyFields = 'INDEXADOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INDEXADOR'
      Size = 60
      Lookup = True
    end
  end
  object C_Indexador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PIndexador'
    Left = 445
    Top = 281
  end
  object PIndexador: TDataSetProvider
    DataSet = Q_Indexador
    Constraints = True
    Left = 444
    Top = 234
  end
  object Q_Indexador: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INDEXADORES'
      'where indexador > 0'
      'order by descricao')
    Left = 444
    Top = 182
  end
  object ppmAgentes: TTS_PopupMenu
    Left = 380
    Top = 128
  end
  object ppmCambio: TTS_PopupMenu
    Left = 351
    Top = 314
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      OnClick = Incluir1Click
    end
    object Remover1: TMenuItem
      Caption = 'Remover'
      OnClick = Remover1Click
    end
  end
  object upAgenciaCambio: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from agencias_cambio '
      'where'
      '  AGENCIA_CAMBIO = :AGENCIA_CAMBIO')
    ModifySQL.Strings = (
      'update agencias_cambio'
      'set'
      '  AGENCIA_CAMBIO = :AGENCIA_CAMBIO,'
      '  AGENCIA = :AGENCIA,'
      '  INDEXADOR = :INDEXADOR,'
      '  CAMBIO = :CAMBIO,'
      '  DATA = :DATA'
      'where'
      '  AGENCIA_CAMBIO = :OLD_AGENCIA_CAMBIO')
    InsertSQL.Strings = (
      'insert into agencias_cambio'
      '  (AGENCIA_CAMBIO, AGENCIA, INDEXADOR, CAMBIO, DATA)'
      'values'
      '  (:AGENCIA_CAMBIO, :FAVORECIDO, :INDEXADOR, :CAMBIO, :DATA)')
    DeleteSQL.Strings = (
      'delete from agencias_cambio'
      'where'
      '  AGENCIA_CAMBIO = :OLD_AGENCIA_CAMBIO')
    Left = 372
    Top = 178
  end
end

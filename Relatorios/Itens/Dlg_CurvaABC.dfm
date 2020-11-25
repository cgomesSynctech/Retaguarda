inherited DlgCurvaABC: TDlgCurvaABC
  Left = 186
  Top = 99
  Width = 990
  Height = 518
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 861
    Width = 113
    Height = 437
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 403
      Width = 111
    end
    inherited btComando2: TTS_SpeedButton
      Width = 111
      Caption = 'Imprimir Gr'#225'fico'
      Glyph.Data = {
        CA030000424DCA030000000000008A0100002800000018000000180000000100
        08000000000040020000210B0000210B00005500000055000000111111001111
        16001616160016161C001C1C1C00232323002A2A2A0031313100383838004040
        4000484048004848480050505000606060006A6A6A00736A6A006AB66A007373
        7300847B8400848484008F8484008F848F008F8F8F00988F8F00F4A18F00FFAB
        8F00988F980098989800A198980098A19800E0A19800FFB69800A198A100A1A1
        A100ABA1A100D4A1A100E0ABA100F4ABA100FFB6A100FFC0A100ABA1AB00ABAB
        AB00B6ABAB00E0ABAB00E0B6AB00FFC0AB00FFCAAB00B6ABB600B6B6B600C0B6
        B600E0B6B600E0C0B600FFCAB600B6B6C000C0B6C000C0C0C000CAC0C000EAC0
        C000EACAC000FFD4C000CAC0CA00CACACA00D4CACA00F4D4CA00FFD4CA00FFE0
        CA00CAF4CA00CACAD400CAD4D400D4D4D400E0D4D400EAD4D400D4E0D400E0E0
        D400FFE0D400FFEAD400E0E0E000EAE0E000FFEAE000EAEAEA00FFF4EA00F4F4
        F400FFF4F400FF00FF00FFFFFF00535353535353535353535353535353535353
        53535353535353535353535353531B361B1353531B3D3E291B53535353535353
        535353531B305151291B090B0E1B31464C3D21535353535353531B224C54544F
        221C070004060B0E1B374C4517535353531B45545251524F2121120C07040204
        060B11165353531637515151514C301B13161B211C130D090502061453535316
        4F514F452917213D2116141314172121160E0C14535353164C3E2216223D454C
        4C3D30221B161413161B2116535353161C16293D453D3D4D51514F4C3D372921
        1716141353535316293D3D3D3D3D4C51302F37454C4C453D3730291653535316
        3D3D3D3D3D4551291D10211B1B29303D45453D1B5353535329453D3D4C4C2129
        4F424F4C25291C171B292921535353535321303D301B315151514F4C4C4C453D
        3717165353535353535353142945371B30454C4C4C4C4C453022535353535353
        5353531B5151452929303D3D3D3D301B225353535353535353535353474A4140
        3F3F3F47464530535353535353535353535353532C4A403B342D26261F395353
        5353535353535353535353532C4A403B342D261F185353535353535353535353
        53535353334A403B342D261F18535353535353535353535353535353334A403B
        342D261F25535353535353535353535353535353334A403B342D262525535353
        5353535353535353535353324E4A403B342D2725535353535353535353535353
        53535333504A413B3434252553535353535353535353535353532333322C2C24
        241E255353535353535353535353}
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Width = 111
      Caption = 'Atribuir ABC'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
        33333333777777733333333330CCC03333333333F7777733F3333330330C0330
        33333337337773373333333333303333333333F33337333333F3303333333333
        3033373333333333373333333333333333333F3333333333333F033333333333
        3303733333333333337333333333333333333F3333333333333F033333333333
        3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
        B70377777F333377777F09990333330BBB0377777F333377777F099903333307
        B70377777F3333777773099903333330003377777F3333377733000003333330
        3333777773F3F3F7333333333030303333333333373737333333}
      NumGlyphs = 2
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 111
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 111
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 111
      Visible = False
    end
    object TS_Shape1: TTS_Shape
      Left = 12
      Top = 85
      Width = 17
      Height = 17
      Brush.Color = clRed
      Transparent = False
    end
    object TS_Label3: TTS_Label
      Left = 37
      Top = 85
      Width = 44
      Caption = 'Classe A'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape2: TTS_Shape
      Left = 12
      Top = 113
      Width = 17
      Height = 17
      Brush.Color = clYellow
      Transparent = False
    end
    object TS_Label4: TTS_Label
      Left = 37
      Top = 114
      Width = 44
      Caption = 'Classe B'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label5: TTS_Label
      Left = 37
      Top = 143
      Width = 44
      Caption = 'Classe C'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape3: TTS_Shape
      Left = 12
      Top = 142
      Width = 17
      Height = 17
      Brush.Color = clBlue
      Transparent = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 974
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 357
      Caption = 
        'Curva que estabelece a ordem de prioridade A, B ou C dos itens v' +
        'endidos.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1039
    end
    inherited lbCaption: TdxfLabel
      Width = 264
      AutoSize = True
      Caption = 'Classifica'#231#227'o ABC dos Itens'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 861
    Height = 437
    Color = 14019327
    object Chart1: TChart
      Left = 1
      Top = 31
      Width = 859
      Height = 221
      Legend.Visible = False
      PrintProportional = False
      Title.CustomPosition = True
      Title.Left = 272
      Title.Text.Strings = (
        'Classifica'#231#227'o ABC dos Itens')
      Title.Top = 9
      BottomAxis.Title.Caption = 'Item'
      LeftAxis.Title.Caption = 'Freq'#252#234'ncia Cumulativa %'
      Align = alTop
      TabOrder = 0
      PrintMargins = (
        14
        35
        16
        39)
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'CurvaABC'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object dbgABC: TTS_QDBGrid
      Left = 1
      Top = 252
      Width = 859
      Height = 181
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmGrid
      TabOrder = 1
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ABCDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnCustomDrawCell = dbgABCCustomDrawCell
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
      TS_SelectedColumn = 'INDICE'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgABCITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgABCIndex: TdxDBGridMaskColumn
        Caption = '#'
        HeaderAlignment = taCenter
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDICE'
      end
      object dbgABCDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Item'
        HeaderAlignment = taCenter
        Width = 238
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgABCQTD: TdxDBGridCurrencyColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgABCPRECO: TdxDBGridCurrencyColumn
        Caption = 'Pre'#231'o Unit'#225'rio'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgABCTOTAL: TdxDBGridMaskColumn
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        EditMask = '0.00;-0.00'
      end
      object dbgABCFreq: TdxDBGridMaskColumn
        Caption = 'Frequ'#234'ncia Cumulativa %'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FREQ'
        EditMask = '0.00;-0.00'
      end
      object dbgABCClass: TdxDBGridColumn
        Caption = 'ABC'
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASSE'
      end
    end
    object RxSplitter1: TRxSplitter
      Left = 1
      Top = 433
      Width = 859
      Height = 3
      ControlFirst = Chart1
      ControlSecond = dbgABC
      Align = alBottom
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 859
      Height = 30
      Align = alTop
      TabOrder = 3
      object TS_Label1: TTS_Label
        Left = 9
        Top = 8
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 136
        Top = 7
        Width = 15
        Alignment = taCenter
        Caption = #224
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataI: TTS_DateTimePicker
        Left = 55
        Top = 5
        Width = 78
        TabOrder = 0
        OnExit = edDataIExit
        AutoSize = False
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
        Date = -700000
        DateOnError = deToday
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object edDataF: TTS_DateTimePicker
        Left = 151
        Top = 5
        Width = 81
        TabOrder = 1
        OnExit = edDataFExit
        AutoSize = False
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
        Date = -700000
        DateOnError = deToday
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Classifica'#231#227'o ABC dos Itens'
    Left = 209
    Top = 218
  end
  object Q_ABC: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.item, i.descricao, sum(si.quantidade) as qtd, avg(pp.pr' +
        'eco) as preco,'
      'sum(si.quantidade)*avg(pp.preco) as total'
      'from itens i'
      'left join saidasitens si on i.item = si.item'
      'left join produtospreco pp on i.item = pp.item'
      'where '
      'si.saida in '
      
        '(select saida from saidas where data between :datai and :dataf a' +
        'nd'
      'tipopadrao = 1)'
      'and (pp.tabelapreco = 0 and pp.preco > 0)'
      ''
      'and i.tipoitem = 1'
      'group by i.item, i.descricao'
      'order by 5 desc')
    Left = 404
    Top = 320
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end>
  end
  object C_ABC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end>
    ProviderName = 'P_ABC'
    Left = 328
    Top = 329
    object C_ABCITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ABCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ABCQTD: TFloatField
      FieldName = 'QTD'
    end
    object C_ABCPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
    object C_ABCTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_ABCINDICE: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'INDICE'
    end
    object C_ABCFREQ: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'FREQ'
    end
    object C_ABCCLASSE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLASSE'
      Size = 1
    end
  end
  object P_ABC: TDataSetProvider
    DataSet = Q_ABC
    Constraints = True
    Left = 448
    Top = 325
  end
  object C_ABCDS: TDataSource
    DataSet = C_ABC
    Left = 540
    Top = 325
  end
  object ppmGrid: TTS_PopupMenu
    Left = 87
    Top = 376
  end
  object ChartPreviewer1: TChartPreviewer
    Chart = Chart1
    Left = 31
    Top = 229
  end
  object Q_Atualiza: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 246
    Top = 358
  end
end

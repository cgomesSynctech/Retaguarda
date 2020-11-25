inherited DlgCalculoCusto: TDlgCalculoCusto
  Left = 300
  Top = 140
  Width = 957
  Height = 530
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 823
    Height = 449
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 415
    end
    inherited btComando2: TTS_SpeedButton
      Top = 156
      Caption = 'Imprimir Relat'#243'rio'
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Top = 118
      Caption = 'Cancelar C'#225'lculos'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 79
      Height = 34
      Caption = '&Aplicar Pre'#231'os'
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 113
    end
    object TS_Bevel2: TTS_Bevel
      Left = 1
      Top = 35
      Width = 116
      Height = 5
      Align = alTop
      Versoes = 'S,P,E'
    end
    object TS_Bevel3: TTS_Bevel
      Left = 1
      Top = 151
      Width = 116
      Height = 5
      Align = alTop
      Versoes = 'S,P,E'
    end
    object TS_Label3: TTS_Label
      Left = 37
      Top = 203
      Width = 76
      Alignment = taLeftJustify
      Caption = 'Pre'#231'o Menor'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape1: TTS_Shape
      Left = 12
      Top = 203
      Width = 17
      Height = 17
      Brush.Color = clRed
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 12
      Top = 231
      Width = 17
      Height = 17
      Brush.Color = clOlive
      Transparent = False
    end
    object TS_Label4: TTS_Label
      Left = 37
      Top = 232
      Width = 60
      Alignment = taLeftJustify
      Caption = 'Pre'#231'o Igual'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape3: TTS_Shape
      Left = 12
      Top = 260
      Width = 17
      Height = 17
      Brush.Color = clBlue
      Transparent = False
    end
    object TS_Label5: TTS_Label
      Left = 37
      Top = 261
      Width = 68
      Alignment = taLeftJustify
      Caption = 'Pre'#231'o Maior'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_SpeedButton1: TTS_SpeedButton
      Left = 1
      Top = 40
      Width = 116
      Height = 34
      Caption = '&Novo'
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000000000FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE00
        0000000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF000000000000AFFBFF000000000000000000FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE0000000000
        00FFFFFF000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000000000000000AFFBFFAFFBFFAFFBFF0000000000000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE000000000000000000FFFFFF
        FFFFFFFFFFFF000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000000161513000000AFFBFFAFFBFFAFFBFFAFFBFFAFFBFF000000161513
        000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000001615
        13161513000000AFFBFFAFFBFFA8FBFFA8FBFFA8FBFFA8FBFFAFFBFF00000016
        1513000000FF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAE000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000
        000000AFFBFFAFFBFFA8FBFFA8FBFFA8FBFFA8FBFFB1FBFFAEFBFFA3FBFF0000
        00000000000000FF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAE000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000AEAEAEAEAEAEAEAEAEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000B3FBFFB3FBFFB3FBFF48
        5A59425251A8FBFFA8FBFFA8FBFFA8FBFFACFBFFACFBFFA3FBFFA3FBFF000000
        000000FF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE0000
        00000000FFFFFFFFFFFFFFFFFF2B2B2B171717FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000AEAEAEAEAEAEAEAEAEFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF292E2DB3FBFFB3FBFFB3FBFFB3FBFF77979E65AE
        AD385655A8FBFFA8FBFFA8FBFFA8FBFFAAFBFFA3FBFFA3FBFF000000FF00FFFF
        00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE000000FFFFFF
        FFFFFFFFFFFFFFFFFFCDCDCDCACACA0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000AEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF
        00FFFF00FF000000000000B3FBFFB3FBFFB9FBFFB6FCFF9FD6DF56908F76D5D8
        1E60D898DCDFABFBFFA8FBFFA5FBFFA3FBFF000000000000FF00FFFF00FFFF00
        FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8C8C8CFFFFFFA2A2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000AEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FFFF00
        FF161514BFF6FFBBF9FFB3FBFFB3FBFFB1FBFFAEFBFF51818439C6E51E60D82F
        4E6CA6FBFFA3FBFFA3FBFFA3FBFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF727272DBDBDBA2A2A2202020FFFFFFFFFFFFFFFFFFFFFFFF000000AE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FF000000000000
        B7FCFFB4FBFFB2FBFFAEFBFFACFBFFACFBFF89B1C138C9D73BDAEF1E60D8537B
        7E9EFBFFA3FBFF000000161513FF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAE
        AEAEAEAEAEAEAEAE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC4C4C4ECECECA2A2A26C6C6CFFFFFFFFFFFF000000000000AEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF00FF1A1B19B4FBFFB2FBFFAF
        FBFFADFBFFACFBFFACFBFFAAFBFFA8FBFF45696C3CE0F11E60D81B46965A8D8F
        A3FBFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAE
        AEAEAEAE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F
        3F3FEFEFEFA2A2A23F3F3F8E8E8EFFFFFF000000AEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEFF00FFFF00FFFF00FF000000000000AFFBFFADFBFFACFBFFACFB
        FFAAFBFFA8FBFFA5FBFFA3FBFFA3FBFF23667641EDF21F67D9182D5200000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAE000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D1D
        1DF7F7F7A5A5A5000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEFF00FFFF00FFFF00FF161513ACFBFFACFBFFACFBFFABFBFFA9FBFFA5FBFF
        A3FBFFA0FBFF9EFBFF9AFAFF5B90923AD4E134C3ED1E60D8292E2DFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAE000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494D5D5D5
        DEDEDEA2A2A2000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00
        FFFF00FF000000272F2EACFBFFABFBFFA9FBFFA6FBFFA4FBFFA0FBFF9EFBFF9B
        FAFF99FAFF95FAFF93FAFF304E533BDEF134C3ED1E60D8000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFAEAEAEAEAEAE000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000EFEFEFDE
        DEDEA2A2A2000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FFFF00FF
        4F4E4DA3FBFFAAFBFFA6FBFFA4FBFFA1FBFF9FFBFF9BFAFF99FAFF96FAFF94FA
        FF91FAFF8FFAFF8CFAFF26798E3BD8EF216CDA19325FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFAEAEAEAEAEAE232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF454545ECECECA8A8
        A8000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FF000000364646A8
        FBFFA5FBFFA1FBFF9FFBFF9CFAFF9AFAFF96FAFF94FAFF92FAFF90FAFF8DFAFF
        8CFAFF8CFAFF26798E3BD8EF3BD8EF1E61D85A606AFF00FFFF00FFFF00FFFF00
        FFFF00FFAEAEAE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF454545ECECECECECECA2A2A2
        5B5B5BAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEFF00FF000000A3FBFFA3FBFFA0FB
        FF9CFAFF9AFAFF97FAFF95FAFF92FAFF90FAFF8EFAFF8CFAFF8CFAFF8CFAFF8C
        FAFF1A1B1926798E3EE6F12889CE1B499E000000FF00FFFF00FFFF00FFFF00FF
        AEAEAE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000454545F2F2F2A2A2A24A4A4A00
        0000AEAEAEAEAEAEAEAEAEAEAEAE161513191A18A3FBFF9EFBFF9BFAFF97FAFF
        95FAFF93FAFF91FAFF8EFAFF8CFAFF8CFAFF8CFAFF88FAFF8CFAFF0000000000
        003F3D282D99AE4ECBDDC58A5F1E2731FF00FFFF00FFFF00FFFF00FF00000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000007A7A7AECECECE3E3E3000000AEAE
        AEAEAEAEAEAEAEAEAEAEFF00FF1615131615130000009FFBFF9FFBFF97FAFF8C
        FAFF8CFAFF91FAFF8CFAFF89FAFF87FAFF83F9FF8CFAFF161513FF00FFFF00FF
        3F3D28C58A5FC58A5F666666000000FF00FFFF00FFFF00FFAEAEAE0000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000AEAEAEAEAEAE000000E3E3E3E3E3E3676767000000AEAEAE
        AEAEAEAEAEAEFF00FFFF00FFFF00FF0000001615131615138CFAFF8CFAFF8CFA
        FF8CFAFF8CFAFF8CFAFF82F9FF88FAFF000000272F2EFF00FFFF00FFFF00FF3F
        3D28666666666666896D92000000FF00FFFF00FFAEAEAEAEAEAEAEAEAE000000
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000AEAEAEAEAEAEAEAEAE000000676767676767AEAEAE000000AEAEAEAE
        AEAEFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000008CFAFF91FAFF
        91FAFF91FAFF8CFAFF88FAFF223130FF00FFFF00FFFF00FFFF00FF0000000000
        009C5DAF9C5DAF000000FF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000AEAEAE
        AEAEAEAEAEAEAEAEAE000000000000C1C1C1C1C1C1000000AEAEAEAEAEAEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000016151316151391FAFF8C
        FAFF8CFAFF000000223130FF00FFFF00FFFF00FFFF00FFFF00FF0000009C5DAF
        9C5DAF000000FF02FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AE000000000000000000FFFFFFFFFFFFFFFFFF000000000000AEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAE000000C1C1C1C1C1C1000000B0B0B0AEAEAEFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1615131615131615138CFA
        FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF
        00FFFF00FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAE000000000000000000FFFFFF000000AEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAE000000000000AEAEAEAEAEAEAEAEAEFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF161513161513191A18
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAE000000000000000000AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE}
      NumGlyphs = 2
      OnClick = TS_SpeedButton1Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_Bevel4: TTS_Bevel
      Left = 1
      Top = 74
      Width = 116
      Height = 5
      Align = alTop
      Versoes = 'S,P,E'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 941
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 170
      Caption = 'Informe os itens a serem aplicados.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 913
    end
    inherited lbCaption: TdxfLabel
      Width = 249
      AutoSize = True
      Caption = 'C'#225'lculo do Pre'#231'o de Custo'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 823
    Height = 449
    Color = 14019327
    object lbItem: TTS_Label
      Left = 12
      Top = 50
      Width = 85
      Height = 13
      Caption = 'Escolher Produto:'
      FocusControl = dfItem
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbAproveitarProdutos: TTS_Label
      Left = 540
      Top = 50
      Width = 101
      Height = 13
      Cursor = crHandPoint
      Caption = 'Aproveitar Produtos'
      FocusControl = dfItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbAproveitarProdutosClick
      FormatoTabela = False
      LinkToResult = 0
    end
    object dbgCalcPreco: TTS_QDBGrid
      Left = 1
      Top = 66
      Width = 821
      Height = 382
      Bands = <
        item
          Caption = 'Dados Cadastrados'
          Fixed = bfLeft
          Width = 266
        end
        item
          Caption = 'Dados Percentuais'
        end
        item
          Caption = 'Dados da Nota Fiscal'
          Width = 273
        end
        item
          Caption = 'C'#225'lculo Atual'
        end
        item
          Caption = 'C'#225'lculo Novo'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'CALCULOCUSTO'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alBottom
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
      DataSource = C_CalculoPrecoDS
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
      OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      OnCustomDrawCell = dbgCalcPrecoCustomDrawCell
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
      TS_ShowSelectionColumn = True
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgCalcPrecoCALCULOCUSTO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CALCULOCUSTO'
      end
      object dbgCalcPrecoCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgCalcPrecoDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgCalcPrecoFabricante: TdxDBGridColumn
        Caption = 'Fabricante'
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgCalcPrecoFATOR: TdxDBGridMaskColumn
        Caption = 'Fator'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATOR'
      end
      object dbgCalcPrecoUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgCalcPrecoPERCENTUAL: TdxDBGridCurrencyColumn
        Caption = '% Pr. Vd.'
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PERCENTUAL'
        DisplayFormat = ',0.00;-,0.00'
        MaxValue = 999999999
        Nullable = False
      end
      object dbgCalcPrecoPERCENTUALMINIMO: TdxDBGridCurrencyColumn
        Caption = '% Pr. M'#237'n.'
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PERCENTUALMINIMO'
        DisplayFormat = ',0.00;-,0.00'
        MaxValue = 999999999
        Nullable = False
      end
      object dbgCalcPrecoPRECOMANUND: TdxDBGridCurrencyColumn
        Caption = 'Pr. Man.'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 48
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PRECOMANUND'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgCalcPrecoPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o Compra'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 2
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgCalcPrecoFRETE: TdxDBGridCurrencyColumn
        Caption = '% Frete'
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 2
        RowIndex = 0
        FieldName = 'FRETE'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgCalcPrecoIPI: TdxDBGridCurrencyColumn
        Caption = '% IPI'
        HeaderAlignment = taCenter
        Width = 34
        BandIndex = 2
        RowIndex = 0
        FieldName = 'IPI'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgCalcPrecoICMSCOMPRA: TdxDBGridCurrencyColumn
        Caption = 'ICMS Cmpr.'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 2
        RowIndex = 0
        FieldName = 'ICMSCOMPRA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgCalcPrecoICMSVENDA: TdxDBGridCurrencyColumn
        Caption = 'ICMS Vnd.'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 2
        RowIndex = 0
        FieldName = 'ICMSVENDA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgCalcPrecoITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgCalcPrecoSTATUS: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
      end
      object dbgCalcPrecoicPrecoCustoAtual: TdxDBGridColumn
        Caption = 'Pre'#231'o Custo'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icPrecoCustoAtual'
      end
      object dbgCalcPrecoicPrecoMinAtual: TdxDBGridColumn
        Caption = 'Pre'#231'o M'#237'n.'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icPrecoMinAtual'
      end
      object dbgCalcPrecoicPrecoVendaAtual: TdxDBGridColumn
        Caption = 'Pre'#231'o Venda'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icPrecoVendaAtual'
      end
      object dbgCalcPrecoicPrecoCustoNovo: TdxDBGridColumn
        Caption = 'Pre'#231'o Custo'
        HeaderAlignment = taCenter
        BandIndex = 4
        RowIndex = 0
        FieldName = 'icPrecoCustoNovo'
      end
      object dbgCalcPrecoicPrecoMinNovo: TdxDBGridColumn
        Caption = 'Pre'#231'o M'#237'n.'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 4
        RowIndex = 0
        FieldName = 'icPrecoMinNovo'
      end
      object dbgCalcPrecoicPrecoVendaNovo: TdxDBGridColumn
        Caption = 'Pre'#231'o Venda'
        HeaderAlignment = taCenter
        BandIndex = 4
        RowIndex = 0
        FieldName = 'icPrecoVendaNovo'
      end
      object dbgCalcPrecoPRECOMANUAL: TdxDBGridCurrencyColumn
        Caption = 'Pre'#231'o Manual'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 4
        RowIndex = 0
        FieldName = 'PRECOMANUAL'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
    end
    object dfItem: TTS_EditItem
      Left = 103
      Top = 46
      Width = 421
      Hint = 
        'Para abrir o cadastro, pressione a tecla F7.'#13'# -> No in'#237'cio do T' +
        'exto for'#231'a uma pesquisa pelo C'#243'digo. Ex: #123'#13'& -> No in'#237'cio do ' +
        'Texto for'#231'a uma pesquisa pela Refer'#234'ncia. Ex: &RF1234-567'
      Style.ButtonStyle = btsFlat
      TabOrder = 1
      Anchors = []
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
          Width = 17
        end>
      PermitirQuantidade = False
      SelecionarVariosItens = True
      TipoItem = '1,2'
      C_Localizar = DMProjeto.C_LocalizarItens
      ID = 0
      OnSelecionou = dfItemSelecionou
      Height = 19
      ExistButtons = True
    end
    object TS_PanelCorner1: TTS_PanelCorner
      Left = 1
      Top = 1
      Width = 821
      Height = 38
      Align = alTop
      Color = 14019327
      TabOrder = 2
      BoxWithShadow = False
      object TS_Label1: TTS_Label
        Left = 0
        Top = 10
        Width = 123
        Caption = 'Planilhas Pendentes:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object sbPesquisar: TTS_SpeedButton
        Left = 282
        Top = 8
        Width = 19
        Height = 17
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000014000000130000000100
          1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBEBEBCA3
          A6A4E1E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2AEAA5858629F7A856762
          5FD9DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BA6B2308AEB636CACAB838B696461
          D8DADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBAE1FF42B9FF348BEA636FADA9828B6C6763D7
          D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFB7DEFD44B9FF358CEB6370AEA781896E6865D8DA
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB6DDFD45B9FF358EEC6470AE997986A2A09FFBFEFF
          D0D4D6B2B5B7ADB0B2C3C5C6F3F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEB6DDFD45B9FF358FEE6C728B737372907B7CA27C71B0
          8E80C19F9389706C6D6567BFC2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEACDBFFA9D0E8A49F9EB98D85F5D2A7FFFCCAFFFFD8FFFF
          DCFFFEDBCAADA25F4F51C2C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFCFBC79E97FEDDAFFFF9C6FFFDCBFFFFDBFFFFE7FFFFFA
          FFFFFFC6A89C615B5DF8F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE7DADEEBC19EFFF5C1FFE9B5FFFECFFFFFE0FFFFF3FFFFFEFFFFFBFF
          FFDA745554D2D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DCC4C3FAE3B7FFE3AFFFE7B3FFFECDFFFFDEFFFFECFFFFF1FFFFE6FFFFDDA585
          75BABDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC1BAFC
          F0C3FFDAA6FFE0AEFFF7C3FFFFD4FFFFDEFFFFE1FFFFDBFFFFD6B9937EBDC0C3
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D0D2F7E3B6FFF4
          CBFFE0B2FFE6B3FFF8C4FFFDCCFFFFCFFFFDC9FFFDCA9C7468DADEE0FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDF1E1BEA2FFFFF5FFFBF5
          FFDEB3FFE7B5FFE4B0FFE5B1FFF8C4F4D1A5937B7EFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDABDBBE8D6D0FFFFFFFFF7D8FF
          E3B2FFE1ADFFF9C5FEDDAEAA7B73E0E3E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BCBBCFAD98F3E2B7FFF0BCFDEA
          B9E6B998B88E8AE4E6E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F6CDB5BACEB3B8E1C7CCE5DCE0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbPesquisarClick
        RepeatedClick = False
        Border = False
      end
      object dfxAtencao: TdxfLabel
        Left = 331
        Top = 3
        Width = 341
        Height = 20
        AutoSize = False
        Caption = 'Nova Planilha de Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfFun
        Effect3D.Orientation = dxfLeftTop
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = 9027548
        PenWidth = 1
      end
      object lcbSelecionou: TTS_LookupComboBox
        Left = 124
        Top = 8
        Width = 157
        TabOrder = 0
        StyleController = DMProjeto.esItens
        ClearKey = 32
        ListFieldName = 'DATACALCULOCUSTO'
        KeyFieldName = 'DATACALCULOCUSTO'
        ListSource = C_SelecaoDs
        LookupKeyValue = Null
        Height = 19
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 678
    Top = 286
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 692
    Top = 333
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 699
    Top = 265
  end
  inherited Beep: TBTBeeper
    Left = 757
    Top = 234
  end
  inherited FormStorage: TFormStorage
    Left = 724
    Top = 9
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'C'#225'lculo do Pre'#231'o de Custo'
    FirstEditField = dfItem
    Left = 738
    Top = 290
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 642
    Top = 17
  end
  object Q_CalculoPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  i.codigo, i.descricao, f.descricao as Fabricante,'
      
        'cc.calculocusto, cc.item, cc.unidade, cc.precocompra, cc.frete, ' +
        'cc.ipi, cc.icmscompra, cc.icmsvenda, cc.status, iu.fator, cc.per' +
        'centual, iu.precomanual as precomanund, cc.percentualminimo, cc.' +
        'precomanual, cc.DATACALCULOCUSTO'
      'from calculoscustos cc'
      'inner join itens i on cc.item = i.item'
      
        'inner join itensunidades iu on iu.item = cc.item and iu.unidade ' +
        '= cc.unidade'
      'left Join fabricantes f on f.fabricante = i.fabricante'
      'where  CC.DATACALCULOCUSTO = :DATACALCULOCUSTO'
      'order by f.descricao, i.descricao'
      '')
    UpdateObject = U_CalculoPreco
    Left = 35
    Top = 281
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATACALCULOCUSTO'
        ParamType = ptUnknown
      end>
  end
  object P_CalculoPreco: TDataSetProvider
    DataSet = Q_CalculoPreco
    Constraints = True
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh]
    Left = 105
    Top = 347
  end
  object C_CalculoPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CalculoPreco'
    OnCalcFields = C_CalculoPrecoCalcFields
    OnNewRecord = C_CalculoPrecoNewRecord
    Left = 174
    Top = 357
    object C_CalculoPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
      OnChange = C_CalculoPreco_icSelecionadoChange
    end
    object C_CalculoPrecoCALCULOCUSTO: TIntegerField
      FieldName = 'CALCULOCUSTO'
      Required = True
    end
    object C_CalculoPrecoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_CalculoPrecoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_CalculoPrecoFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object C_CalculoPrecoPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      OnChange = C_CalculoPrecoPRECOCOMPRAChange
    end
    object C_CalculoPrecoFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object C_CalculoPrecoIPI: TBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 2
    end
    object C_CalculoPrecoICMSCOMPRA: TBCDField
      FieldName = 'ICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_CalculoPrecoICMSVENDA: TBCDField
      FieldName = 'ICMSVENDA'
      Precision = 18
      Size = 2
    end
    object C_CalculoPrecoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_CalculoPrecoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_CalculoPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_CalculoPrecoFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_CalculoPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 3
    end
    object C_CalculoPrecoPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
    object C_CalculoPrecoPRECOMANUND: TBCDField
      FieldName = 'PRECOMANUND'
      Precision = 18
      Size = 3
    end
    object C_CalculoPrecoPRECOMANUAL: TBCDField
      FieldName = 'PRECOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_CalculoPrecoDATACALCULOCUSTO: TDateField
      FieldName = 'DATACALCULOCUSTO'
    end
    object C_CalculoPrecoicPrecoCustoNovo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoCustoNovo'
    end
    object C_CalculoPrecoicPrecoMinNovo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoMinNovo'
    end
    object C_CalculoPrecoicPrecoVendaNovo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoVendaNovo'
    end
    object C_CalculoPrecoicPrecoCustoAtual: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoCustoAtual'
    end
    object C_CalculoPrecoicPrecoMinAtual: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoMinAtual'
    end
    object C_CalculoPrecoicPrecoVendaAtual: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoVendaAtual'
    end
  end
  object U_CalculoPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from calculoscustos '
      'where'
      '  CALCULOCUSTO = :CALCULOCUSTO')
    ModifySQL.Strings = (
      'update calculoscustos'
      'set'
      '  ITEM = :ITEM,'
      '  UNIDADE = :UNIDADE,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  FRETE = :FRETE,'
      '  IPI = :IPI,'
      '  ICMSCOMPRA = :ICMSCOMPRA,'
      '  ICMSVENDA = :ICMSVENDA,'
      '  STATUS = :STATUS,'
      '  PRECOMANUAL = :PRECOMANUAL,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  PERCENTUALMINIMO = :PERCENTUALMINIMO,'
      '  DATACALCULOCUSTO = :DATACALCULOCUSTO'
      'where'
      '  CALCULOCUSTO = :OLD_CALCULOCUSTO')
    InsertSQL.Strings = (
      'insert into calculoscustos'
      '  (CALCULOCUSTO, ITEM, UNIDADE, PRECOCOMPRA, FRETE, IPI, '
      'ICMSCOMPRA, ICMSVENDA, STATUS, '
      'PRECOMANUAL,PERCENTUAL,PERCENTUALMINIMO, DATACALCULOCUSTO)'
      'values'
      '  (:CALCULOCUSTO, :ITEM, :UNIDADE, :PRECOCOMPRA, :FRETE, :IPI, '
      ':ICMSCOMPRA, :ICMSVENDA, '
      '   :STATUS, :PRECOMANUAL,:PERCENTUAL,:PERCENTUALMINIMO, '
      ':DATACALCULOCUSTO)')
    DeleteSQL.Strings = (
      'delete from calculoscustos'
      'where'
      '  CALCULOCUSTO = :OLD_CALCULOCUSTO')
    Left = 261
    Top = 253
  end
  object C_CalculoPrecoDS: TDataSource
    DataSet = C_CalculoPreco
    Left = 277
    Top = 329
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 72
    Top = 136
  end
  object Q_Selecao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  Distinct cast(cc.DataCalculoCusto as Varchar(10))'
      ' as DATACALCULOCUSTO,  cc.DATACALCULOCUSTO as Data'
      'from calculoscustos cc'
      'WHERE cc.DataCalculoCusto >= (CURRENT_DATE - 120)'
      'Order by cc.DataCalculoCusto desc')
    Left = 554
    Top = 193
  end
  object P_Selecao: TDataSetProvider
    DataSet = Q_Selecao
    Constraints = True
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh]
    Left = 554
    Top = 245
  end
  object C_Selecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Selecao'
    OnCalcFields = C_CalculoPrecoCalcFields
    OnNewRecord = C_CalculoPrecoNewRecord
    Left = 552
    Top = 299
    object C_SelecaoDATACALCULOCUSTO: TStringField
      FieldName = 'DATACALCULOCUSTO'
      Size = 18
    end
    object C_SelecaoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object C_SelecaoDs: TDataSource
    DataSet = C_Selecao
    Left = 554
    Top = 353
  end
end

inherited RptVendaVendedor: TRptVendaVendedor
  Left = 105
  Top = 112
  Width = 858
  Height = 585
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 842
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 399
      Caption = 'Vendas por Vendedor - Ultimos 12 Meses.'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 816
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 789
    end
  end
  inherited pnGrid: TPanel
    Width = 789
    Height = 509
    inherited pnDados: TTS_Panel
      Width = 789
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 35
        Top = 4
        Width = 51
        Caption = 'Vendedor:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 523
        Top = 4
        Width = 81
        Height = 15
        Caption = 'Tipo Opera'#231#227'o :'
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object Aanime: TAnimate
        Left = 3
        Top = 2
        Width = 23
        Height = 20
        Active = False
        AutoSize = False
        Color = 16116702
        CommonAVI = aviFindComputer
        ParentColor = False
        StopFrame = 8
        Visible = False
      end
      object FiltroItens: TTS_PopupFiltrarItens
        Left = 390
        Top = 2
        Width = 125
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
        TS_TipoEstoque = 0
        TS_FornecedorSelecionado = 0
        TS_FornPrefSelecionado = 0
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_PossuiEstoque = False
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        TS_ItemAlterado = False
        Height = 19
      end
      object peTipoOperacao: TTS_PopupEdit
        Left = 616
        Top = 2
        Width = 170
        TabOrder = 2
        Visible = False
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        LookupKeyValue = 0
        Height = 19
      end
      object dfFavorecido: TTS_EditFavorecido
        Left = 88
        Top = 2
        Width = 277
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 3
        StyleController = DMProjeto.esClientes
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
        SelecionarVarios = False
        TipoFavorecido = 3
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = dfFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 789
      Height = 311
      KeyField = 'CODIGO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Codigo'
              SummaryFormat = '>Codigo=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'Mes_01'
              SummaryFormat = '>Mes_01=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_02'
              SummaryFormat = '>Mes_02=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_03'
              SummaryFormat = '>Mes_03=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_04'
              SummaryFormat = '>Mes_04=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_05'
              SummaryFormat = '>Mes_05=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_06'
              SummaryFormat = '>Mes_06=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_07'
              SummaryFormat = '>Mes_07=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_08'
              SummaryFormat = '>Mes_08=###,##0.00'
              SummaryType = cstSum
            end
            item
              ColumnName = 'dbgConsultaMES_09'
              SummaryField = 'Mes_09'
              SummaryFormat = '>Mes_09=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_10'
              SummaryFormat = '>Mes_10=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_11'
              SummaryFormat = '>Mes_11=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mes_12'
              SummaryFormat = '>Mes_12=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Total'
              SummaryFormat = '>Total=###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'Codigo;Count'
        'Mes_01;Sum'
        'Mes_02;Sum'
        'Mes_03;Sum'
        'Mes_04;Sum'
        'Mes_05;Sum'
        'Mes_06;Sum'
        'Mes_07;Sum'
        'Mes_08;Sum'
        'Mes_09;Sum'
        'Mes_10;Sum'
        'Mes_11;Sum'
        'Mes_12;Sum'
        'Total;Sum')
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'Codigo'
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Nome Cliente'
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaTotal: TdxDBGridCurrencyColumn
        Caption = 'Total'
        HeaderAlignment = taRightJustify
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_01: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_01'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_02: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_02'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_03: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_03'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_04: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_04'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_05: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_05'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_06: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_06'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_07: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_07'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_08: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_08'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_09: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_09'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_10: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_10'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_11: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_11'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
      object dbgConsultaMES_12: TdxDBGridCurrencyColumn
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES_12'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '#,###,##0.00'
        Nullable = False
        NullString = '0.00'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 333
      Width = 789
      Height = 176
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
      object grafico: TChart
        Left = 0
        Top = 0
        Width = 789
        Height = 176
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.StartColor = 12615680
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        LeftWall.Brush.Style = bsClear
        LeftWall.Brush.Image.Data = {
          07544269746D61707E000000424D7E000000000000003E000000280000001000
          0000100000000100010000000000400000000000000000000000020000000200
          000000000000FFFFFF00AAAA000055550000AAAA000055550000AAAA00005555
          0000AAAA000055550000AAAA000055550000AAAA000055550000AAAA00005555
          0000AAAA000055550000}
        Legend.LegendStyle = lsSeries
        Legend.Visible = False
        MarginBottom = 10
        MarginLeft = 0
        MarginRight = 0
        MarginTop = 10
        Title.AdjustFrame = False
        Title.Text.Strings = (
          'Acompanhamento')
        Chart3DPercent = 5
        DepthAxis.Axis.Color = 33023
        DepthAxis.Grid.Color = clGreen
        DepthAxis.Visible = True
        LeftAxis.AxisValuesFormat = '#,##0.00'
        LeftAxis.LabelsFont.Color = clNavy
        LeftAxis.LabelsFont.Shadow.Color = 10485760
        LeftAxis.LabelStyle = talValue
        LeftAxis.RoundFirstLabel = False
        MaxPointsPerPage = 20
        View3DOptions.OrthoAngle = 50
        View3DOptions.Zoom = 97
        View3DOptions.ZoomText = False
        Align = alClient
        Color = clWhite
        TabOrder = 1
        DesignSize = (
          789
          176)
        PrintMargins = (
          15
          40
          15
          40)
        object lbFechar: TTS_Label
          Left = 686
          Top = 2
          Width = 103
          Cursor = crHandPoint
          Anchors = [akLeft, akRight]
          Caption = 'Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = lbFecharClick
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label4: TTS_Label
          Left = 600
          Top = 2
          Width = 147
          Cursor = crHandPoint
          Anchors = [akLeft, akRight]
          Caption = 'Totalizar Grafico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label4Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object Series1: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsPercentTotal
          Marks.Visible = False
          SeriesColor = clMaroon
          Title = 'Acompanhamento'
          LinePen.Color = clMaroon
          LinePen.Width = 2
          LinePen.EndStyle = esFlat
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object ChartTool1: TPageNumTool
          Active = False
          Text = 'Page %d of %d'
        end
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 509
    inherited btSair: TTS_SpeedButton
      Top = 464
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  object clbTipoOperacao: TTS_CheckListBox [3]
    Left = 588
    Top = 78
    Width = 150
    Height = 123
    BorderStyle = bsNone
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    KeyField = 'TIPOMOVIMENTO'
    ListField = 'DESCRICAO'
    Transparent = False
  end
  inherited DlgMsg: TDlgMsg
    Left = 629
    Top = 309
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 689
    Top = 311
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select f.favorecido,f.codigo,f.nome,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      '   extract(month from s.data) = extract(month from current_date)'
      
        '   and extract(year from s.data) = extract(year from current_dat' +
        'e)'
      
        '   and s.vendedor = :Vendedor and s.favorecido = f.favorecido  a' +
        'nd s.tipopadrao = 1)  as Mes_01,'
      
        ' (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  s' +
        'aidas s left join saidasitens si on s.saida = si.saida where s.t' +
        'ipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-1))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-1))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_02,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-2))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-2))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_03,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-3))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-3))'
      
        '   and s.vendedor = :Vendedor and s.favorecido = f.favorecido  a' +
        'nd s.tipopadrao = 1)  as Mes_04,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-4))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-4))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_05,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-5))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-5))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_06,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-6))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-6))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_07,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-7))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-7))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_08,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-8))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-8))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_09,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-9))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-9))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_10,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-10))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-10))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_11,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      
        '     extract(month from s.data) = extract(month from addmonth(cu' +
        'rrent_date,-11))'
      
        '     and extract(year from s.data) = extract(year from addmonth(' +
        'current_date,-11))'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Mes_12 ,'
      
        '  (select sum(si.quantidade*(si.preco-si.rateiodesconto)) from  ' +
        'saidas s left join saidasitens si on s.saida = si.saida where s.' +
        'tipomovimento in :TipoMov and '
      '     s.data >= addmonth(current_date,-11)'
      
        '     and s.vendedor = :Vendedor and s.favorecido = f.favorecido ' +
        ' and s.tipopadrao = 1)  as Total  '
      'from favorecidos f'
      'where  f.vendedor = :Vendedor')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TipoMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vendedor'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    AfterGetRecords = C_ConsultaAfterGetRecords
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaMES_01: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_01'
    end
    object C_ConsultaMES_02: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_02'
    end
    object C_ConsultaMES_03: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_03'
    end
    object C_ConsultaMES_04: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_04'
    end
    object C_ConsultaMES_05: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_05'
    end
    object C_ConsultaMES_06: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_06'
    end
    object C_ConsultaMES_07: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_07'
    end
    object C_ConsultaMES_08: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_08'
    end
    object C_ConsultaMES_09: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_09'
    end
    object C_ConsultaMES_10: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_10'
    end
    object C_ConsultaMES_11: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_11'
    end
    object C_ConsultaMES_12: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MES_12'
    end
    object C_ConsultaTOTAL: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 39223.4317162153
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Vendas por Vendedor - Ultimos 12 Meses.'
    Left = 533
    Top = 212
  end
  object Q_Vendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select f.favorecido, f.nome from  favorecidos f'
      'where f.tipofavorecido = 3  and f.cargo = 2'
      'Order by f.nome')
    Left = 584
    Top = 112
  end
  object P_Vendedor: TDataSetProvider
    DataSet = Q_Vendedor
    Constraints = True
    Options = [poAllowCommandText]
    Left = 587
    Top = 167
  end
  object C_Vendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedor'
    Left = 586
    Top = 222
    object C_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_VendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_VendedorDs: TDataSource
    DataSet = C_Vendedor
    Left = 585
    Top = 279
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select TIPOMOVIMENTO, DESCRICAO from TIPOSMOVIMENTO where   TIPO' +
        'PADRAO in (1,2) order by DESCRICAO')
    Left = 712
    Top = 117
    object Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object Q_TiposMovimentosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object P_TiposMovimentos: TDataSetProvider
    DataSet = Q_TiposMovimentos
    Constraints = True
    Left = 712
    Top = 174
  end
  object C_TiposMovimentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOMOVIMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'P_TiposMovimentos'
    StoreDefs = True
    Left = 712
    Top = 230
    object C_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object C_TipoMovimentoDS: TDataSource
    DataSet = C_TiposMovimentos
    Left = 712
    Top = 286
  end
end

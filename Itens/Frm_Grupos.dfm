inherited FrmGrupos: TFrmGrupos
  Left = 285
  Top = 122
  Width = 645
  Height = 531
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 522
    Height = 461
    inherited btComando1: TTS_SpeedButton
      Caption = 'Aplicar '#205'ndices'#13#10'Aos Itens do Grupo'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 427
      ActiveControlNil = True
    end
  end
  inherited pnDados: TTS_Panel
    Width = 522
    Height = 461
    inherited Grid: TTS_QDBGrid
      Width = 520
      Height = 459
      KeyField = 'GRUPO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object Grid_icSelecionado: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridGRUPO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridDESCRICAOGRUPO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 213
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object GridTIPOITEM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object GridIMPORTACAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPORTACAO'
      end
      object GridcmbTipo: TdxDBGridLookupColumn
        Caption = 'Tipo Item'
        HeaderAlignment = taCenter
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cmbTipo'
      end
      object GridFOTO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 1497
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FOTO'
      end
      object GridCOMISSAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object GridDESCONTOMAXIMO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 520
      Height = 459
    end
    inherited sbDados: TTS_Panel
      Width = 520
      Height = 459
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 12
        Top = 33
        Width = 86
        Height = 17
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 12
        Top = 13
        Width = 86
        Height = 17
        Caption = 'C'#243'digo:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 12
        Top = 55
        Width = 86
        Height = 17
        Caption = 'Tipo:'
        FocusControl = TS_DBLookupComboBox1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 10
        Top = 74
        Width = 88
        Caption = 'Grupo Pai:'
        FocusControl = lcbGrupoPai
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBButtonEdit
        Left = 101
        Top = 11
        Width = 110
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMGrupos.C_TabelaDS
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
        ClickKey = 13
        OnButtonClick = TS_DBEdit1ButtonClick
        Height = 18
        ExistButtons = True
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 101
        Top = 31
        Width = 268
        TabOrder = 1
        DataField = 'DESCRICAOGRUPO'
        DataSource = DMGrupos.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBLookupComboBox1: TTS_DBLookupComboBox
        Left = 101
        Top = 52
        Width = 268
        TabOrder = 2
        DataField = 'cmbTipo'
        DataSource = DMGrupos.C_TabelaDS
        StyleController = DMProjeto.esItens
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object DBEdit1: TDBEdit
        Left = 389
        Top = 84
        Width = 15
        Height = 19
        DataField = 'TIPOITEM'
        DataSource = DMGrupos.C_TabelaDS
        TabOrder = 4
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 180
        Top = 74
        Width = 10
        Height = 19
        DataField = 'icComissao'
        DataSource = DMGrupos.C_TabelaDS
        TabOrder = 5
        Visible = False
        OnChange = DBEdit2Change
      end
      object DBEdit3: TDBEdit
        Left = 373
        Top = 73
        Width = 10
        Height = 19
        DataField = 'icDescontoMaximo'
        DataSource = DMGrupos.C_TabelaDS
        TabOrder = 6
        Visible = False
        OnChange = DBEdit2Change
      end
      object DBEdit4: TDBEdit
        Left = 475
        Top = 129
        Width = 10
        Height = 19
        DataField = 'icFatorLucro'
        DataSource = DMGrupos.C_TabelaDS
        TabOrder = 7
        Visible = False
        OnChange = DBEdit2Change
      end
      object TS_PageControl1: TTS_PageControl
        Left = 0
        Top = 117
        Width = 520
        Height = 342
        ActivePage = tsFiscal
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        OwnerDraw = True
        TabIndex = 1
        TabOrder = 8
        TabWidth = 150
        ActivePageIndex = 1
        Transparent = False
        TabColor = 9027548
        TabColorActive = 14019327
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
        object tsPrincipal: TTS_TabSheet
          Caption = #205'ndices para Pre'#231'o de Venda'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label43: TTS_Label
            Left = 35
            Top = 72
            Width = 91
            Caption = 'Custo Adicional:'
            Color = 9027548
            FocusControl = dfCustoAdic
            ParentColor = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbFatorLucro: TTS_Label
            Left = 11
            Top = 173
            Width = 115
            Caption = 'Percentual de Lucro:'
            Color = 9027548
            FocusControl = dfLucro
            ParentColor = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Shape36: TTS_Shape
            Left = 294
            Top = 166
            Width = 167
            Height = 19
            Brush.Color = 12315135
            Pen.Color = 16744448
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label79: TTS_Label
            Left = 311
            Top = 168
            Width = 50
            Caption = 'Fator:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_DBText12: TTS_DBText
            Left = 366
            Top = 168
            Width = 75
            Height = 14
            DataField = 'icFator'
            DataSource = DMGrupos.C_TabelaDS
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
            EditOffSet.x = 0
            EditOffSet.y = 0
          end
          object TS_Label77: TTS_Label
            Left = 13
            Top = 92
            Width = 113
            Caption = 'Despesas Fixas:'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label86: TTS_Label
            Left = -9
            Top = 113
            Width = 135
            Caption = 'Encargos Cart'#245'es:'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label5: TTS_Label
            Left = 235
            Top = 117
            Width = 262
            Height = 44
            Alignment = taLeftJustify
            Caption = 
              '* O percentual da tabela de pre'#231'o informado no grupo do item sup' +
              'lantar'#225' aquele informado diretamente na tabela de pre'#231'o no momen' +
              'to do c'#225'lculo do pre'#231'o de venda baseado no pre'#231'o padr'#227'o.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label4: TTS_Label
            Left = 11
            Top = 195
            Width = 115
            Caption = 'Impostos Federais:'
            Color = 9027548
            ParentColor = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label8: TTS_Label
            Left = 11
            Top = 216
            Width = 115
            Caption = 'Menor Valor Compra:'
            Color = 9027548
            ParentColor = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label11: TTS_Label
            Left = 23
            Top = 54
            Width = 103
            Caption = 'Aliquota de ICMS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 30
            Top = 12
            Width = 95
            Caption = 'Redu'#231#227'o CST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label13: TTS_Label
            Left = 21
            Top = 32
            Width = 103
            Caption = 'TVA Substitui'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 8
            Top = 241
            Width = 410
            Height = 13
            Alignment = taLeftJustify
            AutoSize = True
            Caption = 
              'Separe por ";" os quatros  primeiros digitos dos NCM para direci' +
              'onar para este Grupo:'
            Color = 9027548
            ParentColor = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbComissao: TTS_Label
            Left = 38
            Top = 134
            Width = 88
            Caption = 'Comiss'#227'o:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbDescMax: TTS_Label
            Left = 18
            Top = 154
            Width = 108
            Caption = 'Desconto M'#225'ximo:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfLucro: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 172
            Width = 91
            HelpContext = -2
            TabOrder = 8
            DataField = 'FATORLUCRO'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfCustoAdic: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 70
            Width = 91
            HelpContext = -2
            TabOrder = 3
            DataField = 'CUSTODESPESAS'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            NumericRange = nrAmbos
            Height = 19
            StoredValues = 1
          end
          object dbgTabelasGrupos: TTS_QDBGrid
            Left = 232
            Top = 10
            Width = 267
            Height = 103
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'TABELAGRUPO'
            SummaryGroups = <>
            SummarySeparator = '|'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmTabelasGrupos
            TabOrder = 12
            AutoSearchColor = clYellow
            AutoSearchTextColor = clNavy
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMGrupos.C_TabelasGruposDS
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
            TS_SelectedColumn = 'lkTabelaPreco'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object dbgTabelasGruposTABELAGRUPO: TdxDBGridMaskColumn
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TABELAGRUPO'
            end
            object dbgTabelasGruposGRUPO: TdxDBGridMaskColumn
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRUPO'
            end
            object dbgTabelasGruposTABELAPRECO: TdxDBGridMaskColumn
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TABELAPRECO'
            end
            object dbgTabelasGruposlkTabelaPreco: TdxDBGridLookupColumn
              Caption = 'Tabela Pre'#231'o'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'lkTabelaPreco'
            end
            object dbgTabelasGruposPERCENTUAL: TdxDBGridCurrencyColumn
              Caption = 'Percentual *'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PERCENTUAL'
              DisplayFormat = ',0.00 %;-,0.00 %'
              Nullable = False
            end
          end
          object dfDespesasFixas: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 90
            Width = 91
            HelpContext = -2
            TabOrder = 4
            DataField = 'DESPESASFIXAS'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            NumericRange = nrAmbos
            Height = 19
            StoredValues = 1
          end
          object dfEncargosCartoes: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 111
            Width = 91
            HelpContext = -2
            TabOrder = 5
            DataField = 'ENCARGOSCARTOES'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            NumericRange = nrAmbos
            Height = 19
            StoredValues = 1
          end
          object dfMenorValorVenda: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 213
            Width = 91
            HelpContext = -2
            TabOrder = 10
            DataField = 'MENORVALORVENDA'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfAliqICMS: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 49
            Width = 91
            HelpContext = -2
            TabOrder = 2
            DataField = 'ALIQICMS'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object TS_DBEReducao: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 9
            Width = 91
            HelpContext = -2
            TabOrder = 0
            DataField = 'REDUCAOCST'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfTVA: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 29
            Width = 91
            HelpContext = -2
            TabOrder = 1
            DataField = 'TVA'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfImpostosFederais: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 192
            Width = 91
            HelpContext = -2
            TabOrder = 9
            DataField = 'IMPOSTOSFEDERAIS'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfNCM: TTS_DBEdit
            Left = 7
            Top = 261
            Width = 470
            TabOrder = 11
            DataField = 'NCM'
            DataSource = DMGrupos.C_TabelaDS
            StyleController = DMProjeto.esItens
            DistinctEditOn = False
            Height = 19
          end
          object dfComissao: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 131
            Width = 91
            HelpContext = -2
            TabOrder = 6
            DataField = 'icComissao'
            DataSource = DMGrupos.C_TabelaDS
            StyleController = DMProjeto.esItens
            OnChange = dfComissaoChange
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
          object dfDescMax: TTS_DBEditNumber
            Tag = -2
            Left = 133
            Top = 151
            Width = 91
            HelpContext = -2
            TabOrder = 7
            DataField = 'icDescontoMaximo'
            DataSource = DMGrupos.C_TabelaDS
            StyleController = DMProjeto.esItens
            OnChange = dfDescMaxChange
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
        end
        object tsFiscal: TTS_TabSheet
          Caption = 'Dados Fiscais'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label31: TTS_Label
            Left = 5
            Top = 76
            Width = 103
            Caption = 'Aliquota de ICMS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label35: TTS_Label
            Left = 4
            Top = 22
            Width = 104
            Caption = 'Tipo Tributa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label36: TTS_Label
            Left = 29
            Top = 41
            Width = 79
            Caption = 'CST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label37: TTS_Label
            Left = 197
            Top = 76
            Width = 95
            Caption = 'Redu'#231#227'o CST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label38: TTS_Label
            Left = 6
            Top = 137
            Width = 103
            Caption = 'TVA Substitui'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label39: TTS_Label
            Left = 192
            Top = 137
            Width = 103
            Caption = 'TVA Fonte:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Shape11: TTS_Shape
            Left = 3
            Top = 10
            Width = 494
            Height = 3
            Brush.Color = 9027548
            Pen.Style = psClear
            Transparent = False
          end
          object TS_Shape12: TTS_Shape
            Left = 3
            Top = 2
            Width = 136
            Height = 18
            Brush.Color = 9027548
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label48: TTS_Label
            Left = 4
            Top = 3
            Width = 134
            Height = 17
            Alignment = taCenter
            Caption = 'Legisla'#231#227'o Fiscal'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Shape13: TTS_Shape
            Left = 3
            Top = 103
            Width = 492
            Height = 3
            Brush.Color = 9027548
            Pen.Style = psClear
            Transparent = False
          end
          object TS_Shape14: TTS_Shape
            Left = 3
            Top = 95
            Width = 136
            Height = 18
            Brush.Color = 9027548
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label50: TTS_Label
            Left = 4
            Top = 96
            Width = 133
            Height = 17
            Alignment = taCenter
            Caption = 'Substitui'#231#227'o Tribut'#225'ria'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label47: TTS_Label
            Left = -1
            Top = 58
            Width = 108
            Caption = 'Mod. Base Calc.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label44: TTS_Label
            Left = 2
            Top = 119
            Width = 108
            Caption = 'Mod. BC Substitui'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Shape16: TTS_Shape
            Left = 3
            Top = 168
            Width = 492
            Height = 3
            Brush.Color = 9027548
            Pen.Style = psClear
            Transparent = False
          end
          object TS_Shape17: TTS_Shape
            Left = 1
            Top = 159
            Width = 133
            Height = 18
            Brush.Color = 9027548
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label54: TTS_Label
            Left = 1
            Top = 160
            Width = 133
            Height = 18
            Alignment = taLeftJustify
            Caption = 'Imp. Federais'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfICMS: TTS_DBEditNumber
            Tag = -2
            Left = 112
            Top = 74
            Width = 77
            HelpContext = -2
            TabOrder = 3
            DataField = 'ALIQICMS'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object cmbCST: TTS_DBLookupComboBox
            Tag = -2
            Left = 112
            Top = 38
            Width = 367
            HelpContext = -2
            TabOrder = 1
            DataField = 'lkCST'
            DataSource = DMGrupos.C_TabelaDS
            StyleController = DMProjeto.esItens
            DropDownRows = 15
            DropDownWidth = 400
            ClearKey = 32
            ListFieldName = 'DESCRICAO;CST'
            LookupKeyValue = Null
            Height = 19
          end
          object lkpTipoTributacao: TTS_DBLookupComboBox
            Tag = -2
            Left = 112
            Top = 20
            Width = 367
            HelpContext = -2
            TabOrder = 0
            DataField = 'lkSitECF'
            DataSource = DMGrupos.C_TabelaDS
            StyleController = DMProjeto.esItens
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
          object dfReducao: TTS_DBEditNumber
            Tag = -2
            Left = 296
            Top = 74
            Width = 78
            HelpContext = -2
            TabOrder = 4
            DataField = 'REDUCAOCST'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfTVASubstituicao: TTS_DBEditNumber
            Tag = -2
            Left = 112
            Top = 135
            Width = 77
            HelpContext = -2
            TabOrder = 5
            DataField = 'TVA'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object dfTVAFOnte: TTS_DBEditNumber
            Tag = -2
            Left = 298
            Top = 135
            Width = 77
            HelpContext = -2
            TabOrder = 6
            DataField = 'TVAFONTE'
            DataSource = DMGrupos.C_TabelaDS
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
              000000FD000006060404040404040400000006FF0606060606060400000006FE
              0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
              000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
              FEFF06000000FD0606060606060606FD0000}
            Height = 19
            StoredValues = 1
          end
          object DBEdit14: TDBEdit
            Left = 337
            Top = 14
            Width = 12
            Height = 19
            DataField = 'SituacaoECF'
            DataSource = DMGrupos.C_TabelaDS
            TabOrder = 7
            Visible = False
            OnChange = DBEdit14Change
          end
          object DBEdit5: TDBEdit
            Left = 304
            Top = 69
            Width = 12
            Height = 19
            DataField = 'CST'
            DataSource = DMGrupos.C_TabelaDS
            TabOrder = 8
            Visible = False
            OnChange = DBEdit5Change
          end
          object lcbModBaseCalc: TTS_DBLookupComboBox
            Tag = -2
            Left = 112
            Top = 56
            Width = 367
            HelpContext = -2
            TabOrder = 2
            DataField = 'lkModalidadeICMS'
            DataSource = DMGrupos.C_TabelaDS
            ReadOnly = False
            StyleController = DMProjeto.esItens
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Versoes = 'S,P,E'
            Height = 19
            StoredValues = 64
          end
          object lcbModBaseCalcST: TTS_DBLookupComboBox
            Tag = -2
            Left = 112
            Top = 117
            Width = 365
            HelpContext = -2
            TabOrder = 9
            DataField = 'lkModaledadeICMSST'
            DataSource = DMGrupos.C_TabelaDS
            ReadOnly = False
            StyleController = DMProjeto.esItens
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Versoes = 'S,P,E'
            Height = 19
            StoredValues = 64
          end
          object pcImpFederais: TTS_PageControl
            Left = 2
            Top = 182
            Width = 497
            Height = 119
            ActivePage = tsPisCofinsEntrada
            OwnerDraw = True
            TabIndex = 1
            TabOrder = 10
            TabFillGradient = False
            ActivePageIndex = 1
            Transparent = False
            TabFont.Charset = DEFAULT_CHARSET
            TabFont.Color = 14019327
            TabFont.Height = -8
            TabFont.Name = 'MS Sans Serif'
            TabFont.Style = []
            TabFontActive.Charset = DEFAULT_CHARSET
            TabFontActive.Color = clWindowText
            TabFontActive.Height = -11
            TabFontActive.Name = 'MS Sans Serif'
            TabFontActive.Style = []
            object tsIPI: TTS_TabSheet
              Caption = 'IPI'
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Label63: TTS_Label
                Left = -15
                Top = 15
                Width = 95
                Caption = 'CST IPI:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbIPICompra: TTS_Label
                Left = 18
                Top = 37
                Width = 62
                Caption = 'IPI Compra:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbIPIVenda: TTS_Label
                Left = 178
                Top = 37
                Width = 65
                Caption = 'IPI Venda:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object cmbCSTIPI: TTS_DBLookupComboBox
                Tag = -2
                Left = 83
                Top = 12
                Width = 365
                HelpContext = -2
                TabOrder = 0
                DataField = 'lkCSTSIPI'
                DataSource = DMGrupos.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object dfIPICompra: TTS_DBEditNumber
                Tag = -2
                Left = 83
                Top = 35
                Width = 78
                HelpContext = -2
                TabOrder = 1
                DataField = 'IPICOMPRA'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
              object dfIPIVenda: TTS_DBEditNumber
                Tag = -2
                Left = 252
                Top = 35
                Width = 78
                HelpContext = -2
                TabOrder = 2
                DataField = 'IPIVENDA'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
            end
            object tsPisCofinsEntrada: TTS_TabSheet
              Caption = 'PIS/COFINS Entrada'
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object lbTipoTribFederal: TTS_Label
                Left = 12
                Top = 23
                Width = 95
                Caption = 'Tipo Trib. Federal:'
                FocusControl = cmbTribFederal
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Visible = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbCSTPisCofins: TTS_Label
                Left = 12
                Top = 42
                Width = 95
                Caption = 'CST Pis/Cofins:'
                FocusControl = cmbCSTPISCOFINS
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label58: TTS_Label
                Left = 12
                Top = 61
                Width = 95
                Caption = 'Aliq. PIS:'
                FocusControl = cmbTribFederal
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label61: TTS_Label
                Left = 200
                Top = 61
                Width = 71
                Caption = 'Aliq. COFINS:'
                FocusControl = cmbTribFederal
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object DBCBpiscofins: TTS_DBCheckBox
                Left = 108
                Top = 2
                Width = 257
                Color = 14019327
                ParentColor = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 0
                TabStop = False
                Visible = False
                Alignment = taLeftJustify
                Caption = 'Este Produto Incide na B.C'#225'lc. do PIS/COFINS'
                DataField = 'PISCOFINS'
                DataSource = DMGrupos.C_TabelaDS
                StyleController = DMProjeto.esItens
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                NullStyle = nsUnchecked
                Versoes = 'P,E'
                DisableEdit = False
                Height = 19
                StoredValues = 1
              end
              object cmbTribFederal: TTS_DBLookupComboBox
                Tag = -2
                Left = 111
                Top = 20
                Width = 184
                HelpContext = -2
                TabOrder = 1
                Visible = False
                DataField = 'IDTRIBFEDERAL'
                DataSource = DMGrupos.C_TabelaDS
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                DropDownWidth = 400
                ClearKey = 32
                ListFieldName = 'DESCRICAO'
                KeyFieldName = 'IDTRIBFEDERAL'
                ListSource = DMGrupos.C_TribFederalDs
                LookupKeyValue = Null
                Height = 19
              end
              object cmbCSTPISCOFINS: TTS_DBLookupComboBox
                Tag = -2
                Left = 111
                Top = 39
                Width = 351
                HelpContext = -2
                TabOrder = 2
                DataField = 'lkCSTPISCONFINS'
                DataSource = DMGrupos.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object dfAliqPis: TTS_DBEditNumber
                Tag = -2
                Left = 111
                Top = 58
                Width = 78
                HelpContext = -2
                TabOrder = 3
                DataField = 'ALIQPIS'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
              object dfAliqCofins: TTS_DBEditNumber
                Tag = -2
                Left = 273
                Top = 58
                Width = 78
                HelpContext = -2
                TabOrder = 4
                DataField = 'ALIQCOFINS'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
            end
            object tsPisCofinsSaida: TTS_TabSheet
              Caption = 'PIS/COFINS SAIDA'
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Label40: TTS_Label
                Left = 9
                Top = 7
                Width = 95
                Caption = 'CST Pis/Cofins:'
                FocusControl = cmbCSTPISCOFINSSaida
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label7: TTS_Label
                Left = 8
                Top = 46
                Width = 95
                Caption = 'Aliq. PIS:'
                FocusControl = cmbTribFederal
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label78: TTS_Label
                Left = 196
                Top = 46
                Width = 71
                Caption = 'Aliq. COFINS:'
                FocusControl = cmbTribFederal
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label80: TTS_Label
                Left = 9
                Top = 25
                Width = 95
                Caption = 'Nat. Receita:'
                FocusControl = cmbNaturezaReceira
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object cmbCSTPISCOFINSSaida: TTS_DBLookupComboBox
                Tag = -2
                Left = 108
                Top = 4
                Width = 351
                HelpContext = -2
                TabOrder = 0
                DataField = 'lkcstPisCofinsSaidas'
                DataSource = DMGrupos.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                OnChange = cmbCSTPISCOFINSSaidaChange
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object dfAliqPisSaida: TTS_DBEditNumber
                Tag = -2
                Left = 107
                Top = 43
                Width = 78
                HelpContext = -2
                TabOrder = 1
                DataField = 'ALIQPISSAIDA'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
              object dfAliqCofinsSaida: TTS_DBEditNumber
                Tag = -2
                Left = 269
                Top = 43
                Width = 78
                HelpContext = -2
                TabOrder = 2
                DataField = 'ALIQCOFINSSAIDA'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
              object cmbNaturezaReceira: TTS_DBLookupComboBox
                Tag = -2
                Left = 108
                Top = 23
                Width = 351
                HelpContext = -2
                TabOrder = 3
                DataField = 'lkNaturezareceita'
                DataSource = DMGrupos.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
            end
            object tsIRCS: TTS_TabSheet
              Caption = 'I.R/C.S'
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Label64: TTS_Label
                Left = 25
                Top = 20
                Width = 71
                Caption = 'Aliq. I.R.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label67: TTS_Label
                Left = 26
                Top = 38
                Width = 71
                Caption = 'Aliq. C. Soc.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfAliqIR: TTS_DBEditNumber
                Tag = -2
                Left = 99
                Top = 15
                Width = 78
                HelpContext = -2
                TabOrder = 0
                DataField = 'ALIQIR'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
              object dfAliqSS: TTS_DBEditNumber
                Tag = -2
                Left = 99
                Top = 36
                Width = 78
                HelpContext = -2
                TabOrder = 1
                DataField = 'ALIQSS'
                DataSource = DMGrupos.C_TabelaDS
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
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
                  000000FD000006060404040404040400000006FF0606060606060400000006FE
                  0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
                  000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
                  FEFF06000000FD0606060606060606FD0000}
                Height = 19
                StoredValues = 1
              end
            end
          end
        end
      end
      object df_Foto: TdxGraphicEdit
        Tag = -2
        Left = 382
        Top = 3
        Width = 128
        Cursor = crHandPoint
        HelpContext = -2
        PopupMenu = ppmFoto
        TabOrder = 9
        TabStop = False
        OnClick = df_FotoClick
        Anchors = [akTop, akRight]
        StyleController = DMProjeto.esItens
        GraphicTransparency = gtTransparent
        Stretch = True
        ToolbarLayout.Buttons = []
        ToolbarLayout.IsPopupMenu = False
        ToolbarLayout.ShowCaptions = False
        ToolbarLayout.Visible = False
        ToolbarPosStored = False
        Height = 96
      end
      object lcbGrupoPai: TTS_DBLookupComboBox
        Left = 101
        Top = 72
        Width = 268
        TabOrder = 3
        DataField = 'lkGrupoPai'
        DataSource = DMGrupos.C_TabelaDS
        StyleController = DMProjeto.esItens
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 520
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 637
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 153
      Caption = 'Grupos de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 602
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 472
    Top = 56
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 586
    Top = 332
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 575
    Top = 319
  end
  inherited ImgPadrao: TImageList
    Left = 606
    Top = 325
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'TS_DBEdit1'
      'TS_DBEdit2'
      'TS_DBLookupComboBox1')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Grupos de Itens'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    Left = 450
    Top = 122
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 605
    Top = 283
    inherited Ajuda1: TMenuItem
      HelpContext = 62
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 582
    Top = 311
  end
  inherited Beep: TBTBeeper
    Left = 96
    Top = 16
  end
  inherited FormStorage: TFormStorage
    Left = 211
    Top = 72
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 566
    Top = 276
  end
  object pdFoto: TOpenPictureDialog
    DefaultExt = 'bmp'
    Title = 'Escolher Foto'
    Left = 583
    Top = 305
  end
  object ppmFoto: TTS_PopupMenu
    Left = 407
    Top = 129
    object CarregarFoto1: TMenuItem
      Caption = 'Carregar Foto'
      OnClick = CarregarFoto1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimparFoto1: TMenuItem
      Caption = 'Limpar Foto'
      OnClick = LimparFoto1Click
    end
  end
  object ppmTabelasGrupos: TTS_PopupMenu
    Left = 406
    Top = 64
  end
end

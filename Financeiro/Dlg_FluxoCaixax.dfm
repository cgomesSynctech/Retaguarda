inherited DlgFluxoCaixa: TDlgFluxoCaixa
  Left = 46
  Top = 97
  Width = 755
  Height = 457
  HelpContext = 0
  ActiveControl = MasterView
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 629
    Height = 380
    Color = 15724519
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 627
      Height = 176
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object TS_Panel2: TTS_Panel
        Left = 0
        Top = 0
        Width = 353
        Height = 176
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object TS_Panel3: TTS_Panel
          Left = 0
          Top = 0
          Width = 353
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Color = 15724519
          TabOrder = 0
          object TS_Label1: TTS_Label
            Left = 4
            Top = 4
            Width = 77
            Caption = 'Saldo:'
            FocusControl = cbSaldo
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label2: TTS_Label
            Left = 190
            Top = 5
            Width = 57
            Caption = 'At'#233' a Data:'
            FocusControl = dtData
            FormatoTabela = False
            LinkToResult = 0
          end
          object cbSaldo: TdxPopupEdit
            Left = 84
            Top = 2
            Width = 97
            Style.BorderStyle = xbsSingle
            Style.Shadow = False
            TabOrder = 0
            OnKeyPress = cbSaldoKeyPress
            Alignment = taRightJustify
            StyleController = DMProjeto.esFinanceiro
            OnChange = cbSaldoChange
            PopupControl = dbTreeContas
            PopupFormBorderStyle = pbsSimple
            PopupFormCaption = 'Selecione as Contas para Saldo'
            OnCloseUp = cbSaldoCloseUp
            StoredValues = 1
          end
          object dtData: TTS_DateTimePicker
            Left = 248
            Top = 2
            Width = 85
            Style.BorderStyle = xbsSingle
            TabOrder = 1
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
            Date = 37133
            OnDateChange = dtDataDateChange
            Height = 19
          end
        end
        object MasterView: TdxMasterView
          Left = 0
          Top = 24
          Width = 353
          Height = 152
          Align = alClient
          PopupMenu = OpcoesFluxo
          TabOrder = 1
          OptionsDB = []
          OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movHideSelection, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
          object CabColunas: TdxMasterViewStyle
            Color = 15724527
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object CorAPagar: TdxMasterViewStyle
            Color = 8421631
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object CorAReceber: TdxMasterViewStyle
            Color = 15190957
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object CorLinhaGrid: TdxMasterViewStyle
            Color = 15461355
            AssignedValues = [svColor]
          end
          object FluxoCaixa: TdxMasterViewLevel
            DataSource = C_FluxoCaixaDS
            GridLinesColor = 15724527
            HeaderStyle = CabColunas
            ID = 'VENCIMENTO'
            OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locColumnGrouping, locShowColumnOnUngrouping]
            OptionsHeader = [lohForFirstNode, lohForFirstVisibleNode]
            OptionsView = [lovGrid, lovGridWithPreview, lovHeader, lovNoButtonsWhenNoChildren, lovOccupyRestSpace]
            object FluxoCaixaVENCIMENTO: TdxMasterViewColumn
              Caption = 'Vencimento'
              FieldName = 'VENCIMENTO'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 0
              Width = 60
            end
            object FluxoCaixaVALORAPAGAR: TdxMasterViewColumn
              FieldName = 'VALORAPAGAR'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 1
              SummaryFormat = '###,###,##0.00'
              Width = 65
            end
            object FluxoCaixaVALORARECEBER: TdxMasterViewColumn
              FieldName = 'VALORARECEBER'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 2
              SummaryFormat = '###,###,##0.00'
              Width = 66
            end
            object FluxoCaixaPrevisaoAVista: TdxMasterViewColumn
              Caption = 'Previs'#227'o'
              FieldName = 'PrevisaoAVista'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 3
              Width = 61
            end
            object FluxoCaixaSaldo: TdxMasterViewColumn
              FieldName = 'Saldo'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 4
              Width = 65
            end
            object APagarDetalhe: TdxMasterViewLevel
              Caption = 'A Pagar'
              CaptionStyle = CorAPagar
              DataSource = Q_APagarDS
              DetailKey = 'VENCIMENTO'
              GridLinesColor = clSilver
              HeaderStyle = CabColunas
              ID = 'ID'
              MasterKey = 'VENCIMENTO'
              OptionsDB = [lodConfirmDelete, lodSmartRefresh, lodSmartReload]
              OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovNoButtonsWhenNoChildren, lovOccupyRestSpace]
              object APagarDetalheNOME: TdxMasterViewColumn
                Caption = 'Favorecido'
                FieldName = 'NOME'
                HeaderAlignment = taCenter
                RowIndex = 0
                ColIndex = 1
                Width = 168
              end
              object APagarDetalheVALOR: TdxMasterViewColumn
                FieldName = 'VALOR'
                HeaderAlignment = taCenter
                RowIndex = 0
                ColIndex = 2
                Width = 65
              end
              object APagarDetalheVENCIMENTO: TdxMasterViewColumn
                Caption = 'Vencimento'
                FieldName = 'DATA'
                HeaderAlignment = taCenter
                HeaderGlyphAlignment = taCenter
                RowIndex = 0
                ColIndex = 0
                Width = 72
              end
              object APagarDetalheTipo: TdxMasterViewColumn
                Caption = 'Tipo'
                FieldName = 'TIPO'
                HeaderAlignment = taCenter
                RowIndex = 0
                ColIndex = 3
              end
              object APagarDetalheID: TdxMasterViewColumn
                FieldName = 'ID'
                RowIndex = 0
                ColIndex = 3
                Visible = False
              end
            end
            object AReceberDetalhe: TdxMasterViewLevel
              Caption = 'A Receber'
              CaptionStyle = CorAReceber
              DataSource = Q_AReceberDS
              DetailKey = 'VENCIMENTO'
              GridLinesColor = clSilver
              HeaderStyle = CabColunas
              ID = 'ID'
              MasterKey = 'VENCIMENTO'
              OptionsCustomizeBox = [loxCaption, loxColumns, loxGrid, loxGroupByBox, loxViewMode]
              OptionsDB = [lodConfirmDelete, lodSmartRefresh, lodSmartReload]
              OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovNoButtonsWhenNoChildren, lovOccupyRestSpace]
              object AReceberDetalheID: TdxMasterViewColumn
                FieldName = 'ID'
                RowIndex = 0
                ColIndex = 0
                Visible = False
                Width = 55
              end
              object AReceberDetalheVENCIMENTO: TdxMasterViewColumn
                Caption = 'Vencimento'
                FieldName = 'DATA'
                HeaderGlyphAlignment = taCenter
                RowIndex = 0
                ColIndex = 0
                Width = 72
              end
              object AReceberDetalheNOME: TdxMasterViewColumn
                Caption = 'Favorecido'
                FieldName = 'NOME'
                RowIndex = 0
                ColIndex = 1
                Width = 168
              end
              object AReceberDetalheVALOR: TdxMasterViewColumn
                FieldName = 'VALOR'
                RowIndex = 0
                ColIndex = 2
                Width = 65
              end
              object AReceberDetalheTipo: TdxMasterViewColumn
                Caption = 'Tipo'
                FieldName = 'TIPO'
                HeaderAlignment = taCenter
                RowIndex = 0
                ColIndex = 3
              end
            end
          end
        end
        object dbTreeContas: TdxDBTreeList
          Left = 58
          Top = 28
          Width = 277
          Height = 149
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'DESCRICAO'
          ParentField = 'DESCRICAO'
          TabOrder = 2
          Visible = False
          OnClick = dbTreeContasClick
          DataSource = Q_ContasDS
          HeaderColor = 15461355
          HideFocusRect = True
          HideSelection = True
          HideSelectionColor = clSilver
          LookAndFeel = lfUltraFlat
          OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoHotTrack, etoUseBitmap, etoUseImageIndexForSelected]
          ShowRoot = False
          TreeLineColor = clGrayText
          object dbTreeContasColumn3: TdxDBTreeListCheckColumn
            Caption = ' '
            Width = 21
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Selecionado'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbTreeContasDESCRICAO: TdxDBTreeListMaskColumn
            Caption = 'Nome da Conta'
            Sorted = csDown
            Width = 159
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRICAO'
          end
          object dbTreeContasSALDO: TdxDBTreeListMaskColumn
            Alignment = taRightJustify
            HeaderAlignment = taCenter
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALDO'
          end
        end
      end
      object TS_Panel4: TTS_Panel
        Left = 356
        Top = 0
        Width = 271
        Height = 176
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object TS_Panel5: TTS_Panel
          Left = 0
          Top = 0
          Width = 271
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Color = 15724519
          TabOrder = 0
          object dxfLabel1: TdxfLabel
            Left = 32
            Top = 2
            Width = 211
            Height = 17
            AutoSize = False
            Caption = 'Simula'#231#227'o de Novos Pagamentos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style = dxfRaised
            Angle = 0
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 2
            Effect3D.ShadowedColor = clSilver
            PenWidth = 1
          end
          object TS_SpeedButton4: TTS_SpeedButton
            Left = 14
            Top = 2
            Width = 21
            Height = 20
            Hint = 'Atualizar Fluxo de Caixa'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333333333333333333333FF333333333333300333333333
              33333773FF33333333333090033333333333373773FF33333333330990033333
              3333337F3773FF33333333099990033333333373F33773FFF333333099999007
              33333337F33337773333333099999903333333373F3333733333333309999033
              333333337F3337F333333333099990733333333373F3F77F3333333330900907
              3333333337F77F77F33333333003709073333333377377F77F33333337333709
              073333333733377F77F33333333333709033333333333377F7F3333333333337
              0733333333333337773333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = TS_SpeedButton4Click
            RepeatedClick = False
            Border = True
          end
        end
        object Grid: TTS_QDBGrid
          Left = 0
          Top = 24
          Width = 271
          Height = 152
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Data'
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = OpcoesSimulado
          TabOrder = 1
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_SimuladoDS
          Filter.Criteria = {00000000}
          HeaderColor = 15461355
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
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
          TS_SelectedColumn = 'Data'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object GridData: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 74
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Data'
          end
          object GridValor: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Valor'
          end
          object GridSaldo: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Saldo'
          end
          object GridProxData: TdxDBGridDateColumn
            Caption = 'Pr'#243'x.Data'
            DisableEditor = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ProxData'
            ShowButtonStyle = sbNone
          end
          object GridAtualizado: TdxDBGridMaskColumn
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Atualizado'
          end
          object GridExcluir: TdxDBGridMaskColumn
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Excluir'
          end
          object GridFigura: TdxDBGridImageColumn
            Alignment = taLeftJustify
            Caption = ' '
            DisableCustomizing = True
            DisableEditor = True
            HeaderAlignment = taCenter
            MinWidth = 16
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Figura'
            ShowButtonStyle = sbNone
            Images = ImageList1
            ImageIndexes.Strings = (
              '0'
              '1')
            Values.Strings = (
              '1'
              '2')
          end
        end
      end
      object RxSplitter2: TRxSplitter
        Left = 353
        Top = 0
        Width = 3
        Height = 176
        ControlFirst = TS_Panel2
        ControlSecond = TS_Panel4
        Align = alLeft
        Color = clBlack
      end
    end
    object pnGrafico: TTS_Panel
      Left = 1
      Top = 180
      Width = 627
      Height = 199
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object TS_Panel6: TTS_Panel
        Left = 0
        Top = 178
        Width = 627
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        Color = 15724519
        TabOrder = 0
        object TS_SpeedButton2: TTS_SpeedButton
          Left = 279
          Top = 3
          Width = 19
          Height = 17
          Hint = 'Primeira P'#225'gina'
          Caption = '<<'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = PrimeiraPaginaClick
          RepeatedClick = True
          Border = True
        end
        object TS_SpeedButton5: TTS_SpeedButton
          Left = 300
          Top = 3
          Width = 18
          Height = 17
          Hint = 'P'#225'gina Anterior'
          Caption = '<'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = PaginaAnteriorClick
          RepeatedClick = True
          Border = True
        end
        object TS_SpeedButton6: TTS_SpeedButton
          Left = 319
          Top = 3
          Width = 18
          Height = 17
          Hint = 'Pr'#243'xima P'#225'gina'
          Caption = '>'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = ProximaPaginaClick
          RepeatedClick = True
          Border = True
        end
        object TS_SpeedButton7: TTS_SpeedButton
          Left = 340
          Top = 3
          Width = 18
          Height = 17
          Hint = #218'ltima P'#225'gina'
          Caption = '>>'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = UltimaPaginaClick
          RepeatedClick = True
          Border = True
        end
        object ckbRotulo: TTS_CheckBox
          Left = 3
          Top = 1
          Width = 174
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 0
          OnClick = ckbRotuloClick
          Caption = 'Mostrar Valores no Gr'#225'fico'
          StyleController = DMProjeto.esFinanceiro
          State = cbsChecked
          DisableEdit = False
          Height = 21
        end
      end
      object Grafico: TDBChart
        Left = 0
        Top = 0
        Width = 627
        Height = 178
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 2
        MarginLeft = 2
        MarginRight = 2
        MarginTop = 2
        Title.Text.Strings = (
          'Saldo no Per'#237'odo')
        OnAllowScroll = GraficoAllowScroll
        Legend.Visible = False
        MaxPointsPerPage = 7
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        PopupMenu = OpcoesGrafico
        TabOrder = 1
        OnContextPopup = GraficoContextPopup
        object Linha: TLineSeries
          Marks.ArrowLength = 8
          Marks.BackColor = 15724519
          Marks.Color = 15724519
          Marks.Font.Height = -9
          Marks.Font.Name = 'Tahoma'
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = C_FluxoCaixa
          SeriesColor = clRed
          XLabelsSource = 'VENCIMENTO'
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'Saldo'
        end
      end
    end
    object RxSplitter1: TRxSplitter
      Left = 1
      Top = 177
      Width = 627
      Height = 3
      ControlFirst = TS_Panel1
      ControlSecond = pnGrafico
      Align = alTop
      Color = 15726591
      ParentShowHint = False
      ShowHint = False
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 629
    Height = 380
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 346
    end
    inherited btComando1: TTS_SpeedButton
      Top = 68
      Caption = 'Op'#231#245'es Gr'#225'fico'
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
        00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
        BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
        003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
        3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
        FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
        BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
        3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
        003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000}
      Layout = blGlyphRight
      OnMouseUp = btComando1MouseUp
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = 'Op'#231#245'es Simulado'
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
        00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
        BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
        003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
        3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
        FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
        BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
        3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
        003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000}
      Layout = blGlyphRight
      NumGlyphs = 1
      OnMouseUp = btLimparMouseDown
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Op'#231#245'es Fluxo'
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
        00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
        BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
        003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
        3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
        FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
        BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
        3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
        003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000}
      Layout = blGlyphRight
      NumGlyphs = 1
      OnMouseUp = btGravarMouseDown
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 101
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 747
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 139
      Caption = 'Fluxo de Caixa'
      Effect3D.ShadowedColor = 13223591
    end
    inherited lbEstadoForm: TTS_Label
      Width = 328
      Caption = 
        'An'#225'lise financeira em rela'#231#227'o a recebimentos e pagamentos futuro' +
        's.'
    end
    inherited lbUpperHint: TTS_Label
      Left = 739
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 642
    Top = 146
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 636
    Top = 215
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 581
    Top = 145
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Fluxo de Caixa'
    Left = 190
    Top = 186
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 361
    end
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.Conta, c.Descricao'
      'From Contas c'
      'Where c.TipoConta in (1,2) and c.desativado = '#39'N'#39)
    Left = 117
    Top = 185
  end
  object Q_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 117
    Top = 237
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 49
    Top = 185
    object C_ContasSelecionado: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Selecionado'
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasSaldo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 49
    Top = 241
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select d.vencimento, (d.valor-d.valorpago-d.creditoutilizado-d.d' +
        'escontos) as APagar'
      'From DuplicatasAPagar d'
      'Where d.vencimento <= :data and d.status > 0 and d.status < 50')
    Left = 197
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
  object Q_FluxoCaixa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select f.*, f.vencimento as Data'
      ' from fluxocaixa  f')
    Left = 41
    Top = 41
  end
  object C_FluxoCaixaDS: TDataSource
    DataSet = C_FluxoCaixa
    Left = 129
    Top = 41
  end
  object Q_APagar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select '#39'Conta  '#39' as Tipo, d.ID, d.vencimento, f.Nome, (d.Valor-d' +
        '.ValorPago-d.CreditoUtilizado-d.Descontos) as Valor, d.venciment' +
        'o as data'
      'from duplicatasapagar d '
      '        inner join favorecidos f on d.fornecedor = f.favorecido'
      
        'where d.vencimento <= :dataate and d.status > 0 and d.status < 5' +
        '0')
    Left = 217
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dataate'
        ParamType = ptUnknown
      end>
    object Q_APagarNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_APagarVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_APagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_APagarTIPO: TIBStringField
      FieldName = 'TIPO'
      Required = True
      Size = 7
    end
    object Q_APagarDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_APagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'DUPLICATASAPAGAR.VENCIMENTO'
      OnGetText = C_FluxoCaixaVENCIMENTOGetText
    end
  end
  object Q_APagarDS: TDataSource
    DataSet = Q_APagar
    Left = 217
    Top = 89
  end
  object Q_AReceber: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select '#39'Invoice'#39' as Tipo,t.ID, t.vencimento, f.Nome, (t.Valor-t.' +
        'ValorPago-t.CreditoUtilizado-t.Descontos) as Valor, t.vencimento' +
        ' as data'
      'from titulosareceber t'
      '        inner join favorecidos f on t.cliente = f.favorecido'
      
        'where t.vencimento <= :dataate and t.status > 0 and t.status < 5' +
        '0')
    Left = 309
    Top = 45
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dataate'
        ParamType = ptUnknown
      end>
    object Q_AReceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_AReceberNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_AReceberVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_AReceberTIPO: TIBStringField
      FieldName = 'TIPO'
      Required = True
      Size = 7
    end
    object Q_AReceberDATA: TDateField
      FieldName = 'DATA'
    end
    object Q_AReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
      OnGetText = C_FluxoCaixaVENCIMENTOGetText
    end
  end
  object Q_AReceberDS: TDataSource
    DataSet = Q_AReceber
    Left = 309
    Top = 89
  end
  object C_FluxoCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_FluxoCaixa'
    AfterOpen = C_FluxoCaixaAfterOpen
    Left = 41
    Top = 88
    object C_FluxoCaixaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      OnGetText = C_FluxoCaixaVENCIMENTOGetText
    end
    object C_FluxoCaixaVALORAPAGAR: TBCDField
      DisplayLabel = 'A Pagar'
      FieldName = 'VALORAPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_FluxoCaixaVALORARECEBER: TBCDField
      DisplayLabel = 'A Receber'
      FieldName = 'VALORARECEBER'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_FluxoCaixaANOPASSADO: TBCDField
      FieldName = 'ANOPASSADO'
      Precision = 18
      Size = 2
    end
    object C_FluxoCaixaMESPASSADO: TBCDField
      FieldName = 'MESPASSADO'
      Precision = 18
      Size = 2
    end
    object C_FluxoCaixaMEDIAMESES: TBCDField
      FieldName = 'MEDIAMESES'
      Precision = 18
      Size = 2
    end
    object C_FluxoCaixaSaldo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
    object C_FluxoCaixaPrevisaoAVista: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PrevisaoAVista'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object P_FluxoCaixa: TDataSetProvider
    DataSet = Q_FluxoCaixa
    Constraints = True
    Options = [poAllowCommandText]
    Left = 129
    Top = 88
  end
  object C_Simulado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 421
    Top = 80
    object C_SimuladoData: TDateField
      FieldName = 'Data'
      OnChange = C_SimuladoDataChange
    end
    object C_SimuladoValor: TFloatField
      FieldName = 'Valor'
      OnChange = C_SimuladoValorChange
      DisplayFormat = '###,###,##0.00'
    end
    object C_SimuladoSaldo: TFloatField
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
    object C_SimuladoProxData: TDateField
      FieldName = 'ProxData'
    end
    object C_SimuladoAtualizado: TStringField
      FieldName = 'Atualizado'
    end
    object C_SimuladoExcluir: TStringField
      FieldName = 'Excluir'
    end
    object C_SimuladoFigura: TIntegerField
      FieldName = 'Figura'
    end
  end
  object C_SimuladoDS: TDataSource
    DataSet = C_Simulado
    Left = 497
    Top = 80
  end
  object C_Dados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 221
    Top = 141
    object C_DadosVALORAPAGAR: TBCDField
      FieldName = 'VALORAPAGAR'
      Size = 2
    end
    object C_DadosVALORARECEBER: TBCDField
      FieldName = 'VALORARECEBER'
      Size = 2
    end
    object C_DadosVENCIMENTO: TStringField
      FieldName = 'VENCIMENTO'
      Size = 2
    end
    object C_DadosMESPASSADO: TBCDField
      FieldName = 'MESPASSADO'
      Size = 2
    end
    object C_DadosANOPASSADO: TBCDField
      FieldName = 'ANOPASSADO'
      Size = 2
    end
    object C_DadosMEDIAMESES: TBCDField
      FieldName = 'MEDIAMESES'
      Size = 2
    end
    object C_DadosSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object C_DadosPrevisaoAVista: TFloatField
      FieldName = 'PrevisaoAVista'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = C_FluxoCaixa
    Constraints = True
    Left = 309
    Top = 137
  end
  object ImageList1: TImageList
    Left = 281
    Top = 202
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      EF3DEF3DEF3D0000000000000000000000000000000000000000000051463146
      3146000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3D0000
      00000000EF3DEF3DEF3DEF3D00000000000000000000000051463146EE39EE39
      EE39314600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003C003C003C
      003C003C003C00000000EF3DEF3D000000000000000000003146EE39EE39EE39
      EE39EE3931460000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000003C003C003C0000
      00000000007C003C003C0000EF3DEF3D00000000000000000B1A061106110611
      EE39EE39EE393146000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000003C003C003C00000000
      000000000000007C003C0000EF3DEF3D0000000000000000AE03AE030B1A0611
      EE39EE39EE393146514600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000003C003C000000000000
      00000000003C007C003C003C0000EF3D0000000000000000F007F007AE030611
      0611EE39EE39EE39314600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C003CEF3D000000000000
      0000003C007C003C0000007C003CEF3DEF3D0000175BF007F007F007F007AE03
      0611EE39EE39EE39EE3931460000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003C0000EF3D000000000000
      003C007C003C000000000000003C0000EF3D0000D42FF007F213F213F213F007
      0B1A5146EE39EE39EE39EE390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003C0000EF3D000000000000
      003C003C0000000000000000003C0000EF3D175BD42FF31FD42F175BF73FD42F
      F0070611EE39EE39EE39EE39EE39314600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000003C0000EF3D00000000003C
      003C00000000000000000000003C000000000000175BD42F175B0000175BF73F
      F31F0B1A06113146EE39EE39EE39314651460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C003CEF3D003C003C003C
      00000000000000000000007C003CEF3D00000000000000000000000000000000
      F73FF0070B1A0611EE393146EE39314631460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000003C003C007C003C0000
      00000000000000000000003C003C000000000000000000000000000000000000
      175BF31FF0070B1A061151463146314651460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C003C003C003CEF3D
      000000000000EF3D003C007C0000000000000000000000000000000000000000
      0000F73FD42FF0070B1A06110000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C003C0000EF3D
      EF3DEF3D0000003C003C003C0000000000000000000000000000000000000000
      00000000175BF73FF73FF10F0B1A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007C007C003C
      003C003C003C007C007C00000000000000000000000000000000000000000000
      000000000000175BF73FF73FAE03175B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000007C
      007C007C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000175B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FE3FF8FF00000000F807E07F00000000
      F003E03F00000000E381E01F00000000C7C1E00F00000000CF81E00F00000000
      8F108007000000008E388007000000008E780001000000008CF9880000000000
      81F1FE0000000000C3F3FE0000000000C1C3FF0700000000E007FF8300000000
      F00FFFC100000000FC7FFFFB0000000000000000000000000000000000000000
      000000000000}
  end
  object ImprimirFluxo: TdxComponentPrinter
    CurrentLink = ImprimirFluxoDados
    Version = 0
    Left = 129
    Top = 140
    object ImprimirFluxoDados: TdxMasterViewReportLink
      Active = True
      Caption = 'ImprimirFluxoDados'
      Component = MasterView
      DateTime = 37445.4332191667
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 2692
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      CaptionNodeFont.Charset = DEFAULT_CHARSET
      CaptionNodeFont.Color = clWindowText
      CaptionNodeFont.Height = -11
      CaptionNodeFont.Name = 'Times New Roman'
      CaptionNodeFont.Style = []
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Times New Roman'
      FooterFont.Style = []
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeFont.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Times New Roman'
      OddFont.Style = []
      Options = [mvpoHeaders, mvpoGrid, mvpoPreviewGrid, mvpoGroupFooterGrid, mvpoFlatCheckMarks, mvpo3DEffects, mvpoSoft3D]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Times New Roman'
      PreviewFont.Style = []
      BuiltInReportLink = True
    end
  end
  object OpcoesFluxo: TTS_PopupMenu
    Left = 466
    Top = 272
    object PorDia: TMenuItem
      Caption = 'Por Dia'
      Checked = True
      GroupIndex = 3
      RadioItem = True
      OnClick = PorDiaClick
    end
    object PorSemana: TMenuItem
      Caption = 'Por Semana'
      GroupIndex = 3
      RadioItem = True
      OnClick = PorSemanaClick
    end
    object PorMes: TMenuItem
      Caption = 'Por M'#234's'
      GroupIndex = 3
      RadioItem = True
      OnClick = PorMesClick
    end
    object N2: TMenuItem
      Caption = '-'
      GroupIndex = 3
    end
    object SemPrevisao: TMenuItem
      Caption = 'Sem Previs'#227'o'
      Checked = True
      GroupIndex = 4
      RadioItem = True
      OnClick = SemPrevisaoClick
    end
    object MesPassado: TMenuItem
      Caption = 'M'#234's Passado'
      GroupIndex = 4
      RadioItem = True
      OnClick = MesPassadoClick
    end
    object AnoPassado: TMenuItem
      Caption = 'Ano Passado'
      GroupIndex = 4
      RadioItem = True
      OnClick = AnoPassadoClick
    end
    object Media: TMenuItem
      Caption = 'M'#233'dia dos '#250'ltmos 3 meses'
      GroupIndex = 4
      RadioItem = True
      OnClick = MediaClick
    end
  end
  object OpcoesSimulado: TTS_PopupMenu
    Left = 372
    Top = 275
    object Apagar: TMenuItem
      Caption = 'Apagar'
      OnClick = ApagarClick
    end
    object ApagarTodos: TMenuItem
      Caption = 'Apagar Todos'
      OnClick = ApagarTodosClick
    end
    object Atualizar: TMenuItem
      Caption = 'Atualizar Fluxo de Caixa'
      OnClick = TS_SpeedButton4Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object OpcoesGrafico: TTS_PopupMenu
    MenuAnimation = [maTopToBottom]
    OnPopup = OpcoesGraficoPopup
    Left = 269
    Top = 276
    object PeriodosPorPagina: TMenuItem
      Caption = 'N'#186' de Pontos por P'#225'gina:'
      OnClick = PeriodosPorPaginaClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object PrimeiraPagina: TMenuItem
      Caption = 'Ir para Primeira P'#225'gina'
      OnClick = PrimeiraPaginaClick
    end
    object ProximaPagina: TMenuItem
      Caption = 'Ir para Pr'#243'xima P'#225'gina'
      OnClick = ProximaPaginaClick
    end
    object PaginaAnterior: TMenuItem
      Caption = 'Ir para P'#225'gina Anterior'
      OnClick = PaginaAnteriorClick
    end
    object UltimaPagina: TMenuItem
      Caption = 'Ir para a '#218'ltima P'#225'gina'
      OnClick = UltimaPaginaClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
  end
end

inherited FrmLicitacoes: TFrmLicitacoes
  Left = 102
  Top = 108
  Width = 840
  Height = 520
  Caption = 'Fornecedores / Compras'
  Constraints.MinHeight = 520
  Constraints.MinWidth = 840
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 717
    Height = 450
    inherited btComando1: TTS_SpeedButton
      Caption = '&Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Visible = True
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Caption = 'Imp. Fornecedor'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Visible = True
      OnClick = btComando2Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 416
    end
  end
  inherited pnDados: TTS_Panel
    Width = 717
    Height = 450
    inherited Grid: TTS_QDBGrid
      Width = 715
      Height = 448
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 715
      Height = 448
    end
    inherited sbDados: TTS_Panel
      Width = 715
      Height = 448
      Color = 15196656
      object TS_PanelCorner1: TTS_PanelCorner
        Left = 0
        Top = 0
        Width = 715
        Height = 55
        Align = alTop
        Color = 15196656
        TabOrder = 0
        BoxWithShadow = False
        DesignSize = (
          715
          55)
        object lbData: TTS_Label
          Left = 186
          Top = 8
          Width = 38
          Caption = 'Data:'
          Color = 15196656
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          TagStr = 'Titulos'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label1: TTS_Label
          Left = 172
          Top = 28
          Width = 52
          Caption = 'Descri'#231#227'o:'
          Color = 15196656
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          TagStr = 'Titulos'
          FormatoTabela = False
          LinkToResult = 0
        end
        object pnNumero: TTS_Panel
          Tag = -1
          Left = 15
          Top = 6
          Width = 112
          Height = 38
          HelpContext = -1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          TabStop = True
          object lbNumero: TTS_Label
            Left = 0
            Top = 0
            Width = 110
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'N'#250'mero'
            Color = 11775972
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            TagStr = 'Titulos'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dbtNumero: TTS_DBTextEffect
            Left = 0
            Top = 16
            Width = 110
            Height = 20
            Cursor = crIBeam
            Align = alBottom
            Alignment = taCenter
            Color = clWhite
            DataField = 'CODIGO'
            DataSource = DMLicitacoes.C_TabelaDS
            Effects.ShadowColor = clSilver
            Effects.ShadowDepth = 3
            Effects.Style = tsRaised
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            EditOffSet.x = 0
            EditOffSet.y = 1
            AllowEditOnClick = True
            EditFont.Charset = ANSI_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -13
            EditFont.Name = 'Tahoma'
            EditFont.Style = [fsBold]
          end
        end
        object dfData: TTS_DBEditDate
          Left = 227
          Top = 5
          Width = 121
          TabOrder = 1
          DataField = 'DATA'
          DataSource = DMLicitacoes.C_TabelaDS
          StyleController = DMProjeto.esFornecedores
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
        object TS_DBEdit1: TTS_DBEdit
          Left = 227
          Top = 26
          Width = 373
          TabOrder = 2
          DataField = 'DESCRICAO'
          DataSource = DMLicitacoes.C_TabelaDS
          StyleController = DMProjeto.esFornecedores
          DistinctEditOn = False
          Height = 19
        end
      end
      object xxx: TTS_PanelCorner
        Left = 0
        Top = 55
        Width = 715
        Height = 169
        Align = alClient
        Color = 15196656
        TabOrder = 1
        BoxWithShadow = False
        object pcItens: TTS_PageControl
          Left = 1
          Top = 1
          Width = 713
          Height = 167
          Align = alClient
          BiDiMode = bdLeftToRight
          MultiLine = True
          OwnerDraw = True
          ParentBiDiMode = False
          TabOrder = 0
          TabPosition = tpLeft
          ActivePageIndex = -1
          BorderInvisible = True
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
        end
        object GrideItem: TTS_QDBGrid
          Tag = -2
          Left = 1
          Top = 1
          Width = 713
          Height = 167
          HelpContext = -2
          Bands = <
            item
              Caption = 'dsfadsfasdfa'
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ITEM'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <>
              Name = 'Default'
            end>
          SummarySeparator = '|'
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppItens
          TabOrder = 1
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = DMLicitacoes.C_ItensDs
          Filter.Criteria = {00000000}
          GroupPanelColor = 16247774
          GroupNodeColor = 15461355
          HeaderColor = 11775972
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          HighlightColor = 14859922
          OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ScrollBars = ssVertical
          ShowRowFooter = True
          TS_PermitirQuantidade = False
          TS_DescriptionCanChange = True
          TS_GridMenuOptions = [gmLayout, gmDados, gmImprimir, gmExportar]
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
          TS_AposLocalizar = GrideItemTS_AposLocalizar
          TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterFont.Color = clWindowText
          TS_SummaryFooterFont.Height = -11
          TS_SummaryFooterFont.Name = 'Tahoma'
          TS_SummaryFooterFont.Style = []
          TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterSelFont.Color = clWindowText
          TS_SummaryFooterSelFont.Height = -11
          TS_SummaryFooterSelFont.Name = 'Tahoma'
          TS_SummaryFooterSelFont.Style = []
          TS_HabilitarTotalGeral = svNone
          TS_MultiSelection = False
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
          TS_ChaveEstrangeira = 'ITEM'
          TS_TipoItem = '1,2,3,4,5,6'
          TS_C_Localizar = DMProjeto.C_LocalizarItens
          TS_ItemColumns = 'Codigo=Codigo;Descricao=Descricao;Referencia'
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object GrideItemCODIGO: TdxDBGridButtonColumn
            Alignment = taLeftJustify
            Caption = 'C'#243'digo'
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
            Buttons = <
              item
                Default = True
              end>
          end
          object GrideItemDESCRICAO: TdxDBGridButtonColumn
            Caption = 'Descri'#231#227'o'
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Width = 323
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRICAO'
            Buttons = <
              item
                Default = True
                Kind = bkGlyph
              end
              item
                Default = False
                Glyph.Data = {
                  DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                  0400000000006800000000000000000000001000000000000000000000000000
                  BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                  700077777777777770007777700077777000777770C077777000777770C07777
                  7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
                  7000777770C07777700077777000777770007777777777777000777777777777
                  7000}
                Kind = bkGlyph
              end>
            EditButtonStyle = ebsGlyph
          end
          object GrideItem_icSelecionado: TdxDBGridColumn
            Visible = False
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = '_icSelecionado'
          end
          object GrideItemLICITACAOITEM: TdxDBGridMaskColumn
            Visible = False
            Width = 138
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LICITACAOITEM'
          end
          object GrideItemLICITACAO: TdxDBGridMaskColumn
            Visible = False
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LICITACAO'
          end
          object GrideItemITEM: TdxDBGridMaskColumn
            Visible = False
            Width = 105
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ITEM'
          end
          object GrideItemIPICOMPRA: TdxDBGridCurrencyColumn
            Caption = '% IPI.'
            Visible = False
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IPICOMPRA'
            Nullable = False
          end
          object GrideItemQ_ItensFornec: TdxDBGridColumn
            Visible = False
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Q_ItensFornec'
          end
          object GrideItemReferencia: TdxDBGridColumn
            Caption = 'Refer'#234'ncia'
            Width = 154
            BandIndex = 0
            RowIndex = 0
            FieldName = 'REFERENCIA'
          end
          object GrideItemPrcCompra: TdxDBGridColumn
            Caption = 'Prc. Compra'
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRECOCOMPRA'
          end
        end
      end
      object TS_PanelCorner3: TTS_PanelCorner
        Left = 0
        Top = 224
        Width = 715
        Height = 224
        Align = alBottom
        Color = 15196656
        TabOrder = 2
        BoxWithShadow = False
        object GridFornecodores: TTS_QDBGrid
          Left = 1
          Top = 1
          Width = 713
          Height = 222
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LICITACAOITEMFORNECEDOR'
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppItensFornec
          TabOrder = 0
          OnEnter = GridFornecodoresEnter
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = DMLicitacoes.C_ItensFornecDs
          Filter.Criteria = {00000000}
          GroupPanelColor = 15461355
          HeaderColor = 11775972
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
          TS_TipoLocalizar = tlFavorecidos
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
          TS_AfterNewRecord = GridFornecodoresTS_AfterNewRecord
          TS_MultiSelection = False
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_SelectedColumn = 'NOME'
          TS_ID = 0
          TS_ChaveEstrangeira = 'Fornecedor'
          TS_C_Localizar = DMProjeto.C_LocalizarFav
          TS_ItemColumns = 'Nome'
          TS_TipoDescricao = tdCompra
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object GridFornecodores_icSelecionado: TdxDBGridColumn
            Visible = False
            Width = 39
            BandIndex = 0
            RowIndex = 0
            FieldName = '_icSelecionado'
          end
          object GridFornecodoresCODIGO: TdxDBGridButtonColumn
            Caption = 'C'#243'digo'
            Visible = False
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
            Buttons = <
              item
                Default = True
              end>
          end
          object GridFornecodoresNOME: TdxDBGridButtonColumn
            Caption = 'Nome Fornecedor'
            Width = 179
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
            Buttons = <
              item
                Default = True
              end>
          end
          object GridFornecodoresPercICMS: TdxDBGridColumn
            Caption = 'ICMS%'
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCICMS'
          end
          object GridFornecodoresPRECOCOMPRA: TdxDBGridColumn
            Caption = 'Pre'#231'o Compra'
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRECOCOMPRA'
          end
          object GridFornecodoresVALORICMS: TdxDBGridCurrencyColumn
            Caption = 'Vlr ICMS'
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALORICMS'
            DisplayFormat = '###,##0.00'
            Nullable = False
          end
          object GridFornecodoresLICITACAOITEMFORNECEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LICITACAOITEMFORNECEDOR'
          end
          object GridFornecodoresPercIPI: TdxDBGridColumn
            Caption = 'IPI%'
            Width = 41
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PERCIPI'
          end
          object GridFornecodoresVALORIPI: TdxDBGridCurrencyColumn
            Caption = 'Vlr. IPI'
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALORIPI'
            DisplayFormat = '###,##0.00'
            Nullable = False
          end
          object GridFornecodoresLICITACAOITEM: TdxDBGridMaskColumn
            Visible = False
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LICITACAOITEM'
          end
          object GridFornecodoresFORNECEDOR: TdxDBGridMaskColumn
            Visible = False
            Width = 39
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FORNECEDOR'
          end
          object GridFornecodoresVALORFRETE: TdxDBGridCurrencyColumn
            Caption = 'Vlr. Frete'
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALORFRETE'
            DisplayFormat = '###,##0.00'
            Nullable = False
          end
          object GridFornecodoresVALOROUTRAS: TdxDBGridCurrencyColumn
            Caption = 'Outras Desp.'
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOROUTRAS'
            DisplayFormat = '###,##0.00'
            Nullable = False
          end
          object GridFornecodoresPRECOCUSTO: TdxDBGridCurrencyColumn
            Caption = 'Prc. Custo'
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRECOCUSTO'
            DisplayFormat = '###,##0.00'
            Nullable = False
          end
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 715
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 832
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 388
      Caption = 'Cota'#231#227'o de Pre'#231'os Para Compra de Itens'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 793
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 113
    Top = 162
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 266
    Top = 169
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 728
    Top = 293
  end
  inherited ImgPadrao: TImageList
    AllocBy = 6
    ImageType = itMask
    Left = 630
    Top = 5
  end
  inherited FormComponent: TFormComponent
    BeforeSave = nil
    BeforeMoveRecord = nil
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Cota'#231#227'o de Pre'#231'os Para Compra de Itens'
    FirstEditField = dfData
    Left = 180
    Top = 162
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 759
    Top = 338
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 779
    Top = 289
  end
  inherited Beep: TBTBeeper
    Left = 548
    Top = 2
  end
  inherited FormStorage: TFormStorage
    Left = 454
    Top = 12
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 762
    Top = 384
  end
  object ppItens: TTS_PopupMenu
    Left = 566
    Top = 178
    object ApagarItem1: TMenuItem
      Caption = 'Items.'
      OnClick = ApagarItem1Click
    end
  end
  object ppItensFornec: TTS_PopupMenu
    Left = 552
    Top = 344
    object MenuItem1: TMenuItem
      Caption = 'Forneceodores'
      OnClick = ApagarItem1Click
    end
  end
  object ppDBCotacao: TppDBPipeline
    DataSource = DMLicitacoes.C_RelatorioDs
    UserName = 'DBCotacao'
    Left = 400
    Top = 136
    object ppDBCotacaoppField1: TppField
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField3: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField4: TppField
      FieldAlias = 'LICITA'
      FieldName = 'LICITA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField5: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField6: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField7: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField8: TppField
      FieldAlias = 'PRECOCOMPRA'
      FieldName = 'PRECOCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField9: TppField
      FieldAlias = 'ESTOQUE'
      FieldName = 'ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField10: TppField
      FieldAlias = 'ESTOQUEFISCAL'
      FieldName = 'ESTOQUEFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField11: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField12: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField13: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField14: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField15: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField16: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField17: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField18: TppField
      FieldAlias = 'FONE2'
      FieldName = 'FONE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField19: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField20: TppField
      FieldAlias = 'PRECOCUSTO'
      FieldName = 'PRECOCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField21: TppField
      FieldAlias = 'PERCICMS'
      FieldName = 'PERCICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField22: TppField
      FieldAlias = 'PERCIPI'
      FieldName = 'PERCIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField23: TppField
      FieldAlias = 'VALORICMS'
      FieldName = 'VALORICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField24: TppField
      FieldAlias = 'VALORIPI'
      FieldName = 'VALORIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField25: TppField
      FieldAlias = 'VALORFRETE'
      FieldName = 'VALORFRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField26: TppField
      FieldAlias = 'VALOROUTRAS'
      FieldName = 'VALOROUTRAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField27: TppField
      FieldAlias = 'ULTIMOFORNEC'
      FieldName = 'ULTIMOFORNEC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoppField28: TppField
      FieldAlias = 'ULTPRCCOMPRA'
      FieldName = 'ULTPRCCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
  object ppCotacao: TppReport
    AutoStop = False
    DataPipeline = ppDBCotacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    Left = 406
    Top = 186
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCotacao'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppTitulo: TppLabel
        UserName = 'Titulo'
        Caption = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 92869
        mmTop = 29369
        mmWidth = 8731
        BandType = 0
      end
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 25400
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 195263
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Style = bsClear
          Pen.Style = psClear
          mmHeight = 13229
          mmLeft = 25400
          mmTop = 8202
          mmWidth = 13229
          BandType = 0
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NOME'
        DataPipeline = ppDBCotacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 265
        mmWidth = 84667
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'PERCICMS'
        DataPipeline = ppDBCotacao
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 116946
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'VALOROUTRAS'
        DataPipeline = ppDBCotacao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 159279
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'PRECOCUSTO'
        DataPipeline = ppDBCotacao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 178065
        mmTop = 264
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'PERCIPI'
        DataPipeline = ppDBCotacao
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 265
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'VALORFRETE'
        DataPipeline = ppDBCotacao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'PRECOCOMPRA'
        DataPipeline = ppDBCotacao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacao'
        mmHeight = 3969
        mmLeft = 97631
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppMaisBarato: TppImage
        UserName = 'MaisBarato'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          07544269746D61702E0A0000424D2E0A00000000000036000000280000001D00
          00001D0000000100180000000000F80900000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
          000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000000000000000FFFFFF00000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000FFFFFFFFFFFF000000000000000000000000000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
          FFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        mmHeight = 3175
        mmLeft = 192088
        mmTop = 794
        mmWidth = 4763
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'DESCRICAO'
      DataPipeline = ppDBCotacao
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBCotacao'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        AfterGenerate = ppGroupHeaderBand1AfterGenerate
        mmBottomOffset = 0
        mmHeight = 23283
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 16140
          mmLeft = 2910
          mmTop = 265
          mmWidth = 194205
          BandType = 3
          GroupNo = 0
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          Pen.Style = psDot
          mmHeight = 12700
          mmLeft = 164571
          mmTop = 1588
          mmWidth = 30692
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'CODIGO'
          DataPipeline = ppDBCotacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBCotacao'
          mmHeight = 3969
          mmLeft = 32279
          mmTop = 1323
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'DESCRICAO'
          DataPipeline = ppDBCotacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBCotacao'
          mmHeight = 3969
          mmLeft = 53181
          mmTop = 1323
          mmWidth = 102129
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'REFERENCIA'
          DataPipeline = ppDBCotacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBCotacao'
          mmHeight = 3969
          mmLeft = 32279
          mmTop = 6085
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Refer'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 12171
          mmTop = 6085
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Ult. Prc. Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 166688
          mmTop = 3440
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'ULTIMOFORNEC'
          DataPipeline = ppDBCotacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBCotacao'
          mmHeight = 3969
          mmLeft = 32279
          mmTop = 10848
          mmWidth = 52652
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'ULTPRCCOMPRA'
          DataPipeline = ppDBCotacao
          DisplayFormat = 'R$ ###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBCotacao'
          mmHeight = 4233
          mmLeft = 166952
          mmTop = 8731
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 3175
          mmTop = 17198
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = '% IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 128059
          mmTop = 17198
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Valor Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 137054
          mmTop = 17198
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Vl. Outros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 156898
          mmTop = 17198
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Valor Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 174361
          mmTop = 17198
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Prc. Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4064
          mmLeft = 90879
          mmTop = 17198
          mmWidth = 19981
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = '% ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 113771
          mmTop = 17198
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 2646
          mmTop = 21694
          mmWidth = 194469
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Item:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 21960
          mmTop = 1323
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Ult. Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 5027
          mmTop = 10848
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 2117
          mmTop = 264
          mmWidth = 194469
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppCotacaoFornec: TppReport
    AutoStop = False
    DataPipeline = ppDBCotacaoFornec
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    Left = 494
    Top = 190
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBCotacaoFornec'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Titulo'
        Caption = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 92869
        mmTop = 29369
        mmWidth = 8731
        BandType = 0
      end
      object regCab1: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 25400
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 195263
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape1'
          Brush.Style = bsClear
          Pen.Style = psClear
          mmHeight = 13229
          mmLeft = 25400
          mmTop = 8202
          mmWidth = 13229
          BandType = 0
        end
      end
    end
    object ppDetailBand2: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText7'
        DataField = 'PERCICMS'
        DataPipeline = ppDBCotacaoFornec
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 116946
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText8'
        DataField = 'VALOROUTRAS'
        DataPipeline = ppDBCotacaoFornec
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 159279
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText9'
        DataField = 'PRECOCUSTO'
        DataPipeline = ppDBCotacaoFornec
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 178065
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText10'
        DataField = 'PERCIPI'
        DataPipeline = ppDBCotacaoFornec
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 265
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText12'
        DataField = 'VALORFRETE'
        DataPipeline = ppDBCotacaoFornec
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 141552
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText13'
        DataField = 'PRECOCOMPRA'
        DataPipeline = ppDBCotacaoFornec
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 97631
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText2'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBCotacaoFornec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBCotacaoFornec'
        mmHeight = 3969
        mmLeft = 3704
        mmTop = 264
        mmWidth = 90488
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'NOME'
      DataPipeline = ppDBCotacaoFornec
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBCotacaoFornec'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        AfterGenerate = ppGroupHeaderBand1AfterGenerate
        mmBottomOffset = 0
        mmHeight = 11642
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          UserName = 'Label3'
          Caption = 'Fornecedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4064
          mmLeft = 2382
          mmTop = 1323
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label4'
          Caption = '% IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 127265
          mmTop = 6615
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label6'
          Caption = 'Valor Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 136261
          mmTop = 6615
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label7'
          Caption = 'Vl. Outros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 156104
          mmTop = 6615
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label8'
          Caption = 'Valor Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 173567
          mmTop = 6615
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label9'
          Caption = 'Prc. Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 89959
          mmTop = 6615
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label10'
          Caption = '% ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 112977
          mmTop = 6615
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line2'
          Weight = 0.75
          mmHeight = 794
          mmLeft = 1852
          mmTop = 10846
          mmWidth = 194469
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label11'
          Caption = 'Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 3440
          mmTop = 6615
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText6'
          DataField = 'NOME'
          DataPipeline = ppDBCotacaoFornec
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBCotacaoFornec'
          mmHeight = 4233
          mmLeft = 22225
          mmTop = 1323
          mmWidth = 84667
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line1'
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 2117
          mmTop = 264
          mmWidth = 194469
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBCotacaoFornec: TppDBPipeline
    DataSource = DMLicitacoes.C_RelFornecDs
    UserName = 'ppDBCotacaoFornec'
    Left = 490
    Top = 140
    object ppDBCotacaoFornecppField1: TppField
      FieldAlias = 'PRECOCUSTO'
      FieldName = 'PRECOCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField2: TppField
      FieldAlias = 'VALOROUTRAS'
      FieldName = 'VALOROUTRAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField3: TppField
      FieldAlias = 'VALORFRETE'
      FieldName = 'VALORFRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField4: TppField
      FieldAlias = 'PERCIPI'
      FieldName = 'PERCIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField5: TppField
      FieldAlias = 'PERCICMS'
      FieldName = 'PERCICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField6: TppField
      FieldAlias = 'PRECOCOMPRA'
      FieldName = 'PRECOCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField8: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField9: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBCotacaoFornecppField10: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
end

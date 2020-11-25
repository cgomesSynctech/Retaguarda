inherited DlgConferenciaCaixa: TDlgConferenciaCaixa
  Left = 405
  Top = 194
  Width = 898
  Height = 524
  Caption = 'Confer'#234'ncia de Caixa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 764
    Height = 443
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 409
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Pesquisar'
      Visible = True
      OnClick = btComando1Click
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 882
    Gradient.ColorStart = 13223591
    inherited btHelp: TTS_SpeedButton
      Left = 854
    end
    inherited lbCaption: TdxfLabel
      Width = 203
      AutoSize = True
      Caption = 'Fechamento de Caixa'
    end
  end
  inherited pnDados: TTS_Panel
    Width = 764
    Height = 443
    Color = 15197912
    object pcFechamento: TTS_PageControl
      Left = 16
      Top = 19
      Width = 707
      Height = 392
      ActivePage = tsBancos
      OwnerDraw = True
      Style = tsButtons
      TabOrder = 0
      TabStop = False
      ActivePageIndex = 0
      Transparent = False
      TabColor = clBlack
      TabColorActive = clBlack
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
      object tsBancos: TTS_TabSheet
        Caption = 'Bancos'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15197912
        ParentColor = False
        object TS_Label12: TTS_Label
          Left = 6
          Top = -2
          Width = 107
          Caption = 'Fechamento Caixa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object Bevel2: TBevel
          Left = 132
          Top = 4
          Width = 440
          Height = 5
          Shape = bsTopLine
        end
        object TS_Label5: TTS_Label
          Left = 32
          Top = 21
          Width = 89
          Caption = 'No per'#237'odo de:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label6: TTS_Label
          Left = 222
          Top = 22
          Width = 18
          Caption = ' '#224' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object dbgConsulta: TTS_QDBGrid
          Left = 32
          Top = 48
          Width = 600
          Height = 281
          Cursor = crHandPoint
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'FECHAMENTO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = '| '
          Align = alCustom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppmPadrao
          TabOrder = 0
          OnDblClick = dbgConsultaDblClick
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = C_ConsultaDS
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          GridLineColor = clGray
          GroupPanelColor = clWhite
          GroupPanelFontColor = 15987699
          GroupNodeColor = 15461355
          GroupNodeTextColor = clBlack
          HeaderColor = clWhite
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          HideSelectionColor = clMenu
          HideSelectionTextColor = clNavy
          HighlightColor = clWhite
          HighlightTextColor = clNavy
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
          OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
          OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          RowFooterColor = clWhite
          RowFooterTextColor = clBlack
          ShowGrid = False
          TS_PermitirQuantidade = False
          TS_DescriptionCanChange = False
          TS_AppendOnEnter = False
          RowFooterNodeFont.Charset = DEFAULT_CHARSET
          RowFooterNodeFont.Color = clWindowText
          RowFooterNodeFont.Height = -11
          RowFooterNodeFont.Name = 'Tahoma'
          RowFooterNodeFont.Style = [fsBold]
          TS_AccountFooterStyle = False
          TS_HideFocusedRect = hfHideAlways
          TS_HideGroupHeader = False
          TS_AnotherColor = clWindow
          TS_ReportHeaderStyle = True
          GroupNodeFont.Charset = DEFAULT_CHARSET
          GroupNodeFont.Color = clMaroon
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
          TS_SummaryFooterSelFont.Style = []
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_SelectedColumn = 'DATA'
          TS_ID = 0
          TS_FormStorage = FormStorage
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dbgConsultaFECHAMENTO: TdxDBGridMaskColumn
            Caption = 'Fechamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Visible = False
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECHAMENTO'
          end
          object dbgConsultaDATA: TdxDBGridDateColumn
            Alignment = taCenter
            Caption = 'Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA'
            SummaryFooterType = cstCount
            DateButtons = []
          end
          object dbgConsultaCAIXA: TdxDBGridMaskColumn
            Caption = 'Caixa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 235
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CAIXA'
          end
          object dbgConsultaDIGITADO: TdxDBGridMaskColumn
            Caption = 'Digitado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIGITADO'
            SummaryFooterType = cstSum
          end
          object dbgConsultaAPURADO: TdxDBGridMaskColumn
            Caption = 'Apurado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'APURADO'
            SummaryFooterType = cstSum
          end
          object dbgConsultaSALDO: TdxDBGridMaskColumn
            Caption = 'Saldo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALDO'
            SummaryFooterType = cstSum
          end
        end
        object DataI: TTS_DateTimePicker
          Left = 126
          Top = 20
          Width = 87
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          AutoSize = False
          StyleController = DMProjeto.esClientes
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
          Height = 21
          StoredValues = 4
        end
        object DataF: TTS_DateTimePicker
          Left = 252
          Top = 19
          Width = 87
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          AutoSize = False
          StyleController = DMProjeto.esClientes
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
          Height = 21
          StoredValues = 4
        end
      end
      object tsCaixas: TTS_TabSheet
        Caption = 'Caixas'
        ImageIndex = 1
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15197912
        ParentColor = False
        object TS_Label13: TTS_Label
          Left = 4
          Top = -2
          Width = 123
          Caption = 'Detalhe Fechamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object Bevel3: TBevel
          Left = 132
          Top = 5
          Width = 440
          Height = 5
          Shape = bsTopLine
        end
        object lblVoltar: TTS_Label
          Left = 586
          Top = 25
          Width = 47
          Height = 20
          Caption = 'Voltar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = lblVoltarClick
          FormatoTabela = False
          LinkToResult = 0
        end
        object btnLancarSobra: TTS_SpeedButton
          Left = 32
          Top = 336
          Width = 177
          Caption = '&Lan'#231'ar Sobra de Caixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnLancarSobraClick
          Versoes = 'S,P,E'
          RepeatedClick = False
          Border = True
          Align = alCustom
        end
        object btnGerarTitulo: TTS_SpeedButton
          Left = 245
          Top = 336
          Width = 177
          Caption = '&Gerar T'#237'tulo p/ Usu'#225'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnGerarTituloClick
          Versoes = 'S,P,E'
          RepeatedClick = False
          Border = True
          Align = alCustom
        end
        object btnIgnorar: TTS_SpeedButton
          Left = 456
          Top = 336
          Width = 177
          Caption = '&Ignorar e/ou Fechar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnIgnorarClick
          Versoes = 'S,P,E'
          RepeatedClick = False
          Border = True
          Align = alCustom
        end
        object dbgConsultaDetalhe: TTS_QDBGrid
          Left = 33
          Top = 48
          Width = 600
          Height = 281
          Cursor = crHandPoint
          Bands = <
            item
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'FECHAMENTO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = '| '
          Align = alCustom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppmPadrao
          TabOrder = 0
          OnDblClick = dbgConsultaDblClick
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = C_ConsultaDetalheDS
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          GridLineColor = clGray
          GroupPanelColor = clWhite
          GroupPanelFontColor = 15987699
          GroupNodeColor = 15461355
          GroupNodeTextColor = clBlack
          HeaderColor = clWhite
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HideFocusRect = True
          HideSelection = True
          HideSelectionColor = clMenu
          HideSelectionTextColor = clNavy
          HighlightColor = clWhite
          HighlightTextColor = clNavy
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
          OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
          OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          RowFooterColor = clWhite
          RowFooterTextColor = clBlack
          ShowGrid = False
          TS_PermitirQuantidade = False
          TS_DescriptionCanChange = False
          TS_AppendOnEnter = False
          RowFooterNodeFont.Charset = DEFAULT_CHARSET
          RowFooterNodeFont.Color = clWindowText
          RowFooterNodeFont.Height = -11
          RowFooterNodeFont.Name = 'Tahoma'
          RowFooterNodeFont.Style = [fsBold]
          TS_AccountFooterStyle = False
          TS_HideFocusedRect = hfHideAlways
          TS_HideGroupHeader = False
          TS_AnotherColor = clWindow
          TS_ReportHeaderStyle = True
          GroupNodeFont.Charset = DEFAULT_CHARSET
          GroupNodeFont.Color = clMaroon
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
          TS_SummaryFooterSelFont.Style = []
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_SelectedColumn = 'DATA'
          TS_ID = 0
          TS_FormStorage = FormStorage
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dbgConsultaDetalheIDFECHAMENTO: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IDFECHAMENTO'
          end
          object dbgConsultaDetalheFECHAMENTO: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECHAMENTO'
          end
          object dbgConsultaDetalheDATA: TdxDBGridDateColumn
            Caption = 'Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Sorted = csDown
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA'
            DateButtons = []
          end
          object dbgConsultaDetalheESPECIE: TdxDBGridMaskColumn
            Caption = 'Esp'#233'cie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 235
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ESPECIE'
          end
          object dbgConsultaDetalheVALORDIGITADO: TdxDBGridCurrencyColumn
            Caption = 'Digitado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALORDIGITADO'
            SummaryFooterType = cstSum
            Nullable = False
          end
          object dbgConsultaDetalheVALORAPURADO: TdxDBGridCurrencyColumn
            Caption = 'Apurado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALORAPURADO'
            SummaryFooterType = cstSum
            Nullable = False
          end
          object dbgConsultaDetalheSALDO: TdxDBGridCurrencyColumn
            Caption = 'Saldo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taCenter
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALDO'
            SummaryFooterType = cstSum
            Nullable = False
          end
          object dbgConsultaDetalheSTATUS: TdxDBGridMaskColumn
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STATUS'
          end
        end
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 230
    Top = 430
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 170
    Top = 431
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 544
    Top = 442
  end
  inherited Beep: TBTBeeper
    Left = 472
    Top = 448
  end
  inherited FormStorage: TFormStorage
    Left = 600
    Top = 432
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Modulo = 'Confer'#234'ncia de Caixa'
    Caption = 'Fechamento de Caixa'
    Left = 338
    Top = 434
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 671
    Top = 426
  end
  object Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select f.fechamento, f.datafechamento as data, fa.favorecido as ' +
        'funcionario, fa.nome,'
      
        'c.descricao as caixa, sum(f.valordigitado) as digitado, sum(f.va' +
        'lorapurado) as apurado, sum(f.saldo) as saldo'
      'from fechamentocaixa f inner join contas c on f.conta = c.conta'
      'inner join usuarios u on c.usuariocaixa = u.usuario'
      'inner join favorecidos fa on u.funcionario = fa.favorecido'
      
        'where (f.datafechamento >= :datai and f.datafechamento <= :dataf' +
        ') and upper(f.status) = '#39'A'#39' and c.usuariocaixa is not null'
      'group by 1, 2, 3, 4, 5'
      'order by f.datafechamento asc')
    Left = 724
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end>
  end
  object P_Consulta: TDataSetProvider
    DataSet = Q_Consulta
    Constraints = True
    Options = [poAllowCommandText]
    Left = 725
    Top = 163
  end
  object C_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Consulta'
    Left = 724
    Top = 216
    object C_ConsultaFECHAMENTO: TIntegerField
      FieldName = 'FECHAMENTO'
      Required = True
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Required = True
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 50
    end
    object C_ConsultaDIGITADO: TBCDField
      FieldName = 'DIGITADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaAPURADO: TBCDField
      FieldName = 'APURADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object C_ConsultaDS: TDataSource
    DataSet = C_Consulta
    Left = 723
    Top = 275
  end
  object Q_ConsultaDetalhe: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select f.idfechamento, f.fechamento, f.datafechamento as data, e' +
        '.descricao as especie,'
      ' f.valordigitado, f.valorapurado, f.saldo, f.status'
      ' from fechamentocaixa f inner join contas c on f.conta = c.conta'
      ' inner join especiestitulos e on f.especie = e.especie'
      ' where f.fechamento = :id and upper(f.status) = '#39'A'#39
      ' order by f.idfechamento asc')
    Left = 804
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object P_ConsultaDetalhe: TDataSetProvider
    DataSet = Q_ConsultaDetalhe
    Constraints = True
    Options = [poAllowCommandText]
    Left = 805
    Top = 235
  end
  object C_ConsultaDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ConsultaDetalhe'
    Left = 804
    Top = 288
    object C_ConsultaDetalheIDFECHAMENTO: TIntegerField
      FieldName = 'IDFECHAMENTO'
      Required = True
    end
    object C_ConsultaDetalheFECHAMENTO: TIntegerField
      FieldName = 'FECHAMENTO'
      Required = True
    end
    object C_ConsultaDetalheDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaDetalheESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 50
    end
    object C_ConsultaDetalheVALORDIGITADO: TBCDField
      FieldName = 'VALORDIGITADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object C_ConsultaDetalheVALORAPURADO: TBCDField
      FieldName = 'VALORAPURADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object C_ConsultaDetalheSALDO: TBCDField
      FieldName = 'SALDO'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object C_ConsultaDetalheSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object C_ConsultaDetalheDS: TDataSource
    DataSet = C_ConsultaDetalhe
    Left = 803
    Top = 347
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select r.Conta, c.descricao, c.TipoConta, r.valor, r.historico, '
      'r.valorextenso, f.nome from  Retiradas r join Contas c on '
      
        'r.Conta = c.Conta  join favorecidos f on r.favorecido = f.favore' +
        'cido ')
    Left = 638
    Top = 25
  end
end

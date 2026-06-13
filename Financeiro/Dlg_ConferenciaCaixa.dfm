inherited DlgConferenciaCaixa: TDlgConferenciaCaixa
  Left = 221
  Top = 108
  Width = 788
  Height = 524
  Caption = 'Confer'#234'ncia de Caixa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 662
    Height = 454
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 420
    end
    inherited btComando2: TTS_SpeedButton
      Caption = 'Re-Imprimir'
      Enabled = False
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Pesquisar'
      Visible = True
      OnClick = btComando1Click
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 780
    Gradient.ColorStart = 13223591
    inherited btHelp: TTS_SpeedButton
      Left = 744
    end
    inherited lbCaption: TdxfLabel
      Width = 203
      AutoSize = True
      Caption = 'Fechamento de Caixa'
    end
  end
  inherited pnDados: TTS_Panel
    Width = 662
    Height = 454
    Color = 15197912
    object pcFechamento: TTS_PageControl
      Left = 16
      Top = 19
      Width = 707
      Height = 414
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
        object Label1: TLabel
          Left = 8
          Top = 376
          Width = 81
          Height = 13
          Caption = 'Cx Lan'#231'amento :'
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
        object cmbConta: TTS_LookupComboBox
          Left = 94
          Top = 373
          Width = 140
          TabOrder = 1
          StyleController = DMProjeto.esFinanceiro
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'CONTA'
          ListSource = C_CaixaDS
          LookupKeyValue = Null
          Height = 19
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
    Left = 732
    Top = 64
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
  object C_Caixas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Caixas'
    Left = 648
    Top = 72
    object C_CaixasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_CaixasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object Q_Caixas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select conta, descricao from contas'
      'where tipoconta = 1 and desativado = '#39'N'#39
      'order by descricao')
    Left = 666
    Top = 154
  end
  object C_CaixaDS: TDataSource
    DataSet = C_Caixas
    Left = 672
    Top = 221
  end
  object P_Caixas: TDataSetProvider
    DataSet = Q_Caixas
    Constraints = True
    Left = 664
    Top = 293
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBConferencia
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
    Left = 536
    Top = 214
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBConferencia'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 57415
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 27252
        mmLeft = 529
        mmTop = 529
        mmWidth = 196321
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label1'
        Caption = 'Confer'#234'ncia- Fechamento Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5130
        mmLeft = 69850
        mmTop = 32015
        mmWidth = 67817
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CAIXA'
        DataPipeline = ppDBConferencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 4233
        mmLeft = 82286
        mmTop = 38894
        mmWidth = 40217
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DATAFECHAMENTO'
        DataPipeline = ppDBConferencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 4129
        mmLeft = 82286
        mmTop = 44186
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Especie '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 51857
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Vl Informado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 72761
        mmTop = 51857
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Vl Apurado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 104511
        mmTop = 51858
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4254
        mmLeft = 137402
        mmTop = 51857
        mmWidth = 12764
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'SALDO'
        DataPipeline = ppDBConferencia
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 3440
        mmLeft = 134938
        mmTop = 1058
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'VALORAPURADO'
        DataPipeline = ppDBConferencia
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 3440
        mmLeft = 109273
        mmTop = 1058
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'VALORDIGITADO'
        DataPipeline = ppDBConferencia
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 3440
        mmLeft = 78317
        mmTop = 1058
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBConferencia
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 3440
        mmLeft = 48683
        mmTop = 1058
        mmWidth = 21960
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label14'
        Caption = 'Gerente Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 17463
        mmWidth = 29633
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label20'
        Caption = 'Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4254
        mmLeft = 135511
        mmTop = 17463
        mmWidth = 8383
        BandType = 7
      end
      object ppLine21: TppLine
        UserName = 'Line9'
        Pen.Color = clGray
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 21960
        mmTop = 16669
        mmWidth = 60325
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line10'
        Pen.Color = clGray
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 109009
        mmTop = 16669
        mmWidth = 60325
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        ParentWidth = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppDBCheques'
        mmHeight = 5027
        mmLeft = 265
        mmTop = 6615
        mmWidth = 96309
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = DlgFechamentoModeloB.ppDBCheques
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
          Left = 400
          Top = 248
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBCheques'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 15875
            mmPrintPosition = 0
            object ppLabel24: TppLabel
              UserName = 'Label1'
              Caption = 'Cheques Repassados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 794
              mmTop = 3704
              mmWidth = 37253
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label2'
              Caption = '# Cheque'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 11377
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label3'
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 60854
              mmTop = 11377
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label4'
              Caption = 'Nome'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 15081
              mmTop = 11377
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label5'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3440
              mmLeft = 82021
              mmTop = 11377
              mmWidth = 6350
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line1'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 529
              mmLeft = 265
              mmTop = 15346
              mmWidth = 13229
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line2'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 529
              mmLeft = 15081
              mmTop = 15346
              mmWidth = 44186
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line3'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 529
              mmLeft = 60590
              mmTop = 15346
              mmWidth = 15875
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line4'
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 529
              mmLeft = 77788
              mmTop = 15346
              mmWidth = 15875
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line5'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 13494
              mmTop = 11642
              mmWidth = 1852
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line6'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 59267
              mmTop = 11642
              mmWidth = 1852
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line7'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 76465
              mmTop = 11642
              mmWidth = 1852
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line8'
              Pen.Color = clGray
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 93398
              mmTop = 11642
              mmWidth = 1852
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              UserName = 'DBText1'
              DataField = 'VALORDIGITADO'
              DataPipeline = ppDBConferencia
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBConferencia'
              mmHeight = 3440
              mmLeft = 265
              mmTop = 265
              mmWidth = 13758
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText2'
              DataField = 'DESCRICAO'
              DataPipeline = ppDBConferencia
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBConferencia'
              mmHeight = 3440
              mmLeft = 15081
              mmTop = 265
              mmWidth = 31750
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText3'
              DataField = 'VALORAPURADO'
              DataPipeline = ppDBConferencia
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBConferencia'
              mmHeight = 3440
              mmLeft = 60590
              mmTop = 265
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText4'
              DataField = 'SALDO'
              DataPipeline = ppDBConferencia
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBConferencia'
              mmHeight = 3440
              mmLeft = 77788
              mmTop = 265
              mmWidth = 16404
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'SALDO'
              DataPipeline = ppDBConferencia
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBConferencia'
              mmHeight = 3440
              mmLeft = 76994
              mmTop = 529
              mmWidth = 17198
              BandType = 7
            end
          end
        end
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'SALDO'
        DataPipeline = ppDBConferencia
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBConferencia'
        mmHeight = 3440
        mmLeft = 134938
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label201'
        Caption = 'Saldo / Diferen'#231'a de Caixa : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4254
        mmLeft = 84667
        mmTop = 529
        mmWidth = 44669
        BandType = 7
      end
    end
  end
  object ppDBConferencia: TppDBPipeline
    DataSource = C_ConferenciaDS
    UserName = 'DBConferencia'
    Left = 608
    Top = 200
    object ppDBConferenciappField1: TppField
      FieldAlias = 'DATAFECHAMENTO'
      FieldName = 'DATAFECHAMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 0
    end
    object ppDBConferenciappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORDIGITADO'
      FieldName = 'VALORDIGITADO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object ppDBConferenciappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORAPURADO'
      FieldName = 'VALORAPURADO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object ppDBConferenciappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppDBConferenciappField5: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppDBConferenciappField6: TppField
      FieldAlias = 'CAIXA'
      FieldName = 'CAIXA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
  end
  object Q_Conferencia: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select f.datafechamento, f.valordigitado, f.valorapurado, f.sald' +
        'o,  e.descricao, c.descricao as Caixa  from fechamentocaixa f'
      'inner join especiestitulos e on e.especie = f.especie'
      'inner join contas c on c.conta = f.conta'
      'where f.datafechamento = :dia and f.conta = :conta')
    Left = 432
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end>
  end
  object P_Conferencia: TDataSetProvider
    DataSet = Q_Conferencia
    Constraints = True
    Left = 496
    Top = 312
  end
  object C_Conferencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Conferencia'
    Left = 568
    Top = 312
    object C_ConferenciaDATAFECHAMENTO: TDateField
      FieldName = 'DATAFECHAMENTO'
      Origin = 'FECHAMENTOCAIXA.DATAFECHAMENTO'
      Required = True
    end
    object C_ConferenciaVALORDIGITADO: TBCDField
      FieldName = 'VALORDIGITADO'
      Origin = 'FECHAMENTOCAIXA.VALORDIGITADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object C_ConferenciaVALORAPURADO: TBCDField
      FieldName = 'VALORAPURADO'
      Origin = 'FECHAMENTOCAIXA.VALORAPURADO'
      Required = True
      Precision = 18
      Size = 2
    end
    object C_ConferenciaSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'FECHAMENTOCAIXA.SALDO'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object C_ConferenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ESPECIESTITULOS.DESCRICAO'
      Size = 50
    end
    object C_ConferenciaCAIXA: TStringField
      FieldName = 'CAIXA'
      Origin = 'CONTAS.CAIXA'
      Size = 50
    end
  end
  object C_ConferenciaDS: TDataSource
    DataSet = C_Conferencia
    Left = 648
    Top = 328
  end
end

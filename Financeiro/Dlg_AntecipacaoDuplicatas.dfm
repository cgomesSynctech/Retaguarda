inherited DlgAntecipacaoDuplicatas: TDlgAntecipacaoDuplicatas
  Left = 91
  Top = 149
  Width = 772
  Height = 490
  Caption = 'Financeiro'
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 646
    Height = 420
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 386
    end
    inherited btComando2: TTS_SpeedButton
      Top = 172
      Caption = '&Imprimir'
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Top = 34
      Caption = 'Pesquisar'
      Glyph.Data = {
        4E030000424D4E030000000000007600000028000000340000001A0000000100
        040000000000D802000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDD00DDDDDDDD
        DDDDDD888888888800888888888888880000DDDDDDDD00000DDDDDDDDD00DD88
        8888880000088888888800880000DDDDDDD00BB000DDDDDDD0000D8888888008
        80008888888000080000DDDDD00BBBB0000DDDDD00F00D888880088880000888
        8800F0080000DDD00BBBBBB00000DDD00F005D888008888880000088800F0008
        0000D00BBBBBBBBBBBBB0D00F005DD800888888FFFFFFF0800F0008800000BBB
        BBBBBBBBBBBB800F005DDD08888888FFFFFFFFF00F00088800000BBBBBBBBBBB
        BB8880F005DDDD08FFF8FFFFFFFFFFF0F00088880000D0BBBBBBBB7737783F00
        5DDDDD80FFFFFFFF8777FF0F000888880000DD0BBBBBB33333300F70DDDDDD88
        0FFFF8800000000F008888880000DDD0BBBB33BBBBB3707F0DDDDD8880FFFF00
        FFFFF0700F0888880000DDDD0BB33BBBBBBB308FF0DDDD88880FF07FFFFFFF00
        FFF088880000DDDDD033BBBBBBBB70F8FF0DDD88888000FFFFFFFF80FFFF0888
        0000DDDDDD0BBBBBBBB7660FFFF0DD8888880FFFFFFFFF880FFFF0880000DDDD
        DD0BBBBBBB76660FFFFF0D8888880FFFFFFF88880FFFFF080000DDDDDD0BBBBB
        B788E60FF8FFF08888880FFFFFF8FFF80FFFFFF00000DDDDDD00BBB768FF660F
        F8FFF088888800FFF88FFF880FFFFFF00000DDDDDDD0776668FE6388FFF20D88
        888880FF888FFF80FFFFF0080000DDDDDDD006666EEE33FFF00DDD8888888008
        888F8800FFF008880000DDDDDDDD000666E3FFF00DDDDD8888888800088880FF
        F00888880000DDDDDDDDDD000038F00DDDDDDD888888888800000FF008888888
        0000DDDDDDDDDDDDD0000DDDDDDDDD888888888888800008888888880000DDDD
        DDDDDDDDDD0DDDDDDDDDDD888888888888880888888888880000DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000}
      NumGlyphs = 2
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 1
    end
    inherited btGravar: TTS_SpeedButton
      Top = 72
      Caption = '&Antecipar'
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 67
    end
    object btCancelar: TTS_SpeedButton
      Left = 1
      Top = 106
      Width = 116
      Caption = '&Cancelar Deposito'
      OnClick = btCancelarClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object btRestaurar: TTS_SpeedButton
      Left = 1
      Top = 139
      Width = 116
      Caption = 'Restaurar Titulo'
      OnClick = btRestaurarClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 764
    Gradient.ColorStart = 13223591
    inherited btHelp: TTS_SpeedButton
      Left = 728
    end
    inherited lbCaption: TdxfLabel
      Width = 251
      AutoSize = True
      Caption = 'Antecipa'#231#227'o de Duplicatas'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 646
    Height = 420
    Color = 15724519
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 644
      Height = 70
      Align = alTop
      BorderWidth = 1
      Color = 15724519
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Versoes = 'S,P,E'
      object Label1: TTS_Label
        Left = 6
        Top = 29
        Width = 116
        Height = 13
        Caption = '&Creditar na Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 21
        Top = 49
        Width = 101
        Height = 13
        Caption = '&Vlr. Antecipado:'
        FocusControl = dfValor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 225
        Top = 9
        Width = 85
        Height = 13
        Caption = 'Tipo Pesquisa:'
        FocusControl = dfTipoTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 64
        Top = 9
        Width = 58
        Height = 13
        Caption = 'Carteira:'
        FocusControl = dfTipoTitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 334
        Top = 51
        Width = 166
        Height = 13
        Caption = 'Valor Selecionado:'
        FocusControl = dfValor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbContas: TTS_LookupComboBox
        Tag = -2
        Left = 122
        Top = 26
        Width = 301
        HelpContext = -2
        TabOrder = 0
        StyleController = DMProjeto.esFinanceiro
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'CONTA'
        ListSource = C_bancosDs
        LookupKeyValue = Null
        Height = 19
      end
      object dfValor: TTS_CalcEdit
        Left = 122
        Top = 46
        Width = 95
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        StyleController = DMProjeto.esFinanceiro
        Text = '0'
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
      object dfTipoTitulos: TTS_ImageEdit
        Left = 312
        Top = 6
        Width = 110
        TabOrder = 2
        StyleController = DMProjeto.esFinanceiro
        Descriptions.Strings = (
          'A Vencer'
          'J'#225' Antecipados')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          '0'
          '1')
        Height = 19
      end
      object cmbCarteira: TTS_LookupComboBox
        Left = 122
        Top = 6
        Width = 97
        TabOrder = 3
        StyleController = DMProjeto.esFinanceiro
        ClearKey = 32
        ListFieldName = 'NUMEROCARTEIRA'
        KeyFieldName = 'CARTEIRA'
        ListSource = C_CarteirasDS
        LookupKeyValue = 0
        Height = 19
      end
      object dfSelecionado: TTS_CalcEdit
        Left = 504
        Top = 48
        Width = 95
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ReadOnly = True
        StyleController = DMProjeto.esFinanceiro
        Text = '0'
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
        StoredValues = 65
      end
    end
    object GridBoletos: TTS_QDBGrid
      Left = 1
      Top = 71
      Width = 644
      Height = 348
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'valor'
              SummaryFormat = '>valor=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'DESCONTOS'
              SummaryFormat = '>DESCONTOS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'titulo'
              SummaryFormat = '>titulo=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'icSubTotal'
              SummaryFormat = '>icSubTotal=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
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
      DataSource = C_DuplicatasDs
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
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
      TS_HabilitarQtdSelecionada = svFooterSummary
      TS_HabilitarTotalSelecionado = svFooterSummary
      TS_HabilitarQtdGeral = svFooterSummary
      TS_ShowSelectionColumn = True
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_OnAfterSelection = GridBoletosTS_OnAfterSelection
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'valor;sum'
        'DESCONTOS;sum'
        'titulo;count'
        'icSubTotal;Sum')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridBoletosID: TdxDBGridMaskColumn
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object GridBoletosTITULO: TdxDBGridMaskColumn
        Caption = 'Titulo'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object GridBoletosNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Width = 217
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridBoletosCOMPETENCIA: TdxDBGridDateColumn
        Caption = 'Compet'#234'ncia'
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object GridBoletosVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object GridBoletosDESCONTOS: TdxDBGridCurrencyColumn
        Caption = 'Desconto'
        HeaderAlignment = taRightJustify
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object GridBoletosVALOR: TdxDBGridCurrencyColumn
        Caption = 'Valor'
        HeaderAlignment = taRightJustify
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object GridBoletosicSubTotal: TdxDBGridColumn
        Alignment = taRightJustify
        Caption = 'SubTotal'
        HeaderAlignment = taRightJustify
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSubTotal'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object GridBoletosColumn10: TdxDBGridColumn
        Caption = 'Novo Valor'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NovoValor'
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 660
    Top = 262
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 658
    Top = 229
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 580
    Top = 238
  end
  inherited Beep: TBTBeeper
    Left = 602
    Top = 292
  end
  inherited FormStorage: TFormStorage
    Left = 588
    Top = 192
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Antecipa'#231#227'o de Duplicatas'
    Left = 268
    Top = 246
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 589
    Top = 146
  end
  object C_bancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Bancos'
    Left = 450
    Top = 138
    object C_bancosCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
      Required = True
    end
    object C_bancosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_bancosBANCO: TIntegerField
      FieldName = 'BANCO'
    end
  end
  object C_bancosDs: TDataSource
    DataSet = C_bancos
    Left = 453
    Top = 188
  end
  object P_Bancos: TDataSetProvider
    DataSet = Q_Bancos
    Constraints = True
    Options = [poAllowCommandText]
    Left = 456
    Top = 235
  end
  object Q_Bancos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    ObjectView = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT CONTA, DESCRICAO, Banco FROM CONTAS WHERE TIPOCONTA = 2')
    Left = 455
    Top = 299
  end
  object C_Duplicatas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Duplicatas'
    Left = 64
    Top = 188
    object C_Duplicatas_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_DuplicatasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_DuplicatasTITULO: TStringField
      FieldName = 'TITULO'
      Size = 15
    end
    object C_DuplicatasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_DuplicatasVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_DuplicatasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_DuplicatasCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_DuplicatasDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
    end
    object C_DuplicatasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_DuplicatasDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_DuplicatasicSubTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotal'
    end
    object C_DuplicatasCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_DuplicatasDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object C_DuplicatasNovoValor: TFloatField
      FieldName = 'NovoValor'
    end
  end
  object C_DuplicatasDs: TDataSource
    DataSet = C_Duplicatas
    Left = 63
    Top = 238
  end
  object P_Duplicatas: TDataSetProvider
    DataSet = Q_Duplicatas
    Constraints = True
    Options = [poAllowCommandText]
    Left = 60
    Top = 293
  end
  object Q_Duplicatas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    ObjectView = True
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'select distinct t.Id, t.titulo, t.parcela, t.valor, t.vencimento' +
        ', t.competencia, f.nome,'
      '       t.descontos, t.dataantecipacao, t.cliente, dt.deposito'
      'from titulosareceber t'
      ' inner join favorecidos f on f.favorecido = t.cliente'
      ' left Join DepositosTitulos dt on t.id = dt.titulo'
      ' left Join Depositos d  on d.deposito = dt.deposito'
      ''
      'where t.tipocobranca = 3')
    UpdateObject = U_Duplicatas
    Left = 63
    Top = 343
  end
  object C_Carteiras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Carteiras'
    Left = 346
    Top = 144
    object C_CarteirasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Required = True
    end
    object C_CarteirasNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
    end
  end
  object P_Carteiras: TDataSetProvider
    DataSet = Q_Carteiras
    Constraints = True
    Left = 346
    Top = 191
  end
  object Q_Carteiras: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select carteira, numerocarteira from carteiras'
      'where desativado = '#39'N'#39
      'order by numerocarteira')
    Left = 346
    Top = 237
  end
  object C_CarteirasDS: TDataSource
    DataSet = C_Carteiras
    Left = 346
    Top = 282
  end
  object ppmGrid: TTS_PopupMenu
    Left = 560
    Top = 340
  end
  object U_Duplicatas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from titulosareceber '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update titulosareceber'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  NOME = :NOME,'
      '  DESCONTOS = :DESCONTOS,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into titulosareceber'
      '  (ID, TITULO, PARCELA, VALOR, VENCIMENTO, COMPETENCIA, NOME, '
      'DESCONTOS, '
      '   DATAANTECIPACAO)'
      'values'
      
        '  (:ID, :TITULO, :PARCELA, :VALOR, :VENCIMENTO, :COMPETENCIA, :N' +
        'OME, '
      ':DESCONTOS, '
      '   :DATAANTECIPACAO)')
    DeleteSQL.Strings = (
      'delete from titulosareceber'
      'where'
      '  ID = :OLD_ID')
    Left = 64
    Top = 391
  end
end

inherited DlgAjusteComissao: TDlgAjusteComissao
  Left = 451
  Top = 155
  Width = 782
  Height = 474
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 648
    Height = 393
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 359
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 1
      Caption = '&Pesquisar'
    end
    inherited btGravar: TTS_SpeedButton
      Top = 34
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 766
    Gradient.ColorStart = 12240214
    inherited btHelp: TTS_SpeedButton
      Left = 738
    end
    inherited lbCaption: TdxfLabel
      Width = 159
      AutoSize = True
      Caption = 'Ajuste Comiss'#227'o'
      Effect3D.ShadowedColor = 12240214
    end
  end
  inherited pnDados: TTS_Panel
    Width = 648
    Height = 393
    Color = 15396297
    object pnTop: TTS_Panel
      Left = 1
      Top = 198
      Width = 564
      Height = 228
      Color = 15396297
      TabOrder = 0
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 37
      Width = 646
      Height = 355
      Align = alClient
      Color = 15396297
      TabOrder = 1
      object dgSaidas: TTS_QDBGrid
        Left = 1
        Top = 1
        Width = 644
        Height = 112
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SAIDA'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'NUMERO'
                SummaryFormat = '>NUMERO=###0'
                SummaryType = cstCount
              end
              item
                SummaryField = 'TOTAL'
                SummaryFormat = '>TOTAL=#,###,##0.00'
                SummaryType = cstSum
              end>
            Name = 'Default'
          end>
        SummarySeparator = '|'
        Align = alTop
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
        DataSource = C_SaidasDs
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
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowRowFooter = True
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
        TS_SelectedColumn = 'NUMERO'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'NUMERO;COUNT'
          'TOTAL; sum')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dgSaidasSAIDA: TdxDBGridMaskColumn
          Visible = False
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SAIDA'
        end
        object dgSaidasNUMERO: TdxDBGridMaskColumn
          Caption = 'N'#250'mero'
          Sorted = csUp
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUMERO'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '###0'
        end
        object dgSaidasDATA: TdxDBGridDateColumn
          Caption = 'Data'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object dgSaidasCLIENTE: TdxDBGridMaskColumn
          Caption = 'Cliente'
          Width = 277
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLIENTE'
        end
        object dgSaidasDESCONTO: TdxDBGridCurrencyColumn
          Caption = 'Desconto'
          HeaderAlignment = taRightJustify
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCONTO'
          Nullable = False
        end
        object dgSaidasTOTAL: TdxDBGridCurrencyColumn
          Caption = 'Total'
          HeaderAlignment = taRightJustify
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTAL'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
          Nullable = False
        end
      end
      object dgItens: TTS_QDBGrid
        Left = 1
        Top = 113
        Width = 644
        Height = 241
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SAIDAITEM'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'CODIGO'
                SummaryFormat = '>CODIGO=###0'
                SummaryType = cstCount
              end
              item
                SummaryField = 'icValorComissao'
                SummaryFormat = '>icValorComissao=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'PCOMISSAO'
                SummaryFormat = '>PCOMISSAO=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'SUBTOTALITEM'
                SummaryFormat = '>SUBTOTALITEM=#,###,##0.00'
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
        TabOrder = 1
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = C_AjusteComissaoDS
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
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowRowFooter = True
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
        TS_SelectedColumn = 'CODIGO'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'CODIGO;COUNT;'
          'icValorComissao;SUM;'
          'PCOMISSAO;AVG;'
          'SUBTOTALITEM;SUM;'
          '')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dgItensSAIDAITEM: TdxDBGridMaskColumn
          DisableEditor = True
          Visible = False
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SAIDAITEM'
        end
        object dgItensCODIGO: TdxDBGridMaskColumn
          Caption = 'C'#243'digo'
          DisableEditor = True
          Sorted = csUp
          Width = 82
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '###0'
        end
        object dgItensDESCRICAO: TdxDBGridMaskColumn
          Caption = 'Descri'#231#227'o'
          DisableEditor = True
          Width = 260
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAO'
        end
        object dgItensPRECO: TdxDBGridMaskColumn
          Caption = 'Pre'#231'o'
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRECO'
        end
        object dgItensQUANTIDADE: TdxDBGridMaskColumn
          Caption = 'Qtd'
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QUANTIDADE'
        end
        object dgItensPCOMISSAO: TdxDBGridMaskColumn
          Caption = '%'
          HeaderAlignment = taRightJustify
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PCOMISSAO'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
        end
        object dgItensSUBTOTALITEM: TdxDBGridMaskColumn
          Caption = 'Sub Total'
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SUBTOTALITEM'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
        end
        object dgItensUNIDADE: TdxDBGridMaskColumn
          Caption = 'Unidade'
          DisableEditor = True
          Visible = False
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNIDADE'
        end
        object dgItens_icSelecionado: TdxDBGridColumn
          DisableEditor = True
          Visible = False
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = '_icSelecionado'
        end
        object dgItensicValorComissao: TdxDBGridMaskColumn
          Caption = 'Comiss'#227'o'
          DisableEditor = True
          HeaderAlignment = taRightJustify
          Width = 66
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icValorComissao'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
        end
      end
    end
    object TS_Panel2: TTS_Panel
      Left = 1
      Top = 1
      Width = 646
      Height = 36
      Align = alTop
      Color = 15396297
      TabOrder = 2
      object TS_Label1: TTS_Label
        Left = 11
        Top = 10
        Width = 50
        Height = 13
        Alignment = taLeftJustify
        AutoSize = True
        Caption = 'Vendedor:'
        WordWrap = False
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 241
        Top = 10
        Width = 47
        Height = 13
        Alignment = taLeftJustify
        AutoSize = True
        Caption = 'Dt. Inicio:'
        WordWrap = False
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 395
        Top = 10
        Width = 44
        Height = 13
        Alignment = taLeftJustify
        AutoSize = True
        Caption = 'Dt. Final:'
        WordWrap = False
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dtInicio: TTS_DateTimePicker
        Left = 296
        Top = 8
        Width = 89
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
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
        Height = 19
        StoredValues = 4
      end
      object dtFim: TTS_DateTimePicker
        Left = 444
        Top = 8
        Width = 89
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
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
        Height = 19
        StoredValues = 4
      end
      object lkVendedor: TTS_LookupComboBox
        Left = 68
        Top = 8
        Width = 161
        TabOrder = 2
        StyleController = DMProjeto.esFuncionarios
        ClearKey = 32
        ListFieldName = 'NOME'
        KeyFieldName = 'FAVORECIDO'
        ListSource = Q_VendedorDs
        LookupKeyValue = Null
        Height = 19
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 28
    Top = 250
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 64
    Top = 339
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 494
    Top = 0
  end
  inherited Beep: TBTBeeper
    Left = 582
    Top = 0
  end
  inherited FormStorage: TFormStorage
    Left = 546
    Top = 2
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Ajuste Comiss'#227'o'
    Left = 32
    Top = 290
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 623
    Top = 2
  end
  object Q_AjusteComissao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'Select'
      '       si.saida,'
      '       si.saidaitem,'
      '       i.codigo,'
      '       si.descricao,'
      '       coalesce(si.pcomissao,0.00) as PCOMISSAO,'
      '       si.preco,'
      '       si.quantidade,'
      '       si.unidade,'
      '       si.subtotalitem - si.RateioDesconto as subtotalitem'
      'From saidasitens si'
      '       inner join itens i on i.item = si.item'
      'where si.saida = :SAIDA'
      'Order by si.sequencia')
    UpdateObject = U_AjusteComissao
    Left = 156
    Top = 298
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SAIDA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object P_AjusteComissao: TDataSetProvider
    DataSet = Q_AjusteComissao
    Constraints = True
    Left = 216
    Top = 298
  end
  object C_AjusteComissao: TClientDataSet
    Aggregates = <>
    DataSetField = C_SaidasQ_AjusteComissao
    Params = <>
    OnCalcFields = C_AjusteComissaoCalcFields
    Left = 290
    Top = 300
    object C_AjusteComissao_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_AjusteComissaoSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Required = True
    end
    object C_AjusteComissaoPCOMISSAO: TFloatField
      FieldName = 'PCOMISSAO'
    end
    object C_AjusteComissaoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_AjusteComissaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_AjusteComissaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_AjusteComissaoSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_AjusteComissaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_AjusteComissaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_AjusteComissaoicValorComissao: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValorComissao'
    end
  end
  object C_AjusteComissaoDS: TDataSource
    DataSet = C_AjusteComissao
    Left = 352
    Top = 302
  end
  object U_AjusteComissao: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidasitens '
      'where'
      '  SAIDAITEM = :SAIDAITEM')
    ModifySQL.Strings = (
      'update saidasitens'
      'set'
      '  PCOMISSAO = :PCOMISSAO'
      'where'
      '  SAIDAITEM = :OLD_SAIDAITEM')
    InsertSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      'delete from saidasitens'
      'where'
      '  SAIDAITEM = :OLD_SAIDAITEM')
    Left = 432
    Top = 302
  end
  object C_SaidasDs: TDataSource
    DataSet = C_Saidas
    Left = 184
    Top = 140
  end
  object C_Saidas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Saidas'
    Left = 130
    Top = 122
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_SaidasSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Origin = 'SAIDAS.SAIDA'
      Required = True
    end
    object C_SaidasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'SAIDAS.NUMERO'
      Size = 12
    end
    object C_SaidasDATA: TDateField
      FieldName = 'DATA'
      Origin = 'SAIDAS.DATA'
    end
    object C_SaidasCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'FAVORECIDOS.CLIENTE'
      Size = 50
    end
    object C_SaidasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'SAIDAS.DESCONTO'
    end
    object C_SaidasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SAIDAS.TOTAL'
    end
    object C_SaidasQ_AjusteComissao: TDataSetField
      FieldName = 'Q_AjusteComissao'
    end
  end
  object P_Saidas: TDataSetProvider
    DataSet = Q_Saidas
    Constraints = True
    Left = 78
    Top = 134
  end
  object Q_Saidas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select'
      '       s.saida, '
      '       s.numero, '
      '       s.data,'
      '       f.nome as Cliente,'
      '       s.desconto,'
      '       s.Total'
      ''
      'From saidas s'
      '       inner join favorecidos f on f.favorecido = s.favorecido'
      'where s.vendedor = :vendedor'
      'and s.data >= :dataI'
      'and s.data <= :dataF'
      '')
    Left = 18
    Top = 132
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataF'
        ParamType = ptUnknown
      end>
  end
  object Q_Vendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select favorecido,  nome'
      'from favorecidos f'
      'where f.isvendedor = '#39'S'#39
      'order by nome')
    Left = 306
    Top = 126
    object Q_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object Q_VendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object Q_VendedorDs: TDataSource
    DataSet = Q_Vendedor
    Left = 334
    Top = 230
  end
  object Q_MasterDS: TDataSource
    DataSet = Q_Saidas
    Left = 140
    Top = 194
  end
end

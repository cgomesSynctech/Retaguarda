inherited FrmLancamentos: TFrmLancamentos
  Left = 4
  Top = 130
  Width = 727
  Height = 378
  Caption = 'Contabilidade'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 604
    Height = 301
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 267
    end
  end
  inherited pnDados: TTS_Panel
    Width = 604
    Height = 301
    inherited Grid: TTS_QDBGrid
      Width = 602
      Height = 299
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 602
      Height = 299
    end
    inherited sbDados: TTS_Panel
      Width = 602
      Height = 299
      Color = 14733792
      object TS_Label1: TTS_Label
        Left = 18
        Top = 33
        Width = 94
        Caption = '# Refer'#234'ncia:'
        FocusControl = TS_DBButtonEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 45
        Top = 6
        Width = 65
        Caption = 'Data:'
        FocusControl = TS_DBEditDate1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 265
        Top = 34
        Width = 131
        Caption = 'Diferen'#231'a de Balan'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lblDiferenca: TTS_Label
        Left = 400
        Top = 34
        Width = 81
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEditDate1: TTS_DBEditDate
        Left = 115
        Top = 5
        Width = 95
        TabOrder = 1
        DataField = 'DATA'
        DataSource = DMLancamentos.C_TabelaDS
        StyleController = DMProjeto.esContabil
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
      object dbgLancamentos: TTS_QDBGrid
        Left = 0
        Top = 53
        Width = 602
        Height = 246
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'LANCAMENTOITEM'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        AutoSearchColor = 6611199
        AutoSearchTextColor = clBlue
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMLancamentos.C_LancamentosItensDS
        Filter.Criteria = {00000000}
        HeaderColor = 15461355
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideFocusRect = True
        HideSelection = True
        HighlightColor = clInfoBk
        HighlightTextColor = clWindowText
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        OnCalcSummary = dbgLancamentosCalcSummary
        OnCustomDrawCell = dbgLancamentosCustomDrawCell
        Anchors = [akLeft, akTop, akRight, akBottom]
        TS_DescriptionCanChange = False
        TS_AppendOnEnter = True
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
        GroupNodeFont.Style = []
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
        TS_MultiSelection = False
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'lkConta'
        TS_ID = 0
        TS_ChaveEstrangeira = 'favorecido'
        TS_C_Localizar = DMProjeto.C_LocalizarFav
        TS_ItemColumns = 'nome'
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgLancamentosContax: TdxDBGridPopupColumn
          Caption = 'Conta'
          HeaderAlignment = taCenter
          Width = 148
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkConta'
          PopupControl = DlgPopupContas.pnPopup
          PopupFormBorderStyle = pbsSysPanel
          OnInitPopup = dbgLancamentosContaxInitPopup
        end
        object dbgLancamentosColumn1: TdxDBGridLookupColumn
          Alignment = taLeftJustify
          Caption = 'Conta'
          HeaderAlignment = taCenter
          Visible = False
          Width = 157
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkConta'
          DropDownRows = 12
          DropDownWidth = 340
          ListFieldName = 'descricao;desctipo'
        end
        object dbgLancamentosDebito: TdxDBGridColumn
          Caption = 'D'#233'bito'
          HeaderAlignment = taCenter
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Debito'
          SummaryFooterType = cstSum
          SummaryFooterField = 'Debito'
        end
        object dbgLancamentosCredito: TdxDBGridColumn
          Caption = 'Cr'#233'dito'
          HeaderAlignment = taCenter
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Credito'
          SummaryFooterType = cstSum
        end
        object dbgLancamentosColumn5: TdxDBGridColumn
          Caption = 'Hist'#243'rico'
          HeaderAlignment = taCenter
          Width = 159
          BandIndex = 0
          RowIndex = 0
          HeaderMaxLineCount = 0
          FieldName = 'HISTORICO'
          DisableFilter = True
        end
        object dbgLancamentosCliente: TdxDBGridButtonColumn
          Caption = 'Cliente'
          HeaderAlignment = taCenter
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME'
          Buttons = <
            item
              Default = True
            end>
        end
      end
      object TS_DBButtonEdit1: TTS_DBButtonEdit
        Left = 115
        Top = 31
        Width = 95
        TabOrder = 2
        DataField = 'REFERENCIA'
        DataSource = DMLancamentos.C_TabelaDS
        StyleController = DMProjeto.esContabil
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
        OnButtonClick = TS_DBButtonEdit1ButtonClick
        Height = 19
        ExistButtons = True
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 719
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Width = 71
      Caption = 'Journal'
      Effect3D.ShadowedColor = 12689345
    end
    inherited btHelp: TTS_SpeedButton
      Left = 599
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Top = 210
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Journal'
    SalvarUnicoRegistro = True
    Top = 243
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 380
    end
  end
  object C_PopupDS: TDataSource
    DataSet = DMLancamentos.C_Contas
    Left = 316
    Top = 220
  end
end

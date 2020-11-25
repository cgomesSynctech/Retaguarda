inherited FrmContabilidade: TFrmContabilidade
  Left = 409
  Top = 222
  HelpContext = 0
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Contabilidade'
  ClientHeight = 314
  ClientWidth = 670
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 577
    Width = 93
    Height = 271
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 237
      Width = 91
    end
    inherited btComando2: TTS_SpeedButton
      Width = 91
    end
    inherited btComando1: TTS_SpeedButton
      Width = 91
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 91
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 91
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 91
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 670
    Gradient.ColorStart = 12689345
    inherited lbEstadoForm: TTS_Label
      Width = 63
      Caption = 'Lan'#231'amentos'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 463
    end
    inherited lbUpperHint: TTS_Label
      Left = 627
    end
    inherited lbCaption: TdxfLabel
      Width = 132
      AutoSize = True
      Caption = 'Contabilidade'
      Effect3D.ShadowedColor = 12689345
    end
  end
  inherited pnDados: TTS_Panel
    Width = 577
    Height = 271
    Color = 14733792
    object dbgContabil: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 575
      Height = 269
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'LANCAMENTOITEM'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
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
      DataSource = C_ContabilidadeDS
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
      HideSelectionTextColor = clWindowText
      HighlightColor = clInfoBk
      HighlightTextColor = clWindowText
      OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnCustomDrawCell = dbgContabilCustomDrawCell
      OnEditing = dbgContabilEditing
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
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'lkConta'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgContabilConta: TdxDBGridPopupColumn
        Alignment = taLeftJustify
        Caption = 'Conta'
        HeaderAlignment = taCenter
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkConta'
        PopupControl = DlgPopupContas.pnPopup
        PopupFormBorderStyle = pbsSysPanel
      end
      object dbgContabilTipoConta: TdxDBGridColumn
        Caption = 'Tipo Conta'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'desctipo'
      end
      object dbgContabilHistorico: TdxDBGridColumn
        Caption = 'Hist'#243'rico'
        HeaderAlignment = taCenter
        Width = 165
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 0
        FieldName = 'HISTORICO'
        DisableFilter = True
      end
      object dbgContabilDebito: TdxDBGridColumn
        Alignment = taRightJustify
        Caption = 'D'#233'bito'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Debito'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Debito'
        SummaryFooterFormat = '###,##0.00'
      end
      object dbgContabilCredito: TdxDBGridColumn
        Alignment = taRightJustify
        Caption = 'Cr'#233'dito'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Credito'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
      end
      object dbgContabilAlterar: TdxDBGridColumn
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'alterar'
      end
      object dbgContabilLancamentoItem: TdxDBGridColumn
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lancamentoitem'
      end
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 250
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 126
    Top = 126
  end
  inherited FormStorage: TFormStorage
    Left = 128
    Top = 72
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Contabilidade'
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 263
    end
  end
  object C_ContabilidadeDS: TDataSource
    Left = 129
    Top = 184
  end
end

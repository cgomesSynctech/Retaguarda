inherited FrmItensIdentificacao: TFrmItensIdentificacao
  Left = 374
  Top = 173
  Width = 527
  Height = 406
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label1: TTS_Label [0]
    Left = 8
    Top = 57
    Width = 57
    Caption = 'Serial:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  inherited pnNavigator: TTS_Panel
    Left = 396
    Height = 325
    inherited btPesquisar: TTS_SpeedButton
      Top = 39
      Visible = False
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 72
      Visible = False
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Fechar'
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 291
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
    inherited pnAvancaRecua: TTS_Panel
      inherited btPrevReg: TTS_SpeedButton
        Visible = False
      end
      inherited btProxReg: TTS_SpeedButton
        Visible = False
      end
      inherited btPrimeiroReg: TTS_SpeedButton
        Visible = False
      end
      inherited btUltimoReg: TTS_SpeedButton
        Visible = False
      end
    end
  end
  inherited pnDados: TTS_Panel
    Width = 396
    Height = 325
    inherited Grid: TTS_QDBGrid
      Width = 394
      Height = 323
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 394
      Height = 323
    end
    inherited sbDados: TTS_Panel
      Width = 394
      Height = 323
      Color = 15196656
      object dbgItensIdentificacaoEntrada: TTS_QDBGrid
        Tag = -2
        Left = 7
        Top = 16
        Width = 382
        Height = 284
        HelpContext = -2
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEMIDENT'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
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
        DataSource = DMItensIdentificacao.C_TabelaDS
        Filter.Criteria = {00000000}
        GroupPanelColor = 15461355
        HeaderColor = 15461355
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -13
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideFocusRect = True
        HideSelection = True
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        Anchors = [akLeft, akTop, akRight, akBottom]
        TS_PermitirQuantidade = False
        TS_DescriptionCanChange = False
        TS_GridMenuOptions = []
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
        TS_SelectionFont.Height = -12
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'SERIAL'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Codigo:'
        TS_SummaryFooterQtdSelectedText = 'Codigo de Barras:'
        object dbgItensIdentificacaoSerial: TdxDBGridMaskColumn
          Caption = 'N'#250'mero de Identifica'#231#227'o'
          HeaderAlignment = taCenter
          Sorted = csDown
          Width = 109
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SERIAL'
          SummaryFooterType = cstCount
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 394
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 511
    inherited lbCaption: TdxfLabel
      Width = 276
      Caption = 'Itens Identificados - Entrada'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 480
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 65535
    Top = 100
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 74
    Top = 103
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 338
    Top = 107
  end
  inherited ImgPadrao: TImageList
    Left = 234
    Top = 101
  end
  inherited FormComponent: TFormComponent
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Itens Identificados - Entrada'
    Left = 34
    Top = 100
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 339
    Top = 60
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 339
    Top = 13
  end
  inherited Beep: TBTBeeper
    Left = 144
    Top = 104
  end
  inherited FormStorage: TFormStorage
    Left = 192
    Top = 104
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 346
    Top = 156
  end
end

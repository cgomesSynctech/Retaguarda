inherited dlgAssistenciaPecasServicos: TdlgAssistenciaPecasServicos
  Left = 79
  Top = 143
  Width = 651
  Height = 350
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 525
    Height = 280
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 246
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 643
    Gradient.ColorStart = 14003626
    inherited btHelp: TTS_SpeedButton
      Left = 607
    end
    inherited lbCaption: TdxfLabel
      Width = 157
      AutoSize = True
      Caption = 'Pe'#231'as e Servi'#231'os'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnDados: TTS_Panel
    Width = 525
    Height = 280
    Color = 15456728
    object dbgItens: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 523
      Height = 278
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SERVICODET'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'SUBTOTAL'
              SummaryFormat = '>SUBTOTAL=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'DESCRICAOITEM'
              SummaryFormat = '>DESCRICAOITEM=###0'
              SummaryType = cstCount
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
      PopupMenu = ppmItens
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DMAssistenciaLaboratorio.C_ServicosDetDs
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
      TS_SelectedColumn = 'DESCRICAOITEM'
      TS_ID = 0
      TS_ChaveEstrangeira = 'item'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'DescricaoItem'
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'SUBTOTAL;SUM'
        'DESCRICAOITEM;COUNT')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgItens_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object dbgItensDescricao: TdxDBGridButtonColumn
        Caption = 'Descri'#231#227'o'
        Width = 280
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOITEM'
        Buttons = <
          item
            Default = True
          end
          item
            Default = False
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              800088888888888880008888800088888000888880C088888000888880C08888
              8000880000C000088000880CCCCCCC088000880000C000088000888880C08888
              8000888880C08888800088888000888880008888888888888000888888888888
              8000}
            Kind = bkGlyph
          end>
        OnButtonClick = dbgItensDescricaoButtonClick
      end
      object dbgItensITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgItensQUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Qtd'
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        Nullable = False
      end
      object dbgItensSERVICO: TdxDBGridMaskColumn
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICO'
      end
      object dbgItensSERVICODET: TdxDBGridMaskColumn
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICODET'
      end
      object dbgItensVALOR: TdxDBGridCurrencyColumn
        Caption = 'Valor Unt.'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        Nullable = False
      end
      object dbgItensSSUBTOTAL: TdxDBGridColumn
        Caption = 'SubTotal'
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 210
    Top = 186
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 132
    Top = 182
  end
  inherited Beep: TBTBeeper
    Left = 212
    Top = 130
  end
  inherited FormStorage: TFormStorage
    Left = 334
    Top = 146
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Pe'#231'as e Servi'#231'os'
    Left = 330
    Top = 198
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 133
    Top = 130
  end
  object ppmItens: TTS_PopupMenu
    Left = 320
    Top = 83
    object AdicionarItens1: TMenuItem
      Caption = 'Adicionar Itens...'
    end
    object ExcluirItem1: TMenuItem
      Caption = 'Excluir Item...'
    end
    object MostrarContagens1: TMenuItem
      Caption = 'Mostrar Contagens'
    end
  end
end

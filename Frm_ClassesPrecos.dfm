inherited FrmClassesPrecos: TFrmClassesPrecos
  Left = 124
  Top = 103
  Height = 309
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 239
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 205
    end
  end
  inherited pnDados: TTS_Panel
    Height = 239
    inherited Grid: TTS_QDBGrid
      Height = 237
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 237
    end
    inherited sbDados: TTS_Panel
      Height = 237
      Caption = '`'
      Color = 14542583
      object TS_QDBGrid1: TTS_QDBGrid
        Left = 0
        Top = 45
        Width = 440
        Height = 192
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CLASSEPRECODET'
        SummaryGroups = <>
        SummarySeparator = '|'
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = TS_PopupMenu1
        TabOrder = 1
        OnEnter = TS_QDBGrid1Enter
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMClassesPrecos.C_ClassesPrecosDetdS
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
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
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
        TS_SelectedColumn = 'lkUNidades'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object TS_QDBGrid1_icSelecionado: TdxDBGridColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = '_icSelecionado'
        end
        object TS_QDBGrid1CLASSEPRECODET: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASSEPRECODET'
        end
        object TS_QDBGrid1CLASSEPRECO: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLASSEPRECO'
        end
        object TS_QDBGrid1UNIDADE: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNIDADE'
        end
        object TS_QDBGrid1lkUNidades: TdxDBGridLookupColumn
          Caption = 'Unidade'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkUNidades'
        end
        object TS_QDBGrid1PERCENTUAL: TdxDBGridCurrencyColumn
          Caption = 'Percentual'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERCENTUAL'
          Nullable = False
        end
      end
      object TS_PanelCorner1: TTS_PanelCorner
        Left = 0
        Top = 0
        Width = 440
        Height = 45
        Align = alTop
        BevelInner = bvLowered
        Color = 14542583
        TabOrder = 0
        BoxWithShadow = False
        object TS_Label1: TTS_Label
          Left = 22
          Top = 11
          Width = 65
          Caption = '&Classifica'#231#227'o:'
          FocusControl = dfClassificacao
          FormatoTabela = False
          LinkToResult = 0
        end
        object dfClassificacao: TTS_DBEdit
          Left = 90
          Top = 10
          Width = 265
          TabOrder = 0
          DataField = 'DESCRICAO'
          DataSource = DMClassesPrecos.C_TabelaDS
          StyleController = DMProjeto.esGeral
          DistinctEditOn = False
          Height = 19
        end
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 396
      Caption = 'Cadastro de Classes dos Pre'#231'os dos Itens'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 248
    Top = 185
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Cadastro de Classes dos Pre'#231'os dos Itens'
    FirstEditField = dfClassificacao
    FirstSearchField = dfClassificacao
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 385
    Top = 118
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 319
    Top = 143
  end
  object TS_PopupMenu1: TTS_PopupMenu
    Left = 339
    Top = 215
    object MenuItem1: TMenuItem
      Caption = 'Habilitar Altera'#231#245'es'
      OnClick = HabilitarAlteraes1Click
    end
  end
end

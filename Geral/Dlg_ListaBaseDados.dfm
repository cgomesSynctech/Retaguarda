object DlgListaBaseDados: TDlgListaBaseDados
  Left = 207
  Top = 212
  Width = 516
  Height = 209
  Caption = 'Lista das Bases de Dados Registradas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgBases: TTS_QDBGrid
    Left = 0
    Top = 0
    Width = 508
    Height = 175
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Index'
    SummaryGroups = <>
    SummarySeparator = '|'
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = ppmGrid
    TabOrder = 0
    AutoSearchColor = clYellow
    AutoSearchTextColor = clNavy
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = C_BaseDadosDS
    Filter.Criteria = {00000000}
    HeaderColor = 15461355
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HideFocusRect = True
    HideSelection = True
    OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    TS_DescriptionCanChange = False
    TS_GridMenuOptions = [gmImprimir, gmExportar]
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
    TS_SelectedColumn = 'Nome'
    TS_ID = 0
    TS_TipoDescricao = tdVenda
    TS_SummaryFooterQtdText = 'Qtd. Geral:'
    TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
    object dbgBasesColumn2: TdxDBGridColumn
      Caption = 'Nome da Empresa'
      Width = 165
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nome'
    end
    object dbgBasesColumn3: TdxDBGridColumn
      Caption = 'Local da Base de Dados'
      Width = 318
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Local'
    end
    object dbgBasesColumn4: TdxDBGridColumn
      Caption = '*'
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      Width = 21
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Padrao'
    end
  end
  object C_BaseDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 48
    object C_BaseDadosIndex: TIntegerField
      FieldName = 'Index'
    end
    object C_BaseDadosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object C_BaseDadosLocal: TStringField
      FieldName = 'Local'
      Size = 200
    end
    object C_BaseDadosPadrao: TStringField
      FieldName = 'Padrao'
      Size = 1
    end
  end
  object C_BaseDadosDS: TDataSource
    DataSet = C_BaseDados
    Left = 256
    Top = 48
  end
  object ppmGrid: TTS_PopupMenu
    Left = 344
    Top = 56
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 116
      OnClick = Gravar1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end

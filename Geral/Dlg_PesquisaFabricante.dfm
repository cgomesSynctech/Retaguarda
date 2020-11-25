object DlgPesquisaFabricante: TDlgPesquisaFabricante
  Left = 192
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Selecionar por Fabricante'
  ClientHeight = 298
  ClientWidth = 302
  Color = clInactiveCaptionText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pcFabricantes: TPageControl
    Left = 0
    Top = 0
    Width = 302
    Height = 298
    ActivePage = tsFabricantes
    Align = alClient
    TabOrder = 0
    object tsFabricantes: TTabSheet
      Caption = 'tsFabricantes'
      TabVisible = False
      object Panel1: TPanel
        Left = 3
        Top = 1
        Width = 288
        Height = 285
        TabOrder = 0
        object dbgFabricantes: TTS_QDBGrid
          Left = 1
          Top = 1
          Width = 286
          Height = 283
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'FABRICANTE'
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = dbgFabricantesKeyPress
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = Q_FabricantesDS
          Filter.Criteria = {00000000}
          HeaderColor = 15461355
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
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
          TS_SelectedColumn = 'descricao'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dbgFabricantesColumn2: TdxDBGridColumn
            Caption = 'Descri'#231#227'o do Fabricante'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'descricao'
          end
        end
      end
    end
    object tsGrupos2: TTabSheet
      Caption = 'tsGrupos2'
      ImageIndex = 1
      TabVisible = False
      OnEnter = tsGrupos2Enter
      object Label2: TLabel
        Left = 7
        Top = 5
        Width = 61
        Height = 13
        Caption = 'SubGrupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 2
        Top = 21
        Width = 288
        Height = 264
        TabOrder = 0
        object dblGrupos2: TDBLookupListBox
          Left = 1
          Top = 1
          Width = 286
          Height = 258
          Align = alClient
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'Grupo'
          ListField = 'Descricao'
          ListSource = Q_GruposDS2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnDblClick = dblGrupos2DblClick
        end
      end
    end
    object tsGrupos3: TTabSheet
      Caption = 'tsGrupos3'
      ImageIndex = 2
      TabVisible = False
      OnEnter = tsGrupos3Enter
      object Label3: TLabel
        Left = 7
        Top = 5
        Width = 117
        Height = 13
        Caption = 'Grupo do SubGrupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 2
        Top = 21
        Width = 288
        Height = 264
        TabOrder = 0
        object dblGrupos3: TDBLookupListBox
          Left = 1
          Top = 1
          Width = 286
          Height = 258
          Align = alClient
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'Grupo'
          ListField = 'Descricao'
          ListSource = Q_GruposDS3
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnDblClick = dblGrupos3DblClick
        end
      end
    end
  end
  object Q_FabricantesDS: TDataSource
    DataSet = C_Fabricantes
    Left = 43
    Top = 72
  end
  object Q_GruposDS2: TDataSource
    Left = 156
    Top = 48
  end
  object Q_GruposDS3: TDataSource
    Left = 114
    Top = 138
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Fabricantes'
      'order by descricao')
    Left = 186
    Top = 89
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fabricantes'
    Left = 190
    Top = 139
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Required = True
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_Fabricantes: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 189
    Top = 187
  end
end

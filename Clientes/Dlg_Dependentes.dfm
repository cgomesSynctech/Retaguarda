inherited DlgDependentes: TDlgDependentes
  Width = 560
  Height = 270
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 434
    Height = 200
    Color = 16116702
    object DBDependentes: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 432
      Height = 198
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DEPENDENTE'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DMClientes.Q_DependentesDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
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
      TS_SelectedColumn = 'NOME'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object DBDependentesDEPENDENTE: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEPENDENTE'
      end
      object DBDependentesFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object DBDependentesNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        HeaderAlignment = taCenter
        Width = 253
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object DBDependentesDATANASC: TdxDBGridDateColumn
        Caption = 'Data Nasc.'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATANASC'
      end
      object DBDependentesGRAUPARENTESCO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRAUPARENTESCO'
      end
      object DBDependentesDescGrauParent: TdxDBGridLookupColumn
        Caption = 'Grau Parentesco'
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescGrauParent'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 434
    Height = 200
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 166
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 552
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 124
      Caption = 'Dependentes'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbEstadoForm: TTS_Label
      Top = 26
      Width = 17
      Caption = 'De:'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 516
    end
    object lbFavorecido: TTS_Label
      Left = 94
      Top = 26
      Width = 257
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Dependentes'
  end
end

inherited FrmTaxs: TFrmTaxs
  Left = 97
  Top = 190
  Width = 534
  Height = 332
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 411
    Height = 262
    inherited btGravar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btLimpar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 228
    end
  end
  inherited pnDados: TTS_Panel
    Width = 411
    Height = 262
    inherited Grid: TTS_QDBGrid
      Width = 409
      Height = 260
      Filter.Criteria = {00000000}
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridTAX: TdxDBGridMaskColumn
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAX'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 277
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridQ_TaxItens: TdxDBGridColumn
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Q_TaxItens'
      end
      object GridPERCENTUAL: TdxDBGridMaskColumn
        Caption = 'Perc.(%)'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUAL'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 409
      Height = 260
    end
    inherited sbDados: TTS_Panel
      Width = 409
      Height = 260
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 13
        Top = 14
        Width = 65
        Height = 17
        Caption = 'Tax:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 1
        Top = 38
        Width = 77
        Height = 17
        Caption = '(%) Total:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 22
        Top = 69
        Width = 156
        Cursor = crHandPoint
        Hint = 'Permite entrar no cadastro de ag'#234'ncias de taxs'
        Alignment = taLeftJustify
        Caption = 'Ag'#234'ncias de Tax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = TS_Label3Click
        FormatoTabela = False
        LinkTo = 'FrmTaxAgencias'
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 84
        Top = 13
        Width = 245
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTaxs.C_TabelaDS
        StyleController = DMProjeto.esClientes
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 84
        Top = 36
        Width = 52
        Color = 16247774
        TabOrder = 1
        DataField = 'PERCENTUAL'
        DataSource = DMTaxs.C_TabelaDS
        StyleController = DMProjeto.esClientes
        Height = 19
      end
      object TS_QDBGrid1: TTS_QDBGrid
        Left = 21
        Top = 86
        Width = 372
        Height = 163
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'TAXITEM'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'Percentual'
                SummaryFormat = '>Percentual=##0.00'
                SummaryType = cstSum
              end>
            Name = 'Default'
          end>
        SummarySeparator = ', '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = TS_QDBGrid1Enter
        AutoSearchColor = 6611199
        AutoSearchTextColor = clBlue
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMTaxs.Q_TaxItensDS
        Filter.Criteria = {00000000}
        HeaderColor = 15461355
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideFocusRect = True
        HideSelection = True
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        TS_DescriptionCanChange = False
        TS_AppendOnEnter = True
        RowFooterNodeFont.Charset = DEFAULT_CHARSET
        RowFooterNodeFont.Color = clWindowText
        RowFooterNodeFont.Height = -11
        RowFooterNodeFont.Name = 'Tahoma'
        RowFooterNodeFont.Style = [fsBold]
        TS_AccountFooterStyle = False
        TS_HideFocusedRect = hfHideAlways
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
        TS_SelectedColumn = 'DescTaxAgencia'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'Percentual;Sum')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object TS_QDBGrid1TAXITEM: TdxDBGridMaskColumn
          Visible = False
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAXITEM'
        end
        object TS_QDBGrid1TAX: TdxDBGridMaskColumn
          Visible = False
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAX'
        end
        object TS_QDBGrid1TAXAGENCIA: TdxDBGridMaskColumn
          Visible = False
          Width = 126
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TAXAGENCIA'
        end
        object TS_QDBGrid1DescTaxAgencia: TdxDBGridLookupColumn
          Caption = 'Ag'#234'ncia de Tax'
          HeaderAlignment = taCenter
          Width = 280
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DescTaxAgencia'
        end
        object TS_QDBGrid1PERCENTUAL: TdxDBGridColumn
          Caption = '% Perc.'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERCENTUAL'
        end
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 526
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 34
      Caption = 'Tax'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Tax'
    FirstEditField = TS_DBEdit1
  end
end

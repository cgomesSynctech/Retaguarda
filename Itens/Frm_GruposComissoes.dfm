inherited FrmGruposComissoes: TFrmGruposComissoes
  Left = 227
  Top = 146
  Width = 474
  Height = 406
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 351
    Height = 336
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 302
    end
  end
  inherited pnDados: TTS_Panel
    Width = 351
    Height = 336
    inherited Grid: TTS_QDBGrid
      Width = 349
      Height = 334
      KeyField = 'GRUPOCOMISSAO'
      DataSource = DMGruposComissoes.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 332
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 349
      Height = 334
    end
    inherited sbDados: TTS_Panel
      Width = 349
      Height = 334
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 16
        Top = 16
        Width = 57
        Caption = 'Descri'#231#227'o:'
        FocusControl = edDesc
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 121
        Top = 41
        Width = 105
        Caption = 'Faixas de Descontos'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDesc: TTS_DBEdit
        Left = 77
        Top = 14
        Width = 236
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMGruposComissoes.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object dbgGrupos: TTS_QDBGrid
        Left = 17
        Top = 64
        Width = 313
        Height = 257
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'GRUPOCOMISSAODET'
        SummaryGroups = <>
        SummarySeparator = '|'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = ppmGridComissao
        TabOrder = 1
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMGruposComissoes.C_DetalheDS
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
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        TS_PermitirQuantidade = False
        TS_DescriptionCanChange = False
        TS_GridMenuOptions = []
        TS_AppendOnEnter = True
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
        TS_SelectedColumn = 'VALORINI'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgGruposGRUPOCOMISSAODET: TdxDBGridMaskColumn
          DisableCustomizing = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRUPOCOMISSAODET'
        end
        object dbgGruposGRUPOCOMISSAO: TdxDBGridMaskColumn
          DisableCustomizing = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRUPOCOMISSAO'
        end
        object dbgGruposVALORINI: TdxDBGridCalcColumn
          Caption = 'Valor Inicial (%)'
          HeaderAlignment = taCenter
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALORINI'
        end
        object dbgGruposVALORFIM: TdxDBGridCalcColumn
          Caption = 'Valor Final (%)'
          HeaderAlignment = taCenter
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALORFIM'
        end
        object dbgGruposCOMISSAO: TdxDBGridCalcColumn
          Caption = 'Comiss'#227'o (%)'
          HeaderAlignment = taCenter
          Width = 85
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COMISSAO'
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 349
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 466
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 205
      Caption = 'Grupos de Comiss'#245'es'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 427
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'edDesc')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Grupos de Comiss'#245'es'
  end
  object ppmGridComissao: TTS_PopupMenu
    Left = 216
    Top = 192
  end
end

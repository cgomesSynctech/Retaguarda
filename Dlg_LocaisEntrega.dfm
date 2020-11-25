inherited DlgLocaisEntrega: TDlgLocaisEntrega
  Left = 148
  Top = 101
  Width = 500
  Height = 297
  Caption = 'Clientes / Vendas'
  Constraints.MinHeight = 297
  Constraints.MinWidth = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 374
    Height = 227
    Color = 16116702
    object gridLocaisEntrega: TTS_QDBGrid
      Left = 4
      Top = 7
      Width = 365
      Height = 217
      Bands = <
        item
        end
        item
        end>
      DefaultLayout = False
      KeyField = 'ENTREGA'
      SummaryGroups = <>
      SummarySeparator = '|'
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
      DataSource = DMClientes.C_LocaisEntregaDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      MaxRowLineCount = 2
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      TS_ShowSelectionColumn = True
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object gridLocaisEntregaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descrição do Local'
        HeaderAlignment = taCenter
        Width = 125
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object gridLocaisEntregaENDERECOENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 208
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ENDERECOENTREGA'
      end
      object gridLocaisEntregaCEPENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 186
        BandIndex = 1
        RowIndex = 2
        FieldName = 'CEPENTREGA'
        StoredRowIndex = 2
      end
      object gridLocaisEntregaCIDADEENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 186
        BandIndex = 1
        RowIndex = 1
        FieldName = 'CIDADEENTREGA'
        StoredRowIndex = 1
      end
      object gridLocaisEntregaFONE: TdxDBGridMaskColumn
        Caption = 'Fone Contato'
        HeaderAlignment = taCenter
        Width = 147
        BandIndex = 1
        RowIndex = 2
        FieldName = 'FONEENTREGA'
        StoredRowIndex = 2
      end
      object gridLocaisEntregalkUFENTREGA: TdxDBGridLookupColumn
        Caption = 'Estado'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 1
        RowIndex = 1
        FieldName = 'lkUFENTREGA'
        StoredRowIndex = 1
      end
      object gridLocaisEntregalkPais: TdxDBGridLookupColumn
        Caption = 'País'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 1
        RowIndex = 1
        FieldName = 'lkPais'
        StoredRowIndex = 1
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 374
    Height = 227
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 193
    end
    inherited btComando2: TTS_SpeedButton
      Top = 35
      Height = 0
    end
    inherited btComando1: TTS_SpeedButton
      Top = 35
      Height = 0
    end
    inherited btLimpar: TTS_SpeedButton
      Height = 0
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 35
      Height = 0
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 492
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 169
      Caption = 'Locais de Entrega'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbEstadoForm: TTS_Label
      Width = 216
      Caption = 'Inclua / Altere e salve no cadastro do Cliente'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 456
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 302
    Top = 114
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 266
    Top = 114
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 158
    Top = 114
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Locais de Entrega'
    FirstEditField = gridLocaisEntrega
    Left = 122
    Top = 114
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 194
    Top = 114
  end
end

inherited FrmEntradasItensFilhos: TFrmEntradasItensFilhos
  Width = 599
  Height = 261
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 476
    Height = 184
    Color = 15196656
    object dbgSubItens: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 474
      Height = 182
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ENTRADAITEMFILHO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Quantidade'
              SummaryFormat = '>Quantidade='
              SummaryType = cstSum
            end
            item
              SummaryField = 'codigo'
              SummaryFormat = '>codigo=###0'
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
      PopupMenu = ppmPadrao
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
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
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_ChaveEstrangeira = 'item'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'codigo;descricao'
      TS_TipoDescricao = tdVenda
      TS_WhereAdicional = 'and haschildren <> '#39'S'#39
      TS_SummaryFields.Strings = (
        'Quantidade;sum'
        'codigo;count;U;codigo')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgSubItensSAIDAITEMFILHO: TdxDBGridMaskColumn
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEMFILHO'
      end
      object dbgSubItensIDITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDITEM'
      end
      object dbgSubItensITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgSubItensCodigo: TdxDBGridButtonColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgSubItensDescricao: TdxDBGridButtonColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 278
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgSubItensColumn8: TdxDBGridLookupColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUnidFilho'
      end
      object dbgSubItensQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Qtde.'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 476
    Width = 115
    Height = 184
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 150
      Width = 113
    end
    inherited btComando2: TTS_SpeedButton
      Width = 113
    end
    inherited btComando1: TTS_SpeedButton
      Width = 113
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 113
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 113
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 113
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 591
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 168
      Caption = 'SubItens do Item'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 555
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 46
    Top = 158
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 168
    Top = 177
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 129
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'SubItens do Item'
    Left = 114
    Top = 154
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 243
    Top = 111
  end
end

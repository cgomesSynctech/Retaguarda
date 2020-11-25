inherited DlgItensFilhos: TDlgItensFilhos
  Left = 79
  Top = 170
  Width = 1222
  Height = 414
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 1112
    Width = 94
    Height = 333
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 299
      Width = 92
    end
    inherited btComando2: TTS_SpeedButton
      Width = 92
    end
    inherited btComando1: TTS_SpeedButton
      Width = 92
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 92
      Caption = '&Limpar'
    end
    inherited btGravar: TTS_SpeedButton
      Width = 92
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 92
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1206
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 167
      Caption = 'Lista de Itens que comp'#245'e o Item: '
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1178
    end
    inherited lbCaption: TdxfLabel
      Width = 92
      AutoSize = True
      Caption = 'Sub Itens'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 1112
    Height = 333
    Color = 14019327
    object TS_Label1: TTS_Label
      Left = 11
      Top = 302
      Width = 1104
      Height = 30
      Alignment = taLeftJustify
      Anchors = [akLeft, akRight, akBottom]
      Caption = 
        '* O Custo M'#233'dio desta composi'#231#227'o (soma de todos os Sub Itens) pa' +
        'ssar'#225' a ser o Custo M'#233'dio e o '#218'ltimo Pre'#231'o de Compra do Item pri' +
        'ncipal. '
      FormatoTabela = False
      LinkToResult = 0
    end
    object Grid: TTS_QDBGrid
      Left = 7
      Top = 5
      Width = 1106
      Height = 290
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'IDFILHO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'icSubTotal'
              SummaryFormat = '>icSubTotal=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icSubTotalPreco'
              SummaryFormat = '>icSubTotalPreco=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
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
      DataSource = DMItens.C_ItensFilhosDS
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
      OnCustomDrawFooter = GridCustomDrawFooter
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      GroupNodeFont.Style = [fsBold]
      TS_BeforeLocalizar = GridTS_BeforeLocalizar
      TS_AposLocalizar = GridTS_AposLocalizar
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clRed
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = [fsBold]
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = [fsBold]
      TS_AfterNewRecord = GridTS_AfterNewRecord
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_ChaveEstrangeira = 'SUBITEM'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'Codigo;Descricao'
      TS_TipoDescricao = tdVenda
      TS_WhereAdicional = ' and i.HasChildren = '#39'N'#39' '
      TS_SummaryFields.Strings = (
        'icSubTotal;Sum;'
        'icSubTotalPreco;Sum;')
      TS_SummaryFooterText = 'Custo M'#233'dio dos SubItens:'
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridIDFILHO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDFILHO'
      end
      object GridITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object GridSUBITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBITEM'
      end
      object GridCODIGO: TdxDBGridButtonColumn
        Caption = 'C'#243'digo'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        Buttons = <
          item
            Default = True
          end>
      end
      object GridDESCRICAO: TdxDBGridButtonColumn
        Caption = 'Descri'#231#227'o'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 291
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        Buttons = <
          item
            Default = True
          end>
      end
      object GridlkUnidade: TdxDBGridLookupColumn
        Caption = 'Unidade'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUnidade'
      end
      object GridQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Qtd.'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
      end
      object GridUNIDADE: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object GridFATOR: TdxDBGridMaskColumn
        Caption = 'Fator'
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATOR'
      end
      object GridCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        Color = 15987699
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCustoMedio'
        SummaryFooterType = cstSum
      end
      object GridCUSTOCONTABIL: TdxDBGridMaskColumn
        Caption = 'Custo Cont'#225'bil'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
        SummaryFooterType = cstSum
      end
      object GridPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = #218'ltimo. Pre'#231'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
        SummaryFooterType = cstSum
      end
      object GridSubTotal: TdxDBGridMaskColumn
        Caption = 'SubTotal'
        Color = 15987699
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSubTotal'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object GridPreco: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        Color = 15987699
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPreco'
      end
      object GridSubTotalPreco: TdxDBGridMaskColumn
        Caption = 'Total Pre'#231'o'
        Color = 15987699
        DisableEditor = True
        HeaderAlignment = taCenter
        TabStop = False
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSubTotalPreco'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object GridFabricante: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 185
    Top = 343
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 268
    Top = 345
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 547
    Top = 256
  end
  inherited FormStorage: TFormStorage
    Left = 399
    Top = 341
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Sub Itens'
    Left = 441
    Top = 65534
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 302
    Top = 342
  end
  object ppmGrid: TTS_PopupMenu
    Left = 456
    Top = 227
  end
end

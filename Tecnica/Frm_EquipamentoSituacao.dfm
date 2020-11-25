inherited FrmEquipamentoSituacao: TFrmEquipamentoSituacao
  Left = 56
  Top = 55
  Width = 700
  Height = 440
  Caption = 'M'#243'dulo de Remessa'
  Constraints.MaxWidth = 700
  Constraints.MinWidth = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 612
    Width = 80
    Height = 370
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 336
      Width = 78
    end
    inherited btComando2: TTS_SpeedButton
      Width = 78
    end
    inherited btComando1: TTS_SpeedButton
      Width = 78
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 78
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 78
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 78
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 692
    Gradient.ColorStart = 14003626
    inherited btHelp: TTS_SpeedButton
      Left = 656
    end
    inherited lbCaption: TdxfLabel
      Width = 199
      AutoSize = True
      Caption = 'Status Equipamento.'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnDados: TTS_Panel
    Width = 612
    Height = 370
    Color = 15456728
    object TS_Label5: TTS_Label
      Left = 25
      Top = 315
      Width = 44
      Height = 13
      Caption = 'Status:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 10
      Top = 352
      Width = 59
      Height = 13
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 10
      Top = 334
      Width = 59
      Height = 13
      Caption = 'T'#233'cnico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Panel1: TTS_Panel
      Tag = -1
      Left = 1
      Top = 74
      Width = 610
      Height = 74
      HelpContext = -1
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clWhite
      TabOrder = 0
      object TS_Label4: TTS_Label
        Left = 1
        Top = 1
        Width = 604
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Observa'#231#227'o:'
        Color = 15456728
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit10: TTS_DBEdit
        Tag = -2
        Left = 96
        Top = 49
        Width = 32
        Hint = 'Estado'
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        TabOrder = 0
        TabStop = False
        DistinctEditOn = False
        Height = 17
      end
      object TS_DBEdit11: TTS_DBEdit
        Tag = -2
        Left = 127
        Top = 49
        Width = 70
        Hint = 'Cep'
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        TabOrder = 1
        TabStop = False
        DistinctEditOn = False
        Height = 17
      end
      object TS_DBMemo1: TTS_DBMemo
        Left = 1
        Top = 15
        Width = 604
        Align = alClient
        TabOrder = 2
        DataField = 'OBSERVACAO'
        DataSource = DMEntradasAssistencia.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 54
      end
    end
    object TS_Panel2: TTS_Panel
      Tag = -1
      Left = 1
      Top = 1
      Width = 610
      Height = 73
      HelpContext = -1
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clWhite
      TabOrder = 1
      object TS_Label1: TTS_Label
        Left = 1
        Top = 1
        Width = 604
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Defeito Encontrado:'
        Color = 15456728
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Tag = -2
        Left = 96
        Top = 49
        Width = 32
        Hint = 'Estado'
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        TabOrder = 0
        TabStop = False
        DistinctEditOn = False
        Height = 17
      end
      object TS_DBEdit2: TTS_DBEdit
        Tag = -2
        Left = 127
        Top = 49
        Width = 70
        Hint = 'Cep'
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        TabOrder = 1
        TabStop = False
        DistinctEditOn = False
        Height = 17
      end
      object TS_DBMemo2: TTS_DBMemo
        Left = 1
        Top = 15
        Width = 604
        Align = alClient
        TabOrder = 2
        DataField = 'DEFEITOENCONTRADO'
        DataSource = DMEntradasAssistencia.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 53
      end
    end
    object TS_QDBGrid1: TTS_QDBGrid
      Left = 1
      Top = 148
      Width = 610
      Height = 165
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
              SummaryField = 'CODIGO'
              SummaryFormat = '>CODIGO=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DMEntradasAssistencia.C_ServicosDetDs
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
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
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
      TS_SelectedColumn = 'DESCRICAO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'SUBTOTAL;SUM'
        'CODIGO;COUNT')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object TS_QDBGrid1_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object TS_QDBGrid1CODIGO: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object TS_QDBGrid1DESCRICAO: TdxDBGridColumn
        Caption = 'Item/Servi'#231'o'
        Width = 371
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object TS_QDBGrid1DESCRICAOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 444
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOITEM'
      end
      object TS_QDBGrid1ITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object TS_QDBGrid1QUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Qtd.'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        Nullable = False
      end
      object TS_QDBGrid1PRECO: TdxDBGridCurrencyColumn
        Caption = 'Prc. Unt.'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        Nullable = False
      end
      object TS_QDBGrid1SUBTOTAL: TdxDBGridColumn
        Caption = 'Sub Total'
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object TS_QDBGrid1SERVICO: TdxDBGridMaskColumn
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICO'
      end
      object TS_QDBGrid1SERVICODET: TdxDBGridMaskColumn
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICODET'
      end
      object TS_QDBGrid1VALOR: TdxDBGridCurrencyColumn
        Visible = False
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        Nullable = False
      end
    end
    object cmbStatus: TTS_DBLookupComboBox
      Left = 75
      Top = 313
      Width = 229
      TabOrder = 3
      DataField = 'lkpStatus'
      DataSource = DMEntradasAssistencia.C_TabelaDS
      ReadOnly = True
      StyleController = DMProjeto.esRemessa
      ClearKey = 32
      LookupKeyValue = Null
      Height = 19
      StoredValues = 64
    end
    object TS_DBLookupComboBox1: TTS_DBLookupComboBox
      Left = 75
      Top = 350
      Width = 229
      TabOrder = 4
      DataField = 'lkpLocalizacao'
      DataSource = DMEntradasAssistencia.C_TabelaDS
      ReadOnly = True
      StyleController = DMProjeto.esRemessa
      ClearKey = 32
      LookupKeyValue = Null
      Height = 20
      StoredValues = 64
    end
    object TS_DBLookupComboBox2: TTS_DBLookupComboBox
      Left = 75
      Top = 331
      Width = 229
      TabOrder = 5
      DataField = 'lkpTecnico'
      DataSource = DMEntradasAssistencia.C_TabelaDS
      ReadOnly = True
      StyleController = DMProjeto.esRemessa
      ClearKey = 32
      LookupKeyValue = Null
      Height = 20
      StoredValues = 64
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 476
    Top = 2
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 526
    Top = 5
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 338
    Top = 2
  end
  inherited Beep: TBTBeeper
    Left = 302
    Top = 65534
  end
  inherited FormStorage: TFormStorage
    Left = 388
    Top = 2
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Status Equipamento.'
    Left = 256
    Top = 0
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 417
    Top = 0
  end
end

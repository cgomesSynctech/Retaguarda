inherited DlgAvisos: TDlgAvisos
  Left = 75
  Top = 114
  Width = 657
  Height = 380
  Caption = 'Cadastros Gerais'
  Constraints.MinHeight = 240
  Constraints.MinWidth = 420
  PopupMenu = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 540
    Width = 109
    Height = 310
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 276
      Width = 107
    end
    inherited btComando2: TTS_SpeedButton
      Width = 107
    end
    inherited btComando1: TTS_SpeedButton
      Width = 107
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 107
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 107
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 107
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 649
    Gradient.ColorStart = 11911142
    inherited btHelp: TTS_SpeedButton
      Left = 44
    end
    inherited lbUpperHint: TTS_Label
      Left = 618
    end
    inherited lbCaption: TdxfLabel
      Width = 62
      AutoSize = True
      Caption = 'Avisos'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 540
    Height = 310
    Color = 14542583
    object TS_PageControl1: TTS_PageControl
      Left = 1
      Top = 1
      Width = 538
      Height = 308
      ActivePage = tsAlerta
      Align = alClient
      OwnerDraw = True
      TabIndex = 1
      TabOrder = 0
      ActivePageIndex = 1
      Transparent = False
      TabColor = 13359603
      TabColorActive = 9741530
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabFontActive.Charset = DEFAULT_CHARSET
      TabFontActive.Color = clWindowText
      TabFontActive.Height = -11
      TabFontActive.Name = 'MS Sans Serif'
      TabFontActive.Style = []
      object tsLembrete: TTS_TabSheet
        Caption = '&1- Lembretes'
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object dbgLembrete: TTS_QDBGrid
          Left = 0
          Top = 0
          Width = 530
          Height = 280
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'LEMBRETE'
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
          OnDblClick = dbgLembreteDblClick
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_LembretesDS
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
          TS_MultiSelection = False
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_SelectedColumn = 'OBS'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dbgLembreteOBS: TdxDBGridMaskColumn
            Caption = 'Observa'#231#227'o'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 265
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBS'
          end
          object dbgLembreteSITUACAO: TdxDBGridCheckColumn
            Caption = 'Conclu'#237'do'
            HeaderAlignment = taCenter
            MinWidth = 20
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SITUACAO'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbgLembreteLEMBRETE: TdxDBGridMaskColumn
            Visible = False
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LEMBRETE'
          end
        end
      end
      object tsAlerta: TTS_TabSheet
        Caption = '&2- Alertas'
        ImageIndex = 1
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object Grid_Alerta: TTS_QDBGrid
          Left = 0
          Top = 0
          Width = 530
          Height = 280
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Codigo'
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
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_AlertaDS
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
          TS_SelectedColumn = 'Codigo'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object Grid_AlertaCodigo: TdxDBGridMaskColumn
            Caption = 'C'#243'digo'
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Codigo'
          end
          object Grid_AlertaDescricao: TdxDBGridMaskColumn
            Caption = 'Descri'#231#227'o'
            HeaderAlignment = taCenter
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Descricao'
          end
          object Grid_AlertaCondicao: TdxDBGridMaskColumn
            Caption = 'Condi'#231#227'o'
            HeaderAlignment = taCenter
            Width = 160
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Condicao'
          end
        end
      end
      object tsMemorizacao: TTS_TabSheet
        Caption = '&3- Memoriza'#231#227'o'
        ImageIndex = 2
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object dbgMemorizacao: TTS_QDBGrid
          Left = 0
          Top = 0
          Width = 530
          Height = 280
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'MEMORIZACAO'
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
          OnDblClick = dbgMemorizacaoDblClick
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_MemorizacaoDS
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
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
          TS_SelectedColumn = 'DATA'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dbgMemorizacaoMEMORIZACAO: TdxDBGridMaskColumn
            Visible = False
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MEMORIZACAO'
          end
          object dbgMemorizacaoDATA: TdxDBGridDateColumn
            Caption = 'Data'
            HeaderAlignment = taCenter
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA'
          end
          object dbgMemorizacaoORIGEM: TdxDBGridMaskColumn
            Visible = False
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORIGEM'
          end
          object dbgMemorizacaoIDGERADOR: TdxDBGridMaskColumn
            Visible = False
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IDGERADOR'
          end
          object dbgMemorizacaoDESCRICAO: TdxDBGridMaskColumn
            Caption = 'Descri'#231#227'o'
            HeaderAlignment = taCenter
            Width = 273
            BandIndex = 0
            RowIndex = 0
            FieldName = 'lkDescricao'
          end
          object dbgMemorizacaoTIPO: TdxDBGridMaskColumn
            Caption = 'Tipo'
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO'
          end
          object dbgMemorizacaoNUMERO: TdxDBGridMaskColumn
            Caption = 'C'#243'digo'
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUMERO'
          end
          object dbgMemorizacaoFORMNAME: TdxDBGridMaskColumn
            Visible = False
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FORMNAME'
          end
        end
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 328
    Top = 254
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 334
    Top = 167
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Avisos'
    OnRefresh = FormsComponentRefresh
    Left = 240
    Top = 166
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 231
    Top = 283
    inherited Ajuda1: TMenuItem
      HelpContext = 632
    end
  end
  object Q_Memorizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT M.*,'
      '       T.DESCRICAO as TIPO, T.FORMNAME'
      'FROM MEMORIZACOES M'
      '   INNER JOIN TIPOSORIGENS T ON (M.ORIGEM = T.ORIGEM)')
    Left = 78
    Top = 211
  end
  object C_Memorizacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_MemorizacaoProvider'
    Left = 79
    Top = 160
    object C_MemorizacaoMEMORIZACAO: TIntegerField
      FieldName = 'MEMORIZACAO'
      Required = True
    end
    object C_MemorizacaoDATA: TDateField
      FieldName = 'DATA'
    end
    object C_MemorizacaoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object C_MemorizacaoIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_MemorizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_MemorizacaoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_MemorizacaoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 40
    end
    object C_MemorizacaoFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Size = 30
    end
    object C_MemorizacaolkDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkDescricao'
      LookupDataSet = Q_LookFavorecido
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'IDGERADOR'
      Lookup = True
    end
  end
  object Q_MemorizacaoProvider: TDataSetProvider
    DataSet = Q_Memorizacao
    Constraints = True
    Left = 458
    Top = 132
  end
  object C_MemorizacaoDS: TDataSource
    DataSet = C_Memorizacao
    Left = 464
    Top = 85
  end
  object Q_Lembretes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select lembrete, datainicial, obs, situacao, tipo,'
      
        'domingo, segunda, terca, quarta, quinta, sexta, sabado from lemb' +
        'retes'
      
        'where datainicial <=:hoje and datafinal >= :hoje and situacao = ' +
        #39'N'#39)
    UpdateObject = U_Lembretes
    Left = 154
    Top = 210
    ParamData = <
      item
        DataType = ftDate
        Name = 'hoje'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hoje'
        ParamType = ptInput
      end>
  end
  object C_Lembretes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_LembretesProvider'
    Left = 155
    Top = 160
    object C_LembretesLEMBRETE: TIntegerField
      FieldName = 'LEMBRETE'
      Required = True
    end
    object C_LembretesDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object C_LembretesOBS: TStringField
      FieldName = 'OBS'
      ReadOnly = True
      Size = 255
    end
    object C_LembretesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_LembretesDOMINGO: TStringField
      FieldName = 'DOMINGO'
      Size = 1
    end
    object C_LembretesSEGUNDA: TStringField
      FieldName = 'SEGUNDA'
      Size = 1
    end
    object C_LembretesTERCA: TStringField
      FieldName = 'TERCA'
      Size = 1
    end
    object C_LembretesQUARTA: TStringField
      FieldName = 'QUARTA'
      Size = 1
    end
    object C_LembretesQUINTA: TStringField
      FieldName = 'QUINTA'
      Size = 1
    end
    object C_LembretesSEXTA: TStringField
      FieldName = 'SEXTA'
      Size = 1
    end
    object C_LembretesSABADO: TStringField
      FieldName = 'SABADO'
      Size = 1
    end
    object C_LembretesTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object Q_LembretesProvider: TDataSetProvider
    DataSet = Q_Lembretes
    Constraints = True
    Left = 463
    Top = 250
  end
  object C_LembretesDS: TDataSource
    DataSet = C_Lembretes
    Left = 463
    Top = 210
  end
  object U_Lembretes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lembretes '
      'where'
      '  LEMBRETE = :LEMBRETE')
    ModifySQL.Strings = (
      'update lembretes'
      'set'
      '  SITUACAO = :SITUACAO'
      'where'
      '  LEMBRETE = :OLD_LEMBRETE')
    InsertSQL.Strings = (
      'insert into lembretes'
      '  (SITUACAO)'
      'values'
      '  (:SITUACAO)')
    DeleteSQL.Strings = (
      'delete from lembretes'
      'where'
      '  LEMBRETE = :OLD_LEMBRETE')
    Left = 153
    Top = 264
  end
  object C_AlertaDS: TDataSource
    DataSet = C_Alerta
    Left = 14
    Top = 213
  end
  object C_Alerta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 160
    object C_AlertaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object C_AlertaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object C_AlertaCondicao: TStringField
      FieldName = 'Condicao'
      Size = 50
    end
  end
  object Q_LookFavorecido: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FAVORECIDO, NOME from favorecidos'
      '')
    Left = 374
    Top = 155
  end
end

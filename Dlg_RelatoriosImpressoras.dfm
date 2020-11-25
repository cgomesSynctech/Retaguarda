inherited DlgRelatoriosImpressoras: TDlgRelatoriosImpressoras
  Left = 68
  Top = 103
  Width = 680
  Height = 432
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 554
    Height = 362
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 328
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Cabe'#231'alho'
      Glyph.Data = {
        52030000424D5203000000000000120100002800000018000000180000000100
        08000000000040020000250F0000250F00003700000037000000C0480000CA58
        0000D4600000CA580300CA58060023160B00CA6011001C1C1C00111131006040
        3100584838000B2A40006A504000032A4800E08F480011385000384850001648
        60006A6A6000736A6000847B73003150840084848400FFCA8F00A1989800A1A1
        9800FFCA9800A1A1A100E0C0A100FFD4A1001C23AB00FFD4AB0073A1B600FFE0
        B600FFE0C000068FCA00CACACA00FFEACA002A8FD400D4D4D400FFEAD4000006
        E000E0E0E000F4EAE000FFEAE000FFF4E0001684EA00FFF4EA001658F4002AE0
        F400FFFFF400FF00FF0050B6FF0073F4FF00FFFFFF0033333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333000000000000000000000000000000000000000033333333
        0036322F2D2C2825252221211F1D1D1A1A17170033333333003636363232322F
        2F252221211F1D1D1A1A17003333333300363636363632322F2F252521211F1D
        1D1A1A00333333330036271616161616160710161616161616161A0033333333
        00363636363636363609051110252525251D1D00333333330036271616161616
        16242035300F1616161625003333333300363636363636363636343530300D25
        25252500333333330036271616161616161616233130300F1616250033333333
        003636363636363636363232233130300B252500333333330036271616161616
        1616161616233130300F2500333333330036363636363636363632322F2F2331
        30300D003333333300362A1B1B1B1B1B1B1B1B1B1919182331301E0733333333
        0036363636363636363636363632322F23261312073333330036363636363636
        363636363632322F2F0C362B0A0833330036363636363636363636363632322F
        2D2D141C1130333301020202020202020202020202020202020202152E303333
        0E0000000000000000000000000000000000000E292933333304040404040404
        0404040404040404040306333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333333333}
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 672
    Gradient.ColorStart = 11911142
    inherited lbEstadoForm: TTS_Label
      Width = 127
      Caption = 'Configura'#231#227'o de relat'#243'rios'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 636
    end
    inherited lbCaption: TdxfLabel
      Width = 240
      AutoSize = True
      Caption = 'Relat'#243'rios e Impressoras'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 554
    Height = 362
    Color = 14542583
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 552
      Height = 30
      Align = alTop
      Color = 13359603
      TabOrder = 0
      DesignSize = (
        552
        30)
      object TS_Label1: TTS_Label
        Left = 8
        Top = 8
        Width = 65
        Caption = 'Computador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbComputador: TdxfLabel
        Left = 78
        Top = 7
        Width = 80
        Height = 13
        AutoSize = False
        Caption = 'lbComputador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 1
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Label2: TTS_Label
        Left = 333
        Top = 8
        Width = 65
        Anchors = [akTop, akRight]
        Caption = 'M'#243'dulo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbModulo: TTS_ComboBox
        Left = 400
        Top = 6
        Width = 147
        Style.BorderColor = 9741530
        Style.BorderStyle = xbsSingle
        TabOrder = 0
        Anchors = [akTop, akRight]
        StyleController = DMProjeto.esGeral
        OnChange = cmbModuloChange
        Height = 19
      end
    end
    object dbgRelatorios: TTS_QDBGrid
      Left = 1
      Top = 31
      Width = 552
      Height = 330
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NOMEFORM'
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
      TabOrder = 1
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_RelatoriosDS
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
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
      TS_SelectedColumn = 'TITULO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgRelatoriosTITULO: TdxDBGridMaskColumn
        Caption = 'T'#237'tulo do Relat'#243'rio'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 212
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
      end
      object dbgRelatoriosNOMEFORM: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFORM'
      end
      object dbgRelatoriosCOPIAS: TdxDBGridMaskColumn
        Caption = '# C'#243'pias'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COPIAS'
      end
      object dbgRelatoriosTIPOCABECALHO: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Cabe'#231'alho'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOCABECALHO'
        DefaultImages = False
        Descriptions.Strings = (
          'Com Cabe'#231'alho'
          'Papel Timbrado'
          'Sem Cabe'#231'alho'
          'Cabe'#231'alho Imagem'
          'Cabe'#231'alho em Branco')
        ImageIndexes.Strings = (
          '-1'
          '0'
          '1'
          '2'
          '3')
        ShowDescription = True
        Values.Strings = (
          'CC'
          'PT'
          'SC'
          'TB'
          'CB')
      end
      object dbgRelatoriosIMPRESSORA: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Impressora'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPRESSORA'
        DefaultImages = False
        ImageIndexes.Strings = (
          '')
        ShowDescription = True
      end
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Relat'#243'rios e Impressoras'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 375
    Top = 210
  end
  object C_Relatorios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Relatorios'
    Left = 272
    Top = 120
    object C_RelatoriosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_RelatoriosIMPRESSORA: TStringField
      FieldName = 'IMPRESSORA'
      Size = 80
    end
    object C_RelatoriosNOMEFORM: TStringField
      FieldName = 'NOMEFORM'
      Required = True
      Size = 30
    end
    object C_RelatoriosMODULO: TStringField
      FieldName = 'MODULO'
      Size = 30
    end
    object C_RelatoriosCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object C_RelatoriosTIPOCABECALHO: TStringField
      FieldName = 'TIPOCABECALHO'
      Size = 2
    end
  end
  object Q_Relatorios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select r.nomeform, r.titulo, rm.impressora, r.modulo, r.copias, ' +
        'r.tipocabecalho'
      'from relatorios r'
      
        'left join relatoriosmaq rm on r.nomeform = rm.nomeform and rm.ma' +
        'quina = :maquina')
    UpdateObject = U_Relatorios
    Left = 272
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'maquina'
        ParamType = ptUnknown
      end>
  end
  object P_Relatorios: TDataSetProvider
    DataSet = Q_Relatorios
    Constraints = True
    Options = [poAllowCommandText]
    Left = 272
    Top = 224
  end
  object C_RelatoriosDS: TDataSource
    DataSet = C_Relatorios
    Left = 272
    Top = 280
  end
  object U_Relatorios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from relatorios '
      'where'
      '  NOMEFORM = :NOMEFORM')
    ModifySQL.Strings = (
      'update relatorios'
      'set'
      '  COPIAS = :COPIAS,'
      '  TIPOCABECALHO = :TIPOCABECALHO'
      'where'
      '  NOMEFORM = :OLD_NOMEFORM')
    DeleteSQL.Strings = (
      'delete from relatorios'
      'where'
      '  NOMEFORM = :OLD_NOMEFORM')
    Left = 192
    Top = 168
  end
end

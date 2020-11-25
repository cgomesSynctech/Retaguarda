inherited DlgContasPadrao: TDlgContasPadrao
  Width = 554
  Height = 397
  Caption = 'Contabilidade'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 439
    Height = 327
    Color = 14733792
    object dbgContas: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 437
      Height = 325
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
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
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ContasPadraoDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
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
      TS_SelectedColumn = 'ID'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgContasID: TdxDBGridColumn
        Caption = '# Número'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgContasDescricao: TdxDBGridColumn
        Caption = 'Descrição'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgContasConta: TdxDBGridPopupColumn
        Caption = 'Conta'
        HeaderAlignment = taCenter
        Width = 196
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkconta'
        PopupControl = DlgPopupContas.pnPopup
        PopupFormBorderStyle = pbsSysPanel
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 439
    Width = 107
    Height = 327
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 293
      Width = 105
    end
    inherited btComando2: TTS_SpeedButton
      Width = 105
    end
    inherited btComando1: TTS_SpeedButton
      Width = 105
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 105
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 105
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 105
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 546
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Width = 138
      Caption = 'Contas Padrão'
      Effect3D.ShadowedColor = 12689345
    end
    inherited lbEstadoForm: TTS_Label
      Width = 64
      Caption = 'Configuração'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 510
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Contas Padrão'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 293
    Top = 58
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 216
    Top = 78
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.conta,c.descricao, t.descricao as DescTipo, c.saldo, c.' +
        'contapai,'
      'c.tipoconta, c.codigoreduzido'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    Left = 218
    Top = 130
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 219
    Top = 185
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 222
    Top = 239
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
  end
  object P_ContasPadrao: TDataSetProvider
    DataSet = Q_ContasPadrao
    Constraints = True
    Left = 80
    Top = 183
  end
  object C_ContasPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ContasPadrao'
    Left = 83
    Top = 236
    object C_ContasPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_ContasPadraoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ContasPadraoCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ContasPadraolkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 30
      Lookup = True
    end
  end
  object C_ContasPadraoDS: TDataSource
    DataSet = C_ContasPadrao
    Left = 80
    Top = 73
  end
  object Q_ContasPadrao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select cpi.descricao, cp.id, cp.conta '
      'from ContasPadraoIdioma cpi, ContasPadrao cp'
      'where cpi.id = cp.id'
      'order by cpi.id')
    UpdateObject = U_ContasPadrao
    Left = 82
    Top = 133
  end
  object U_ContasPadrao: TIBUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CONTASPADRAO'
      '  SET CONTA = :CONTA'
      'WHERE ID = :OLD_ID')
    Left = 23
    Top = 203
  end
end

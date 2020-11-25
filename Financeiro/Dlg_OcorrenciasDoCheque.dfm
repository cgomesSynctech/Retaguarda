inherited DlgOcorrenciasDoCheque: TDlgOcorrenciasDoCheque
  Left = 175
  Top = 162
  Width = 521
  Height = 275
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 402
    Height = 198
    Color = 15724519
    object dbgDoc: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 400
      Height = 196
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'OPERACAODOC'
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
      DataSource = Q_OperacoesDocDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
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
      TS_SelectedColumn = 'DATA'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgDocDATA: TdxDBGridDateColumn
        Caption = 'Data'
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgDocLOGINNAME: TdxDBGridMaskColumn
        Caption = 'Usu'#225'rio'
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOGINNAME'
      end
      object dbgDocSTATUS: TdxDBGridMaskColumn
        Caption = 'Status'
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
      end
      object dbgDocOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#245'es'
        Sorted = csDown
        Width = 247
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 402
    Width = 111
    Height = 198
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 164
      Width = 109
    end
    inherited btComando2: TTS_SpeedButton
      Width = 109
    end
    inherited btComando1: TTS_SpeedButton
      Width = 109
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 109
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 109
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 109
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 513
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 220
      Caption = 'Ocorr'#234'ncias do Cheque'
      Effect3D.ShadowedColor = 13223591
    end
    inherited lbEstadoForm: TTS_Label
      Width = 124
      Caption = 'Movimenta'#231#227'o do Cheque'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 477
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Ocorr'#234'ncias do Cheque'
    Left = 138
    Top = 154
  end
  object Q_OperacoesDoc: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select od.operacaodoc,od.data, u.loginname, od.obs, st.descricao' +
        ' as status'
      'from operacoesdoc od'
      'left join usuarios u on od.usuario = u.usuario'
      'left join statusdoc st on st.status = od.status'
      'where od.iddoc = :iddoc'
      'order by od.operacaodoc')
    Left = 272
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iddoc'
        ParamType = ptUnknown
      end>
    object Q_OperacoesDocDATA: TDateField
      FieldName = 'DATA'
      Origin = 'OPERACOESDOC.DATA'
    end
    object Q_OperacoesDocLOGINNAME: TIBStringField
      FieldName = 'LOGINNAME'
      Origin = 'USUARIOS.LOGINNAME'
      Size = 30
    end
    object Q_OperacoesDocOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'OPERACOESDOC.OBS'
      Size = 500
    end
    object Q_OperacoesDocSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'STATUSDOC.DESCRICAO'
      Size = 50
    end
    object Q_OperacoesDocOPERACAODOC: TIntegerField
      FieldName = 'OPERACAODOC'
      Origin = 'OPERACOESDOC.OPERACAODOC'
      Required = True
    end
  end
  object Q_OperacoesDocDS: TDataSource
    DataSet = Q_OperacoesDoc
    Left = 272
    Top = 56
  end
end

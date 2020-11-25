inherited FrmPerfisTiposMovimento: TFrmPerfisTiposMovimento
  Left = 290
  Top = 179
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 342
    Width = 108
    inherited btFecharCadastro: TTS_SpeedButton
      Width = 106
    end
    inherited btComando2: TTS_SpeedButton
      Width = 106
    end
    inherited btComando1: TTS_SpeedButton
      Width = 106
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 106
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 106
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 106
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 287
      AutoSize = True
      Caption = 'Perfis dos Tipos de Opera'#231#245'es'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 342
    Color = 14019327
    object TS_Label1: TTS_Label
      Left = 2
      Top = 11
      Width = 119
      Cursor = crHandPoint
      Caption = 'Caracter'#237'stica do Perfil:'
      FocusControl = cmbPerfil
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      FormatoTabela = False
      LinkTo = 'FrmCadPerfis'
      LinkToResult = 0
    end
    object cmbPerfil: TTS_ImageEdit
      Left = 124
      Top = 7
      Width = 149
      TabOrder = 0
      StyleController = DMProjeto.esGeral
      OnChange = cmbPerfilChange
      DefaultImages = False
      Height = 21
    end
    object dbgTabelas: TTS_QDBGrid
      Left = 1
      Top = 37
      Width = 340
      Height = 195
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TIPOMOVIMENTO'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alBottom
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
      DataSource = C_TabelasDS
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
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgTabelasDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tipo de Movimento'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgTabelasUTILIZAR: TdxDBGridCheckColumn
        Caption = 'N'#227'o Utilizar'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UTILIZAR'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgTabelasTABELAPRECO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Perfis dos Tipos de Opera'#231#245'es'
  end
  object Q_Perfis: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'Select * from Perfis'
      'Where Perfil <> 1')
    Left = 375
    Top = 33
  end
  object Q_PerfisProvider: TDataSetProvider
    DataSet = Q_Perfis
    Constraints = True
    Left = 318
    Top = 29
  end
  object C_Perfis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_PerfisProvider'
    Left = 356
    Top = 2
    object C_PerfisPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Required = True
    end
    object C_PerfisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_Tabelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ptm.id,tm.tipomovimento,tm.descricao, ptm.utilizar'
      'from tiposmovimento tm left join perfistiposmovimento ptm on'
      'tm.tipomovimento = ptm.tipomovimento and ptm.perfil = :perfil'
      'where tm.desativado = '#39'N'#39' and tm.tipo = :tipo'
      'order by tm.tipomovimento')
    UpdateObject = U_Tabelas
    Left = 89
    Top = 134
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'perfil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
  end
  object C_TabelasDS: TDataSource
    DataSet = C_Tabelas
    Left = 52
    Top = 198
  end
  object C_Tabelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tabelas'
    Left = 116
    Top = 173
    object C_TabelasID: TIntegerField
      FieldName = 'ID'
    end
    object C_TabelasTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Required = True
    end
    object C_TabelasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelasUTILIZAR: TStringField
      FieldName = 'UTILIZAR'
      Size = 1
    end
  end
  object P_Tabelas: TDataSetProvider
    DataSet = Q_Tabelas
    Constraints = True
    Left = 203
    Top = 187
  end
  object ImageList1: TImageList
    Left = 249
    Top = 144
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000000000000000840000008400
      000000000000000000000000000000000000000000000000000000C600000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000001000000000840000000000000084000010
      00000010000000000000001000000010000000108400000000000018C6000018
      0000001084000010000000000000FF18000000E7FF000000000000E7FF00FF18
      00000010000000000000FFFFFF00FF180000FFFFFF0000000000FFFFFF00FF18
      000063FFFF0031080000FFFFFF00CE1000000000000000000000000000008400
      000084000000840000000000000000000000C6C6C60000000000840000000000
      000000000000000000000000000000000000F7310800D631080073F721000884
      0000A531FF002939840000C600000000000008000000FF524A00000000000000
      0000000000000000000021210000633900000008000000080000A53900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B310000A53900000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000840000000000000084000010
      00000010000000000000001000000010000000108400000000000018C6000018
      0000001084000010000000000000FF18000000E7FF000000000000E7FF00FF18
      00000010000000000000FFFFFF00FF180000FFFFFF0000000000FFFFFF00FF18
      0000FFFFFF0073210000FFFFFF0094210000FFFFFF00B5210000FFFFFF00D621
      0000FFFFFF00F7210000FFFFFF0010290000844A520000180000840000000008
      00000884000000000000FF524A0000F7FF000000000000000000000000000000
      000000000000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000073F7210000B5
      000000000000FFD64200210000000084000000000000734A3900000000000000
      000000000000000000007BA518006B000000F7310800D631080073F721000884
      00008473F7002939840000C600000000000008000000FFD64200000000000000
      00000000000000000000BD843100002100000000000000000000730821000000
      0000000021000000000000000000000000004200000000000000001800000000
      0000840000000000000008000000210000000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000C600000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000000000000000000000000000001000000000840000000000000084000010
      00000010000000000000001000000010000000108400000000000018C6000018
      0000001084000010000000000000FF18000000E7FF000000000000E7FF00FF18
      00000010000000000000FFFFFF00FF180000FFFFFF0000000000FFFFFF00FF18
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000
      00000000000000000000000000000000000084087300000000006B310000A573
      00005200000063310000A5730000BD186300F7FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039000000210000003100
      0000082100000000000000000000C61800000000000000000000000000000000
      000052522900210000000000000000000000BD189400C6FFFF008410FF00FF18
      940063FFFF008410FF00FF18940063FFFF000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000730821000000
      000000004200000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF18
      9400FFFFFF00FF9CEF00FFFFFF00FFFFFF00FFFFFF00FF189400FF390000FF18
      E700F7180000FFEFFF00F7180000FF8C8400E7180000FF085200E7180000FF18
      4A00E7180000FF189400E7180000FF08FF00E7180000FFFFFF00E7180000FF18
      9400F7180000FF9CEF00FF390000FFFFFF00FF7B0000FF189400F7390000FF18
      E700E7180000FFFFFF00E7180000FF7B00000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600000000000000000000000000000000008400000084000000840000008400
      000000000000000000008400000084000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C6C6C600FFFFFF00840000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000840000008400000084000000000000000000
      0000C6C6C6000000000084000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C600FFFFFF000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFFFF00C6C6
      C600000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
      0000FFFFFF00C6C6C600FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000000000000000000000000000000000000000FFFF
      FF00C6C6C600FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C00F000000000000C00FFFFFFFFF0000
      E01FFFFFFFFFFFFFF03F000000000000F01F000000000000E00FFFFFFFFF0000
      C00FFFFFFFFFFFFFC00F00000000FFFFC007000000000000C00FFFFFFFFFFFFF
      C00FFFFFFFFFFFFFC007FFFFFFFFFFFFE007FFFFFFFFFFFFE007FFFFFFFFFFFF
      F01F000000000000FFFF6E200000000000000000000000000000000000000000
      000000000000}
  end
  object U_Tabelas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from tabelaspreco '
      'where'
      '  TABELAPRECO = :TABELAPRECO')
    ModifySQL.Strings = (
      'update perfistiposmovimento'
      'set'
      '  UTILIZAR = :UTILIZAR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      '')
    Left = 163
    Top = 166
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 276
    Top = 217
  end
end

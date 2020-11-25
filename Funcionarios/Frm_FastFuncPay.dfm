inherited FrmFastFuncPay: TFrmFastFuncPay
  Left = 105
  Top = 135
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Funcion'#225'rios / Payroll'
  ClientHeight = 355
  ClientWidth = 598
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 480
    Height = 312
    Color = 15396297
    object dbgFuncPay: TTS_QDBGrid
      Left = 1
      Top = 98
      Width = 478
      Height = 213
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'FUNCPAYITEM'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
      DataSource = C_FuncsPayItensDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnColumnClick = dbgFuncPayColumnClick
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
      TS_AfterNewRecord = dbgFuncPayTS_AfterNewRecord
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'lkPayrollItem'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgFuncPaylkPayrollItem: TdxDBGridLookupColumn
        Caption = 'Item de Payroll'
        HeaderAlignment = taCenter
        HeaderGlyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          700077777777777770007777700077777000777770C077777000777770C07777
          7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
          7000777770C07777700077777000777770007777777777777000777777777777
          7000}
        Width = 213
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkPayrollItem'
      end
      object dbgFuncPayVALOR: TdxDBGridMaskColumn
        Caption = 'Valor por Hora'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object dbgFuncPayDESC_ITEM: TdxDBGridLookupColumn
        Caption = 'Item de Servi'#231'o'
        HeaderAlignment = taCenter
        HeaderGlyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          700077777777777770007777700077777000777770C077777000777770C07777
          7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
          7000777770C07777700077777000777770007777777777777000777777777777
          7000}
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkItem'
      end
    end
    object pnNovoFunc: TTS_Panel
      Left = 1
      Top = 1
      Width = 478
      Height = 71
      Align = alTop
      BevelOuter = bvNone
      Color = 15396297
      TabOrder = 1
      object TS_Label1: TTS_Label
        Left = 4
        Top = 8
        Width = 107
        Caption = 'Nome do Funcion'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label37: TTS_Label
        Left = 60
        Top = 29
        Width = 51
        Height = 15
        Cursor = crHandPoint
        Hint = 'Permite entrar no cadastro de cargos'
        Caption = 'Cargo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmCargos'
        LinkToResult = 0
      end
      object TS_Label24: TTS_Label
        Left = 46
        Top = 50
        Width = 65
        Caption = 'Tipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfFunc: TTS_Edit
        Left = 112
        Top = 7
        Width = 293
        TabOrder = 0
        StyleController = DMProjeto.esFuncionarios
        Height = 19
      end
      object cmbCargo: TTS_DBLookupComboBox
        Left = 112
        Top = 28
        Width = 173
        Style.BorderColor = 10726972
        TabOrder = 1
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        LookupKeyValue = Null
        Height = 19
      end
      object cmbTipo: TTS_ImageEdit
        Left = 112
        Top = 48
        Width = 173
        Style.BorderColor = 10726972
        TabOrder = 2
        StyleController = DMProjeto.esGeral
        Descriptions.Strings = (
          'Empregado'
          'Contratado'
          'S'#243'cio')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'E'
          'C'
          'S')
        Height = 20
      end
    end
    object pnFunc: TTS_Panel
      Left = 1
      Top = 72
      Width = 478
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Color = 15396297
      TabOrder = 2
      object lbFunc: TdxfLabel
        Left = 4
        Top = 4
        Width = 465
        Height = 17
        AutoSize = False
        Caption = 'lbFunc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfExtrude
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 1
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 480
    Height = 312
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 278
    end
    inherited TS_Bevel1: TTS_Bevel
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 598
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 338
      Caption = 'Itens de Payroll para Produtividade'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 562
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 323
    Top = 251
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 380
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 334
    Top = 257
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios / Payroll'
    Caption = 'Itens de Payroll para Produtividade'
    OnRefresh = FormsComponentRefresh
    FirstEditField = dbgFuncPay
    Left = 468
    Top = 0
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 306
    Top = 255
  end
  object Q_FuncsPayItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_FuncsPayItensBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select f.*, f.Funcionario as FAVORECIDO, p.TipoPayroll, p.Metodo' +
        'Adic'
      
        'From FuncsPayItens f LEFT JOIN PayrollItens p ON p.PayrollItem =' +
        ' f.PayrollItem'
      'Where Funcionario = :FAVORECIDO and p.TipoPayroll = 1')
    UpdateObject = U_FuncsPayItens
    Left = 44
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
  end
  object U_FuncsPayItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FUNCPAYITEM,'
      '  FUNCIONARIO,'
      '  ITEM,'
      '  PAYROLLITEM,'
      '  VALOR,'
      '  PERCENTUAL,'
      '  QTDHORAS,'
      '  LIMITE,'
      '  PRODUTIVIDADE'
      'from FUNCSPAYITENS '
      'where'
      '  FUNCPAYITEM = :FUNCPAYITEM')
    ModifySQL.Strings = (
      'update FUNCSPAYITENS'
      'set'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  ITEM = :ITEM,'
      '  PAYROLLITEM = :PAYROLLITEM,'
      '  VALOR = :VALOR,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  QTDHORAS = :QTDHORAS,'
      '  LIMITE = :LIMITE,'
      '  PRODUTIVIDADE = :PRODUTIVIDADE'
      'where'
      '  FUNCPAYITEM = :OLD_FUNCPAYITEM')
    InsertSQL.Strings = (
      'insert into FUNCSPAYITENS'
      
        '  (FUNCIONARIO, ITEM, PAYROLLITEM, VALOR, PERCENTUAL, QTDHORAS, ' +
        'LIMITE, '
      '   PRODUTIVIDADE)'
      'values'
      
        '  (:FUNCIONARIO, :ITEM, :PAYROLLITEM, :VALOR, :PERCENTUAL, :QTDH' +
        'ORAS, :LIMITE, '
      '   :PRODUTIVIDADE)')
    DeleteSQL.Strings = (
      'delete from FUNCSPAYITENS'
      'where'
      '  FUNCPAYITEM = :OLD_FUNCPAYITEM')
    Left = 44
    Top = 199
  end
  object C_FuncsPayItens: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'P_FuncsPayItens'
    OnNewRecord = C_FuncsPayItensNewRecord
    Left = 43
    Top = 296
    object C_FuncsPayItensFUNCPAYITEM: TIntegerField
      FieldName = 'FUNCPAYITEM'
      Origin = 'FUNCSPAYITENS.FUNCPAYITEM'
      Required = True
    end
    object C_FuncsPayItensFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCSPAYITENS.FUNCIONARIO'
    end
    object C_FuncsPayItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'FUNCSPAYITENS.ITEM'
    end
    object C_FuncsPayItensPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'FUNCSPAYITENS.PAYROLLITEM'
    end
    object C_FuncsPayItensVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'FUNCSPAYITENS.VALOR'
      Precision = 18
      Size = 2
    end
    object C_FuncsPayItensPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'FUNCSPAYITENS.PERCENTUAL'
      DisplayFormat = '#,##0.0# %'
      EditFormat = '###0.0#'
      Precision = 18
      Size = 2
    end
    object C_FuncsPayItensQTDHORAS: TBCDField
      FieldName = 'QTDHORAS'
      Origin = 'FUNCSPAYITENS.QTDHORAS'
      Precision = 18
      Size = 2
    end
    object C_FuncsPayItensLIMITE: TBCDField
      FieldName = 'LIMITE'
      Origin = 'FUNCSPAYITENS.LIMITE'
      Precision = 18
      Size = 2
    end
    object C_FuncsPayItensFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FUNCSPAYITENS.FAVORECIDO'
    end
    object C_FuncsPayItenslkPayrollItem: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'lkPayrollItem'
      LookupDataSet = C_PayrollItens
      LookupKeyFields = 'PAYROLLITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PAYROLLITEM'
      Size = 40
      Lookup = True
    end
    object C_FuncsPayItensTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      Origin = 'PAYROLLITENS.TIPOPAYROLL'
    end
    object C_FuncsPayItenslkItem: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'lkItem'
      LookupDataSet = C_Itens
      LookupKeyFields = 'ITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ITEM'
      Size = 50
      Lookup = True
    end
    object C_FuncsPayItensPRODUTIVIDADE: TStringField
      FieldName = 'PRODUTIVIDADE'
      Origin = 'FUNCSPAYITENS.PRODUTIVIDADE'
      Size = 1
    end
    object C_FuncsPayItensMETODOADIC: TIntegerField
      FieldName = 'METODOADIC'
      Origin = 'PAYROLLITENS.METODOADIC'
    end
  end
  object Q_PayrollItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * '
      'FROM PAYROLLITENS'
      'WHERE TipoPayroll = 1 and DESATIVADO = '#39'N'#39'  ')
    Left = 138
    Top = 202
  end
  object P_PayrollItens: TDataSetProvider
    DataSet = Q_PayrollItens
    Constraints = True
    Left = 138
    Top = 249
  end
  object C_PayrollItens: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayrollItens'
    Left = 137
    Top = 296
    object C_PayrollItensPAYROLLITEM: TIntegerField
      FieldName = 'PAYROLLITEM'
      Origin = 'PAYROLLITENS.PAYROLLITEM'
      Required = True
    end
    object C_PayrollItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAYROLLITENS.DESCRICAO'
      Size = 30
    end
    object C_PayrollItensTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
      Origin = 'PAYROLLITENS.TIPOPAYROLL'
    end
    object C_PayrollItensCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'PAYROLLITENS.CONTA'
    end
    object C_PayrollItensVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'PAYROLLITENS.VALOR'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'PAYROLLITENS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensLIMITE: TBCDField
      FieldName = 'LIMITE'
      Origin = 'PAYROLLITENS.LIMITE'
      Precision = 18
      Size = 2
    end
    object C_PayrollItensTIPOWAGE: TStringField
      FieldName = 'TIPOWAGE'
      Origin = 'PAYROLLITENS.TIPOWAGE'
      Size = 1
    end
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Item, Codigo, Descricao, HasChildren'
      'FROM ITENS'
      'WHERE DESATIVADO = '#39'N'#39' and TIPOITEM = 3')
    Left = 209
    Top = 203
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 209
    Top = 250
  end
  object C_Itens: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 208
    Top = 297
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ItensHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Origin = 'ITENS.HASCHILDREN'
      Size = 1
    end
  end
  object C_FuncsPayItensDS: TDataSource
    DataSet = C_FuncsPayItens
    Left = 45
    Top = 344
  end
  object P_FuncsPayItens: TDataSetProvider
    DataSet = Q_FuncsPayItens
    Constraints = True
    Left = 44
    Top = 249
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 384
    Top = 171
  end
  object ppmGrid: TTS_PopupMenu
    Left = 293
    Top = 128
  end
  object C_Cargos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Cargos'
    Left = 437
    Top = 302
    object C_CargosCARGO: TIntegerField
      FieldName = 'CARGO'
      Required = True
    end
    object C_CargosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_Cargos: TDataSetProvider
    DataSet = Q_Cargos
    Constraints = True
    Left = 437
    Top = 252
  end
  object Q_Cargos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select CARGO, DESCRICAO From CARGOS')
    Left = 437
    Top = 201
  end
  object C_CargosDS: TDataSource
    DataSet = C_Cargos
    Left = 440
    Top = 146
  end
end

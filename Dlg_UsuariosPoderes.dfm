inherited DlgUsuariosPoderes: TDlgUsuariosPoderes
  Left = 182
  Top = 127
  Width = 659
  Height = 453
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 533
    Height = 383
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 349
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 651
    Gradient.ColorStart = 11911142
    inherited btHelp: TTS_SpeedButton
      Left = 615
    end
    inherited lbCaption: TdxfLabel
      Width = 171
      AutoSize = True
      Caption = 'Permitir Autorizar'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 533
    Height = 383
    Color = 14542583
    object pnUsuario: TTS_Panel
      Left = 1
      Top = 1
      Width = 531
      Height = 54
      Align = alTop
      BevelInner = bvLowered
      BorderWidth = 1
      Color = 14542583
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Versoes = 'S,P,E'
      object TS_Label1: TTS_Label
        Left = 4
        Top = 12
        Width = 65
        Caption = 'Usu'#225'rio:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbCartao: TTS_LookupComboBox
        Tag = -2
        Left = 72
        Top = 11
        Width = 199
        HelpContext = -2
        TabOrder = 0
        StyleController = DMProjeto.esGeral
        OnSelectionChange = cmbCartaoSelectionChange
        ClearKey = 32
        ListFieldName = 'LOGINNAME'
        KeyFieldName = 'USUARIO'
        ListSource = C_UsuariosDs
        LookupKeyValue = Null
        Height = 19
      end
    end
    object pnPoderes: TTS_Panel
      Left = 277
      Top = 55
      Width = 255
      Height = 327
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 14542583
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      Versoes = 'S,P,E'
      object GridePoderes: TTS_QDBGrid
        Left = 1
        Top = 1
        Width = 253
        Height = 325
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PERMISSAO'
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
        OnDblClick = GridePoderesDblClick
        OnEnter = GridePoderesEnter
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = C_PoderesDs
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
        TS_SelectedColumn = 'lkpPermisao'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object GridePoderesUSUARIOPODER: TdxDBGridMaskColumn
          Visible = False
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUARIOPODER'
        end
        object GridePoderesUSUARIO: TdxDBGridMaskColumn
          Visible = False
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUARIO'
        end
        object GridePoderesPERMISSAO: TdxDBGridMaskColumn
          Visible = False
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERMISSAO'
        end
        object GridePoderesDescricao: TdxDBGridColumn
          Caption = 'Permitir Autorizar'
          HeaderAlignment = taCenter
          Width = 245
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkpPermisao'
        end
      end
    end
    object pnPermissao: TTS_Panel
      Left = 1
      Top = 55
      Width = 250
      Height = 327
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 14542583
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      Versoes = 'S,P,E'
      object GridePermissao: TTS_QDBGrid
        Left = 1
        Top = 1
        Width = 248
        Height = 325
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'PERMISSAO'
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
        OnDblClick = GridePermissaoDblClick
        OnEnter = GridePermissaoEnter
        OnExit = GridePermissaoExit
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = C_PermissoesDs
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
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dxDBGridMaskColumn1: TdxDBGridMaskColumn
          Caption = 'Permiss'#227'o'
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 244
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAO'
        end
        object dxDBGridMaskColumn2: TdxDBGridMaskColumn
          Visible = False
          Width = 156
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERMISSAO'
        end
      end
    end
    object pnAutoriza: TTS_Panel
      Left = 251
      Top = 55
      Width = 26
      Height = 327
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 14542583
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      Versoes = 'S,P,E'
      object sbPermite: TTS_SpeedButton
        Left = -3
        Top = 100
        Width = 30
        Height = 31
        Hint = 'Repassar para o Caixa Principal os Selecionados'
        Caption = '->'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbPermiteClick
        RepeatedClick = False
        Border = True
      end
      object sbNega: TTS_SpeedButton
        Left = -3
        Top = 138
        Width = 30
        Height = 31
        Hint = 'N'#227'o repassar para o Caixa Principal os Selecionados'
        Caption = '<-'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbNegaClick
        RepeatedClick = False
        Border = True
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 394
    Top = 236
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 442
    Top = 289
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 398
    Top = 326
  end
  inherited Beep: TBTBeeper
    Left = 396
    Top = 378
  end
  inherited FormStorage: TFormStorage
    Left = 464
    Top = 342
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Permitir Autorizar'
    Left = 450
    Top = 236
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 393
    Top = 280
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Usuario,LoginName'
      'From Usuarios'
      'Where desativado = '#39'N'#39
      'Order by LoginName')
    Left = 34
    Top = 52
  end
  object P_Usuarios: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 86
    Top = 52
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Usuarios'
    Left = 132
    Top = 52
    object C_UsuariosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object C_UsuariosLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Required = True
      Size = 30
    end
    object C_UsuariosQ_Poderes: TDataSetField
      FieldName = 'Q_Poderes'
    end
  end
  object C_UsuariosDs: TDataSource
    DataSet = C_Usuarios
    Left = 226
    Top = 60
  end
  object Q_Permissoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select p.sigla, p.permissao, p.descricao'
      'from permissoes p'
      
        'where p.sigla not in (select permissao from usuariospoderes up w' +
        'here up.usuario =  :Usuario)'
      'order by p.descricao')
    UpdateObject = U_Permissoes
    Left = 64
    Top = 126
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object P_Permissoes: TDataSetProvider
    DataSet = Q_Permissoes
    Constraints = True
    Left = 64
    Top = 176
  end
  object C_Permissoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Permissoes'
    Left = 64
    Top = 230
    object C_PermissoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_PermissoesPERMISSAO: TIntegerField
      FieldName = 'PERMISSAO'
      Required = True
    end
    object C_PermissoesSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
  end
  object C_PermissoesDs: TDataSource
    DataSet = C_Permissoes
    Left = 60
    Top = 284
  end
  object C_Poderes: TClientDataSet
    Aggregates = <>
    DataSetField = C_UsuariosQ_Poderes
    Params = <>
    ProviderName = 'P_Poderes'
    Left = 328
    Top = 221
    object C_PoderesUSUARIOPODER: TIntegerField
      FieldName = 'USUARIOPODER'
      Required = True
    end
    object C_PoderesUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_PoderesPERMISSAO: TStringField
      FieldName = 'PERMISSAO'
      Size = 10
    end
    object C_PodereslkpPermisao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpPermisao'
      LookupDataSet = Q_DescPermissoes
      LookupKeyFields = 'SIGLA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PERMISSAO'
      Size = 50
      Lookup = True
    end
  end
  object C_PoderesDs: TDataSource
    DataSet = C_Poderes
    Left = 328
    Top = 274
  end
  object U_Permissoes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from permissoes '
      'where'
      '  PERMISSAO = :PERMISSAO and'
      '  DESCRICAO = :DESCRICAO')
    ModifySQL.Strings = (
      'update permissoes'
      'set'
      '  PERMISSAO = :PERMISSAO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  PERMISSAO = :OLD_PERMISSAO and'
      '  DESCRICAO = :OLD_DESCRICAO')
    InsertSQL.Strings = (
      'insert into permissoes'
      '  (SIGLA, PERMISSAO, DESCRICAO)'
      'values'
      '  (:SIGLA, :PERMISSAO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from permissoes'
      'where'
      '  PERMISSAO = :OLD_PERMISSAO and'
      '  DESCRICAO = :OLD_DESCRICAO')
    Left = 64
    Top = 340
  end
  object Q_Poderes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select *'
      'from usuariospoderes up'
      'where USUARIO = :USUARIO')
    UpdateObject = U_Poderes
    Left = 326
    Top = 126
    ParamData = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object P_Poderes: TDataSetProvider
    DataSet = Q_Poderes
    Constraints = True
    Left = 326
    Top = 176
  end
  object U_Poderes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from usuariospoderes '
      'where'
      '  USUARIOPODER = :USUARIOPODER')
    ModifySQL.Strings = (
      'update usuariospoderes'
      'set'
      '  USUARIO = :USUARIO,'
      '  PERMISSAO = :PERMISSAO'
      'where'
      '  USUARIOPODER = :OLD_USUARIOPODER')
    InsertSQL.Strings = (
      'insert into usuariospoderes'
      '  (USUARIOPODER, USUARIO, PERMISSAO)'
      'values'
      '  (:USUARIOPODER, :USUARIO, :PERMISSAO)')
    DeleteSQL.Strings = (
      'delete from usuariospoderes'
      'where'
      '  USUARIOPODER = :OLD_USUARIOPODER')
    Left = 328
    Top = 324
  end
  object Q_MasterDS: TDataSource
    DataSet = Q_Usuarios
    Left = 274
    Top = 99
  end
  object Q_DescPermissoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select sigla,Permissao, descricao'
      'from permissoes')
    Left = 418
    Top = 126
    object Q_DescPermissoesPERMISSAO: TIntegerField
      FieldName = 'PERMISSAO'
      Origin = 'PERMISSOES.PERMISSAO'
      Required = True
    end
    object Q_DescPermissoesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'PERMISSOES.DESCRICAO'
      Size = 50
    end
    object Q_DescPermissoesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = 'PERMISSOES.SIGLA'
      Size = 10
    end
  end
  object Q_DescPermissoesDs: TDataSource
    DataSet = Q_DescPermissoes
    Left = 416
    Top = 174
  end
end

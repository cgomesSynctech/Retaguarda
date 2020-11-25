inherited DlgReajustePrecosMultUnidade: TDlgReajustePrecosMultUnidade
  Left = 116
  Top = 150
  Width = 783
  Height = 448
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 657
    Height = 378
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 344
    end
    inherited btComando1: TTS_SpeedButton
      Caption = '&Cancelar'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Recalcular'
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Aplicar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 775
    Gradient.ColorStart = 9027548
    inherited btHelp: TTS_SpeedButton
      Left = 739
    end
    inherited lbCaption: TdxfLabel
      Width = 308
      AutoSize = True
      Caption = 'Reajuste Pre'#231'os - Multi-Unidade'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 657
    Height = 378
    Color = 14019327
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 106
      Width = 655
      Height = 271
      Align = alClient
      Color = 14019327
      TabOrder = 0
      object dbgPrecos: TTS_QDBGrid
        Left = 1
        Top = 1
        Width = 653
        Height = 269
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ITEMUNIDADE'
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
        DataSource = Q_PrecosDS
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
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
        TS_ShowSelectionColumn = True
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = '_icSelecionado'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgPrecos_icSelecionado: TdxDBGridColumn
          Visible = False
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = '_icSelecionado'
        end
        object dbgPrecosCODIGO: TdxDBGridMaskColumn
          Caption = 'C'#243'digo'
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object dbgPrecosDESCRICAO: TdxDBGridMaskColumn
          Caption = 'Nome do Item'
          Width = 286
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAO'
        end
        object dbgPrecosITEMUNIDADE: TdxDBGridMaskColumn
          Visible = False
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEMUNIDADE'
        end
        object dbgPrecosUNIDADE: TdxDBGridMaskColumn
          Caption = 'Und.'
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNIDADE'
        end
        object dbgPrecosPERCENTUAL: TdxDBGridCurrencyColumn
          Caption = '% Adic.'
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERCENTUAL'
          DisplayFormat = '0.00'
          Nullable = False
        end
        object dbgPrecosPERCENTUALMINIMO: TdxDBGridCurrencyColumn
          Caption = '% Min.'
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PERCENTUALMINIMO'
          DisplayFormat = '0.00'
          Nullable = False
        end
        object dbgPrecosPRECOMANUAL: TdxDBGridCurrencyColumn
          Caption = 'Pre'#231'o'
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRECOMANUAL'
          Nullable = False
        end
      end
    end
    object TS_Panel2: TTS_Panel
      Left = 1
      Top = 1
      Width = 655
      Height = 105
      Align = alTop
      Color = 14019327
      TabOrder = 1
      object TS_Shape2: TTS_Shape
        Left = 4
        Top = 2
        Width = 294
        Height = 17
        Brush.Color = 9027548
        Pen.Style = psClear
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label5: TTS_Label
        Left = 26
        Top = 24
        Width = 75
        Height = 16
        Caption = 'Fabricante:'
        FocusControl = cmbFabricante
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 21
        Top = 43
        Width = 80
        Height = 16
        Hint = 'Permite entrar no cadastro de fornecedores'
        Caption = 'Fornecedor:'
        FocusControl = cmbFornec
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
        Left = 28
        Top = 63
        Width = 73
        Height = 16
        Caption = 'Grupo:'
        FocusControl = cmbGrupo
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 13
        Top = 83
        Width = 88
        Caption = 'Grupo Comiss'#227'o:'
        FocusControl = cmbGrupo
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 7
        Top = 2
        Width = 287
        Alignment = taCenter
        Caption = 'Op'#231#245'es de Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbFabricante: TTS_LookupComboBox
        Left = 103
        Top = 22
        Width = 171
        TabOrder = 0
        StyleController = DMProjeto.esItens
        OnChange = cmbFabricanteChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'FABRICANTE'
        ListSource = C_FabricantesDS
        LookupKeyValue = Null
        Height = 21
      end
      object cmbFornec: TTS_LookupComboBox
        Left = 103
        Top = 42
        Width = 171
        TabOrder = 1
        StyleController = DMProjeto.esItens
        OnChange = cmbFornecChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'NOME'
        KeyFieldName = 'FAVORECIDO'
        ListSource = C_FornecedoresDS
        LookupKeyValue = Null
        Height = 21
      end
      object cmbGrupo: TTS_LookupComboBox
        Left = 103
        Top = 62
        Width = 171
        TabOrder = 2
        StyleController = DMProjeto.esItens
        OnChange = cmbGrupoChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAOGRUPO'
        KeyFieldName = 'GRUPO'
        ListSource = C_GruposDS
        LookupKeyValue = Null
        Height = 21
      end
      object cmbGrupoComissao: TTS_LookupComboBox
        Left = 103
        Top = 82
        Width = 171
        TabOrder = 3
        StyleController = DMProjeto.esItens
        OnChange = cmbGrupoComissaoChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'GRUPOCOMISSAO'
        ListSource = C_GrupoComissaoDs
        LookupKeyValue = Null
        Height = 19
      end
      object TS_Panel3: TTS_Panel
        Left = 308
        Top = 1
        Width = 346
        Height = 103
        Align = alRight
        Color = 14019327
        TabOrder = 4
        object TS_Shape1: TTS_Shape
          Left = 5
          Top = 0
          Width = 338
          Height = 17
          Brush.Color = 9027548
          Pen.Style = psClear
          Shape = stRoundRect
          Transparent = False
        end
        object TS_Label7: TTS_Label
          Left = 5
          Top = 1
          Width = 332
          Alignment = taCenter
          Caption = 'Op'#231#245'es de C'#225'lculo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object rgTipoReajuste: TTS_RadioGroup
          Left = 7
          Top = 22
          Width = 168
          Height = 70
          Caption = 'Reajustar por '
          ItemIndex = 0
          Items.Strings = (
            'Percentual'
            'Valor')
          TabOrder = 0
          Transparent = True
        end
        object dfValor: TTS_CalcEdit
          Left = 95
          Top = 51
          Width = 72
          TabOrder = 1
          StyleController = DMProjeto.esItens
          Text = '0'
          ButtonGlyph.Data = {
            AE040000424DAE0400000000000036040000280000000A0000000A0000000100
            0800000000007800000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
            000000FD000006060404040404040400000006FF0606060606060400000006FE
            0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
            000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
            FEFF06000000FD0606060606060606FD0000}
          BeepOnError = False
          DisplayFormat = '###,##0.00'
          Height = 19
          StoredValues = 1
        end
        object rgAplicarEm: TTS_RadioGroup
          Left = 184
          Top = 22
          Width = 143
          Height = 70
          Caption = 'Aplicar reajuste em:'
          ItemIndex = 0
          Items.Strings = (
            '% Adicional'
            '% Minimo'
            'Pre'#231'o')
          TabOrder = 2
          Transparent = True
        end
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 745
    Top = 355
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 678
    Top = 283
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 742
    Top = 305
  end
  inherited Beep: TBTBeeper
    Left = 743
    Top = 169
  end
  inherited FormStorage: TFormStorage
    Left = 742
    Top = 256
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Reajuste Pre'#231'os - Multi-Unidade'
    Left = 684
    Top = 191
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 738
    Top = 206
  end
  object Q_Precos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.codigo, i.descricao, i.fabricante, i.ultimofornecedor, ' +
        'i.grupo, i.grupocomissao,'
      '       iu.itemunidade, iu.unidade,'
      '       iu.percentual, iu.percentualminimo, iu.precomanual'
      ''
      'from itensunidades iu'
      ' inner join itens i on i.item = iu.item'
      'Order by i.descricao')
    UpdateObject = U_Precos
    Left = 13
    Top = 368
  end
  object U_Precos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensunidades '
      'where'
      '  ITEMUNIDADE = :ITEMUNIDADE')
    ModifySQL.Strings = (
      'update itensunidades'
      'set'
      '  PERCENTUAL = :PERCENTUAL,'
      '  PERCENTUALMINIMO = :PERCENTUALMINIMO,'
      '  PRECOMANUAL = :PRECOMANUAL'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    InsertSQL.Strings = (
      'insert into itensunidades'
      '  (ITEMUNIDADE, UNIDADE, PERCENTUAL, PERCENTUALMINIMO, '
      'PRECOMANUAL)'
      'values'
      '  (:ITEMUNIDADE, :UNIDADE, :PERCENTUAL, :PERCENTUALMINIMO, '
      ':PRECOMANUAL)')
    DeleteSQL.Strings = (
      'delete from itensunidades'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    Left = 65
    Top = 368
  end
  object P_Precos: TDataSetProvider
    DataSet = Q_Precos
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 109
    Top = 369
  end
  object C_Precos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Precos'
    Left = 161
    Top = 368
    object C_Precos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_PrecosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_PrecosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_PrecosITEMUNIDADE: TIntegerField
      FieldName = 'ITEMUNIDADE'
      Required = True
    end
    object C_PrecosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_PrecosPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 3
    end
    object C_PrecosPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
    object C_PrecosPRECOMANUAL: TBCDField
      FieldName = 'PRECOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_PrecosFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_PrecosULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
    end
    object C_PrecosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_PrecosGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
    end
  end
  object Q_PrecosDS: TDataSource
    DataSet = C_Precos
    Left = 228
    Top = 370
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes order by descricao')
    Left = 495
    Top = 177
  end
  object Q_FabricantesProvider: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 498
    Top = 229
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_FabricantesProvider'
    Left = 500
    Top = 277
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_FabricantesDS: TDataSource
    DataSet = C_Fabricantes
    Left = 497
    Top = 329
  end
  object Q_Fornecedores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from favorecidos where tipofavorecido = 2'
      'order by nome')
    Left = 582
    Top = 177
  end
  object P_Fornecedores: TDataSetProvider
    DataSet = Q_Fornecedores
    Constraints = True
    Left = 587
    Top = 225
  end
  object C_Fornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fornecedores'
    Left = 591
    Top = 275
    object C_FornecedoresFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_FornecedoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_FornecedoresDS: TDataSource
    DataSet = C_Fornecedores
    Left = 590
    Top = 326
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOS where tipoitem = :tipoitem'
      'order by descricaogrupo')
    Left = 388
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPOITEM'
        ParamType = ptUnknown
      end>
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Grupos'
    Left = 390
    Top = 230
    object C_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object C_GruposCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object C_GruposDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object C_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
  end
  object C_GruposDS: TDataSource
    DataSet = C_Grupos
    Left = 394
    Top = 329
  end
  object P_Grupos: TDataSetProvider
    DataSet = Q_Grupos
    Constraints = True
    Left = 395
    Top = 279
  end
  object Q_GrupoComissao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from GRUPOSCOMISSOES'
      'order by DESCRICAO')
    Left = 302
    Top = 184
  end
  object C_GrupoComissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GrupoComissao'
    Left = 301
    Top = 239
    object C_GrupoComissaoGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
      Required = True
    end
    object C_GrupoComissaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_GrupoComissao: TDataSetProvider
    DataSet = Q_GrupoComissao
    Constraints = True
    Left = 301
    Top = 286
  end
  object C_GrupoComissaoDs: TDataSource
    DataSet = C_GrupoComissao
    Left = 304
    Top = 326
  end
end

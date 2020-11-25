inherited DlgConsultaStatusRemessa: TDlgConsultaStatusRemessa
  Width = 663
  Height = 405
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 537
    Height = 328
    Color = 15456728
    object pnEdits: TTS_Panel
      Left = 1
      Top = 1
      Width = 535
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      Color = 15456728
      TabOrder = 0
      object TS_Label1: TTS_Label
        Left = 9
        Top = 16
        Width = 100
        Caption = 'C'#243'digo da Remessa:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfTipoFav: TTS_DBLookupTipoFav
        Left = 9
        Top = 34
        Width = 99
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        StyleController = DMProjeto.esRemessa
        DropDownRows = 15
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 109
        Top = 35
        Width = 292
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        OnExit = edFavorecidoExit
        StyleController = DMProjeto.esRemessa
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              26050000424D260500000000000036040000280000000F0000000F0000000100
              080000000000F000000000000000000000000001000000000000000000000000
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
              070707070707070707000707070707070707070707FCFC000700070707070707
              0707070704FEFC00070007070707070707070704FEFC00070700070707070707
              0707FCFEFC0007070700070707000000000707A4000707070700070700060606
              0600A4A40707070707000707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
              FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
              FEFE060007070707070007FEFFFFFFFEFEFE000707070707070007A4FFFFFFFE
              FE060707070707070700070707A4A4A400070707070707070700070707070707
              07070707070707070700}
            Kind = bkGlyph
            Width = 18
          end
          item
            Default = False
            Glyph.Data = {
              06050000424D060500000000000036040000280000000D0000000D0000000100
              080000000000D000000000000000000000000001000000000000000000000000
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
              0707070707070700000007070707070707070707070707000000070707070700
              00000707070707000000070707070700FC000707070707000000070707070700
              FC000707070707000000070700000000FC000000000707000000070700FCFCFC
              FCFCFCFC000707000000070700000000FC000000000707000000070707070700
              FC000707070707000000070707070700FC000707070707000000070707070700
              0000070707070700000007070707070707070707070707000000070707070707
              07070707070707000000}
            Kind = bkGlyph
            Width = 17
          end>
        LookupTipoFav = dfTipoFav
        SelecionarVarios = False
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
      object edCodigo: TTS_Edit
        Left = 110
        Top = 14
        Width = 121
        TabOrder = 0
        OnExit = edCodigoExit
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
      object rgStatus: TTS_RadioGroup
        Left = 408
        Top = -2
        Width = 113
        Height = 59
        ItemIndex = 0
        Items.Strings = (
          'Pendente'
          'Aguardando'
          'Enviado')
        TabOrder = 2
        OnClick = rgStatusClick
        Transparent = True
      end
    end
    object pnGrid: TTS_Panel
      Left = 1
      Top = 63
      Width = 535
      Height = 224
      Align = alClient
      BevelOuter = bvNone
      Color = 15456728
      TabOrder = 1
      object dbgRemessas: TTS_QDBGrid
        Left = 0
        Top = 0
        Width = 535
        Height = 224
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'REMESSA'
        SummaryGroups = <>
        SummarySeparator = '|'
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnDblClick = dbgRemessasDblClick
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsConsultaRemessa
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
        TS_FooterBox = pnTotais
        TS_HabilitarQtdSelecionada = svFooterSummary
        TS_HabilitarTotalSelecionado = svFooterSummary
        TS_HabilitarQtdGeral = svFooterSummary
        TS_HabilitarTotalGeral = svFooterSummary
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
        object dbgRemessasREMESSA: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REMESSA'
        end
        object dbgRemessasCODIGO: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object dbgRemessasFAVORECIDO: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FAVORECIDO'
        end
        object dbgRemessasCLIENTE: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLIENTE'
        end
        object dbgRemessasNOME: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 188
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME'
        end
        object dbgRemessasLUCRO_EMPRESA: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LUCRO_EMPRESA'
        end
        object dbgRemessasDATA_PREVISAO: TdxDBGridDateColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA_PREVISAO'
        end
        object dbgRemessasDATA_ENVIO: TdxDBGridDateColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA_ENVIO'
        end
        object dbgRemessasCIFRAOENVIADO: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CIFRAOENVIADO'
        end
        object dbgRemessasVALOR_LOCAL: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR_LOCAL'
        end
        object dbgRemessasSTATUS: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATUS'
        end
        object dbgRemessasAGENCIA: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 33
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AGENCIA'
        end
        object dbgRemessasDESC_AGENCIA: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 126
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESC_AGENCIA'
        end
        object dbgRemessasSTATUS_DESCRICAO: TdxDBGridMaskColumn
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATUS_DESCRICAO'
        end
      end
    end
    object pnTotais: TTS_Panel
      Left = 1
      Top = 287
      Width = 535
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Color = 15456728
      TabOrder = 2
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 537
    Height = 328
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 294
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Enviar Remessa'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 655
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 300
      Caption = 'Consulta de Status da Remessa'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 619
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 462
    Top = 118
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 377
    Top = 129
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 464
    Top = 226
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Consulta de Status da Remessa'
    Left = 378
    Top = 194
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 463
    Top = 171
  end
  object Q_ConsultaRemessa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT REM.REMESSA, REM.CODIGO, FAV.FAVORECIDO, REM.CLIENTE, FAV' +
        '.NOME,'
      'REM.LUCRO_EMPRESA, REM.DATA_PREVISAO,  REM.DATA_ENVIO,'
      'IDXENVIADO.CIFRAO AS CIFRAOENVIADO, REM.VALOR_LOCAL, REM.STATUS,'
      'REM.AGENTE AS AGENCIA, AGENT.NOME AS DESC_AGENCIA,'
      'STATUS.DESCRICAO AS STATUS_DESCRICAO'
      'FROM REMESSAS REM'
      'INNER JOIN FAVORECIDOS FAV ON (REM.CLIENTE = FAV.FAVORECIDO)'
      
        'INNER JOIN INDEXADORES IDXENVIADO ON (REM.MOEDA_LOCAL = IDXENVIA' +
        'DO.INDEXADOR)'
      
        'INNER JOIN STATUS_REMESSAS STATUS ON (REM.STATUS=STATUS.STATUS_R' +
        'EMESSA)'
      'INNER JOIN FAVORECIDOS AGENT ON (REM.AGENTE = AGENT.FAVORECIDO)'
      'WHERE REM.DESATIVAR_REMESSA = '#39'N'#39)
    Left = 122
    Top = 138
  end
  object dsConsultaRemessa: TDataSource
    DataSet = C_ConsultaRemessa
    Left = 121
    Top = 274
  end
  object C_ConsultaRemessa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PConsultaRemessa'
    Left = 121
    Top = 228
    object C_ConsultaRemessaREMESSA: TIntegerField
      FieldName = 'REMESSA'
      Required = True
    end
    object C_ConsultaRemessaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 15
    end
    object C_ConsultaRemessaFAVORECIDO: TIntegerField
      DisplayLabel = 'Favorecido'
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaRemessaCLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
    end
    object C_ConsultaRemessaNOME: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaRemessaLUCRO_EMPRESA: TBCDField
      FieldName = 'LUCRO_EMPRESA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaRemessaDATA_PREVISAO: TDateField
      DisplayLabel = 'Data de Previs'#227'o'
      FieldName = 'DATA_PREVISAO'
    end
    object C_ConsultaRemessaDATA_ENVIO: TDateField
      DisplayLabel = 'Data de Envio'
      FieldName = 'DATA_ENVIO'
    end
    object C_ConsultaRemessaCIFRAOENVIADO: TStringField
      FieldName = 'CIFRAOENVIADO'
      Size = 10
    end
    object C_ConsultaRemessaVALOR_LOCAL: TBCDField
      FieldName = 'VALOR_LOCAL'
      Precision = 18
      Size = 2
    end
    object C_ConsultaRemessaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_ConsultaRemessaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
    end
    object C_ConsultaRemessaDESC_AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'DESC_AGENCIA'
      Size = 50
    end
    object C_ConsultaRemessaSTATUS_DESCRICAO: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS_DESCRICAO'
      Size = 30
    end
    object C_ConsultaRemessa_icSelecionados: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object PConsultaRemessa: TDataSetProvider
    DataSet = Q_ConsultaRemessa
    Constraints = True
    Options = [poFetchDetailsOnDemand, poIncFieldProps, poAllowMultiRecordUpdates, poPropogateChanges, poAllowCommandText]
    Left = 121
    Top = 183
  end
end

inherited RptItensTabelaPreco: TRptItensTabelaPreco
  Left = 429
  Top = 167
  Width = 774
  Height = 475
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 766
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 236
      Caption = 'Tabela de Pre'#231'o de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 732
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 680
    end
    inherited lbTemplate: TTS_Label
      Left = 417
    end
  end
  inherited pnGrid: TPanel
    Width = 713
    Height = 410
    inherited pnDados: TTS_Panel
      Width = 713
      Height = 24
      Color = 14019327
      object TS_Label2: TTS_Label
        Left = -2
        Top = 5
        Width = 91
        Caption = 'Tabela de Pre'#231'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 546
        Top = 5
        Width = 53
        Caption = 'Indexador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbTabelaPreco: TTS_PopupEdit
        Left = 92
        Top = 3
        Width = 123
        Style.BorderStyle = xbsSingle
        TabOrder = 0
        StyleController = DMProjeto.esItens
        PopupControl = gridTabelasPreco
        PopupFormBorderStyle = pbsSysPanel
        PopupFormCaption = 'Tabelas de Pre'#231'o'
        OnCloseUp = cmbTabelaPrecoCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 221
        Top = 3
        Width = 100
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        AutoSelect = False
        StyleController = DMProjeto.esItens
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
        TS_TipoEstoque = 0
        TS_FornecedorSelecionado = 0
        TS_FornPrefSelecionado = 0
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_PossuiEstoque = False
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        TS_ItemAlterado = False
        OnSelecionou = PopupFiltroItensSelecionou
        Height = 19
      end
      object ckbTotalizar: TTS_CheckBox
        Left = 432
        Top = 1
        Width = 114
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        Visible = False
        Caption = 'Totalizar por grupo'
        OnChange = ckbTotalizarChange
        DisableEdit = False
        Height = 23
      end
      object cmbIndex: TTS_LookupComboBox
        Left = 603
        Top = 3
        Width = 100
        TabOrder = 3
        StyleController = DMProjeto.esItens
        OnSelectionChange = cmbIndexSelectionChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'INDEXADOR'
        ListSource = C_IndexadoresDS
        LookupKeyValue = Null
        Height = 19
      end
      object cbServicos: TTS_CheckBox
        Left = 326
        Top = 3
        Width = 99
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 4
        Caption = 'Com Servicos'
        StyleController = DMProjeto.esItens
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 713
      Height = 367
      KeyField = 'CODIGO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'ESTOQUE'
              SummaryFormat = '>ESTOQUE=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      ShowRowFooter = True
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'ESTOQUE;SUM;')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaQTDEMBALAGEM: TdxDBGridColumn
        Caption = 'Qtd. Emb.'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMBALAGEM'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn
        DisableCustomizing = True
        MinWidth = 20
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 250
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 250
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 250
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn
        Caption = 'Desconto Max.'
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
        SummaryFooterType = cstSum
        SummaryFooterField = 'ic_Valor_CustoMedio'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = #218'lt.Pre'#231'o Compra'
        Visible = False
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaULTIMAVENDA: TdxDBGridDateColumn
        Caption = #218'lt. Venda'
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMAVENDA'
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridColumn
        Caption = 'Custo Contabil'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn
        Caption = 'Desc. Complementar'
        Visible = False
        Width = 1491
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPLEMENTAR'
      end
      object dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn
        Caption = 'Desc. T'#233'cnica'
        Visible = False
        Width = 1491
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOTECNICA'
      end
      object dbgConsultaCST: TdxDBGridMaskColumn
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CST'
      end
      object dbgConsultaIPICOMPRA: TdxDBGridMaskColumn
        Caption = 'IPI Compra'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPICOMPRA'
      end
      object dbgConsultaIPIVENDA: TdxDBGridMaskColumn
        Caption = 'IPI Venda'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPIVENDA'
      end
      object dbgConsultaPESOBRUTO: TdxDBGridMaskColumn
        Caption = 'Peso Bruto'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOBRUTO'
      end
      object dbgConsultaREDUCAOCST: TdxDBGridMaskColumn
        Caption = 'Red.CST'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCAOCST'
      end
      object dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Peso L'#237'quido'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOLIQUIDO'
      end
      object dbgConsultaALIQICMS: TdxDBGridMaskColumn
        Caption = 'Aliq.ICMS'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
      end
      object dbgConsultaSITUACAOECF: TdxDBGridMaskColumn
        Caption = 'Tipo Tributa'#231#227'o'
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object dbgConsultaTVA: TdxDBGridMaskColumn
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
      end
      object dbgConsultaTVAFONTE: TdxDBGridMaskColumn
        Caption = 'TVA Fonte'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVAFONTE'
      end
      object dbgConsultaCLASFISCAL: TdxDBGridMaskColumn
        Caption = 'Classif.Fiscal'
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        SummaryFooterType = cstSum
        SummaryFooterField = 'ic_Estoque'
        SummaryFooterFormat = '#,###,##0'
      end
      object dbgConsultaTotComissao: TdxDBGridColumn
        Caption = 'Pontos'
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTCOMISS'
      end
      object dbgConsultaic_Valor_CustoMedio: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ic_Valor_CustoMedio'
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCODIGOBARRAS: TdxDBGridColumn
        Caption = 'Cod. Barras'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOBARRAS'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 391
      Width = 713
      TabOrder = 4
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object gridTabelasPreco: TTS_QDBGrid
      Left = 39
      Top = 211
      Width = 294
      Height = 136
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'TABELAPRECO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_TabelasPrecoDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
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
      object gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tabela'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn
        Caption = '% Em Rela'#231#227'o a Normal'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUAL'
        EditMask = '##0.00 %'
      end
      object gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn
        DisableEditor = True
        MinWidth = 20
        Visible = False
        Width = 263
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESATIVADO'
        ValueChecked = 'S'
        ValueGrayed = 'null'
        ValueUnchecked = 'N'
      end
      object gridTabelasPrecoBASEADA: TdxDBGridCheckColumn
        DisableEditor = True
        MinWidth = 20
        Visible = False
        Width = 221
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEADA'
        ValueChecked = 'S'
        ValueGrayed = 'null'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 410
    inherited btSair: TTS_SpeedButton
      Top = 365
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 445
    Top = 286
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 474
    Top = 231
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 402
    Top = 333
  end
  inherited FormStorage: TFormStorage
    StoredProps.Strings = (
      'cmbTabelaPreco.Text'
      'dbgConsulta.BandColor'
      'dbgConsulta.BandFont'
      'dbgConsulta.Color'
      'dbgConsulta.Filter'
      'dbgConsulta.Font'
      'dbgConsulta.GridLineColor'
      'dbgConsulta.GroupNodeColor'
      'dbgConsulta.GroupNodeFont'
      'dbgConsulta.GroupNodeTextColor'
      'dbgConsulta.GroupPanelColor'
      'dbgConsulta.GroupPanelFontColor'
      'dbgConsulta.HeaderColor'
      'dbgConsulta.HeaderFont'
      'dbgConsulta.RowFooterColor'
      'dbgConsulta.RowFooterNodeFont'
      'dbgConsulta.RowFooterTextColor'
      'dbgConsulta.TS_AnotherColor'
      'dbgConsulta.OptionsView'
      'dbgConsulta.Bands'
      'dbgConsulta.Options'
      'dbgConsulta.OptionsBehavior'
      'dbgConsulta.OptionsCustomize'
      'dbgConsulta.OptionsDB'
      'dbgConsulta.OptionsEx'
      'dbgConsulta.ShowGrid'
      'dbgConsulta.ShowRowFooter'
      'dbgConsulta.SummaryGroups'
      'dbgConsulta.ShowPreviewGrid'
      'dbgConsulta.TS_SummaryFields'
      'dbgConsulta.TS_FormatarPorCondicao'
      'FormsComponent.FormHeight'
      'FormsComponent.FormWidth'
      'FormsComponent.Caption')
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select i.item,i.codigo, i.codigobarras, i.descricao, i.unidade, '
      
        'cast(i.estoque/i.fatorundvenda as integer) as estoque, i.referen' +
        'cia,'
      'i.taxincluso ,con_ven.descricao as conta_ven,'
      'con_cus.descricao as conta_cus, con_inv.descricao as conta_inv,'
      
        'i.comissao, i.descontomaximo, i.ultimofornecedor as IDUltFornece' +
        'dor,'
      
        'forn.nome as UltFornecedor, i.customedio as customedio, i.custoc' +
        'ontabil,'
      'i.precocompra as precocompra,'
      'ti.descricao as tipoitem,  g.descricaogrupo as grupo,'
      
        'f.descricao as fabricante, forn.tipofavorecido, i.ultimavenda, i' +
        '.descricaocomplementar, i.descricaotecnica, i.cst, i.reducaocst,' +
        ' i.ipicompra, i.ipivenda, i.pesobruto, i.pesoliquido, i.aliqicms' +
        ', i.situacaoecf, i.tva, i.tvafonte, i.clasfiscal, i.indexador, i' +
        'u.qtdembalagem,'
      ''
      '(select preco from produtospreco'
      
        'where item=i.item and unidade = i.unidade and tabelapreco=:tp1) ' +
        'as tp1,'
      ''
      '(select preco from produtospreco'
      
        'where item=i.item and unidade = i.unidade and tabelapreco=:tp2) ' +
        'as tp2,'
      ''
      '(select preco from produtospreco'
      
        'where item=i.item and unidade = i.unidade and tabelapreco=:tp3) ' +
        'as tp3,'
      ''
      '(select preco from produtospreco'
      
        'where item=i.item and unidade = i.unidade and tabelapreco=:tp4) ' +
        'as tp4,'
      ''
      '(select preco from produtospreco'
      
        'where item=i.item and unidade = i.unidade and tabelapreco=:tp5) ' +
        'as tp5, '
      'i.estoque * i.comissao as TotComiss'
      ''
      'From itens i'
      'Left join contas con_ven on con_ven.conta=i.conta_venda'
      'Left join contas con_cus on con_cus.conta=i.conta_custo'
      'Left join contas con_inv on con_inv.conta=i.conta_venda'
      'Left Join tipositens ti On i.tipoitem=ti.tipoitem'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      
        'Left Join favorecidos forn On i.ultimofornecedor = forn.favoreci' +
        'do'
      
        'Left Join itensunidades iu on iu.item = i.item and iu.unidade = ' +
        'i.unidade')
    Left = 464
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tp1'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp2'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp3'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp4'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp5'
        ParamType = ptInput
        Value = '0'
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Left = 399
    Top = 148
  end
  inherited P_Consulta: TDataSetProvider
    Left = 398
    Top = 194
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'tp1'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp2'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp3'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp4'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'tp5'
        ParamType = ptInput
        Value = '0'
      end>
    OnCalcFields = C_ConsultaCalcFields
    Left = 397
    Top = 240
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ConsultaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      DisplayLabel = 'Und.'
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object C_ConsultaTIPOITEM: TStringField
      DisplayLabel = 'Tipo do Item'
      FieldName = 'TIPOITEM'
      Origin = 'TIPOSITENS.TIPOITEM'
      Size = 30
    end
    object C_ConsultaGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
    object C_ConsultaCONTA_VEN: TStringField
      DisplayLabel = 'Conta Venda'
      FieldName = 'CONTA_VEN'
      Origin = 'CONTAS.CONTA_VEN'
      Size = 50
    end
    object C_ConsultaCONTA_CUS: TStringField
      DisplayLabel = 'Conta Custo'
      FieldName = 'CONTA_CUS'
      Origin = 'CONTAS.CONTA_CUS'
      Size = 50
    end
    object C_ConsultaCONTA_INV: TStringField
      DisplayLabel = 'Conta Invent'#225'rio'
      FieldName = 'CONTA_INV'
      Origin = 'CONTAS.CONTA_INV'
      Size = 50
    end
    object C_ConsultaCOMISSAO: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
      Origin = 'ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOMAXIMO: TBCDField
      DisplayLabel = 'M'#225'ximo'
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'ITENS.DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaULTFORNECEDOR: TStringField
      DisplayLabel = #218'ltimo Fornecedor'
      FieldName = 'ULTFORNECEDOR'
      Origin = 'FAVORECIDOS.ULTFORNECEDOR'
      Size = 50
    end
    object C_ConsultaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ConsultaTAXINCLUSO: TStringField
      DisplayLabel = 'Tax Incluso'
      FieldName = 'TAXINCLUSO'
      Origin = 'ITENS.TAXINCLUSO'
      Size = 1
    end
    object C_ConsultaIDULTFORNECEDOR: TIntegerField
      FieldName = 'IDULTFORNECEDOR'
      Origin = 'ITENS.IDULTFORNECEDOR'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
    end
    object C_ConsultaDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Size = 255
    end
    object C_ConsultaDESCRICAOTECNICA: TStringField
      FieldName = 'DESCRICAOTECNICA'
      Size = 255
    end
    object C_ConsultaCST: TStringField
      FieldName = 'CST'
      Size = 2
    end
    object C_ConsultaREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Size = 1
    end
    object C_ConsultaTVA: TBCDField
      FieldName = 'TVA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 15
    end
    object C_ConsultaTOTCOMISS: TFloatField
      FieldName = 'TOTCOMISS'
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
    end
    object C_Consultaic_Valor_CustoMedio: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'ic_Valor_CustoMedio'
    end
    object C_Consultaic_Estoque: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ic_Estoque'
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ConsultaQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
    end
  end
  inherited ppmExportacao: TTS_PopupMenu
    object N2: TMenuItem
      Caption = '-'
    end
    object ColetorGerTec1: TMenuItem
      Caption = 'Coletor - GerTec'
      OnClick = ColetorGerTec1Click
    end
    object BalanaFilizolaPlatina1: TMenuItem
      Caption = 'Balan'#231'a Filizola-Platina'
      OnClick = BalanaFilizolaPlatina1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object BalanaToledo1: TMenuItem
      Caption = 'Balan'#231'a Toledo'
      OnClick = BalanaToledo1Click
    end
    object BalanaToletoAtualizao1: TMenuItem
      Caption = 'Balan'#231'a Toleto Atualiza'#231#227'o'
      OnClick = BalanaToletoAtualizao1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ColetordeDados1: TMenuItem
      Caption = 'Coletor de Dados'
      OnClick = ColetordeDados1Click
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 657
    inherited Ajuda1: TMenuItem
      HelpContext = 568
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3671144907
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 663
    Top = 93
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Tabela de Pre'#231'o de Itens'
    OnRefresh = FormsComponentRefresh
    Left = 661
    Top = 294
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 592
    Top = 271
  end
  object C_TabelasPrecoDS: TDataSource
    DataSet = C_TabelasPreco
    Left = 577
    Top = 230
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 577
    Top = 184
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelasPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelasPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco'
      'where desativado = '#39'N'#39)
    Left = 539
    Top = 130
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Left = 608
    Top = 112
  end
  object Q_Indexadores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores '
      'order by descricao')
    Left = 560
    Top = 115
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 722
    Top = 162
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 702
    Top = 220
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_IndexadoresDS: TDataSource
    DataSet = C_Indexadores
    Left = 604
    Top = 59
  end
  object sdGertec: TSaveDialog
    FileName = 'PRICETAB.TXT'
    InitialDir = 'C:\'
    Left = 128
    Top = 124
  end
end

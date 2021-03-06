inherited RptSugestaoCompras: TRptSugestaoCompras
  Left = 143
  Top = 123
  Width = 928
  Height = 524
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 912
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Left = 0
      Top = 0
      Width = 207
      Caption = 'Sugest'#227'o de Compras'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 886
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 859
    end
    inherited lbTemplate: TTS_Label
      Top = 21
    end
  end
  inherited pnGrid: TPanel
    Width = 859
    Height = 448
    inherited pnDados: TTS_Panel
      Width = 859
      Height = 47
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 116
        Top = 6
        Width = 26
        Caption = 'Giro:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 190
        Top = 5
        Width = 95
        Caption = 'Margem Seguran'#231'a %:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object btFornecedores: TTS_SpeedButton
        Left = 732
        Top = 4
        Width = 68
        Height = 19
        Anchors = []
        Caption = '&Fornec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btFornecedoresClick
        RepeatedClick = False
        Border = True
      end
      object TS_Label4: TTS_Label
        Left = 536
        Top = 4
        Width = 63
        Height = 15
        Anchors = []
        Caption = 'Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 338
        Top = 6
        Width = 35
        Caption = 'Status:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 5
        Top = 4
        Width = 109
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object speGiro: TTS_SpinEdit
        Left = 144
        Top = 4
        Width = 45
        TabOrder = 1
        StyleController = DMProjeto.esItens
        Value = 30
        Height = 19
        StoredValues = 16
      end
      object EstoqueSeguranca: TTS_CalcEdit
        Left = 287
        Top = 4
        Width = 50
        TabOrder = 2
        StyleController = DMProjeto.esItens
        Text = '30'
        OnChange = EstoqueSegurancaChange
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
        Value = 30
        Height = 19
        StoredValues = 1
      end
      object dfTipoOperacao: TTS_PopupEdit
        Left = 624
        Top = 4
        Width = 93
        TabOrder = 3
        OnClick = dfTipoOperacaoClick
        Anchors = []
        AutoSelect = False
        StyleController = DMProjeto.esItens
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = dfTipoOperacaoCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object TS_PopupEdit1: TTS_PopupEdit
        Left = 374
        Top = 4
        Width = 86
        TabOrder = 4
        AutoSelect = False
        StyleController = DMProjeto.esItens
        HideEditCursor = True
        PopupControl = clbStatus
        PopupFormBorderStyle = pbsSysPanel
        LookupKeyValue = 0
        Height = 19
      end
      object cbEstoqueSobreGiro: TTS_CheckBox
        Left = 4
        Top = 26
        Width = 157
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 5
        Caption = 'Estoque Maior Que o Giro:'
        OnChange = cbEstoqueSobreGiroChange
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object seEstoqueSobreGiro: TTS_SpinEdit
        Left = 152
        Top = 26
        Width = 45
        Enabled = False
        TabOrder = 6
        StyleController = DMProjeto.esItens
        Value = 2
        Height = 19
        StoredValues = 48
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 47
      Width = 859
      Height = 382
      KeyField = 'ITEM'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Und.'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaESTOQUE: TdxDBGridCurrencyColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaPRECOVENDA: TdxDBGridColumn
        Caption = 'Prc Venda'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOVENDA'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = #218'lt. Pre'#231'o Compra'
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaPRECOCOMPRAIPI: TdxDBGridColumn
        Caption = 'P. Comp. IPI'
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRAIPI'
      end
      object dbgConsultaCUSTOPRODUTO: TdxDBGridColumn
        Caption = 'Custo Produto'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOPRODUTO'
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridColumn
        Caption = 'Custo. Cont'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgConsultaAliqIPI: TdxDBGridColumn
        Caption = '% IPI'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQIPI'
      end
      object dbgConsultaLucro: TdxDBGridColumn
        Caption = '% Lucro'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LUCRO'
      end
      object dbgConsultaMC: TdxDBGridColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MC'
      end
      object dbgConsultaDATAULTVENDA: TdxDBGridColumn
        Caption = 'Data Ult. Venda'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAULTVENDA'
      end
      object dbgConsultaDATAULTCOMPRA: TdxDBGridColumn
        Caption = 'Ult. Venda'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAULTCOMPRA'
      end
      object dbgConsultaQTDULTCOMPRA: TdxDBGridColumn
        Caption = 'Qtd Ult Compra'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDULTCOMPRA'
      end
      object dbgConsultaicSaldoProjetado: TdxDBGridColumn
        Caption = 'Saldo Projetado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSaldoProjetado'
      end
      object dbgConsultaGIROVENDAS: TdxDBGridCurrencyColumn
        Caption = 'Giro de Vendas'
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GIROVENDAS'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaicEstoqueMinimo: TdxDBGridColumn
        Caption = 'Estoque M'#237'nimo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icEstoqueMinimo'
      end
      object dbgConsultaDIASPERIODO: TdxDBGridMaskColumn
        Caption = 'Prazo Entrega'
        HeaderAlignment = taCenter
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIASPERIODO'
      end
      object dbgConsultaicSugestaoCompra: TdxDBGridColumn
        Caption = 'Sugest'#227'o Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSugestaoCompra'
      end
      object dbgConsultaPEDIDOCOMPRA: TdxDBGridCurrencyColumn
        Caption = 'Ped. Compra A Receber'
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PEDIDOCOMPRA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUECONSIGENTRADA: TdxDBGridCurrencyColumn
        Caption = 'Est. Consig. Entrada'
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGENTRADA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn
        Caption = 'Est. Consig. Sa'#237'da'
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGSAIDA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaPED_COMPRA_EM_ABERTO: TdxDBGridColumn
        Caption = 'Ped. Aberto'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PED_COMPRA_EM_ABERTO'
      end
      object dbgConsultaicTotalCompra: TdxDBGridColumn
        Caption = 'Total Compra'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icTotalCompra'
      end
      object dbgConsultaFornecPref: TdxDBGridColumn
        Caption = 'Forn. Pref.'
        HeaderAlignment = taCenter
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORNECPREF'
      end
      object dbgConsultaFabricante: TdxDBGridColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFAB'
      end
      object dbgConsultaFORNECPREFERENCIA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORNECPREFERENCIA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 429
      Width = 859
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 458
      Top = 62
      Width = 150
      Height = 123
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      KeyField = 'TIPOMOVIMENTO'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object clbStatus: TTS_CheckListBox
      Left = 35
      Top = 68
      Width = 174
      Height = 131
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
      KeyField = 'STATUS'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 448
    inherited btSair: TTS_SpeedButton
      Top = 403
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      'i.item, i.codigo, i.descricao,'
      'i.unidade, i.referencia, i.estoque,'
      'i.estoqueconsigsaida, i.estoqueconsigentrada,'
      'i.fornecpreferencia, i.diasperiodo, i.PED_COMPRA_EM_ABERTO,'
      'i.ped_compra_em_aberto as pedidocompra,'
      'fb.descricao as DescFab, f.nome as FornecPref,'
      ''
      '(select coalesce(Sum(si.quantidade),0)'
      'from saidasitens si'
      
        'inner join saidas s on si.empresa = s.empresa and si.pdv = s.pdv' +
        ' and si.saida = s.saida'
      
        'where s.data >= :d1 and si.item = i.item and s.situacao = '#39'N'#39' an' +
        'd s.tipopadrao in (1,2)) as girovendas,'
      ''
      ''
      '(Select first 1 e.Data'
      'from saidas e'
      
        'inner join SaidasItens ei on e.empresa = ei.empresa and e.pdv = ' +
        'ei.pdv and e.saida = ei.saida'
      'inner join favorecidos f on e.favorecido = f.favorecido'
      'inner join tipospadrao tp on tp.tipopadrao = e.tipopadrao'
      
        'inner join tiposmovimento tm on e.tipomovimento = tm.tipomovimen' +
        'to'
      'where ei.item = i.item and e.situacao = '#39'N'#39' and tp.tipo = '#39'E'#39
      'and tp.tipopadrao in (1,2)'
      'order by e.saida desc) as DataUltVenda,'
      ''
      ''
      '(Select first 1 e.Data'
      'from Entradas e'
      
        'inner join EntradasItens ei on e.empresa = ei.empresa and e.pdv ' +
        '= ei.pdv and e.entrada = ei.entrada'
      'inner join favorecidos f on e.favorecido = f.favorecido'
      'inner join tipospadrao tp on tp.tipopadrao = e.tipopadrao'
      
        'inner join tiposmovimento tm on e.tipomovimento = tm.tipomovimen' +
        'to'
      'where ei.item = i.item and e.situacao = '#39'N'#39' and tp.tipo = '#39'E'#39
      'and tp.tipopadrao <> 102'
      'order by e.entrada desc) as DataUltCompra,'
      ''
      '(Select first 1 ei.quantidade'
      'from Entradas e'
      
        'inner join EntradasItens ei on e.empresa = ei.empresa and e.pdv ' +
        '= ei.pdv and e.entrada = ei.entrada'
      'inner join favorecidos f on e.favorecido = f.favorecido'
      'inner join tipospadrao tp on tp.tipopadrao = e.tipopadrao'
      
        'inner join tiposmovimento tm on e.tipomovimento = tm.tipomovimen' +
        'to'
      'where ei.item = i.item and e.situacao = '#39'N'#39' and tp.tipo = '#39'E'#39
      'and tp.tipopadrao <> 102'
      'order by e.entrada desc) as QtdUltCompra,'
      'coalesce(i.ipivenda,0) as AliqIPI,'
      'coalesce(i.precocompra,0) as PrecoCompra,'
      
        'coalesce(i.precocompra * (1 + (i.ipicompra / 100.00)), 0) as Pre' +
        'coCompraIPI,'
      'coalesce(pp.preco,0) as PrecoVenda,'
      'coalesce(i.custocontabil,0) as CustoContabil,'
      'coalesce(i.custoproduto,0) as CustoProduto,'
      ''
      'coalesce(pp.preco,0) - coalesce(i.precocompra,0) as MC,'
      
        '((coalesce(pp.preco,0) - coalesce(i.precocompra,0)) / coalesce(p' +
        'p.preco,1)) * 100.00 as Lucro'
      ''
      ''
      ''
      'from itens i'
      'inner join fabricantes fb on fb.fabricante = i.fabricante'
      'inner join favorecidos f on f.favorecido = i.fornecpreferencia'
      
        'inner join produtospreco PP on PP.item = I.ITEM AND PP.unidade =' +
        ' I.UNIDADE AND PP.TABELAPRECO = 0'
      ''
      'Order by i.item'
      '')
    Left = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 410
    Top = 222
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_ConsultaESTOQUECONSIGSAIDA: TBCDField
      FieldName = 'ESTOQUECONSIGSAIDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUECONSIGENTRADA: TBCDField
      FieldName = 'ESTOQUECONSIGENTRADA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
    end
    object C_ConsultaDIASPERIODO: TIntegerField
      FieldName = 'DIASPERIODO'
    end
    object C_ConsultaPEDIDOCOMPRA: TBCDField
      FieldName = 'PEDIDOCOMPRA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaicEstoqueMinimo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoqueMinimo'
    end
    object C_ConsultaicSaldoProjetado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSaldoProjetado'
    end
    object C_ConsultaicSugestaoCompra: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSugestaoCompra'
    end
    object C_ConsultaicTotalCompra: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icTotalCompra'
    end
    object C_ConsultaGIROVENDAS: TFloatField
      FieldName = 'GIROVENDAS'
    end
    object C_ConsultaDESCFAB: TStringField
      FieldName = 'DESCFAB'
      Size = 30
    end
    object C_ConsultaFORNECPREF: TStringField
      FieldName = 'FORNECPREF'
      Size = 50
    end
    object C_ConsultaPED_COMPRA_EM_ABERTO: TBCDField
      FieldName = 'PED_COMPRA_EM_ABERTO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDATAULTVENDA: TDateField
      FieldName = 'DATAULTVENDA'
    end
    object C_ConsultaDATAULTCOMPRA: TDateField
      FieldName = 'DATAULTCOMPRA'
    end
    object C_ConsultaQTDULTCOMPRA: TFloatField
      FieldName = 'QTDULTCOMPRA'
    end
    object C_ConsultaALIQIPI: TBCDField
      FieldName = 'ALIQIPI'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ConsultaCUSTOPRODUTO: TFloatField
      FieldName = 'CUSTOPRODUTO'
    end
    object C_ConsultaMC: TFloatField
      FieldName = 'MC'
    end
    object C_ConsultaLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object C_ConsultaPRECOCOMPRAIPI: TFloatField
      FieldName = 'PRECOCOMPRAIPI'
    end
  end
  inherited ppmDados: TTS_PopupMenu
    Left = 307
    Top = 130
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 308
    Top = 179
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 307
    Top = 84
  end
  inherited ppmImprimir: TTS_PopupMenu
    Left = 309
    Top = 267
  end
  inherited ppmExportacao: TTS_PopupMenu
    Left = 308
    Top = 316
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38447.8403367245
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited Q_SQLReport: TIBQuery
    Left = 570
    Top = 338
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 630
    Top = 114
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Sugest'#227'o de Compras'
    Left = 601
    Top = 200
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMOVIMENTO, DESCRICAO '
      'from TIPOSMOVIMENTO '
      'where   TIPOPADRAO in (1,2) '
      'order by DESCRICAO')
    Left = 493
    Top = 106
    object Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object Q_TiposMovimentosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object P_TiposMovimentos: TDataSetProvider
    DataSet = Q_TiposMovimentos
    Constraints = True
    Left = 493
    Top = 163
  end
  object C_TiposMovimentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOMOVIMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'P_TiposMovimentos'
    StoreDefs = True
    Left = 493
    Top = 219
    object C_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object C_TipoMovimentoDS: TDataSource
    DataSet = C_TiposMovimentos
    Left = 493
    Top = 275
  end
  object Q_Status: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from statussaidasitens'
      'order by descricao')
    Left = 706
    Top = 112
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Left = 708
    Top = 164
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 713
    Top = 213
    object C_StatusSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUSSAIDASITENS.STATUS'
      Required = True
      Size = 1
    end
    object C_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSAIDASITENS.DESCRICAO'
      Size = 30
    end
    object C_StatusORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'STATUSSAIDASITENS.ORDEM'
    end
    object C_StatusDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Origin = 'STATUSSAIDASITENS.DESCRICAO1'
      Size = 30
    end
    object C_StatusDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Origin = 'STATUSSAIDASITENS.DESCRICAO2'
      Size = 30
    end
    object C_StatusDESCRICAO3: TStringField
      FieldName = 'DESCRICAO3'
      Origin = 'STATUSSAIDASITENS.DESCRICAO3'
      Size = 30
    end
  end
  object C_StatusDS: TDataSource
    DataSet = C_Status
    Left = 716
    Top = 276
  end
end

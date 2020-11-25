inherited RptItensInventario: TRptItensInventario
  Left = 23
  Top = 68
  Width = 761
  Height = 461
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 753
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 308
      Caption = 'Relat'#243'rio de Itens de Invent'#225'rio'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 719
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 692
    end
  end
  inherited pnGrid: TPanel
    Width = 700
    Height = 396
    inherited RichEdit: TRichEdit
      Left = 1
      Top = 210
    end
    inherited pnDados: TTS_Panel
      Width = 700
      Color = 14019327
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 16
        Top = 2
        Width = 121
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
        TS_FornecedorSelecionado = 0
        TS_PossuiEstoque = False
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        OnSelecionou = PopupFiltroItensSelecionou
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 700
      Height = 374
      KeyField = 'CODIGO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'CODIGO'
              SummaryFormat = '>CODIGO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'TOTALCUSTO'
              SummaryFormat = '>TOTALCUSTO=##,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TotalCompra'
              SummaryFormat = '>TotalCompra=##,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TotalPreco'
              SummaryFormat = '>TotalPreco=##,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      HighlightColor = clWindow
      HighlightTextColor = clWindowText
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT'
        'TOTALCUSTO;sum'
        'TotalCompra;sum'
        'TotalPreco;sum')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn
        MinWidth = 20
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        Visible = False
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        Visible = False
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        Visible = False
        Width = 164
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridColumn
        Caption = 'Custo M'#233'dio'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridColumn
        Caption = 'Pre'#231'o Compra'
        Sorted = csUp
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaPRECO: TdxDBGridColumn
        Caption = 'Pre'#231'o Venda'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgConsultaColumn26: TdxDBGridColumn
        Caption = 'Total Venda'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALPRECO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '##,###,##0.00'
      end
      object dbgConsultaColumn24: TdxDBGridColumn
        Caption = 'Total Custo'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALCUSTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '##,###,##0.00'
      end
      object dbgConsultaColumn25: TdxDBGridColumn
        Caption = 'Total Compra'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALCOMPRA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '##,###,##0.00'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 396
    inherited btSair: TTS_SpeedButton
      Top = 351
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 431
    Top = 314
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 520
    Top = 315
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 398
    Top = 315
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select i.item, i.codigo, i.descricao, i.unidade, i.customedio*i.' +
        'fatorundvenda as customedio, i.estoque/i.fatorundvenda as estoqu' +
        'e, i.referencia, i.precocompra, pp.preco, (i.estoque * i.custome' +
        'dio * i.fatorundvenda) as TotalCusto, (i.estoque * i.precocompra' +
        ' * i.fatorundvenda) as TotalCompra,'
      '(i.estoque * pp.preco * i.fatorundvenda) as TotalPreco,'
      'i.taxincluso ,con_ven.descricao as conta_ven,'
      'con_cus.descricao as conta_cus, con_inv.descricao as conta_inv,'
      
        'i.comissao, i.descontomaximo, i.ultimofornecedor as IDUltFornece' +
        'dor, forn.nome as UltFornecedor,'
      'g.descricaogrupo as grupo,'
      'f.descricao as fabricante, forn.tipofavorecido'
      'From itens i'
      
        'Inner join ProdutosPreco pp on pp.item = i.item and pp.unidade =' +
        ' i.unidade and pp.tabelapreco = 0'
      'Left join contas con_ven on con_ven.conta=i.conta_venda'
      'Left join contas con_cus on con_cus.conta=i.conta_custo'
      'Left join contas con_inv on con_inv.conta=i.conta_venda'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      
        'Left Join favorecidos forn On i.ultimofornecedor = forn.favoreci' +
        'do'
      'where i.tipoitem = 1 and i.desativado='#39'N'#39)
    Left = 392
    Top = 185
  end
  inherited C_ConsultaDS: TDataSource
    Left = 467
    Top = 248
  end
  inherited P_Consulta: TDataSetProvider
    Left = 398
    Top = 248
  end
  inherited C_Consulta: TClientDataSet
    Left = 433
    Top = 246
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      DisplayLabel = 'Und.'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object C_ConsultaCONTA_VEN: TStringField
      DisplayLabel = 'Conta Venda'
      FieldName = 'CONTA_VEN'
      Size = 50
    end
    object C_ConsultaCONTA_CUS: TStringField
      DisplayLabel = 'Conta Custo'
      FieldName = 'CONTA_CUS'
      Size = 50
    end
    object C_ConsultaCONTA_INV: TStringField
      DisplayLabel = 'Conta Invent'#225'rio'
      FieldName = 'CONTA_INV'
      Size = 50
    end
    object C_ConsultaCOMISSAO: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
      DisplayFormat = '##,###,##0.00#'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOMAXIMO: TBCDField
      DisplayLabel = 'Desconto M'#225'ximo'
      FieldName = 'DESCONTOMAXIMO'
      DisplayFormat = '##,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaULTFORNECEDOR: TStringField
      DisplayLabel = #218'ltimo Fornecedor'
      FieldName = 'ULTFORNECEDOR'
      Size = 50
    end
    object C_ConsultaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object C_ConsultaTAXINCLUSO: TStringField
      DisplayLabel = 'Tax Incluso'
      FieldName = 'TAXINCLUSO'
      Size = 1
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaIDULTFORNECEDOR: TIntegerField
      FieldName = 'IDULTFORNECEDOR'
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaPRECO: TBCDField
      FieldName = 'PRECO'
      DisplayFormat = '#,###,##0.0##'
      Precision = 18
      Size = 3
    end
    object C_ConsultaTOTALCUSTO: TFloatField
      FieldName = 'TOTALCUSTO'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaTOTALCOMPRA: TFloatField
      FieldName = 'TOTALCOMPRA'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaTOTALPRECO: TFloatField
      FieldName = 'TOTALPRECO'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '#,###,##0.###'
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Itens de Invent'#225'rio'
    Left = 557
    Top = 316
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 299
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 567
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3662064699
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 624
    Top = 144
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 592
    Top = 271
  end
end

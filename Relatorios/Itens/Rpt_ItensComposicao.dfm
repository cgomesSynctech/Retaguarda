inherited RptItensComposicao: TRptItensComposicao
  Left = 5
  Top = 70
  Width = 767
  Height = 461
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 759
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 294
      Caption = 'Relat'#243'rio de SubItens de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 725
    end
  end
  inherited pnGrid: TPanel
    Width = 706
    Height = 396
    inherited pnDados: TTS_Panel
      Width = 706
      Height = 24
      Color = 14019327
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 13
        Top = 3
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
      Top = 24
      Width = 706
      Height = 372
      KeyField = 'ITEM'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'CODIGO'
              SummaryFormat = '>CODIGO=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Width = 223
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaColumn30: TdxDBGridColumn
        Caption = 'Qtde.'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn
        MinWidth = 20
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        Width = 166
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        Visible = False
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        Visible = False
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        Visible = False
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
      object dbgConsultaULTIMACOMPRA: TdxDBGridColumn
        Caption = #218'lt. Compra'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMACOMPRA'
      end
      object dbgConsultaULTQTDECOMPRA: TdxDBGridColumn
        Caption = #218'lt. Qtde'
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTQTDECOMPRA'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgConsultaTotalCusto: TdxDBGridColumn
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TotalCusto'
      end
      object dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn
        Caption = 'M'#225'ximo'
        Visible = False
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMAXIMO'
      end
      object dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn
        Caption = 'M'#237'nimo'
        Visible = False
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMINIMO'
      end
      object dbgConsultaPONTOPEDIDO: TdxDBGridMaskColumn
        Caption = 'Ponto de Pedido'
        Visible = False
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PONTOPEDIDO'
      end
      object dbgConsultaULTIMAVENDA: TdxDBGridColumn
        Caption = #218'lt. Venda'
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMAVENDA'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = #218'lt.Pre'#231'o Compra'
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaColumn29: TdxDBGridColumn
        Caption = 'Produto'
        Sorted = csUp
        Visible = False
        Width = 286
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCPRODUTOMESTRE'
        GroupIndex = 0
      end
      object dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn
        Caption = 'Desc. Complementar'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPLEMENTAR'
      end
      object dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn
        Caption = 'Desc. T'#233'cnica'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOTECNICA'
      end
      object dbgConsultaCST: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CST'
      end
      object dbgConsultaREDUCAOCST: TdxDBGridMaskColumn
        Caption = 'Red.CST'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCAOCST'
      end
      object dbgConsultaIPICOMPRA: TdxDBGridMaskColumn
        Caption = 'IPI Compra'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPICOMPRA'
      end
      object dbgConsultaIPIVENDA: TdxDBGridMaskColumn
        Caption = 'IPI Venda'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPIVENDA'
      end
      object dbgConsultaPESOBRUTO: TdxDBGridMaskColumn
        Caption = 'Peso Bruto'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOBRUTO'
      end
      object dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Peso L'#237'quido'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOLIQUIDO'
      end
      object dbgConsultaALIQICMS: TdxDBGridMaskColumn
        Caption = 'Aliq.ICMS'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
      end
      object dbgConsultaSITUACAOECF: TdxDBGridMaskColumn
        Caption = 'Tipo Tributa'#231#227'o'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object dbgConsultaTVA: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
      end
      object dbgConsultaTVAFONTE: TdxDBGridMaskColumn
        Caption = 'TVA Fonte'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVAFONTE'
      end
      object dbgConsultaCLASFISCAL: TdxDBGridMaskColumn
        Caption = 'Classif.Fiscal'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
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
      
        'Select i.item,i.codigo, i.descricao, itf.unidade, i.customedio*i' +
        '.fatorundvenda as customedio, i.estoque/i.fatorundvenda as estoq' +
        'ue, i.referencia, '
      'i.taxincluso ,con_ven.descricao as conta_ven,'
      'con_cus.descricao as conta_cus, con_inv.descricao as conta_inv,'
      
        'i.comissao, i.descontomaximo, i.ultimofornecedor as IDUltFornece' +
        'dor, forn.nome as UltFornecedor, '
      'ti.descricao as tipoitem,  g.descricaogrupo as grupo,'
      
        'f.descricao as fabricante, forn.tipofavorecido, i.ultqtdecompra/' +
        'i.fatorundcompra as ultqtdecompra, i.ultimacompra, i.ultimavenda' +
        ', i.qtdeminimo/i.fatorundvenda as qtdeminimo, i.qtdemaximo/i.fat' +
        'orundvenda as qtdemaximo, i.pontopedido/i.fatorundvenda as ponto' +
        'pedido,'
      'i.precocompra*i.fatorundvenda as precocompra,'
      
        'i2.descricao as DescProdutoMestre, itf.quantidade, i.descricaoco' +
        'mplementar, i.descricaotecnica, i.cst, i.reducaocst, i.ipicompra' +
        ', i.ipivenda, i.pesobruto, i.pesoliquido, i.aliqicms, i.situacao' +
        'ecf, i.tva, i.tvafonte, i.clasfiscal'
      'From itens i'
      'inner join ItensFilhos itf on i.item = itf.subitem'
      'inner join Itens i2 on itf.item = i2.item'
      'Left join contas con_ven on con_ven.conta=i.conta_venda'
      'Left join contas con_cus on con_cus.conta=i.conta_custo'
      'Left join contas con_inv on con_inv.conta=i.conta_venda'
      'Left Join tipositens ti On i.tipoitem=ti.tipoitem'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      
        'Left Join favorecidos forn On i.ultimofornecedor = forn.favoreci' +
        'do'
      '')
    Left = 364
    Top = 248
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
    Top = 248
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
      DisplayFormat = '##,###,##0.00#'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOMAXIMO: TBCDField
      DisplayLabel = 'Desconto M'#225'ximo'
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'ITENS.DESCONTOMAXIMO'
      DisplayFormat = '##,###,##0.00'
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
    object C_ConsultaTotalCusto: TFloatField
      DisplayLabel = 'Total Custo'
      FieldKind = fkInternalCalc
      FieldName = 'TotalCusto'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaIDULTFORNECEDOR: TIntegerField
      FieldName = 'IDULTFORNECEDOR'
      Origin = 'ITENS.IDULTFORNECEDOR'
    end
    object C_ConsultaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ITENS.ULTIMACOMPRA'
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      DisplayFormat = '##,###,##0.###'
    end
    object C_ConsultaESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '##,###,##0.###'
    end
    object C_ConsultaULTQTDECOMPRA: TFloatField
      FieldName = 'ULTQTDECOMPRA'
      DisplayFormat = '##,###,##0.###'
    end
    object C_ConsultaULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
    end
    object C_ConsultaQTDEMINIMO: TFloatField
      FieldName = 'QTDEMINIMO'
      DisplayFormat = '##,###,##0.###'
    end
    object C_ConsultaQTDEMAXIMO: TFloatField
      FieldName = 'QTDEMAXIMO'
      DisplayFormat = '##,###,##0.###'
    end
    object C_ConsultaPONTOPEDIDO: TFloatField
      FieldName = 'PONTOPEDIDO'
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaDESCPRODUTOMESTRE: TStringField
      FieldName = 'DESCPRODUTOMESTRE'
      Size = 50
    end
    object C_ConsultaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
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
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de SubItens de Itens'
    Left = 557
    Top = 316
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 299
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 357
    Top = 134
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
    Left = 608
    Top = 136
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

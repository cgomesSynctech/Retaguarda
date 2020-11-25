inherited RptItens: TRptItens
  Left = 267
  Top = 166
  Width = 767
  Height = 462
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 751
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 172
      Caption = 'Listagem de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 725
    end
    inherited lbTemplate: TTS_Label
      Left = 417
    end
  end
  inherited pnGrid: TPanel
    Width = 698
    Height = 386
    inherited pnDados: TTS_Panel
      Width = 698
      Height = 24
      Color = 14019327
      object FiltroItens: TTS_PopupFiltrarItens
        Left = 8
        Top = 3
        Width = 137
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
        OnSelecionou = FiltroItensSelecionou
        Height = 19
      end
      object chkNCMDivergente: TTS_CheckBox
        Left = 450
        Top = 2
        Width = 171
        Hint = 
          'Ao marcar essa op'#231#227'o ser'#227'o exibidos os itens cujo o NCM informad' +
          'o '#13#10'no cadastro do item n'#227'o exista na tabela de dados IBPT do si' +
          'stema.'
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 1
        Anchors = [akTop, akRight]
        Alignment = taLeftJustify
        Caption = 'Itens com NCM divergente'
        StyleController = DMProjeto.esItens
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 21
        StoredValues = 1
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 698
      Height = 343
      KeyField = 'CODIGO'
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
      TS_AnotherColor = 15461355
      TS_HabilitarTotalGeral = svFooterSummary
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;count')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 93
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
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn
        HeaderAlignment = taCenter
        MinWidth = 20
        Visible = False
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 195
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
      object dbgConsultaULTIMAVENDA: TdxDBGridDateColumn
        Caption = #218'lt. Venda'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMAVENDA'
      end
      object dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn
        Caption = 'Desc. Complementar'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPLEMENTAR'
      end
      object dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn
        Caption = 'Desc. T'#233'cnica'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOTECNICA'
      end
      object dbgConsultaCST: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CST'
      end
      object dbgConsultaREDUCAOCST: TdxDBGridMaskColumn
        Caption = 'Red.CST'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCAOCST'
      end
      object dbgConsultaIPICOMPRA: TdxDBGridMaskColumn
        Caption = 'IPI Compra'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPICOMPRA'
      end
      object dbgConsultaIPIVENDA: TdxDBGridMaskColumn
        Caption = 'IPI Venda'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPIVENDA'
      end
      object dbgConsultaPESOBRUTO: TdxDBGridMaskColumn
        Caption = 'Peso Bruto'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOBRUTO'
      end
      object dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Peso L'#237'quido'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOLIQUIDO'
      end
      object dbgConsultaALIQICMS: TdxDBGridMaskColumn
        Caption = 'Aliq. ICMS'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
      end
      object dbgConsultaSITUACAOECF: TdxDBGridMaskColumn
        Caption = 'Tipo Tributa'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object dbgConsultaTVA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
      end
      object dbgConsultaTVAFONTE: TdxDBGridMaskColumn
        Caption = 'TVA Fonte'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVAFONTE'
      end
      object dbgConsultaCLASFISCAL: TdxDBGridMaskColumn
        Caption = 'Classific.Fiscal'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
      end
      object dbgConsultaColumn34: TdxDBGridMaskColumn
        Caption = 'Consignado Entrada'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGENTRADA'
      end
      object dbgConsultaColumn35: TdxDBGridMaskColumn
        Caption = 'Consignado Sa'#237'da'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGSAIDA'
      end
      object dbgConsultaTRIBUTACAOFEDERAL: TdxDBGridColumn
        Caption = 'Trib. Federal'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRIBUTACAOFEDERAL'
      end
      object dbgConsultaNCM: TdxDBGridMaskColumn
        Caption = 'NCM'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 367
      Width = 698
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 386
    inherited btSair: TTS_SpeedButton
      Top = 341
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
      
        'Select i.item,i.codigo, i.descricao, i.unidade, i.estoque/i.fato' +
        'rundvenda as Estoque, i.referencia, '
      
        'i.taxincluso ,con_ven.descricao as conta_ven, con_cus.descricao ' +
        'as conta_cus, con_inv.descricao as conta_inv,'
      
        'i.comissao, i.descontomaximo, i.ultimofornecedor as IDUltFornece' +
        'dor, forn.nome as UltFornecedor,'
      'ti.descricao as tipoitem,  g.descricaogrupo as grupo,'
      
        'f.descricao as fabricante, forn.tipofavorecido, i.ultimavenda, i' +
        '.descricaocomplementar, i.descricaotecnica, i.cst, i.reducaocst,' +
        ' i.ipicompra, i.ipivenda, i.pesobruto, i.pesoliquido, i.aliqicms' +
        ', i.situacaoecf, i.tva, i.tvafonte, i.clasfiscal, i.estoqueconsi' +
        'gentrada, i.estoqueconsigsaida, tf.descricao as TributacaoFedera' +
        'l'
      'From itens i'
      'Left join contas con_ven on con_ven.conta=i.conta_venda'
      'Left join contas con_cus on con_cus.conta=i.conta_custo'
      'Left join contas con_inv on con_inv.conta=i.conta_venda'
      'Left Join tipositens ti On i.tipoitem=ti.tipoitem'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      
        'Left Join favorecidos forn On i.ultimofornecedor = forn.favoreci' +
        'do'
      
        'Left Join tipotributacaofederal tf on tf.idtribfederal = i.idtri' +
        'bfederal'
      'Where i.Desativado='#39'N'#39)
    Left = 368
    Top = 108
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
    object C_ConsultaTIPOITEM: TStringField
      DisplayLabel = 'Tipo do Item'
      FieldName = 'TIPOITEM'
      Size = 30
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
      DisplayLabel = 'Desconto Max.'
      FieldName = 'DESCONTOMAXIMO'
      DisplayFormat = '##,###,##0.00#'
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
    object C_ConsultaESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '##,###,##0.###'
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
    object C_ConsultaESTOQUECONSIGENTRADA: TBCDField
      FieldName = 'ESTOQUECONSIGENTRADA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUECONSIGSAIDA: TBCDField
      FieldName = 'ESTOQUECONSIGSAIDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaTRIBUTACAOFEDERAL: TStringField
      FieldName = 'TRIBUTACAOFEDERAL'
      Size = 30
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 566
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3659125231
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 568
    Top = 96
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Listagem de Itens'
    Left = 557
    Top = 316
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

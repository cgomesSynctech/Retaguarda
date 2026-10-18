inherited RptItensEstoqueFiscal: TRptItensEstoqueFiscal
  Left = 169
  Top = 80
  Width = 1063
  Height = 574
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1047
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 285
      Caption = 'Relat'#243'rio de Estoque de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1081
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 1031
    end
  end
  inherited pnGrid: TPanel
    Width = 994
    Height = 498
    inherited pnDados: TTS_Panel
      Width = 994
      Height = 24
      Color = 14019327
      object lblAlmox: TTS_Label
        Left = 153
        Top = 5
        Width = 79
        Caption = 'Almoxarifado:'
        Visible = False
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
      object cmbAlmox: TTS_LookupComboBox
        Left = 234
        Top = 3
        Width = 126
        TabOrder = 1
        Visible = False
        StyleController = DMProjeto.esItens
        OnChange = cmbAlmoxChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'ALMOXARIFADO'
        ListSource = C_AlmoxarifadosDS
        LookupKeyValue = Null
        Height = 19
      end
      object cmbIndex: TTS_LookupComboBox
        Left = 603
        Top = 3
        Width = 100
        TabOrder = 2
        StyleController = DMProjeto.esItens
        OnSelectionChange = cmbIndexSelectionChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'INDEXADOR'
        ListSource = C_IndexadoresDS
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 994
      Height = 455
      KeyField = 'ITEM'
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
              SummaryField = 'SUBCOMPRA'
              SummaryFormat = '>SUBCOMPRA=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ESTOQUE'
              SummaryFormat = '>ESTOQUE=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icSubVendaIdx'
              SummaryFormat = '>icSubVendaIdx=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'SUBCUSTOMANUAL'
              SummaryFormat = '>SUBCUSTOMANUAL=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT'
        'SUBVENDA;SUM;U'
        'SUBCOMPRA;SUM;U'
        'ESTOQUE;SUM;U'
        'icSubVendaIdx;SUM;U'
        'SUBCUSTOMANUAL;SUM;U')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaLocalizacao: TdxDBGridColumn
        Caption = 'Localiza'#231#227'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALIZACAO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        MinWidth = 20
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaEstoqueAlmox: TdxDBGridColumn
        Caption = 'Estoque Almox.'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEALMOX'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 168
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        Caption = 'Conta Venda'
        HeaderAlignment = taCenter
        Visible = False
        Width = 195
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        Caption = 'Conta Custo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 195
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        Caption = 'Conta Inv.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 195
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridMaskColumn
        Caption = 'Comiss'#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn
        Caption = 'Desconto M'#225'x.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        Caption = #218'lt. Fornecedor'
        HeaderAlignment = taCenter
        Visible = False
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
      object dbgConsultaULTIMACOMPRA: TdxDBGridColumn
        Caption = #218'lt. Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMACOMPRA'
      end
      object dbgConsultaULTQTDECOMPRA: TdxDBGridColumn
        Caption = #218'lt. Qtde'
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTQTDECOMPRA'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
        SummaryFooterFormat = '##,###,##0.###'
      end
      object dbgConsultaTotalCusto: TdxDBGridColumn
        Caption = 'Total Custo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TotalCusto'
      end
      object dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn
        Caption = 'M'#225'ximo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMAXIMO'
      end
      object dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn
        Caption = 'M'#237'nimo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMINIMO'
      end
      object dbgConsultaPONTOPEDIDO: TdxDBGridMaskColumn
        Caption = 'Ponto de Pedido'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PONTOPEDIDO'
      end
      object dbgConsultaULTIMAVENDA: TdxDBGridColumn
        Caption = #218'lt. Venda'
        HeaderAlignment = taCenter
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMAVENDA'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = #218'lt.Pre'#231'o Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn
        Caption = 'Desc. Complementar'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1456
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPLEMENTAR'
      end
      object dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn
        Caption = 'Desc. T'#233'cnica'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1456
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOTECNICA'
      end
      object dbgConsultaCST: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CST'
      end
      object dbgConsultaREDUCAOCST: TdxDBGridMaskColumn
        Caption = 'Red.CST'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCAOCST'
      end
      object dbgConsultaIPICOMPRA: TdxDBGridMaskColumn
        Caption = 'IPI Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPICOMPRA'
      end
      object dbgConsultaIPIVENDA: TdxDBGridMaskColumn
        Caption = 'IPI Venda'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPIVENDA'
      end
      object dbgConsultaPESOBRUTO: TdxDBGridMaskColumn
        Caption = 'Peso Bruto'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOBRUTO'
      end
      object dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Peso L'#237'quido'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOLIQUIDO'
      end
      object dbgConsultaALIQICMS: TdxDBGridMaskColumn
        Caption = 'Al'#237'q.ICMS'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
      end
      object dbgConsultaSITUACAOECF: TdxDBGridMaskColumn
        Caption = 'Tipo Tributa'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object dbgConsultaTVA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
      end
      object dbgConsultaTVAFONTE: TdxDBGridMaskColumn
        Caption = 'TVA Fonte'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVAFONTE'
      end
      object dbgConsultaCLASFISCAL: TdxDBGridMaskColumn
        Caption = 'Classif.Fiscal'
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
      end
      object dbgConsultaColumn43: TdxDBGridMaskColumn
        Caption = 'Consignado Entrada'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGENTRADA'
      end
      object dbgConsultaColumn44: TdxDBGridMaskColumn
        Caption = 'Consignado Sa'#237'da'
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGSAIDA'
      end
      object dbgConsultaSubCompra: TdxDBGridColumn
        Caption = 'Sub. Compra.'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBCOMPRA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaicPreco: TdxDBGridColumn
        Caption = 'Prc. Venda'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPreco'
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaSubVenda: TdxDBGridColumn
        Caption = 'SubVenda'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSubVenda'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaicPrecoIndexado: TdxDBGridColumn
        Caption = 'Pre'#231'o Indexado'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPrecoIndexado'
      end
      object dbgConsultaicSubVendaIdx: TdxDBGridColumn
        Caption = 'Sub.Venda Index.'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSubVendaIdx'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCustoManual: TdxDBGridColumn
        Caption = 'C. Manual'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMANUAL'
      end
      object dbgConsultaSUBCUSTOMANUAL: TdxDBGridColumn
        Caption = 'Sub. C. Manual'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBCUSTOMANUAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaDifierenca: TdxDBGridColumn
        Caption = 'Diferen'#231'a'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIFERENCA'
      end
      object dbgConsultaESTOQUEFISCAL: TdxDBGridColumn
        Caption = 'Estoque Fiscal'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEFISCAL'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 479
      Width = 994
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 498
    inherited btSair: TTS_SpeedButton
      Top = 453
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
      
        'Select I.ITEM,I.CODIGO, I.DESCRICAO, I.UNIDADE, I.CUSTOMEDIO AS ' +
        'CUSTOMEDIO, I.ESTOQUE, I.REFERENCIA,  '
      
        'I.TAXINCLUSO ,CON_VEN.DESCRICAO AS CONTA_VEN,  CON_CUS.DESCRICAO' +
        ' AS CONTA_CUS, CON_INV.DESCRICAO AS CONTA_INV,  I.COMISSAO, '
      
        'I.DESCONTOMAXIMO, I.ULTIMOFORNECEDOR AS IDULTFORNECEDOR, FORN.NO' +
        'ME AS ULTFORNECEDOR,  TI.DESCRICAO AS TIPOITEM,  G.DESCRICAOGRUP' +
        'O AS GRUPO,  '
      
        'F.DESCRICAO AS FABRICANTE, FORN.TIPOFAVORECIDO, I.ULTQTDECOMPRA ' +
        'AS ULTQTDECOMPRA, I.ULTIMACOMPRA, '
      
        'i.ultimavenda, i.qtdeminimo as qtdeminimo, i.qtdemaximo as qtdem' +
        'aximo, i.pontopedido as pontopedido, '
      
        'i.precocompra as precocompra, ia.estoquealmox as EstoqueAlmox, i' +
        '.descricaocomplementar, i.descricaotecnica, i.cst, i.reducaocst,' +
        ' '
      
        'i.ipicompra, i.ipivenda, i.pesobruto, i.pesoliquido, i.aliqicms,' +
        ' i.situacaoecf,i.tva, i.tvafonte, i.clasfiscal, i.estoqueconsige' +
        'ntrada, i.estoqueconsigsaida,'
      
        'pp.preco as PrcVenda,(i.Precocompra * (i.estoque)) as SubCompra,' +
        ' i.indexador, I.CUSTOMANUAL, (I.CUSTOMANUAL * I.ESTOQUE) as  Sub' +
        'CustoManual,'
      
        'l.descricao as Localizacao, (i.estoque - i.estoquefiscal) as Dif' +
        'erenca, i.estoquefiscal'
      'From itens i'
      'Left join contas con_ven on con_ven.conta=i.conta_venda'
      'Left join contas con_cus on con_cus.conta=i.conta_custo'
      'Left join contas con_inv on con_inv.conta=i.conta_venda'
      'Left Join tipositens ti On i.tipoitem=ti.tipoitem'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      
        'Left Join favorecidos forn On i.ultimofornecedor = forn.favoreci' +
        'do'
      'left join ItensAlmox ia on i.item = ia.item'
      
        'left join Produtospreco pp on pp.item = i.item and pp.tabelaprec' +
        'o = 0'
      'left join localizacoes l on i.localizacao = l.localizacao')
    Left = 400
    Top = 138
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
    OnCalcFields = C_ConsultaCalcFields
    Left = 401
    Top = 192
    object C_ConsultaicSubVenda: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icSubVenda'
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ITENS.CUSTOMEDIO'
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_ConsultaTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Origin = 'ITENS.TAXINCLUSO'
      Size = 1
    end
    object C_ConsultaCONTA_VEN: TStringField
      FieldName = 'CONTA_VEN'
      Origin = 'CONTAS.CONTA_VEN'
      Size = 50
    end
    object C_ConsultaCONTA_CUS: TStringField
      FieldName = 'CONTA_CUS'
      Origin = 'CONTAS.CONTA_CUS'
      Size = 50
    end
    object C_ConsultaCONTA_INV: TStringField
      FieldName = 'CONTA_INV'
      Origin = 'CONTAS.CONTA_INV'
      Size = 50
    end
    object C_ConsultaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'ITENS.DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIDULTFORNECEDOR: TIntegerField
      FieldName = 'IDULTFORNECEDOR'
      Origin = 'ITENS.IDULTFORNECEDOR'
    end
    object C_ConsultaULTFORNECEDOR: TStringField
      FieldName = 'ULTFORNECEDOR'
      Origin = 'FAVORECIDOS.ULTFORNECEDOR'
      Size = 50
    end
    object C_ConsultaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Origin = 'TIPOSITENS.TIPOITEM'
      Size = 30
    end
    object C_ConsultaGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaULTQTDECOMPRA: TBCDField
      FieldName = 'ULTQTDECOMPRA'
      Origin = 'ITENS.ULTQTDECOMPRA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ITENS.ULTIMACOMPRA'
    end
    object C_ConsultaULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = 'ITENS.ULTIMAVENDA'
    end
    object C_ConsultaQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Origin = 'ITENS.QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Origin = 'ITENS.QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Origin = 'ITENS.PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'ITENS.PRECOCOMPRA'
    end
    object C_ConsultaESTOQUEALMOX: TBCDField
      FieldName = 'ESTOQUEALMOX'
      Origin = 'ITENSALMOX.ESTOQUEALMOX'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Origin = 'ITENS.DESCRICAOCOMPLEMENTAR'
      Size = 255
    end
    object C_ConsultaDESCRICAOTECNICA: TStringField
      FieldName = 'DESCRICAOTECNICA'
      Origin = 'ITENS.DESCRICAOTECNICA'
      Size = 255
    end
    object C_ConsultaCST: TStringField
      FieldName = 'CST'
      Origin = 'ITENS.CST'
      Size = 2
    end
    object C_ConsultaREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'ITENS.REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'ITENS.IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      Origin = 'ITENS.IPIVENDA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'ITENS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'ITENS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITENS.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'ITENS.SITUACAOECF'
      Size = 1
    end
    object C_ConsultaTVA: TBCDField
      FieldName = 'TVA'
      Origin = 'ITENS.TVA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      Origin = 'ITENS.TVAFONTE'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Origin = 'ITENS.CLASFISCAL'
      Size = 15
    end
    object C_ConsultaESTOQUECONSIGENTRADA: TBCDField
      FieldName = 'ESTOQUECONSIGENTRADA'
      Origin = 'ITENS.ESTOQUECONSIGENTRADA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUECONSIGSAIDA: TBCDField
      FieldName = 'ESTOQUECONSIGSAIDA'
      Origin = 'ITENS.ESTOQUECONSIGSAIDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRCVENDA: TBCDField
      FieldName = 'PRCVENDA'
      Origin = 'PRODUTOSPRECO.PRCVENDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSUBCOMPRA: TFloatField
      FieldName = 'SUBCOMPRA'
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'ITENS.INDEXADOR'
    end
    object C_ConsultaTotalCusto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'TotalCusto'
    end
    object C_ConsultaicPreco: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPreco'
    end
    object C_ConsultaicPrecoIndexado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoIndexado'
    end
    object C_ConsultaicSubVendaIdx: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubVendaIdx'
    end
    object C_ConsultaCUSTOMANUAL: TBCDField
      FieldName = 'CUSTOMANUAL'
      Origin = 'ITENS.CUSTOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSUBCUSTOMANUAL: TFloatField
      FieldName = 'SUBCUSTOMANUAL'
    end
    object C_ConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACOES.LOCALIZACAO'
      Size = 15
    end
    object C_ConsultaDIFERENCA: TBCDField
      FieldName = 'DIFERENCA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUEFISCAL: TBCDField
      FieldName = 'ESTOQUEFISCAL'
      Precision = 18
      Size = 3
    end
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
    Left = 608
    Top = 136
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Estoque de Itens'
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
  object Q_Almoxarifados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from almoxarifados')
    Left = 728
    Top = 114
  end
  object C_Almoxarifados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifados'
    Left = 729
    Top = 169
    object C_AlmoxarifadosALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Required = True
    end
    object C_AlmoxarifadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_Almoxarifados: TDataSetProvider
    DataSet = Q_Almoxarifados
    Constraints = True
    Left = 730
    Top = 228
  end
  object C_AlmoxarifadosDS: TDataSource
    DataSet = C_Almoxarifados
    Left = 734
    Top = 284
  end
  object C_IndexadoresDS: TDataSource
    DataSet = C_Indexadores
    Left = 404
    Top = 90
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
    Left = 480
    Top = 88
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 480
    Top = 136
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 480
    Top = 184
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

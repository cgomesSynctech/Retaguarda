inherited RptListaPrecos: TRptListaPrecos
  Left = 238
  Top = 148
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 173
      Caption = 'Rela'#231#227'o de Pre'#231'os'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 502
        Top = 5
        Width = 53
        Caption = 'Indexador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 9
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
      object cmbIndex: TTS_LookupComboBox
        Left = 559
        Top = 3
        Width = 100
        TabOrder = 1
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
      KeyField = 'ITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'ITEM'
              SummaryFormat = '>CODIGO=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
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
        SummaryFooterType = cstCount
        SummaryFooterField = 'ITEM'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 248
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
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o de Compra'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaPRECO: TdxDBGridCurrencyColumn
        Caption = 'Pre'#231'o de Custo'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 166
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn
        Caption = 'C'#243'digo Barras'
        HeaderAlignment = taCenter
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOBARRAS'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaFATORUNDVENDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORUNDVENDA'
      end
      object dbgConsultaPERCENTUAL: TdxDBGridCurrencyColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUAL'
        Nullable = False
      end
      object dbgConsultaPERCUND: TdxDBGridCurrencyColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCUND'
        Nullable = False
      end
      object dbgConsultaPRECOMANUND: TdxDBGridCurrencyColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOMANUND'
        Nullable = False
      end
      object dbgConsultaFATORITEMUND: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORITEMUND'
      end
      object dbgConsultaPERCENTUALMINIMO: TdxDBGridCurrencyColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMINIMO'
        Nullable = False
      end
      object dbgConsultaUNDVENDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNDVENDA'
      end
      object dbgConsultaPRECOPROMOCAO: TdxDBGridCurrencyColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOPROMOCAO'
        Nullable = False
      end
      object dbgConsultaicPrecoMinimo: TdxDBGridColumn
        Caption = 'Pre'#231'o M'#237'nimo'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPrecoMinimo'
      end
      object dbgConsultaicPreco: TdxDBGridColumn
        Caption = 'Pre'#231'o de Venda'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPreco'
      end
      object dbgConsultaFabricante: TdxDBGridColumn
        Caption = 'Fabricante'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select i.item, i.codigo, i.descricao, iu.unidade, i.precocompra,'
      
        'p.preco, g.descricaogrupo, i.codigobarras, i.referencia, i.fator' +
        'undvenda,'
      
        'i.percentual, iu.percentual as percund, iu.precomanual as precom' +
        'anund,'
      
        'iu.fator as FatorItemUnd, iu.PercentualMinimo, i.unidade as undv' +
        'enda,'
      
        'p.precopromocao, i.descontomaximo, g.descontomaximo as descontom' +
        'aximogrupo, i.indexador, f.descricao as Fabricante'
      'from itens i'
      
        'inner join produtospreco p on p.item = i.item and p.unidade = i.' +
        'unidade and p.tabelapreco = 0'
      
        'inner join itensunidades iu on iu.item = i.item and iu.unidade =' +
        ' i.unidade'
      'left join grupos g on g.grupo = i.grupo'
      'left join fabricantes f on f.fabricante = i.fabricante')
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
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
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_ConsultaPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 13
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
    end
    object C_ConsultaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPERCUND: TBCDField
      FieldName = 'PERCUND'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRECOMANUND: TBCDField
      FieldName = 'PRECOMANUND'
      Precision = 18
      Size = 3
    end
    object C_ConsultaFATORITEMUND: TFloatField
      FieldName = 'FATORITEMUND'
    end
    object C_ConsultaPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaUNDVENDA: TStringField
      FieldName = 'UNDVENDA'
      Size = 6
    end
    object C_ConsultaPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOMAXIMOGRUPO: TBCDField
      FieldName = 'DESCONTOMAXIMOGRUPO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaicPreco: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPreco'
    end
    object C_ConsultaicPrecoMinimo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoMinimo'
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38336.3388907523
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 616
    Top = 0
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Rela'#231#227'o de Pre'#231'os'
  end
  object C_IndexadoresDS: TDataSource
    DataSet = C_Indexadores
    Left = 560
    Top = 96
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
    Left = 624
    Top = 96
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 624
    Top = 144
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 624
    Top = 192
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 544
    Top = 328
  end
end

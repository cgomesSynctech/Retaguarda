inherited RptItensEstoque: TRptItensEstoque
  Top = 71
  Width = 737
  Height = 460
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 729
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 285
      Caption = 'Relat'#243'rio de Estoque de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 695
    end
    inherited lbTemplate: TLabel
      Left = 679
    end
  end
  inherited pnGrid: TPanel
    Width = 678
    Height = 398
    inherited pnDados: TTS_Panel
      Width = 678
      Height = 26
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 12
        Top = 6
        Width = 65
        Caption = 'Tipo do Item:'
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object btFiltro: TTS_SpeedButton
        Left = 574
        Top = 2
        Width = 97
        Height = 23
        Hint = 'Filtar por grupo, fornecedor ou fabricante'
        Anchors = [akRight]
        Caption = '&Filtro de Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555500005577777777777777777500005000000000000000007500005088
          80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
          0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
          0F44F0750000508880FF0078088880750000508180F400007844807500005088
          80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
          0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
          00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
          55555555550BFFBB0000}
        ParentFont = False
        OnClick = btFiltroClick
        RepeatedClick = False
        Border = True
      end
      object lkTipoItem: TTS_LookupComboBox
        Left = 80
        Top = 3
        Width = 169
        TabOrder = 0
        Visible = False
        StyleController = DMProjeto.esItens
        OnChange = lkTipoItemChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOITEM'
        ListSource = C_TiposItemDS
        LookupKeyValue = Null
        Height = 21
      end
      object chkTodos: TTS_CheckBox
        Left = 251
        Top = 4
        Width = 93
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 1
        Visible = False
        Caption = 'Mostrar Todos'
        StyleController = DMProjeto.esItens
        OnChange = chkTodosChange
        DisableEdit = False
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 26
      Width = 678
      Height = 372
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
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 58
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
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 210
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn
        MinWidth = 20
        Visible = False
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        Visible = False
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        Visible = False
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        Visible = False
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridMaskColumn
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaTotalCusto: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TotalCusto'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 398
    inherited btSair: TTS_SpeedButton
      Top = 349
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
      
        'Select i.item,i.codigo, i.descricao, i.unidade, i.customedio, i.' +
        'estoque, i.referencia, '
      'i.taxincluso ,con_ven.descricao as conta_ven,'
      'con_cus.descricao as conta_cus, con_inv.descricao as conta_inv,'
      
        'i.comissao, i.descontomaximo, i.ultimofornecedor as IDUltFornece' +
        'dor, forn.nome as UltFornecedor,'
      'ti.descricao as tipoitem,  g.descricaogrupo as grupo,'
      'f.descricao as fabricante, forn.tipofavorecido'
      'From itens i'
      'Left join contas con_ven on con_ven.conta=i.conta_venda'
      'Left join contas con_cus on con_cus.conta=i.conta_custo'
      'Left join contas con_inv on con_inv.conta=i.conta_venda'
      'Left Join tipositens ti On i.tipoitem=ti.tipoitem'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      
        'Left Join favorecidos forn On i.ultimofornecedor = forn.favoreci' +
        'do'
      'where i.desativado='#39'N'#39)
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
    object C_ConsultaESTOQUE: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      DisplayFormat = '##,###,##0.###'
      Precision = 18
      Size = 3
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
    object C_ConsultaTotalCusto: TFloatField
      DisplayLabel = 'Total Custo'
      FieldKind = fkInternalCalc
      FieldName = 'TotalCusto'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaIDULTFORNECEDOR: TIntegerField
      FieldName = 'IDULTFORNECEDOR'
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Estoque de Itens'
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
    PreviewOptions.PreviewBoundsRect = {0000000000000000200300003A020000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3662064699
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object C_TiposItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TiposItemProvider'
    Left = 435
    Top = 168
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 592
    Top = 271
  end
  object C_TiposItemDS: TDataSource
    DataSet = C_TiposItem
    Left = 467
    Top = 168
  end
  object Q_TiposItem: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From TIPOSITENS'
      'Order By TipoItem')
    Left = 372
    Top = 168
  end
  object Q_TiposItemProvider: TDataSetProvider
    DataSet = Q_TiposItem
    Constraints = True
    Left = 404
    Top = 168
  end
end

inherited RptTransferenciasAlmox: TRptTransferenciasAlmox
  Left = -28
  Top = 95
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 311
      Caption = 'Transfer'#234'ncias de Almoxarifados'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 8
        Top = 4
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 133
        Top = 4
        Width = 16
        Alignment = taCenter
        Caption = #224
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 341
        Top = 4
        Width = 79
        Caption = 'Almox. Origem:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 512
        Top = 4
        Width = 79
        Caption = 'Almox. Destino:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataIni: TTS_DateTimePicker
        Left = 55
        Top = 2
        Width = 79
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esItens
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Date = -700000
        DateOnError = deToday
        UseEditMask = True
        OnDateChange = edDataIniDateChange
        Height = 19
        StoredValues = 4
      end
      object edDataFim: TTS_DateTimePicker
        Left = 150
        Top = 2
        Width = 79
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esItens
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Date = -700000
        DateOnError = deToday
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object popupFiltroItens: TTS_PopupFiltrarItens
        Left = 238
        Top = 2
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
        TabOrder = 2
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
        Height = 19
      end
      object cmbAlmoxOrigem: TTS_LookupComboBox
        Left = 422
        Top = 2
        Width = 89
        TabOrder = 3
        StyleController = DMProjeto.esItens
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'ALMOXARIFADO'
        ListSource = C_AlmoxarifadosDS
        LookupKeyValue = Null
        Height = 19
      end
      object cmbAlmoxDestino: TTS_LookupComboBox
        Left = 593
        Top = 2
        Width = 89
        TabOrder = 4
        StyleController = DMProjeto.esItens
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'ALMOXARIFADO'
        ListSource = C_AlmoxarifadosDS
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'TRANSFALMOXITEM'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      object dbgConsultaTRANSFALMOX: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRANSFALMOX'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaUSUARIO: TdxDBGridMaskColumn
        Caption = 'Usu'#225'rio'
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOGINNAME'
      end
      object dbgConsultaTRANSFALMOXITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRANSFALMOXITEM'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaNUMEROLOTE: TdxDBGridMaskColumn
        Caption = 'N'#186' Lote'
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROLOTE'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        Width = 232
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Quantidade'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        Nullable = False
      end
      object dbgConsultaDESCALMOXO: TdxDBGridMaskColumn
        Caption = 'Almox. Origem'
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCALMOXO'
      end
      object dbgConsultaDESCALMOXD: TdxDBGridMaskColumn
        Caption = 'Almox. Destino'
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCALMOXD'
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
      
        'select ta.transfalmox, tai.transfalmoxitem, ta.data,ta.numero, t' +
        'ai.quantidade, tai.unidade, tai.item, tai.numerolote, i.codigo, ' +
        'i.descricao, i.referencia, a1.descricao as DescAlmoxO, a2.descri' +
        'cao as DescAlmoxD, u.loginname'
      
        'from transfalmoxs ta inner join transfalmoxitens tai on ta.trans' +
        'falmox = tai.transfalmox'
      'inner join itens i on tai.item = i.item'
      
        'inner join almoxarifados a1 on tai.almox_origem = a1.almoxarifad' +
        'o'
      
        'inner join almoxarifados a2 on tai.almox_destino = a2.almoxarifa' +
        'do'
      'left join usuarios u on ta.usuario = u.usuario '
      
        'where ta.data >= :dDataI and ta.data <= :dDataF and ta.situacao ' +
        '= '#39'N'#39
      '')
    Top = 111
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dDataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dDataF'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Top = 215
    object C_ConsultaTRANSFALMOX: TIntegerField
      FieldName = 'TRANSFALMOX'
      Origin = 'TRANSFALMOXS.TRANSFALMOX'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'TRANSFALMOXS.NUMERO'
      Size = 7
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'TRANSFALMOXS.DATA'
    end
    object C_ConsultaTRANSFALMOXITEM: TIntegerField
      FieldName = 'TRANSFALMOXITEM'
      Origin = 'TRANSFALMOXITENS.TRANSFALMOXITEM'
      Required = True
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'TRANSFALMOXITENS.ITEM'
    end
    object C_ConsultaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'TRANSFALMOXITENS.QUANTIDADE'
      DisplayFormat = '###,###,##0.###'
      Precision = 18
      Size = 3
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'TRANSFALMOXITENS.UNIDADE'
      Size = 6
    end
    object C_ConsultaNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Origin = 'TRANSFALMOXITENS.NUMEROLOTE'
      Size = 11
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
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ConsultaDESCALMOXO: TStringField
      FieldName = 'DESCALMOXO'
      Origin = 'ALMOXARIFADOS.DESCALMOXO'
      Size = 30
    end
    object C_ConsultaDESCALMOXD: TStringField
      FieldName = 'DESCALMOXD'
      Origin = 'ALMOXARIFADOS.DESCALMOXD'
      Size = 30
    end
    object C_ConsultaLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Origin = 'USUARIOS.LOGINNAME'
      Size = 30
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Transfer'#234'ncias de Almoxarifados'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37512.7682690509
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 628
    Top = 135
  end
  object Q_Almoxarifados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from almoxarifados')
    Left = 610
    Top = 139
  end
  object C_Almoxarifados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifados'
    Left = 613
    Top = 193
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
    Left = 612
    Top = 254
  end
  object C_AlmoxarifadosDS: TDataSource
    DataSet = C_Almoxarifados
    Left = 613
    Top = 308
  end
end

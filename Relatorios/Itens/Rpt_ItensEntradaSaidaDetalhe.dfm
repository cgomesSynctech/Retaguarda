inherited RptItensEntradaSaidaDetalhe: TRptItensEntradaSaidaDetalhe
  Height = 461
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 274
      Caption = 'Extrato por tipo de opera'#231#227'o'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnGrid: TPanel
    Height = 396
    inherited pnDados: TTS_Panel
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 2
        Top = 5
        Width = 65
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 145
        Top = 3
        Width = 28
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 70
        Top = 2
        Width = 80
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
        UseEditMask = True
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 169
        Top = 2
        Width = 80
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
        UseEditMask = True
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 260
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      Height = 374
      KeyField = 'CODIGO'
      Filter.Criteria = {00000000}
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'DATA'
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 260
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaTIPOPADRAO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOPADRAO'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object dbgConsultaDESC_PADRAO: TdxDBGridMaskColumn
        Sorted = csUp
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_PADRAO'
        GroupIndex = 0
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
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
    Left = 621
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select i1.descricao, i1.codigo, entitens1.quantidade,'
      'e1.data, e1.favorecido , f1.nome, e1.tipopadrao,'
      'tp1.descricao as desc_padrao,'
      'entitens1.preco, entitens1.subtotalitem from entradas e1'
      'join entradasitens entitens1'
      'on e1.entrada = entitens1.entrada'
      'join itens i1 on entitens1.item = i1.item'
      'left join favorecidos f1 on e1.favorecido = f1.favorecido'
      'join tipospadrao tp1 on tp1.tipopadrao=e1.tipopadrao'
      'where e1.tipopadrao = 101'
      'and e1.data between :datai and :dataf'
      'and entitens1.item = :item'
      'union all'
      'select i2.descricao, i2.codigo, entitens2.quantidade,'
      'e2.data, e2.favorecido, f2.nome ,e2.tipopadrao,'
      'tp2.descricao as desc_padrao,'
      'entitens2.preco, entitens2.subtotalitem from entradas e2'
      'join entradasitens entitens2'
      'on e2.entrada = entitens2.entrada'
      'join itens i2 on entitens2.item = i2.item'
      'left join favorecidos f2 on e2.favorecido = f2.favorecido'
      'join tipospadrao tp2 on tp2.tipopadrao=e2.tipopadrao'
      'where e2.tipopadrao = 101'
      'and e2.data between :datai and :dataf'
      'and entitens2.item = :item'
      'union all'
      'select i3.descricao, i3.codigo, sitens3.quantidade,'
      's3.data, s3.favorecido, f3.nome , s3.tipopadrao,'
      'tp3.descricao as desc_padrao,'
      'sitens3.preco, sitens3.subtotalitem from saidas s3'
      'join saidasitens sitens3'
      'on s3.saida = sitens3.saida'
      'join itens i3 on sitens3.item = i3.item'
      'left  join favorecidos f3 on s3.favorecido = f3.favorecido'
      'join tipospadrao tp3 on tp3.tipopadrao=s3.tipopadrao'
      'where s3.tipopadrao = 1'
      'and s3.data between :datai and :dataf'
      'and sitens3.item = :item'
      'union all'
      'select i4.descricao, i4.codigo, sitens4.quantidade,'
      's4.data, s4.favorecido, f4.nome, s4.tipopadrao,'
      'tp4.descricao as desc_padrao,'
      'sitens4.preco, sitens4.subtotalitem from saidas s4'
      'join saidasitens sitens4'
      'on s4.saida = sitens4.saida'
      'join itens i4 on sitens4.item = i4.item'
      'left join favorecidos f4 on s4.favorecido = f4.favorecido'
      'join tipospadrao tp4 on tp4.tipopadrao=s4.tipopadrao'
      'where s4.tipopadrao = 2'
      'and s4.data between :datai and :dataf'
      'and sitens4.item = :item')
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end>
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaQUANTIDADE: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Cliente/Fornecedor'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_ConsultaDESC_PADRAO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DESC_PADRAO'
    end
    object C_ConsultaPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
    end
    object C_ConsultaSUBTOTALITEM: TBCDField
      DisplayLabel = 'Sub. Total'
      FieldName = 'SUBTOTALITEM'
      Precision = 18
      Size = 3
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Extrato por tipo de opera'#231#227'o'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.5720886227
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

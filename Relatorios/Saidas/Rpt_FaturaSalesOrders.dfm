inherited RptFaturaSalesOrders: TRptFaturaSalesOrders
  Left = 124
  Top = 92
  Width = 790
  Height = 462
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 774
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 473
      Caption = 'Relat'#243'rio de Faturamento das Ordens de Servi'#231'os'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 792
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 653
    end
    inherited lbTemplate: TTS_Label
      Left = 397
    end
  end
  inherited pnGrid: TPanel
    Width = 721
    Height = 385
    inherited RichEdit: TRichEdit
      Left = -2
      Top = 224
    end
    inherited pnDados: TTS_Panel
      Width = 721
      Height = 24
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 8
        Top = 5
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 132
        Top = 5
        Width = 15
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object btClientes: TTS_SpeedButton
        Left = 238
        Top = 2
        Width = 117
        Height = 21
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Selecionar Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btClientesClick
        RepeatedClick = False
        Border = True
      end
      object edDataI: TTS_DateTimePicker
        Left = 53
        Top = 3
        Width = 78
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        OnDateChange = edDataIDateChange
        Height = 19
        StoredValues = 4
      end
      object edDataF: TTS_DateTimePicker
        Left = 149
        Top = 3
        Width = 81
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 721
      Height = 342
      KeyField = 'SAIDA'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '>total=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'total;sum')
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'S.O. #'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        GroupIndex = 0
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 504
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        GroupIndex = 1
      end
      object dbgConsultaINVOICE: TdxDBGridMaskColumn
        Caption = 'Invoice #'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INVOICE'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Caption = 'Item'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaSAIDAITEMMESCLA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEMMESCLA'
      end
      object dbgConsultaSAIDAITEM_ORIGINAL: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 219
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEM_ORIGINAL'
      end
      object dbgConsultaSAIDAITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEM'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Qtd Faturada'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        SummaryFooterType = cstSum
      end
      object dbgConsultaSAIDA_ORIGINAL: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA_ORIGINAL'
      end
      object dbgConsultaSAIDAITEM1: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEM1'
      end
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        Nullable = False
      end
      object dbgConsultaQTDMAXIMA: TdxDBGridCurrencyColumn
        Caption = 'Qtd Solicitada'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDMAXIMA'
        SummaryFooterType = cstSum
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaSAIDA1: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA1'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn
        Caption = 'Vendedor'
        HeaderAlignment = taCenter
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEVENDEDOR'
      end
      object dbgConsultaSAIDAINVOICE: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAINVOICE'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 366
      Width = 721
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 385
    inherited btSair: TTS_SpeedButton
      Top = 340
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 218
    Top = 175
    object AbrirCadastrodeClientes1: TMenuItem [0]
      Caption = 'Abrir Cadastro de Clientes'
      OnClick = AbrirCadastrodeClientes1Click
    end
    object AbrirSalesOrder1: TMenuItem [1]
      Caption = 'Abrir Sales Order'
      OnClick = AbrirSalesOrder1Click
    end
    object N2: TMenuItem [2]
      Caption = '-'
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select sim.saidaitemmescla, sim.saidaitem_original, sim.saidaite' +
        'm, fu.favorecido as vendedor,  fu.nome as NomeVendedor, si.quant' +
        'idade as qtdmaxima, sio.quantidade, si.preco,'
      
        'sim.saida_original, si.saidaitem, si.saida, si.descricao as item' +
        ', si.subtotalitem, s.saida,s.numero, '
      
        's.favorecido, s.data, f.nome, s.tipopadrao, so.numero as invoice' +
        ','
      'so.saida as saidainvoice'
      'from saidas s'
      'inner join saidasitens si on s.saida = si.saida'
      
        'inner join saidasitensmescla sim on si.saidaitem = sim.saidaitem' +
        '_original'
      'inner join favorecidos f on s.favorecido = f.favorecido'
      'inner join saidasitens sio on sim.saidaitem = sio.saidaitem'
      'inner join saidas so on sio.saida = so.saida'
      'inner join favorecidos fu on s.vendedor = fu.favorecido'
      'where s.tipopadrao = 2 and s.data between :idata and :fdata'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Top = 113
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'idata'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'fdata'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftDateTime
        Name = 'idata'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'fdata'
        ParamType = ptUnknown
      end>
    Top = 217
    object C_ConsultaSAIDAITEMMESCLA: TIntegerField
      FieldName = 'SAIDAITEMMESCLA'
      Origin = 'SAIDASITENSMESCLA.SAIDAITEMMESCLA'
      Required = True
    end
    object C_ConsultaSAIDAITEM_ORIGINAL: TIntegerField
      FieldName = 'SAIDAITEM_ORIGINAL'
      Origin = 'SAIDASITENSMESCLA.SAIDAITEM_ORIGINAL'
    end
    object C_ConsultaSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Origin = 'SAIDASITENSMESCLA.SAIDAITEM'
    end
    object C_ConsultaSAIDA_ORIGINAL: TIntegerField
      FieldName = 'SAIDA_ORIGINAL'
      Origin = 'SAIDASITENSMESCLA.SAIDA_ORIGINAL'
    end
    object C_ConsultaSAIDAITEM1: TIntegerField
      FieldName = 'SAIDAITEM1'
      Origin = 'SAIDASITENS.SAIDAITEM1'
      Required = True
    end
    object C_ConsultaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Origin = 'SAIDASITENS.SAIDA'
    end
    object C_ConsultaITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'SAIDASITENS.ITEM'
      Size = 255
    end
    object C_ConsultaSAIDA1: TIntegerField
      FieldName = 'SAIDA1'
      Origin = 'SAIDAS.SAIDA1'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'SAIDAS.NUMERO'
      Size = 12
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'SAIDAS.FAVORECIDO'
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'SAIDAS.DATA'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
      Origin = 'SAIDAS.TIPOPADRAO'
    end
    object C_ConsultaINVOICE: TStringField
      FieldName = 'INVOICE'
      Origin = 'SAIDAS.INVOICE'
      Size = 12
    end
    object C_ConsultaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
      Required = True
    end
    object C_ConsultaNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Origin = 'FAVORECIDOS.NOMEVENDEDOR'
      Size = 50
    end
    object C_ConsultaSAIDAINVOICE: TIntegerField
      FieldName = 'SAIDAINVOICE'
      Origin = 'SAIDAS.SAIDAINVOICE'
      Required = True
    end
    object C_ConsultaQTDMAXIMA: TFloatField
      FieldName = 'QTDMAXIMA'
    end
    object C_ConsultaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 617
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37233.6101571181
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 656
    Top = 104
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de Faturamento das Ordens de Servi'#231'os'
    Left = 613
    Top = 211
  end
  object Q_Status: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from statussaidas'
      'order by descricao')
    Left = 476
    Top = 112
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Left = 478
    Top = 164
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 483
    Top = 213
    object C_StatusSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUSSAIDAS.STATUS'
      Required = True
      Size = 1
    end
    object C_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSAIDAS.DESCRICAO'
      Size = 30
    end
    object C_StatusORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'STATUSSAIDAS.ORDEM'
    end
    object C_StatusDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Origin = 'STATUSSAIDAS.DESCRICAO1'
      Size = 30
    end
    object C_StatusDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Origin = 'STATUSSAIDAS.DESCRICAO2'
      Size = 30
    end
    object C_StatusDESCRICAO3: TStringField
      FieldName = 'DESCRICAO3'
      Origin = 'STATUSSAIDAS.DESCRICAO3'
      Size = 30
    end
  end
  object C_StatusDS: TDataSource
    DataSet = C_Status
    Left = 486
    Top = 276
  end
end

inherited RptItensFalta: TRptItensFalta
  Left = 241
  Top = 212
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 261
      Caption = 'Relat'#243'rio de Itens em Falta'
      Effect3D.ShadowedColor = 9027548
    end
    inherited lbDescricaoRelatorio: TTS_Label
      Width = 347
      Caption = 
        'Lista os itens procurados pelos clientes que n'#227'o se encontravam ' +
        'na loja.'
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 14019327
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
        Top = 4
        Width = 15
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataI: TTS_DateTimePicker
        Left = 53
        Top = 2
        Width = 78
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
        OnDateChange = edDataIDateChange
        Height = 19
        StoredValues = 4
      end
      object edDataF: TTS_DateTimePicker
        Left = 149
        Top = 2
        Width = 81
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'ITEMFALTA'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      object dbgConsultaITEMFALTA: TdxDBGridMaskColumn
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEMFALTA'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Item'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 259
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        GroupIndex = 0
      end
      object dbgConsultaQTD: TdxDBGridCurrencyColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Width = 293
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#245'es'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 210
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
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
      'Select  i.*, f.nome, f.tipofavorecido'
      'from itensfalta i'
      'left join favorecidos f on i.cliente = f.favorecido'
      'where i.data between :idata and :fdata'
      'order by i.data')
    Left = 413
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fdata'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftDateTime
        Name = 'iData'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'fData'
        ParamType = ptUnknown
      end>
    Left = 414
    Top = 215
    object C_ConsultaITEMFALTA: TIntegerField
      FieldName = 'ITEMFALTA'
      Required = True
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaQTD: TBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object C_ConsultaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_ConsultaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Itens em Falta'
    Top = 213
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37487.7113525116
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

inherited RptFretes: TRptFretes
  Left = 234
  Top = 153
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 59
      Caption = 'Fretes'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15196656
      object TS_Label1: TTS_Label
        Left = 3
        Top = 4
        Width = 78
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 161
        Top = 5
        Width = 18
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 83
        Top = 2
        Width = 81
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFornecedores
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 184
        Top = 2
        Width = 81
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFornecedores
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'ENTRADA'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'ENTRADA'
              SummaryFormat = '>NUMERO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'TOTAL'
              SummaryFormat = '>TOTAL=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VALORICMS'
              SummaryFormat = '>VALORICMS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'BASECALCICMS'
              SummaryFormat = '>BASECALCICMS=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'NUMERO;COUNT'
        'TOTAL;SUM'
        'VALORICMS;SUM'
        'BASECALCICMS;SUM')
      object dbgConsultaENTRADA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#186' Nota Fiscal'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterField = 'ENTRADA'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaCIF_FOB: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Tipo Frete'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIF_FOB'
        Descriptions.Strings = (
          'CIF'
          'FOB')
        ImageIndexes.Strings = (
          '0'
          '1')
        ShowDescription = True
        Values.Strings = (
          'C'
          'F')
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Width = 248
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data Entrada'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaDATANOTA: TdxDBGridDateColumn
        Caption = 'Data Nota'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATANOTA'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCFOPNOTA: TdxDBGridMaskColumn
        Caption = 'CFOP'
        HeaderAlignment = taCenter
        Visible = False
        Width = 28
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPNOTA'
      end
      object dbgConsultaCFOPENTRADA: TdxDBGridMaskColumn
        Caption = 'CFOP Entrada'
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPENTRADA'
      end
      object dbgConsultaSERIENOTA: TdxDBGridMaskColumn
        Caption = 'S'#233'rie'
        HeaderAlignment = taCenter
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERIENOTA'
      end
      object dbgConsultaMODELO: TdxDBGridMaskColumn
        Caption = 'Modelo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object dbgConsultaBASECALCICMS: TdxDBGridCurrencyColumn
        Caption = 'Base C'#225'lc. ICMS'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCICMS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaALIQICMSCOMPRA: TdxDBGridCurrencyColumn
        Caption = 'Al'#237'q.'
        HeaderAlignment = taCenter
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMSCOMPRA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaVALORICMS: TdxDBGridCurrencyColumn
        Caption = 'Valor ICMS'
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaTOTAL: TdxDBGridCurrencyColumn
        Caption = 'Total da Nota'
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaDATAENTREGA: TdxDBGridDateColumn
        Caption = 'Data Vencto.'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAENTREGA'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1237
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaNOTAORIGEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAORIGEM'
      end
      object dbgConsultaUSUARIO: TdxDBGridMaskColumn
        Caption = 'Usu'#225'rio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUARIO'
      end
      object dbgConsultaUFORIGEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UFORIGEM'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        Caption = 'Raz'#227'o Social'
        HeaderAlignment = taCenter
        Visible = False
        Width = 245
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
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
      
        'Select e.entrada, e.numero, e.cif_fob, e.data, e.datanota, e.fav' +
        'orecido, e.cfopnota, e.cfopentrada, e.serienota, e.modelo, e.bas' +
        'ecalcicms, e.aliqicmscompra, e.valoricms, e.total, e.dataentrega' +
        ', e.obs, e.notaorigem,  e.usuario, e.uforigem, f.nome, f.razao'
      'from Entradas e'
      'inner join favorecidos f on e.favorecido = f.favorecido'
      
        'where e.tipopadrao = 108 and e.data between :d1 and :d2 and e.si' +
        'tuacao = '#39'N'#39)
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd2'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADAS.ENTRADA'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'ENTRADAS.NUMERO'
      Size = 12
    end
    object C_ConsultaCIF_FOB: TStringField
      FieldName = 'CIF_FOB'
      Origin = 'ENTRADAS.CIF_FOB'
      Size = 1
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ENTRADAS.DATA'
      Required = True
    end
    object C_ConsultaDATANOTA: TDateField
      FieldName = 'DATANOTA'
      Origin = 'ENTRADAS.DATANOTA'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'ENTRADAS.FAVORECIDO'
    end
    object C_ConsultaCFOPNOTA: TStringField
      FieldName = 'CFOPNOTA'
      Origin = 'ENTRADAS.CFOPNOTA'
      Size = 4
    end
    object C_ConsultaCFOPENTRADA: TStringField
      FieldName = 'CFOPENTRADA'
      Origin = 'ENTRADAS.CFOPENTRADA'
      Size = 4
    end
    object C_ConsultaSERIENOTA: TStringField
      FieldName = 'SERIENOTA'
      Origin = 'ENTRADAS.SERIENOTA'
      Size = 3
    end
    object C_ConsultaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'ENTRADAS.MODELO'
      Size = 2
    end
    object C_ConsultaDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
      Origin = 'ENTRADAS.DATAENTREGA'
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'ENTRADAS.OBS'
      Size = 255
    end
    object C_ConsultaNOTAORIGEM: TIntegerField
      FieldName = 'NOTAORIGEM'
      Origin = 'ENTRADAS.NOTAORIGEM'
    end
    object C_ConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'ENTRADAS.USUARIO'
      Size = 15
    end
    object C_ConsultaUFORIGEM: TStringField
      FieldName = 'UFORIGEM'
      Origin = 'ENTRADAS.UFORIGEM'
      Size = 2
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object C_ConsultaBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
    end
    object C_ConsultaALIQICMSCOMPRA: TBCDField
      FieldName = 'ALIQICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORICMS: TFloatField
      FieldName = 'VALORICMS'
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38408.4034587963
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 644
    Top = 96
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Fretes'
  end
end

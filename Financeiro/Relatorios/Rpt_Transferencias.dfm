inherited RptTransferencias: TRptTransferencias
  Width = 765
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 757
    inherited lbCaption: TdxfLabel
      Width = 378
      Caption = 'Transfer'#234'ncias de dinheiro entre contas'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 723
    end
  end
  inherited pnGrid: TPanel
    Width = 704
    inherited pnDados: TTS_Panel
      Width = 704
      Height = 23
      object lbPeriodo: TTS_Label
        Left = 12
        Top = 4
        Width = 85
        Caption = 'No per'#237'odo de:'
        FocusControl = DataI
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 189
        Top = 4
        Width = 17
        Alignment = taLeftJustify
        Caption = ' a '
        FocusControl = DataF
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 100
        Top = 2
        Width = 85
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFinanceiro
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
        Left = 208
        Top = 2
        Width = 85
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFinanceiro
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
      Top = 23
      Width = 704
      Height = 366
      KeyField = 'OPERACAO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'ValorOperacao'
              SummaryFormat = '>ValorOperacao=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'ValorOperacao;Sum;U')
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taLeftJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csDown
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaCONTAORIGEM: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTAORIGEM'
      end
      object dbgConsultaCONTADESTINO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 177
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTADESTINO'
      end
      object dbgConsultaVALOROPERACAO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOROPERACAO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaHISTORICO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 158
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object dbgConsultaOPERACAO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OPERACAO'
      end
      object dbgConsultaLOGINNAME: TdxDBGridColumn
        Caption = 'Usu'#225'rio'
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOGINNAME'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 704
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
      
        'Select o.Operacao, o.Data, co.Descricao as ContaOrigem, cd.Descr' +
        'icao as ContaDestino, o.ValorOperacao, o.historico, u.loginname'
      'From OperacoesFinanceiras o'
      '         inner join Contas co on o.contaorigem = co.conta'
      '         inner join Contas cd on o.contadestino= cd.conta'
      '         left join Usuarios u on o.usuario = u.usuario'
      
        'Where o.Data >= :DataI and o.Data <= :DataF and o.TipoOperacao =' +
        ' 8 and o.Situacao is null'
      'Order by o.Data')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_ConsultaCONTAORIGEM: TStringField
      DisplayLabel = 'Conta Origem'
      FieldName = 'CONTAORIGEM'
      Size = 50
    end
    object C_ConsultaCONTADESTINO: TStringField
      DisplayLabel = 'Conta Destino'
      FieldName = 'CONTADESTINO'
      Size = 50
    end
    object C_ConsultaVALOROPERACAO: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOROPERACAO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaHISTORICO: TStringField
      DisplayLabel = 'Memo'
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_ConsultaOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object C_ConsultaLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Size = 30
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    Modulo = 'Financeiro'
    Caption = 'Transfer'#234'ncias de dinheiro entre contas'
    Top = 218
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 484
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.629955081
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

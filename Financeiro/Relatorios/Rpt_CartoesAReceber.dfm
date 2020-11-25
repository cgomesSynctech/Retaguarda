inherited RptCartoesAReceber: TRptCartoesAReceber
  Left = 28
  Top = 71
  Width = 754
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 738
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 173
      Caption = 'Cart'#245'es a Receber'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 712
    end
  end
  inherited pnGrid: TPanel
    Width = 685
    inherited pnDados: TTS_Panel
      Width = 685
      Height = 23
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 209
        Top = 5
        Width = 85
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 376
        Top = 5
        Width = 17
        Alignment = taLeftJustify
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 461
        Top = 5
        Width = 48
        Caption = 'Status:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = -25
        Top = 4
        Width = 66
        Cursor = crHandPoint
        Caption = 'Cart'#227'o:'
        FocusControl = cmbCartao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmFormasPagamento'
        LinkToResult = 0
      end
      object TS_SpeedButton1: TTS_SpeedButton
        Left = 626
        Top = 2
        Width = 64
        Height = 20
        Caption = 'Apresentar'
        OnClick = TS_SpeedButton1Click
        RepeatedClick = False
        Border = True
      end
      object DataI: TTS_DateTimePicker
        Left = 295
        Top = 2
        Width = 80
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 391
        Top = 2
        Width = 80
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object cmbStatus: TTS_ComboBox
        Left = 510
        Top = 2
        Width = 114
        TabOrder = 2
        StyleController = DMProjeto.esFinanceiro
        Text = 'Todos'
        OnSelectionChange = cmbStatusSelectionChange
        Items.Strings = (
          'Apresentados'
          'N'#227'o Apresentados'
          'Todos')
        Height = 19
      end
      object cmbCartao: TTS_LookupComboBox
        Left = 43
        Top = 2
        Width = 176
        TabOrder = 3
        StyleController = DMProjeto.esClientes
        OnSelectionChange = cmbCartaoSelectionChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'FORMAPAGAMENTO'
        ListSource = DMFinanceiro.C_CartoesCredDS
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 23
      Width = 685
      Height = 355
      KeyField = 'IDDOC'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TaxaCartao'
              SummaryFormat = '>TaxaCartao=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorAReceber'
              SummaryFormat = '>ValorAReceber=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'Valor;Sum'
        'TaxaCartao;Sum'
        'ValorAReceber;Sum')
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Data'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 189
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaDESCCARTAO: TdxDBGridMaskColumn
        Caption = 'Cart'#227'o de Cr'#233'dito'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCARTAO'
        GroupIndex = 0
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        Alignment = taLeftJustify
        Caption = 'Vencimento'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        Caption = 'Valor'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaHISTORICO: TdxDBGridMaskColumn
        Caption = 'Memo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 238
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object dbgConsultaTAXACARTAO: TdxDBGridMaskColumn
        Caption = 'Taxa'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXACARTAO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaIDDOC: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDDOC'
      end
      object dbgConsultaValoraReceber: TdxDBGridMaskColumn
        Caption = 'Valor a Receber'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORARECEBER'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaDescStatus: TdxDBGridColumn
        Caption = 'Status'
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUS'
      end
      object dbgConsultaColumn12: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaTITULO: TdxDBGridMaskColumn
        Caption = '# T'#237'tulo'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
      end
      object dbgConsultaDATADIASEMANA: TdxDBGridColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATADIASEMANA'
      end
      object dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODIASEMANA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 685
      Color = 16116702
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Visible = False
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
      
        'Select dd.IDDoc, fp.Descricao as DescCartao, dd.Valor, dd.Vencim' +
        'ento, f.Nome, d.Data, d.Historico, dd.TaxaCartao, (dd.Valor-dd.T' +
        'axaCartao) as ValorAReceber, sd.Descricao as DescStatus, d.depos' +
        'ito, d.tipodeposito, d.favorecido, f.tipofavorecido, f.codigo, t' +
        'r.titulo'
      'From DepositosDoc dd '
      '         inner join Depositos d on dd.deposito = d.deposito'
      
        '         inner join formaspagamento fp on dd.formapagamento = fp' +
        '.formapagamento'
      '         inner join favorecidos f on d.favorecido = f.favorecido'
      '         inner join statusdoc sd on dd.status = sd.status'
      
        '         left join depositostitulos dt on dt.deposito = d.deposi' +
        'to'
      '         left join titulosareceber tr on tr.id = dt.titulo'
      
        'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF and  f' +
        'p.especie IN (3,10,30) and dd.Status = :Status'
      'Order by fp.Descricao, dd.Vencimento')
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
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 414
    Top = 220
    object C_ConsultaDESCCARTAO: TStringField
      FieldName = 'DESCCARTAO'
      Required = True
      Size = 50
    end
    object C_ConsultaVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_ConsultaTAXACARTAO: TBCDField
      FieldName = 'TAXACARTAO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ConsultaVALORARECEBER: TBCDField
      FieldName = 'VALORARECEBER'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object C_ConsultaDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object C_ConsultaTIPODEPOSITO: TIntegerField
      FieldName = 'TIPODEPOSITO'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_ConsultaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_ConsultaDATADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DATADIASEMANA'
      Size = 50
    end
    object C_ConsultaVENCIMENTODIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODIASEMANA'
      Size = 50
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 498
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6254968634
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Cart'#245'es a Receber'
    Left = 245
    Top = 116
  end
end

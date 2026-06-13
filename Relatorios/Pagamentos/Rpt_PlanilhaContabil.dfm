inherited RptPlanilhaContabil: TRptPlanilhaContabil
  Left = 371
  Top = 61
  Width = 865
  Height = 510
  Caption = 'Contabilidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 857
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Effect3D.ShadowedColor = 12689345
    end
    inherited btHelp: TTS_SpeedButton
      Left = 815
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 788
    end
  end
  inherited pnGrid: TPanel
    Width = 804
    Height = 445
    inherited pnDados: TTS_Panel
      Width = 804
      Height = 28
      Color = 14733792
      object lbPeriodo: TTS_Label
        Left = 281
        Top = 7
        Width = 82
        Caption = 'Periodo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 447
        Top = 6
        Width = 13
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 365
        Top = 4
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
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 464
        Top = 4
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
        Height = 19
        StoredValues = 4
      end
      object RgForma: TTS_RadioGroup
        Left = 12
        Top = -4
        Width = 261
        Height = 32
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Competencia PGTO'
          'Vencimento')
        ParentFont = False
        TabOrder = 2
        Transparent = True
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 28
      Width = 804
      Height = 398
      KeyField = 'IDDOC'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'valorpago'
              SummaryFormat = '>valorpago=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'jurospagos'
              SummaryFormat = '>jurospagos=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'descontos'
              SummaryFormat = '>descontos=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOTAFISCAL'
      TS_SummaryFields.Strings = (
        'Valor;Sum'
        'valorpago;Sum'
        'jurospagos;Sum'
        'descontos;Sum')
      object dbgConsultaIDDOC: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDDOC'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        Caption = 'Nota Fiscal'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        Caption = 'Parcela'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        Caption = 'Raz'#227'o'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        Caption = 'Cnpj/CPF'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tipo'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaDESCCONTA: TdxDBGridMaskColumn
        Caption = 'Conta/Tesouraria'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        Caption = 'Data Pgto'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaVALOR: TdxDBGridCurrencyColumn
        Caption = 'Valor Doc'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn
        Caption = 'Valor Pago'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaJUROSPAGOS: TdxDBGridCurrencyColumn
        Caption = 'Juros'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSPAGOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaDESCONTOS: TdxDBGridCurrencyColumn
        Caption = 'Desconto'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaEMPRESAORIGEM: TdxDBGridMaskColumn
        Caption = 'Loja'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESAORIGEM'
      end
      object dbgConsultaHISTORICO: TdxDBGridMaskColumn
        Caption = 'Historico'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 426
      Width = 804
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 445
    inherited btSair: TTS_SpeedButton
      Top = 400
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      
        'rd.IDDoc, dp.notafiscal, dp.parcela, f.razao, f.cpf_cnpj, tc.des' +
        'cricao,dp.vencimento,c.Descricao as DescConta,dp.datapago, dp.va' +
        'lor, dp.valorpago, dp.jurospagos, dp.descontos, r.empresaorigem,' +
        ' r.historico'
      'from'
      
        'retiradasdoc rd   inner join retiradas r on rd.retirada = r.reti' +
        'rada inner join Favorecidos f on rd.favorecidodoc = f.favorecido' +
        ' inner join FormasPagamento fp on rd.formapagamento = fp.formapa' +
        'gamento  inner join TiposOrigens t on r.tiporetirada = t.origem ' +
        '  left join Contas c on rd.Conta = c.Conta left join TiposFavore' +
        'cido tf on f.tipofavorecido = tf.tipofavorecido  left join conta' +
        'soperacao co on r.retirada = co.idgerador left join contas ct on' +
        ' co.conta = ct.conta inner join retiradasduplicatas rdp on rd.re' +
        'tirada = rdp.retirada inner join duplicatasapagar dp on dp.id = ' +
        'rdp.duplicata inner join tiposcobranca tc on tc.tipocobranca = d' +
        'p.tipocobranca')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ConsultaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_ConsultaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_ConsultaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaDESCCONTA: TStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_ConsultaDATAPAGO: TDateField
      FieldName = 'DATAPAGO'
    end
    object C_ConsultaVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSPAGOS: TBCDField
      FieldName = 'JUROSPAGOS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaEMPRESAORIGEM: TStringField
      FieldName = 'EMPRESAORIGEM'
      Size = 5
    end
    object C_ConsultaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 44370.3941469097
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
  end
end

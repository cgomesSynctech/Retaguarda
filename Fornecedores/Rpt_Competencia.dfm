inherited RptCompetencia: TRptCompetencia
  Left = 445
  Top = 75
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15196656
      object DataInicio: TTS_DateTimePicker
        Left = 133
        Top = 3
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
      object DataFinal: TTS_DateTimePicker
        Left = 253
        Top = 3
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'NOTAFISCAL'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'ID'
      object dbgConsultaID: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        Nullable = False
      end
      object dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
        Nullable = False
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaDESCONTOS: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
        Nullable = False
      end
      object dbgConsultaJUROSPAGOS: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSPAGOS'
        Nullable = False
      end
      object dbgConsultaCREDITOGERADO: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOGERADO'
        Nullable = False
      end
      object dbgConsultaCREDITOUTILIZADO: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOUTILIZADO'
        Nullable = False
      end
      object dbgConsultaDESCSTATUS: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUS'
      end
      object dbgConsultaSALDO: TdxDBGridCurrencyColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        Nullable = False
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCOMPRA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPRA'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaDESCTIPOCOBRANCA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTIPOCOBRANCA'
      end
      object dbgConsultaINDEXADOR: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDEXADOR'
      end
      object dbgConsultaDESCINDEX: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCINDEX'
      end
      object dbgConsultaCONTADESPESA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTADESPESA'
      end
      object dbgConsultaFORMAPGTO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMAPGTO'
      end
      object dbgConsultaCONTA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
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
      'select'
      
        'D.ID,D.parcela, D.NOTAFISCAL, F.NOME, D.VENCIMENTO, D.VALOR, D.V' +
        'ALORPAGO, D.DATAPAGO, D.DESCONTOS, D.JUROSPAGOS, D.CREDITOGERADO' +
        ', D.CREDITOUTILIZADO, S.DESCRICAO AS DESCSTATUS, (D.FALTAPAGAR) ' +
        'AS SALDO, F.ENDERECO, F.CIDADE, F.UF, F.FONE1, F.CEP, F.FAVORECI' +
        'DO, D.COMPRA, F.TIPOFAVORECIDO, f.codigo, d.obs, TC.descricao AS' +
        ' DESCTIPOCOBRANCA, d.indexador, idx.descricao as descindex, (sel' +
        'ect Max(ct.descricao) From retiradasduplicatas rdp left join ret' +
        'iradasdoc rd on rd.retirada = rdp.retirada left join retiradas r' +
        ' on rd.retirada = r.retirada left join contasoperacao co on r.re' +
        'tirada = co.idgerador left join contas ct on co.conta = ct.conta' +
        ' where rdp.duplicata = d.id) AS CONTADESPESA , fp.descricao as F' +
        'ormaPgto , ct.descricao as Conta , f.cpf_cnpj'
      ''
      'from'
      ''
      'duplicatasapagar d'
      'INNER JOIN FAVORECIDOS F ON D.FORNECEDOR = F.FAVORECIDO'
      'INNER JOIN STATUSTITULOS S ON D.STATUS = S.STATUS'
      'left join TIPOSCOBRANCA TC on d.tipocobranca = TC.tipocobranca'
      'left join indexadores idx on d.indexador = idx.indexador'
      'left join retiradasduplicatas rdp on rdp.duplicata = d.id'
      'left join retiradasdoc rd on rd.retirada = rdp.retirada'
      'left join retiradas r on rd.retirada = r.retirada'
      'left join contasoperacao co on r.retirada = co.idgerador'
      'left join contas ct on rd.conta = ct.conta'
      
        'left join formaspagamento fp on rd.formapagamento = fp.formapaga' +
        'mento'
      ''
      'where d.competencia >= :DataI and d.competencia <= :DataF')
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
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_ConsultaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
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
    object C_ConsultaDATAPAGO: TDateField
      FieldName = 'DATAPAGO'
    end
    object C_ConsultaDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSPAGOS: TBCDField
      FieldName = 'JUROSPAGOS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object C_ConsultaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaCOMPRA: TIntegerField
      FieldName = 'COMPRA'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ConsultaDESCTIPOCOBRANCA: TStringField
      FieldName = 'DESCTIPOCOBRANCA'
      Size = 50
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaDESCINDEX: TStringField
      FieldName = 'DESCINDEX'
      Size = 30
    end
    object C_ConsultaCONTADESPESA: TStringField
      FieldName = 'CONTADESPESA'
      Size = 50
    end
    object C_ConsultaFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Size = 50
    end
    object C_ConsultaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 50
    end
    object C_ConsultaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 44299.6567770139
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
  end
end

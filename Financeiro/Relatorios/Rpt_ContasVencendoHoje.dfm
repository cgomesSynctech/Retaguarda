inherited RptContasVencendoHoje: TRptContasVencendoHoje
  Left = 215
  Top = 151
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 216
      Caption = 'Contas Vencendo Hoje'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Height = 3
      Color = 15196656
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 3
      Height = 386
      KeyField = 'ID'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'icValor'
              SummaryFormat = '>icValor=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icValorPago'
              SummaryFormat = '>icValorPago=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icSaldo'
              SummaryFormat = '>icSaldo=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOTAFISCAL'
      TS_SummaryFields.Strings = (
        'icValor;Sum'
        'icValorPago;Sum'
        'icSaldo;Sum')
      object dbgConsultaID: TdxDBGridMaskColumn
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        Caption = 'Opera'#231#227'o N'#186
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 216
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        Alignment = taLeftJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        Alignment = taLeftJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaicValor: TdxDBGridMaskColumn
        Caption = 'Valor'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValor'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaicValorPago: TdxDBGridMaskColumn
        Caption = 'Valor Pago'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValorPago'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaicDescontos: TdxDBGridMaskColumn
        Caption = 'Descontos'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icDescontos'
      end
      object dbgConsultaicJurosPagos: TdxDBGridMaskColumn
        Caption = 'Juros'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icJurosPagos'
      end
      object dbgConsultaicCreditoGerado: TdxDBGridMaskColumn
        Caption = 'Cr'#233'd. Gerado'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCreditoGerado'
      end
      object dbgConsultaicCreditoUtilizado: TdxDBGridMaskColumn
        Caption = 'Cr'#233'd. Utilizado'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCreditoUtilizado'
      end
      object dbgConsultaicSaldo: TdxDBGridMaskColumn
        Caption = 'Saldo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSaldo'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaEndereco: TdxDBGridColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 314
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCidade: TdxDBGridColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaEstado: TdxDBGridColumn
        Caption = 'Estado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFone1: TdxDBGridColumn
        Caption = 'Telefone'
        HeaderAlignment = taCenter
        Visible = False
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaCEP: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaColumn20: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIADIASEMANA'
      end
      object dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODIASEMANA'
      end
      object dbgConsultaDESCINDEX: TdxDBGridMaskColumn
        Caption = 'Indexador'
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCINDEX'
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
      
        'select d.ID, d.notafiscal, f.nome, d.competencia, d.vencimento, ' +
        'd.valor, d.valorpago, d.datapago, d.descontos, d.jurospagos, d.c' +
        'reditogerado, d.creditoutilizado, (d.faltapagar) as Saldo, f.end' +
        'ereco, f.cidade, f.uf, f.cep, f.fone1, f.favorecido, f.tipofavor' +
        'ecido, f.codigo, d.indexador, idx.descricao as descindex'
      'from duplicatasapagar d'
      'inner join favorecidos f on d.fornecedor = f.favorecido'
      'left join indexadores idx on d.indexador = idx.indexador'
      
        'where (d.status = 2) or (d.status=-3 and d.vencimento=current_da' +
        'te)')
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaNOTAFISCAL: TStringField
      DisplayLabel = '# Conta'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaCOMPETENCIA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data'
      FieldName = 'COMPETENCIA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORPAGO: TBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAPAGO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Pgto'
      FieldName = 'DATAPAGO'
    end
    object C_ConsultaDESCONTOS: TBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSPAGOS: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOGERADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOUTILIZADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSALDO: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
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
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_ConsultaCOMPETENCIADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'COMPETENCIADIASEMANA'
      Size = 50
    end
    object C_ConsultaVENCIMENTODIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODIASEMANA'
      Size = 50
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaDESCINDEX: TStringField
      FieldName = 'DESCINDEX'
      Size = 30
    end
    object C_ConsultaicValor: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValor'
    end
    object C_ConsultaicValorPago: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValorPago'
    end
    object C_ConsultaicDescontos: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDescontos'
    end
    object C_ConsultaicJurosPagos: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icJurosPagos'
    end
    object C_ConsultaicCreditoGerado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCreditoGerado'
    end
    object C_ConsultaicCreditoUtilizado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCreditoUtilizado'
    end
    object C_ConsultaicSaldo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSaldo'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Contas Vencendo Hoje'
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 501
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6263541088
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 408
    Top = 336
  end
end

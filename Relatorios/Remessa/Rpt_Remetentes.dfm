inherited RptRemetentes: TRptRemetentes
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 237
      Caption = 'Relat'#243'rio de Remetentes'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15456728
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'AGENCIA'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object dbgConsultaAGENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGENCIA'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Remetente'
        Width = 202
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaTAXA: TdxDBGridCurrencyColumn
        Caption = 'Taxa'
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXA'
        Nullable = False
      end
      object dbgConsultaPERC: TdxDBGridCurrencyColumn
        Caption = 'Perc.'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERC'
        Nullable = False
      end
      object dbgConsultaDESC_MOEDA: TdxDBGridMaskColumn
        Caption = 'Moeda'
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_MOEDA'
      end
      object dbgConsultaCAMBIO: TdxDBGridCurrencyColumn
        Caption = 'C'#226'mbio'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMBIO'
        Nullable = False
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
      
        'select ag.*, agc.*, moeda.descricao as desc_moeda from AGENCIAS ' +
        'ag'
      'join AGENCIAS_CAMBIO agc '
      'on ag.agencia=agc.agencia'
      'join indexadores moeda on  agc.indexador=moeda.indexador '
      'where ag.tipo='#39'E'#39)
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
      Required = True
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaTAXA: TBCDField
      FieldName = 'TAXA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPERC: TBCDField
      FieldName = 'PERC'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object C_ConsultaAGENCIA_CAMBIO: TIntegerField
      FieldName = 'AGENCIA_CAMBIO'
      Required = True
    end
    object C_ConsultaAGENCIA1: TIntegerField
      FieldName = 'AGENCIA1'
      Required = True
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_ConsultaCAMBIO: TBCDField
      FieldName = 'CAMBIO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaDESC_MOEDA: TStringField
      FieldName = 'DESC_MOEDA'
      Size = 30
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Relat'#243'rio de Remetentes'
    OnRefresh = FormsComponentRefresh
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37411.6656962616
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

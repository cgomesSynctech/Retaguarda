inherited RptCaractClientes: TRptCaractClientes
  Height = 460
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 367
      Caption = 'Relat'#243'rio de Caracteristicas do Cliente'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited pnGrid: TPanel
    Height = 398
    inherited pnDados: TTS_Panel
      Height = 3
      Color = 16116702
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 3
      Height = 395
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      PreviewFieldName = 'PreviewEnd'
      TS_ComponentPrinter = nil
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 206
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaDATANASC: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'Data Nasc.'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATANASC'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Visible = False
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        Visible = False
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        Visible = False
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        Visible = False
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaDESC_PAIS: TdxDBGridMaskColumn
        Visible = False
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_PAIS'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Visible = False
        Width = 165
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaDESCTIPOATIVIDADE: TdxDBGridMaskColumn
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTIPOATIVIDADE'
      end
      object dbgConsultaDESCTABELAPRECO: TdxDBGridMaskColumn
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTABELAPRECO'
      end
      object dbgConsultaCONTAS: TdxDBGridMaskColumn
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTAS'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 398
    inherited btSair: TTS_SpeedButton
      Top = 349
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    object Endereo1: TMenuItem [0]
      Caption = 'Endere'#231'o'
      OnClick = Endereo1Click
    end
    object N9: TMenuItem [1]
      Caption = '-'
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select f.*, con.descricao as contas, p.descricao as desc_pais, t' +
        'pativ.descricao as descTipoAtividade, tbpreco.descricao'
      'as descTabelaPreco'
      'from favorecidos f'
      'left join tiposatividade tpativ'
      'on f.tipoatividade = tpativ.tipoatividade'
      'left join tabelaspreco tbpreco'
      'on f.tabelapreco = tbpreco.tabelapreco'
      'left join paises p on f.pais=p.pais'
      'left join contas con on f.conta=con.conta'
      'where f.tipofavorecido = 1'
      'and  f.desativado = '#39'N'#39
      'order by f.nome')
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
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
    object C_ConsultaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FONE1'
    end
    object C_ConsultaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FONE2'
    end
    object C_ConsultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
    end
    object C_ConsultaEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaDESCTIPOATIVIDADE: TStringField
      DisplayLabel = 'Tipo de Atividade'
      FieldName = 'DESCTIPOATIVIDADE'
      Size = 30
    end
    object C_ConsultaDESCTABELAPRECO: TStringField
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'DESCTABELAPRECO'
      Size = 25
    end
    object C_ConsultaDATANASC: TDateField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'DATANASC'
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'DESC_PAIS'
      Size = 25
    end
    object C_ConsultaPreviewEnd: TStringField
      DisplayWidth = 100
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaCONTAS: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTAS'
      Size = 50
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de Caracteristicas do Cliente'
    OnRefresh = FormsComponentRefresh
  end
  inherited ppmSumarizacao: TTS_PopupMenu
    Left = 229
    Top = 208
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 506
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6254485301
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

inherited RptCaractFornecedores: TRptCaractFornecedores
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 407
      Caption = 'Relat'#243'rio de Caracteristicas do Fornecedor'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Height = 4
      Color = 15196656
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 4
      Height = 401
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      PreviewFieldName = 'PreviewEnd'
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 279
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Visible = False
        Width = 282
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 168
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        Visible = False
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        Visible = False
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaDESC_PAIS: TdxDBGridMaskColumn
        Visible = False
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_PAIS'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Visible = False
        Width = 227
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaDESCTIPOATIVIDADE: TdxDBGridMaskColumn
        Width = 196
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTIPOATIVIDADE'
      end
      object dbgConsultaDESCTABELAPRECO: TdxDBGridMaskColumn
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTABELAPRECO'
      end
      object dbgConsultaCONTAS: TdxDBGridMaskColumn
        Visible = False
        Width = 307
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTAS'
      end
      object dbgConsultaCONTA_DES: TdxDBGridMaskColumn
        Visible = False
        Width = 307
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_DES'
      end
      object dbgConsultaCONTA_PAG: TdxDBGridMaskColumn
        Visible = False
        Width = 307
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_PAG'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
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
      
        'select f.*, p.descricao as desc_pais, tpativ.descricao as descTi' +
        'poAtividade, tbpreco.descricao as descTabelaPreco,'
      'con.descricao as contas,'
      'con_des.descricao as conta_des, con_pag.descricao as conta_pag'
      'from favorecidos f'
      'left join tiposatividade tpativ'
      'on f.tipoatividade = tpativ.tipoatividade'
      'left join tabelaspreco tbpreco'
      'on f.tabelapreco = tbpreco.tabelapreco'
      'left join paises p on f.pais=p.pais'
      'Left join contas con on con.conta=f.conta'
      'Left join contas con_des on con_des.conta=f.contadespesas'
      'Left join contas con_pag on con_pag.conta=f.contapagamento'
      'where f.tipofavorecido = 2'
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
      DisplayLabel = 'Contas'
      FieldName = 'CONTAS'
      Size = 50
    end
    object C_ConsultaCONTA_DES: TStringField
      DisplayLabel = 'Conta Despesa'
      FieldName = 'CONTA_DES'
      Size = 50
    end
    object C_ConsultaCONTA_PAG: TStringField
      FieldName = 'CONTA_PAG'
      Size = 50
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Relat'#243'rio de Caracteristicas do Fornecedor'
    OnRefresh = FormsComponentRefresh
  end
  inherited ppmSumarizacao: TTS_PopupMenu
    Left = 237
    Top = 176
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 510
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6254737963
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

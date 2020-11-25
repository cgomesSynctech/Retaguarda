inherited RptClienteDesativados: TRptClienteDesativados
  Left = 150
  Top = 79
  Height = 460
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 322
      Caption = 'Relat'#243'rio de Clientes Desativados'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited pnGrid: TPanel
    Height = 395
    inherited pnDados: TTS_Panel
      Height = 2
      Color = 16116702
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 2
      Height = 393
      Bands = <
        item
          Caption = 'Dados Cadastrais'
        end
        item
          Caption = #218'ltima Compra'
          Width = 173
        end
        item
          Width = 151
        end>
      KeyField = 'FAVORECIDO'
      BandColor = 15461355
      Filter.Criteria = {00000000}
      PreviewFieldName = 'PreviewEnd'
      ShowBands = True
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 208
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaULTCOMPRA: TdxDBGridDateColumn
        Alignment = taCenter
        Width = 93
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTCOMPRA'
      end
      object dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn
        Width = 80
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTVALORCOMPRA'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Width = 151
        BandIndex = 2
        RowIndex = 0
        FieldName = 'OBS'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 395
    inherited btSair: TTS_SpeedButton
      Top = 350
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
      'Select f.*, p.descricao as desc_pais'
      'from favorecidos f'
      'left join paises p on f.pais=p.pais'
      'where f.tipofavorecido=1 and f.desativado='#39'S'#39)
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
    object C_ConsultaCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
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
    object C_ConsultaULTCOMPRA: TDateField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'ULTCOMPRA'
    end
    object C_ConsultaULTVALORCOMPRA: TBCDField
      DisplayLabel = #218'lt. Valor'
      FieldName = 'ULTVALORCOMPRA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pais'
      FieldName = 'DESC_PAIS'
      Size = 25
    end
    object C_ConsultaPreviewEnd: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaOBS: TStringField
      DisplayLabel = 'Obs.:'
      FieldName = 'OBS'
      Size = 255
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de Clientes Desativados'
    OnRefresh = FormsComponentRefresh
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 552
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6257053819
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object Q_ULTCompra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select saida from saidas'
      'where data=:data'
      'and favorecido=:fav')
    Left = 555
    Top = 260
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'fav'
        ParamType = ptUnknown
      end>
  end
end

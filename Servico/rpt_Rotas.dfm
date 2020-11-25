inherited RptRotas: TRptRotas
  Left = 166
  Top = 136
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 55
      Caption = 'Rotas'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Height = 21
      Color = 15456728
      Visible = False
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 21
      Height = 361
      KeyField = 'ROTA'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'QTDEEQUIP'
              SummaryFormat = '>QTDEEQUIP=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CLIENTE'
      TS_SummaryFields.Strings = (
        'QTDEEQUIP;SUM;')
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Rota'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        GroupIndex = 0
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Width = 163
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        Caption = 'Bairro'
        HeaderAlignment = taCenter
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone1'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Caption = 'Celular'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaQTDEEQUIP: TdxDBGridMaskColumn
        Caption = 'Qtde. Equipamentos'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEEQUIP'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
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
  inherited DlgMsg: TDlgMsg
    Left = 657
    Top = 329
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 699
    Top = 321
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      '  r.rota, r.descricao,'
      
        '  f.nome cliente, f.endereco, f.bairro, f.cidade, f.uf, f.fone1,' +
        ' f.celular,'
      
        '(select count(e.equipamento) from equipamentos e where e.favorec' +
        'ido = rc.cliente) qtdeEquip'
      'from rotas r'
      'left join rotasclientes rc on r.rota = rc.rota'
      'inner join favorecidos f on rc.cliente = f.favorecido')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaROTA: TIntegerField
      FieldName = 'ROTA'
      Required = True
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_ConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
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
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_ConsultaQTDEEQUIP: TIntegerField
      FieldName = 'QTDEEQUIP'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Rotas'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38383.4133488426
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Top = 22
  end
end

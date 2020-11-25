inherited RptFuncionarios: TRptFuncionarios
  Left = 34
  Width = 761
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 753
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 244
      Caption = 'Listagem de Funcion'#225'rios'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 719
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 692
    end
  end
  inherited pnGrid: TPanel
    Width = 700
    inherited pnDados: TTS_Panel
      Width = 700
      Color = 15396297
      Visible = False
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 700
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOME'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCARGO: TdxDBGridMaskColumn
        Caption = 'Cargo'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARGO'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        Visible = False
        Width = 162
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone 1'
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        Caption = 'Estado'
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        Caption = 'Zip'
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Caption = 'Fone 2'
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        Caption = 'Cx. Postal'
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaPAIS: TdxDBGridMaskColumn
        Caption = 'Pa'#237's'
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAIS'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Caption = 'Fax'
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Caption = 'Celular'
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Caption = 'Email'
        Visible = False
        Width = 166
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaSSN: TdxDBGridMaskColumn
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SSN'
      end
      object dbgConsultaCREDITO: TdxDBGridCurrencyColumn
        Caption = 'Cr'#233'dito'
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITO'
        Nullable = False
      end
      object dbgConsultaCAMPO01: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO01'
      end
      object dbgConsultaCAMPO02: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO02'
      end
      object dbgConsultaCAMPO03: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO03'
      end
      object dbgConsultaCAMPO04: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO04'
      end
      object dbgConsultaCAMPO05: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO05'
      end
      object dbgConsultaCAMPO06: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO06'
      end
      object dbgConsultaCAMPO07: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO07'
      end
      object dbgConsultaCAMPO08: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO08'
      end
      object dbgConsultaCAMPO09: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO09'
      end
      object dbgConsultaCAMPO10: TdxDBGridMaskColumn
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO10'
      end
      object dbgConsultaDATANASC: TdxDBGridDateColumn
        Caption = 'Data Nasc.'
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATANASC'
      end
      object dbgConsultaDATAADMISSAO: TdxDBGridDateColumn
        Caption = 'Admisss'#227'o'
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAADMISSAO'
      end
      object dbgConsultaDATAAUMENTO: TdxDBGridDateColumn
        Caption = 'Aumento em'
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAAUMENTO'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#245'es'
        Visible = False
        Width = 1045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaPERIODICIDADE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Periodicidade'
        MinWidth = 16
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERIODICIDADE'
        ShowDescription = True
      end
      object dbgConsultaULTIMOPGTO: TdxDBGridDateColumn
        Caption = #218'ltimo Pgto'
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMOPGTO'
      end
      object dbgConsultaULTIMOVALORPAGO: TdxDBGridCurrencyColumn
        Caption = #218'ltimo Vlr. Pago'
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMOVALORPAGO'
        Nullable = False
      end
      object dbgConsultaIdade: TdxDBGridColumn
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Idade'
      end
      object dbgConsultaColumn36: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 700
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
      
        'select f.favorecido, f.nome, f.endereco, f.cidade, f.uf, f.cep, ' +
        'f.fone1, f.fone2, f.contato, f.caixapostal, p.descricao as pais,' +
        ' f.fax, f.celular, f.email, f.ssn, f.credito, f.campo01, f.campo' +
        '02, f.campo03, f.campo04, f.campo05, f.campo06, f.campo07, f.cam' +
        'po08, f.campo09, f.campo10, c.descricao as Cargo, f.datanasc, f.' +
        'dataadimissao as dataadmissao, f.dataaumento, f.obs, f.periodici' +
        'dade, f.ultimopgto, f.ultimovalorpago, f.codigo'
      'from favorecidos f '
      'left join paises p on f.pais = p.pais '
      'left join cargos c on f.cargo = c.cargo '
      'where f.tipofavorecido = 3 and f.desativado = '#39'N'#39)
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
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
    object C_ConsultaFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 25
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaSSN: TStringField
      FieldName = 'SSN'
      Size = 11
    end
    object C_ConsultaCREDITO: TBCDField
      FieldName = 'CREDITO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_ConsultaCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_ConsultaCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_ConsultaCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_ConsultaCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_ConsultaCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_ConsultaCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_ConsultaCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_ConsultaCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_ConsultaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_ConsultaCARGO: TStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object C_ConsultaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_ConsultaDATAADMISSAO: TDateField
      FieldName = 'DATAADMISSAO'
    end
    object C_ConsultaDATAAUMENTO: TDateField
      FieldName = 'DATAAUMENTO'
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ConsultaPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Size = 1
    end
    object C_ConsultaULTIMOPGTO: TDateField
      FieldName = 'ULTIMOPGTO'
    end
    object C_ConsultaULTIMOVALORPAGO: TBCDField
      FieldName = 'ULTIMOVALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIdade: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Idade'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Listagem de Funcion'#225'rios'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37466.4636168866
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 632
    Top = 112
  end
end

inherited RptAgentes: TRptAgentes
  Left = 24
  Top = 70
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 190
      Caption = 'Relat'#243'rio de Agente'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15456728
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        Sorted = csDown
        Width = 265
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone 1'
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCONTATO: TdxDBGridMaskColumn
        Visible = False
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Visible = False
        Width = 201
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaJUROSFACTORY: TdxDBGridCurrencyColumn
        Caption = 'Percentual'
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSFACTORY'
        Nullable = False
      end
      object dbgConsultaTAXASFACTORY: TdxDBGridCurrencyColumn
        Caption = 'Taxa'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXASFACTORY'
        Nullable = False
      end
      object dbgConsultaDESC_PAIS: TdxDBGridMaskColumn
        Caption = 'Pa'#237's'
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_PAIS'
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
      'Select f.*, p.descricao as desc_pais from favorecidos f'
      'left join paises p on f.pais=p.pais'
      'where f.tipofavorecido = 7'
      'order by f.nome')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Origin = 'FAVORECIDOS.CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaPAIS: TIntegerField
      FieldName = 'PAIS'
      Origin = 'FAVORECIDOS.PAIS'
    end
    object C_ConsultaFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ConsultaFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAVORECIDOS.FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'FAVORECIDOS.CONTATO'
      Size = 30
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'FAVORECIDOS.EMAIL'
      Size = 40
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Origin = 'FAVORECIDOS.TIPOATIVIDADE'
    end
    object C_ConsultaPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'FAVORECIDOS.PLANOPAGAMENTO'
    end
    object C_ConsultaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
    end
    object C_ConsultaLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Origin = 'FAVORECIDOS.LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Origin = 'FAVORECIDOS.TAXAVEL'
      Size = 1
    end
    object C_ConsultaTAX: TIntegerField
      FieldName = 'TAX'
      Origin = 'FAVORECIDOS.TAX'
    end
    object C_ConsultaEIN: TStringField
      FieldName = 'EIN'
      Origin = 'FAVORECIDOS.EIN'
      Size = 10
    end
    object C_ConsultaSSN: TStringField
      FieldName = 'SSN'
      Origin = 'FAVORECIDOS.SSN'
      Size = 11
    end
    object C_ConsultaTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'FAVORECIDOS.TABELAPRECO'
    end
    object C_ConsultaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'FAVORECIDOS.DESATIVADO'
      Size = 1
    end
    object C_ConsultaEXIGIVEL1099: TStringField
      FieldName = 'EXIGIVEL1099'
      Origin = 'FAVORECIDOS.EXIGIVEL1099'
      Size = 1
    end
    object C_ConsultaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Origin = 'FAVORECIDOS.TIPOENTREGA'
    end
    object C_ConsultaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'FAVORECIDOS.DATACADASTRO'
    end
    object C_ConsultaSITE: TStringField
      FieldName = 'SITE'
      Origin = 'FAVORECIDOS.SITE'
      Size = 80
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'FAVORECIDOS.OBS'
      Size = 255
    end
    object C_ConsultaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'FAVORECIDOS.IMPORTACAO'
    end
    object C_ConsultaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'FAVORECIDOS.SITUACAO'
      Size = 1
    end
    object C_ConsultaCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'FAVORECIDOS.CARGO'
    end
    object C_ConsultaLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Origin = 'FAVORECIDOS.LOGOTIPO'
      Size = 150
    end
    object C_ConsultaJUROSFACTORY: TBCDField
      FieldName = 'JUROSFACTORY'
      Origin = 'FAVORECIDOS.JUROSFACTORY'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTAXASFACTORY: TBCDField
      FieldName = 'TAXASFACTORY'
      Origin = 'FAVORECIDOS.TAXASFACTORY'
      Precision = 18
      Size = 2
    end
    object C_ConsultaFLOATINGFACTORY: TBCDField
      FieldName = 'FLOATINGFACTORY'
      Origin = 'FAVORECIDOS.FLOATINGFACTORY'
      Precision = 18
      Size = 2
    end
    object C_ConsultaMEMO_CHECK: TStringField
      FieldName = 'MEMO_CHECK'
      Origin = 'FAVORECIDOS.MEMO_CHECK'
      Size = 255
    end
    object C_ConsultaCREDITO: TBCDField
      FieldName = 'CREDITO'
      Origin = 'FAVORECIDOS.CREDITO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'FAVORECIDOS.CONTA'
    end
    object C_ConsultaNUMERO_REVENDA: TStringField
      FieldName = 'NUMERO_REVENDA'
      Origin = 'FAVORECIDOS.NUMERO_REVENDA'
    end
    object C_ConsultaTIPO_FUNC: TStringField
      FieldName = 'TIPO_FUNC'
      Origin = 'FAVORECIDOS.TIPO_FUNC'
      Size = 1
    end
    object C_ConsultaDATANASC: TDateField
      FieldName = 'DATANASC'
      Origin = 'FAVORECIDOS.DATANASC'
    end
    object C_ConsultaCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Origin = 'FAVORECIDOS.CAMPO01'
      Size = 255
    end
    object C_ConsultaCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Origin = 'FAVORECIDOS.CAMPO02'
      Size = 255
    end
    object C_ConsultaCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Origin = 'FAVORECIDOS.CAMPO03'
      Size = 255
    end
    object C_ConsultaCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Origin = 'FAVORECIDOS.CAMPO04'
      Size = 255
    end
    object C_ConsultaCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Origin = 'FAVORECIDOS.CAMPO05'
      Size = 255
    end
    object C_ConsultaCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Origin = 'FAVORECIDOS.CAMPO06'
      Size = 255
    end
    object C_ConsultaCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Origin = 'FAVORECIDOS.CAMPO07'
      Size = 255
    end
    object C_ConsultaCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Origin = 'FAVORECIDOS.CAMPO08'
      Size = 255
    end
    object C_ConsultaCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Origin = 'FAVORECIDOS.CAMPO09'
      Size = 255
    end
    object C_ConsultaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'FAVORECIDOS.CAMPO10'
      Size = 255
    end
    object C_ConsultaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'FAVORECIDOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaISVENDEDOR: TStringField
      FieldName = 'ISVENDEDOR'
      Origin = 'FAVORECIDOS.ISVENDEDOR'
      Size = 1
    end
    object C_ConsultaCONTAPAGAMENTO: TIntegerField
      FieldName = 'CONTAPAGAMENTO'
      Origin = 'FAVORECIDOS.CONTAPAGAMENTO'
    end
    object C_ConsultaCONTADESPESAS: TIntegerField
      FieldName = 'CONTADESPESAS'
      Origin = 'FAVORECIDOS.CONTADESPESAS'
    end
    object C_ConsultaULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
      Origin = 'FAVORECIDOS.ULTCOMPRA'
    end
    object C_ConsultaULTVALORCOMPRA: TBCDField
      FieldName = 'ULTVALORCOMPRA'
      Origin = 'FAVORECIDOS.ULTVALORCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Origin = 'FAVORECIDOS.PERIODICIDADE'
      Size = 1
    end
    object C_ConsultaDATAADIMISSAO: TDateField
      FieldName = 'DATAADIMISSAO'
      Origin = 'FAVORECIDOS.DATAADIMISSAO'
    end
    object C_ConsultaDATADEMISSAO: TDateField
      FieldName = 'DATADEMISSAO'
      Origin = 'FAVORECIDOS.DATADEMISSAO'
    end
    object C_ConsultaDATAAUMENTO: TDateField
      FieldName = 'DATAAUMENTO'
      Origin = 'FAVORECIDOS.DATAAUMENTO'
    end
    object C_ConsultaAGRUPARPORITEM: TStringField
      FieldName = 'AGRUPARPORITEM'
      Origin = 'FAVORECIDOS.AGRUPARPORITEM'
      Size = 1
    end
    object C_ConsultaRELACIONAMENTO: TIntegerField
      FieldName = 'RELACIONAMENTO'
      Origin = 'FAVORECIDOS.RELACIONAMENTO'
    end
    object C_ConsultaDESCRICAORELAC: TStringField
      FieldName = 'DESCRICAORELAC'
      Origin = 'FAVORECIDOS.DESCRICAORELAC'
      Size = 25
    end
    object C_ConsultaINICIOSEMANA: TIntegerField
      FieldName = 'INICIOSEMANA'
      Origin = 'FAVORECIDOS.INICIOSEMANA'
    end
    object C_ConsultaDIASPERIODO: TIntegerField
      FieldName = 'DIASPERIODO'
      Origin = 'FAVORECIDOS.DIASPERIODO'
    end
    object C_ConsultaQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
      Origin = 'FAVORECIDOS.QUALIDADE'
    end
    object C_ConsultaZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'FAVORECIDOS.ZONA'
    end
    object C_ConsultaGRUPOCLIENTE: TIntegerField
      FieldName = 'GRUPOCLIENTE'
      Origin = 'FAVORECIDOS.GRUPOCLIENTE'
    end
    object C_ConsultaGRAURELAC: TIntegerField
      FieldName = 'GRAURELAC'
      Origin = 'FAVORECIDOS.GRAURELAC'
    end
    object C_ConsultaULTIMOPGTO: TDateField
      FieldName = 'ULTIMOPGTO'
      Origin = 'FAVORECIDOS.ULTIMOPGTO'
    end
    object C_ConsultaULTIMOVALORPAGO: TBCDField
      FieldName = 'ULTIMOVALORPAGO'
      Origin = 'FAVORECIDOS.ULTIMOVALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'FAVORECIDOS.SEXO'
      Size = 1
    end
    object C_ConsultaDESC_PAIS: TStringField
      FieldName = 'DESC_PAIS'
      Origin = 'PAISES.DESC_PAIS'
      Size = 25
    end
    object C_ConsultaPreviewEnd: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Relat'#243'rio de Agente'
    OnRefresh = FormsComponentRefresh
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37411.6423440393
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object ppmGrid: TTS_PopupMenu
    Left = 113
    Top = 210
    object MostrarEndereo1: TMenuItem
      Caption = 'Mostrar Endere'#231'o'
      OnClick = MostrarEndereo1Click
    end
  end
end

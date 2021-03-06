inherited RptAnaliseFornecedor: TRptAnaliseFornecedor
  Left = 90
  Top = 108
  Height = 463
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 444
      Caption = 'Relat'#243'rio de An'#225'lise de Compra do Fornecedor'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    Height = 386
    inherited pnDados: TTS_Panel
      Height = 2
      Color = 15196656
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 2
      Height = 365
      Bands = <
        item
          Caption = 'Dados do Fornecedor'
          Width = 317
        end
        item
          Caption = #218'ltima Compra'
          Width = 115
        end
        item
          Caption = 'Volume Comprado'
          Width = 232
        end>
      KeyField = 'FAVORECIDO'
      BandColor = 15461355
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      PreviewFieldName = 'PreviewEnd'
      PreviewLines = 1
      ShowBands = True
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        Sorted = csUp
        Width = 189
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 196
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaDESC_PAIS: TdxDBGridMaskColumn
        Caption = 'Pa'#237's'
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_PAIS'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaPAIS: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAIS'
      end
      object dbgConsultaLIMITECREDITO: TdxDBGridMaskColumn
        Alignment = taRightJustify
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LIMITECREDITO'
      end
      object dbgConsultaPreviewEnd: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        Width = 502
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PreviewEnd'
      end
      object dbgConsultaULTCOMPRA: TdxDBGridDateColumn
        Alignment = taCenter
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTCOMPRA'
      end
      object dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn
        Alignment = taRightJustify
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTVALORCOMPRA'
      end
      object dbgConsultaVOLUME0_30: TdxDBGridMaskColumn
        Alignment = taRightJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 57
        BandIndex = 2
        RowIndex = 0
        FieldName = 'VOLUME0_30'
      end
      object dbgConsultaVOLUME31_60: TdxDBGridMaskColumn
        Alignment = taRightJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 2
        RowIndex = 0
        FieldName = 'VOLUME31_60'
      end
      object dbgConsultaVOLUME61_90: TdxDBGridMaskColumn
        Alignment = taRightJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 2
        RowIndex = 0
        FieldName = 'VOLUME61_90'
      end
      object dbgConsultaVOLUMEANO: TdxDBGridMaskColumn
        Alignment = taRightJustify
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 2
        RowIndex = 0
        FieldName = 'VOLUMEANO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 367
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 386
    inherited btSair: TTS_SpeedButton
      Top = 341
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
      'select f.*,'
      '  ( select sum(e.total)  from entradas e'
      '    where e.tipopadrao = 101 and e.situacao = '#39'N'#39
      '     and e.data between :dataI30'
      '       and :dataF30'
      '    and e.favorecido = f.favorecido)'
      '    as volume0_30,'
      '  ( select sum(e.total)  from entradas e'
      '    where e.tipopadrao = 101 and e.situacao = '#39'N'#39
      '     and e.data between :dataI60'
      '       and :dataF60'
      '    and e.favorecido = f.favorecido)'
      '    as volume31_60,'
      '  ( select sum(e.total)  from entradas e'
      '    where e.tipopadrao = 101 and e.situacao = '#39'N'#39
      '     and e.data between :dataI90'
      '       and :dataF90'
      '    and e.favorecido = f.favorecido)'
      '    as volume61_90,'
      '  ( select sum(e.total)  from entradas e'
      '    where e.tipopadrao = 101 and e.situacao = '#39'N'#39
      '     and e.data between :dataIAno'
      '       and :dataFAno'
      '    and e.favorecido = f.favorecido)'
      '    as volumeano'
      'from favorecidos f'
      'left join paises p on f.pais = p.pais'
      'where f.tipofavorecido = 2'
      'and  f.desativado = '#39'N'#39)
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dataI30'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataF30'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataI60'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DataF60'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataI90'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataF90'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataIAno'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataFAno'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftDateTime
        Name = 'dataI30'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataF30'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataI60'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DataF60'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataI90'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataF90'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataIAno'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataFAno'
        ParamType = ptUnknown
      end>
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
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaPAIS: TIntegerField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS'
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
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaPreviewEnd: TStringField
      DisplayWidth = 100
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaVOLUME0_30: TFloatField
      FieldName = 'VOLUME0_30'
    end
    object C_ConsultaVOLUME31_60: TFloatField
      FieldName = 'VOLUME31_60'
    end
    object C_ConsultaVOLUME61_90: TFloatField
      FieldName = 'VOLUME61_90'
    end
    object C_ConsultaVOLUMEANO: TFloatField
      FieldName = 'VOLUMEANO'
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 511
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6253955556
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
    Caption = 'Relat'#243'rio de An'#225'lise de Compra do Fornecedor'
    OnRefresh = FormsComponentRefresh
  end
  object Q_ULTCompra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select entrada from entradas'
      'where data=:data'
      'and favorecido=:fav')
    Left = 607
    Top = 186
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

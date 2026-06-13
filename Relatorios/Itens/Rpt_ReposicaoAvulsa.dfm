inherited RptReposicaoAvulsa: TRptReposicaoAvulsa
  Left = 109
  Top = 83
  Width = 1020
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1012
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 222
      Caption = 'Reposi'#231#227'o de Gondolas'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 978
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 951
    end
  end
  inherited pnGrid: TPanel
    Width = 959
    inherited pnDados: TTS_Panel
      Width = 959
      Color = 14019327
      object cbEstoque: TTS_CheckBox
        Left = 6
        Top = 2
        Width = 187
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 0
        Caption = 'Que Possuem Estoque '
        StyleController = DMProjeto.esItens
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 959
      KeyField = 'ITEM'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'Codigo'
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaATUAL: TdxDBGridCurrencyColumn
        Caption = 'Est. Atual'
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUAL'
        Nullable = False
      end
      object dbgConsultaQTDDEPOSITO: TdxDBGridCurrencyColumn
        Caption = 'Est. Deposito'
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDDEPOSITO'
        Nullable = False
      end
      object dbgConsultaESTOQUEMINIMO: TdxDBGridCurrencyColumn
        Caption = 'Est. Minimo'
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEMINIMO'
        Nullable = False
      end
      object dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaLOCALIZACAO: TdxDBGridMaskColumn
        Caption = 'Localiza'#231#227'o'
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALIZACAO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 959
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
  object TS_BitBtn1: TTS_BitBtn [3]
    Left = 392
    Top = 40
    Width = 185
    Height = 17
    Caption = 'Processar Estoque Reposi'#231#227'o'
    TabOrder = 3
    OnClick = TS_BitBtn1Click
    Transparent = False
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'SELECT ir.item, ir.codigo, ir.descricao, ir.atual, ir.estoquemin' +
        'imo, ir.descricaogrupo, ir.localizacao,'
      'ia.estoquealmox as QTDDeposito, f.descricao as fabricante'
      'FROM itensreposicao IR'
      'INNER JOIN itensalmox IA ON IR.item = IA.item'
      'inner join itens i on i.item = ir.item'
      'inner join fabricantes f on f.fabricante = i.fabricante'
      'WHERE IA.almoxarifado = 39123698  AND IA.estoquealmox > 0')
    Left = 408
    Top = 108
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaATUAL: TBCDField
      FieldName = 'ATUAL'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 15
    end
    object C_ConsultaQTDDEPOSITO: TBCDField
      FieldName = 'QTDDEPOSITO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38968.6410702199
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Top = 240
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Reposi'#231#227'o de Gondolas'
  end
end

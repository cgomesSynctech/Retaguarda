inherited RptReposicaoGondolas: TRptReposicaoGondolas
  Left = 152
  Top = 164
  Width = 793
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 785
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 222
      Caption = 'Reposi'#231#227'o de Gondolas'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 751
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 724
    end
  end
  inherited pnGrid: TPanel
    Width = 732
    inherited pnDados: TTS_Panel
      Width = 732
      Color = 14019327
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 732
      KeyField = 'ITEM'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaLOCALIZACAO: TdxDBGridMaskColumn
        Caption = 'Localiza'#231#227'o'
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALIZACAO'
      end
      object dbgConsultaATUAL: TdxDBGridCurrencyColumn
        Caption = 'Estoque Gondola'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUAL'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUEMINIMO: TdxDBGridCurrencyColumn
        Caption = 'Ponto Reposi'#231#227'o'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEMINIMO'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaMININOREPOR: TdxDBGridCurrencyColumn
        Caption = 'Minimo a Repor'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MININOREPOR'
        DisplayFormat = '0.00'
        Nullable = False
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 732
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
      'select I.ITEM,I.CODIGO, I.DESCRICAO,'
      'Ia.estoquealmox As Atual,'
      'i.qtdmingondola As EstoqueMinimo,'
      
        '(i.qtdemaximo - (i.qtdmingondola + Ia.estoquealmox))   as Minino' +
        'Repor,'
      'l.descricao as Localizacao'
      'from ITENS I '
      'Left join localizacoes l on l.localizacao = i.localizacao'
      'LEFT JOIN ItensAlmox ia on i.item = ia.item'
      
        'where ia.almoxarifado = (select first 1 almoxarifado from almoxa' +
        'rifados a where a.controlegondola = '#39'S'#39')'
      'and Ia.estoquealmox < i.qtdmingondola')
    Left = 408
    Top = 108
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
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
    object C_ConsultaMININOREPOR: TBCDField
      FieldName = 'MININOREPOR'
      Precision = 18
      Size = 3
    end
    object C_ConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 15
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

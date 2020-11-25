inherited RptPedidosPendentes: TRptPedidosPendentes
  Left = 208
  Top = 152
  Width = 800
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 784
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 412
      Caption = 'Relat'#243'rio de Pedidos de Compra Pendentes'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 758
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 731
    end
  end
  inherited pnGrid: TPanel
    Width = 731
    inherited pnDados: TTS_Panel
      Width = 731
      Color = 15196656
      Visible = False
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 731
      KeyField = 'ENTRADA'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = '# Pedido'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaF_NOME: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Width = 254
        BandIndex = 0
        RowIndex = 0
        FieldName = 'F_NOME'
      end
      object dbgConsultaENTRADA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgConsultaTOTAL: TdxDBGridCurrencyColumn
        Caption = 'Total'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        Nullable = False
      end
      object dbgConsultaPREVISAOENTREGA: TdxDBGridDateColumn
        Caption = 'Previs'#227'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PREVISAOENTREGA'
      end
      object dbgConsultaS_STATUS: TdxDBGridMaskColumn
        Caption = 'Status'
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'S_STATUS'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 731
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
      'select '
      '  f.favorecido, '
      '  f.nome as F_NOME, '
      '  e.entrada, '
      '  e.data, '
      '  e.total, '
      '  e.numero, '
      '  e.previsaoentrega, '
      '  se.descricao as S_Status'
      'from entradas e'
      'join favorecidos f on f.favorecido = e.favorecido'
      'join statusentradas se on se.status = e.status'
      'where f.tipofavorecido = 2'
      'and e.tipopadrao = 102 '
      'and e.situacao = '#39'N'#39' and (e.status = '#39'P'#39' or e.status = '#39'L'#39')'
      'order by e.data')
  end
  inherited C_Consulta: TClientDataSet
    Left = 410
    Top = 217
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_ConsultaF_NOME: TStringField
      FieldName = 'F_NOME'
      Origin = 'FAVORECIDOS.F_NOME'
      Size = 50
    end
    object C_ConsultaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADAS.ENTRADA'
      Required = True
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ENTRADAS.DATA'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'ENTRADAS.NUMERO'
      Size = 12
    end
    object C_ConsultaPREVISAOENTREGA: TDateField
      FieldName = 'PREVISAOENTREGA'
      Origin = 'ENTRADAS.PREVISAOENTREGA'
    end
    object C_ConsultaS_STATUS: TStringField
      FieldName = 'S_STATUS'
      Origin = 'STATUSENTRADAS.S_STATUS'
      Size = 30
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37475.5974827431
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
    Caption = 'Relat'#243'rio de Pedidos de Compra Pendentes'
  end
end

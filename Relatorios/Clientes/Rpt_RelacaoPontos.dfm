inherited RptRelacaoPontos: TRptRelacaoPontos
  Left = 318
  Top = 148
  Caption = 'RptRelacaoPontos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    inherited lbCaption: TdxfLabel
      Width = 287
      Caption = 'Rela'#231#227'o de Pontos Por Cliente'
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      object TS_Label1: TTS_Label
        Left = 48
        Top = 4
        Width = 65
        Caption = 'Pontua'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lckPontuacoes: TTS_LookupComboBox
        Left = 121
        Top = 2
        Width = 203
        TabOrder = 0
        StyleController = DMProjeto.esClientes
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'PONTUACAO'
        ListSource = C_PontuacoesDs
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'NOME'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'total'
              SummaryFormat = '>total=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'valorresgate'
              SummaryFormat = '>valorresgate=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icsaldo'
              SummaryFormat = '>icsaldo=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'DATA'
              SummaryFormat = '>DATA=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'total;sum'
        'valorresgate;sum'
        'icsaldo;sum'
        'DATA;COUNT')
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        Sorted = csUp
        Visible = False
        Width = 391
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        GroupIndex = 0
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaTOTAL: TdxDBGridCurrencyColumn
        Caption = 'Compras'
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaVALORRESGATE: TdxDBGridCurrencyColumn
        Caption = 'Resgate'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORRESGATE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaicSaldo: TdxDBGridColumn
        Caption = 'Saldo'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSaldo'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      inherited cbFullSelect: TTS_CheckBox
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
    Left = 625
    Top = 363
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select F.Nome,s.data,s.Total, 0.00 As VALORRESGATE'
      'FROM saidas s'
      '   inner join favorecidos f on f.favorecido = s.favorecido'
      'WHERE S.DATA >= :DATAI AND S.DATA <= :DATAF '
      'and s.baixaestoque = '#39'S'#39' and s.situacao = '#39'N'#39' '
      'UNION'
      'select F.Nome,P.data,0.00 as Total,P.VALORRESGATE'
      'FROM PONTUACAORESGATES P'
      '   inner join favorecidos f on f.favorecido = p.favorecido'
      'WHERE p.DATA >= :DATAI AND p.DATA <= :DATAF')
    Left = 414
    Top = 118
    ParamData = <
      item
        DataType = ftTypedBinary
        Name = 'DATAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptUnknown
      end
      item
        DataType = ftTypedBinary
        Name = 'DATAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptUnknown
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Left = 417
    Top = 263
  end
  inherited P_Consulta: TDataSetProvider
    Left = 415
    Top = 165
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 416
    Top = 214
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaicSaldo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSaldo'
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_ConsultaVALORRESGATE: TBCDField
      FieldName = 'VALORRESGATE'
      Precision = 18
      Size = 3
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 629
    Top = 155
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38579.623394456
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited Q_SQLReport: TIBQuery
    Left = 588
    Top = 312
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 628
    Top = 110
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Caption = 'Rela'#231#227'o de Pontos Por Cliente'
    Left = 607
    Top = 216
  end
  object Q_Pontuacoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PONTUACOES WHERE FECHADA IS NULL')
    Left = 504
    Top = 120
  end
  object P_Pontuacoes: TDataSetProvider
    DataSet = Q_Pontuacoes
    Constraints = True
    Options = [poAllowCommandText]
    Left = 507
    Top = 167
  end
  object C_Pontuacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Pontuacoes'
    OnCalcFields = C_ConsultaCalcFields
    Left = 506
    Top = 216
    object C_PontuacoesPONTUACAO: TIntegerField
      FieldName = 'PONTUACAO'
      Required = True
    end
    object C_PontuacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_PontuacoesINICIO: TDateField
      FieldName = 'INICIO'
    end
    object C_PontuacoesFIM: TDateField
      FieldName = 'FIM'
    end
    object C_PontuacoesFATORPONTO: TBCDField
      FieldName = 'FATORPONTO'
      Precision = 18
      Size = 3
    end
    object C_PontuacoesMINIMORESGATE: TBCDField
      FieldName = 'MINIMORESGATE'
      Precision = 18
      Size = 3
    end
    object C_PontuacoesFECHADA: TStringField
      FieldName = 'FECHADA'
      FixedChar = True
      Size = 1
    end
  end
  object C_PontuacoesDs: TDataSource
    DataSet = C_Pontuacoes
    Left = 507
    Top = 265
  end
end

inherited RptComissaoSaida: TRptComissaoSaida
  Left = 229
  Top = 103
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Shape1: TTS_Shape [0]
    Left = 560
    Top = 224
    Width = 25
    Height = 25
    Transparent = False
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 192
      Caption = 'Comiss'#245'es por Item'
      Effect3D.ShadowedColor = 12240214
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = 7
        Top = 5
        Width = 44
        Alignment = taLeftJustify
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbNomeCliente: TTS_Label
        Left = 54
        Top = 5
        Width = 258
        Alignment = taLeftJustify
        Caption = 'lbNomeCliente'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 319
        Top = 5
        Width = 61
        Alignment = taLeftJustify
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbNomeVendedor: TTS_Label
        Left = 382
        Top = 5
        Width = 290
        Alignment = taLeftJustify
        Caption = 'lbNomeVendedor'
        FormatoTabela = False
        LinkToResult = 0
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'SAIDAITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'SAIDAITEM'
              SummaryFormat = '>CODIGO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'SUBTOTALITEM'
              SummaryFormat = '>SUBTOTALITEM=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icValorComissao'
              SummaryFormat = '>icValorComissao=#,###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icPercComissao'
              SummaryFormat = '>icPercComissao=#,###,###,##0.00 %'
              SummaryType = cstAvg
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT'
        'SUBTOTALITEM;SUM'
        'icValorComissao;SUM'
        'icPercComissao;AVG')
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterField = 'SAIDAITEM'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCITEM: TdxDBGridMaskColumn
        Caption = 'Item'
        HeaderAlignment = taCenter
        Width = 210
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCITEM'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Qtd.'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn
        Caption = 'SubTotal'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaRATEIODESCONTO: TdxDBGridCurrencyColumn
        Caption = 'Rateio Desconto'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEIODESCONTO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn
        Caption = 'C'#243'digo Barras'
        HeaderAlignment = taCenter
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOBARRAS'
      end
      object dbgConsultaicPercComissao: TdxDBGridColumn
        Caption = 'Perc. Comiss'#227'o'
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icPercComissao'
        SummaryFooterType = cstAvg
        SummaryFooterFormat = '#,###,###,##0.00 %'
      end
      object dbgConsultaicValorComissao: TdxDBGridColumn
        Caption = 'Valor Comiss'#227'o'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValorComissao'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,###,##0.00'
      end
      object dbgConsultaPRECOTABELA: TdxDBGridCurrencyColumn
        Caption = 'Pre'#231'o de Tabela'
        HeaderAlignment = taCenter
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOTABELA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
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
    Top = 335
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select s.saida, s.numero, s.data, s.pcomissao, s.total, s.totali' +
        'tens123, '
      
        's.vendedor, si.Quantidade, si.Preco, si.SubTotalItem, si.RateioD' +
        'esconto, i.Comissao, i.TipoItem, '
      
        'g.Comissao as ComissGrupo, fu.Comissao as ComissVend, tp.Add_Com' +
        'issao,'
      
        'si.precotabela, i.grupocomissao, si.desconto, fu.Nome as NomeVen' +
        'dedor,'
      
        'fc.Nome as NomeCliente, si.descricao as descitem, i.codigo, i.re' +
        'ferencia,'
      'i.codigobarras, si.saidaitem, pp.COMISSAO as ComissaoPlano'
      'from   Saidas s '
      'LEFT JOIN SaidasItens si ON si.Saida = s.Saida'
      'LEFT JOIN Itens i ON i.Item = si.Item'
      'LEFT JOIN Favorecidos fu ON s.Vendedor = fu.Favorecido'
      'LEFT JOIN Favorecidos fc ON s.Favorecido = fc.Favorecido'
      'LEFT JOIN TabelasPreco tp ON tp.TabelaPreco = si.TabelaPreco'
      'LEFT JOIN Grupos g ON i.Grupo = g.Grupo'
      
        'LEFT JOIN PlanosPagamento pp On s.planopagamento = pp.planopagam' +
        'ento'
      'Where  s.Saida = :saida'
      'and s.CalcComissao = '#39'S'#39
      'order by s.Vendedor, si.Saida, si.Ordem ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'saida'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_ConsultaTOTALITENS123: TFloatField
      FieldName = 'TOTALITENS123'
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaPCOMISSAO: TFloatField
      FieldName = 'PCOMISSAO'
    end
    object C_ConsultaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_ConsultaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_ConsultaRATEIODESCONTO: TFloatField
      FieldName = 'RATEIODESCONTO'
    end
    object C_ConsultaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object C_ConsultaCOMISSGRUPO: TBCDField
      FieldName = 'COMISSGRUPO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCOMISSVEND: TBCDField
      FieldName = 'COMISSVEND'
      Precision = 18
      Size = 2
    end
    object C_ConsultaGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
    end
    object C_ConsultaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object C_ConsultaNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 50
    end
    object C_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object C_ConsultaDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 255
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 13
    end
    object C_ConsultaSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
    end
    object C_ConsultaicPercComissao: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPercComissao'
      DisplayFormat = '#,###,###,##0.00 %'
    end
    object C_ConsultaicValorComissao: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValorComissao'
      DisplayFormat = '#,###,###,##0.00'
    end
    object C_ConsultaADD_COMISSAO: TBCDField
      FieldName = 'ADD_COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPRECOTABELA: TFloatField
      FieldName = 'PRECOTABELA'
    end
    object C_ConsultaCOMISSAOPLANO: TBCDField
      FieldName = 'COMISSAOPLANO'
      Precision = 18
      Size = 2
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38337.4130845833
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 536
    Top = 96
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Comiss'#245'es por Item'
  end
end

inherited RptComissaoLiquidezItem: TRptComissaoLiquidezItem
  Left = 67
  Top = 81
  Width = 929
  Height = 536
  Caption = 'Funcion'#225'rios'
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 913
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 388
      Caption = 'Comiss'#245'es na Liquidez Por item Vendido'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 887
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 860
    end
  end
  inherited pnGrid: TPanel
    Width = 860
    Height = 460
    inherited pnDados: TTS_Panel
      Width = 860
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = 6
        Top = 4
        Width = 58
        Caption = 'Periodo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 190
        Top = 4
        Width = 26
        Caption = 'At'#233
        FormatoTabela = False
        LinkToResult = 0
      end
      object dtInicio: TTS_DateTimePicker
        Left = 64
        Top = 2
        Width = 120
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
        ButtonGlyph.Data = {
          AE040000424DAE0400000000000036040000280000000A0000000A0000000100
          0800000000007800000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Date = -700000
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object dtFim: TTS_DateTimePicker
        Left = 224
        Top = 2
        Width = 120
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
        ButtonGlyph.Data = {
          AE040000424DAE0400000000000036040000280000000A0000000A0000000100
          0800000000007800000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Date = -700000
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object cbCompetencia: TTS_CheckBox
        Left = 372
        Top = 2
        Width = 146
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        Caption = 'Compet'#234'ncia Maior Que:'
        StyleController = DMProjeto.esFuncionarios
        OnChange = cbCompetenciaChange
        DisableEdit = False
        Height = 19
      end
      object dtCompetencia: TTS_DateTimePicker
        Left = 520
        Top = 2
        Width = 120
        Enabled = False
        TabOrder = 3
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
        ButtonGlyph.Data = {
          AE040000424DAE0400000000000036040000280000000A0000000A0000000100
          0800000000007800000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Date = 39813
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 860
      Height = 419
      KeyField = 'SAIDA'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Numero'
              SummaryFormat = '>Numero=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'Total'
              SummaryFormat = '>Total=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Mediacomissao'
              SummaryFormat = '>Mediacomissao=#,###,##0.00'
              SummaryType = cstAvg
            end
            item
              SummaryField = 'ValorComissao'
              SummaryFormat = '>ValorComissao=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TotalComissao'
              SummaryFormat = '>TotalComissao=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'Numero;count;'
        'Total;SUM'
        'Mediacomissao;Avg;'
        'ValorComissao;SUM'
        'TotalComissao;SUM')
      object dbgConsultaNome: TdxDBGridColumn
        Caption = 'Vendedor'
        Sorted = csUp
        Visible = False
        Width = 206
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        GroupIndex = 0
      end
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'Opera'#231#227'o'
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        Caption = 'Compet'#234'ncia'
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgConsultaTOTAL: TdxDBGridCurrencyColumn
        Caption = 'Valor Venda'
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        Caption = 'Parcela'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn
        Caption = 'Valor PGTO.'
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
        Nullable = False
      end
      object dbgConsultaMEDIACOMISSAO: TdxDBGridCurrencyColumn
        Caption = 'M'#233'dia %'
        HeaderAlignment = taRightJustify
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MEDIACOMISSAO'
        SummaryFooterType = cstAvg
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaVALORCOMISSAO: TdxDBGridMaskColumn
        Caption = 'Com. Total'
        HeaderAlignment = taRightJustify
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORCOMISSAO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOTALCOMISSAO: TdxDBGridMaskColumn
        Caption = 'Com. Liq.'
        HeaderAlignment = taRightJustify
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALCOMISSAO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 441
      Width = 860
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 460
    inherited btSair: TTS_SpeedButton
      Top = 415
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      ' select v.nome,s.saida, '
      '       s.data,'
      '       t.competencia,'
      '       S.numero,'
      '       s.total,'
      '       t.parcela,'
      '       t.valorpago,'
      '       avg(coalesce(si.pcomissao,0)) as MediaComissao,'
      
        '       sum(((coalesce(si.pcomissao,0) / 100.00) * si.subtotalite' +
        'm)) as ValorComissao,'
      
        '       sum((cast((((coalesce(si.pcomissao,0) / 100.00) * si.subt' +
        'otalitem) / s.total) as numeric (15, 4)) * t.valorpago)) as tota' +
        'lcomissao'
      'FROM Saidas s'
      'inner join titulosareceber t on t.venda = s.saida'
      'inner join favorecidos v on v.favorecido = s.vendedor'
      'inner join saidasitens si on si.saida = s.saida'
      'where t.valorpago > 0'
      'and t.datapago >= :datai'
      'and t.datapago <= :dataf'
      'and t.competencia >= :datac'
      'group by v.nome,s.saida, '
      '       s.data,'
      '       t.competencia,'
      '       S.numero,'
      '       s.total,'
      '       t.parcela,'
      '       t.valorpago')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datac'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_ConsultaVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaMEDIACOMISSAO: TFloatField
      FieldName = 'MEDIACOMISSAO'
    end
    object C_ConsultaVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object C_ConsultaTOTALCOMISSAO: TFloatField
      FieldName = 'TOTALCOMISSAO'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 40652.6316625463
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Comiss'#245'es na Liquidez Por item Vendido'
  end
end

inherited RptServicosOficina: TRptServicosOficina
  Left = 164
  Width = 982
  Height = 563
  Caption = 'Relat'#243'rio Servi'#231'os com Oficina'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 966
    inherited lbCaption: TdxfLabel
      Width = 199
      Caption = 'Servi'#231'os com Oficina'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 932
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 905
    end
  end
  inherited pnGrid: TPanel
    Width = 913
    Height = 487
    inherited pnDados: TTS_Panel
      Width = 913
      Height = 34
      object TS_Label1: TTS_Label
        Left = 175
        Top = 10
        Width = 22
        Height = 15
        Caption = ' '#224' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 2
        Top = 10
        Width = 96
        Height = 20
        Caption = 'No per'#237'odo de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 100
        Top = 8
        Width = 81
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
      object DataF: TTS_DateTimePicker
        Left = 199
        Top = 8
        Width = 81
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 34
      Width = 913
      Height = 434
      KeyField = 'IDOFICINA'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'SUBTOTALITEM'
              SummaryFormat = '>SUBTOTALITEM=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QUANTIDADE'
              SummaryFormat = '>QUANTIDADE=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'dbgConsultaSummaryServicoOficina'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Data'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterType = cstCount
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Quantidade'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Caption = 'SubTotal'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
      end
      object dbgConsultaMECANICO: TdxDBGridMaskColumn
        Caption = 'Mec'#226'nico'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 290
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MECANICO'
      end
      object dbgConsultaIDOFICINA: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDOFICINA'
      end
      object dbgConsultaEMOFICINA: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Em Oficina'
        DisableEditor = True
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMOFICINA'
      end
      object dbgConsultaSERVICOPRONTO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Servi'#231'o Pronto'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICOPRONTO'
      end
      object dbgConsultaFINALIZADO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Finalizado'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FINALIZADO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 468
      Width = 913
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 487
    inherited btSair: TTS_SpeedButton
      Top = 442
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select s.saida, s.data, s.numero, ii.item, ii.codigo, si.descric' +
        'ao, si.preco, si.quantidade, si.subtotalitem,'
      'f.nome as mecanico, o.id as idoficina,'
      
        'case when o.emoficina = '#39'S'#39' then '#39'SIM'#39' else '#39'N'#195'O'#39' end as emofici' +
        'na,'
      
        'case when o.servicopronto = '#39'S'#39' then '#39'SIM'#39' else '#39'N'#195'O'#39' end as ser' +
        'vicopronto,'
      
        'case when o.finalizado = '#39'S'#39' then '#39'SIM'#39' else '#39'N'#195'O'#39' end as finali' +
        'zado'
      'from oficina o inner join saidas s on o.idsaida = s.saida'
      
        'inner join saidasitens si on (si.empresa = s.empresa and si.said' +
        'a = s.saida and si.pdv = s.pdv)'
      'inner join itens ii on si.item = ii.item'
      'left join favorecidos f on o.mecanico = f.favorecido'
      'where s.data >= :datai and s.data <= :dataf and ii.tipoitem = 3'
      'and s.situacao = '#39'N'#39' and si.situacao = '#39'N'#39
      'order by s.data asc, s.numero asc')
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
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_ConsultaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_ConsultaMECANICO: TStringField
      FieldName = 'MECANICO'
      Size = 50
    end
    object C_ConsultaIDOFICINA: TIntegerField
      FieldName = 'IDOFICINA'
      Required = True
    end
    object C_ConsultaEMOFICINA: TStringField
      FieldName = 'EMOFICINA'
      FixedChar = True
      Size = 3
    end
    object C_ConsultaSERVICOPRONTO: TStringField
      FieldName = 'SERVICOPRONTO'
      FixedChar = True
      Size = 3
    end
    object C_ConsultaFINALIZADO: TStringField
      FieldName = 'FINALIZADO'
      FixedChar = True
      Size = 3
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 42488.4089794097
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 680
    Top = 184
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Caption = 'Servi'#231'os com Oficina'
  end
end

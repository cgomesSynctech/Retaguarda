inherited RptInventario: TRptInventario
  Left = 95
  Top = 109
  Width = 798
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 790
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 223
      Caption = 'Relat'#243'rio de Invent'#225'rio'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 756
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 729
    end
  end
  inherited pnGrid: TPanel
    Width = 737
    inherited pnDados: TTS_Panel
      Width = 737
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 2
        Top = 5
        Width = 32
        Caption = 'Data:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dtData: TTS_DateTimePicker
        Left = 38
        Top = 2
        Width = 80
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esItens
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
        Date = 37621
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 737
      KeyField = 'ITEM'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'codigo'
              SummaryFormat = '>codigo=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'subtotal'
              SummaryFormat = '>subtotal=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'codigo;count'
        'subtotal;sum')
      object dbgConsultaitem: TdxDBGridColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Sorted = csUp
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Produto'
        Width = 239
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridCurrencyColumn
        Caption = 'Custo M'#233'dio'
        HeaderAlignment = taRightJustify
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
        Nullable = False
      end
      object dbgConsultaESTOQUEANT: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        Caption = 'Saldo Ant.'
        HeaderAlignment = taRightJustify
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEANT'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaENTRADAS: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        Caption = 'Entradas'
        HeaderAlignment = taRightJustify
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADAS'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaSAIDAS: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        Caption = 'Sa'#237'das'
        HeaderAlignment = taRightJustify
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAS'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUE: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        Caption = 'Estoque'
        HeaderAlignment = taRightJustify
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaSubTotal: TdxDBGridColumn
        Caption = 'Sub. Total'
        HeaderAlignment = taRightJustify
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaGrupo: TdxDBGridColumn
        Caption = 'Grupo'
        Sorted = csUp
        Visible = False
        Width = 220
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
        GroupIndex = 0
      end
      object dbgConsultaFabricante: TdxDBGridColumn
        Caption = 'Fabricante'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 619
    Top = 355
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 687
    Top = 365
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select iv.item, i.codigo, i.referencia, i.descricao, i.unidade, ' +
        'g.descricaogrupo as Grupo, f.descricao as Fabricante,'
      
        'iv.estoque, iv.customedio, iv.estoqueanterior, iv.entradas, iv.s' +
        'aidas,'
      '(iv.estoque *  iv.customedio) as SubTotal'
      'from inventario iv, itens i, grupos g, fabricantes f'
      'where iv.item = i.item and'
      '      i.grupo = g.grupo and'
      '      i.fabricante = f.fabricante and'
      '      iv.data = :dData')
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dData'
        ParamType = ptUnknown
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Top = 269
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'INVENTARIO.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Origin = 'INVENTARIO.CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaENTRADAS: TBCDField
      FieldName = 'ENTRADAS'
      Origin = 'INVENTARIO.ENTRADAS'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSAIDAS: TBCDField
      FieldName = 'SAIDAS'
      Origin = 'INVENTARIO.SAIDAS'
      Precision = 18
      Size = 3
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'INVENTARIO.ITEM'
      Required = True
    end
    object C_ConsultaESTOQUEANTERIOR: TBCDField
      FieldName = 'ESTOQUEANTERIOR'
      Origin = 'INVENTARIO.ESTOQUEANTERIOR'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object C_ConsultaGRUPO: TStringField
      FieldName = 'GRUPO'
      Required = True
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Invent'#225'rio'
    FirstEditField = dtData
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37420.488351794
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 476
    Top = 114
  end
end

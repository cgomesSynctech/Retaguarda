inherited RptExtratoEntradasx: TRptExtratoEntradasx
  Left = 10
  Top = 51
  Caption = 'M'#243'dulo de Itens'
  ClientHeight = 428
  ClientWidth = 747
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 747
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 189
      Caption = 'Extrato de Entradas'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 713
    end
  end
  inherited pnGrid: TPanel
    Width = 696
    Height = 400
    inherited RichEdit: TRichEdit
      TabOrder = 3
    end
    inherited pnDados: TTS_Panel
      Width = 696
      Height = 49
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 2
        Top = 6
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 125
        Top = 6
        Width = 16
        Alignment = taCenter
        Caption = #224
        FormatoTabela = False
        LinkToResult = 0
      end
      object btFiltro: TTS_SpeedButton
        Left = 130
        Top = 26
        Width = 106
        Height = 22
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '&Filtro de Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555500005577777777777777777500005000000000000000007500005088
          80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
          0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
          0F44F0750000508880FF0078088880750000508180F400007844807500005088
          80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
          0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
          00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
          55555555550BFFBB0000}
        ParentFont = False
        OnClick = btFiltroClick
        RepeatedClick = False
        Border = True
      end
      object btFornecedores: TTS_SpeedButton
        Left = 5
        Top = 26
        Width = 131
        Height = 22
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '&Escolhe Fornecedor(es)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btFornecedoresClick
        RepeatedClick = False
        Border = True
      end
      object TS_Label3: TTS_Label
        Left = 447
        Top = 29
        Width = 98
        Caption = 'Tipos de Itens:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataFim: TTS_DateTimePicker
        Left = 144
        Top = 2
        Width = 77
        TabOrder = 1
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
        Date = -700000
        DateOnError = deToday
        Height = 21
      end
      object edDataIni: TTS_DateTimePicker
        Left = 47
        Top = 2
        Width = 76
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
        Date = -700000
        DateOnError = deToday
        Height = 21
      end
      object peAgrupamento: TTS_PopupEdit
        Left = 548
        Top = 4
        Width = 147
        TabOrder = 2
        ReadOnly = True
        StyleController = DMProjeto.esItens
        Text = 'Agrupamento'
        PopupControl = clbAgrupamento
        PopupFormBorderStyle = pbsSysPanel
        LookupKeyValue = 0
        Height = 19
        StoredValues = 64
      end
      object lkTipoItem: TTS_LookupComboBox
        Left = 548
        Top = 25
        Width = 148
        TabOrder = 3
        StyleController = DMProjeto.esItens
        OnChange = lkTipoItemChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOITEM'
        ListSource = C_TiposItemDS
        LookupKeyValue = Null
        Height = 21
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 49
      Width = 696
      Height = 351
      KeyField = 'ID'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Codigo'
              SummaryFormat = '>Codigo=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'QUANTIDADE'
              SummaryFormat = '>QUANTIDADE=##,###,##0.###'
              SummaryType = cstSum
            end
            item
              SummaryField = 'SUBTOTALITEM'
              SummaryFormat = '>SUBTOTALITEM=##0.00,###'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      HighlightColor = clWindow
      HighlightTextColor = clWindowText
      ShowRowFooter = True
      RowFooterNodeFont.Height = -9
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'Codigo;count'
        'QUANTIDADE;sum;U'
        'SUBTOTALITEM;sum;U')
      object dbgConsultaDATA: TdxDBGridDateColumn
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        Caption = 'Invoice #'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '##,###,##0.###'
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        SummaryFooterFormat = '##0.00,###'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '##0.00,###'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Visible = False
        Width = 134
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCUSTO'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaFORNECEDOR: TdxDBGridMaskColumn
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORNECEDOR'
      end
      object dbgConsultaID: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaIDFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDOFORNECEDOR'
      end
      object dbgConsultaENTRADA: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgConsultaIDITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDITEM'
      end
    end
    object clbAgrupamento: TTS_CheckListBox
      Left = 224
      Top = 128
      Width = 121
      Height = 57
      OnClickCheck = clbAgrupamentoClickCheck
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'Fornecedor'
        'Grupo'
        'Fabricante')
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 400
    inherited btSair: TTS_SpeedButton
      Top = 353
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 476
    Top = 230
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 565
    Top = 231
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 446
    Top = 230
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select ei.entradaitem as ID, ei.item as IDitem, i.grupo as IDGRU' +
        'PO,'
      'e.data, i.codigo, ei.descricao as item, ei.preco, i.unidade,'
      'ei.quantidade, (ei.preco*ei.quantidade) as subtotalitem,'
      'ei.customedio, (ei.customedio*ei.quantidade) as subtotalcusto,'
      'e.numero as notafiscal, '
      'f.descricao as fabricante, g.descricaogrupo as grupo,'
      'ti.descricao as tipoitem,'
      'e.favorecido as  IDFornecedor,'
      'fr.nome as fornecedor,'
      'fr.tipofavorecido as TipoFavorecidoFornecedor,'
      'e.entrada'
      'From entradasitens ei'
      'Join entradas e On ei.entrada=e.entrada'
      'Join itens i On ei.item=i.item'
      'Left Join favorecidos fr On e.favorecido=fr.favorecido'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      'Left Join grupos g On i.grupo=g.grupo'
      'Left Join tipositens ti On i.tipoitem=ti.tipoitem'
      'where e.situacao = '#39'N'#39)
    Left = 652
    Top = 160
  end
  inherited C_ConsultaDS: TDataSource
    Left = 652
    Top = 271
  end
  inherited P_Consulta: TDataSetProvider
    Left = 652
    Top = 195
  end
  inherited C_Consulta: TClientDataSet
    Left = 652
    Top = 234
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaIDITEM: TIntegerField
      FieldName = 'IDITEM'
    end
    object C_ConsultaIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaITEM: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'ITEM'
      Size = 255
    end
    object C_ConsultaUNIDADE: TStringField
      DisplayLabel = 'Und.'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaQUANTIDADE: TBCDField
      DisplayLabel = 'Quant.'
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###,##0.###'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      DisplayLabel = 'Sub-Total'
      FieldName = 'SUBTOTALITEM'
      DisplayFormat = '##0.00,###'
    end
    object C_ConsultaCUSTOMEDIO: TBCDField
      DisplayLabel = 'Custo'
      FieldName = 'CUSTOMEDIO'
      DisplayFormat = '##0.00,###'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSUBTOTALCUSTO: TFloatField
      DisplayLabel = 'Sub-Total(C)'
      FieldName = 'SUBTOTALCUSTO'
      DisplayFormat = '##0.00,###'
    end
    object C_ConsultaNOTAFISCAL: TStringField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NOTAFISCAL'
      Size = 12
    end
    object C_ConsultaFABRICANTE: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object C_ConsultaGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Size = 30
    end
    object C_ConsultaTIPOITEM: TStringField
      DisplayLabel = 'Tipo do Item'
      FieldName = 'TIPOITEM'
      Size = 30
    end
    object C_ConsultaFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object C_ConsultaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Required = True
    end
    object C_ConsultaPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
    end
    object C_ConsultaIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object C_ConsultaTIPOFAVORECIDOFORNECEDOR: TIntegerField
      FieldName = 'TIPOFAVORECIDOFORNECEDOR'
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Extrato de Entradas'
    FirstEditField = edDataIni
    Left = 605
    Top = 151
  end
  inherited ppmDados: TTS_PopupMenu
    Left = 109
    Top = 92
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 109
    Top = 126
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 109
    Top = 161
  end
  inherited ppmImprimir: TTS_PopupMenu
    Left = 109
    Top = 264
  end
  inherited ppmSumarizacao: TTS_PopupMenu
    Left = 109
    Top = 195
  end
  inherited ppmExportacao: TTS_PopupMenu
    Left = 109
    Top = 230
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 570
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {0000000000000000200300003A020000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.367411331
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
    end
  end
  object C_TiposItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_TiposItemProvider'
    Left = 467
    Top = 296
    object C_TiposItemTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
    object C_TiposItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_TiposItemDS: TDataSource
    DataSet = C_TiposItem
    Left = 499
    Top = 296
  end
  object Q_TipoMovimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TIPOMOVIMENTO '
      'From TIPOSMOVIMENTO'
      'Where BAIXAESTOQUE='#39'S'#39
      'and tipopadrao = 101')
    Left = 281
    Top = 109
    object Q_TipoMovimentoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Q_TipoMovimentoTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Required = True
    end
  end
  object Q_TiposItem: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From TIPOSITENS'
      'where tipoitem  not in (4,7)'
      'Order By TipoItem')
    Left = 404
    Top = 296
  end
  object Q_TiposItemProvider: TDataSetProvider
    DataSet = Q_TiposItem
    Constraints = True
    Left = 436
    Top = 296
  end
end

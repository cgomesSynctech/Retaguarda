inherited RptItensConsignados: TRptItensConsignados
  Left = 38
  Top = 31
  Height = 461
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 358
      Caption = 'Itens Consignados com Fornecedores'
      Effect3D.ShadowedColor = 9027548
    end
    inherited lbDescricaoRelatorio: TTS_Label
      Left = 9
      Top = 22
      Width = 361
      Caption = 
        'Listagem dos itens que foram consignados com escolha do status d' +
        'os itens.'
    end
  end
  inherited pnGrid: TPanel
    Height = 389
    inherited pnDados: TTS_Panel
      Height = 47
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 270
        Top = 5
        Width = 45
        Caption = 'Status:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 15
        Top = 4
        Width = 78
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 173
        Top = 5
        Width = 18
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 173
        Top = 27
        Width = 18
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 2
        Top = 26
        Width = 91
        Caption = 'Per'#237'odo de Venda:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object ppeStatus: TTS_PopupEdit
        Left = 318
        Top = 2
        Width = 142
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ReadOnly = True
        StyleController = DMProjeto.esItens
        PopupControl = cklStatus
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = ppeStatusCloseUp
        LookupKeyValue = 0
        Height = 19
        StoredValues = 64
      end
      object DataI: TTS_DateTimePicker
        Left = 95
        Top = 2
        Width = 81
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 196
        Top = 2
        Width = 81
        TabOrder = 2
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
        UseEditMask = True
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object FiltroItens: TTS_PopupFiltrarItens
        Left = 465
        Top = 2
        Width = 137
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        AutoSelect = False
        StyleController = DMProjeto.esItens
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
        TS_FornecedorSelecionado = 0
        TS_PossuiEstoque = False
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        OnSelecionou = FiltroItensSelecionou
        Height = 19
      end
      object DataVendaF: TTS_DateTimePicker
        Left = 196
        Top = 24
        Width = 81
        TabOrder = 4
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
        UseEditMask = True
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object DataVendaI: TTS_DateTimePicker
        Left = 95
        Top = 24
        Width = 81
        TabOrder = 5
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 47
      Height = 323
      KeyField = 'ITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'QTD'
              SummaryFormat = '>QTD=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ESTOQUE'
              SummaryFormat = '>ESTOQUE=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ESTOQUECONSIGENTRADA'
              SummaryFormat = '>ESTOQUECONSIGENTRADA=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QTDDEV'
              SummaryFormat = '>QTDDEV=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QTDACERT'
              SummaryFormat = '>QTDACERT=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'QTD;SUM'
        'ESTOQUE;SUM'
        'ESTOQUECONSIGENTRADA;SUM'
        'QTDDEV;SUM'
        'QTDACERT;SUM')
      object dbgConsultaTIPOMOVIMENTO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Item'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 295
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Und'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Ref.'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaQTD: TdxDBGridCurrencyColumn
        Caption = 'Qtd Consignada'
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUE: TdxDBGridCurrencyColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUECONSIGENTRADA: TdxDBGridCurrencyColumn
        Caption = 'Estoque Consignado'
        HeaderAlignment = taCenter
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGENTRADA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaQTDDEV: TdxDBGridCurrencyColumn
        Caption = 'Qtd devolvida'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDDEV'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaQTDACERT: TdxDBGridCurrencyColumn
        Caption = 'Qtd acertada'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDACERT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00;-0.00'
        Nullable = False
      end
      object dbgConsultaQTDEVENDIDA: TdxDBGridMaskColumn
        Caption = 'Qtde. Vendida'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEVENDIDA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 370
      TabOrder = 4
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object cklStatus: TTS_CheckListBox
      Left = 25
      Top = 74
      Width = 121
      Height = 97
      BevelInner = bvNone
      ItemHeight = 13
      TabOrder = 3
      Visible = False
      DataSet = C_Status
      KeyField = 'STATUS'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 389
    inherited btSair: TTS_SpeedButton
      Top = 344
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select e.tipomovimento, ei.item, i.codigo, i.descricao,'
      'i.unidade, i.referencia, i.estoqueconsigentrada, i.estoque,'
      'sum(ei.quantidade) as qtd,'
      'sum(ei.qtddevolvido) as qtddev, sum(ei.qtdacertado) as qtdacert'
      ','
      '('
      'select count(si.quantidade)'
      'from saidasitens si'
      'inner join saidas s on si.saida = s.saida'
      'where s.tipopadrao = 1 and s.situacao = '#39'N'#39' and'
      'si.item = ei.item and s.data between :datasi and :datasf'
      ') as qtdevendida'
      ''
      'from entradas e'
      'left join entradasitens ei on e.entrada = ei.entrada'
      'left join itens i on ei.item = i.item'
      'where e.tipomovimento = 10'
      'group by e.tipomovimento, ei.item,i.codigo,'
      
        'i.descricao, i.unidade,i.referencia,i.estoqueconsigentrada,i.est' +
        'oque')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datasf'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Left = 413
    object C_ConsultaTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_ConsultaESTOQUECONSIGENTRADA: TBCDField
      FieldName = 'ESTOQUECONSIGENTRADA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTD: TBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDDEV: TBCDField
      FieldName = 'QTDDEV'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDACERT: TBCDField
      FieldName = 'QTDACERT'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDEVENDIDA: TIntegerField
      FieldName = 'QTDEVENDIDA'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Itens Consignados com Fornecedores'
    Left = 536
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37552.5867859838
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 650
    Top = 40
  end
  object Q_Status: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from statusentradasitens '
      'order by descricao')
    Left = 622
    Top = 118
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Left = 628
    Top = 170
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 632
    Top = 228
    object C_StatusSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUSENTRADASITENS.STATUS'
      Required = True
      Size = 1
    end
    object C_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSENTRADASITENS.DESCRICAO'
      Size = 30
    end
    object C_StatusORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'STATUSENTRADASITENS.ORDEM'
    end
    object C_StatusDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Origin = 'STATUSENTRADASITENS.DESCRICAO1'
      Size = 30
    end
    object C_StatusDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Origin = 'STATUSENTRADASITENS.DESCRICAO2'
      Size = 30
    end
    object C_StatusDESCRICAO3: TStringField
      FieldName = 'DESCRICAO3'
      Origin = 'STATUSENTRADASITENS.DESCRICAO3'
      Size = 30
    end
  end
  object C_StatusDS: TDataSource
    DataSet = Q_Status
    Left = 630
    Top = 290
  end
end

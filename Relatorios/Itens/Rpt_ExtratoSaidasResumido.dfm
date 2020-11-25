inherited RptExtratoSaidasResumido: TRptExtratoSaidasResumido
  Left = 15
  Top = 68
  Width = 773
  Height = 462
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 765
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 167
      Caption = 'Extrato de Sa'#237'das'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 731
    end
    inherited lbTemplate: TTS_Label
      Left = 417
    end
  end
  inherited pnGrid: TPanel
    Width = 712
    Height = 397
    inherited pnDados: TTS_Panel
      Width = 712
      Height = 24
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 0
        Top = 5
        Width = 46
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 128
        Top = 5
        Width = 16
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object btCliente: TTS_SpeedButton
        Left = 239
        Top = 2
        Width = 97
        Height = 21
        Caption = 'Filtro Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          0A050000424D0A050000000000000A0400002800000010000000100000000100
          08000000000000010000D10E0000D10E0000F5000000F5000000030003000303
          030006060600066A060003060B000B0B0B00731C0B008F2A0B00982A0B00B62A
          0B000B730B000B7B0B000B0B110011111100B62A1100C03111007B4811004060
          1100116A1100118F1100161616007331160084311600B6311600C0311600CA31
          16001658160016601600060B1C0006111C001C1C1C00B6401C00B6481C001C50
          1C00A1501C001C581C001C841C001C981C001CA11C000006230023232300E040
          2300EA402300D4482300235823001C6A230023732300607323000B162A001C1C
          2A002A2A2A0073382A00EA402A008F482A00CA502A00D4502A002A6A2A002A73
          2A002A982A002AA12A002AAB2A0003113100313131008F383100EA483100F448
          3100CA503100D4603100318F310031AB310038383800FF483800FF503800A158
          3800F458380038603800E060380040843800608F380038A1380038AB380038B6
          3800061140002A1140004838400040404000FF5040004058400048584000F458
          4000FF584000EA604000F4604000D4734000E0734000408F4000409840004898
          400040A1400058A1400040B6400048484800FF604800CA6A48006098480048AB
          480048B6480048C04800505050006A585000FF735000060B5800111158000B1C
          58002A1C580040585800585858006AAB580060C0580058CA5800111160002A50
          60000B60600060606000608F600006236A0031406A0040486A006A6A6A00D484
          6A00EAA16A006AD46A00061C7300385073005860730073737300D48F7300FFAB
          730003167B00061C7B0006237B00586A7B0073AB7B00EAB67B00061C84000623
          840006508400065884006A7B84007B848400FFCA84000B318F000B388F001140
          8F0011588F0016588F002A6A8F00487B8F007B848F008F8F8F008FC08F00FFCA
          8F00062A98000B2A9800063198001C6A9800FFD498000B60A1001C73A1002A73
          A1003173A1007B98A100B6D4A1000B38AB000B40AB00116AAB00166AAB001C73
          AB000B48B6000B50B6001150B600237BB6003884B600508FB600CAE0B6001148
          C0001150C0001673C0001C7BC0002A84C0003184C0003884C00073A1C0001150
          CA001158CA000B6ACA00116ACA00388FCA00408FCA0058A1CA006AA1CA0073AB
          CA001660D4001173D4001C7BD4002A84D400238FD4002A8FD4003898D4004098
          D40050A1D4007BB6D40084B6D400F4EAD4001660E000166AE0001673E0002A8F
          E000318FE00060ABE00073B6E0007BB6E0007BC0E000EAF4E000FFF4E000167B
          EA0098CAEA00FFF4EA001673F4001C7BF4003198F40031A1F400FF00FF001C7B
          FF001C84FF002384FF00238FFF002A8FFF002A98FF003198FF0031A1FF0038A1
          FF0038ABFF0040ABFF00FFFFFF00E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E84949090E18171633E8E8E8E8E8E8E8E80909
          29415640293415582C231B1A21570F0F5A6637824359292F75616A51260BE867
          666E5D965D5B294EACB8776B3B0AE8E8350670783F1F6383E0E068692EE8E8E8
          05018B8B6F544469ABAA9D2DE8E8E8020497AEAEAD84E8E8E5E5E5E1E8E8E805
          1DAEBABAB9A4E8BFECECEBEB79E8E81E1499E5E5E4BAE8D9F0F1F0EFBBE8E81E
          3E30BAD6E5B4E8DAF2F3F2F1CCE8E8E8556C9F801E3EE8B6B5BEBCBB92E8E8E8
          3274878028E8E8E8C6D2E2C79CE8E8E8E8E8E8E8E8E8E8E8D4C9C8C0E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        ParentFont = False
        OnClick = btClienteClick
        RepeatedClick = False
        Border = True
      end
      object edDataIni: TTS_DateTimePicker
        Left = 47
        Top = 3
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
        DateOnError = deToday
        UseEditMask = True
        OnDateChange = edDataIniDateChange
        Height = 19
        StoredValues = 4
      end
      object edDataFim: TTS_DateTimePicker
        Left = 145
        Top = 3
        Width = 82
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
        DateOnError = deToday
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 348
        Top = 3
        Width = 121
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        AutoSelect = False
        StyleController = DMProjeto.esClientes
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
        OnSelecionou = PopupFiltroItensSelecionou
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 712
      Height = 354
      KeyField = 'ITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'dbgConsultaCODIGO'
              SummaryField = 'CODIGO'
              SummaryFormat = '###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'SUBTOTALITEM'
              SummaryFormat = '>SUBTOTALITEM=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TOTALQTDE'
              SummaryFormat = '>TOTALQTDE=#,###,##0.###'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      HighlightColor = clWindow
      HighlightTextColor = clWindowText
      ShowRowFooter = True
      RowFooterNodeFont.Height = -9
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;count;D'
        'SUBTOTALITEM;sum;U'
        'TOTALQTDE;sum;U')
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaREFERENCIA: TdxDBGridColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaData: TdxDBGridColumn
        Caption = 'Data'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaMesAno: TdxDBGridColumn
        Caption = 'MesAno'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MESANO'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 259
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Total Qtde'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALQTDE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.###'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Caption = 'SubTotal'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
        EditMask = '###,###,##0.00'
        SummaryType = cstSum
      end
      object dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn
        Caption = 'SubTotal CM'
        HeaderAlignment = taCenter
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCM'
        SummaryFooterFormat = '###,###,##0.00'
        EditMask = '###,###,##0.00'
        SummaryType = cstSum
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMOFORNECEDOR'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaSUBTOTALCC: TdxDBGridColumn
        Caption = 'SubTotal CC'
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCC'
        SummaryFooterFormat = '###,###,##0.00'
        SummaryType = cstSum
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFABRIC'
      end
      object dbgConsultaIDITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaSUBTOTALPC: TdxDBGridColumn
        Caption = 'SubTotal PC'
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALPC'
        SummaryFooterFormat = '###,###,##0.00'
        SummaryType = cstSum
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icEstoque'
      end
      object dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn
        Caption = 'Est. M'#237'nimo'
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icQtdeMinima'
      end
      object dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn
        Caption = 'Est. M'#225'ximo'
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icQtdeMaxima'
      end
      object dbgConsultaULTIMACOMPRA: TdxDBGridDateColumn
        Caption = 'Ult. Compra'
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMACOMPRA'
      end
      object dbgConsultaULTQTDECOMPRA: TdxDBGridMaskColumn
        Caption = 'Ult Qtd Compra'
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icUltQtdeCompra'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCustoMedio'
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn
        Caption = 'Custo Contabil'
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCustoContabil'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 378
      Width = 712
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 397
    inherited btSair: TTS_SpeedButton
      Top = 352
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 629
    Top = 367
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 667
    Top = 367
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 225
    Top = 130
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'SELECT T.ITEM, I.GRUPO, I.DESCRICAO, i.UNIDADE, I.REFERENCIA, I.' +
        'CODIGO,  FAB.DESCRICAO AS DESCFABRIC, G.DESCRICAOGRUPO, I.ESTOQU' +
        'E, I.FATORUNDVENDA, I.QTDEMINIMO, I.QTDEMAXIMO, I.CUSTOMEDIO, I.' +
        'CUSTOCONTABIL, I.ULTIMACOMPRA, I.ULTQTDECOMPRA,  T.data, SUM(((T' +
        '.QUANTIDADE*T.FATOR)/I.FATORUNDVENDA)*-1) AS TOTALQTDE,  SUM(T.Q' +
        'UANTIDADE * T.PRECO * -1 * T.FATOR) AS SUBTOTALITEM,  SUM(T.QUAN' +
        'TIDADE * T.CUSTOMEDIO * -1 * T.FATOR) AS SUBTOTALCM,  SUM(T.QUAN' +
        'TIDADE * T.PRECOCOMPRA * -1 * T.FATOR) AS SUBTOTALPC,  SUM(T.QUA' +
        'NTIDADE * T.CUSTOCONTABIL * -1 * T.FATOR) AS SUBTOTALCC,'
      
        'Extract(month from t.data)||'#39'/'#39'||Extract(year from t.data) as Me' +
        'sAno'
      'From transacoesestoque t'
      'Join itens i On t.item=i.item'
      'Left Join fabricantes fab On i.fabricante=fab.fabricante'
      'Left Join grupos g On i.grupo=g.grupo'
      'where t.quantidade < 0'
      
        'group by t.item, i.unidade, i.grupo, i.descricao, i.codigo, i.re' +
        'ferencia,'
      
        'fab.descricao, g.descricaogrupo, i.estoque, i.qtdeminimo, i.qtde' +
        'maximo, '
      
        'i.ultimacompra, i.ultqtdecompra, i.fatorundvenda, i.customedio, ' +
        'i.custocontabil,T.data')
    Left = 653
    Top = 134
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
    OnCalcFields = C_ConsultaCalcFields
    Left = 652
    Top = 234
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ConsultaGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object d: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaDESCFABRIC: TStringField
      FieldName = 'DESCFABRIC'
      Size = 30
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaSUBTOTALCM: TFloatField
      FieldName = 'SUBTOTALCM'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaSUBTOTALPC: TFloatField
      FieldName = 'SUBTOTALPC'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaSUBTOTALCC: TFloatField
      FieldName = 'SUBTOTALCC'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object C_ConsultaULTQTDECOMPRA: TBCDField
      FieldName = 'ULTQTDECOMPRA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
    end
    object C_ConsultaicEstoque: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoque'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaicQtdeMinima: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icQtdeMinima'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaicQtdeMaxima: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icQtdeMaxima'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ConsultaicCustoMedio: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoMedio'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaicUltQtdeCompra: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icUltQtdeCompra'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaicCustoContabil: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoContabil'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaTOTALQTDE: TFloatField
      FieldName = 'TOTALQTDE'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaMESANO: TStringField
      FieldName = 'MESANO'
      Size = 13
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Extrato de Sa'#237'das'
    FirstEditField = edDataIni
    Left = 605
    Top = 151
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 425
    Top = 119
    inherited Ajuda1: TMenuItem
      HelpContext = 569
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3673143171
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

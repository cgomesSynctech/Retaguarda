inherited RptSaldoConsignacaoSaida: TRptSaldoConsignacaoSaida
  Left = 129
  Top = 132
  Width = 774
  Height = 474
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 758
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 215
      Caption = 'Saldo de Consigna'#231#227'o.'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 732
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 705
    end
  end
  inherited pnGrid: TPanel
    Width = 705
    Height = 397
    inherited pnDados: TTS_Panel
      Width = 705
      Height = 26
      Color = 16116702
      object TS_Label2: TTS_Label
        Left = 217
        Top = 5
        Width = 18
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object btClientes: TTS_SpeedButton
        Left = 343
        Top = 3
        Width = 117
        Height = 20
        Caption = 'Selecionar &Clientes'
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
        OnClick = btClientesClick
        RepeatedClick = False
        Border = True
      end
      object DataI: TTS_DateTimePicker
        Left = 139
        Top = 2
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
        Left = 240
        Top = 2
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
      object PopupFiltrarItens: TTS_PopupFiltrarItens
        Left = 473
        Top = 2
        Width = 125
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
        TS_TipoEstoque = 0
        TS_FornecedorSelecionado = 0
        TS_FornPrefSelecionado = 0
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_PossuiEstoque = False
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        TS_ItemAlterado = False
        Height = 19
      end
      object cbPeriodo: TTS_CheckBox
        Left = 18
        Top = 2
        Width = 119
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 3
        Caption = 'Considerar Peri'#243'do.'
        StyleController = DMProjeto.esClientes
        OnChange = cbPeriodoChange
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object cbCanceladas: TTS_CheckBox
        Left = 611
        Top = 3
        Width = 82
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 4
        Caption = 'Canceladas'
        StyleController = DMProjeto.esClientes
        DisableEdit = False
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 26
      Width = 705
      Height = 352
      KeyField = 'NUMERO'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Data'
              SummaryFormat = '>Data=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'SALDO'
              SummaryFormat = '>SALDO=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QTDACERT'
              SummaryFormat = '>QTDACERT=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QTDDEV'
              SummaryFormat = '>QTDDEV=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QTD'
              SummaryFormat = '>QTD=###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VALOR'
              SummaryFormat = '>VALOR=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorDevolvido'
              SummaryFormat = '>ValorDevolvido=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorAcertado'
              SummaryFormat = '>ValorAcertado=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VALORSALDO'
              SummaryFormat = '>VALORSALDO=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'Data;Count'
        'SALDO;Sum'
        'QTDACERT;SUM'
        'QTDDEV;SUM'
        'QTD;SUM'
        'VALOR;SUM'
        'ValorDevolvido;SUM'
        'ValorAcertado;SUM'
        'VALORSALDO;SUM')
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'Saida N'#186
        Sorted = csUp
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterFormat = '###0'
        GroupIndex = 0
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaTIPOMOVIMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Und.'
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        Visible = False
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn
        Caption = 'Est. Consignado'
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGSAIDA'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaESTOQUE: TdxDBGridCurrencyColumn
        Caption = 'Est. Item'
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaQTD: TdxDBGridCurrencyColumn
        Caption = 'Quantidade'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaQTDDEV: TdxDBGridCurrencyColumn
        Caption = 'Devolvido'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDDEV'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaQTDACERT: TdxDBGridCurrencyColumn
        Caption = 'Acertado'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDACERT'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaSaldo: TdxDBGridColumn
        Caption = 'Saldo'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
      end
      object dbgConsultaVALOR: TdxDBGridCurrencyColumn
        Caption = 'Valor'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaValorDevolvido: TdxDBGridCurrencyColumn
        Caption = 'Vlr Devolvido'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORDEVOLVIDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
      object dbgConsultaVALORACERTADO: TdxDBGridCurrencyColumn
        Caption = 'Vlr Acertado'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORACERTADO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = ',0.00'
        Nullable = False
      end
      object dbgConsultaVALORSALDO: TdxDBGridCurrencyColumn
        Caption = 'Vlr. Saldo'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORSALDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00'
        Nullable = False
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 378
      Width = 705
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
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select e.tipomovimento, e.numero, e.data, e.favorecido, f.nome, ' +
        'ei.item, i.codigo, i.descricao,'
      'i.unidade, i.referencia, i.estoqueconsigsaida, i.estoque,'
      'sum(ei.quantidade) as qtd,'
      'sum(ei.qtddevolvido) as qtddev, sum(ei.qtdacertado) as qtdacert,'
      
        'sum(ei.quantidade)  - sum(ei.qtddevolvido) - sum(ei.qtdacertado)' +
        ' as Saldo,'
      'sum(ei.quantidade * ei.preco) as Valor,'
      'sum(ei.qtddevolvido * ei.preco) as ValorDevolvido,'
      'sum(ei.qtdacertado * ei.preco) as ValorAcertado,'
      
        'sum((ei.quantidade - ei.qtddevolvido - ei.qtdacertado) * ei.prec' +
        'o) as ValorSaldo'
      'from saidas e'
      'left join saidasitens ei on e.saida = ei.saida'
      'left join itens i on ei.item = i.item'
      'left join favorecidos f on e.favorecido = f.favorecido'
      'where ei.status in ('#39'L'#39','#39'F'#39','#39'P'#39') and e.tipomovimento = 11 and '
      'e.situacao = '#39'N'#39
      
        'group by e.tipomovimento, e.numero, e.data, e.favorecido,f.nome,' +
        'ei.item,i.codigo,'
      
        'i.descricao, i.unidade,i.referencia,i.estoqueconsigsaida,i.estoq' +
        'ue')
    Left = 410
    Top = 110
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
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
      Size = 25
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaESTOQUECONSIGSAIDA: TBCDField
      FieldName = 'ESTOQUECONSIGSAIDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTD: TFloatField
      FieldName = 'QTD'
    end
    object C_ConsultaQTDDEV: TFloatField
      FieldName = 'QTDDEV'
    end
    object C_ConsultaQTDACERT: TFloatField
      FieldName = 'QTDACERT'
    end
    object C_ConsultaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object C_ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object C_ConsultaVALORDEVOLVIDO: TFloatField
      FieldName = 'VALORDEVOLVIDO'
    end
    object C_ConsultaVALORACERTADO: TFloatField
      FieldName = 'VALORACERTADO'
    end
    object C_ConsultaVALORSALDO: TFloatField
      FieldName = 'VALORSALDO'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 39098.3523019676
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Saldo de Consigna'#231#227'o.'
    Left = 534
  end
end

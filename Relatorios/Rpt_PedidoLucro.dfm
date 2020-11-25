inherited RptPedidoLucro: TRptPedidoLucro
  Left = 256
  Top = 150
  Width = 1065
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1057
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 170
      Caption = 'Pedido com Lucro'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1023
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 996
    end
  end
  inherited pnGrid: TPanel
    Width = 1004
    inherited pnDados: TTS_Panel
      Width = 1004
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = -2
        Top = 5
        Width = 78
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 151
        Top = 6
        Width = 18
        Caption = ' '#224' '
        FormatoTabela = False
        LinkToResult = 0
      end
      object btClientes: TTS_SpeedButton
        Left = 484
        Top = 2
        Width = 82
        Height = 20
        Caption = '&Clientes'
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
      object btVendedor: TTS_SpeedButton
        Left = 571
        Top = 2
        Width = 77
        Height = 20
        Caption = '&Vendedor'
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
        OnClick = btVendedorClick
        RepeatedClick = False
        Border = True
      end
      object TS_Label3: TTS_Label
        Left = 252
        Top = 4
        Width = 81
        Height = 15
        Caption = 'Tipo Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 78
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 169
        Top = 3
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object TS_PopupEdit1: TTS_PopupEdit
        Left = 336
        Top = 2
        Width = 132
        TabOrder = 2
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = TS_PopupEdit1CloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object rbCustoMedio: TTS_RadioButton
        Left = 758
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Custo M'#233'dio'
        TabOrder = 3
        Transparent = False
      end
      object rbPrecoCompra: TTS_RadioButton
        Left = 660
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Pre'#231'o Compra'
        Checked = True
        TabOrder = 4
        TabStop = True
        Transparent = False
      end
      object rbCustoManual: TTS_RadioButton
        Left = 857
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Custo Manual'
        TabOrder = 5
        Transparent = False
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 1004
      KeyField = 'SAIDA'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'numero'
              SummaryFormat = '>numero=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'TOTALPAGO'
              SummaryFormat = '>TOTALPAGO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VENDATABELATOTAL'
              SummaryFormat = '>VENDATABELATOTAL=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'DESCONTO'
              SummaryFormat = '>DESCONTO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'PERCDESCONTO'
              SummaryFormat = '>PERCDESCONTO=#,###,##0.00'
              SummaryType = cstAvg
            end
            item
              SummaryField = 'CUSTO'
              SummaryFormat = '>CUSTO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'LUCROBRUTO'
              SummaryFormat = '>LUCROBRUTO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'PERCLUCROBRUTO'
              SummaryFormat = '>PERCLUCROBRUTO=#,###,##0.00'
              SummaryType = cstAvg
            end
            item
              SummaryField = 'QUANTITENSVENDIDOS'
              SummaryFormat = '>QUANTITENSVENDIDOS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TOTALITENSVENDIDOS'
              SummaryFormat = '>TOTALITENSVENDIDOS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TOTALITENSVENDIDOS'
              SummaryFormat = '>TOTALITENSVENDIDOS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VENDATABELATOTAL'
              SummaryFormat = '>VENDATABELATOTAL=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'numero; count'
        'TOTALPAGO; sum'
        'VENDATABELATOTAL; sum'
        'DESCONTO; sum'
        'PERCDESCONTO; avg'
        'CUSTO; SUM'
        'LUCROBRUTO; SUM'
        'PERCLUCROBRUTO; AVG'
        'QUANTITENSVENDIDOS; SUM'
        'TOTALITENSVENDIDOS; SUM'
        'TOTALITENSVENDIDOS; SUM'
        'VENDATABELATOTAL; sum')
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Width = 162
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Plano Pagto'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaVENDATABELATOTAL: TdxDBGridColumn
        Caption = 'Valor Venda'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDATABELATOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.0000'
      end
      object dbgConsultaTOTALPAGO: TdxDBGridColumn
        Caption = 'Valor Pago'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALPAGO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaDESCONTO: TdxDBGridMaskColumn
        Caption = 'Desconto'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaPERCDESCONTO: TdxDBGridMaskColumn
        Caption = '% Desconto'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCDESCONTO'
        SummaryFooterType = cstAvg
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaCUSTO: TdxDBGridMaskColumn
        Caption = 'Custo'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.0000'
      end
      object dbgConsultaLUCROBRUTO: TdxDBGridMaskColumn
        Caption = 'Lucro Bruto'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LUCROBRUTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaPERCLUCROBRUTO: TdxDBGridMaskColumn
        Caption = '% Lucro'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCLUCROBRUTO'
        SummaryFooterType = cstAvg
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        Caption = 'Vendedor'
        HeaderAlignment = taCenter
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaQUANTITENSVENDIDOS: TdxDBGridMaskColumn
        Caption = 'Qtde Itens'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTITENSVENDIDOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgConsultaTOTALITENSVENDIDOS: TdxDBGridColumn
        Caption = 'Total Itens'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALITENSVENDIDOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 1004
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 433
      Top = 90
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      KeyField = 'TIPOMOVIMENTO'
      ListField = 'DESCRICAO'
      Transparent = False
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
      'select'
      '  s.saida, '
      '  s.data,'
      '  s.numero,'
      '  f.nome as cliente,'
      '  pg.descricao,'
      '  --v.nome as vendedor, '
      
        '  (select f1.nome from favorecidos f1 where f1.favorecido = s.ve' +
        'ndedor) as vendedor,'
      '  --v.favorecido as codvendedor,'
      
        '  (select f2.favorecido from favorecidos f2 where f2.favorecido ' +
        '= s.vendedor) as codvendedor,'
      '  f.favorecido as codcliente,'
      '  count(si.item) as quantitensvendidos,'
      '  sum(si.preco * si.quantidade) -'
      '       max(abs(s.desconto)) -'
      '       sum(si.customedio * si.quantidade) as lucrobruto,'
      ''
      '  sum(((si.preco * si.quantidade) -'
      
        '     (abs(s.desconto)) - (si.customedio * si.quantidade)) * 100 ' +
        ')  /'
      
        '          sum(si.preco * si.quantidade - (abs(s.desconto)))  as ' +
        'perclucrobruto ,'
      ''
      ''
      '  max(abs(s.desconto)) +'
      '     sum(si.precotabela * si.quantidade) -'
      '     SUM(si.preco * si.quantidade)  as desconto,'
      ''
      '  ((max(abs(s.desconto)) +'
      
        '   (SUM(si.precotabela * si.quantidade) - SUM(si.preco * si.quan' +
        'tidade)))'
      '    /  CASE'
      
        '         WHEN SUM(si.precotabela * si.quantidade) IS NULL THEN 1' +
        '.0'
      '         WHEN SUM(si.precotabela * si.quantidade) = 0 THEN 1.0'
      '         ELSE SUM(si.precotabela * si.quantidade) END'
      '         ) * 100 as percdesconto,'
      ''
      ''
      
        '  cast(sum(si.precotabela * si.quantidade) as numeric (15, 4)) a' +
        's vendatabelatotal,'
      
        '  sum(si.preco * si.quantidade) - max(abs(s.desconto)) as    tot' +
        'alpago,'
      
        '  cast(sum(si.customedio * si.quantidade) as numeric (15, 4)) as' +
        ' custo,'
      '  sum(si.quantidade) as totalitensvendidos'
      'from saidas s'
      'left join saidasitens si on s.saida = si.saida'
      'left join favorecidos f on s.favorecido = f.favorecido'
      
        'left join planospagamento pg on s.planopagamento = pg.planopagam' +
        'ento'
      '--left join favorecidos v on s.vendedor = v.favorecido'
      'where s.tipopadrao = 1 '
      'group by   s.saida, '
      '  s.data,'
      '  s.numero,'
      '  f.nome ,'
      '  pg.descricao,'
      '  s.vendedor,'
      '  --v.nome ,'
      '  --v.favorecido ,'
      '  f.favorecido')
    Left = 413
  end
  inherited C_Consulta: TClientDataSet
    Top = 220
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
    object C_ConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_ConsultaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object C_ConsultaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object C_ConsultaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object C_ConsultaQUANTITENSVENDIDOS: TIntegerField
      FieldName = 'QUANTITENSVENDIDOS'
      Required = True
    end
    object C_ConsultaLUCROBRUTO: TFloatField
      FieldName = 'LUCROBRUTO'
    end
    object C_ConsultaPERCLUCROBRUTO: TFloatField
      FieldName = 'PERCLUCROBRUTO'
    end
    object C_ConsultaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object C_ConsultaPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object C_ConsultaTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
    end
    object C_ConsultaTOTALITENSVENDIDOS: TFloatField
      FieldName = 'TOTALITENSVENDIDOS'
    end
    object C_ConsultaVENDATABELATOTAL: TBCDField
      FieldName = 'VENDATABELATOTAL'
      Precision = 18
    end
    object C_ConsultaCUSTO: TBCDField
      FieldName = 'CUSTO'
      Precision = 18
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 619
    Top = 93
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38234.3961481944
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited Q_SQLReport: TIBQuery
    Left = 618
    Top = 222
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 680
    Top = 106
  end
  inherited Q_FullSelect: TIBQuery
    Left = 667
    Top = 283
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Pedido com Lucro'
    Left = 617
    Top = 164
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select TIPOMOVIMENTO, DESCRICAO from TIPOSMOVIMENTO where   TIPO' +
        'PADRAO in (2) order by DESCRICAO')
    Left = 495
    Top = 116
    object Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object Q_TiposMovimentosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object P_TiposMovimentos: TDataSetProvider
    DataSet = Q_TiposMovimentos
    Constraints = True
    Left = 502
    Top = 172
  end
  object C_TiposMovimentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOMOVIMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'P_TiposMovimentos'
    StoreDefs = True
    Left = 494
    Top = 228
    object C_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object C_TipoMovimentoDS: TDataSource
    DataSet = C_TiposMovimentos
    Left = 494
    Top = 284
  end
end

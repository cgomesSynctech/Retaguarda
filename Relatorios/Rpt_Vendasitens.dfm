inherited RptVendasProdutos: TRptVendasProdutos
  Left = 237
  Top = 71
  Width = 1001
  Height = 583
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 985
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 334
      Caption = 'Vendas no Periodo (com Produtos)'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 959
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 932
    end
  end
  inherited pnGrid: TPanel
    Width = 932
    Height = 507
    inherited pnDados: TTS_Panel
      Width = 932
      Height = 46
      Color = 16116702
      DesignSize = (
        932
        46)
      object TS_Label1: TTS_Label
        Left = 3
        Top = 4
        Width = 78
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 161
        Top = 5
        Width = 18
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object btClientes: TTS_SpeedButton
        Left = 10
        Top = 22
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
      object btVendedor: TTS_SpeedButton
        Left = 138
        Top = 23
        Width = 124
        Height = 20
        Caption = 'Selecionar &Vendedor'
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
      object pnTipoPadrao: TPanel
        Left = 300
        Top = 2
        Width = 437
        Height = 19
        BevelOuter = bvNone
        BorderWidth = 1
        Color = 16116702
        Enabled = False
        TabOrder = 4
        Visible = False
        object TS_Label5: TTS_Label
          Left = 4
          Top = 1
          Width = 67
          Caption = 'Tipo Padr'#227'o:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label3: TTS_Label
          Left = 220
          Top = 2
          Width = 81
          Height = 15
          Caption = 'Tipo Opera'#231#227'o :'
          FormatoTabela = False
          LinkToResult = 0
        end
        object ppeTipoPadrao: TTS_PopupEdit
          Left = 73
          Top = 0
          Width = 144
          TabOrder = 0
          OnExit = ppeTipoPadraoExit
          AutoSelect = False
          StyleController = DMProjeto.esClientes
          HideEditCursor = True
          PopupControl = clbTipoPadrao
          PopupFormBorderStyle = pbsSysPanel
          OnCloseUp = ppeTipoPadraoCloseUp
          LookupKeyValue = 0
          Height = 19
        end
        object ppeTiposMovimento: TTS_PopupEdit
          Left = 303
          Top = 0
          Width = 132
          TabOrder = 1
          AutoSelect = False
          StyleController = DMProjeto.esClientes
          HideEditCursor = True
          PopupControl = clbTipoOperacao
          PopupFormBorderStyle = pbsSysPanel
          OnCloseUp = ppeTiposMovimentoCloseUp
          LookupKeyValue = 0
          Height = 19
        end
      end
      object DataI: TTS_DateTimePicker
        Left = 83
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 184
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object PopupFiltrarItens: TTS_PopupFiltrarItens
        Left = 300
        Top = 22
        Width = 211
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
        OnSelecionou = PopupFiltrarItensSelecionou
        Height = 19
      end
      object cbCanceladas: TTS_CheckBox
        Left = 527
        Top = 22
        Width = 98
        Hint = 'Marque para ver as Vendas Canceladas'
        TabOrder = 3
        Anchors = [akTop, akRight]
        Caption = 'Canceladas'
        StyleController = DMProjeto.esClientes
        OnChange = cbCanceladasChange
        DisableEdit = False
        Height = 19
      end
      object cbTipoPadrao: TTS_CheckBox
        Left = 282
        Top = 2
        Width = 169
        TabOrder = 5
        OnClick = cbTipoPadraoClick
        Caption = 'Ativar Filtro por Tipo Opera'#231#227'o'
        StyleController = DMProjeto.esClientes
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object cbItensCancelados: TTS_CheckBox
        Left = 648
        Top = 22
        Width = 153
        Hint = 'Marque para ver os Itens Cancelados'
        TabOrder = 6
        Anchors = [akTop, akRight]
        Caption = 'Itens Cancelados'
        StyleController = DMProjeto.esClientes
        OnChange = cbCanceladasChange
        DisableEdit = False
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 46
      Width = 932
      Height = 442
      KeyField = 'SAIDAITEM'
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
              SummaryField = 'SubTotalItem'
              SummaryFormat = '>SubTotalItem=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Quantidade'
              SummaryFormat = '>Quantidade=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VALORFINAL'
              SummaryFormat = '>VALORFINAL=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'RATEIODESCONTO'
              SummaryFormat = '>RATEIODESCONTO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TOTCUSTO'
              SummaryFormat = '>TOTCUSTO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'QUANTIDADEVOLUME'
              SummaryFormat = '>QUANTIDADEVOLUME=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'Data;Count'
        'SubTotalItem;Sum'
        'Quantidade;Sum'
        'VALORFINAL;SUM'
        'RATEIODESCONTO;SUM'
        'TOTCUSTO;SUM'
        'QUANTIDADEVOLUME;SUM')
      object dbgConsultaSAIDAITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEM'
      end
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '###,#00'
      end
      object dbgConsultaQUANTIDADEVOLUME: TdxDBGridMaskColumn
        Caption = 'Qtd. Volume'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADEVOLUME'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Caption = 'Total'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaRATEIODESCONTO: TdxDBGridMaskColumn
        Caption = 'Desconto'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEIODESCONTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaVALORFINAL: TdxDBGridColumn
        Caption = 'Vlr. Final'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORFINAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaMesAno: TdxDBGridColumn
        Caption = 'M'#234's/Ano'
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MESANO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Produto'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        GroupIndex = 0
      end
      object dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid'
        HeaderAlignment = taCenter
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Visible = False
        Width = 168
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMECLIENTE'
      end
      object dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn
        Caption = 'Vendedor'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEVENDEDOR'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaNOMEFORNECEDOR: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFORNECEDOR'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgConsultaTOTCUSTO: TdxDBGridColumn
        Caption = 'Tot. Custo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTCUSTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn
        Caption = 'Custo Cont'#225'bil'
        HeaderAlignment = taCenter
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgConsultaCOLUNA1: TdxDBGridMaskColumn
        Caption = 'Coluna Customizada 1'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA1'
      end
      object dbgConsultaCOLUNA2: TdxDBGridMaskColumn
        Caption = 'Coluna Customizada 2'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA2'
      end
      object dbgConsultaCOLUNA3: TdxDBGridMaskColumn
        Caption = 'Coluna Customizada 3'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA3'
      end
      object dbgConsultaCOLUNA4: TdxDBGridMaskColumn
        Caption = 'Coluna Customizada 4'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA4'
      end
      object dbgConsultaColumn25: TdxDBGridColumn
        Caption = 'Medico'
        HeaderAlignment = taCenter
        Visible = False
        Width = 310
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEMEDICO'
      end
      object dbgConsultapiscofins: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PISCOFINS'
      end
      object dbgConsultaEndereco: TdxDBGridColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 308
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaBairro: TdxDBGridColumn
        Caption = 'Bairro'
        HeaderAlignment = taCenter
        Visible = False
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaCidade: TdxDBGridColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridColumn
        Caption = 'CPF/CNPJ'
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaINSCRICAO_MUN: TdxDBGridColumn
        Caption = 'Ins. Munic.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSCRICAO_MUN'
      end
      object dbgConsultaINSCRICAO_EST: TdxDBGridColumn
        Caption = 'Insc. Est.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSCRICAO_EST'
      end
      object dbgConsultaGrupoComissao: TdxDBGridColumn
        Caption = 'GC'
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DECGRUPOCOMISSAO'
      end
      object dbgConsultaTIPOTRIBUTACAOFEDERAL: TdxDBGridColumn
        Caption = 'Trib. Federal'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRIBUTACAOFEDERAL'
      end
      object dbgConsultaCFOPCST: TdxDBGridColumn
        Caption = 'CFOP'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPCST'
      end
      object dbgConsultaPRECOFATORADO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o Fatorado'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOFATORADO'
      end
      object dbgConsultaDESCITEMORIGINAL: TdxDBGridMaskColumn
        Caption = 'Desc. Original Prod.'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCITEMORIGINAL'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 488
      Width = 932
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 429
      Top = 98
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
    object clbTipoPadrao: TTS_CheckListBox
      Left = 313
      Top = 62
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
      KeyField = 'TIPOPADRAO'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 507
    inherited btSair: TTS_SpeedButton
      Top = 462
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 138
    Top = 142
  end
  inherited FormStorage: TFormStorage
    Left = 96
    Top = 144
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      
        'si.saidaitem, si.saida, si.descricao, i.unidade,cast(cast(si.qua' +
        'ntidade as Numeric(15,4)) * si.fator / i.fatorundvenda as Float)' +
        ' as quantidade,si.preco,si.preco / si.fator as precofatorado, si' +
        '.subtotalitem, f.nome as nomecliente, v.nome as nomevendedor, s.' +
        'data, s.numero, s.favorecido, f.tipofavorecido, gi.descricaogrup' +
        'o,fb.descricao as fabricante, fn.nome as nomefornecedor,cast(si.' +
        'Quantidade as numeric(15,4))  * cast(si.customedio as numeric(15' +
        ',4))  * si.fator as TotCusto,si.customedio * si.fator as custome' +
        'dio, si.custocontabil * si.fator as custocontabil,si.rateiodesco' +
        'nto as rateiodesconto, si.coluna1, si.coluna2, si.coluna3, si.co' +
        'luna4,m.nome as NOMEMEDICO,Extract(year from s.data)||'#39'/'#39'||Extra' +
        'ct(month from s.data) as MesAno, I.piscofins, '
      
        'Cast(si.subtotalitem - si.rateiodesconto as float) AS ValorFinal' +
        ',s.vendedor, t.DESCRICAO as TipoFederal, F.ENDERECO, F.CIDADE, F' +
        '.BAIRRO,F.UF, F.cpf_cnpj, F.inscricao_est, f.inscricao_mun,  gc.' +
        'descricao as DecGrupoComissao, t.Descricao as TributacaoFederal,' +
        'si.QUANTIDADEVOLUME,si.cfopcst, i.descricao as descitemoriginal'
      'from'
      
        'Saidas s inner join SaidasItens si on s.empresa = si.empresa and' +
        ' s.saida = si.saida and s.pdv = si.pdv inner join Itens i on si.' +
        'empresa = i.empresa and si.item = i.item left join Favorecidos f' +
        ' on s.empresa = f.empresa and s.favorecido = f.favorecido left j' +
        'oin Favorecidos v on s.vendedor = v.favorecido left join TIPOTRI' +
        'BUTACAOFEDERAL t on i.IDTRIBFEDERAL = t.IDTRIBFEDERAL left join ' +
        'favorecidos m on s.medico = m.favorecido left join Favorecidos f' +
        'n on i.ultimofornecedor = fn.favorecido left join Fabricantes fb' +
        ' on i.fabricante = fb.fabricante left join Grupos gi on i.grupo ' +
        '= gi.grupo left join gruposcomissoes gc on i.grupocomissao = gc.' +
        'grupocomissao')
    Left = 316
    Top = 144
  end
  inherited C_ConsultaDS: TDataSource
    Left = 315
    Top = 307
  end
  inherited P_Consulta: TDataSetProvider
    Left = 317
    Top = 195
  end
  inherited C_Consulta: TClientDataSet
    Left = 322
    Top = 249
    object C_ConsultaSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Required = True
    end
    object C_ConsultaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_ConsultaPRECOFATORADO: TFloatField
      FieldName = 'PRECOFATORADO'
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object C_ConsultaNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 50
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object C_ConsultaNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object C_ConsultaTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ConsultaRATEIODESCONTO: TFloatField
      FieldName = 'RATEIODESCONTO'
    end
    object C_ConsultaCOLUNA1: TStringField
      FieldName = 'COLUNA1'
    end
    object C_ConsultaCOLUNA2: TStringField
      FieldName = 'COLUNA2'
    end
    object C_ConsultaCOLUNA3: TStringField
      FieldName = 'COLUNA3'
    end
    object C_ConsultaCOLUNA4: TStringField
      FieldName = 'COLUNA4'
    end
    object C_ConsultaNOMEMEDICO: TStringField
      FieldName = 'NOMEMEDICO'
      Size = 50
    end
    object C_ConsultaMESANO: TStringField
      FieldName = 'MESANO'
      Size = 13
    end
    object C_ConsultaPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_ConsultaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_ConsultaTIPOFEDERAL: TStringField
      FieldName = 'TIPOFEDERAL'
      Size = 30
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_ConsultaINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Size = 14
    end
    object C_ConsultaINSCRICAO_MUN: TStringField
      FieldName = 'INSCRICAO_MUN'
      Size = 14
    end
    object C_ConsultaDECGRUPOCOMISSAO: TStringField
      FieldName = 'DECGRUPOCOMISSAO'
      Size = 30
    end
    object C_ConsultaTRIBUTACAOFEDERAL: TStringField
      FieldName = 'TRIBUTACAOFEDERAL'
      Size = 30
    end
    object C_ConsultaQUANTIDADEVOLUME: TFloatField
      FieldName = 'QUANTIDADEVOLUME'
    end
    object C_ConsultaCFOPCST: TStringField
      FieldName = 'CFOPCST'
      Size = 4
    end
    object C_ConsultaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_ConsultaVALORFINAL: TFloatField
      FieldName = 'VALORFINAL'
    end
    object C_ConsultaDESCITEMORIGINAL: TStringField
      FieldName = 'DESCITEMORIGINAL'
      Size = 50
    end
  end
  inherited ppmDados: TTS_PopupMenu
    Left = 203
    Top = 153
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 209
    Top = 206
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 216
    Top = 105
  end
  inherited ppmImprimir: TTS_PopupMenu
    Left = 210
    Top = 314
  end
  inherited ppmSumarizacao: TTS_PopupMenu
    Left = 211
    Top = 257
  end
  inherited ppmExportacao: TTS_PopupMenu
    Left = 211
    Top = 365
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    Left = 87
    Top = 226
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37456.4298704282
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited dxPSEngineController1: TdxPSEngineController
    Left = 112
    Top = 288
  end
  inherited ppmTemplates: TTS_PopupMenu
    Left = 104
    Top = 360
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Top = 136
  end
  inherited Q_FullSelect: TIBQuery
    Left = 313
    Top = 369
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Vendas no Periodo (com Produtos)'
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMOVIMENTO, DESCRICAO '
      'FROM TIPOSMOVIMENTO '
      'WHERE TIPOPADRAO IN :TIPOPADRAO'
      'order by DESCRICAO')
    Left = 425
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TIPOPADRAO'
        ParamType = ptUnknown
      end>
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
  object Q_TiposMovimentosDs: TDataSource
    DataSet = Q_TiposMovimentos
    Left = 426
    Top = 206
  end
  object Q_TipoPadrao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tipopadrao, descricao from tipospadrao '
      'where tipo = '#39'S'#39' order by descricao')
    Left = 728
    Top = 112
  end
  object P_TipoPadrao: TDataSetProvider
    DataSet = Q_TipoPadrao
    Constraints = True
    Left = 728
    Top = 166
  end
  object C_TipoPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TipoPadrao'
    Left = 730
    Top = 216
    object C_TipoPadraoTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
      Required = True
    end
    object C_TipoPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
  end
  object C_TipoPadraoDs: TDataSource
    DataSet = C_TipoPadrao
    Left = 728
    Top = 276
  end
end

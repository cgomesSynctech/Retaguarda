inherited RptSaidas: TRptSaidas
  Left = 147
  Top = 136
  Height = 462
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 185
      Caption = 'Relat'#243'rio de Sa'#237'das'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited pnGrid: TPanel
    Height = 390
    inherited RichEdit: TRichEdit
      Left = -2
      Top = 224
    end
    inherited pnDados: TTS_Panel
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 8
        Top = 5
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 132
        Top = 4
        Width = 15
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object btClientes: TTS_SpeedButton
        Left = 236
        Top = 2
        Width = 122
        Height = 18
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
      object btVendedores: TTS_SpeedButton
        Left = 366
        Top = 2
        Width = 139
        Height = 18
        Caption = 'Selecionar &Vendedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          92030000424D9203000000000000920200002800000010000000100000000100
          08000000000000010000E50E0000E50E0000970000009700000006600600066A
          060023160B000B840B00118F1100234816001673160016841600169816001C1C
          1C002A481C002A501C0023731C001C8F1C001C981C002A6A2300237B23002384
          23002398230023A1230038582A0031732A0031842A00318F2A002AAB2A001111
          3100604031000B58310038733100388F310031AB310023383800584838001650
          380038A1380038B63800585040006A50400040B64000032A48002A6A4800506A
          4800488F480048AB480048B6480048C048001C4050003848500058A1500050B6
          500050C050002A5058005898580058C05800164860001C5060006A6A6000736A
          60007BA160006AAB600073AB600060C0600060CA600016506A001C506A006AA1
          6A0023587300847B730084A1730073AB730023587B001150840031508400406A
          8400486A840011508F0011588F0016609800236A98002A739800317398000660
          A1001160A1002A73A100317BA100E0C0A1001C23AB001160AB002A7BAB00387B
          AB003884AB00508FAB00CAE0AB000B60B600116AB600166AB6001673B6001C73
          B6002A73B600237BB6002A7BB600317BB600488FB600508FB60073A1B600ABB6
          B6001673C0002373C000167BC000E0D4C000CAE0C000068FCA005098CA00CACA
          CA001C7BD4002A8FD4004098D4000006E0001173E0001673E0003184E00058AB
          E00073ABE00084C0E000F4EAE000167BEA001684EA002A8FEA0031A1EA0060AB
          EA0003CAEA00F4FFEA001658F400167BF4001C84F4002384F4002A8FF4004898
          F40038A1F400FF00FF001C7BFF002384FF002A8FFF003198FF0031A1FF0038A1
          FF0038ABFF0040ABFF0050B6FF0073F4FF00FFFFFF008B8B8B8B8B8B8B098B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B1A362F8B8B8B8B8B8B8B8B01030D1212009584
          278B8B8B8B8B8B8B040E1E23113C6F8284278B8B8B8B8B8B071E323183832C2D
          8284278B8B8B8B8B8B1E351D969631356F8284278B8B8B8B8B8B1B4E574F2B11
          8B8B7339098B8B8B8B8B5D767776218B8B8B8B9620198B8B8B4D8D8D8D8D771F
          8B8B8B8B7E848B8B8B5E8E8E8E8E872E8B8B8B8B8B758B8B6788909192918F46
          8B8B8B8B8B8B8B8B597F93938A808A428B8B8B8B8B8B8B8B4A4C657089784B8B
          8B8B8B8B8B8B8B8B8B4C707A7974378B8B8B8B8B8B8B8B8B8B8B5B54504A8B8B
          8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B}
        ParentFont = False
        OnClick = btVendedoresClick
        RepeatedClick = False
        Border = True
      end
      object edDataI: TTS_DateTimePicker
        Left = 53
        Top = 2
        Width = 78
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
        OnDateChange = edDataIDateChange
        Height = 19
        StoredValues = 4
      end
      object edDataF: TTS_DateTimePicker
        Left = 149
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
        DateOnError = deToday
        UseEditMask = True
        OnDateChange = edDataIDateChange
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Height = 368
      KeyField = 'SAIDA'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'baseimposto'
              SummaryFormat = '>baseimposto=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'imposto'
              SummaryFormat = '>imposto=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'total'
              SummaryFormat = '>total=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'baseimposto;sum'
        'imposto;sum'
        'total;sum')
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEVENDEDOR'
      end
      object dbgConsultaOUTRASDESPESAS: TdxDBGridMaskColumn
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUTRASDESPESAS'
      end
      object dbgConsultaJUROS: TdxDBGridMaskColumn
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS'
      end
      object dbgConsultaBASEIMPOSTO: TdxDBGridColumn
        Caption = 'Base Calc. Tax'
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEIMPOSTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaIMPOSTO: TdxDBGridMaskColumn
        Caption = 'Valor do Tax'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPOSTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaDESCONTO: TdxDBGridMaskColumn
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
      object dbgConsultaTOTAL: TdxDBGridMaskColumn
        Caption = 'Total Vendas'
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaFRETE: TdxDBGridMaskColumn
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETE'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#245'es'
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaPLANOPAGAMENTO: TdxDBGridMaskColumn
        Caption = 'Plano Pagamento'
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLANOPAGAMENTO'
      end
      object dbgConsultaVALORCOMISSAO: TdxDBGridCurrencyColumn
        Caption = 'Comiss'#227'o'
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORCOMISSAO'
        Nullable = False
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tabela de Pre'#231'o'
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaCONDICOESPGTO: TdxDBGridMaskColumn
        Caption = 'Condi'#231#245'es Pgto'
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONDICOESPGTO'
      end
      object dbgConsultaTOTALPGTOS: TdxDBGridCurrencyColumn
        Caption = 'Total Pago'
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALPGTOS'
        Nullable = False
      end
      object dbgConsultaColumn22: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 390
    inherited btSair: TTS_SpeedButton
      Top = 345
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 218
    Top = 174
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select s.saida, s.numero, s.data, f.favorecido as cliente, f.nom' +
        'e,'
      
        'fu.favorecido as vendedor,  fu.nome as NomeVendedor, s.totaliten' +
        's,'
      's.desconto, s.frete, s.outrasdespesas, s.juros,'
      
        's.imposto, s.total, s.baseimposto, s.obs, pl.descricao as planop' +
        'agamento, s.frete, s.desconto, s.valorcomissao, tp.descricao, s.' +
        'condicoespgto, s.desconto, s.totalpgtos, f.codigo'
      'from saidas s '
      'join favorecidos f'
      'on s.favorecido = f.favorecido'
      'left join favorecidos fu on s.vendedor = fu.favorecido'
      'left join tabelaspreco tp on tp.tabelapreco = s.tabelapadrao'
      
        'left join planospagamento pl on pl.planopagamento = s.planopagam' +
        'ento'
      'where s.tipopadrao = 1 and s.situacao = '#39'N'#39' and'
      's.data between :idata and :fdata'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'idata'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'fdata'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftDateTime
        Name = 'idata'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'fdata'
        ParamType = ptUnknown
      end>
    object C_ConsultaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero #'
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_ConsultaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Required = True
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_ConsultaNOMEVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Size = 50
    end
    object C_ConsultaTOTALITENS: TBCDField
      DisplayLabel = 'Total Itens'
      FieldName = 'TOTALITENS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTO: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaFRETE: TBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaOUTRASDESPESAS: TBCDField
      DisplayLabel = 'Outras Despesas'
      FieldName = 'OUTRASDESPESAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROS: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIMPOSTO: TBCDField
      DisplayLabel = 'Imposto'
      FieldName = 'IMPOSTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTOTAL: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaBASEIMPOSTO: TBCDField
      FieldName = 'BASEIMPOSTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ConsultaPLANOPAGAMENTO: TStringField
      FieldName = 'PLANOPAGAMENTO'
      Size = 30
    end
    object C_ConsultaVALORCOMISSAO: TBCDField
      FieldName = 'VALORCOMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_ConsultaCONDICOESPGTO: TStringField
      FieldName = 'CONDICOESPGTO'
      Size = 255
    end
    object C_ConsultaTOTALPGTOS: TBCDField
      FieldName = 'TOTALPGTOS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de Sa'#237'das'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37233.6101571181
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Top = 88
  end
end

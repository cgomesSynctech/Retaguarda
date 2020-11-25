inherited DlgComparacaoContagens: TDlgComparacaoContagens
  Left = 125
  Top = 88
  Width = 740
  Height = 396
  HelpContext = 0
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 614
    Height = 326
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 292
    end
    inherited btComando2: TTS_SpeedButton
      Hint = 'Permite cancelar uma ficha de balan'#231'o'
      Caption = 'Cancelar Ficha'
      Glyph.Data = {
        B2050000424DB205000000000000360400002800000012000000130000000100
        0800000000007C010000C30E0000C30E00000001000000000000000000007B00
        0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
        730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
        840008528400105284002963840008528C00085A8C00185A8C0018638C002963
        8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
        9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
        A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
        BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
        BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
        CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
        D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
        DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
        DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
        EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
        FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
        FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393939393939
        3939393939393939393939690000396939393939393939393939393939396939
        0000396969393910101010101010101010693939000039696969000000000000
        0000000069693939000039396969007879797978797979696939393900003939
        3969697903030303030379691039393900003939396969697978797979786969
        1039393900003939393969696903030369696900103939390000393939390069
        6969797869697900103939390000393939390079036969696903790010393939
        0000393939390079796969696978790010393939000039393939007903696969
        6900000010393939000039393939007869697900696979001039393900003939
        3939006969697900696969693939393900003939396969697978790079003969
        6939393900003969696969000000000000393939696939390000396969693939
        3939393939393939393969390000393939393939393939393939393939393969
        00003939393939393939393939393939393939390000}
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Hint = 'Permite fazer a verifica'#231#227'o das diferen'#231'as encontradas'
      Caption = 'Checar Diferen'#231'as'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Hint = 
        'Permite fazer uma nova contagem somente com os itens que tiveram' +
        ' diferen'#231'as entre contagens ou com o estoque'
      Caption = '&Nova Contagem'
    end
    inherited btGravar: TTS_SpeedButton
      Hint = 
        'Permite fazer os ajustes no estoque de acordo com as diferen'#231'as ' +
        'encontradas'
      Caption = 'Fechar Ficha'
    end
    object TS_SpeedButton1: TTS_SpeedButton
      Left = 1
      Top = 139
      Width = 116
      Caption = 'Imprimir'
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0A000A0A000A0A000A
        0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A00
        0A0A000A0A000A0A000AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDD5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5ADDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0A000AFFFFFFFFFFFFD3D3D4C2
        C3C3B1B1B2A3A3A495959688898A7C7D7E70707263656757585A4A4B4E000000
        33312E0A000AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCE
        CECEC1C1C1B3B3B3A7A7A75555558989895A5A5ADDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FF0A000AFFFFFFFFFFFFD3D3D4C2C3C3B1B1
        B2A3A3A495959688898A7C7D7E70707263656757585A4A4B4E00000086827D0A
        000A0A000AFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5A
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCECECEC1C1
        C1B3B3B3A7A7A7555555DFDFDF5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FF0A000AFFFFFFFFFFFFD3D3D4C2C3C3B1B1B2A3A3A4
        95959688898A7C7D7E70707263656757585A4A4B4E00000086827D86827D0A00
        0A0A000AFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5AFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCECECEC1C1C1B3B3B3
        A7A7A7555555DFDFDFDFDFDF5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDDDDDDDFF00
        FFFF00FF0A000A0A000A00000000000000000000000000000000000000000000
        00003535343232312F2F2E2C2C2B29292800000000000086827D86827D0A000A
        0A000AFF00FFFF00FFFF00FFDDDDDDDDDDDD5A5A5A5A5A5A5555555555555555
        555555555555555555555555555555558D8D8D8A8A8A86868683838380808055
        5555555555DFDFDFDFDFDF5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF
        0A000AFFFFFFFFFFFFDADBDBCACACBBBBCBCADADAEA1A2A29595968A8B8C7F80
        827576776B6C6E6062645557594A4B4E0000000A000A86827D86827D0A000AFF
        00FFFF00FFFF00FFDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF5F5F5EAEAEADEDEDED4D4D4C9C9C9BEBEBEB2B2B2A7A7A75555
        555A5A5ADFDFDFDFDFDF5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF0A000AFF
        FFFFFFFFFFDADBDBCACACBBBBCBCADADAEA1A2A29595968A8B8C7F8082757677
        6B6C6E6062645557594A4B4E0000009F9B980A000A86827D0A000AFF00FFFF00
        FFFF00FFDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5F5F5EAEAEADEDEDED4D4D4C9C9C9BEBEBEB2B2B2A7A7A7555555FBFBFB
        5A5A5ADFDFDF5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF0A000AFFFFFFFFFF
        FFDADBDBCACACBBBBCBCADADAEA1A2A29595968A8B8C7F80827576776B6C6E00
        00FF0000FF0000FF0000009F9B989F9B980A000A0A000AFF00FFFF00FFFF00FF
        DDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
        F5EAEAEADEDEDED4D4D4C9C9C9DDDDDDDDDDDDDDDDDD555555FBFBFBFBFBFB5A
        5A5A5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF0A000A000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000009F9B989F9B989F9B980A000A0A000AFF00FFFF00FFDDDDDDDD
        DDDD5A5A5A555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555555FBFBFBFBFBFBFBFBFB5A5A
        5A5A5A5ADDDDDDDDDDDDFF00FFFF00FF0A000A0A000AFFFFFFFFFFFFD3D3D4C2
        C3C3B1B1B2A3A3A495959688898A7C7D7E70707263656757585A4A4B4E4A4B4E
        5D5A580000000000009F9B989F9B980A000AFF00FFFF00FFDDDDDDDDDDDD5A5A
        5A5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCE
        CECEC1C1C1B3B3B3A7A7A7A7A7A7B6B6B6555555555555FBFBFBFBFBFB5A5A5A
        DDDDDDDDDDDDFF00FFFF00FFFF00FF0A000A0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000009F
        9B989F9B980000009F9B980A000AFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5A
        5555555555555555555555555555555555555555555555555555555555555555
        55555555555555555555555555FBFBFBFBFBFB555555FBFBFB5A5A5ADDDDDDDD
        DDDDFF00FFFF00FFFF00FF0A000A0A000A0A000AD6FDFFD6FDFFD6FDFFD6FDFF
        D6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFF3B71720000000000009F9B
        989F9B980000000A000AFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5A5A5A5A5A
        5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB1B1B1555555555555FBFBFBFBFBFB5555555A5A5ADDDDDDDDDDDDFF00
        FFFF00FFFF00FFFF00FFFF00FF0A000AD6FDFFD6FDFF00DA0700DA0700DA0700
        DA0700DA0700DA0700DA0700DA07D6FDFFD6FDFF0000009F9B980000009F9B98
        0A000A0A000AFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5AFFFF
        FFFFFFFFCACACACACACACACACACACACACACACACACACACACACACACACAFFFFFFFF
        FFFF555555FBFBFB555555FBFBFB5A5A5A5A5A5ADDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FFFF00FF0A000A302947D6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FD
        FFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFF0000000000009F9B980000000A000AFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5A919191FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555
        55555555FBFBFB5555555A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0A000AD6FDFFD6FDFFDA0000DA0000DA0000DA0000DA0000
        DA0000DA0000DA0000DA0000D6FDFF1E24220A000A0A000A0A000AFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFCA
        CACACACACACACACACACACACACACACACACACACACACACACACACACAFFFFFF797979
        5A5A5A5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0A000A0A000AD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6
        FDFFD6FDFFD6FDFFD6FDFF0000000A000AFF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555555A5A5ADD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0A000A0A000AD6FDFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FFBDFCFF0A000AFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5AFFFFFFDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFF5A5A5ADDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0A000AD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFF
        D6FDFFD6FDFF0A000A0A000AFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A5A5A5ADDDDDDDDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A00
        0A0A000AC1F6FE00AAF300AAF300AAF300AAF300AAF300AAF300AAF300AAF300
        AAF3D6FDFF30132D0A000AFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5AFFFFFFD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7FFFFFF7979795A5A5ADDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A000A
        0A000A59245956235656235551215050204F4E1F4C4B1F49481D46471C46451C
        4230132D0A000AFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5A989898959595959595929292919191
        8F8F8F8E8E8E8B8B8B8A8A8A8989897979795A5A5ADDDDDDDDDDDDDDDDDDFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      NumGlyphs = 2
      Spacing = 8
      OnClick = TS_SpeedButton1Click
      RepeatedClick = False
      Border = True
      Align = alTop
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 732
    Gradient.ColorStart = 9027548
    inherited btHelp: TTS_SpeedButton
      Left = 687
      Top = 10
    end
    inherited lbUpperHint: TTS_Label
      Left = 722
      Top = 11
      Caption = 
        'Realiza um comparativo entre contagens ou com o estoque a fim de' +
        ' encontrar diferen'#231'as para ajustes no estoque do item de invent'#225 +
        'rio.'
    end
    inherited lbCaption: TdxfLabel
      Width = 229
      AutoSize = True
      Caption = 'Fechar Ficha de Balan'#231'o'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 614
    Height = 326
    Color = 14019327
    object TS_Label1: TTS_Label
      Left = 6
      Top = 12
      Width = 115
      Cursor = crHandPoint
      Alignment = taLeftJustify
      Caption = 'Fichas de Balan'#231'o:'
      FocusControl = cmbFicha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      FormatoTabela = False
      LinkTo = 'FrmBalancoFichas'
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 9
      Top = 69
      Width = 372
      Alignment = taLeftJustify
      Caption = 'Itens comparados: (Itens com a cor      existe diferen'#231'a.)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 6
      Top = 43
      Width = 190
      Alignment = taLeftJustify
      Caption = 'Checar Diferen'#231'a da Contagem entre:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape1: TTS_Shape
      Left = 213
      Top = 68
      Width = 17
      Height = 17
      Brush.Color = clMaroon
      Shape = stCircle
      Transparent = False
    end
    object rgDiferenca: TTS_GroupBox
      Left = 382
      Top = 5
      Width = 227
      Height = 69
      Caption = 'Checar Diferen'#231'as entre contagens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object lbldaContagem: TTS_Label
        Left = 9
        Top = 20
        Width = 80
        Caption = 'da Contagem:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lblcomContagem: TTS_Label
        Left = 14
        Top = 44
        Width = 75
        Caption = 'com Contagem:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbContagem1: TTS_ComboBox
        Left = 93
        Top = 17
        Width = 124
        TabOrder = 0
        StyleController = DMProjeto.esItens
        OnChange = cmbContagem1Change
        DropDownListStyle = True
        Height = 21
      end
      object cmbContagem2: TTS_ComboBox
        Left = 93
        Top = 42
        Width = 124
        TabOrder = 1
        StyleController = DMProjeto.esItens
        OnChange = cmbContagem2Change
        Height = 21
      end
    end
    object cmbFicha: TTS_LookupComboBox
      Left = 120
      Top = 10
      Width = 236
      TabOrder = 0
      StyleController = DMProjeto.esItens
      OnChange = cmbFichaChange
      ClearKey = 32
      ListFieldName = 'BALANCOFICHA;DESCRICAOFICHA;DATA;NOME'
      KeyFieldName = 'BALANCOFICHA'
      ListSource = C_FichasDS
      LookupKeyValue = Null
      Height = 19
    end
    object dbgItens: TTS_QDBGrid
      Left = 10
      Top = 86
      Width = 602
      Height = 229
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'BalancoFichaItem'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ContagensItensDS
      Filter.Criteria = {00000000}
      GroupPanelColor = 15461355
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnCustomDrawCell = dbgItensCustomDrawCell
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_AppendOnEnter = False
      RowFooterNodeFont.Charset = DEFAULT_CHARSET
      RowFooterNodeFont.Color = clWindowText
      RowFooterNodeFont.Height = -11
      RowFooterNodeFont.Name = 'Tahoma'
      RowFooterNodeFont.Style = [fsBold]
      TS_AccountFooterStyle = False
      TS_HideGroupHeader = False
      TS_AnotherColor = clWindow
      TS_ReportHeaderStyle = False
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Tahoma'
      GroupNodeFont.Style = []
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clWindowText
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = []
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = []
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgItensITEM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgItensCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgItensReferencia: TdxDBGridColumn
        Caption = 'Refer'#234'ncia'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgItensDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 226
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgItensUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 33
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgItensEstoque: TdxDBGridColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Estoque'
      end
      object dbgItensContagem1: TdxDBGridColumn
        Caption = '1'#170' Contagem'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Contagem1'
      end
      object dbgItensContagem2: TdxDBGridColumn
        Caption = '2'#170' Contagem'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Contagem2'
      end
      object dbgItensDiferenca: TdxDBGridColumn
        Caption = 'Diferen'#231'a'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Diferenca'
      end
      object dbgItensBalancoFichaItem: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BalancoFichaItem'
      end
      object dbgItensCusto: TdxDBGridColumn
        Caption = 'Custo Unit.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Custo'
      end
    end
    object cmbTipoDiferenca: TTS_ComboBox
      Left = 194
      Top = 41
      Width = 162
      TabOrder = 1
      StyleController = DMProjeto.esItens
      Text = 'Estoque'
      OnChange = cmbTipoDiferencaChange
      DropDownListStyle = True
      Items.Strings = (
        'Contagens'
        'Estoque')
      Height = 19
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 411
    Top = 321
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 584
    Top = 311
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 389
    Top = 65534
  end
  inherited Beep: TBTBeeper
    Left = 64
    Top = 148
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Fechar Ficha de Balan'#231'o'
    Left = 482
    Top = 324
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 292
    end
  end
  object TS_PopupMenu1: TTS_PopupMenu
    Left = 439
    object MenuItem1: TMenuItem
      Caption = 'Modo de Tradu'#231#227'o'
      ShortCut = 16496
    end
  end
  object Q_Fichas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select bf.* , f.nome'
      
        'from balancofichas bf left join favorecidos f on bf.usuario = f.' +
        'favorecido'
      'where status = 1')
    UpdateObject = U_Fichas
    Left = 47
    Top = 152
  end
  object Q_FichasProvider: TDataSetProvider
    DataSet = Q_Fichas
    Constraints = True
    Left = 33
    Top = 103
  end
  object C_Fichas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_FichasProvider'
    Left = 35
    Top = 204
    object C_FichasBALANCOFICHA: TIntegerField
      FieldName = 'BALANCOFICHA'
      Required = True
    end
    object C_FichasDATA: TDateField
      FieldName = 'DATA'
    end
    object C_FichasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_FichasSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_FichaslkEstoquista: TStringField
      FieldKind = fkLookup
      FieldName = 'lkEstoquista'
      LookupDataSet = C_Usuarios
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIO'
      Size = 30
      Lookup = True
    end
    object C_FichasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_FichasDESCRICAOFICHA: TStringField
      FieldName = 'DESCRICAOFICHA'
      Size = 30
    end
    object C_FichasALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
  end
  object C_FichasDS: TDataSource
    DataSet = C_Fichas
    Left = 54
    Top = 256
  end
  object C_ContagensItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ContagensProvider'
    Left = 154
    Top = 257
    object C_ContagensItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ContagensItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ContagensItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContagensItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ContagensItensContagem1: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Contagem1'
      OnChange = C_ContagensItensContagem1Change
      DisplayFormat = '###,##0.0##'
    end
    object C_ContagensItensContagem2: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Contagem2'
      DisplayFormat = '###,##0.0##'
    end
    object C_ContagensItensEstoque: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Estoque'
      DisplayFormat = '###,##0.0##'
    end
    object C_ContagensItensDiferenca: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Diferenca'
      DisplayFormat = '###,##0.0##'
    end
    object C_ContagensItensBalancoFichaItem: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'BalancoFichaItem'
    end
    object C_ContagensItensCusto: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Custo'
    end
    object C_ContagensItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_ContagensItensFator: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Fator'
    end
  end
  object C_ContagensItensDS: TDataSource
    DataSet = C_ContagensItens
    Left = 226
    Top = 318
  end
  object Q_ContagensProvider: TDataSetProvider
    DataSet = Q_ContagensItens
    Constraints = True
    Left = 157
    Top = 209
  end
  object Q_ContagensItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select i.item, i.codigo, i.descricao, i.unidade, i.referencia'
      'from itens i'
      'where i.item is null')
    Left = 157
    Top = 161
  end
  object U_ContagensItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from balancocontagemitens '
      'where'
      '  BALANCOFICHAITEM = :BALANCOFICHAITEM and'
      '  CONTAGEM = :CONTAGEM')
    ModifySQL.Strings = (
      'update balancocontagemitens'
      'set'
      '  QUANTIDADE = :QUANTIDADE'
      'where'
      '  BALANCOFICHAITEM = :OLD_BALANCOFICHAITEM and'
      '  CONTAGEM = :OLD_CONTAGEM')
    InsertSQL.Strings = (
      'insert into balancocontagemitens'
      '  (BALANCOFICHAITEM, CONTAGEM, QUANTIDADE, USUARIO)'
      'values'
      '  (:BALANCOFICHAITEM, :CONTAGEM, :QUANTIDADE, :USUARIO)')
    DeleteSQL.Strings = (
      'delete from balancocontagemitens'
      'where'
      '  BALANCOFICHAITEM = :OLD_BALANCOFICHAITEM and'
      '  CONTAGEM = :OLD_CONTAGEM')
    Left = 158
    Top = 300
  end
  object ppmFichas: TTS_PopupMenu
    Left = 91
    Top = 329
    object FecharFichadeBalano1: TMenuItem
      Caption = 'Cancelar Ficha de Balan'#231'o'
      ShortCut = 115
    end
  end
  object U_Fichas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from balancofichas '
      'where'
      '  BALANCOFICHA = :BALANCOFICHA')
    ModifySQL.Strings = (
      'update balancofichas'
      'set'
      '  STATUS = :STATUS'
      'where'
      '  BALANCOFICHA = :OLD_BALANCOFICHA')
    InsertSQL.Strings = (
      '')
    Left = 39
    Top = 254
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 325
    Top = 200
  end
  object Q_Check: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 319
    Top = 151
  end
  object ppFichaBalanco: TppReport
    AutoStop = False
    DataPipeline = ppDBFichaBalanco
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    Left = 406
    Top = 153
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFichaBalanco'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppCabecalho: TppRegion
        UserName = 'RegEmpresa'
        Pen.Style = psClear
        mmHeight = 26194
        mmLeft = 1058
        mmTop = 265
        mmWidth = 193940
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 14552
        mmWidth = 10724
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Descri'#231#227'o do Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 14552
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 132027
        mmTop = 14817
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Diferen'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 187855
        mmTop = 14817
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Data Ficha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 16404
        BandType = 0
      end
      object ppTitulo: TppLabel
        UserName = 'Titulo'
        Caption = 'Diferen'#231'as na Ficha de Balan'#231'o de N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4498
        mmLeft = 70115
        mmTop = 1058
        mmWidth = 76200
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Estoquista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 5821
        mmWidth = 16669
        BandType = 0
      end
      object ppDataFicha: TppLabel
        UserName = 'DataFicha'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 18785
        mmTop = 1323
        mmWidth = 21167
        BandType = 0
      end
      object ppEstoquista: TppLabel
        UserName = 'DataFicha1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 18785
        mmTop = 5821
        mmWidth = 50271
        BandType = 0
      end
      object ppContagem1: TppLabel
        UserName = 'Contagem1'
        AutoSize = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 142611
        mmTop = 14817
        mmWidth = 20638
        BandType = 0
      end
      object ppContagem2: TppLabel
        UserName = 'Contagem2'
        AutoSize = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 164307
        mmTop = 14817
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 14552
        mmWidth = 16140
        BandType = 0
      end
      object ppDescricaoFicha: TppLabel
        UserName = 'DescricaoFicha'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 5821
        mmWidth = 92869
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CODIGO'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3969
        mmLeft = 53975
        mmTop = 794
        mmWidth = 75406
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'UNIDADE'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3969
        mmLeft = 130969
        mmTop = 794
        mmWidth = 10583
        BandType = 4
      end
      object ppDBContagem2: TppDBText
        UserName = 'DBContagem2'
        DataField = 'Contagem2'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 794
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Diferenca'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3704
        mmLeft = 184415
        mmTop = 794
        mmWidth = 18256
        BandType = 4
      end
      object ppDBContagem1: TppDBText
        UserName = 'DBContagem1'
        DataField = 'Contagem1'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 794
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        CharWrap = True
        DataField = 'REFERENCIA'
        DataPipeline = ppDBFichaBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFichaBalanco'
        mmHeight = 3969
        mmLeft = 18521
        mmTop = 794
        mmWidth = 33073
        BandType = 4
      end
    end
  end
  object ppDBFichaBalanco: TppDBPipeline
    DataSource = C_ContagensItensDS
    OpenDataSource = False
    UserName = 'DBFichaBalanco'
    Left = 407
    Top = 198
    object ppDBFichaBalancoppField1: TppField
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField4: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField5: TppField
      FieldAlias = 'Contagem1'
      FieldName = 'Contagem1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField6: TppField
      FieldAlias = 'Contagem2'
      FieldName = 'Contagem2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField7: TppField
      FieldAlias = 'Estoque'
      FieldName = 'Estoque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField8: TppField
      FieldAlias = 'Diferenca'
      FieldName = 'Diferenca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField9: TppField
      FieldAlias = 'BalancoFichaItem'
      FieldName = 'BalancoFichaItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField10: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBFichaBalancoppField11: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UsuariosProvider'
    Left = 415
    Top = 289
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select favorecido, nome from favorecidos where tipofavorecido = ' +
        '3'
      'and desativado = '#39'N'#39' order by nome')
    Left = 339
    Top = 251
  end
  object Q_UsuariosProvider: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 409
    Top = 243
  end
  object ppFicha: TppReport
    AutoStop = False
    DataPipeline = ppDBFicha
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    Left = 535
    Top = 162
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFicha'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppCabecalho2: TppRegion
        UserName = 'RegEmpresa'
        Pen.Style = psClear
        mmHeight = 26194
        mmLeft = 1058
        mmTop = 265
        mmWidth = 193940
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 14552
        mmWidth = 10724
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label2'
        Caption = 'Descri'#231#227'o do Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 69850
        mmTop = 14817
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label3'
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 167746
        mmTop = 14552
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label6'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 180446
        mmTop = 14552
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label7'
        Caption = 'Data Ficha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 16404
        BandType = 0
      end
      object ppTitulo2: TppLabel
        UserName = 'Titulo'
        Caption = 'Contagem da Ficha de Balan'#231'o de N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4498
        mmLeft = 70115
        mmTop = 1058
        mmWidth = 67204
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label9'
        Caption = 'Estoquista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 5821
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label4'
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 21960
        mmTop = 14817
        mmWidth = 25929
        BandType = 0
      end
      object ppDataFicha2: TppLabel
        UserName = 'DataFicha'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 18785
        mmTop = 1323
        mmWidth = 21167
        BandType = 0
      end
      object ppEstoquista2: TppLabel
        UserName = 'DataFicha1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 18785
        mmTop = 5821
        mmWidth = 50271
        BandType = 0
      end
      object ppDescricaoFicha2: TppLabel
        UserName = 'DescricaoFicha'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 5821
        mmWidth = 93398
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText4'
        DataField = 'CODIGO'
        DataPipeline = ppDBFicha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 794
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText5'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBFicha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3969
        mmLeft = 69586
        mmTop = 794
        mmWidth = 95250
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText6'
        DataField = 'UNIDADE'
        DataPipeline = ppDBFicha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3969
        mmLeft = 167217
        mmTop = 794
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        DataField = 'REFERENCIA'
        DataPipeline = ppDBFicha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBFicha'
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 794
        mmWidth = 45508
        BandType = 4
      end
      object ppLinha: TppLine
        UserName = 'Linha'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 179123
        mmTop = 4498
        mmWidth = 18785
        BandType = 4
      end
    end
  end
  object ppDBFicha: TppDBPipeline
    DataSource = Q_FichaDS
    OpenDataSource = False
    UserName = 'DBFichaBalanco1'
    Left = 534
    Top = 211
    object ppField1: TppField
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'BALANCOFICHA'
      FieldName = 'BALANCOFICHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'CONTAGEM'
      FieldName = 'CONTAGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'BALANCOFICHAITEM'
      FieldName = 'BALANCOFICHAITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object Q_Ficha: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.item, i.codigo, i.descricao, i.unidade, bci.quantidade,' +
        ' i.referencia,'
      
        'bfi.balancoficha, bci.contagem, bci.balancofichaitem, bci.usuari' +
        'o'
      'from balancofichasitens bfi left join balancocontagemitens bci'
      'on bfi.balancofichaitem = bci.balancofichaitem'
      'left join itens i on bfi.item = i.item'
      'where bfi.balancoficha = :balanco'
      'order by i.descricao')
    UpdateObject = U_ContagensItens
    Left = 70
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'balanco'
        ParamType = ptUnknown
      end>
  end
  object P_Ficha: TDataSetProvider
    DataSet = Q_Ficha
    Constraints = True
    Left = 231
    Top = 69
  end
  object C_Ficha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Ficha'
    Left = 321
    Top = 72
    object IntegerField1: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = []
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 13
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 6
    end
    object C_ContagensItensBALANCOFICHA: TIntegerField
      FieldName = 'BALANCOFICHA'
      ProviderFlags = []
    end
    object C_ContagensItensCONTAGEM: TIntegerField
      FieldName = 'CONTAGEM'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'BALANCOFICHAITEM'
      Required = True
    end
    object C_ContagensItensUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object StringField4: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_FichaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
  end
  object Q_FichaDS: TDataSource
    DataSet = C_Ficha
    Left = 151
    Top = 65
  end
end

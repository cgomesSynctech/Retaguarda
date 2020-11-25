inherited RptInventarioEstoque: TRptInventarioEstoque
  Left = 405
  Top = 100
  Width = 485
  Height = 510
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 362
    Width = 107
    Height = 429
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 395
      Width = 105
    end
    inherited btComando2: TTS_SpeedButton
      Width = 105
      Caption = 'Excluir Invent.'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
        F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
        F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
        7777777700000007777777777777777777777777777777777777}
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Width = 105
      Caption = 'Gerar Invent.'
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
      Width = 105
      Caption = '&Filtro'
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
      NumGlyphs = 1
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 105
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
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 105
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 469
    Gradient.ColorStart = 9027548
    inherited btHelp: TTS_SpeedButton
      Left = 441
    end
    inherited lbCaption: TdxfLabel
      Width = 223
      AutoSize = True
      Caption = 'Relat'#243'rio de Invent'#225'rio'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 362
    Height = 429
    Color = 14019327
    object TS_Label1: TTS_Label
      Left = 132
      Top = 3
      Width = 151
      Alignment = taLeftJustify
      Caption = 'Data Para o Novo Invent'#225'rio:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dtData: TTS_DateTimePicker
      Left = 285
      Top = 0
      Width = 77
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
      UseEditMask = True
      Height = 19
      StoredValues = 4
    end
    object rgNivel: TTS_RadioGroup
      Left = 17
      Top = 153
      Width = 345
      Height = 62
      Caption = 'N'#237'vel de Detalhe'
      ItemIndex = 0
      Items.Strings = (
        'Produtos'
        'Produtos c/ Qtde. Entradas e Sa'#237'das'
        'Produtos c/ Mudan'#231'a de Tributa'#231#227'o')
      TabOrder = 1
      Transparent = True
    end
    object dfSinal: TTS_ImageEdit
      Left = 81
      Top = 217
      Width = 51
      TabOrder = 2
      Text = 'Maior'
      StyleController = DMProjeto.esItens
      Descriptions.Strings = (
        'Maior'
        'Menor')
      ImageIndexes.Strings = (
        '0'
        '1')
      Values.Strings = (
        '>'
        '<')
      Height = 19
    end
    object cbEstoque: TTS_CheckBox
      Left = 15
      Top = 217
      Width = 63
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = 'Estoque'
      State = cbsChecked
      DisableEdit = False
      Height = 19
    end
    object dfEstoque: TTS_CalcEdit
      Left = 132
      Top = 217
      Width = 53
      TabOrder = 4
      StyleController = DMProjeto.esItens
      Text = '0'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
        000000FD000006060404040404040400000006FF0606060606060400000006FE
        0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
        000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
        FEFF06000000FD0606060606060606FD0000}
      Height = 19
      StoredValues = 1
    end
    object FiltroItens: TTS_PopupFiltrarItens
      Left = 208
      Top = 217
      Width = 153
      Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      AutoSelect = False
      StyleController = DMProjeto.esItens
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
    object rgInventario: TTS_RadioGroup
      Left = 16
      Top = 17
      Width = 347
      Height = 131
      Caption = 'Invent'#225'rios Gerados:'
      Columns = 4
      TabOrder = 6
      OnClick = rgInventarioClick
      Transparent = True
    end
    object rgAgrupamento: TTS_RadioGroup
      Left = 18
      Top = 240
      Width = 345
      Height = 83
      Caption = 'Agrupamento do Relat'#243'rio'
      ItemIndex = 0
      Items.Strings = (
        'Nenhum'
        'Grupo do Produto'
        'Fabricante do Produto')
      TabOrder = 7
      Transparent = True
    end
    object Animate1: TAnimate
      Left = 17
      Top = 359
      Width = 348
      Height = 1
      Active = False
      Color = clActiveBorder
      CommonAVI = aviFindFolder
      ParentColor = False
      StopFrame = 29
      Visible = False
    end
    object RG_TipoCusto: TTS_RadioGroup
      Left = 17
      Top = 360
      Width = 345
      Height = 63
      Caption = 'Tipo de Custo '
      ItemIndex = 0
      Items.Strings = (
        'Custo contabil'
        'Custo Medio '
        'Ultimo Pre'#231'o de Compra ')
      TabOrder = 9
      Transparent = True
    end
    object TS_MudancaTributacao: TTS_CheckBox
      Left = 18
      Top = 326
      Width = 338
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 10
      Caption = 'Produtos com Mudan'#231'a de tributa'#231#227'o ( P/ data de 31/12/2015  )'
      DisableEdit = False
      Height = 28
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 554
    Top = 207
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 448
    Top = 253
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 476
    Top = 54
    object InventrioBase1: TMenuItem [0]
      Caption = 'Invent'#225'rio Base'
      OnClick = InventrioBase1Click
    end
  end
  inherited Beep: TBTBeeper
    Left = 520
    Top = 181
  end
  inherited FormStorage: TFormStorage
    Left = 455
    Top = 9
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Invent'#225'rio'
    Left = 448
    Top = 200
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 468
    Top = 116
  end
  object Q_Gerar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 251
    Top = 183
  end
  object ppRelatDetalhado: TppReport
    AutoStop = False
    ColumnPositions.Strings = (
      '10000'
      '110000')
    DataPipeline = ppDBMaster
    PageLimit = 500
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 6000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 278999
    PrinterSetup.mmPaperWidth = 215999
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'J:\Fontes_BR\MaxShop43\Relatorios\Inventario\rpt_InventarioDetal' +
      'he.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Language = lgPortugueseBrazil
    SavePrinterSetup = True
    Left = 104
    Top = 58
    Version = '6.02'
    mmColumnWidth = 200000
    DataPipelineName = 'ppDBMaster'
    object ppTituloRel: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 25135
      mmPrintPosition = 0
      object ppCabecalho2: TppRegion
        UserName = 'Cabecalho2'
        Pen.Style = psClear
        mmHeight = 24342
        mmLeft = 529
        mmTop = 529
        mmWidth = 195792
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 15875
      mmPrintPosition = 0
      object ppTitulo: TppMemo
        UserName = 'Titulo'
        Caption = 'ppTitulo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Lines.Strings = (
          'Invent'#225'rio Detalhado')
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 200025
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppPeriodo: TppLabel
        UserName = 'Periodo'
        ShiftWithParent = True
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 5027
        mmWidth = 135467
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 5292
        mmWidth = 25135
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 5292
        mmWidth = 28046
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforeGenerate = ppDetailBand1BeforeGenerate
      PrintHeight = phDynamic
      mmBottomOffset = 2000
      mmHeight = 35983
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CustoTotalAnterior'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 6085
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Color = 14342874
        DataField = 'Codigo'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 35983
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Descricao'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 37571
        mmTop = 0
        mmWidth = 76994
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Referencia'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Nome'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 142611
        mmTop = 0
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DescUnidade'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 174361
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'EstoqueAnterior'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 30163
        mmTop = 6085
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CustoAnterior'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 103452
        mmTop = 6085
        mmWidth = 17992
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Estoque Anterior:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5821
        mmWidth = 28840
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Custo Total Anterior:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 138113
        mmTop = 5821
        mmWidth = 34396
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Custo Anterior:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 5821
        mmWidth = 24871
        BandType = 4
      end
      object ppRegion4: TppRegion
        UserName = 'Region4'
        Caption = 'Total do Produto'
        Pen.Color = clGray
        Pen.Style = psDot
        Pen.Width = 2
        ShiftWithParent = True
        mmHeight = 6350
        mmLeft = 0
        mmTop = 23813
        mmWidth = 194205
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 23019
          mmTop = 25135
          mmWidth = 17727
          BandType = 4
        end
        object ppLabel22: TppLabel
          OnPrint = ppLabel22Print
          UserName = 'Label22'
          Caption = 'Estoque Atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 794
          mmTop = 24871
          mmWidth = 21431
          BandType = 4
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'CustoMedio'
          DataPipeline = ppDBMaster
          DisplayFormat = '###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 98690
          mmTop = 25135
          mmWidth = 17727
          BandType = 4
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Custo Atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 79640
          mmTop = 25135
          mmWidth = 17992
          BandType = 4
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'Custo Total Atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 148167
          mmTop = 24871
          mmWidth = 26194
          BandType = 4
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 175155
          mmTop = 24871
          mmWidth = 17463
          BandType = 4
        end
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDash
        ShiftWithParent = True
        Visible = False
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 31485
        mmWidth = 199761
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Saidas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 11642
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Entradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 11642
        mmWidth = 12435
        BandType = 4
      end
      object lbNaoHouveS: TppLabel
        UserName = 'lbNaoHouveS'
        Caption = '(N'#227'o houve)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 10848
        mmTop = 11906
        mmWidth = 17727
        BandType = 4
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        Caption = 'Saidas'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 16140
        mmWidth = 95515
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppSubSaidas: TppSubReport
          UserName = 'SubSaidas'
          ExpandAll = False
          NewPrintJob = False
          TraverseAllData = False
          DataPipelineName = 'ppDBSaidas'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 17198
          mmWidth = 95515
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 5000
          mmStopPosition = 0
          object ppChildReport2: TppChildReport
            AutoStop = False
            DataPipeline = ppDBSaidas
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.PaperName = 'Carta'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.mmMarginBottom = 15000
            PrinterSetup.mmMarginLeft = 10000
            PrinterSetup.mmMarginRight = 6000
            PrinterSetup.mmMarginTop = 10000
            PrinterSetup.mmPaperHeight = 278999
            PrinterSetup.mmPaperWidth = 215999
            PrinterSetup.PaperSize = 1
            Template.FileName = 
              'G:\Desenv\MaxShop\Relatorios\Inventario\rpt_InventarioDetalhe.rt' +
              'm'
            Units = utMillimeters
            Left = 142
            Top = 141
            Version = '6.02'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBSaidas'
            object ppDetailBand4: TppDetailBand
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppDBText15: TppDBText
                UserName = 'DBText15'
                DataField = 'Data'
                DataPipeline = ppDBSaidas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 0
                mmTop = 265
                mmWidth = 19050
                BandType = 4
              end
              object ppDBText16: TppDBText
                UserName = 'DBText16'
                DataField = 'Notafiscal'
                DataPipeline = ppDBSaidas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 21167
                mmTop = 265
                mmWidth = 23813
                BandType = 4
              end
              object ppDBText17: TppDBText
                UserName = 'DBText17'
                DataField = 'QuantProduto'
                DataPipeline = ppDBSaidas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 46831
                mmTop = 265
                mmWidth = 16669
                BandType = 4
              end
              object ppDBText19: TppDBText
                UserName = 'DBText19'
                DataField = 'CustoMedio'
                DataPipeline = ppDBSaidas
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 65617
                mmTop = 265
                mmWidth = 16404
                BandType = 4
              end
              object ppDBText20: TppDBText
                UserName = 'DBText20'
                DataField = 'TipoMov'
                DataPipeline = ppDBSaidas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 84138
                mmTop = 265
                mmWidth = 5821
                BandType = 4
              end
            end
            object ppSummaryBand3: TppSummaryBand
              BeforeGenerate = ppSummaryBand3BeforeGenerate
              mmBottomOffset = 0
              mmHeight = 7408
              mmPrintPosition = 0
              object ppDBCalc7: TppDBCalc
                UserName = 'DBCalc7'
                DataField = 'QuantProduto'
                DataPipeline = ppDBSaidas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 25665
                mmTop = 1588
                mmWidth = 21167
                BandType = 7
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Weight = 0.75
                mmHeight = 529
                mmLeft = 0
                mmTop = 265
                mmWidth = 91017
                BandType = 7
              end
              object ppDBCalc8: TppDBCalc
                UserName = 'DBCalc8'
                DataPipeline = ppDBSaidas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppDBSaidas'
                mmHeight = 3969
                mmLeft = 0
                mmTop = 1588
                mmWidth = 17463
                BandType = 7
              end
              object ppLabel25: TppLabel
                UserName = 'Label25'
                Caption = 'x'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 48154
                mmTop = 1588
                mmWidth = 1852
                BandType = 7
              end
              object ppDBText21: TppDBText
                UserName = 'DBText21'
                DataField = 'CustoMedio'
                DataPipeline = ppDBMaster
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBMaster'
                mmHeight = 3969
                mmLeft = 51329
                mmTop = 1588
                mmWidth = 17198
                BandType = 7
              end
              object ppLabel26: TppLabel
                UserName = 'Label26'
                Caption = '='
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 69850
                mmTop = 1588
                mmWidth = 1852
                BandType = 7
              end
              object ppVariable1: TppVariable
                UserName = 'Variable1'
                AutoSize = False
                CalcOrder = 0
                DataType = dtDouble
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3969
                mmLeft = 72496
                mmTop = 1588
                mmWidth = 16933
                BandType = 7
              end
              object myCheckS: TmyCheckBox
                UserName = 'CheckS'
                Style = csXMark
                Transparent = True
                Visible = False
                mmHeight = 6879
                mmLeft = 89165
                mmTop = 265
                mmWidth = 5027
                BandType = 7
              end
            end
            object raCodeModule3: TraCodeModule
              ProgramStream = {00}
            end
          end
        end
      end
      object lbNaoHouveE: TppLabel
        UserName = 'lbNaoHouveE'
        Caption = '(N'#227'o houve)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 111654
        mmTop = 11906
        mmWidth = 17727
        BandType = 4
      end
      object ppRegion3: TppRegion
        UserName = 'Region3'
        Caption = 'Entradas'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 7408
        mmLeft = 97631
        mmTop = 16140
        mmWidth = 96838
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppSubEntradas: TppSubReport
          UserName = 'SubEntradas'
          ExpandAll = False
          NewPrintJob = False
          TraverseAllData = False
          DataPipelineName = 'ppDBEntradas'
          mmHeight = 5027
          mmLeft = 97631
          mmTop = 17198
          mmWidth = 96838
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 5000
          mmStopPosition = 0
          object ppChildReport3: TppChildReport
            AutoStop = False
            DataPipeline = ppDBEntradas
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.PaperName = 'Carta'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.mmMarginBottom = 15000
            PrinterSetup.mmMarginLeft = 10000
            PrinterSetup.mmMarginRight = 6000
            PrinterSetup.mmMarginTop = 10000
            PrinterSetup.mmPaperHeight = 278999
            PrinterSetup.mmPaperWidth = 215999
            PrinterSetup.PaperSize = 1
            Template.FileName = 
              'G:\Desenv\MaxShop\Relatorios\Inventario\rpt_InventarioDetalhe.rt' +
              'm'
            Units = utMillimeters
            Left = 162
            Top = 161
            Version = '6.02'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBEntradas'
            object ppDetailBand3: TppDetailBand
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppDBText22: TppDBText
                UserName = 'DBText22'
                DataField = 'DataEntrada'
                DataPipeline = ppDBEntradas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 0
                mmTop = 265
                mmWidth = 18256
                BandType = 4
              end
              object ppDBText23: TppDBText
                UserName = 'DBText23'
                DataField = 'NotaFiscal'
                DataPipeline = ppDBEntradas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 19315
                mmTop = 265
                mmWidth = 15081
                BandType = 4
              end
              object ppDBText24: TppDBText
                UserName = 'DBText24'
                DataField = 'QuantProduto'
                DataPipeline = ppDBEntradas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 35719
                mmTop = 265
                mmWidth = 14817
                BandType = 4
              end
              object ppDBText25: TppDBText
                UserName = 'DBText25'
                DataField = 'CustoMedioAnterior'
                DataPipeline = ppDBEntradas
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 51329
                mmTop = 265
                mmWidth = 15081
                BandType = 4
              end
              object ppDBText26: TppDBText
                UserName = 'DBText26'
                DataField = 'CustoMedioNovo'
                DataPipeline = ppDBEntradas
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 67204
                mmTop = 265
                mmWidth = 14817
                BandType = 4
              end
              object ppDBText27: TppDBText
                UserName = 'DBText201'
                DataField = 'TipoMov'
                DataPipeline = ppDBEntradas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 82815
                mmTop = 265
                mmWidth = 5027
                BandType = 4
              end
            end
            object ppSummaryBand2: TppSummaryBand
              BeforeGenerate = ppSummaryBand2BeforeGenerate
              mmBottomOffset = 0
              mmHeight = 7408
              mmPrintPosition = 0
              object ppDBCalc9: TppDBCalc
                UserName = 'DBCalc9'
                DataField = 'QuantProduto'
                DataPipeline = ppDBEntradas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 21960
                mmTop = 1588
                mmWidth = 21167
                BandType = 7
              end
              object ppLine3: TppLine
                UserName = 'Line3'
                Weight = 0.75
                mmHeight = 529
                mmLeft = 0
                mmTop = 265
                mmWidth = 87842
                BandType = 7
              end
              object ppDBCalc10: TppDBCalc
                UserName = 'DBCalc10'
                DataPipeline = ppDBEntradas
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                ParentDataPipeline = False
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppDBEntradas'
                mmHeight = 3969
                mmLeft = 0
                mmTop = 1588
                mmWidth = 17463
                BandType = 7
              end
              object ppLabel27: TppLabel
                UserName = 'Label27'
                Caption = 'x'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 44450
                mmTop = 1588
                mmWidth = 1852
                BandType = 7
              end
              object ppDBText28: TppDBText
                UserName = 'DBText28'
                DataField = 'CustoMedio'
                DataPipeline = ppDBMaster
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBMaster'
                mmHeight = 3969
                mmLeft = 47096
                mmTop = 1588
                mmWidth = 16933
                BandType = 7
              end
              object ppLabel28: TppLabel
                UserName = 'Label28'
                Caption = '='
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 65352
                mmTop = 1588
                mmWidth = 1852
                BandType = 7
              end
              object ppVariable2: TppVariable
                UserName = 'Variable2'
                AutoSize = False
                CalcOrder = 0
                DataType = dtDouble
                DisplayFormat = '##,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3969
                mmLeft = 67998
                mmTop = 1588
                mmWidth = 16933
                BandType = 7
              end
              object myCheckE: TmyCheckBox
                UserName = 'CheckS1'
                Style = csXMark
                Transparent = True
                Visible = False
                mmHeight = 6879
                mmLeft = 84667
                mmTop = 265
                mmWidth = 3969
                BandType = 7
              end
            end
          end
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppSubConfiguracao: TppSubReport
        UserName = 'SubConfiguracao'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        ShiftRelativeTo = ppRegion1
        TraverseAllData = True
        DataPipelineName = 'ppDBGrupos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 19579
        mmWidth = 199999
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          Columns = 3
          DataPipeline = ppDBGrupos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 6000
          PrinterSetup.mmMarginTop = 10000
          PrinterSetup.mmPaperHeight = 180000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 172
          Template.FileName = 'G:\Desenv\MaxShop\Relatorios\Inventario\rpt_InventarioTPG.rtm'
          Units = utMillimeters
          Left = 132
          Top = 131
          Version = '6.02'
          mmColumnWidth = 66666
          DataPipelineName = 'ppDBGrupos'
          object ppTitleBand1: TppTitleBand
            BeforeGenerate = ppTitleBand1BeforeGenerate
            mmBottomOffset = 0
            mmHeight = 50271
            mmPrintPosition = 0
            object ppLabel2: TppLabel
              UserName = 'Label2'
              Caption = 'Configura'#231#227'o de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 18785
              mmWidth = 52388
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = 'Tipo de Custo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 29633
              mmWidth = 22225
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'Custo M'#233'dio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 29633
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 'Ordem de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 34925
              mmWidth = 33073
              BandType = 1
            end
            object lbOrdem: TppLabel
              UserName = 'lbOrdem'
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 34925
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = 'Condi'#231#227'o de Estoque:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4057
              mmLeft = 0
              mmTop = 40217
              mmWidth = 34290
              BandType = 1
            end
            object lbEstoque: TppLabel
              UserName = 'lbOrdem1'
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 40217
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 'Grupos Selecionados:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 45508
              mmWidth = 33867
              BandType = 1
            end
            object lbGrupos: TppLabel
              UserName = 'lbGrupos'
              Caption = 'Todos (sem restri'#231#245'es)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 45508
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppColumnHeaderBand1: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'DESCRICAOGRUPO'
              DataPipeline = ppDBGrupos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBGrupos'
              mmHeight = 4233
              mmLeft = 11906
              mmTop = 0
              mmWidth = 53181
              BandType = 4
            end
            object myCheck: TmyCheckBox
              UserName = 'Check'
              Style = csCheckMark
              Transparent = True
              mmHeight = 5292
              mmLeft = 7144
              mmTop = 0
              mmWidth = 3969
              BandType = 4
            end
          end
          object ppColumnFooterBand1: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 200555
        BandType = 7
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 15346
        mmLeft = 529
        mmTop = 1852
        mmWidth = 196850
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Custo Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 80963
          mmTop = 4233
          mmWidth = 18785
          BandType = 7
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Estoque Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 109273
          mmTop = 4233
          mmWidth = 22754
          BandType = 7
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 102923
          mmTop = 10054
          mmWidth = 29369
          BandType = 7
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 65352
          mmTop = 10054
          mmWidth = 34131
          BandType = 7
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 40217
          mmTop = 9790
          mmWidth = 23283
          BandType = 7
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'Total de Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 136790
          mmTop = 3969
          mmWidth = 22754
          BandType = 7
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CODIGO'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 135732
          mmTop = 10054
          mmWidth = 23548
          BandType = 7
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DescGrupo'
      DataPipeline = ppDBMaster
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBMaster'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          Pen.Style = psClear
          mmHeight = 5821
          mmLeft = 0
          mmTop = 265
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 0
          mmTop = 0
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 7673
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 37571
          mmTop = 7673
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Refer'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 117211
          mmTop = 7673
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'DescGrupo'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 5027
          mmLeft = 14552
          mmTop = 265
          mmWidth = 94192
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Fabricante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 143140
          mmTop = 7673
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 177007
          mmTop = 7673
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'Total do Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 21167
          mmTop = 3175
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'DescGrupo'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 47890
          mmTop = 3175
          mmWidth = 40217
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 135467
          mmTop = 3175
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CODIGO'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 3175
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'Itens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112713
          mmTop = 3175
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 0
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 2381
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 5556
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 9525
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape9: TppShape
          UserName = 'Shape9'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 15346
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object Q_MasterDS: TDataSource
    DataSet = Q_Master
    Left = 184
    Top = 77
  end
  object Q_GruposDS: TDataSource
    DataSet = Q_Grupos
    Left = 371
    Top = 74
  end
  object Q_SaidasDS: TDataSource
    DataSet = Q_Saidas
    Left = 203
    Top = 124
  end
  object Q_EntradasDS: TDataSource
    DataSet = Q_Entradas
    Left = 320
    Top = 70
  end
  object Q_Master: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select g.Descricaogrupo as DescGrupo, p.Codigo, p.Descricao, p.R' +
        'eferencia, i.*, f.descricao as Nome,'
      ' p.unidade as DescUnidade,  '
      'Sum(((i.Estoque) * (i.CustoMedio))) as TotalProduto'
      'From (((Inventario i INNER JOIN Itens p ON i.Item = p.Item)'
      '     INNER JOIN Grupos g ON p.Grupo = g.Grupo)'
      '     LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante)')
    Left = 172
    Top = 12
    object Q_MasterDESCGRUPO: TIBStringField
      FieldName = 'DESCGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object Q_MasterCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 14
    end
    object Q_MasterDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object Q_MasterREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object Q_MasterITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'INVENTARIO.ITEM'
      Required = True
    end
    object Q_MasterDATA: TDateField
      FieldName = 'DATA'
      Origin = 'INVENTARIO.DATA'
      Required = True
    end
    object Q_MasterESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = 'INVENTARIO.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object Q_MasterCUSTOMEDIO: TIBBCDField
      FieldName = 'CUSTOMEDIO'
      Origin = 'INVENTARIO.CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object Q_MasterESTOQUEANTERIOR: TIBBCDField
      FieldName = 'ESTOQUEANTERIOR'
      Origin = 'INVENTARIO.ESTOQUEANTERIOR'
      Precision = 18
      Size = 3
    end
    object Q_MasterENTRADAS: TIBBCDField
      FieldName = 'ENTRADAS'
      Origin = 'INVENTARIO.ENTRADAS'
      Precision = 18
      Size = 3
    end
    object Q_MasterSAIDAS: TIBBCDField
      FieldName = 'SAIDAS'
      Origin = 'INVENTARIO.SAIDAS'
      Precision = 18
      Size = 3
    end
    object Q_MasterINVENTARIO: TIntegerField
      FieldName = 'INVENTARIO'
      Origin = 'INVENTARIO.INVENTARIO'
    end
    object Q_MasterNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
    object Q_MasterDESCUNIDADE: TIBStringField
      FieldName = 'DESCUNIDADE'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object Q_MasterTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from grupos')
    Left = 369
    Top = 2
    object Q_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Required = True
    end
    object Q_GruposCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'GRUPOS.CODIGO'
      Size = 10
    end
    object Q_GruposDESCRICAOGRUPO: TIBStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object Q_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'GRUPOS.TIPOITEM'
      Required = True
    end
    object Q_GruposIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'GRUPOS.IMPORTACAO'
    end
    object Q_GruposFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = 'GRUPOS.FOTO'
      Size = 255
    end
    object Q_GruposDESCONTOMAXIMO: TIBBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'GRUPOS.DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object Q_GruposCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'GRUPOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object Q_GruposTAXINCLUSO: TIBStringField
      FieldName = 'TAXINCLUSO'
      Origin = 'GRUPOS.TAXINCLUSO'
      Size = 1
    end
    object Q_GruposPTAXINCLUSO: TIBBCDField
      FieldName = 'PTAXINCLUSO'
      Origin = 'GRUPOS.PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object Q_GruposCUSTODESPESAS: TIBBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'GRUPOS.CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object Q_GruposFATORLUCRO: TIBBCDField
      FieldName = 'FATORLUCRO'
      Origin = 'GRUPOS.FATORLUCRO'
      Precision = 18
      Size = 2
    end
    object Q_GruposTAXAVEL: TIBStringField
      FieldName = 'TAXAVEL'
      Origin = 'GRUPOS.TAXAVEL'
      Size = 1
    end
    object Q_GruposDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Origin = 'GRUPOS.DESATIVADO'
      Size = 1
    end
    object Q_GruposCST: TIBStringField
      FieldName = 'CST'
      Origin = 'GRUPOS.CST'
      Size = 2
    end
    object Q_GruposREDUCAOCST: TIBBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'GRUPOS.REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object Q_GruposALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Origin = 'GRUPOS.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object Q_GruposSITUACAOECF: TIBStringField
      FieldName = 'SITUACAOECF'
      Origin = 'GRUPOS.SITUACAOECF'
      Size = 1
    end
    object Q_GruposTVA: TIBBCDField
      FieldName = 'TVA'
      Origin = 'GRUPOS.TVA'
      Precision = 18
      Size = 2
    end
    object Q_GruposTVAFONTE: TIBBCDField
      FieldName = 'TVAFONTE'
      Origin = 'GRUPOS.TVAFONTE'
      Precision = 18
      Size = 2
    end
  end
  object Q_Entradas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_EntradasBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'Select e.Data as DataEntrada, e.Numero as NotaFiscal, e.Quantida' +
        'de as QuantProduto, ep.CustoMedio_Ant,'
      
        '       ((ep.Estoque_Ant * ep.CustoMedio_Ant) + (e.Quantidade  * ' +
        'ep.CustoContabil))/'
      '       (ep.Estoque_Ant + e.Quantidade) as CustoMedioNovo,'
      '       t.Descricao as TipoMov'
      ''
      'From TransacoesEstoque e'
      'INNER JOIN TiposOrigens t ON t.Origem = e.TipoOrigem'
      'LEFT JOIN EntradasItens ep ON ep.entradaitem = e.entradaitem'
      'Where e.Item = :ITEM'
      'And   e.Data > :UltInventario and e.Data <= :DATA'
      'and e.quantidade > 0'
      'Order by 1'
      ' '
      ' '
      ' ')
    Left = 321
    Top = 22
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'UltInventario'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end>
  end
  object Q_Saidas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_EntradasBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'Select e.Data, e.Numero as NotaFiscal, abs(e.Quantidade) as Quan' +
        'tProduto, e.CustoMedio, t.Descricao as TipoMov'
      ''
      'From (TransacoesEstoque e'
      '     INNER JOIN TiposOrigens t ON t.Origem = e.TipoOrigem)'
      'Where e.Item = :ITEM and e.quantidade < 0'
      'And   e.Data > :UltInventario and e.Data <= :DATA'
      ''
      'Order by 1')
    Left = 166
    Top = 133
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'UltInventario'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end>
    object Q_SaidasDATA: TDateField
      FieldName = 'DATA'
      Origin = 'TRANSACOESESTOQUE.DATA'
    end
    object Q_SaidasNOTAFISCAL: TIBStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'TRANSACOESESTOQUE.NUMERO'
      Size = 15
    end
    object Q_SaidasQUANTPRODUTO: TFloatField
      FieldName = 'QUANTPRODUTO'
    end
    object Q_SaidasCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'TRANSACOESESTOQUE.CUSTOMEDIO'
    end
    object Q_SaidasTIPOMOV: TIBStringField
      FieldName = 'TIPOMOV'
      Origin = 'TIPOSORIGENS.DESCRICAO'
      Size = 40
    end
  end
  object ppRelatDetSimples: TppReport
    AutoStop = False
    ColumnPositions.Strings = (
      '10000'
      '110000')
    DataPipeline = ppDBMaster
    PageLimit = 500
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 6000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 278999
    PrinterSetup.mmPaperWidth = 215999
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'J:\Fontes_BR\MaxShop43\Relatorios\Inventario\rpt_InventarioDetal' +
      'heSimples.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Language = lgPortugueseBrazil
    SavePrinterSetup = True
    Left = 104
    Top = 109
    Version = '6.02'
    mmColumnWidth = 200000
    DataPipelineName = 'ppDBMaster'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 25135
      mmPrintPosition = 0
      object ppCabecalho3: TppRegion
        UserName = 'RegEmpresa'
        Pen.Style = psClear
        mmHeight = 24342
        mmLeft = 1323
        mmTop = 529
        mmWidth = 195792
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 15875
      mmPrintPosition = 0
      object ppMemo1: TppMemo
        UserName = 'Titulo'
        Caption = 'ppTitulo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Lines.Strings = (
          'Invent'#225'rio')
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 200025
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppPeriodo2: TppLabel
        UserName = 'Periodo'
        ShiftWithParent = True
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 5027
        mmWidth = 135467
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 5292
        mmWidth = 25135
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 5292
        mmWidth = 28046
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 2000
      mmHeight = 10583
      mmPrintPosition = 0
      object ppDBText18: TppDBText
        UserName = 'DBText1'
        DataField = 'CustoMedio'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText3'
        DataField = 'Codigo'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText7'
        DataField = 'Descricao'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 0
        mmWidth = 74613
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText8'
        DataField = 'Referencia'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText9'
        DataField = 'Nome'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText10'
        DataField = 'DescUnidade'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText4'
        DataField = 'Estoque'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 4498
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText5'
        DataField = 'TotalProduto'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label18'
        Caption = 'Estoque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 4498
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label22'
        Caption = 'Estoque Anterior:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 24871
        mmTop = 4498
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText12'
        DataField = 'EstoqueAnterior'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 4498
        mmWidth = 17463
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label23'
        Caption = 'Entradas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 74348
        mmTop = 4498
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText13'
        DataField = 'Entradas'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 4498
        mmWidth = 17463
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label24'
        Caption = 'Saidas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 109538
        mmTop = 4498
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText14'
        DataField = 'Saidas'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 121444
        mmTop = 4498
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubConfiguracao'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        ShiftRelativeTo = ppRegion6
        TraverseAllData = True
        DataPipelineName = 'ppDBGrupos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 19579
        mmWidth = 199999
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          Columns = 3
          DataPipeline = ppDBGrupos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 6000
          PrinterSetup.mmMarginTop = 10000
          PrinterSetup.mmPaperHeight = 180000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 172
          Template.FileName = 'G:\Desenv\MaxShop\Relatorios\Inventario\rpt_InventarioTPG.rtm'
          Units = utMillimeters
          Left = 132
          Top = 131
          Version = '6.02'
          mmColumnWidth = 66666
          DataPipelineName = 'ppDBGrupos'
          object ppTitleBand3: TppTitleBand
            BeforeGenerate = ppTitleBand3BeforeGenerate
            mmBottomOffset = 0
            mmHeight = 50271
            mmPrintPosition = 0
            object ppLabel36: TppLabel
              UserName = 'Label2'
              Caption = 'Configura'#231#227'o de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 18785
              mmWidth = 52388
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label3'
              Caption = 'Tipo de Custo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 29633
              mmWidth = 22225
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label4'
              Caption = 'Custo M'#233'dio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 29633
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label5'
              Caption = 'Ordem de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 34925
              mmWidth = 33073
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'lbOrdem'
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 34925
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label6'
              Caption = 'Condi'#231#227'o de Estoque:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4057
              mmLeft = 0
              mmTop = 40217
              mmWidth = 34290
              BandType = 1
            end
            object lbEstoque2: TppLabel
              UserName = 'lbOrdem1'
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 40217
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label7'
              Caption = 'Grupos Selecionados:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 45508
              mmWidth = 33867
              BandType = 1
            end
            object lbGrupos2: TppLabel
              UserName = 'lbGrupos'
              Caption = 'Todos (sem restri'#231#245'es)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 45508
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppColumnHeaderBand2: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText39: TppDBText
              UserName = 'DBText2'
              DataField = 'DESCRICAOGRUPO'
              DataPipeline = ppDBGrupos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBGrupos'
              mmHeight = 4233
              mmLeft = 11906
              mmTop = 0
              mmWidth = 53181
              BandType = 4
            end
            object myCheckBox1: TmyCheckBox
              UserName = 'Check'
              Style = csCheckMark
              Transparent = True
              mmHeight = 5292
              mmLeft = 7144
              mmTop = 0
              mmWidth = 3969
              BandType = 4
            end
          end
          object ppColumnFooterBand2: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 200555
        BandType = 7
      end
      object ppRegion6: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 15346
        mmLeft = 529
        mmTop = 1852
        mmWidth = 196850
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel45: TppLabel
          UserName = 'Label11'
          Caption = 'Custo Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 80963
          mmTop = 4233
          mmWidth = 18785
          BandType = 7
        end
        object ppLabel46: TppLabel
          UserName = 'Label12'
          Caption = 'Estoque Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 109273
          mmTop = 4233
          mmWidth = 22754
          BandType = 7
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 102923
          mmTop = 10054
          mmWidth = 29369
          BandType = 7
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 65352
          mmTop = 10054
          mmWidth = 34131
          BandType = 7
        end
        object ppLabel47: TppLabel
          UserName = 'Label10'
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 40217
          mmTop = 9790
          mmWidth = 23283
          BandType = 7
        end
        object ppLabel48: TppLabel
          UserName = 'Label14'
          Caption = 'Total de Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 136790
          mmTop = 3969
          mmWidth = 22754
          BandType = 7
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CODIGO'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 135732
          mmTop = 10054
          mmWidth = 23548
          BandType = 7
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DescGrupo'
      DataPipeline = ppDBMaster
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBMaster'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          Pen.Style = psClear
          mmHeight = 5821
          mmLeft = 0
          mmTop = 265
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label1'
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 794
          mmTop = 0
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label8'
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 7673
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label9'
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 24871
          mmTop = 7673
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label13'
          Caption = 'Refer'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 102923
          mmTop = 7673
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppDBText40: TppDBText
          UserName = 'DBText6'
          DataField = 'DescGrupo'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 5292
          mmLeft = 14552
          mmTop = 265
          mmWidth = 60590
          BandType = 3
          GroupNo = 0
        end
        object ppLabel53: TppLabel
          UserName = 'Label15'
          Caption = 'Fabricante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 119592
          mmTop = 7673
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel54: TppLabel
          UserName = 'Label16'
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 143140
          mmTop = 7673
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label17'
          Caption = 'Custo Unit.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 158486
          mmTop = 7673
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label19'
          Caption = 'Custo Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 177007
          mmTop = 7673
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppLabel57: TppLabel
          UserName = 'Label20'
          Caption = 'Total do Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 21167
          mmTop = 3175
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppDBText41: TppDBText
          UserName = 'DBText11'
          DataField = 'DescGrupo'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 47890
          mmTop = 3175
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 149490
          mmTop = 10054
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 169598
          mmTop = 10054
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CODIGO'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 85196
          mmTop = 3175
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label21'
          Caption = 'Itens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 103717
          mmTop = 3175
          mmWidth = 7144
          BandType = 5
          GroupNo = 0
        end
        object ppShape7: TppShape
          UserName = 'Shape2'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 0
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape8: TppShape
          UserName = 'Shape3'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 2381
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape10: TppShape
          UserName = 'Shape4'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 5556
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape11: TppShape
          UserName = 'Shape5'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 9525
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape12: TppShape
          UserName = 'Shape9'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 15346
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label201'
          Caption = 'Estoque Anterior:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 47890
          mmTop = 10054
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'EstoqueAnterior'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 74877
          mmTop = 10054
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'CustoTotalAnterior'
          DataPipeline = ppDBMaster
          DisplayFormat = '###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 3969
          mmLeft = 98425
          mmTop = 10054
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label26'
          Caption = '='
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 95779
          mmTop = 10054
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label27'
          Caption = 'Estoque Atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 127000
          mmTop = 10054
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label28'
          Caption = '='
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 167482
          mmTop = 10054
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppRelatPadrao: TppReport
    AutoStop = False
    ColumnPositions.Strings = (
      '10000'
      '110000')
    DataPipeline = ppDBMaster
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 6000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'J:\Fontes_BR\MaxShop43\Relatorios\Inventario\rpt_InventarioPadra' +
      'o.rtm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    CachePages = True
    DeviceType = 'Screen'
    Language = lgPortugueseBrazil
    SavePrinterSetup = True
    Left = 103
    Top = 161
    Version = '6.02'
    mmColumnWidth = 200000
    DataPipelineName = 'ppDBMaster'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 52388
      mmPrintPosition = 0
      object ppMemo2: TppMemo
        UserName = 'Titulo'
        Caption = 'ppTitulo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Lines.Strings = (
          'Invent'#225'rio')
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 29104
        mmWidth = 200025
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppPeriodo3: TppLabel
        UserName = 'Periodo'
        ShiftWithParent = True
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 34131
        mmWidth = 135467
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 34396
        mmWidth = 25135
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 34396
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label8'
        Caption = 'Classifica'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 47361
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label9'
        Caption = 'Discrimina'#231'ao dos Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 47361
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label13'
        Caption = 'Refer'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 86784
        mmTop = 47361
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label15'
        Caption = 'Fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 103452
        mmTop = 47361
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label16'
        Caption = 'Unidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 47361
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label18'
        Caption = 'Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 47361
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label17'
        Caption = 'Custo Unit.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 158486
        mmTop = 47361
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label19'
        Caption = 'Custo Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 47361
        mmWidth = 15875
        BandType = 0
      end
      object ppCabecalho: TppRegion
        UserName = 'RegEmpresa'
        Pen.Style = psClear
        mmHeight = 24342
        mmLeft = 794
        mmTop = 529
        mmWidth = 196850
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      AfterPrint = ppDetailBand7AfterPrint
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText42: TppDBText
        UserName = 'DBText1'
        DataField = 'CustoMedio'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText3'
        DataField = 'Codigo'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText7'
        DataField = 'Descricao'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 24871
        mmTop = 0
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText8'
        DataField = 'Referencia'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 86519
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText9'
        DataField = 'Nome'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 103452
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText10'
        DataField = 'DescUnidade'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 126736
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText4'
        DataField = 'Estoque'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText5'
        DataField = 'TotalProduto'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      AfterPrint = ppFooterBand1AfterPrint
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppSubTotalPagina: TppVariable
        UserName = 'SubTotalPagina'
        OnGetText = ppSubTotalPaginaGetText
        CalcOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 1588
        mmWidth = 21960
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Total da P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 142346
        mmTop = 1588
        mmWidth = 22225
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Acumulado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4149
        mmLeft = 147722
        mmTop = 7144
        mmWidth = 16849
        BandType = 8
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 200555
        BandType = 8
      end
      object ppAcumulado: TppVariable
        UserName = 'Acumulado'
        OnGetText = ppAcumuladoGetText
        CalcOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 177091
        mmTop = 7144
        mmWidth = 15790
        BandType = 8
      end
    end
    object ppSummaryBand5: TppSummaryBand
      NewPage = True
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubConfiguracao'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        ShiftRelativeTo = ppRegion8
        TraverseAllData = True
        DataPipelineName = 'ppDBGrupos'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 31221
        mmWidth = 199900
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          Columns = 3
          DataPipeline = ppDBGrupos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 6000
          PrinterSetup.mmMarginTop = 10000
          PrinterSetup.mmPaperHeight = 180000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 172
          Template.FileName = 'G:\Desenv\MaxShop\Relatorios\Inventario\rpt_InventarioTPG.rtm'
          Units = utMillimeters
          Left = 132
          Top = 131
          Version = '6.02'
          mmColumnWidth = 66666
          DataPipelineName = 'ppDBGrupos'
          object ppTitleBand5: TppTitleBand
            BeforeGenerate = ppTitleBand5BeforeGenerate
            mmBottomOffset = 0
            mmHeight = 50271
            mmPrintPosition = 0
            object ppLabel65: TppLabel
              UserName = 'Label2'
              Caption = 'Configura'#231#227'o de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 18785
              mmWidth = 52388
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label3'
              Caption = 'Tipo de Custo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 29633
              mmWidth = 22225
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label4'
              Caption = 'Custo M'#233'dio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 29633
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel68: TppLabel
              UserName = 'Label5'
              Caption = 'Ordem de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 34925
              mmWidth = 33073
              BandType = 1
            end
            object ppLabel69: TppLabel
              UserName = 'lbOrdem'
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 34925
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel70: TppLabel
              UserName = 'Label6'
              Caption = 'Condi'#231#227'o de Estoque:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4057
              mmLeft = 0
              mmTop = 40217
              mmWidth = 34290
              BandType = 1
            end
            object lbEstoque3: TppLabel
              UserName = 'lbOrdem1'
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 40217
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label7'
              Caption = 'Grupos Selecionados:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 45508
              mmWidth = 33867
              BandType = 1
            end
            object lbGrupos3: TppLabel
              UserName = 'lbGrupos'
              Caption = 'Todos (sem restri'#231#245'es)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 45508
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppColumnHeaderBand3: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand8: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText50: TppDBText
              UserName = 'DBText2'
              DataField = 'DESCRICAOGRUPO'
              DataPipeline = ppDBGrupos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBGrupos'
              mmHeight = 4233
              mmLeft = 11906
              mmTop = 0
              mmWidth = 53181
              BandType = 4
            end
            object myCheckBox2: TmyCheckBox
              UserName = 'Check'
              Style = csCheckMark
              Transparent = True
              mmHeight = 5292
              mmLeft = 7144
              mmTop = 0
              mmWidth = 3969
              BandType = 4
            end
          end
          object ppColumnFooterBand3: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object raCodeModule4: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 198702
        BandType = 7
      end
      object ppRegion8: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 22754
        mmLeft = 265
        mmTop = 6350
        mmWidth = 196850
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel74: TppLabel
          UserName = 'Label11'
          Caption = 'Custo Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 80699
          mmTop = 8731
          mmWidth = 18785
          BandType = 7
        end
        object ppLabel75: TppLabel
          UserName = 'Label12'
          Caption = 'Total do Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 102659
          mmTop = 8731
          mmWidth = 29104
          BandType = 7
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 102659
          mmTop = 14287
          mmWidth = 29369
          BandType = 7
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 65088
          mmTop = 14287
          mmWidth = 34131
          BandType = 7
        end
        object ppLabel76: TppLabel
          UserName = 'Label10'
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 39953
          mmTop = 14288
          mmWidth = 23283
          BandType = 7
        end
        object ppLabel77: TppLabel
          UserName = 'Label14'
          Caption = 'Qtd. de Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 134409
          mmTop = 8731
          mmWidth = 21696
          BandType = 7
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CODIGO'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 133350
          mmTop = 14287
          mmWidth = 23548
          BandType = 7
        end
        object ppSubCST: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          TraverseAllData = False
          DataPipelineName = 'ppResumoCST'
          mmHeight = 5027
          mmLeft = 265
          mmTop = 22754
          mmWidth = 196850
          BandType = 7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport6: TppChildReport
            AutoStop = False
            DataPipeline = ppResumoCST
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.PaperName = 'Carta'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.mmMarginBottom = 15000
            PrinterSetup.mmMarginLeft = 10000
            PrinterSetup.mmMarginRight = 6000
            PrinterSetup.mmMarginTop = 10000
            PrinterSetup.mmPaperHeight = 279401
            PrinterSetup.mmPaperWidth = 215900
            PrinterSetup.PaperSize = 1
            Version = '6.02'
            mmColumnWidth = 0
            DataPipelineName = 'ppResumoCST'
            object ppTitleBand6: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 6085
              mmPrintPosition = 0
              object ppLabel71: TppLabel
                UserName = 'Label71'
                Caption = 'TOTAL POR SITUA'#199#195'O TRIBUT'#193'RIA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 4233
                mmLeft = 68428
                mmTop = 794
                mmWidth = 62907
                BandType = 1
              end
              object ppLine8: TppLine
                UserName = 'Line8'
                Weight = 0.75
                mmHeight = 794
                mmLeft = 0
                mmTop = 5291
                mmWidth = 199496
                BandType = 1
              end
            end
            object ppDetailBand9: TppDetailBand
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBText53: TppDBText
                UserName = 'DBText53'
                DataField = 'DESCRICAO'
                DataPipeline = ppResumoCST
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 11
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppResumoCST'
                mmHeight = 4233
                mmLeft = 36248
                mmTop = 0
                mmWidth = 71702
                BandType = 4
              end
              object ppDBText61: TppDBText
                UserName = 'DBText61'
                DataField = 'TOTALPRODUTO'
                DataPipeline = ppResumoCST
                DisplayFormat = '#,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 11
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppResumoCST'
                mmHeight = 4233
                mmLeft = 110331
                mmTop = 0
                mmWidth = 27781
                BandType = 4
              end
            end
            object ppSummaryBand6: TppSummaryBand
              mmBottomOffset = 0
              mmHeight = 794
              mmPrintPosition = 0
              object ppLine9: TppLine
                UserName = 'Line9'
                Weight = 0.75
                mmHeight = 794
                mmLeft = 529
                mmTop = 0
                mmWidth = 198438
                BandType = 7
              end
            end
            object raCodeModule1: TraCodeModule
              ProgramStream = {00}
            end
          end
        end
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        DataField = 'TOTALPRODUTO'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 3969
        mmLeft = 169863
        mmTop = 1058
        mmWidth = 26723
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'DESCGRUPO'
      DataPipeline = ppDBMaster
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBMaster'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape13: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          Pen.Style = psClear
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label1'
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 794
          mmTop = 0
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppDBText51: TppDBText
          UserName = 'DBText6'
          DataField = 'DESCGRUPO'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial Narrow'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 5292
          mmLeft = 14552
          mmTop = 265
          mmWidth = 74348
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppLabel87: TppLabel
          UserName = 'Label20'
          Caption = 'Sub Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4304
          mmLeft = 25621
          mmTop = 3175
          mmWidth = 16228
          BandType = 5
          GroupNo = 0
        end
        object ppDBText52: TppDBText
          UserName = 'DBText11'
          DataField = 'DescGrupo'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 47890
          mmTop = 3175
          mmWidth = 39952
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'Estoque'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 135732
          mmTop = 3175
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'TotalProduto'
          DataPipeline = ppDBMaster
          DisplayFormat = '###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CODIGO'
          DataPipeline = ppDBMaster
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4233
          mmLeft = 97631
          mmTop = 3175
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel88: TppLabel
          UserName = 'Label21'
          Caption = 'Itens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 116152
          mmTop = 3175
          mmWidth = 7938
          BandType = 5
          GroupNo = 0
        end
        object ppShape14: TppShape
          UserName = 'Shape2'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 0
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape15: TppShape
          UserName = 'Shape3'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 2381
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape16: TppShape
          UserName = 'Shape4'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 5556
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape17: TppShape
          UserName = 'Shape5'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 9525
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppShape18: TppShape
          UserName = 'Shape9'
          Brush.Color = 13619151
          Pen.Color = clWhite
          mmHeight = 4763
          mmLeft = 15346
          mmTop = 2910
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'NOME'
      DataPipeline = ppDBMaster
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBMaster'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppRelatTotalGrupo: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '10000'
      '110000')
    DataPipeline = ppDBMaster
    PageLimit = 500
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 6000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'J:\Fontes_BR\MaxShop43\Relatorios\Inventario\rpt_InventarioTPG.r' +
      'tm'
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    Language = lgPortugueseBrazil
    SavePrinterSetup = True
    Left = 103
    Top = 10
    Version = '6.02'
    mmColumnWidth = 100000
    DataPipelineName = 'ppDBMaster'
    object ppTitleBand8: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 26723
      mmPrintPosition = 0
      object ppCabecalho5: TppRegion
        UserName = 'RegEmpresa'
        Pen.Style = psClear
        mmHeight = 25665
        mmLeft = 1058
        mmTop = 529
        mmWidth = 196586
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 5000
      mmHeight = 15875
      mmPrintPosition = 0
      object ppMemo4: TppMemo
        UserName = 'Titulo'
        Caption = 'ppTitulo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Lines.Strings = (
          'Invent'#225'rio - Totais por Grupo')
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 200025
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppPeriodo5: TppLabel
        UserName = 'Periodo'
        ShiftWithParent = True
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 5027
        mmWidth = 135467
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 5292
        mmWidth = 25135
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 5292
        mmWidth = 28046
        BandType = 0
      end
    end
    object ppColumnHeaderBand5: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLabel101: TppLabel
        UserName = 'Label1'
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 8731
        BandType = 2
      end
      object ppLabel102: TppLabel
        UserName = 'Label8'
        Caption = 'Custo Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 0
        mmWidth = 16140
        BandType = 2
      end
      object ppLabel103: TppLabel
        UserName = 'Label9'
        Caption = 'Estoque Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55827
        mmTop = 0
        mmWidth = 19315
        BandType = 2
      end
      object ppLabel104: TppLabel
        UserName = 'Label13'
        Caption = 'Qtd. Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 0
        mmWidth = 13758
        BandType = 2
      end
    end
    object ppDetailBand11: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText55: TppDBText
        UserName = 'DBText1'
        DataField = 'CUSTOMEDIO'
        DataPipeline = ppDBMaster
        DisplayFormat = '###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText3'
        DataField = 'Descricao'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 36513
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText4'
        DataField = 'ESTOQUE'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 57150
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText5'
        DataField = 'TotalItens'
        DataPipeline = ppDBMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMaster'
        mmHeight = 4233
        mmLeft = 76465
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppColumnFooterBand5: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppSubReport4: TppSubReport
        UserName = 'SubConfiguracao'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        ShiftRelativeTo = ppRegion11
        TraverseAllData = True
        DataPipelineName = 'ppDBGrupos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 19579
        mmWidth = 199900
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport7: TppChildReport
          AutoStop = False
          Columns = 3
          DataPipeline = ppDBGrupos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 6000
          PrinterSetup.mmMarginTop = 10000
          PrinterSetup.mmPaperHeight = 180000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 172
          Template.FileName = 'G:\Desenv\MaxShop\Relatorios\Inventario\rpt_InventarioTPG.rtm'
          Units = utMillimeters
          Left = 132
          Top = 131
          Version = '6.02'
          mmColumnWidth = 66666
          DataPipelineName = 'ppDBGrupos'
          object ppTitleBand9: TppTitleBand
            BeforeGenerate = ppTitleBand9BeforeGenerate
            mmBottomOffset = 0
            mmHeight = 50271
            mmPrintPosition = 0
            object ppLabel105: TppLabel
              UserName = 'Label2'
              Caption = 'Configura'#231#227'o de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 18785
              mmWidth = 52388
              BandType = 1
            end
            object ppLabel106: TppLabel
              UserName = 'Label3'
              Caption = 'Tipo de Custo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 29633
              mmWidth = 22225
              BandType = 1
            end
            object ppLabel107: TppLabel
              UserName = 'Label4'
              Caption = 'Custo M'#233'dio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 29633
              mmWidth = 19050
              BandType = 1
            end
            object ppLabel108: TppLabel
              UserName = 'Label5'
              Caption = 'Ordem de Impress'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 34925
              mmWidth = 33073
              BandType = 1
            end
            object ppLabel109: TppLabel
              UserName = 'lbOrdem'
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 34925
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel110: TppLabel
              UserName = 'Label6'
              Caption = 'Condi'#231#227'o de Estoque:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4057
              mmLeft = 0
              mmTop = 40217
              mmWidth = 34290
              BandType = 1
            end
            object lbEstoque5: TppLabel
              UserName = 'lbOrdem1'
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 40217
              mmWidth = 1852
              BandType = 1
            end
            object ppLabel112: TppLabel
              UserName = 'Label7'
              Caption = 'Grupos Selecionados:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 45508
              mmWidth = 33867
              BandType = 1
            end
            object lbGrupos5: TppLabel
              UserName = 'lbGrupos'
              Caption = 'Todos (sem restri'#231#245'es)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              mmHeight = 4233
              mmLeft = 37571
              mmTop = 45508
              mmWidth = 35454
              BandType = 1
            end
          end
          object ppColumnHeaderBand6: TppColumnHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand12: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText59: TppDBText
              UserName = 'DBText2'
              DataField = 'DESCRICAOGRUPO'
              DataPipeline = ppDBGrupos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppDBGrupos'
              mmHeight = 4233
              mmLeft = 11906
              mmTop = 0
              mmWidth = 53181
              BandType = 4
            end
            object myCheckBox4: TmyCheckBox
              UserName = 'Check'
              Style = csCheckMark
              Transparent = True
              mmHeight = 5292
              mmLeft = 7144
              mmTop = 0
              mmWidth = 3969
              BandType = 4
            end
          end
          object ppColumnFooterBand6: TppColumnFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 200555
        BandType = 7
      end
      object ppRegion11: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 15346
        mmLeft = 529
        mmTop = 1852
        mmWidth = 196850
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppLabel114: TppLabel
          UserName = 'Label11'
          Caption = 'Custo Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 80963
          mmTop = 4233
          mmWidth = 18785
          BandType = 7
        end
        object ppLabel115: TppLabel
          UserName = 'Label12'
          Caption = 'Estoque Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          Visible = False
          mmHeight = 4233
          mmLeft = 109273
          mmTop = 4233
          mmWidth = 22754
          BandType = 7
        end
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'TotalEstoque'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 102923
          mmTop = 10054
          mmWidth = 29369
          BandType = 7
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'TotalGrupo'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 65352
          mmTop = 10054
          mmWidth = 34131
          BandType = 7
        end
        object ppLabel116: TppLabel
          UserName = 'Label10'
          Caption = 'Total Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 40217
          mmTop = 9790
          mmWidth = 23283
          BandType = 7
        end
        object ppLabel117: TppLabel
          UserName = 'Label14'
          Caption = 'Total de Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 4233
          mmLeft = 136790
          mmTop = 3969
          mmWidth = 22754
          BandType = 7
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'TotalItens'
          DataPipeline = ppDBMaster
          DisplayFormat = '#,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBMaster'
          mmHeight = 4763
          mmLeft = 135732
          mmTop = 10054
          mmWidth = 23548
          BandType = 7
        end
      end
    end
  end
  object ppDBMaster: TppDBPipeline
    DataSource = Q_MasterDS
    UserName = 'DBMaster'
    Left = 193
    Top = 185
    object ppDBMasterppField1: TppField
      FieldAlias = 'DESCGRUPO'
      FieldName = 'DESCGRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField4: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField5: TppField
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField6: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField7: TppField
      FieldAlias = 'ESTOQUE'
      FieldName = 'ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField8: TppField
      FieldAlias = 'CUSTOMEDIO'
      FieldName = 'CUSTOMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField9: TppField
      FieldAlias = 'ESTOQUEANTERIOR'
      FieldName = 'ESTOQUEANTERIOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField10: TppField
      FieldAlias = 'ENTRADAS'
      FieldName = 'ENTRADAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField11: TppField
      FieldAlias = 'SAIDAS'
      FieldName = 'SAIDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField12: TppField
      FieldAlias = 'INVENTARIO'
      FieldName = 'INVENTARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField13: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField14: TppField
      FieldAlias = 'DESCUNIDADE'
      FieldName = 'DESCUNIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBMasterppField15: TppField
      FieldAlias = 'TOTALPRODUTO'
      FieldName = 'TOTALPRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
  object ppDBGrupos: TppDBPipeline
    DataSource = Q_GruposDS
    UserName = 'DBGrupos'
    Left = 364
    Top = 125
    object ppDBGruposppField1: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField3: TppField
      FieldAlias = 'DESCRICAOGRUPO'
      FieldName = 'DESCRICAOGRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField4: TppField
      FieldAlias = 'TIPOITEM'
      FieldName = 'TIPOITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField5: TppField
      FieldAlias = 'IMPORTACAO'
      FieldName = 'IMPORTACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField6: TppField
      FieldAlias = 'FOTO'
      FieldName = 'FOTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField7: TppField
      FieldAlias = 'DESCONTOMAXIMO'
      FieldName = 'DESCONTOMAXIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField8: TppField
      FieldAlias = 'COMISSAO'
      FieldName = 'COMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField9: TppField
      FieldAlias = 'TAXINCLUSO'
      FieldName = 'TAXINCLUSO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField10: TppField
      FieldAlias = 'PTAXINCLUSO'
      FieldName = 'PTAXINCLUSO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField11: TppField
      FieldAlias = 'CUSTODESPESAS'
      FieldName = 'CUSTODESPESAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField12: TppField
      FieldAlias = 'FATORLUCRO'
      FieldName = 'FATORLUCRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField13: TppField
      FieldAlias = 'TAXAVEL'
      FieldName = 'TAXAVEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField14: TppField
      FieldAlias = 'DESATIVADO'
      FieldName = 'DESATIVADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField15: TppField
      FieldAlias = 'CST'
      FieldName = 'CST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField16: TppField
      FieldAlias = 'REDUCAOCST'
      FieldName = 'REDUCAOCST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField17: TppField
      FieldAlias = 'ALIQICMS'
      FieldName = 'ALIQICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField18: TppField
      FieldAlias = 'SITUACAOECF'
      FieldName = 'SITUACAOECF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField19: TppField
      FieldAlias = 'TVA'
      FieldName = 'TVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBGruposppField20: TppField
      FieldAlias = 'TVAFONTE'
      FieldName = 'TVAFONTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
  end
  object ppDBEntradas: TppDBPipeline
    DataSource = Q_EntradasDS
    UserName = 'DBEntradas'
    Left = 299
    Top = 162
    MasterDataPipelineName = 'ppDBMaster'
    object ppDBEntradasppField1: TppField
      FieldAlias = 'DATAENTRADA'
      FieldName = 'DATAENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEntradasppField2: TppField
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEntradasppField3: TppField
      FieldAlias = 'QUANTPRODUTO'
      FieldName = 'QUANTPRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEntradasppField4: TppField
      FieldAlias = 'CUSTOMEDIO_ANT'
      FieldName = 'CUSTOMEDIO_ANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEntradasppField5: TppField
      FieldAlias = 'CUSTOMEDIONOVO'
      FieldName = 'CUSTOMEDIONOVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEntradasppField6: TppField
      FieldAlias = 'TIPOMOV'
      FieldName = 'TIPOMOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object ppDBSaidas: TppDBPipeline
    DataSource = Q_SaidasDS
    UserName = 'DBSaidas'
    Left = 211
    Top = 255
    MasterDataPipelineName = 'ppDBMaster'
    object ppDBSaidasppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBSaidasppField2: TppField
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBSaidasppField3: TppField
      FieldAlias = 'QUANTPRODUTO'
      FieldName = 'QUANTPRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBSaidasppField4: TppField
      FieldAlias = 'CUSTOMEDIO'
      FieldName = 'CUSTOMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBSaidasppField5: TppField
      FieldAlias = 'TIPOMOV'
      FieldName = 'TIPOMOV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object Q_Inventarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select data'
      'from inventario'
      'group by data')
    Left = 264
    Top = 6
    object Q_InventariosDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
  end
  object Q_InventariosDs: TDataSource
    DataSet = Q_Inventarios
    Left = 241
    Top = 68
  end
  object Q_ResumoCSTDs: TDataSource
    DataSet = Q_ResumoCST
    Left = 322
    Top = 209
  end
  object ppResumoCST: TppDBPipeline
    DataSource = Q_ResumoCSTDs
    UserName = 'DBResumoCST'
    Left = 267
    Top = 276
    object ppResumoCSTppField1: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppResumoCSTppField2: TppField
      FieldAlias = 'TOTALPRODUTO'
      FieldName = 'TOTALPRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object Q_ResumoCST: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select c.descricao,'
      '       Sum(((i.Estoque) * (i.CustoMedio))) as TotalProduto'
      'From Inventario i'
      '     INNER JOIN SITUACOESECF c on  c.SITUACAOECF = i.situacaoecf'
      'group by c.descricao')
    Left = 264
    Top = 120
    object Q_ResumoCSTDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Q_ResumoCSTTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
  end
end

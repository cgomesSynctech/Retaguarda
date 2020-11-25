inherited DlgAplicarIndicesGrupo: TDlgAplicarIndicesGrupo
  Left = 270
  Top = 203
  Width = 489
  Height = 385
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 355
    Height = 304
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 270
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Limpar Selecionados'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Selecionar Todos'
      Glyph.Data = {00000000}
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Aplicar '#205'ndices'
      Glyph.Data = {
        D20E0000424DC6120000000000003608000028000000340000001A0000000100
        100003000000900A000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000000000000000000000001F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F4A294A294A294A294A294A297B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CE4040000A404C701C701
        C701C701C701000063081F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6FEF3D4A29CE39524A524A524A524A524A4A29AD357B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C00000000C701
        E40442084601C701C701C701C701C701C701E50400001F7C1F7C1F7C1F7C1F7C
        1F7C7B6F7B6F7B6F7B6F7B6F7B6F4A294A29524AEF3DAD351042524A524A524A
        524A524A524AEF3D4A297B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C
        0000E815E8156611C618FF7FC40CE815E815E815E815E815E815E815250D0000
        1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F4A29B556B556524A3146FF7F
        EF3DB556B556B556B556B556B556B55631464A297B6F7B6F7B6F7B6F7B6F1F7C
        1F7C1F7C1F7C000000000822E81D4208FF7FFF7F630CC71D2822282228222822
        28222822282200001F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F4A294A29F75E
        D65AAD35FF7FFF7FCE39D65A18631863186318631863186318634A297B6F7B6F
        7B6F7B6F7B6F1F7C1F7C1F7C1F7C630C082208224519FF7FFF7FFF7FFF7F861D
        492E492E492E492E492E492E492E692E00001F7C1F7C1F7C1F7C7B6F7B6F7B6F
        7B6FCE39F75EF75E734EFF7FFF7FFF7FFF7F9452396739673967396739673967
        396739674A297B6F7B6F7B6F7B6F1F7C1F7C1F7C0000082208220000FF7FFF7F
        FF7FFF7FFF7F4208492E692E692E692E692E692E692E692E00001F7C1F7C1F7C
        1F7C7B6F7B6F7B6F4A29F75EF75E4A29FF7FFF7FFF7FFF7FFF7FAD3539673967
        3967396739673967396739674A297B6F7B6F7B6F7B6F1F7C1F7C1F7C0000A93E
        0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F25196932693269326932693269326932
        893600001F7C1F7C1F7C7B6F7B6F7B6F4A297B6F4A29FF7FFF7FFF7FFF7FFF7F
        FF7FFF7F524A5A6B5A6B5A6B5A6B5A6B5A6B5A6B5A6B4A297B6F7B6F7B6F1F7C
        1F7C1F7C0000A93E840CFF7FFF7FFF7FFF7FFF7FFF7FFF7FC614082A89368936
        8936893689368936893600001F7C1F7C1F7C7B6F7B6F7B6F4A297B6FCE39FF7F
        FF7FFF7FFF7FFF7FFF7FFF7F1042F75E5A6B5A6B5A6B5A6B5A6B5A6B5A6B4A29
        7B6F7B6F7B6F1F7C1F7C1F7C0000A93E840CFF7FFF7FFF7F630CFF7FFF7FFF7F
        FF7FE71C893A893A893A893A893A893A893A00001F7C1F7C1F7C7B6F7B6F7B6F
        4A297B6FCE39FF7FFF7FFF7FCE39FF7FFF7FFF7FFF7F524A5A6B5A6B5A6B5A6B
        5A6B5A6B5A6B4A297B6F7B6F7B6F1F7C1F7C1F7C0000A93E840CFF7FFF7F640C
        08324208FF7FFF7FFF7FFF7FE71CA93AA93AA93AA93AA93AA93A00001F7C1F7C
        1F7C7B6F7B6F7B6F4A297B6FCE39FF7FFF7FCE391863AD35FF7FFF7FFF7FFF7F
        524A7B6F7B6F7B6F7B6F7B6F7B6F4A297B6F7B6F7B6F1F7C1F7C1F7C0000A93E
        66216B2D8410A625A93E28324208FF7FFF7FFF7FFF7FE71C693AA93EA93EA93E
        A93E00001F7C1F7C1F7C7B6F7B6F7B6F4A297B6F734ED65AEF3DB5567B6F1863
        AD35FF7FFF7FFF7FFF7F524A5A6B7B6F7B6F7B6F7B6F4A297B6F7B6F7B6F1F7C
        1F7C1F7C00000A4B4836C4142832CA3ECA3ECA3E4836E71CFF7FFF7FFF7FFF7F
        E71CCA3ECA3ECA3EA93E00001F7C1F7C1F7C7B6F7B6F7B6F4A29BD7739671042
        18637B6F7B6F7B6F3967524AFF7FFF7FFF7FFF7F524A7B6F7B6F7B6F7B6F4A29
        7B6F7B6F7B6F1F7C1F7C1F7C1F7C0000A93ECA42CA42CA42CA42CA42A93EA93E
        8410FF7FFF7FFF7FFF7FE71CCA42CA42A4101F7C1F7C1F7C1F7C7B6F7B6F7B6F
        7B6F4A297B6F9C739C739C739C739C735A6B7B6FEF3DFF7FFF7FFF7FFF7F524A
        9C739C73EF3D7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C00000A4BEA46EA46EA46
        EA46EA46EA46EA46EA4642084208FF7FFF7FFF7F0000CA42A4101F7C1F7C1F7C
        1F7C7B6F7B6F7B6F7B6F4A29BD779C739C739C739C739C739C739C739C73AD35
        AD35FF7FFF7FFF7F4A299C73EF3D7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C
        00000A4B0A4B0A4B0A4B0A4B0A4B0A4B0A4B0A4B0A4B4208420800000A4BA410
        1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F4A299C739C739C73BD779C73
        9C739C739C739C739C73AD35AD354A29BD77EF3D7B6F7B6F7B6F7B6F7B6F1F7C
        1F7C1F7C1F7C1F7C00000A4B0A4B0A4BDA73B86F976B9667966BB86FDA730A4B
        0A4BC946C946A4101F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F4A29BD77
        BD77BD77FF7FFF7FFF7FFF7FFF7FFF7FFF7FBD77BD777B6F7B6FEF3D7B6F7B6F
        7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C000000000A4B2A4F966BFF7FFF7F
        FF7F966B2A4F2A4F0A4B0000A4101F7C1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F
        7B6F7B6F7B6F4A294A29BD77BD77FF7FFF7FFF7FFF7FFF7FBD77BD77BD774A29
        EF3D7B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CA414
        00000A4B4D57505B4D572A4F2A4F000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6FEF3D4A29BD77FF7FFF7FFF7FBD77
        BD774A294A297B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C0000000000000000000000001F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F4A29
        4A294A294A294A294A297B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
        7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F}
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 473
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 33
      Caption = 'Grupo:'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 445
    end
    inherited lbCaption: TdxfLabel
      Width = 333
      AutoSize = True
      Caption = 'Aplicar '#205'ndices Aos Itens do Grupo'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 355
    Height = 304
    Color = 14019327
    object TS_Shape8: TTS_Shape
      Left = 7
      Top = 248
      Width = 136
      Height = 18
      Brush.Color = 9027548
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Shape6: TTS_Shape
      Left = 7
      Top = 213
      Width = 340
      Height = 3
      Brush.Color = 9027548
      Pen.Style = psClear
      Transparent = False
    end
    object TS_Shape5: TTS_Shape
      Left = 7
      Top = 206
      Width = 136
      Height = 18
      Brush.Color = 9027548
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Shape4: TTS_Shape
      Left = 7
      Top = 147
      Width = 340
      Height = 3
      Brush.Color = 9027548
      Pen.Style = psClear
      Transparent = False
    end
    object TS_Shape3: TTS_Shape
      Left = 7
      Top = 140
      Width = 105
      Height = 18
      Brush.Color = 9027548
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 7
      Top = 62
      Width = 340
      Height = 3
      Brush.Color = 9027548
      Pen.Style = psClear
      Transparent = False
    end
    object TS_Shape1: TTS_Shape
      Left = 7
      Top = 55
      Width = 170
      Height = 18
      Brush.Color = 9027548
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Shape11: TTS_Shape
      Left = 7
      Top = 13
      Width = 340
      Height = 3
      Brush.Color = 9027548
      Pen.Style = psClear
      Transparent = False
    end
    object TS_Shape12: TTS_Shape
      Left = 6
      Top = 6
      Width = 122
      Height = 18
      Brush.Color = 9027548
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Label48: TTS_Label
      Left = 7
      Top = 7
      Width = 123
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Percentuais Gerais'
      Color = 9027548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label1: TTS_Label
      Left = 8
      Top = 56
      Width = 164
      Height = 17
      Alignment = taLeftJustify
      Caption = #205'ndices para Pre'#231'o de Venda'
      Color = 9027548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 7
      Top = 141
      Width = 102
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Legisla'#231#227'o Fiscal'
      Color = 9027548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 13
      Top = 207
      Width = 131
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Substitui'#231#227'o Tribut'#225'ria'
      Color = 9027548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape7: TTS_Shape
      Left = 8
      Top = 256
      Width = 340
      Height = 3
      Brush.Color = 9027548
      Pen.Style = psClear
      Transparent = False
    end
    object TS_Label4: TTS_Label
      Left = 7
      Top = 249
      Width = 131
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Impostos Federais'
      Color = 9027548
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object ckbComissao: TTS_CheckBox
      Left = 16
      Top = 30
      Width = 68
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 0
      Caption = 'Comiss'#227'o'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 19
    end
    object ckbDescMax: TTS_CheckBox
      Left = 120
      Top = 30
      Width = 113
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 1
      Caption = 'Desconto M'#225'ximo'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 19
    end
    object ckbDespFixas: TTS_CheckBox
      Left = 15
      Top = 75
      Width = 99
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 2
      Caption = 'Despesas Fixas'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 19
    end
    object ckbEncCartoes: TTS_CheckBox
      Left = 124
      Top = 74
      Width = 109
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = 'Encargos Cart'#245'es'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 21
    end
    object ckbComissAplic: TTS_CheckBox
      Left = 234
      Top = 73
      Width = 116
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 4
      Caption = 'Comiss'#227'o Aplicada'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 22
    end
    object ckbImpFed: TTS_CheckBox
      Left = 15
      Top = 93
      Width = 114
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 5
      Caption = 'Impostos Federais'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 19
    end
    object ckbICMSVenda: TTS_CheckBox
      Left = 124
      Top = 92
      Width = 109
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 6
      Caption = 'ICMS de Venda'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 21
    end
    object ckbCustoAdic: TTS_CheckBox
      Left = 234
      Top = 91
      Width = 116
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 7
      Caption = 'Custo Adicional'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 22
    end
    object ckbPercLucro: TTS_CheckBox
      Left = 15
      Top = 112
      Width = 125
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 8
      Caption = 'Percentual de Lucro'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 19
    end
    object ckbTipoTrib: TTS_CheckBox
      Left = 16
      Top = 158
      Width = 99
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 9
      Caption = 'Tipo Tributa'#231#227'o'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 22
    end
    object ckbAliqICMS: TTS_CheckBox
      Left = 125
      Top = 159
      Width = 109
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 10
      Caption = 'Al'#237'quota de ICMS'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 21
    end
    object ckbCST: TTS_CheckBox
      Left = 16
      Top = 178
      Width = 114
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 11
      Caption = 'CST'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 19
    end
    object ckbRedCST: TTS_CheckBox
      Left = 125
      Top = 177
      Width = 109
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 12
      Caption = 'Redu'#231#227'o CST'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 21
    end
    object ckbTVASubst: TTS_CheckBox
      Left = 17
      Top = 225
      Width = 104
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 13
      Caption = 'TVA Substitui'#231#227'o'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 22
    end
    object ckbTVAFonte: TTS_CheckBox
      Left = 126
      Top = 226
      Width = 109
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 14
      Caption = 'TVA Fonte'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 21
    end
    object cbImpostosFederais: TTS_CheckBox
      Left = 14
      Top = 274
      Width = 109
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 15
      Caption = 'Impostos Federais'
      StyleController = DMProjeto.esItens
      DisableEdit = False
      Height = 21
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 372
    Top = 142
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 266
    Top = 63
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 400
    Top = 138
  end
  inherited Beep: TBTBeeper
    Left = 408
    Top = 192
  end
  inherited FormStorage: TFormStorage
    Left = 432
    Top = 144
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Aplicar '#205'ndices Aos Itens do Grupo'
    Left = 422
    Top = 170
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 447
    Top = 194
  end
end

inherited DlgTemplates: TDlgTemplates
  Left = 188
  Top = 157
  Width = 573
  Height = 312
  Caption = 'Company'
  Font.Charset = DEFAULT_CHARSET
  Font.Name = 'MS Sans Serif'
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 452
    Height = 235
    Color = 14608375
    TabOrder = 1
    object pgAssistente: TTS_PageControl
      Left = 4
      Top = 6
      Width = 452
      Height = 224
      ActivePage = tsDerivar
      OwnerDraw = True
      Style = tsButtons
      TabOrder = 0
      OnChange = pgAssistenteChange
      ActivePageIndex = 5
      Transparent = False
      TabColor = clWhite
      TabColorActive = clGradientActiveCaption
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabFontActive.Charset = DEFAULT_CHARSET
      TabFontActive.Color = clWindowText
      TabFontActive.Height = -11
      TabFontActive.Name = 'MS Sans Serif'
      TabFontActive.Style = []
      object tsIntroducao: TTS_TabSheet
        Caption = 'tsIntroducao'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object Label1: TTS_Label
          Left = 20
          Top = 60
          Width = 371
          Height = 61
          Alignment = taLeftJustify
          Caption = 
            'Este assistente lhe ajudar'#225' passo-a-passo a criar um novo modelo' +
            ', baseado no modelo padr'#227'o ou em um modelo existente.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object dxfLabel1: TdxfLabel
          Left = 16
          Top = -1
          Width = 97
          Height = 23
          AutoSize = False
          Caption = 'Introdu'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style = dxfRaised
          Angle = 0
          Effect3D.Style = dxfCool
          Effect3D.Orientation = dxfRightBottom
          Effect3D.Depth = 0
          Effect3D.ShadowedColor = clGray
          PenWidth = 1
        end
        object TS_Shape1: TTS_Shape
          Left = 20
          Top = 22
          Width = 378
          Height = 3
          Brush.Color = 16512
          Pen.Color = clMaroon
          Pen.Style = psClear
          Transparent = False
        end
        object TS_Shape2: TTS_Shape
          Left = 20
          Top = 24
          Width = 274
          Height = 3
          Brush.Color = 31993
          Pen.Color = 10198015
          Pen.Style = psClear
          Transparent = False
        end
      end
      object tsTipo: TTS_TabSheet
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object dxfLabel2: TdxfLabel
          Left = 16
          Top = 2
          Width = 151
          Height = 19
          AutoSize = False
          Caption = 'Tipo de Impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style = dxfRaised
          Angle = 0
          Effect3D.Style = dxfCool
          Effect3D.Orientation = dxfRightBottom
          Effect3D.Depth = 0
          Effect3D.ShadowedColor = clGray
          PenWidth = 1
        end
        object TS_Shape3: TTS_Shape
          Left = 20
          Top = 22
          Width = 378
          Height = 2
          Brush.Color = 16512
          Pen.Color = clMaroon
          Pen.Style = psClear
          Transparent = False
        end
        object TS_Shape4: TTS_Shape
          Left = 20
          Top = 25
          Width = 260
          Height = 2
          Brush.Color = 31993
          Pen.Color = 10198015
          Pen.Style = psClear
          Transparent = False
        end
        object rbNotaFiscal: TTS_RadioButton
          Left = 40
          Top = 56
          Width = 129
          Height = 17
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = rbNotaFiscalClick
          Transparent = False
        end
        object rbPedidos: TTS_RadioButton
          Left = 40
          Top = 98
          Width = 129
          Height = 17
          Caption = 'Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbNotaFiscalClick
          Transparent = False
        end
        object rbOrcamentos: TTS_RadioButton
          Left = 40
          Top = 119
          Width = 129
          Height = 17
          Caption = 'Or'#231'amentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rbNotaFiscalClick
          Transparent = False
        end
        object rbPropostas: TTS_RadioButton
          Left = 40
          Top = 140
          Width = 129
          Height = 17
          Caption = 'Propostas / Licita'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rbNotaFiscalClick
          Transparent = False
        end
        object rbNotaFiscalServico: TTS_RadioButton
          Left = 40
          Top = 77
          Width = 129
          Height = 17
          Caption = 'Nota Fiscal de Servi'#231'o'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          OnClick = rbNotaFiscalClick
          Transparent = False
        end
      end
      object tsNovoExistente: TTS_TabSheet
        Caption = 'tsNovoExistente'
        ImageIndex = 1
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object dxfLabel3: TdxfLabel
          Left = 16
          Top = -1
          Width = 113
          Height = 23
          AutoSize = False
          Caption = 'Voc'#234' deseja ?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style = dxfRaised
          Angle = 0
          Effect3D.Style = dxfCool
          Effect3D.Orientation = dxfRightBottom
          Effect3D.Depth = 0
          Effect3D.ShadowedColor = clGray
          PenWidth = 1
        end
        object lbTipo1: TTS_Label
          Left = 176
          Top = 61
          Width = 146
          Alignment = taLeftJustify
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbTipo2: TTS_Label
          Left = 217
          Top = 85
          Width = 146
          Alignment = taLeftJustify
          Caption = 'Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Shape5: TTS_Shape
          Left = 20
          Top = 22
          Width = 378
          Height = 2
          Brush.Color = 16512
          Pen.Color = clMaroon
          Pen.Style = psClear
          Transparent = False
        end
        object TS_Shape6: TTS_Shape
          Left = 20
          Top = 25
          Width = 260
          Height = 2
          Brush.Color = 31993
          Pen.Color = 10198015
          Pen.Style = psClear
          Transparent = False
        end
        object rgNovo: TTS_RadioButton
          Left = 34
          Top = 60
          Width = 137
          Height = 17
          Caption = 'Criar um novo modelo de'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgExistente: TTS_RadioButton
          Left = 34
          Top = 84
          Width = 180
          Height = 17
          Caption = 'Modificar um modelo existente de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Transparent = False
        end
      end
      object tsNovo: TTS_TabSheet
        Caption = 'tsNovo'
        ImageIndex = 2
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object Label5: TTS_Label
          Left = 32
          Top = 78
          Width = 93
          Height = 13
          Caption = 'Nome do Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object edNome: TTS_Edit
          Left = 126
          Top = 75
          Width = 221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          StyleController = DMProjeto.esCompany
          OnChange = edNomeChange
          Height = 21
        end
      end
      object tsExistente: TTS_TabSheet
        Caption = 'tsExistente'
        ImageIndex = 3
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object Label4: TTS_Label
          Left = -1
          Top = 80
          Width = 194
          Height = 13
          Caption = 'Selecione o modelo que deseja alterar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object cmbTemplate: TTS_LookupComboBox
          Left = 194
          Top = 78
          Width = 250
          TabOrder = 0
          StyleController = DMProjeto.esCompany
          OnChange = cmbTemplateChange
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'TEMPLATE'
          ListSource = C_TemplatesDS
          LookupKeyValue = Null
          Height = 19
        end
      end
      object tsDerivar: TTS_TabSheet
        Caption = 'tsDerivar'
        ImageIndex = 4
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object TS_Shape7: TTS_Shape
          Left = 20
          Top = 22
          Width = 378
          Height = 2
          Brush.Color = 16512
          Pen.Color = clMaroon
          Pen.Style = psClear
          Transparent = False
        end
        object TS_Shape8: TTS_Shape
          Left = 20
          Top = 25
          Width = 260
          Height = 2
          Brush.Color = 31993
          Pen.Color = 10198015
          Pen.Style = psClear
          Transparent = False
        end
        object dxfLabel4: TdxfLabel
          Left = 16
          Top = -1
          Width = 265
          Height = 23
          AutoSize = False
          Caption = 'De que modelo deseja derivar ?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style = dxfRaised
          Angle = 0
          Effect3D.Style = dxfCool
          Effect3D.Orientation = dxfRightBottom
          Effect3D.Depth = 0
          Effect3D.ShadowedColor = clGray
          PenWidth = 1
        end
        object rgPadrao: TTS_RadioButton
          Left = 26
          Top = 60
          Width = 113
          Height = 17
          Caption = 'Modelo Padr'#227'o'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgDerivar: TTS_RadioButton
          Left = 26
          Top = 86
          Width = 142
          Height = 17
          Caption = 'Desejo derivar do modelo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Transparent = False
        end
        object cmbDerivar: TTS_LookupComboBox
          Left = 168
          Top = 85
          Width = 265
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          StyleController = DMProjeto.esCompany
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'TEMPLATE'
          ListSource = C_TemplatesDS
          LookupKeyValue = Null
          Height = 19
        end
      end
      object tsFim: TTS_TabSheet
        Caption = 'tsFim'
        ImageIndex = 5
        TabVisible = False
        OnShow = tsFimShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object Label6: TTS_Label
          Left = 20
          Top = 20
          Width = 389
          Height = 13
          Caption = 
            'Clique no bot'#227'o "Alterar Estrutura" para que possa modificar o l' +
            'ayout do modelo.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object btEstrutura: TTS_SpeedButton
          Left = 20
          Top = 74
          Width = 131
          Height = 24
          Caption = 'Alterar Estrutura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000FFFFFF00FFFF
            B400E6E6E600DEDEDE00CDCDCD00B4B4FF00B4B4B4007B7B7B00FF6A6A006262
            6200000083008300000000000000000080000000000000000000DD6999999999
            999996DD0000DD9CCCCCCCCCCCCCC96D0000DD9C654483332222C96D0000DD9C
            1518B8111111C96D0000DD9C654BBB422000C96D0000DD9C1511B4111111C96D
            0000DD9C6543B4000002C96D0000DD9C1511B4111111C96D0000DD9C6543B400
            0422C96D0000DD9C18B4B4444B81C96D0000DD9C8BBBBBBBBBB8C96D0000DD9C
            18B1B4111B81C96D0000DD9C6542B4044444C96D0000DD9C1511B44CCCCCC96D
            0000DD9C6542B44C0004C96D0000DD9C154BBB4C0047C96D0000DD9C6548B84C
            047C96DD0000DD9C1511814C47C96DDD0000DD9CCCCCCCCCCC96DDDD0000DD69
            99999999996DDDDD0000}
          ParentFont = False
          OnClick = btEstruturaClick
          RepeatedClick = False
          Border = True
        end
        object lbTemplate: TTS_Label
          Left = 20
          Top = 108
          Width = 313
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label1: TTS_Label
          Left = 24
          Top = 48
          Width = 41
          Alignment = taLeftJustify
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbModelo: TTS_Label
          Left = 64
          Top = 48
          Width = 313
          Alignment = taLeftJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 452
    Width = 113
    Height = 235
    TabOrder = 2
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 201
      Width = 111
    end
    inherited btComando2: TTS_SpeedButton
      Width = 111
    end
    inherited btComando1: TTS_SpeedButton
      Width = 111
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 111
      Caption = '&Voltar'
      Enabled = False
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        0800000000009001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
        DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
        FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
        5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DAB000031960000257300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
        5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        010101010101010101010101010101010101010101010101010101E7EEEEE701
        0101E7EEEEE70101010101010101E7EE0000EE0101E7EE0000EE010101010101
        01E7EE003700EE01E7EE003700EE010101010101E7EE00372A00EEEEEE00372A
        00EEEEEEEEE701E7EE00372A2A00000000372A2A0000000000EEE7EE00372A35
        2A373700372A35353737373700EEEE0037313535353700373135353535353537
        00EEF00031FF353535370031FF3535353535353700EEE7F00031FF3535343700
        31FF35353434343500EE01E7F000312F3500000000312F350000000000EE0101
        E7F000312F00EEEEF000312F00EEEEEEEEE7010101E7F0003100EE01E7F00031
        00EE0101010101010101E7F00000EE0101E7F00000EE010101010101010101E7
        F0EEE7010101E7F0EEE701010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101010101}
      NumGlyphs = 1
    end
    inherited btGravar: TTS_SpeedButton
      Width = 111
      Caption = '&Avan'#231'ar'
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        0800000000009001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
        DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
        FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
        5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DAB000031960000257300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
        5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101E7EEEEE70101
        01E7EEEEE7010101010101010101EE0000EEE70101EE0000EEE7010101010101
        0101EE00BD00EEE701EE00BD00EEE7010101E7EEEEEEEE00AFBD00EEEEEE00AF
        BD00EEE70101EE0000000000AFAFBD00000000AFAFBD00EEE701EE00BAAFAFAF
        AFAFAFBD00BDAFAFAFAFBD00EEE7EE00BAAFAFAFAFAFAFAFBD00AFAFAFAFAFBD
        00EEEE00BAAFAFAFAFAFAFAEBA00AFAFAFAFAEBA00F0EE00BABABABAAEAFAEBA
        00BABAAEAFAEBA00F0E7EE0000000000AEAEBA00000000AEAEBA00F0E701E7EE
        EEEEEE00AEBA00F0EEEE00AEBA00F0E7010101010101EE00BA00F0E701EE00BA
        00F0E701010101010101EE0000F0E70101EE0000F0E70101010101010101E7EE
        F0E7010101E7EEF0E70101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101010101}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 111
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 565
    Gradient.ColorStart = 11388903
    TabOrder = 0
    inherited lbCaption: TdxfLabel
      Width = 358
      Caption = 'Assistente para Cria'#231#227'o de Templates'
      Effect3D.ShadowedColor = 11388903
    end
    inherited lbEstadoForm: TTS_Label
      Width = 330
      Caption = 
        'Modelo para impress'#227'o de Notas Fiscais, Or'#231'amentos, Propostas, e' +
        'tc.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 486
      Visible = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 62
    Top = 234
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 234
    Top = 234
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msCompany
    BarEndColor = 11388903
    CaptionShadow = 11388903
    FormColor = 14608375
    Modulo = 'Company'
    Caption = 'Assistente para Cria'#231#227'o de Templates'
  end
  inherited FormStorage: TFormStorage
    Left = 240
    Top = 184
  end
  object ppDesigner: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Alterar Modelo'
    DataSettings.SessionType = 'IBXSession'
    DataSettings.AllowEditSQL = False
    DataSettings.SQLType = sqSQL1
    Position = poScreenCenter
    ShowData = False
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 300
    Top = 78
  end
  object Q_Templates: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Templates'
      'where template <> 0 and tipo = :tipo'
      'order by descricao')
    Left = 392
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
  end
  object C_TemplatesDS: TDataSource
    DataSet = C_Templates
    Left = 392
    Top = 226
  end
  object C_Templates: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Templates'
    BeforeOpen = C_TemplatesBeforeOpen
    Left = 392
    Top = 80
    object C_TemplatesTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Required = True
    end
    object C_TemplatesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TemplatesARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 50
    end
    object C_TemplatesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
  end
  object P_Templates: TDataSetProvider
    DataSet = Q_Templates
    Constraints = True
    Left = 392
    Top = 176
  end
end

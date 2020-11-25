inherited DlgEtiquetas: TDlgEtiquetas
  Left = 141
  Top = 113
  Width = 618
  Height = 397
  Caption = 'Company'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Image10: TTS_Image [0]
    Left = 14
    Top = 20
    Width = 9
    Height = 6
    Picture.Data = {
      07544269746D6170EA000000424DEA0000000000000036000000280000000B00
      0000050000000100180000000000B4000000C40E0000C40E0000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000000000FF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    Transparent = True
  end
  object dxfLabel3: TdxfLabel [1]
    Left = 7
    Top = 9
    Width = 17
    Height = 7
    AutoSize = False
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = dxfNormal
    Angle = 90
    Effect3D.Style = dxfCool
    Effect3D.Orientation = dxfRightBottom
    Effect3D.Depth = 0
    Effect3D.ShadowedColor = clGray
    PenWidth = 1
  end
  object TS_Image11: TTS_Image [2]
    Left = 12
    Top = 0
    Width = 9
    Height = 6
    Picture.Data = {
      07544269746D6170EA000000424DEA0000000000000036000000280000000B00
      0000050000000100180000000000B4000000C40E0000C40E0000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      00000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000}
    Transparent = True
  end
  inherited pnDados: TTS_Panel
    Width = 503
    Height = 320
    Color = 14608375
    object pgAssistente: TTS_PageControl
      Left = 4
      Top = 2
      Width = 494
      Height = 317
      ActivePage = tsIntroducao
      OwnerDraw = True
      Style = tsButtons
      TabOrder = 0
      TabStop = False
      OnChange = pgAssistenteChange
      OnChangingToTab = pgAssistenteChangingToTab
      ActivePageIndex = 0
      Transparent = False
      TabColor = clWhite
      TabColorActive = 14608375
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
        OnShow = tsIntroducaoShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label2: TTS_Label
          Left = 47
          Top = 70
          Width = 425
          Height = 160
          Alignment = taLeftJustify
          Caption = 
            'Este assistente lhe ajudar'#225' a criar diversos tipos de etiquetas ' +
            'personalizadas, utilizando o m'#233'todo passo a passo voc'#234' conseguir' +
            #225' criar suas etiquetas com facilidade e praticidade. Estas etiqu' +
            'etas poder'#227'o utilizar os seus cadastros de clientes, fornecedore' +
            's, funcion'#225'rios, Itens e Business, ou manualmente informando os ' +
            'dados que deseja na etiqueta.'#13#10#13#10'A cada pergunta informada cliqu' +
            'e no bot'#227'o Avan'#231'ar, se quiser voltar ao passo anterior clique no' +
            ' bot'#227'o Voltar.'#13#10'Informe as perguntas socilitadas corretamente pa' +
            'ra que sua etiqueta seja de acordo que voc'#234' quer. '#13#10#13#10'Para come'#231 +
            'ar clique no bot'#227'o Avan'#231'ar.'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbIntroducao: TdxfLabel
          Left = 40
          Top = 11
          Width = 97
          Height = 21
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
        object pn2: TTS_MaxPanel
          Left = 44
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 0
        end
        object pn1: TTS_MaxPanel
          Left = 44
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
        end
      end
      object tsTipo: TTS_TabSheet
        Caption = 'tsTipo'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object lbtsTipo: TdxfLabel
          Left = 24
          Top = 11
          Width = 178
          Height = 21
          AutoSize = False
          Caption = 'O que Deseja Fazer ?'
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
        object TS_MaxPanel33: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 0
        end
        object TS_MaxPanel34: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
        end
        object rgCartasEtiquetas: TTS_RadioButton
          Left = 56
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Cartas e Etiquetas'
          Checked = True
          TabOrder = 2
          TabStop = True
          Transparent = False
        end
        object rgCartas: TTS_RadioButton
          Left = 56
          Top = 94
          Width = 113
          Height = 17
          Caption = 'Apenas Cartas'
          TabOrder = 3
          Transparent = False
        end
        object rgEtiquetas: TTS_RadioButton
          Left = 56
          Top = 117
          Width = 113
          Height = 17
          Caption = 'Apenas Etiquetas'
          TabOrder = 4
          Transparent = False
        end
      end
      object tsCartas: TTS_TabSheet
        Caption = 'tsCartas'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object lbtsCartas: TdxfLabel
          Left = 24
          Top = 11
          Width = 60
          Height = 21
          AutoSize = False
          Caption = 'Cartas'
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
        object btModificarCarta: TTS_SpeedButton
          Left = 32
          Top = 87
          Width = 24
          Height = 20
          Hint = 'Editar/Modificar a carta'
          Glyph.Data = {
            9E010000424D9E010000000000009E0000002800000010000000100000000100
            08000000000000010000340B0000340B00001A0000001A00000000000000C048
            000000060B00230311008F501600D4732300E023480038506000000384006084
            8F00CAC09800F4CA9800FFCA980098A1AB00A1B6B600ABB6B600B6B6B600FFE0
            B60098B6C000FFEACA001148D400FFEAD400FFF4E000FFFFF400FF00FF00FFFF
            FF00181818181818181818181818181818181801010101010101010101010101
            01011801191917161311070A0B0C0C0C0C011801190F0F0F0F0F0700120F0F0F
            0C0118011919191917160700000C0B0C0C011801190F0F0F0F0F071505000E0F
            0C011801191919191919091505000C0C0C011801190F0F0F0F0F0F071505000D
            0C01180119191919191919091505000C0C011801190F0F0F0F0F0F0F07150500
            0C0118011919191919191919091505020C011801191919191919191919070014
            0001180101010101010101010104141403011818010101010101010101010808
            0618181818181818181818181818181818181818181818181818181818181818
            1818}
          Visible = False
          OnClick = btModificarCartaClick
          RepeatedClick = False
          Border = True
        end
        object btNovaCarta: TTS_SpeedButton
          Left = 32
          Top = 68
          Width = 24
          Height = 19
          Hint = 'Escrever a Carta'
          Glyph.Data = {
            4A020000424D4A020000000000004A0100002800000010000000100000000100
            08000000000000010000430B0000430B0000450000004500000000000000006A
            000011001100403116003123230040382A003131310040383100583831004038
            38004800480058585800AB6A6000B67B6000C0846000A16A6A00847B6A00AB7B
            7B00EAC07B00F4C07B00B68F8400EAC08400F4C08400F4CA8400B6988F00C098
            8F00F4CA8F00B6989800C0A19800CAA19800EACA9800F4CA9800B6A1A100CAAB
            A100D4ABA100D4B6A100E0B6A100EAB6A100EAC0A100F4CAA100F4D4A100CAB6
            AB00D4C0AB00EAC0AB00F4D4AB0000B6B600B6B6B600CAC0B600F4D4B600F4E0
            B600E0C0C000E0CAC000F4E0C000E0CACA00F4E0CA00FFE0CA00FFEACA00FFEA
            D400FFEAE000FFF4E00011F4EA00FFF4EA000BF4F400FFF4F400FFFFF400FF00
            FF0000FFFF0011FFFF00FFFFFF0041410F0F0F0F0F0F0F0F0F0F0F0F0F414141
            1438312C281E1A15121212170F41414114382E2E2E2E2E2E2E2E2E150F414141
            183A3634302C1E15151512150F414141183B363431302805151515120F414141
            1C402E2E2E2E2E06002E2E150F4141411D443D3A363431070000291E0F414141
            21443F3D39363407422D00290F41414121442E2E2E2E2E0B3E2D002911414141
            224444443F3A393609422D001B41414123444444443F3A3910432D0020414141
            24442E2E2E2E2E2E3604422D00414141244444444444444032083C2D00414141
            2B44444444444444330D030001004141243F3D3D3D3D3D3D320D080101024141
            2426262626242426210C410A0A41}
          OnClick = btNovaCartaClick
          RepeatedClick = False
          Border = True
        end
        object lbCarta: TTS_Label
          Left = 186
          Top = 71
          Width = 225
          Cursor = crHandPoint
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = lbCartaClick
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_MaxPanel1: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 0
        end
        object TS_MaxPanel2: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
        end
        object rgNovaCarta: TTS_RadioButton
          Left = 59
          Top = 70
          Width = 126
          Height = 17
          Caption = 'Criar uma carta nova'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = rgNovaCartaClick
          Transparent = False
        end
        object rgCartaAniversariantes: TTS_RadioButton
          Tag = 9
          Left = 59
          Top = 89
          Width = 158
          Height = 17
          Caption = 'Carta para Aniversariantes'
          TabOrder = 3
          OnClick = rgCartaAniversariantesClick
          Transparent = False
        end
        object rgCartaClientesEmAtraso: TTS_RadioButton
          Tag = 2
          Left = 59
          Top = 129
          Width = 172
          Height = 17
          Caption = 'Carta para Clientes em atraso'
          TabOrder = 4
          OnClick = rgCartaAniversariantesClick
          Transparent = False
        end
        object rgCartaClientesComCredito: TTS_RadioButton
          Tag = 10
          Left = 59
          Top = 149
          Width = 174
          Height = 17
          Caption = 'Carta para Clientes com cr'#233'dito'
          TabOrder = 5
          OnClick = rgCartaAniversariantesClick
          Transparent = False
        end
        object rgAbrirCarta: TTS_RadioButton
          Left = 59
          Top = 189
          Width = 148
          Height = 17
          Caption = 'Abrir uma carta existente'
          TabOrder = 6
          OnClick = rgCartaAniversariantesClick
          Transparent = False
        end
        object rgCartaClientesDevolvidos: TTS_RadioButton
          Tag = 3
          Left = 59
          Top = 169
          Width = 238
          Height = 17
          Caption = 'Carta para Clientes com cheques devolvidos'
          TabOrder = 7
          OnClick = rgCartaAniversariantesClick
          Transparent = False
        end
        object rgCartaClientesEmDia: TTS_RadioButton
          Tag = 4
          Left = 59
          Top = 109
          Width = 172
          Height = 17
          Caption = 'Carta para Clientes em dia'
          TabOrder = 8
          OnClick = rgCartaAniversariantesClick
          Transparent = False
        end
        object cmbTextos: TTS_LookupComboBox
          Left = 203
          Top = 188
          Width = 252
          TabOrder = 9
          StyleController = DMProjeto.esCompany
          ClearKey = 32
          ListFieldName = 'TITULO'
          KeyFieldName = 'TEXTO'
          ListSource = Q_TextosDS
          LookupKeyValue = Null
          Height = 19
        end
        object cmbAniversario: TTS_ComboBox
          Left = 212
          Top = 88
          Width = 114
          TabOrder = 10
          StyleController = DMProjeto.esGeral
          OnChange = cmbAniversarioChange
          DropDownListStyle = True
          Items.Strings = (
            'de hoje'
            'da semana'
            'do m'#234's'
            'do pr'#243'ximo m'#234's'
            'do dia 1 de <mes>'
            'do dia 2 de <mes>'
            'do dia 3 de <mes>'
            'do dia 4 de <mes>'
            'do dia 5 de <mes>'
            'do dia 6 de <mes>'
            'do dia 7 de <mes>'
            'do dia 8 de <mes>'
            'do dia 9 de <mes>'
            'do dia 10 de <mes>'
            'do dia 11 de <mes>'
            'do dia 12 de <mes>'
            'do dia 13 de <mes>'
            'do dia 14 de <mes>'
            'do dia 15 de <mes>'
            'do dia 16 de <mes>'
            'do dia 17 de <mes>'
            'do dia 18 de <mes>'
            'do dia 19 de <mes>'
            'do dia 20 de <mes>'
            'do dia 21 de <mes>'
            'do dia 22 de <mes>'
            'do dia 23 de <mes>'
            'do dia 24 de <mes>'
            'do dia 25 de <mes>'
            'do dia 26 de <mes>'
            'do dia 27 de <mes>'
            'do dia 28 de <mes>'
            'do dia 29 de <mes>'
            'do dia 30 de <mes>'
            'do dia 31 de <mes>')
          Height = 19
        end
      end
      object tsNovaCarta: TTS_TabSheet
        Caption = 'tsNovaCarta'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object lbtsNovaCarta: TdxfLabel
          Left = 24
          Top = 11
          Width = 160
          Height = 21
          AutoSize = False
          Caption = 'Esta carta '#233' para ?'
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
        object rgCartaCliente: TTS_RadioButton
          Left = 48
          Top = 63
          Width = 113
          Height = 17
          Caption = 'Clientes'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rgClientesClick
          Transparent = True
        end
        object rgCartaFornecedor: TTS_RadioButton
          Left = 48
          Top = 87
          Width = 113
          Height = 17
          Caption = 'Fornecedores'
          TabOrder = 1
          OnClick = rgClientesClick
          Transparent = True
        end
        object rgCartaFuncionario: TTS_RadioButton
          Left = 48
          Top = 111
          Width = 113
          Height = 17
          Caption = 'Funcion'#225'rios'
          TabOrder = 2
          OnClick = rgClientesClick
          Transparent = True
        end
        object TS_MaxPanel35: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object TS_MaxPanel36: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
      end
      object tsNovaExistente: TTS_TabSheet
        Caption = 'Nova/Existente'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object lbtsNovaExistente: TdxfLabel
          Left = 24
          Top = 11
          Width = 77
          Height = 21
          AutoSize = False
          Caption = 'Etiqueta'
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
        object rgNova: TTS_RadioButton
          Left = 56
          Top = 72
          Width = 241
          Height = 17
          Caption = 'Criar uma nova Etiqueta'
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgExistente: TTS_RadioButton
          Left = 56
          Top = 99
          Width = 265
          Height = 17
          Caption = 'Selecionar uma Etiqueta existente'
          TabOrder = 1
          Transparent = False
        end
        object TS_MaxPanel3: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object TS_MaxPanel4: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object tsEtiquetaExistente: TTS_TabSheet
        Caption = 'tsEtiquetaExistente'
        TabVisible = False
        OnShow = tsEtiquetaExistenteShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object TS_Shape19: TTS_Shape
          Left = 10
          Top = 194
          Width = 471
          Height = 2
          Pen.Color = 11388903
          Transparent = False
        end
        object TS_Shape18: TTS_Shape
          Left = 17
          Top = 185
          Width = 104
          Height = 20
          Brush.Color = 11388903
          Pen.Style = psClear
          Shape = stRoundRect
          Transparent = False
        end
        object TS_Label34: TTS_Label
          Left = 9
          Top = 14
          Width = 164
          Alignment = taLeftJustify
          Caption = 'Selecione a etiqueta existente:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label45: TTS_Label
          Left = 380
          Top = 14
          Width = 101
          Cursor = crHandPoint
          Caption = 'Remover Etiqueta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label45Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object Label4: TLabel
          Left = 29
          Top = 188
          Width = 79
          Height = 13
          Caption = 'Caracter'#237'stica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object TS_Label57: TTS_Label
          Left = 8
          Top = 214
          Width = 65
          Alignment = taLeftJustify
          Caption = 'Dimens'#245'es:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label58: TTS_Label
          Left = 8
          Top = 231
          Width = 65
          Alignment = taLeftJustify
          Caption = 'N'#186' Colunas:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label59: TTS_Label
          Left = 8
          Top = 247
          Width = 93
          Alignment = taLeftJustify
          Caption = 'Tamanho do Papel:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label60: TTS_Label
          Left = 8
          Top = 263
          Width = 93
          Alignment = taLeftJustify
          Caption = 'Tipo de Etiqueta:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbDimensoes: TTS_Label
          Left = 68
          Top = 214
          Width = 72
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbDimensoes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbColunas: TTS_Label
          Left = 68
          Top = 231
          Width = 72
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbDimensoes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbTamanhoPapel: TTS_Label
          Left = 102
          Top = 247
          Width = 72
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbDimensoes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbTipoEtiqueta: TTS_Label
          Left = 102
          Top = 264
          Width = 72
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbDimensoes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label61: TTS_Label
          Left = 270
          Top = 214
          Width = 143
          Alignment = taLeftJustify
          Caption = 'N'#186' de Etiquetas por p'#225'gina:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label62: TTS_Label
          Left = 270
          Top = 231
          Width = 143
          Alignment = taLeftJustify
          Caption = #218'ltima vez que utilizou:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbEtiquetasPorPagina: TTS_Label
          Left = 407
          Top = 214
          Width = 120
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbEtiquetasPorPagina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbUltimaVez: TTS_Label
          Left = 384
          Top = 231
          Width = 67
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbUltimaVez'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbUsuariojj: TTS_Label
          Left = 270
          Top = 247
          Width = 45
          Alignment = taLeftJustify
          Caption = 'Usu'#225'rio:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbUsuario: TTS_Label
          Left = 314
          Top = 247
          Width = 67
          Height = 13
          Alignment = taLeftJustify
          AutoSize = True
          Caption = 'lbUltimaVez'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object clbEtiquetas: TTS_CheckListBox
          Left = 8
          Top = 29
          Width = 473
          Height = 152
          OnClickCheck = clbEtiquetasClickCheck
          Columns = 2
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 0
          OnClick = clbEtiquetasClick
          Transparent = False
        end
      end
      object tsNova: TTS_TabSheet
        Caption = 'tsNova'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object TS_Label5: TTS_Label
          Left = 16
          Top = 18
          Width = 449
          Height = 39
          Alignment = taLeftJustify
          Caption = 
            'Informe o nome da etiqueta, este nome lhe ajudar'#225' quando voc'#234' de' +
            'sejar novamente imprimir esta etiqueta, selecionando uma etiquet' +
            'a existente.'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label4: TTS_Label
          Left = 24
          Top = 82
          Width = 129
          Caption = 'Nome da Etiqueta:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object edNome: TTS_Edit
          Left = 155
          Top = 80
          Width = 262
          TabOrder = 0
          OnExit = edNomeExit
          StyleController = DMProjeto.esGeral
          Height = 19
        end
      end
      object tsTipoEtiqueta: TTS_TabSheet
        Caption = 'tsTipoEtiqueta'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object lbtsTipoEtiqueta: TdxfLabel
          Left = 24
          Top = 11
          Width = 297
          Height = 21
          AutoSize = False
          Caption = 'Qual tipo de etiqueta deseja criar ?'
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
        object rgClientes: TTS_RadioButton
          Left = 48
          Top = 55
          Width = 113
          Height = 17
          Caption = 'Clientes'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rgClientesClick
          Transparent = False
        end
        object rgFornecedores: TTS_RadioButton
          Left = 48
          Top = 71
          Width = 113
          Height = 17
          Caption = 'Fornecedores'
          TabOrder = 1
          OnClick = rgClientesClick
          Transparent = False
        end
        object rgFuncionarios: TTS_RadioButton
          Left = 48
          Top = 87
          Width = 113
          Height = 17
          Caption = 'Funcion'#225'rios'
          TabOrder = 2
          OnClick = rgClientesClick
          Transparent = False
        end
        object rgEmpresa: TTS_RadioButton
          Left = 48
          Top = 120
          Width = 137
          Height = 17
          Caption = 'Empresa'
          TabOrder = 4
          OnClick = rgClientesClick
          Transparent = False
        end
        object rgManualmente: TTS_RadioButton
          Left = 48
          Top = 152
          Width = 155
          Height = 17
          Caption = 'Informar manualmente'
          TabOrder = 6
          OnClick = rgClientesClick
          Transparent = False
        end
        object rgItens: TTS_RadioButton
          Left = 48
          Top = 104
          Width = 155
          Height = 17
          Caption = 'Itens'
          TabOrder = 3
          OnClick = rgClientesClick
          Transparent = False
        end
        object rgComandoSQL: TTS_RadioButton
          Left = 48
          Top = 137
          Width = 417
          Height = 16
          Caption = 
            'Comando SQL (requer conhecimento da linguagem SQL). Solicite aju' +
            'da ao suporte.'
          TabOrder = 5
          OnClick = rgClientesClick
          Transparent = False
        end
        object TS_MaxPanel5: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 7
        end
        object TS_MaxPanel6: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 8
        end
      end
      object tsClientes: TTS_TabSheet
        Caption = 'tsClientes'
        TabVisible = False
        OnShow = tsClientesShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Shape11: TTS_Shape
          Left = 63
          Top = 223
          Width = 403
          Height = 80
          Brush.Style = bsClear
          Pen.Color = 9741530
          Transparent = False
        end
        object TS_Label41: TTS_Label
          Left = 264
          Top = 208
          Width = 201
          Cursor = crHandPoint
          Caption = 'Adicionar/Remover Clientes...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label41Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsClientes: TdxfLabel
          Left = 24
          Top = 11
          Width = 137
          Height = 21
          AutoSize = False
          Caption = 'Quais Clientes ?'
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
        object rgClientesAtivos: TTS_RadioButton
          Left = 64
          Top = 62
          Width = 353
          Height = 17
          Caption = 'Todos os Clientes'
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgClientesEmDia: TTS_RadioButton
          Left = 64
          Top = 78
          Width = 353
          Height = 17
          Caption = 'Clientes em dia'
          TabOrder = 1
          Transparent = False
        end
        object rgSelecionarClientes: TTS_RadioButton
          Left = 64
          Top = 206
          Width = 209
          Height = 17
          Caption = 'Selecionar Clientes'
          TabOrder = 6
          OnClick = rgSelecionarClientesClick
          Transparent = False
        end
        object lbClientes: TTS_ListBox
          Left = 64
          Top = 224
          Width = 401
          Height = 78
          BorderStyle = bsNone
          Columns = 2
          ItemHeight = 13
          TabOrder = 7
        end
        object rgClientesEmAtraso: TTS_RadioButton
          Left = 64
          Top = 94
          Width = 262
          Height = 17
          Caption = 'Clientes em atraso'
          TabOrder = 2
          Transparent = False
        end
        object rgClientesCidade: TTS_RadioButton
          Left = 64
          Top = 126
          Width = 225
          Height = 17
          Caption = 'Clientes que mora na cidade de:'
          TabOrder = 3
          Transparent = False
        end
        object rgClientesEstado: TTS_RadioButton
          Left = 64
          Top = 142
          Width = 129
          Height = 17
          Caption = 'Clientes do estado de:'
          TabOrder = 4
          Transparent = False
        end
        object edCidade: TTS_Edit
          Left = 241
          Top = 122
          Width = 178
          TabOrder = 8
          StyleController = DMProjeto.esGeral
          Height = 19
        end
        object cmbEstado: TTS_LookupComboBox
          Left = 192
          Top = 139
          Width = 49
          TabOrder = 9
          StyleController = DMProjeto.esGeral
          ClearKey = 32
          ListFieldName = 'UF'
          KeyFieldName = 'UF'
          ListSource = C_UFsDS
          LookupKeyValue = Null
          Height = 19
        end
        object rgClientesAniversariantes: TTS_RadioButton
          Left = 64
          Top = 190
          Width = 100
          Height = 17
          Caption = 'Aniversariantes'
          TabOrder = 5
          Transparent = False
        end
        object cmbPeriodo: TTS_ComboBox
          Left = 160
          Top = 190
          Width = 129
          TabOrder = 10
          StyleController = DMProjeto.esGeral
          DropDownListStyle = True
          Items.Strings = (
            'de hoje'
            'da semana'
            'do m'#234's'
            'do pr'#243'ximo m'#234's'
            'do dia 1 de <mes>'
            'do dia 2 de <mes>'
            'do dia 3 de <mes>'
            'do dia 4 de <mes>'
            'do dia 5 de <mes>'
            'do dia 6 de <mes>'
            'do dia 7 de <mes>'
            'do dia 8 de <mes>'
            'do dia 9 de <mes>'
            'do dia 10 de <mes>'
            'do dia 11 de <mes>'
            'do dia 12 de <mes>'
            'do dia 13 de <mes>'
            'do dia 14 de <mes>'
            'do dia 15 de <mes>'
            'do dia 16 de <mes>'
            'do dia 17 de <mes>'
            'do dia 18 de <mes>'
            'do dia 19 de <mes>'
            'do dia 20 de <mes>'
            'do dia 21 de <mes>'
            'do dia 22 de <mes>'
            'do dia 23 de <mes>'
            'do dia 24 de <mes>'
            'do dia 25 de <mes>'
            'do dia 26 de <mes>'
            'do dia 27 de <mes>'
            'do dia 28 de <mes>'
            'do dia 29 de <mes>'
            'do dia 30 de <mes>'
            'do dia 31 de <mes>')
          Height = 19
        end
        object TS_MaxPanel7: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 11
        end
        object TS_MaxPanel8: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 12
        end
        object rgClientesGrupo: TTS_RadioButton
          Left = 64
          Top = 158
          Width = 110
          Height = 17
          Caption = 'Clientes do Grupo:'
          TabOrder = 13
          Transparent = False
        end
        object rgClientesComChequesDev: TTS_RadioButton
          Left = 64
          Top = 174
          Width = 199
          Height = 17
          Caption = 'Clientes com cheques devolvidos'
          TabOrder = 14
          Transparent = False
        end
        object cmbGrupo: TTS_LookupComboBox
          Left = 176
          Top = 157
          Width = 153
          TabOrder = 15
          StyleController = DMProjeto.esGeral
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'GRUPOCLIENTE'
          ListSource = Q_GruposClienteDS
          LookupKeyValue = Null
          Height = 19
        end
        object rgClientesComCredito: TTS_RadioButton
          Left = 64
          Top = 110
          Width = 145
          Height = 17
          Caption = 'Clientes com cr'#233'dito'
          TabOrder = 16
          Transparent = False
        end
      end
      object tsFornecedores: TTS_TabSheet
        Caption = 'tsFornecedores'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Shape12: TTS_Shape
          Left = 47
          Top = 138
          Width = 403
          Height = 139
          Brush.Style = bsClear
          Pen.Color = 9741530
          Transparent = False
        end
        object TS_Label42: TTS_Label
          Left = 272
          Top = 121
          Width = 177
          Cursor = crHandPoint
          Caption = 'Adicionar/Remover Fornecedores...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label42Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsFornecedores: TdxfLabel
          Left = 24
          Top = 11
          Width = 183
          Height = 21
          AutoSize = False
          Caption = 'Quais Fornecedores ?'
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
        object rgFornecedoresAtivos: TTS_RadioButton
          Left = 48
          Top = 67
          Width = 353
          Height = 17
          Caption = 'Todos os Fornecedores ativos'
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgFornecedoresContasEmAberto: TTS_RadioButton
          Left = 48
          Top = 85
          Width = 396
          Height = 17
          Caption = 'Todos os Fornecedores com contas em aberto'
          TabOrder = 1
          Transparent = False
        end
        object rgSelecionarFornecedores: TTS_RadioButton
          Left = 48
          Top = 119
          Width = 185
          Height = 17
          Caption = 'Selecionar Fornecedores'
          TabOrder = 3
          OnClick = rgSelecionarFornecedoresClick
          Transparent = False
        end
        object lbFornecedores: TTS_ListBox
          Left = 48
          Top = 139
          Width = 401
          Height = 137
          BorderStyle = bsNone
          ItemHeight = 13
          TabOrder = 4
        end
        object rgFornecedoresPedidosEmAberto: TTS_RadioButton
          Left = 48
          Top = 102
          Width = 401
          Height = 17
          Caption = 'Todos os Fornecedores com pedido de compra em aberto'
          TabOrder = 2
          Transparent = False
        end
        object TS_MaxPanel9: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 5
        end
        object TS_MaxPanel10: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 6
        end
      end
      object tsFuncionarios: TTS_TabSheet
        Caption = 'tsFuncionarios'
        TabVisible = False
        OnShow = tsFuncionariosShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Shape13: TTS_Shape
          Left = 31
          Top = 136
          Width = 432
          Height = 139
          Brush.Style = bsClear
          Pen.Color = 9741530
          Transparent = False
        end
        object TS_Label43: TTS_Label
          Left = 286
          Top = 119
          Width = 177
          Cursor = crHandPoint
          Caption = 'Adicionar/Remover Funcion'#225'rios...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label43Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsFuncionarios: TdxfLabel
          Left = 24
          Top = 11
          Width = 173
          Height = 21
          AutoSize = False
          Caption = 'Quais Funcion'#225'rios ?'
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
        object rgFuncionariosAtivos: TTS_RadioButton
          Left = 32
          Top = 65
          Width = 201
          Height = 17
          Caption = 'Todos os Funcion'#225'rios ativos'
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgFuncionariosPayroll: TTS_RadioButton
          Left = 32
          Top = 83
          Width = 185
          Height = 17
          Caption = 'Todos os Funcion'#225'rios do Payroll:'
          TabOrder = 1
          Transparent = False
        end
        object rgSelecionarFuncionarios: TTS_RadioButton
          Left = 32
          Top = 118
          Width = 193
          Height = 17
          Caption = 'Selecionar Funcion'#225'rios'
          TabOrder = 3
          OnClick = rgSelecionarFuncionariosClick
          Transparent = False
        end
        object lbFuncionarios: TTS_ListBox
          Left = 32
          Top = 137
          Width = 430
          Height = 137
          BorderStyle = bsNone
          ItemHeight = 13
          TabOrder = 4
        end
        object rgFuncionariosCliente: TTS_RadioButton
          Left = 32
          Top = 100
          Width = 273
          Height = 17
          Caption = 'Todos os Funcion'#225'rios que presta serv. ao cliente:'
          TabOrder = 2
          Transparent = False
        end
        object cmbPayRoll: TTS_LookupComboBox
          Left = 212
          Top = 81
          Width = 253
          TabOrder = 5
          StyleController = DMProjeto.esGeral
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'PAYROLL'
          ListSource = C_PayRollDS
          LookupKeyValue = Null
          Height = 19
        end
        object edCliente: TTS_EditFavorecido
          Left = 292
          Top = 99
          Width = 173
          Hint = 
            '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
            '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
            'a pelo EIN. Ex: EIN:6719034663'
          Style.ButtonStyle = btsFlat
          TabOrder = 6
          StyleController = DMProjeto.esGeral
          Buttons = <
            item
              Default = True
              Glyph.Data = {
                26050000424D260500000000000036040000280000000F0000000F0000000100
                080000000000F000000000000000000000000001000000000000000000000000
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
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                070707070707070707000707070707070707070707FCFC000700070707070707
                0707070704FEFC00070007070707070707070704FEFC00070700070707070707
                0707FCFEFC0007070700070707000000000707A4000707070700070700060606
                0600A4A40707070707000707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
                FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
                FEFE060007070707070007FEFFFFFFFEFEFE000707070707070007A4FFFFFFFE
                FE060707070707070700070707A4A4A400070707070707070700070707070707
                07070707070707070700}
              Kind = bkGlyph
              Width = 18
            end>
          C_Localizar = DMProjeto.C_LocalizarFav
          ID = 0
          Height = 19
          ExistButtons = True
        end
        object TS_MaxPanel11: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 7
        end
        object TS_MaxPanel12: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 8
        end
      end
      object tsItens: TTS_TabSheet
        Caption = 'tsItens'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label37: TTS_Label
          Left = 346
          Top = 86
          Width = 13
          Caption = 'a '
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsItens: TdxfLabel
          Left = 24
          Top = 11
          Width = 113
          Height = 21
          AutoSize = False
          Caption = 'Quais Itens ?'
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
        object rgItensInventario: TTS_RadioButton
          Left = 48
          Top = 52
          Width = 353
          Height = 17
          Caption = 'Todos os itens de invent'#225'rio'
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = False
        end
        object rgSelecionarItens: TTS_RadioButton
          Left = 48
          Top = 137
          Width = 17
          Height = 17
          TabOrder = 5
          Transparent = False
        end
        object rgItensServico: TTS_RadioButton
          Left = 48
          Top = 69
          Width = 353
          Height = 17
          Caption = 'Todos os itens de servi'#231'o'
          TabOrder = 1
          Transparent = False
        end
        object rgItensCadastrados: TTS_RadioButton
          Left = 48
          Top = 86
          Width = 221
          Height = 17
          Caption = 'Todos os itens cadastrados no per'#237'odo de '
          TabOrder = 2
          Transparent = False
        end
        object DataI: TTS_DateTimePicker
          Left = 267
          Top = 84
          Width = 80
          TabOrder = 7
          AutoSize = False
          StyleController = DMProjeto.esGeral
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
          Height = 19
        end
        object DataF: TTS_DateTimePicker
          Left = 361
          Top = 84
          Width = 82
          TabOrder = 8
          AutoSize = False
          StyleController = DMProjeto.esGeral
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
          Height = 19
        end
        object rgSaidas: TTS_RadioButton
          Left = 48
          Top = 103
          Width = 289
          Height = 17
          Caption = 'Todos os itens da Invoice/Sales Order/Estimate de N'#186':'
          TabOrder = 3
          Transparent = False
        end
        object rgEntradas: TTS_RadioButton
          Left = 48
          Top = 120
          Width = 312
          Height = 17
          Caption = 'Todos os itens da Entrada de Itens/Pedido de Compra de N'#186':'
          TabOrder = 4
          Transparent = False
        end
        object edSaida: TTS_Edit
          Left = 361
          Top = 102
          Width = 82
          TabOrder = 9
          StyleController = DMProjeto.esGeral
          Height = 19
        end
        object edEntrada: TTS_Edit
          Left = 361
          Top = 120
          Width = 82
          TabOrder = 10
          StyleController = DMProjeto.esGeral
          Height = 19
        end
        object TS_MaxPanel13: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 11
        end
        object TS_MaxPanel14: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 12
        end
        object PopupFiltroItens: TTS_PopupFiltrarItens
          Left = 64
          Top = 136
          Width = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          AutoSelect = False
          StyleController = DMProjeto.esGeral
          Text = 'Filtrar itens...'
          OnChange = PopupFiltroItensChange
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
          TS_AliasItens = 'i'
          OnSelecionou = PopupFiltroItensSelecionou
          Height = 19
        end
      end
      object tsManualmente: TTS_TabSheet
        Caption = 'tsManualmente'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object Label1: TLabel
          Left = 29
          Top = 64
          Width = 109
          Height = 13
          Caption = 'Conte'#250'do da Etiqueta:'
        end
        object lbtsManualmente: TdxfLabel
          Left = 24
          Top = 11
          Width = 191
          Height = 21
          AutoSize = False
          Caption = 'Etiqueta Manualmente'
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
        object mmManualmente: TTS_Memo
          Left = 27
          Top = 80
          Width = 337
          TabOrder = 0
          OnKeyPress = mmManualmenteKeyPress
          StyleController = DMProjeto.esGeral
          OnChange = mmManualmenteChange
          Height = 129
        end
        object TS_MaxPanel15: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
        end
        object TS_MaxPanel16: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
      end
      object tsComandoSQL: TTS_TabSheet
        Caption = 'tsComandoSQL'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object Label3: TLabel
          Left = 376
          Top = 54
          Width = 97
          Height = 13
          Cursor = crHandPoint
          Alignment = taRightJustify
          Caption = 'Abrir Arquivo SQL...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label3Click
        end
        object lbtsComandoSQL: TdxfLabel
          Left = 24
          Top = 11
          Width = 113
          Height = 21
          AutoSize = False
          Caption = 'Comando SQL'
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
        object mmSQL: TTS_Memo
          Left = 26
          Top = 68
          Width = 449
          TabOrder = 0
          StyleController = DMProjeto.esGeral
          Height = 193
        end
        object TS_MaxPanel17: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 1
        end
        object TS_MaxPanel18: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
      end
      object tsCampos: TTS_TabSheet
        Caption = 'tsCampos'
        TabVisible = False
        OnShow = tsCamposShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label63: TTS_Label
          Left = 25
          Top = 252
          Width = 92
          Alignment = taLeftJustify
          Caption = 'Ordenador por:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsCampos: TdxfLabel
          Left = 24
          Top = 11
          Width = 375
          Height = 21
          AutoSize = False
          Caption = 'Selecione os campos que deseja na etiqueta:'
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
        object TS_Shape15: TTS_Shape
          Left = 24
          Top = 55
          Width = 457
          Height = 194
          Brush.Style = bsClear
          Pen.Color = 9741530
          Transparent = False
        end
        object lbTabelaPreco: TTS_Label
          Left = 249
          Top = 252
          Width = 92
          Alignment = taLeftJustify
          Caption = 'Tabela de Pre'#231'o:'
          Visible = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object cmbCampos: TTS_CheckListBox
          Left = 248
          Top = 293
          Width = 222
          Height = 16
          OnClickCheck = cmbCamposClickCheck
          Columns = 3
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          Visible = False
          Transparent = False
        end
        object cmbCamposDicionario: TTS_CheckListBox
          Left = 25
          Top = 56
          Width = 455
          Height = 192
          OnClickCheck = cmbCamposDicionarioClickCheck
          BorderStyle = bsNone
          Columns = 3
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
          Transparent = False
        end
        object cmbOrdem: TTS_ComboBox
          Left = 23
          Top = 265
          Width = 162
          TabOrder = 2
          StyleController = DMProjeto.esGeral
          OnChange = cmbOrdemChange
          DropDownListStyle = True
          Height = 19
        end
        object TS_MaxPanel19: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object TS_MaxPanel20: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
        object cmbTabelaPreco: TTS_LookupComboBox
          Left = 248
          Top = 265
          Width = 156
          TabOrder = 5
          Visible = False
          StyleController = DMProjeto.esGeral
          ClearKey = 32
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'TABELAPRECO'
          ListSource = C_TabelaPrecoDS
          LookupKeyValue = Null
          Height = 19
        end
      end
      object tsCamposAdicionais: TTS_TabSheet
        Caption = 'tsCamposAdicionais'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label65: TTS_Label
          Left = 15
          Top = 66
          Width = 64
          Caption = 'Conte'#250'do:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object btMais: TTS_SpeedButton
          Left = 288
          Top = 65
          Width = 19
          Height = 17
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            700077777777777770007777700077777000777770C077777000777770C07777
            7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
            7000777770C07777700077777000777770007777777777777000777777777777
            7000}
          OnClick = btMaisClick
          RepeatedClick = False
          Border = True
        end
        object TS_SpeedButton4: TTS_SpeedButton
          Left = 309
          Top = 65
          Width = 18
          Height = 17
          Hint = 'Palavras Chave'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0404FFFFFFFFFFFFFFFFFFFFFFFFFFD8D80404FFFFFFFFFFFFFFFFFFFFFFD8
            D8D8D80404FFFFFFFFFFFFFFFFFFD8D8D8D8D8D80404FFFFFFFFFFFFFFD8D8D8
            D8D8D8D8D80404FFFFFFFFFFD8D8D8D8D8D8D8D8D8D80404FFFFFFD8D8D8D8D8
            D8D8D8D8D8D8D80404FFD8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnMouseUp = TS_SpeedButton4MouseUp
          RepeatedClick = False
          Border = True
        end
        object TS_Shape20: TTS_Shape
          Left = 27
          Top = 93
          Width = 351
          Height = 147
          Brush.Style = bsClear
          Pen.Color = 9741530
          Transparent = False
        end
        object lbtsCamposAdicionais: TdxfLabel
          Left = 24
          Top = 11
          Width = 193
          Height = 21
          AutoSize = False
          Caption = 'Infoma'#231#245'es Adicionais'
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
        object TS_SpeedButton3: TTS_SpeedButton
          Left = 330
          Top = 65
          Width = 18
          Height = 17
          Hint = 'Campos'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF0404FFFFFFFFFFFFFFFFFFFFFFFFFFD8D80404FFFFFFFFFFFFFFFFFFFFFFD8
            D8D8D80404FFFFFFFFFFFFFFFFFFD8D8D8D8D8D80404FFFFFFFFFFFFFFD8D8D8
            D8D8D8D8D80404FFFFFFFFFFD8D8D8D8D8D8D8D8D8D80404FFFFFFD8D8D8D8D8
            D8D8D8D8D8D8D80404FFD8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnMouseUp = TS_SpeedButton3MouseUp
          RepeatedClick = False
          Border = True
        end
        object edCampo: TTS_Edit
          Left = 81
          Top = 64
          Width = 206
          TabOrder = 0
          OnKeyPress = edCampoKeyPress
          StyleController = DMProjeto.esGeral
          Height = 19
        end
        object lbCamposAdicionais: TTS_ListBox
          Left = 28
          Top = 94
          Width = 349
          Height = 145
          BorderStyle = bsNone
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 1
          OnClick = lbCamposAdicionaisClick
          OnKeyDown = lbCamposAdicionaisKeyDown
        end
        object TS_MaxPanel21: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object TS_MaxPanel22: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object tsCopias: TTS_TabSheet
        Caption = 'tsCopias'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label23: TTS_Label
          Left = 6
          Top = 75
          Width = 193
          Caption = 'Quantas c'#243'pias da mesma etiqueta:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsCopias: TdxfLabel
          Left = 24
          Top = 11
          Width = 185
          Height = 21
          AutoSize = False
          Caption = 'Quantidade de c'#243'pias'
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
        object ckbQtdeEstoque: TTS_CheckBox
          Left = 23
          Top = 96
          Width = 427
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 0
          Caption = 
            'Imprimir quantidade de etiquetas de acordo com a quantidade do i' +
            'tem em estoque.'
          OnChange = ckbQtdeEstoqueChange
          DisableEdit = False
          Height = 23
        end
        object edCopias: TTS_SpinEdit
          Left = 202
          Top = 73
          Width = 53
          TabOrder = 1
          StyleController = DMProjeto.esGeral
          MaxValue = 500000
          MinValue = 1
          Value = 1
          Height = 19
          StoredValues = 48
        end
        object TS_MaxPanel23: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object TS_MaxPanel24: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object tsModelo: TTS_TabSheet
        Caption = 'tsModelo'
        TabVisible = False
        OnShow = tsModeloShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object lbtsModelo: TdxfLabel
          Left = 24
          Top = 11
          Width = 165
          Height = 21
          AutoSize = False
          Caption = 'Modelo da Etiqueta'
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
        object rgModeloExistente: TTS_RadioButton
          Left = 38
          Top = 95
          Width = 176
          Height = 17
          Caption = 'Selecionar um modelo existente'
          TabOrder = 0
          OnClick = rgModeloExistenteClick
          Transparent = False
        end
        object rgNovoModelo: TTS_RadioButton
          Left = 38
          Top = 74
          Width = 176
          Height = 17
          Caption = 'Criar um novo modelo'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = rgModeloExistenteClick
          Transparent = False
        end
        object cmbModelo: TTS_ComboBox
          Left = 212
          Top = 94
          Width = 241
          Enabled = False
          TabOrder = 2
          StyleController = DMProjeto.esGeral
          OnChange = cmbModeloChange
          Sorted = True
          Height = 19
        end
        object TS_MaxPanel25: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object TS_MaxPanel26: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
      end
      object tsModeloEtiqueta: TTS_TabSheet
        Caption = 'tsModeloEtiqueta'
        TabVisible = False
        OnShow = tsModeloEtiquetaShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label11: TTS_Label
          Left = 13
          Top = 73
          Width = 123
          Caption = 'N'#186' de Colunas:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label13: TTS_Label
          Left = -29
          Top = 92
          Width = 117
          Caption = '1. Largura:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label14: TTS_Label
          Left = -23
          Top = 150
          Width = 159
          Caption = '3. Espa'#231'amento vertical:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label16: TTS_Label
          Left = -1
          Top = 188
          Width = 137
          Caption = '5. Margem Superior:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label17: TTS_Label
          Left = -5
          Top = 207
          Width = 141
          Caption = '6. Margem Inferior:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label18: TTS_Label
          Left = -1
          Top = 225
          Width = 137
          Caption = '7. Margem Esquerda:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label21: TTS_Label
          Left = 31
          Top = 55
          Width = 105
          Caption = 'Nome do Modelo:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label27: TTS_Label
          Left = 195
          Top = 96
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label28: TTS_Label
          Left = 195
          Top = 172
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label30: TTS_Label
          Left = 195
          Top = 229
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label31: TTS_Label
          Left = 195
          Top = 192
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label32: TTS_Label
          Left = 195
          Top = 210
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label8: TTS_Label
          Left = 0
          Top = 111
          Width = 88
          Caption = '2. Altura:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label15: TTS_Label
          Left = -5
          Top = 169
          Width = 141
          Caption = '4. Espa'#231'amento horizontal:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label19: TTS_Label
          Left = 195
          Top = 153
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label24: TTS_Label
          Left = 195
          Top = 115
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label25: TTS_Label
          Left = 110
          Top = 288
          Width = 141
          Caption = 'Altura da P'#225'gina:'
          Visible = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label38: TTS_Label
          Left = 288
          Top = 286
          Width = 133
          Caption = 'Largura da P'#225'gina:'
          Visible = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label39: TTS_Label
          Left = -5
          Top = 244
          Width = 141
          Caption = '8. Margem Direita:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label40: TTS_Label
          Left = 195
          Top = 247
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_SpeedButton1: TTS_SpeedButton
          Left = 279
          Top = 221
          Width = 137
          Height = 25
          Caption = 'Configurar P'#225'gina...'
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
          OnClick = TS_SpeedButton1Click
          RepeatedClick = False
          Border = True
        end
        object lbLinhasPorPagina: TTS_Label
          Left = 2
          Top = 131
          Width = 134
          Caption = 'N'#186' Etiquetas por P'#225'gina:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label50: TTS_Label
          Left = 229
          Top = 247
          Width = 187
          Alignment = taLeftJustify
          Caption = 'N'#227'o imprimir nas seguintes colunas:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label51: TTS_Label
          Left = -5
          Top = 263
          Width = 141
          Caption = '9. Lateral do Texto:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label52: TTS_Label
          Left = 195
          Top = 267
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label55: TTS_Label
          Left = -2
          Top = 282
          Width = 138
          Caption = '10. Superior do Texto:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label56: TTS_Label
          Left = 195
          Top = 284
          Width = 23
          Alignment = taLeftJustify
          Caption = 'mm'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsModeloEtiqueta: TdxfLabel
          Left = 14
          Top = 9
          Width = 165
          Height = 21
          AutoSize = False
          Caption = 'Modelo da Etiqueta'
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
        object edColunas: TTS_SpinEdit
          Left = 136
          Top = 71
          Width = 42
          TabOrder = 1
          StyleController = DMProjeto.esGeral
          OnChange = edColunasChange
          MaxValue = 200
          MinValue = 1
          Value = 1
          Height = 19
          StoredValues = 48
        end
        object edLargura: TTS_SpinEdit
          Left = 136
          Top = 90
          Width = 58
          Enabled = False
          TabOrder = 3
          StyleController = DMProjeto.esGeral
          OnChange = edLarguraChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edEspVertical: TTS_SpinEdit
          Left = 136
          Top = 147
          Width = 58
          Enabled = False
          TabOrder = 7
          StyleController = DMProjeto.esGeral
          OnChange = edLinhasPorPaginaChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edEspHorizontal: TTS_SpinEdit
          Left = 136
          Top = 166
          Width = 58
          Enabled = False
          TabOrder = 8
          StyleController = DMProjeto.esGeral
          OnChange = edEspHorizontalChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edME: TTS_SpinEdit
          Left = 136
          Top = 223
          Width = 58
          TabOrder = 11
          StyleController = DMProjeto.esGeral
          OnChange = edEspHorizontalChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edMS: TTS_SpinEdit
          Left = 136
          Top = 185
          Width = 58
          TabOrder = 9
          StyleController = DMProjeto.esGeral
          OnChange = edLinhasPorPaginaChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edModelo: TTS_Edit
          Left = 136
          Top = 52
          Width = 273
          TabOrder = 0
          OnExit = edModeloExit
          StyleController = DMProjeto.esGeral
          Height = 19
        end
        object TS_Panel1: TTS_Panel
          Left = 216
          Top = 89
          Width = 289
          Height = 128
          BevelOuter = bvNone
          Color = 15329769
          TabOrder = 15
          object TS_Shape7: TTS_Shape
            Left = 24
            Top = 76
            Width = 16
            Height = 1
            Transparent = False
          end
          object TS_Shape2: TTS_Shape
            Left = 20
            Top = 22
            Width = 209
            Height = 73
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape6: TTS_Shape
            Left = 161
            Top = 27
            Width = 1
            Height = 63
            Transparent = False
          end
          object TS_Shape4: TTS_Shape
            Left = 20
            Top = 113
            Width = 209
            Height = 46
            Pen.Style = psDot
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape3: TTS_Shape
            Left = 256
            Top = 22
            Width = 66
            Height = 73
            Pen.Style = psDot
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Image3: TTS_Image
            Left = 224
            Top = 72
            Width = 6
            Height = 12
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFF00000000000000000000000000FFFFFF000000000000000000FFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Image5: TTS_Image
            Left = 21
            Top = 74
            Width = 4
            Height = 11
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Shape1: TTS_Shape
            Left = 25
            Top = 78
            Width = 200
            Height = 1
            Transparent = False
          end
          object TS_Label26: TTS_Label
            Left = 113
            Top = 71
            Width = 13
            Height = 12
            Alignment = taCenter
            Caption = '1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Image6: TTS_Image
            Left = 115
            Top = 0
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
              00000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
              0000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Shape5: TTS_Shape
            Left = 121
            Top = 4
            Width = 1
            Height = 16
            Transparent = False
          end
          object dxfLabel1: TdxfLabel
            Left = 110
            Top = 9
            Width = 17
            Height = 7
            AutoSize = False
            Caption = '5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style = dxfNormal
            Angle = 90
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 0
            Effect3D.ShadowedColor = clGray
            PenWidth = 1
          end
          object TS_Image7: TTS_Image
            Left = 117
            Top = 19
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000000000FF
              FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Image8: TTS_Image
            Left = 156
            Top = 23
            Width = 9
            Height = 7
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
              00000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
              0000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object dxfLabel2: TdxfLabel
            Left = 151
            Top = 53
            Width = 17
            Height = 11
            AutoSize = False
            Caption = '2'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Style = dxfNormal
            Angle = 90
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 0
            Effect3D.ShadowedColor = clGray
            PenWidth = 1
          end
          object TS_Image9: TTS_Image
            Left = 158
            Top = 88
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000000000FF
              FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Image12: TTS_Image
            Left = 117
            Top = 109
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000000000FF
              FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Image13: TTS_Image
            Left = 115
            Top = 95
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
              00000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
              0000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Shape8: TTS_Shape
            Left = 121
            Top = 97
            Width = 1
            Height = 13
            Transparent = False
          end
          object dxfLabel4: TdxfLabel
            Left = 111
            Top = 100
            Width = 17
            Height = 8
            AutoSize = False
            Caption = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style = dxfNormal
            Angle = 90
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 0
            Effect3D.ShadowedColor = clGray
            PenWidth = 1
          end
          object TS_Image14: TTS_Image
            Left = 226
            Top = 12
            Width = 4
            Height = 11
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Shape9: TTS_Shape
            Left = 229
            Top = 16
            Width = 22
            Height = 1
            Transparent = False
          end
          object TS_Image15: TTS_Image
            Left = 251
            Top = 10
            Width = 6
            Height = 12
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFF00000000000000000000000000FFFFFF000000000000000000FFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Label29: TTS_Label
            Left = 235
            Top = 9
            Width = 12
            Alignment = taCenter
            Caption = '4'
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Shape10: TTS_Shape
            Left = 4
            Top = 34
            Width = 15
            Height = 1
            Transparent = False
          end
          object TS_Label33: TTS_Label
            Left = 7
            Top = 27
            Width = 8
            Alignment = taCenter
            Caption = '7'
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Image16: TTS_Image
            Left = 1
            Top = 30
            Width = 5
            Height = 11
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Image17: TTS_Image
            Left = 16
            Top = 28
            Width = 6
            Height = 12
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFF00000000000000000000000000FFFFFF000000000000000000FFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Label53: TTS_Label
            Left = 44
            Top = 53
            Width = 117
            Alignment = taLeftJustify
            Caption = 'Texto da Etiqueta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Image2: TTS_Image
            Left = 37
            Top = 52
            Width = 6
            Height = 12
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFF00000000000000000000000000FFFFFF000000000000000000FFFF
              FF00FFFFFF000000000000FFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Image4: TTS_Image
            Left = 21
            Top = 53
            Width = 4
            Height = 11
            Picture.Data = {
              07544269746D6170E6000000424DE60000000000000036000000280000000500
              00000B0000000100180000000000B0000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
              FF00FFFFFFFFFFFF000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Transparent = True
          end
          object TS_Shape16: TTS_Shape
            Left = 25
            Top = 58
            Width = 15
            Height = 1
            Transparent = False
          end
          object TS_Label54: TTS_Label
            Left = 28
            Top = 51
            Width = 8
            Alignment = taCenter
            Caption = '9'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Image18: TTS_Image
            Left = 66
            Top = 48
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000000000FF
              FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Image19: TTS_Image
            Left = 64
            Top = 22
            Width = 9
            Height = 6
            Picture.Data = {
              07544269746D6170EA000000424DEA0000000000000036000000280000000B00
              0000050000000100180000000000B4000000C40E0000C40E0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
              00000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
              0000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
              000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000}
            Transparent = True
          end
          object TS_Shape17: TTS_Shape
            Left = 70
            Top = 26
            Width = 1
            Height = 23
            Transparent = False
          end
          object dxfLabel5: TdxfLabel
            Left = 60
            Top = 32
            Width = 17
            Height = 12
            AutoSize = False
            Caption = '10'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4868863
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Style = dxfNormal
            Angle = 90
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 0
            Effect3D.ShadowedColor = clGray
            PenWidth = 1
          end
        end
        object edAltura: TTS_SpinEdit
          Left = 136
          Top = 109
          Width = 58
          Enabled = False
          TabOrder = 5
          StyleController = DMProjeto.esGeral
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edMI: TTS_SpinEdit
          Left = 136
          Top = 204
          Width = 58
          TabOrder = 10
          StyleController = DMProjeto.esGeral
          OnChange = edLinhasPorPaginaChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edAlturaPagina: TTS_SpinEdit
          Left = 422
          Top = 237
          Width = 58
          TabOrder = 16
          Visible = False
          StyleController = DMProjeto.esGeral
          OnChange = edAlturaPaginaChange
          ValueType = vtInt
          Height = 19
          StoredValues = 8
        end
        object edLarguraPagina: TTS_SpinEdit
          Left = 422
          Top = 218
          Width = 58
          TabOrder = 17
          Visible = False
          StyleController = DMProjeto.esGeral
          OnChange = edLarguraPaginaChange
          ValueType = vtInt
          Height = 19
          StoredValues = 8
        end
        object rgRetrato: TTS_RadioButton
          Left = 237
          Top = 281
          Width = 68
          Height = 17
          Caption = 'Retrato'
          Checked = True
          TabOrder = 18
          TabStop = True
          Visible = False
          Transparent = False
        end
        object rgPaisagem: TTS_RadioButton
          Left = 313
          Top = 281
          Width = 68
          Height = 17
          Caption = 'Paisagem'
          TabOrder = 19
          Visible = False
          Transparent = False
        end
        object edMD: TTS_SpinEdit
          Left = 136
          Top = 242
          Width = 58
          TabOrder = 12
          StyleController = DMProjeto.esGeral
          OnChange = edEspHorizontalChange
          Increment = 0.1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object ckbLarguraAutomatica: TTS_CheckBox
          Left = 88
          Top = 90
          Width = 49
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 2
          Caption = 'Auto'
          OnChange = ckbLarguraAutomaticaChange
          State = cbsChecked
          DisableEdit = False
          Height = 19
        end
        object ckbAlturaAutomatica: TTS_CheckBox
          Left = 88
          Top = 109
          Width = 49
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 4
          Caption = 'Auto'
          OnChange = ckbAlturaAutomaticaChange
          State = cbsChecked
          DisableEdit = False
          Height = 19
        end
        object edLinhasPorPagina: TTS_SpinEdit
          Left = 136
          Top = 128
          Width = 58
          TabOrder = 6
          StyleController = DMProjeto.esGeral
          OnChange = edLinhasPorPaginaChange
          MaxValue = 250
          ValueType = vtInt
          Height = 19
          StoredValues = 56
        end
        object clbNaoImprimir: TTS_CheckListBox
          Left = 228
          Top = 261
          Width = 258
          Height = 45
          Columns = 3
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 20
          Transparent = False
        end
        object edMT: TTS_SpinEdit
          Left = 136
          Top = 261
          Width = 58
          TabOrder = 13
          StyleController = DMProjeto.esGeral
          OnChange = edEspHorizontalChange
          Increment = 0.1
          Value = 1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object edST: TTS_SpinEdit
          Left = 136
          Top = 280
          Width = 58
          TabOrder = 14
          StyleController = DMProjeto.esGeral
          OnChange = edEspHorizontalChange
          Increment = 0.1
          Value = 1
          ValueType = vtFloat
          Height = 19
          StoredValues = 8
        end
        object TS_MaxPanel27: TTS_MaxPanel
          Left = 18
          Top = 35
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 21
        end
        object TS_MaxPanel28: TTS_MaxPanel
          Left = 18
          Top = 33
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 22
        end
      end
      object tsLayout: TTS_TabSheet
        Caption = 'tsLayout'
        TabVisible = False
        OnShow = tsLayoutShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object TS_Label44: TTS_Label
          Left = 281
          Top = 43
          Width = 197
          Cursor = crHandPoint
          Caption = 'Adicionar/Remover Campos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label44Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label46: TTS_Label
          Left = 34
          Top = 260
          Width = 91
          Caption = 'Texto antes:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label47: TTS_Label
          Left = 33
          Top = 279
          Width = 92
          Caption = 'Texto depois:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label48: TTS_Label
          Left = 12
          Top = 244
          Width = 113
          Caption = 'Campo Selecionado:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbCampoSelecionado: TTS_Label
          Left = 127
          Top = 244
          Width = 178
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_SpeedButton2: TTS_SpeedButton
          Left = 324
          Top = 238
          Width = 153
          Height = 25
          Caption = 'Formata'#231#227'o da Coluna'
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333380088333333333333333338007700833333
            3333333333307700770333000333300003307033003333090833309903077033
            3333330990000999030770333333333099999990330770833033333090000903
            3330708807033330990309033330770077033333090090333333007707033333
            099090333333330030333333309990338000033333333333309903300CCCC003
            3333333333090330CC00CCC03333333333090330C0330CC03333333333303330
            CC000CC03333333333333330CCCCCCC03333333333333330C0330C0333333333
            33333300C000CC0333333333333330CCCCCCCC03333333333333300000000033
            3333333333333333333333333333333333333333333333333333}
          OnClick = TS_SpeedButton2Click
          RepeatedClick = False
          Border = True
        end
        object Shape1: TShape
          Left = 27
          Top = 57
          Width = 451
          Height = 179
          Pen.Color = 9741530
        end
        object lbtsLayout: TdxfLabel
          Left = 24
          Top = 11
          Width = 161
          Height = 21
          AutoSize = False
          Caption = 'Layout da Etiqueta'
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
        object DBLayout: TTS_QDBGrid
          Left = 28
          Top = 58
          Width = 449
          Height = 177
          BandMaxRowCount = 20
          BandRowCount = 5
          Bands = <
            item
              MinWidth = 100
              OnlyOwnColumns = True
              Width = 200
            end>
          DefaultLayout = False
          HeaderPanelMaxRowCount = 20
          HeaderPanelRowCount = 1
          SummaryGroups = <>
          SummarySeparator = '|'
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_LayoutDS
          Filter.Criteria = {00000000}
          GridLineColor = clWhite
          HeaderColor = 15724527
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoHeaderPanelSizing, edgoRowSizing]
          OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnColumnSorting = DBLayoutColumnSorting
          OnCustomDrawColumnHeader = DBLayoutCustomDrawColumnHeader
          OnDragEndHeader = DBLayoutDragEndHeader
          OnColumnMoved = DBLayoutColumnMoved
          OnColumnClick = DBLayoutColumnClick
          OnContextPopup = DBLayoutContextPopup
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
          GroupNodeFont.Style = [fsBold]
          TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterFont.Color = clWindowText
          TS_SummaryFooterFont.Height = -11
          TS_SummaryFooterFont.Name = 'Tahoma'
          TS_SummaryFooterFont.Style = [fsBold]
          TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterSelFont.Color = clWindowText
          TS_SummaryFooterSelFont.Height = -11
          TS_SummaryFooterSelFont.Name = 'Tahoma'
          TS_SummaryFooterSelFont.Style = [fsBold]
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        end
        object edAntes: TTS_Edit
          Left = 126
          Top = 258
          Width = 139
          Style.HotTrack = False
          TabOrder = 1
          OnKeyPress = mmManualmenteKeyPress
          StyleController = DMProjeto.esGeral
          OnChange = edAntesChange
          Height = 19
        end
        object edDepois: TTS_Edit
          Left = 126
          Top = 277
          Width = 139
          Style.HotTrack = False
          TabOrder = 2
          OnKeyPress = mmManualmenteKeyPress
          StyleController = DMProjeto.esGeral
          OnChange = edDepoisChange
          Height = 19
        end
        object TS_MaxPanel29: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object TS_MaxPanel30: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 4
        end
      end
      object tsFinal: TTS_TabSheet
        Caption = 'tsFinal'
        TabVisible = False
        OnShow = tsFinalShow
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        DesignSize = (
          486
          307)
        object btEtiquetas: TTS_SpeedButton
          Left = 24
          Top = 108
          Width = 209
          Height = 25
          Caption = 'Visualizar Impress'#227'o das &Etiquetas'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C30E0000C30E00000001000000010000EF8410003131
            31008C8C8C003963B500FF00FF00218CFF0000F7FF007BFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
            0404040404040404040401010101010101010101010101010104010203030808
            0208080802080808010401020603030802080808020808080104010205060303
            0302020202020202010401020205070603030808020808080104010303030307
            0603030802080808010401050706060606060303020202020104010205070603
            0308080802080808010401010105070603030101010101010104010000050706
            0603030000000000010401000000050706060303000000000104010101010105
            0706060303010101010404040404040404040404040404040404040404040404
            0404040404040404040404040404040404040404040404040404}
          OnClick = btEtiquetasClick
          RepeatedClick = False
          Border = True
        end
        object lbMensagem: TTS_Label
          Left = 27
          Top = 189
          Width = 425
          Alignment = taLeftJustify
          Visible = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbConcluido: TTS_Label
          Left = 27
          Top = 62
          Width = 425
          Height = 27
          Alignment = taLeftJustify
          Caption = 'Meus parab'#233'ns! Voc'#234' concluiu todos os passos.'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label66: TTS_Label
          Left = 26
          Top = 234
          Width = 207
          Alignment = taLeftJustify
          Caption = 'Para fazer uma nova carta/etiqueta, clique '
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label67: TTS_Label
          Left = 235
          Top = 234
          Width = 30
          Cursor = crHandPoint
          Alignment = taLeftJustify
          Caption = 'aqui'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label67Click
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbtsFinal: TdxfLabel
          Left = 24
          Top = 11
          Width = 65
          Height = 21
          AutoSize = False
          Caption = 'Pronto'
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
        object btCartas: TTS_SpeedButton
          Left = 24
          Top = 144
          Width = 209
          Height = 24
          Caption = 'Visualizar Impress'#227'o das &Cartas'
          Glyph.Data = {
            F6010000424DF601000000000000F60000002800000010000000100000000100
            08000000000000010000340B0000340B00003000000030000000EA8F3100B66A
            5000AB735800C07B5800EAA15800FFB65800AB6A6000B67B6000A16A6A00A173
            6A00C0846A00A17B7300B68F7B00EAC07B00B68F8400EAC08400F4CA8400B698
            8F00F4CA8F00C0A19800CAA19800B6AB9800F4CA9800CAABA100D4ABA100D4B6
            A100E0B6A100EAC0A100F4CAA100F4D4A100EAC0AB00F4D4AB00E0D4B600F4D4
            B600F4E0B600E0C0C000E0CAC000F4E0C000F4E0CA00FFEACA00FFEAD400FFEA
            E000FFF4E000FFF4EA00FFF4F400FFFFF400FF00FF00FFFFFF002E2E08080808
            0808080808080808082E2E2E0E27221F1D16120F0D0D0D10082E2E2E0E270E0E
            0E0E0E0E0E0E0E0F082E2E2E11292625211F1C160F0F0D0F082E2E2E112A2625
            22211D1C160F0F0D082E2E2E132D0E0E0E0E0E0E0E0E0E0F082E2E2E142F2B29
            262522211F161212082E2E2E172F2C2B28262522211F1C16082E2E2E172F0E0E
            0E0E0E0E0E0E0E1D082E2E2E182F2F2F2C2928262521211C082E2E2E192F2F2F
            2F2C292828272015082E2E2E1A2F0E0E0E0E0E2B260C0B09082E2E2E1A2F2F2F
            2F2F2F2D23020400012E2E2E1E2F2F2F2F2F2F2F240705032E2E2E2E1A2C2B2B
            2B2B2B2B23070A2E2E2E2E2E1A1B1B1B1B1A1A1B17062E2E2E2E}
          OnClick = btCartasClick
          RepeatedClick = False
          Border = True
        end
        object Barra: TdxfProgressBar
          Left = 27
          Top = 204
          Width = 336
          Height = 14
          BarBevelOuter = bvRaised
          BeginColor = clWhite
          BevelOuter = bvNone
          EndColor = clRed
          Max = 20
          Min = 0
          Orientation = orHorizontal
          Position = 0
          ShowText = True
          ShowTextStyle = stsPercent
          Step = 10
          Style = sExSolid
          TabOrder = 0
          TransparentGlyph = True
          Visible = False
        end
        object ckbMostrarBorda: TTS_CheckBox
          Left = 245
          Top = 110
          Width = 121
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 1
          Caption = 'Imprimir Borda'
          DisableEdit = False
          Height = 23
        end
        object TS_MaxPanel31: TTS_MaxPanel
          Left = 28
          Top = 37
          Width = 331
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = 4227327
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 16756489
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 2
        end
        object TS_MaxPanel32: TTS_MaxPanel
          Left = 28
          Top = 35
          Width = 393
          Height = 2
          CornersType = ctDefault
          Corners.TopLeft.X = 10
          Corners.TopLeft.Y = 10
          Corners.TopLeft.Enabled = True
          Corners.TopRight.X = 10
          Corners.TopRight.Y = 10
          Corners.TopRight.Enabled = True
          Corners.BottomLeft.X = 10
          Corners.BottomLeft.Y = 10
          Corners.BottomLeft.Enabled = True
          Corners.BottomRight.X = 10
          Corners.BottomRight.Y = 10
          Corners.BottomRight.Enabled = True
          Image.ImageIndex = -1
          Image.X = 5
          Image.Y = 4
          Image.Enabled = True
          Image.Visible = True
          Image.Position = cipTopLeft
          BorderTopColor = clBtnHighlight
          BorderBottomColor = clBtnShadow
          Gradient.ColorStart = 10485760
          Gradient.ColorEnd = 14608375
          Gradient.Style = cgsLeft
          Gradient.Size = 0
          Gradient.Enabled = True
          Stretch = False
          XOffset = 0
          YOffset = 0
          Picture.Data = {07544269746D617000000000}
          CanvasType = ctTransparent
          TransBiasPercent = 0
          ScreenBiasPercent = 0
          TransFade = tfNone
          TransBand = 0
          UseCalcEvent = False
          TransType = ttNone
          TransPercent = 50
          TransMinCutoff = 0
          TransMaxCutoff = 100
          TransKeyColor = clBlack
          Inverse = False
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          TabOrder = 3
        end
        object ckbCabecalho: TTS_CheckBox
          Left = 245
          Top = 144
          Width = 124
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 4
          Caption = 'Imprimir Cabe'#231'alho'
          DisableEdit = False
          Height = 25
        end
      end
      object tsVisualizarGrid: TTS_TabSheet
        Caption = 'tsVisualizarGrid'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object DBEtiquetas: TTS_QDBGrid
          Left = 0
          Top = 0
          Width = 486
          Height = 307
          Bands = <
            item
              Width = 102
            end>
          DefaultLayout = False
          HeaderPanelMaxRowCount = 20
          HeaderPanelRowCount = 1
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          PopupMenu = ppmPadrao
          ShowHint = False
          TabOrder = 0
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_EtiquetasDS
          Filter.Criteria = {00000000}
          FixedBandLineWidth = 1
          GridLineColor = clWhite
          HeaderColor = 15461355
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          IndentDesc = 0
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoHeaderPanelSizing, edgoRowSizing]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          PreviewLines = 0
          ShowGrid = False
          ShowHeader = False
          ShowPreviewGrid = False
          SimpleCustomizeBox = True
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
          GroupNodeFont.Style = [fsBold]
          TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterFont.Color = clWindowText
          TS_SummaryFooterFont.Height = -11
          TS_SummaryFooterFont.Name = 'Tahoma'
          TS_SummaryFooterFont.Style = [fsBold]
          TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterSelFont.Color = clWindowText
          TS_SummaryFooterSelFont.Height = -11
          TS_SummaryFooterSelFont.Name = 'Tahoma'
          TS_SummaryFooterSelFont.Style = [fsBold]
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        end
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 503
    Width = 107
    Height = 320
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 286
      Width = 105
    end
    inherited btComando2: TTS_SpeedButton
      Width = 105
    end
    inherited btComando1: TTS_SpeedButton
      Width = 105
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 105
      Caption = 'Voltar'
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
      RepeatedClick = True
    end
    inherited btGravar: TTS_SpeedButton
      Width = 105
      Caption = 'Avan'#231'ar'
      Font.Style = [fsBold]
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
      ParentFont = False
      RepeatedClick = True
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 105
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 610
    Gradient.ColorStart = 11388903
    inherited lbCaption: TdxfLabel
      Width = 308
      Caption = 'Assistente de Cartas e Etiquetas'
      Effect3D.ShadowedColor = 11388903
    end
    inherited lbEstadoForm: TTS_Label
      Width = 134
      Caption = 'Imprime Cartas e Etiquetas.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 574
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 526
    Top = 294
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 529
    Top = 177
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 528
    Top = 258
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msCompany
    BarEndColor = 11388903
    CaptionShadow = 11388903
    FormColor = 14608375
    Modulo = 'Company'
    Caption = 'Assistente de Cartas e Etiquetas'
    OnRefresh = FormsComponentRefresh
    Left = 154
    Top = 266
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 575
    Top = 275
  end
  inherited FormStorage: TFormStorage
    Left = 528
    Top = 224
  end
  object C_Layout: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 349
  end
  object C_LayoutDS: TDataSource
    DataSet = C_Layout
    Left = 408
    Top = 349
  end
  object C_Etiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Etiquetas'
    Left = 160
    Top = 349
  end
  object P_Etiquetas: TDataSetProvider
    DataSet = Q_Etiquetas
    Constraints = True
    Options = [poAllowCommandText]
    Left = 344
    Top = 350
  end
  object Q_Etiquetas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 344
    Top = 333
  end
  object C_EtiquetasDS: TDataSource
    DataSet = C_Etiquetas
    Left = 473
    Top = 349
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 264
    Top = 269
  end
  object dxPrinter: TdxComponentPrinter
    CurrentLink = LinkEtiquetas
    PreviewOptions.EnableOptions = [peoPageBackground, peoPageSetup, peoPreferences, peoPrint, peoReportDesign]
    Version = 0
    OnPageSetup = dxPrinterPageSetup
    Left = 472
    Top = 277
    object LinkEtiquetas: TdxDBGridReportLink
      Active = True
      Caption = 'LinkEtiquetas'
      Component = DBEtiquetas
      DateTime = 37487.4921126042
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 2681
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Times New Roman'
      BandFont.Style = []
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Times New Roman'
      FooterFont.Style = []
      GridLineColor = clWhite
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeFont.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      HorzDelimitByBands = True
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Times New Roman'
      OddFont.Style = []
      Options = [tlpoRowFooters, tlpoPreviewGrid, tlpoGrid, tlpoFlatCheckMarks, tlpoSoft3D, tlpoRowFooterGrid]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Times New Roman'
      PreviewFont.Style = []
      RowFooterFont.Charset = DEFAULT_CHARSET
      RowFooterFont.Color = clWindowText
      RowFooterFont.Height = -11
      RowFooterFont.Name = 'Times New Roman'
      RowFooterFont.Style = []
      ScaleFonts = False
      SupportedCustomDraw = True
      OnCustomDrawCell = LinkEtiquetasCustomDrawCell
      BuiltInReportLink = True
    end
  end
  object Q_PayRoll: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from PayRolls'
      'Where Status <> '#39'C'#39
      'Order by payroll desc')
    Left = 216
    Top = 301
  end
  object C_PayRoll: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PayRoll'
    Left = 216
    Top = 349
    object C_PayRollPAYROLL: TIntegerField
      FieldName = 'PAYROLL'
      Required = True
    end
    object C_PayRollDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object P_PayRoll: TDataSetProvider
    DataSet = Q_PayRoll
    Constraints = True
    Left = 408
    Top = 301
  end
  object C_PayRollDS: TDataSource
    DataSet = C_PayRoll
    Left = 578
    Top = 309
  end
  object FormTransitions: TFormTransitions
    DestroyTransitions = False
    ShowTransition = Abertura
    Left = 568
    Top = 179
  end
  object TransitionList: TTransitionList
    Left = 568
    Top = 227
    object Abertura: TCircleTransition
      OnAfterTransition = AberturaAfterTransition
      Milliseconds = 500
      SmoothingLevel = 4
    end
    object Avancar: TSlideTransition
      Milliseconds = 300
      Direction = tedLeft
    end
    object Voltar: TSlideTransition
      Milliseconds = 500
      Direction = tedLeft
    end
    object Alfa: TBlendTransition
      OnAfterTransition = AlfaAfterTransition
      Milliseconds = 800
    end
    object Texto: TInterlacedTransition
      Milliseconds = 1000
      SmoothingLevel = 3
      SubStyle = 9
    end
  end
  object C_UFs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_UFs'
    Left = 32
    Top = 339
  end
  object P_UFs: TDataSetProvider
    DataSet = Q_UFs
    Constraints = True
    Left = 96
    Top = 403
  end
  object Q_UFs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UFS'
      'order by uf')
    Left = 160
    Top = 299
  end
  object C_UFsDS: TDataSource
    DataSet = C_UFs
    Left = 160
    Top = 395
  end
  object ppmCamposChave: TTS_PopupMenu
    AutoHotkeys = maManual
    Left = 488
    Top = 48
    object NomedaEmpresa1: TMenuItem
      Caption = '{Nome}'
      OnClick = EnderecodaEmpresa1Click
    end
    object EnderecodaEmpresa1: TMenuItem
      Caption = '{Endereco}'
      OnClick = EnderecodaEmpresa1Click
    end
    object CidadeEmpresa1: TMenuItem
      Caption = '{Cidade}'
      OnClick = EnderecodaEmpresa1Click
    end
    object EstadoEmpresa1: TMenuItem
      Caption = '{Estado}'
      OnClick = EnderecodaEmpresa1Click
    end
    object Fone1Empresa1: TMenuItem
      Caption = '{Fone1}'
      OnClick = EnderecodaEmpresa1Click
    end
    object Fone2Empresa1: TMenuItem
      Caption = '{Fone2}'
      OnClick = EnderecodaEmpresa1Click
    end
    object FaxEmpresa1: TMenuItem
      Caption = '{Fax}'
      OnClick = EnderecodaEmpresa1Click
    end
    object EmailEmpresa1: TMenuItem
      Caption = '{Email}'
      OnClick = EnderecodaEmpresa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DataAtual1: TMenuItem
      Caption = '{DataAtual}'
      OnClick = EnderecodaEmpresa1Click
    end
    object DataExtenso1: TMenuItem
      Caption = '{DataExtenso}'
      OnClick = EnderecodaEmpresa1Click
    end
    object Hora1: TMenuItem
      Caption = '{Hora}'
      OnClick = EnderecodaEmpresa1Click
    end
    object Usuario1: TMenuItem
      Caption = '{Usuario}'
      OnClick = EnderecodaEmpresa1Click
    end
  end
  object Q_TextosDS: TDataSource
    DataSet = Q_Textos
    Left = 65535
    Top = 347
  end
  object Q_Textos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select texto, titulo, arquivo from textos')
    Filtered = True
    OnFilterRecord = Q_TextosFilterRecord
    Left = 96
    Top = 299
    object Q_TextosTEXTO: TIntegerField
      FieldName = 'TEXTO'
      Origin = 'TEXTOS.TEXTO'
      Required = True
    end
    object Q_TextosTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = 'TEXTOS.TITULO'
      Size = 50
    end
    object Q_TextosARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEXTOS.ARQUIVO'
      Size = 50
    end
  end
  object Q_GruposClienteDS: TDataSource
    DataSet = Q_GruposCliente
    Left = 65535
    Top = 395
  end
  object Q_GruposCliente: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select grupocliente, descricao from gruposcliente')
    Left = 96
    Top = 347
    object Q_GruposClienteGRUPOCLIENTE: TIntegerField
      FieldName = 'GRUPOCLIENTE'
      Origin = 'GRUPOSCLIENTE.GRUPOCLIENTE'
      Required = True
    end
    object Q_GruposClienteDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'GRUPOSCLIENTE.DESCRICAO'
      Size = 30
    end
  end
  object dbCarta: TppDBPipeline
    DataSource = Q_SQLDS
    OpenDataSource = False
    UserName = 'dbCarta'
    Left = 152
    Top = 236
  end
  object rbCarta: TppReport
    AutoStop = False
    DataPipeline = dbCarta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    BeforePrint = rbCartaBeforePrint
    DeviceType = 'Screen'
    Left = 216
    Top = 242
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbCarta'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Pen.Style = psClear
        mmHeight = 28840
        mmLeft = 529
        mmTop = 529
        mmWidth = 196321
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 195263
        mmTop = 1323
        mmWidth = 1852
        BandType = 4
      end
      object rtTexto: TppRichText
        OnPrint = rtTextoPrint
        UserName = 'rtTexto'
        Caption = 'rtTexto'
        Stretch = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 794
        mmWidth = 193411
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ppLabel1'
      BreakType = btCustomField
      NewPage = True
      ResetPageNo = True
      ReprintOnSubsequentPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object Q_SQLDS: TDataSource
    DataSet = Q_SQL
    Left = 472
    Top = 304
  end
  object ppmCampos: TTS_PopupMenu
    Left = 440
    Top = 48
  end
  object C_TabelaPrecoDS: TDataSource
    DataSet = Q_TabelaPreco
    Left = 368
    Top = 328
  end
  object Q_TabelaPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tabelapreco, descricao from tabelaspreco'
      'where desativado = '#39'N'#39
      'order by tabelapreco')
    Left = 344
    Top = 296
    object Q_TabelaPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'TABELASPRECO.TABELAPRECO'
      Required = True
    end
    object Q_TabelaPrecoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TABELASPRECO.DESCRICAO'
      Size = 25
    end
  end
end

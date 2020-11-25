inherited DlgConciliacaoBancaria: TDlgConciliacaoBancaria
  Left = 177
  Top = 46
  Width = 699
  Height = 456
  HelpContext = 0
  Caption = 'Financeiro'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 573
    Height = 386
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 352
    end
    inherited btComando2: TTS_SpeedButton
      Top = 73
      Hint = #218'ltima concilia'#231#227'o realizada'
      Caption = #218'ltimo Relat'#243'rio'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000007777777000000070FFFFFFF07777700000000070F7
        7777F07777000000000070F77777F07770007000000070F77780008700077000
        000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
        08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
        EFEFFF0770777000000077780000000708777000000077770077777807777000
        0000777770077700777770000000777777800087777770000000777777777777
        777770000000}
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Top = 139
    end
    inherited btLimpar: TTS_SpeedButton
      Hint = 'Ajuste Autom'#225'tico de Diferen'#231'a'
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Ajustar'
      Glyph.Data = {
        0E030000424D0E030000000000003600000028000000110000000E0000000100
        180000000000D8020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF000000000000000000000000000000000000000000000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBF7F7F7FBFBFBF00FFFF
        BFBFBFBFBFBF0000007F7F7F7F7F7F7F7F7F000000000000BFBFBFBFBFBFBFBF
        BF00BFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFF00FFFFFFFFFF000000
        00FFFFBFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBF7F7F7F00FFFFFFFFFFFFFFFFFFFFFF00FFFF000000FFFFFF00FFFFBFBFBF
        7F7F7F000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFFFFFF00
        FFFFFFFFFFFFFFFF000000FFFFFF0000000000007F7F7F000000BFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFF00FFFF7F7F7F00
        0000FFFFFF00FFFFBFBFBF000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF00000000000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFBFBFBF00
        0000BFBFBF00BFBFBF000000000000BFBFBF0000007F7F007F7F00000000FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFF00FFFFBFBFBF000000BFBFBF000000007F7F00
        7F7F000000000000000000007F7F00000000FFFFFFFFFFFFFFFFFF00FFFFFFFF
        FFFFFFFFBFBFBF000000BFBFBF00000000FFFF007F7F00000000FFFF00000000
        7F7F00000000000000000000FFFFFFFFFFFFFFFFFF00FFFFBFBFBF000000BFBF
        BF00000000FFFF00FFFF00000000000000FFFF00FFFF00000000FFFFFFFFFFFF
        FFFFFF00FFFFFFFFFFFFFFFFBFBFBF000000BFBFBF00BFBFBF000000000000BF
        BFBFBFBFBF000000000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF
        BFBFBF000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFF00
        FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFBFBFBF000000BFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F000000BFBFBF00}
      NumGlyphs = 1
    end
    inherited btGravar: TTS_SpeedButton
      Hint = 'Concilia'#231#227'o da conta banc'#225'ria selecionada'
      Caption = 'Conciliar'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
        33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
        0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
        8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
        0083333333338F38888888F3333333330F000F000083333333338F88838888F3
        333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
        33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
        0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
        88833388F333333333333333330083333333333333333388FF33333333333333
        3330033333333333333333388F33333333333333333303333333333333333333
        8333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
    end
    object btContabilidade: TTS_SpeedButton
      Left = 1
      Top = 106
      Width = 116
      Hint = 'Verificar journal'
      Caption = 'Contabilidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        9E100000424D9E10000000000000360000002800000038000000190000000100
        18000000000068100000C40E0000C40E000000000000000000008000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF80808080808080808080808080
        8080808080808080808080808080808080808080808080BFBFBF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF0000008000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFC0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808080
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FFC0C0C08000FF8000FF8000FF0000000000000000000000
        000000000000000000000000008000FF8000FF8000FF8000FF8000FFBFBFBF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFC0C0C0
        8000FF8000FF8000FF8080808080808080808080808080808080808080808080
        808000FF8000FF8000FF8000FF8000FFBFBFBF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF000000C0C0C0C0C0C08000FF8000FF
        8000FF00FFFF00FFFF00FFFF00FFFF0000008000FF8000FF8000FF8000FFBFBF
        BF000000BFBFBFBFBFBFBFBFBF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF808080C0C0C0C0C0C08000FF8000FF8000FFC0C0C0C0C0C0C0C0C0
        C0C0C08080808000FF8000FF8000FF8000FFBFBFBF808080BFBFBFBFBFBFBFBF
        BF8000FF8000FF8000FF8000FF8000FF8000FF00000000000000000000000000
        0000C0C0C08000FF8000FF0000000000000000000000000000008000FF8000FF
        8000FF000000000000000000000000000000BFBFBFBFBFBF8000FF8000FF8000
        FF8000FF8000FF808080808080808080808080808080C0C0C08000FF8000FF80
        80808080808080808080808080808000FF8000FF8000FF808080808080808080
        808080808080BFBFBFBFBFBF8000FF8000FF8000FF8000FF00FFFF00FFFF00FF
        FF00FFFF00FFFF000000000000C0C0C08000FF8000FF00FFFF000000BFBFBF80
        00FF8000FF8000FF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000BFBFBF
        BFBFBF8000FF8000FF8000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080808080
        80C0C0C08000FF8000FFC0C0C0808080BFBFBF8000FF8000FF8000FFC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0808080808080BFBFBFBFBFBF8000FF000000000000
        0000000000000000000000000000000000000000000000000000008000FF00FF
        FF000000BFBFBF8000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000808080808080808080808080808080808080
        8080808080808080808080808080808000FFC0C0C0808080BFBFBF8000FF8080
        8080808080808080808080808080808080808080808080808080808080808080
        80808000FF000000BFBFBFBFBFBF8000FF0000008000FF8000FF8000FF000000
        8000FF8000FF00FFFF000000BFBFBF8000FF8000FF000000BFBFBFBFBFBF8000
        FF0000008000FF8000FF8000FF0000008000FF8000FF8000FF808080BFBFBFBF
        BFBF8000FF8080808000FF8000FF8000FF8080808000FF8000FFC0C0C0808080
        BFBFBF8000FF8000FF808080BFBFBFBFBFBF8000FF8080808000FF8000FF8000
        FF8080808000FF8000FF8000FF8000FF000000BFBFBF8000FF0000008000FF80
        00FF000000BFBFBF8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF
        000000BFBFBF8000FF0000008000FF8000FF000000BFBFBF8000FF8000FF8000
        FF8000FF808080BFBFBF8000FF8080808000FF8000FF808080BFBFBF8000FF80
        00FFC0C0C0808080BFBFBF8000FF8000FF8000FF808080BFBFBF8000FF808080
        8000FF8000FF808080BFBFBF8000FF8000FF8000FF8000FF000000BFBFBF8000
        FF0000008000FF8000FF000000BFBFBF8000FF8000FF00FFFF000000BFBFBF80
        00FF8000FF8000FF000000BFBFBF8000FF0000008000FF8000FF000000BFBFBF
        8000FF8000FF8000FF8000FF808080BFBFBF8000FF8080808000FF8000FF8080
        80BFBFBF8000FF8000FFC0C0C0808080BFBFBF8000FF8000FF8000FF808080BF
        BFBF8000FF8080808000FF8000FF808080BFBFBF8000FF8000FF8000FF8000FF
        000000BFBFBFBFBFBF0000008000FF8000FF0000008000FF8000FF8000FF00FF
        FF000000BFBFBF8000FF8000FF8000FF000000BFBFBFBFBFBF0000008000FF80
        00FF0000008000FF8000FF8000FF8000FF8000FF808080BFBFBFBFBFBF808080
        8000FF8000FF8080808000FF8000FF8000FFC0C0C0808080BFBFBF8000FF8000
        FF8000FF808080BFBFBFBFBFBF8080808000FF8000FF8080808000FF8000FF80
        00FF8000FF8000FF8000FF000000BFBFBF0000008000FF000000BFBFBF8000FF
        8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF8000FF000000BFBF
        BF0000008000FF000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF80
        8080BFBFBF8080808000FF808080BFBFBF8000FF8000FF8000FFC0C0C0808080
        BFBFBF8000FF8000FF8000FF8000FF808080BFBFBF8080808000FF808080BFBF
        BF8000FF8000FF8000FF8000FF8000FF8000FF000000BFBFBF0000008000FF00
        0000BFBFBF8000FF8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF
        8000FF000000BFBFBF0000008000FF000000BFBFBF8000FF8000FF8000FF8000
        FF8000FF8000FF808080BFBFBF8080808000FF808080BFBFBF8000FF8000FF80
        00FFC0C0C0808080BFBFBF8000FF8000FF8000FF8000FF808080BFBFBF808080
        8000FF808080BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF000000BFBF
        BF000000BFBFBF0000008000FF8000FF8000FF8000FF00FFFF000000BFBFBF80
        00FF8000FF8000FF8000FF000000BFBFBF000000BFBFBF0000008000FF8000FF
        8000FF8000FF8000FF8000FF8000FF808080BFBFBF808080BFBFBF8080808000
        FF8000FF8000FF8000FFC0C0C0808080BFBFBF8000FF8000FF8000FF8000FF80
        8080BFBFBF808080BFBFBF8080808000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF00000000FFFF000000BFBFBF8000FF8000FF8000FF8000FF00FF
        FF000000BFBFBF8000FF8000FF8000FF8000FF8000FF00000000FFFF000000BF
        BFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF808080C0C0C0
        808080BFBFBF8000FF8000FF8000FF8000FFC0C0C0808080BFBFBF8000FF8000
        FF8000FF8000FF8000FF808080C0C0C0808080BFBFBF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF00000000FFFF000000BFBFBF8000FF8000FF
        8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF8000FF8000FF0000
        0000FFFF000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF808080C0C0C0808080BFBFBF8000FF8000FF8000FF8000FFC0C0C0808080
        BFBFBF8000FF8000FF8000FF8000FF8000FF808080C0C0C0808080BFBFBF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF00000000FFFF00000080
        00FF8000FF8000FF8000FF8000FF00FFFF000000BFBFBF8000FF8000FF8000FF
        8000FF8000FF00000000FFFF0000008000FF8000FF8000FF8000FF8000FF8000
        FF8000FF8000FF8000FF808080C0C0C08080808000FF8000FF8000FF8000FF80
        00FFC0C0C0808080BFBFBF8000FF8000FF8000FF8000FF8000FF808080C0C0C0
        8080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF0000008000FF8000FF8000FF8000FF8000FF8000FF00FFFF000000BFBFBFBF
        BFBF8000FF8000FF8000FF8000FF8000FF0000008000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8080808000FF8000FF8000
        FF8000FF8000FF8000FFC0C0C0808080BFBFBFBFBFBF8000FF8000FF8000FF80
        00FF8000FF8080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FFC0C0C0000000C0C0C0C0C0C0BFBFBFBFBFBFBFBFBF00FFFF0000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBF
        BFBF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FFC0C0C0808080
        C0C0C0C0C0C0BFBFBFBFBFBFBFBFBFC0C0C0808080808080808080BFBFBFBFBF
        BFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000BFBFBF8000FF8000FF8000FF8000FF8000FF8000FF80
        8080808080808080808080808080808080808080808080808080808080808080
        808080808080808080808080808080808080808080808080808080808080BFBF
        BF8000FF8000FF8000FF8000FF8000FF8000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF0000008000FF8000FF8000FF8000FF8000
        FF8000FF8000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C08080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000
        FF0000008000FF8000FF8000FF8000FF8000FF00FFFF00000000000000000080
        00FF8000FF8000FF8000FF8000FF8000FF0000008000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8080808000FF8000FF8000
        FF8000FF8000FFC0C0C08080808080808080808000FF8000FF8000FF8000FF80
        00FF8000FF8080808000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF00FF
        FF0000008000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF
        8000FF8000FF8000FF8000FF8000FF8000FFC0C0C08080808000FF8000FF8000
        FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
        00FF}
      Margin = 8
      NumGlyphs = 2
      ParentFont = False
      OnClick = btContabilidadeClick
      RepeatedClick = False
      Border = True
      Align = alTop
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 691
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Top = 25
      Width = 204
      Caption = 'Conferir e Corrigir com o extrato banc'#225'rio.'
    end
    inherited lbUpperHint: TTS_Label
      Left = 683
    end
    inherited lbCaption: TdxfLabel
      Width = 197
      AutoSize = True
      Caption = 'Concilia'#231#227'o Banc'#225'ria'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 573
    Height = 386
    Color = 15724519
    object pnCab: TTS_Panel
      Left = 1
      Top = 1
      Width = 571
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      Color = 15724519
      TabOrder = 0
      DesignSize = (
        571
        64)
      object TS_Shape2: TTS_Shape
        Left = 383
        Top = 6
        Width = 189
        Height = 58
        Brush.Color = clGray
        Pen.Color = 14078909
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Shape1: TTS_Shape
        Left = 381
        Top = 3
        Width = 188
        Height = 58
        Pen.Color = 14078909
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label1: TTS_Label
        Left = 6
        Top = 6
        Width = 109
        Caption = 'Conta para Conciliar:'
        FocusControl = cmbConta
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 2
        Top = 45
        Width = 113
        Caption = 'Saldo '#218'lt. Concilia'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 387
        Top = 7
        Width = 91
        Height = 20
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Saldo do Banco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label9: TTS_Label
        Left = 392
        Top = 25
        Width = 87
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Saldo Calculado:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = 392
        Top = 43
        Width = 87
        Height = 17
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Diferen'#231'a:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 9
        Top = 26
        Width = 106
        Caption = 'Data Concilia'#231#227'o:'
        FocusControl = dtData
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbSaldoConciliado: TStaticText
        Left = 480
        Top = 24
        Width = 71
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 3
      end
      object lbDiferenca: TStaticText
        Left = 480
        Top = 42
        Width = 71
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0,00'
        TabOrder = 4
      end
      object lbUltimaConciliacao: TStaticText
        Left = 119
        Top = 44
        Width = 258
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dtData: TTS_DateTimePicker
        Left = 118
        Top = 24
        Width = 91
        Style.BorderColor = 14078909
        TabOrder = 2
        AutoSize = False
        StyleController = DMProjeto.esFinanceiro
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
        OnDateChange = dtDataDateChange
        Height = 19
        StoredValues = 4
      end
      object edSaldoBanco: TTS_CalcEdit
        Left = 479
        Top = 4
        Width = 86
        Style.BorderColor = 14078909
        TabOrder = 1
        StyleController = DMProjeto.esFinanceiro
        Text = '0'
        OnChange = edSaldoBancoChange
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
        ButtonStyle = bsExtraFlat
        DisplayFormat = '###,###,##0.00'
        Height = 19
        StoredValues = 1
      end
      object cmbConta: TTS_PopupEdit
        Left = 118
        Top = 5
        Width = 259
        TabOrder = 0
        StyleController = DMProjeto.esFinanceiro
        OnChange = cmbContaChange
        PopupFormBorderStyle = pbsSimple
        OnInitPopup = cmbContaInitPopup
        LookupSource = DMFinanceiro.C_ContasBcDS
        LookupKeyValue = 0
        Height = 19
      end
    end
    object pnRecPag: TTS_Panel
      Left = 1
      Top = 65
      Width = 571
      Height = 320
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnRecebimentos: TTS_Panel
        Left = 0
        Top = 0
        Width = 571
        Height = 140
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Color = 15190957
        TabOrder = 0
        DesignSize = (
          571
          140)
        object TS_Label4: TTS_Label
          Left = 4
          Top = 1
          Width = 333
          Alignment = taLeftJustify
          Caption = 'Selecione os Dep'#243'sitos e Cr'#233'ditos que entraram na conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbTotalRecebimentos: TTS_Label
          Left = 480
          Top = 2
          Width = 89
          Anchors = [akTop, akRight]
          FormatoTabela = False
          LinkToResult = 0
        end
        object DBDepositos: TTS_QDBGrid
          Left = 0
          Top = 16
          Width = 571
          Height = 124
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ID'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'Valor'
                  SummaryFormat = 'Valor;###,###,##0.00'
                  SummaryType = cstSum
                end>
              Name = 'Default'
            end>
          SummarySeparator = ', '
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppmGridDeposito
          TabOrder = 0
          OnDblClick = DBDepositosDblClick
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_DepositosDS
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
          HideSelectionColor = 16247774
          HideSelectionTextColor = clBlack
          HighlightColor = 16247774
          HighlightTextColor = clBlack
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          TS_SummaryFooterFont.Style = [fsBold]
          TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
          TS_SummaryFooterSelFont.Color = clWindowText
          TS_SummaryFooterSelFont.Height = -11
          TS_SummaryFooterSelFont.Name = 'Tahoma'
          TS_SummaryFooterSelFont.Style = [fsBold]
          TS_HabilitarTotalGeral = svNone
          TS_ShowSelectionColumn = True
          TS_LikeString = False
          TS_SelectionColor = 12054783
          TS_SelectionFont.Charset = DEFAULT_CHARSET
          TS_SelectionFont.Color = clWindowText
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_OnAfterSelection = DBChequesTS_OnAfterSelection
          TS_SelectedColumn = '_icSelecionado'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFields.Strings = (
            'Valor;Sum')
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object DBDepositosDATA: TdxDBGridDateColumn
            Caption = 'Data'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA'
          end
          object DBDepositosNOME: TdxDBGridMaskColumn
            Caption = 'Nome'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 183
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
          end
          object DBDepositosNUMCHEQUE: TdxDBGridMaskColumn
            Caption = '# Cheque'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUMCHEQUE'
          end
          object DBDepositosHISTORICO: TdxDBGridMaskColumn
            Caption = 'Memo'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HISTORICO'
          end
          object DBDepositosID: TdxDBGridMaskColumn
            Visible = False
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ID'
          end
          object DBDepositosVALOR: TdxDBGridMaskColumn
            Caption = 'Valor'
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
            SummaryFooterType = cstSum
            SummaryFooterFormat = '###,###,##0.00'
          end
          object DBDepositosTIPOOPERACAO: TdxDBGridMaskColumn
            Visible = False
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPOOPERACAO'
          end
          object DBDepositosIDDOC: TdxDBGridMaskColumn
            Visible = False
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IDDOC'
          end
          object DBDepositosIDGERADOR: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'IDGERADOR'
          end
          object DBDepositosTIPO: TdxDBGridColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO'
          end
        end
      end
      object RxSplitter1: TRxSplitter
        Left = 0
        Top = 140
        Width = 571
        Height = 3
        ControlFirst = pnRecebimentos
        ControlSecond = pnInferior
        Align = alTop
      end
      object pnInferior: TTS_Panel
        Left = 0
        Top = 143
        Width = 571
        Height = 177
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnInferior'
        TabOrder = 2
        object pnPagamentos: TTS_Panel
          Left = 0
          Top = 0
          Width = 571
          Height = 106
          Align = alClient
          BevelOuter = bvNone
          Color = 12170983
          TabOrder = 0
          DesignSize = (
            571
            106)
          object TS_Label5: TTS_Label
            Left = 4
            Top = 0
            Width = 329
            Alignment = taLeftJustify
            Caption = 'Selecione os Pagamentos e D'#233'bitos que entraram na conta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbTotalPagamentos: TTS_Label
            Left = 472
            Top = 1
            Width = 97
            Anchors = [akTop, akRight]
            FormatoTabela = False
            LinkToResult = 0
          end
          object DBPagamentos: TTS_QDBGrid
            Left = 0
            Top = 15
            Width = 571
            Height = 91
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'ID'
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryField = 'Valor'
                    SummaryFormat = 'Valor;###,###,##0.00'
                    SummaryType = cstSum
                  end>
                Name = 'Default'
              end>
            SummarySeparator = ', '
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmGridPagamento
            TabOrder = 0
            OnDblClick = DBPagamentosDblClick
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = C_PagamentosDS
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
            HideSelectionColor = 15196913
            HideSelectionTextColor = clBlack
            HighlightColor = 15196913
            HighlightTextColor = clBlack
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            Anchors = [akLeft, akTop, akRight, akBottom]
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
            TS_SummaryFooterFont.Style = [fsBold]
            TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterSelFont.Color = clWindowText
            TS_SummaryFooterSelFont.Height = -11
            TS_SummaryFooterSelFont.Name = 'Tahoma'
            TS_SummaryFooterSelFont.Style = [fsBold]
            TS_HabilitarTotalGeral = svNone
            TS_ShowSelectionColumn = True
            TS_LikeString = False
            TS_SelectionColor = 12054783
            TS_SelectionFont.Charset = DEFAULT_CHARSET
            TS_SelectionFont.Color = clWindowText
            TS_SelectionFont.Height = -11
            TS_SelectionFont.Name = 'Tahoma'
            TS_SelectionFont.Style = []
            TS_OnAfterSelection = DBChequesTS_OnAfterSelection
            TS_SelectedColumn = '_icSelecionado'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFields.Strings = (
              'Valor;Sum')
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object DBPagamentosDATA: TdxDBGridDateColumn
              Caption = 'Data'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 69
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DATA'
            end
            object DBPagamentosNOME: TdxDBGridMaskColumn
              Caption = 'Favorecido'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 183
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOME'
            end
            object DBPagamentosNUMCHEQUE: TdxDBGridMaskColumn
              Caption = '# Cheque'
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NUMCHEQUE'
            end
            object DBPagamentosHISTORICO: TdxDBGridMaskColumn
              Caption = 'Memo'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 117
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HISTORICO'
            end
            object DBPagamentosID: TdxDBGridMaskColumn
              Visible = False
              Width = 26
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID'
            end
            object DBPagamentosVALOR: TdxDBGridMaskColumn
              Caption = 'Valor'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALOR'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '###,###,##0.00'
            end
            object DBPagamentosTIPOOPERACAO: TdxDBGridMaskColumn
              Visible = False
              Width = 34
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIPOOPERACAO'
            end
            object DBPagamentosIDDOC: TdxDBGridMaskColumn
              Visible = False
              Width = 26
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDDOC'
            end
            object DBPagamentosIDGERADOR: TdxDBGridMaskColumn
              Visible = False
              Width = 27
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDGERADOR'
            end
            object DBPagamentosTIPO: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIPO'
            end
          end
        end
        object pnAjuste: TTS_Panel
          Left = 0
          Top = 109
          Width = 571
          Height = 68
          Align = alBottom
          BevelOuter = bvNone
          Color = 15724519
          TabOrder = 2
          DesignSize = (
            571
            68)
          object TS_Label3: TTS_Label
            Left = 4
            Top = 0
            Width = 113
            Alignment = taLeftJustify
            Caption = 'Ajuste de Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object DBAjustes: TTS_QDBGrid
            Left = 2
            Top = 14
            Width = 571
            Height = 54
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'Sequencial'
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    SummaryField = 'Valor'
                    SummaryFormat = 'Valor;###,###,##0.00'
                    SummaryType = cstSum
                  end>
                Name = 'Default'
              end>
            SummarySeparator = ', '
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmAjustes
            TabOrder = 0
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = C_AjustesDS
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
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            Anchors = [akLeft, akTop, akRight, akBottom]
            TS_PermitirQuantidade = False
            TS_DescriptionCanChange = False
            TS_GridMenuOptions = []
            TS_AppendOnEnter = True
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
            TS_SummaryFooterFont.Style = [fsBold]
            TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterSelFont.Color = clWindowText
            TS_SummaryFooterSelFont.Height = -11
            TS_SummaryFooterSelFont.Name = 'Tahoma'
            TS_SummaryFooterSelFont.Style = [fsBold]
            TS_HabilitarTotalGeral = svNone
            TS_LikeString = False
            TS_SelectionColor = 12054783
            TS_SelectionFont.Charset = DEFAULT_CHARSET
            TS_SelectionFont.Color = clWindowText
            TS_SelectionFont.Height = -11
            TS_SelectionFont.Name = 'Tahoma'
            TS_SelectionFont.Style = []
            TS_SelectedColumn = 'Data'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFields.Strings = (
              'Valor;Sum')
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object DBAjustesData: TdxDBGridDateColumn
              HeaderAlignment = taCenter
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Data'
            end
            object DBAjustesTipo: TdxDBGridPickColumn
              HeaderAlignment = taCenter
              Width = 78
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Tipo'
              Items.Strings = (
                'Creditar'
                'Debitar')
              ImmediateDropDown = False
            end
            object DBAjustesDescConta: TdxDBGridPopupColumn
              Caption = 'Conta'
              HeaderAlignment = taCenter
              Width = 171
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DescConta'
              PopupFormBorderStyle = pbsSimple
              OnInitPopup = DBAjustesDescContaInitPopup
            end
            object DBAjustesMemo: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 124
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Memo'
            end
            object DBAjustesValor: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Valor'
              SummaryFooterType = cstSum
              SummaryFooterFormat = '###,###,##0.00'
            end
            object DBAjustesConta: TdxDBGridMaskColumn
              Visible = False
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Conta'
            end
            object DBAjustesSequencial: TdxDBGridColumn
              DisableCustomizing = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sequencial'
            end
          end
        end
        object RxSplitter2: TRxSplitter
          Left = 0
          Top = 106
          Width = 571
          Height = 3
          ControlFirst = pnPagamentos
          ControlSecond = pnAjuste
          Align = alBottom
        end
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 574
    Top = 338
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 588
    Top = 391
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 536
    Top = 314
    object Conciliar1: TMenuItem [0]
      Caption = 'Conciliar'
      Default = True
      ShortCut = 116
      OnClick = btGravarClick
    end
    object Ajustar1: TMenuItem [1]
      Caption = 'Ajustar'
      ShortCut = 119
      OnClick = btLimparClick
    end
    object N2: TMenuItem [2]
      Caption = '-'
    end
    object ltimoRelatrio1: TMenuItem [3]
      Caption = #218'ltimo Relat'#243'rio'
      OnClick = btComando2Click
    end
    object N1: TMenuItem [4]
      Caption = '-'
    end
  end
  inherited FormStorage: TFormStorage
    Left = 192
    Top = 125
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Concilia'#231#227'o Banc'#225'ria'
    OnRefresh = FormsComponentRefresh
    FirstEditField = cmbConta
    Left = 136
    Top = 203
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 479
    end
  end
  object C_Depositos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Conta'
        ParamType = ptUnknown
      end>
    ProviderName = 'P_Depositos'
    Left = 67
    Top = 145
    object C_Depositos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_DepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_DepositosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_DepositosVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_DepositosNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_DepositosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_DepositosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_DepositosTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object C_DepositosIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_DepositosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 2
    end
    object C_DepositosCONTARECEBER: TIntegerField
      FieldName = 'CONTARECEBER'
    end
  end
  object P_Depositos: TDataSetProvider
    DataSet = Q_Depositos
    Constraints = True
    Left = 155
    Top = 145
  end
  object C_Pagamentos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Conta'
        ParamType = ptUnknown
      end>
    ProviderName = 'P_Pagamentos'
    Left = 67
    Top = 305
    object C_Pagamentos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_PagamentosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_PagamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_PagamentosVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_PagamentosNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_PagamentosHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_PagamentosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_PagamentosTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object C_PagamentosIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_PagamentosTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 2
    end
  end
  object P_Pagamentos: TDataSetProvider
    DataSet = Q_Pagamentos
    Constraints = True
    Left = 163
    Top = 305
  end
  object Q_Depositos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.ID, t.data, t.valor, t.numcheque, t.historico, f.nome, ' +
        't.TipoOperacao, t.IDGerador, '#39'RC'#39' as Tipo, 0 as contareceber'
      
        'from TRANSACOES t left join FAVORECIDOS f on t.favorecido = f.fa' +
        'vorecido'
      'where t.data >= :DataI and t.Data <= :DataF '
      '          and t.Conta = :Conta'
      '          and t.TipoTransacao = '#39'C'#39' '
      '          and t.Conciliado = '#39'N'#39)
    Left = 248
    Top = 126
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Conta'
        ParamType = ptUnknown
      end>
  end
  object Q_Pagamentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.ID, t.data, t.valor, t.numcheque, t.historico, f.nome, ' +
        't.tipooperacao,  t.IDGerador, '#39'PG'#39' as Tipo'
      
        'from TRANSACOES t inner join FAVORECIDOS f on t.favorecido = f.f' +
        'avorecido'
      'where t.data >= :DataI and t.Data <= :DataF'
      '          and t.Conta = :Conta'
      '          and t.TipoTransacao = '#39'D'#39' '
      '          and t.Conciliado = '#39'N'#39
      'UNION'
      
        'Select rd.IDDoc, rd.Vencimento, rd.Valor*(-1), rd.NumCheque,  r.' +
        'Historico, f.Nome,  r.TipoRetirada, r.Retirada, '#39'CP'#39' as Tipo'
      
        'From   ((Retiradas r INNER JOIN RetiradasDoc rd ON r.Retirada = ' +
        'rd.Retirada) '
      'LEFT  JOIN Favorecidos f ON f.Favorecido = rd.FavorecidoDoc) '
      
        'INNER JOIN FormasPagamento fp ON fp.FormaPagamento = rd.FormaPag' +
        'amento '
      
        'Where rd.Conta = :Conta and  rd.Status = 3 and  fp.Especie = 1 a' +
        'nd rd.Status < 70')
    Left = 231
    Top = 301
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Conta'
        ParamType = ptUnknown
      end>
  end
  object C_DepositosDS: TDataSource
    DataSet = C_Depositos
    Left = 315
    Top = 144
  end
  object C_PagamentosDS: TDataSource
    DataSet = C_Pagamentos
    Left = 315
    Top = 305
  end
  object C_Ajustes: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = C_AjustesAfterPost
    OnNewRecord = C_AjustesNewRecord
    Left = 35
    Top = 385
    object C_AjustesTipo: TStringField
      FieldName = 'Tipo'
      OnChange = C_AjustesTipoChange
    end
    object C_AjustesMemo: TStringField
      FieldName = 'Memo'
    end
    object C_AjustesValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#######0.00'
    end
    object C_AjustesConta: TIntegerField
      FieldName = 'Conta'
    end
    object C_AjustesDescConta: TStringField
      FieldKind = fkLookup
      FieldName = 'DescConta'
      LookupDataSet = DMFinanceiro.C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'Conta'
      Lookup = True
    end
    object C_AjustesData: TDateField
      FieldName = 'Data'
      EditMask = '##/##/####'
    end
    object C_AjustesSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
  end
  object C_AjustesDS: TDataSource
    DataSet = C_Ajustes
    Left = 95
    Top = 385
  end
  object AbrirRel: TppArchiveReader
    DeviceType = 'Screen'
    Left = 403
    Top = 151
    Version = '6.02'
  end
  object ppConciliacao: TppReport
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
    DeviceType = 'Screen'
    Left = 383
    Top = 207
    Version = '6.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 50800
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 15461355
        Shape = stRoundRect
        mmHeight = 6879
        mmLeft = 50536
        mmTop = 33338
        mmWidth = 92604
        BandType = 0
      end
      object RegCabecalho: TppRegion
        UserName = 'RegCabecalho'
        Pen.Style = psClear
        mmHeight = 23548
        mmLeft = 794
        mmTop = 265
        mmWidth = 194734
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio de Concilia'#231#227'o Banc'#225'ria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 57679
        mmTop = 34396
        mmWidth = 79640
        BandType = 0
      end
      object lbData: TppLabel
        UserName = 'lbData'
        Caption = 'lbData'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 46038
        mmWidth = 11642
        BandType = 0
      end
      object lbConta: TppLabel
        UserName = 'lbData1'
        Caption = 'lbData'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 90223
        mmTop = 41275
        mmWidth = 12965
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 128059
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15006458
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 15346
        mmWidth = 46567
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #218'ltima Concilia'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 3969
        mmWidth = 30427
        BandType = 4
      end
      object lbUltCon: TppLabel
        UserName = 'lbUltCon'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 35454
        mmTop = 3969
        mmWidth = 52388
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clGray
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 35190
        mmTop = 7938
        mmWidth = 52652
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Transa'#231#245'es Conciliadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 16669
        mmWidth = 41275
        BandType = 4
      end
      object regNaoConciliados: TppRegion
        UserName = 'Region3'
        Pen.Style = psClear
        ShiftRelativeTo = subAjustes
        Stretch = True
        mmHeight = 25400
        mmLeft = 1588
        mmTop = 51329
        mmWidth = 193146
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = 12900351
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 3440
          mmTop = 53975
          mmWidth = 52917
          BandType = 4
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Transa'#231#245'es n'#227'o Conciliadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 5292
          mmTop = 55298
          mmWidth = 48948
          BandType = 4
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'Recebimentos e outros cr'#233'ditos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 23548
          mmTop = 64823
          mmWidth = 56092
          BandType = 4
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Pagamentos e outros d'#233'bitos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 23548
          mmTop = 70644
          mmWidth = 56621
          BandType = 4
        end
        object lbItemsDep2: TppLabel
          UserName = 'lbItemsDep2'
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 87313
          mmTop = 64558
          mmWidth = 14817
          BandType = 4
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'item(ns)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 102924
          mmTop = 64558
          mmWidth = 14817
          BandType = 4
        end
        object lbTotalDep2: TppLabel
          UserName = 'lbTotalDep2'
          AutoSize = False
          Caption = 'lbTotalDep2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 127265
          mmTop = 64558
          mmWidth = 26194
          BandType = 4
        end
        object lbItemsPag2: TppLabel
          UserName = 'lbItemsPag2'
          AutoSize = False
          Caption = 'lbItemsPag2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 87313
          mmTop = 70644
          mmWidth = 14817
          BandType = 4
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = 'item(ns)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 102924
          mmTop = 70644
          mmWidth = 14817
          BandType = 4
        end
        object lbTotalPag2: TppLabel
          UserName = 'lbTotalPag2'
          AutoSize = False
          Caption = 'lbTotalPag2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 127265
          mmTop = 70644
          mmWidth = 26194
          BandType = 4
        end
      end
      object ppRegion6: TppRegion
        UserName = 'Region5'
        Pen.Style = psClear
        ShiftRelativeTo = regNaoConciliados
        mmHeight = 44450
        mmLeft = 2910
        mmTop = 80169
        mmWidth = 192352
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 15395562
          Shape = stRoundRect
          mmHeight = 6615
          mmLeft = 77258
          mmTop = 84402
          mmWidth = 43392
          BandType = 4
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'Resumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 89693
          mmTop = 85196
          mmWidth = 19050
          BandType = 4
        end
        object ppShape6: TppShape
          UserName = 'Shape6'
          Shape = stRoundRect
          mmHeight = 27517
          mmLeft = 52651
          mmTop = 95515
          mmWidth = 91017
          BandType = 4
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          AutoSize = False
          Caption = #218'ltima Concilia'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 57414
          mmTop = 97631
          mmWidth = 35454
          BandType = 4
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Recebimentos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 57414
          mmTop = 102129
          mmWidth = 35454
          BandType = 4
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          AutoSize = False
          Caption = 'Pagamentos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 57414
          mmTop = 106627
          mmWidth = 35454
          BandType = 4
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          AutoSize = False
          Caption = 'Saldo Conciliado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 57414
          mmTop = 116946
          mmWidth = 35454
          BandType = 4
        end
        object lbUltCon2: TppLabel
          UserName = 'lbUltCon2'
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 111654
          mmTop = 97367
          mmWidth = 27517
          BandType = 4
        end
        object lbRecebimentos: TppLabel
          UserName = 'lbRecebimentos'
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 111654
          mmTop = 101865
          mmWidth = 27517
          BandType = 4
        end
        object lbPagamentos: TppLabel
          UserName = 'lbPagamentos'
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 111654
          mmTop = 106363
          mmWidth = 27517
          BandType = 4
        end
        object lbSaldoConciliado2: TppLabel
          UserName = 'lbSaldoConciliado2'
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 111654
          mmTop = 116681
          mmWidth = 27517
          BandType = 4
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Color = clGray
          Weight = 0.75
          mmHeight = 1588
          mmLeft = 110066
          mmTop = 115888
          mmWidth = 29104
          BandType = 4
        end
        object lbAjustes: TppLabel
          UserName = 'lbPagamentos1'
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 111654
          mmTop = 111125
          mmWidth = 27517
          BandType = 4
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'Ajustes:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 57414
          mmTop = 111390
          mmWidth = 35454
          BandType = 4
        end
      end
      object subDepositos: TppSubReport
        UserName = 'subDepositos'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppdbDepositos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 26723
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppdbDepositos
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
          Left = 336
          Top = 208
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdbDepositos'
          object ppTitleBand1: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 21696
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              Brush.Color = 16771797
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 12700
              mmTop = 2910
              mmWidth = 45508
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Caption = 'Dep'#243'sitos e Cr'#233'ditos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Verdana'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 16933
              mmTop = 4233
              mmWidth = 37571
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 41275
              mmTop = 20108
              mmWidth = 57150
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 117740
              mmTop = 20108
              mmWidth = 44186
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 116152
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line101'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 99748
              mmTop = 20108
              mmWidth = 16404
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 183092
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 161661
              mmTop = 16140
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 27517
              mmTop = 16140
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = 'Nome'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 41804
              mmTop = 16140
              mmWidth = 8202
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label102'
              Caption = '# Cheque'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 100806
              mmTop = 16140
              mmWidth = 14023
              BandType = 1
            end
            object ppLblObs: TppLabel
              UserName = 'LblObs'
              Caption = 'Memo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 136525
              mmTop = 16140
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 169863
              mmTop = 16140
              mmWidth = 7144
              BandType = 1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 22225
              mmTop = 20108
              mmWidth = 17992
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 39952
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 98161
              mmTop = 16140
              mmWidth = 1588
              BandType = 1
            end
            object ppLine24: TppLine
              UserName = 'Line24'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 163248
              mmTop = 20108
              mmWidth = 19844
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'DATA'
              DataPipeline = ppdbDepositos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 21960
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'NOME'
              DataPipeline = ppdbDepositos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 41010
              mmTop = 265
              mmWidth = 57415
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              DataField = 'NUMCHEQUE'
              DataPipeline = ppdbDepositos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'HISTORICO'
              DataPipeline = ppdbDepositos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 117475
              mmTop = 265
              mmWidth = 44450
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'VALOR'
              DataPipeline = ppdbDepositos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 162984
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'VALOR'
              DataPipeline = ppdbDepositos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 162984
              mmTop = 0
              mmWidth = 20902
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'ID'
              DataPipeline = ppdbDepositos
              DisplayFormat = '##### itens'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppdbDepositos'
              mmHeight = 3704
              mmLeft = 21431
              mmTop = 0
              mmWidth = 33602
              BandType = 7
            end
          end
        end
      end
      object subPagamentos: TppSubReport
        UserName = 'subPagamentos'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = subDepositos
        TraverseAllData = False
        DataPipelineName = 'ppdbPagamentos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 35190
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppdbPagamentos
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
          Left = 400
          Top = 272
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdbPagamentos'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 23813
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              Brush.Color = 14803455
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 12700
              mmTop = 2117
              mmWidth = 45508
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              AutoSize = False
              Caption = 'Pagamentos e D'#233'bitos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Verdana'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 15610
              mmTop = 3440
              mmWidth = 41010
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 43392
              mmTop = 22225
              mmWidth = 57150
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 119856
              mmTop = 22225
              mmWidth = 44186
              BandType = 1
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 118269
              mmTop = 18521
              mmWidth = 1588
              BandType = 1
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 101865
              mmTop = 22225
              mmWidth = 16404
              BandType = 1
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 185209
              mmTop = 18521
              mmWidth = 1588
              BandType = 1
            end
            object ppLine28: TppLine
              UserName = 'Line202'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 163777
              mmTop = 18256
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 29633
              mmTop = 18256
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'Nome'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 43921
              mmTop = 18256
              mmWidth = 8202
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              Caption = '# Cheque'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 102923
              mmTop = 18256
              mmWidth = 14023
              BandType = 1
            end
            object ppLblObs2: TppLabel
              UserName = 'LblObs2'
              Caption = 'Memo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 138642
              mmTop = 18256
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 171980
              mmTop = 18256
              mmWidth = 7144
              BandType = 1
            end
            object ppLine29: TppLine
              UserName = 'Line29'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 24342
              mmTop = 22225
              mmWidth = 17992
              BandType = 1
            end
            object ppLine30: TppLine
              UserName = 'Line30'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 42069
              mmTop = 18521
              mmWidth = 1588
              BandType = 1
            end
            object ppLine31: TppLine
              UserName = 'Line31'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 100277
              mmTop = 18256
              mmWidth = 1588
              BandType = 1
            end
            object ppLine32: TppLine
              UserName = 'Line32'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 165365
              mmTop = 22225
              mmWidth = 19844
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'DATA'
              DataPipeline = ppdbPagamentos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 24077
              mmTop = 529
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'NOME'
              DataPipeline = ppdbPagamentos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 43127
              mmTop = 529
              mmWidth = 57415
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'NUMCHEQUE'
              DataPipeline = ppdbPagamentos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 101600
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'HISTORICO'
              DataPipeline = ppdbPagamentos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 119592
              mmTop = 529
              mmWidth = 44450
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'VALOR'
              DataPipeline = ppdbPagamentos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 165100
              mmTop = 529
              mmWidth = 20638
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'VALOR'
              DataPipeline = ppdbPagamentos
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 165100
              mmTop = 265
              mmWidth = 20902
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'ID'
              DataPipeline = ppdbPagamentos
              DisplayFormat = '##### itens'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppdbPagamentos'
              mmHeight = 3704
              mmLeft = 23548
              mmTop = 265
              mmWidth = 33602
              BandType = 7
            end
          end
        end
      end
      object subAjustes: TppSubReport
        UserName = 'subAjustes'
        ExpandAll = False
        NewPrintJob = False
        ShiftRelativeTo = subPagamentos
        TraverseAllData = False
        DataPipelineName = 'ppdbAjustes'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 43392
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppdbAjustes
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
          Left = 440
          Top = 312
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppdbAjustes'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 21167
            mmPrintPosition = 0
            object ppShape10: TppShape
              UserName = 'Shape10'
              Brush.Color = 15132364
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 12700
              mmTop = 2117
              mmWidth = 45508
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              AutoSize = False
              Caption = 'Ajustes de Saldo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Verdana'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 20108
              mmTop = 3440
              mmWidth = 30956
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 42863
              mmTop = 19579
              mmWidth = 22754
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Weight = 0.75
              mmHeight = 1058
              mmLeft = 119327
              mmTop = 19579
              mmWidth = 34660
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 117740
              mmTop = 15875
              mmWidth = 1588
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 67204
              mmTop = 19579
              mmWidth = 50536
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 175684
              mmTop = 15875
              mmWidth = 1588
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line201'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 153723
              mmTop = 15610
              mmWidth = 1588
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 29104
              mmTop = 15610
              mmWidth = 6615
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Tipo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 51329
              mmTop = 15610
              mmWidth = 6085
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Conta'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 85196
              mmTop = 15610
              mmWidth = 8202
              BandType = 1
            end
            object ppLblObs3: TppLabel
              UserName = 'LblObs3'
              Caption = 'Memo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 131763
              mmTop = 15610
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 162454
              mmTop = 15610
              mmWidth = 7144
              BandType = 1
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 23813
              mmTop = 19579
              mmWidth = 17992
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 41540
              mmTop = 15875
              mmWidth = 1588
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 3969
              mmLeft = 65617
              mmTop = 15875
              mmWidth = 1588
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Weight = 0.75
              mmHeight = 1588
              mmLeft = 155840
              mmTop = 19579
              mmWidth = 19844
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'Data'
              DataPipeline = ppdbAjustes
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3704
              mmLeft = 23019
              mmTop = 265
              mmWidth = 18521
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'Tipo'
              DataPipeline = ppdbAjustes
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3704
              mmLeft = 42863
              mmTop = 265
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'DescConta'
              DataPipeline = ppdbAjustes
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3704
              mmLeft = 66940
              mmTop = 265
              mmWidth = 50536
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'Memo'
              DataPipeline = ppdbAjustes
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3704
              mmLeft = 118798
              mmTop = 265
              mmWidth = 35454
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'Valor'
              DataPipeline = ppdbAjustes
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3704
              mmLeft = 155311
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              DataField = 'Valor'
              DataPipeline = ppdbAjustes
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3704
              mmLeft = 153194
              mmTop = 265
              mmWidth = 22754
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              DataField = 'Conta'
              DataPipeline = ppdbAjustes
              DisplayFormat = '##### items'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppdbAjustes'
              mmHeight = 3969
              mmLeft = 22754
              mmTop = 265
              mmWidth = 22490
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
    end
  end
  object ppdbDepositos: TppDBPipeline
    DataSource = C_DepositosDS
    OpenDataSource = False
    UserName = 'dbDepositos'
    Left = 605
    Top = 195
    object ppdbDepositosppField1: TppField
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField2: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField4: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField5: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField6: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField8: TppField
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField9: TppField
      FieldAlias = 'IDGERADOR'
      FieldName = 'IDGERADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppdbDepositosppField10: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object ppdbPagamentos: TppDBPipeline
    DataSource = C_PagamentosDS
    OpenDataSource = False
    UserName = 'dbPagamentos'
    Left = 605
    Top = 242
    object ppdbPagamentosppField1: TppField
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField2: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField4: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField5: TppField
      FieldAlias = 'NUMCHEQUE'
      FieldName = 'NUMCHEQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField6: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField8: TppField
      FieldAlias = 'TIPOOPERACAO'
      FieldName = 'TIPOOPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField9: TppField
      FieldAlias = 'IDGERADOR'
      FieldName = 'IDGERADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppdbPagamentosppField10: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object ppdbAjustes: TppDBPipeline
    DataSource = C_AjustesDS
    OpenDataSource = False
    UserName = 'dbAjustes'
    Left = 605
    Top = 289
    object ppdbAjustesppField1: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppdbAjustesppField2: TppField
      FieldAlias = 'Memo'
      FieldName = 'Memo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppdbAjustesppField3: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppdbAjustesppField4: TppField
      FieldAlias = 'Conta'
      FieldName = 'Conta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppdbAjustesppField5: TppField
      FieldAlias = 'DescConta'
      FieldName = 'DescConta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppdbAjustesppField6: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object ppmGridDeposito: TTS_PopupMenu
    Left = 481
    Top = 132
    object Conciliar2: TMenuItem
      Caption = 'Conciliar'
      Default = True
      ShortCut = 116
      OnClick = btGravarClick
    end
    object VerOperaoOriginada1: TMenuItem
      Caption = 'Ver Opera'#231#227'o Origem'
      OnClick = VerOperaoOriginada1Click
    end
  end
  object ppmAjustes: TTS_PopupMenu
    Left = 289
    Top = 384
  end
  object ppmGridPagamento: TTS_PopupMenu
    Left = 481
    Top = 196
    object MenuItem1: TMenuItem
      Caption = 'Conciliar'
      Default = True
      ShortCut = 116
      OnClick = btGravarClick
    end
    object MenuItem2: TMenuItem
      Caption = 'Ver Opera'#231#227'o Origem'
      OnClick = VerOperaoOriginada1Click
    end
  end
end

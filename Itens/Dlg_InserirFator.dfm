inherited DlgInserirFator: TDlgInserirFator
  Left = 176
  Top = 165
  Width = 492
  Height = 199
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 379
    Height = 122
    Color = 14019327
    object TS_Shape1: TTS_Shape
      Left = 4
      Top = 56
      Width = 370
      Height = 60
      Brush.Color = 13820415
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Label1: TTS_Label
      Left = 15
      Top = 7
      Width = 47
      Height = 17
      Caption = 'Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 5
      Top = 31
      Width = 57
      Caption = 'Unidade:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbItem: TTS_Label
      Left = 70
      Top = 8
      Width = 300
      Height = 17
      Alignment = taLeftJustify
      Caption = 'lbItem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbUnidade: TTS_Label
      Left = 68
      Top = 32
      Width = 302
      Alignment = taLeftJustify
      Caption = 'TS_Label3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbFator: TTS_Label
      Left = 8
      Top = 59
      Width = 361
      Height = 28
      Alignment = taCenter
      Caption = 'Quantas ":minima" possui em uma unidade de ":u" para este Item?'
      FormatoTabela = False
      LinkToResult = 0
    end
    object edfator: TTS_CalcEdit
      Left = 158
      Top = 92
      Width = 64
      Style.BorderColor = 6269135
      TabOrder = 0
      OnKeyPress = edfatorKeyPress
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
  end
  inherited pnNavigator: TTS_Panel
    Left = 379
    Width = 105
    Height = 122
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 88
      Width = 103
    end
    inherited btComando2: TTS_SpeedButton
      Width = 103
    end
    inherited btComando1: TTS_SpeedButton
      Width = 103
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 103
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 103
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 103
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 484
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 255
      Caption = 'Inserir Fator de Convers'#227'o'
      Effect3D.ShadowedColor = 9027548
    end
    inherited lbEstadoForm: TTS_Label
      Width = 185
      Caption = 'Convers'#227'o de uma unidade para outra'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 448
    end
    inherited lbUpperHint: TTS_Label
      Left = 415
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 64
    Top = 156
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Inserir Fator de Convers'#227'o'
    Left = 317
    Top = 24
  end
  inherited FormStorage: TFormStorage
    Left = 135
    Top = 155
  end
end

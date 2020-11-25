inherited DlgTransferirAgendamento: TDlgTransferirAgendamento
  Left = 161
  Top = 307
  Width = 515
  Height = 256
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 389
    Height = 179
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 145
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 40
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Transferir'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000014000000120000000100
        040000000000D8000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777888888
        7777777700007487784444448877777700007448844444444487777700007444
        444CCCCC444877770000744444C77777C444877700007444447777777C448777
        00007444444777777C88877700007CCCCCCC7777777777770000777777777777
        7777777700007777777777778888887700007C888777777C4444487700007C44
        87777777C4444877000077C44877777884444877000077C44488888444444877
        0000777C4444444444CC487700007777CC444444CC77C7770000777777CCCCCC
        777777770000777777777777777777770000}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 35
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 507
    Gradient.ColorStart = 14003626
    inherited lbEstadoForm: TTS_Label
      Width = 253
      Caption = 'Escolha o usu'#225'rio para o qual voc'#234' deseja transferir/'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 471
    end
    inherited lbCaption: TdxfLabel
      Width = 231
      AutoSize = True
      Caption = 'Transferir Agendamento'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnDados: TTS_Panel
    Width = 389
    Height = 179
    Color = 15456728
    object lbUsuario_: TTS_Label
      Left = 26
      Top = 9
      Width = 49
      Caption = 'Usu'#225'rio:'
      FocusControl = lcbUsuario_
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbUsuario: TTS_Label
      Left = 13
      Top = 39
      Width = 65
      Caption = 'Funcion'#225'rio:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lcbUsuario_: TTS_LookupComboBox
      Left = 79
      Top = 7
      Width = 166
      TabOrder = 0
      StyleController = DMProjeto.esClientes
      ClearKey = 32
      ListFieldName = 'LOGINNAME'
      KeyFieldName = 'USUARIO'
      LookupKeyValue = Null
      Height = 19
    end
    object df_funcionario: TTS_EditFavorecido
      Left = 84
      Top = 36
      Width = 265
      Hint = 
        '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
        '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
        'a pelo EIN. Ex: EIN:6719034663'
      Style.ButtonStyle = btsFlat
      TabOrder = 1
      StyleController = DMProjeto.esRemessa
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
        end
        item
          Default = False
          Glyph.Data = {
            06050000424D060500000000000036040000280000000D0000000D0000000100
            080000000000D000000000000000000000000001000000000000000000000000
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
            0707070707070700000007070707070707070707070707000000070707070700
            00000707070707000000070707070700FC000707070707000000070707070700
            FC000707070707000000070700000000FC000000000707000000070700FCFCFC
            FCFCFCFC000707000000070700000000FC000000000707000000070707070700
            FC000707070707000000070707070700FC000707070707000000070707070700
            0000070707070700000007070707070707070707070707000000070707070707
            07070707070707000000}
          Kind = bkGlyph
          Width = 17
        end>
      SelecionarVarios = True
      TipoFavorecido = 3
      C_Localizar = DMProjeto.C_LocalizarFav
      ID = 0
      Height = 19
      ExistButtons = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Transferir Agendamento'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 343
    Top = 162
  end
end

inherited DlgAlteraStatusCheqPago: TDlgAlteraStatusCheqPago
  Left = 208
  Top = 166
  Width = 506
  Height = 278
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 380
    Height = 201
    Color = 15196656
    object TS_Label1: TTS_Label
      Left = 48
      Top = 40
      Width = 65
      Caption = 'Data:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 8
      Top = 64
      Width = 105
      Caption = 'Alterar para o Status:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 8
      Top = 86
      Width = 105
      Caption = 'Observa'#231#245'es:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbCheques: TTS_Label
      Left = 116
      Top = 20
      Width = 253
      Alignment = taLeftJustify
      FormatoTabela = False
      LinkToResult = 0
    end
    object dtData: TTS_DateTimePicker
      Left = 114
      Top = 38
      Width = 88
      TabOrder = 0
      AutoSize = False
      StyleController = DMProjeto.esFornecedores
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
    object cmbStatus: TTS_ImageEdit
      Left = 114
      Top = 61
      Width = 184
      TabOrder = 1
      StyleController = DMProjeto.esFornecedores
      Descriptions.Strings = (
        'Aguardando Dep'#243'sito'
        'Depositado'
        'Devolvido'
        'Devolvido, mas Acertado'
        'Cancelado')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4')
      Images = Imagens
      Values.Strings = (
        '3'
        '50'
        '4'
        '71'
        '70')
      Height = 19
    end
    object mmObs: TTS_Memo
      Left = 114
      Top = 84
      Width = 255
      TabOrder = 2
      StyleController = DMProjeto.esFornecedores
      Height = 101
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 380
    Height = 201
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 167
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 498
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 268
      Caption = 'Altera Status de Documento'
      Effect3D.ShadowedColor = 11775972
    end
    inherited lbEstadoForm: TTS_Label
      Width = 92
      Caption = 'Mudan'#231'a de Status'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 462
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 272
    Top = 98
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Altera Status de Documento'
    FirstEditField = cmbStatus
    Left = 210
    Top = 159
  end
  object Imagens: TImageList
    Left = 128
    Top = 160
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000487540440040004000400040
      0040004000400040404048750000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000405820584058405840584060
      4060406040602060004C40400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000002060606461648270A270A270
      A170807060704070206000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000040646164A270C370C270C270
      A170A07080706070406000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000006064A270E470E370C370C270
      A170817080706070606000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000008270C370E470E370C370C270
      A170807060706070606000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000C3700571E570E370C370A270
      8168606860686068606000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E47026710571E470A370A268
      8168606460686068606000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E57047752671E568C370A268
      8268816461686068606000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000002671AA7568752671E570E370
      C368A268A2688264606020400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000006875EE758A75677527712671
      06710571E470C270606061440000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000687568750671E470C370C370
      A270827082648164615848750000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000271AE001
      8A26000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000810AA00A
      E001AE3200000000000000000000000000000000A51400000000000000000000
      0000000000000000000000000000000000000000000000000000000000002739
      C330832000000000483923558320000000000000000000000000000080012001
      20012001200180010000000000000000000000000000000000008A26A00AC00A
      2002030E00000000000000000000000000000000AD35A5140000000000000000
      000000000000000000000000000000000000000000006A7E097E8571C23CE87D
      8575C23CA234035523554465235983200000000000000000000020012001200A
      200A000A000A20012001000000000000000000000000000000000002000FC00A
      6002E001D13E00000000000000000000000000000000AD35A514000000000000
      000000000000000000000000000000000000000000004459A7714459E240917F
      2A7E03550355E244A238A238E2444741000000000000000020012001200A200A
      80128012000A000A20012001000000000000000000000000271A000FC00AE027
      000F0002C0010000000000000000000000000000000000000000A514AD350034
      00340020002000000000000000000000000000000000297EE87D8575034DA679
      A679647164712359E24C61244118C52800000000000080012001200A80128012
      801280128012000A000A2001800100000000000000000000810A0223E027E027
      A00AC00AE001AE32000000000000000000000000000000000000AD350034007C
      00340034002000000000000000000000000000000000CD7E6B7EA6790355A67D
      A6798579857523610251812C411800000000000000002001200A801280128012
      200A200A80128012000A000A200100000000000000000000C116E027E027271A
      271AC00A2002030E0000000000000000000000000000000000000034007C007C
      007C00340034000000000000000000000000000000004459A7714459E24CC77D
      C67D2A7EE87D4465025161284118000000000000000020012C3380128012200A
      200A200A200A80128012000A2001000000000000000000000000600A600A0000
      00006006C00AE001D13E00000000000000000000000000000000A57C007C007C
      007C00340034000000000000000000000000000000002F7F8C7EC77D0355E77D
      087E0F7F2A7E446502516124821C000000000000000020012C3380128012200A
      200A200A200A80128012000A2001000000000000000000000000000000000000
      00008316C00A0002C00100000000000000000000000000000000FF7FD67EA57C
      0034007C0034002000000000000000000000000000004459A7714459C240087E
      697E307F297E2359E24483200000000000000000000020012C332C3380128012
      200A200A80128012000A000A2001000000000000000000000000000000000000
      00000000800AC00AE001AE320000000000000000000000000000007CA57C0034
      FF7F007C007C00340000000000000000000000000000507FAC7EC77D0355C77D
      A67D866985710355C23C000000000000000000000000800120012C332C338012
      801280128012000A000A20018001000000000000000000000000000000000000
      00000000271AC00A621283160000000000000000000000000000003400340034
      0034FF7F007CA514003400200020000000000000000000000000000000006A7E
      6B7E0251822CE43400000000000000000000000000000000200120012C332C33
      80128012000A000A200120010000000000000000000000000000000000000000
      000000000000621A88476212AE32000000000000000000000000000000000000
      0000003400340034007C0034002000000000000000000000000000004741507F
      2A7EC23CC4280000000000000000000000000000000000000000200120012C33
      2C33000A000A2001200100000000000000000000000000000000000000000000
      00000000000083162017AE320000000000000000000000000000000000000000
      000000000034A57C007C00340034AD350000000000000000000000002C6A507F
      A679822400000000000000000000000000000000000000000000000080012001
      2001200120018001000000000000000000000000000000000000000000000000
      0000000000000000D13E00000000000000000000000000000000000000000000
      000000000034FF7FA57C0034AD3500000000000000000000000000002C6A0F7F
      A6798224E6200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000340034AD3500000000000000000000000000000000507F297E
      E77D2461C2400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C6A
      A67924594741000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      FFFF000000000000FFFF000000000000FFFFF8FFFFFFFFFFFFFFF87FBFFFFC63
      F81FF07F9FFFC001F00FF03FCFFFC001E007E03FF01FC001C003E01FF01FC003
      C003E01FF01FC003C003F30FF01FC003C003FF0FF00FC007C003FF87F003C00F
      C003FF87F001FC1FE007FFC3FF01F83FF00FFFC7FF81F87FF81FFFEFFF83F83F
      FFFFFFFFFFC7F83FFFFFFFFFFFFFFC3F}
  end
end

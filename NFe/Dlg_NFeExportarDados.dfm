inherited DlgNFeExportarDados: TDlgNFeExportarDados
  Left = 318
  Top = 192
  Width = 490
  Height = 253
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 356
    Height = 174
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 140
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Exportar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 474
    Gradient.ColorStart = 14003626
    inherited btHelp: TTS_SpeedButton
      Left = 446
    end
    inherited lbCaption: TdxfLabel
      Width = 190
      AutoSize = True
      Caption = 'Exportar Dados NFe'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnDados: TTS_Panel
    Width = 356
    Height = 174
    Color = 15456728
    object lbPosicao: TdxfLabel
      Left = 1
      Top = 127
      Width = 354
      Height = 23
      Align = alBottom
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 15456728
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfLeftTop
      Effect3D.Depth = 0
      Effect3D.ShadowedColor = 6599540
      PenWidth = 1
    end
    object TS_Label1: TTS_Label
      Left = 12
      Top = 14
      Width = 119
      Caption = 'Cadastrados  depois de:'
      FocusControl = dData
      FormatoTabela = False
      LinkToResult = 0
    end
    object cbEmitente: TTS_CheckBox
      Left = 131
      Top = 37
      Width = 151
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 0
      Caption = 'Cadastro de Emitente'
      StyleController = DMProjeto.esRemessa
      DisableEdit = False
      Height = 19
    end
    object cbClientes: TTS_CheckBox
      Left = 131
      Top = 61
      Width = 155
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 1
      Caption = 'Cadastro de Clientes'
      StyleController = DMProjeto.esRemessa
      DisableEdit = False
      Height = 19
    end
    object cbTransportadoras: TTS_CheckBox
      Left = 131
      Top = 85
      Width = 171
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 2
      Caption = 'Cadatro de Transportadoras'
      StyleController = DMProjeto.esRemessa
      DisableEdit = False
      Height = 19
    end
    object cbProdutos: TTS_CheckBox
      Left = 131
      Top = 109
      Width = 171
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = 'Cadastro de Produtos'
      StyleController = DMProjeto.esRemessa
      DisableEdit = False
      Height = 19
    end
    object Barra: TdxfProgressBar
      Left = 1
      Top = 150
      Width = 354
      Height = 23
      Align = alBottom
      BarBevelOuter = bvRaised
      BeginColor = clWhite
      BevelOuter = bvNone
      EndColor = 15456728
      Max = 26
      Min = 0
      Orientation = orHorizontal
      Position = 0
      ShowText = True
      ShowTextStyle = stsPercent
      Step = 1
      Style = sExSolid
      TabOrder = 4
      TransparentGlyph = True
    end
    object dData: TTS_DateTimePicker
      Left = 134
      Top = 12
      Width = 110
      TabOrder = 5
      AutoSize = False
      StyleController = DMProjeto.esContabil
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
      Date = 36526
      UseEditMask = True
      Height = 19
      StoredValues = 4
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 406
    Top = 198
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 450
    Top = 140
  end
  inherited Beep: TBTBeeper
    Left = 450
    Top = 254
  end
  inherited FormStorage: TFormStorage
    Left = 406
    Top = 146
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Exportar Dados NFe'
    Left = 396
    Top = 246
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 451
    Top = 194
  end
  object Q_Export: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 373
    Top = 11
  end
end

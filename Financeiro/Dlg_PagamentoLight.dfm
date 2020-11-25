inherited DlgPagamentoLight: TDlgPagamentoLight
  Left = 182
  Top = 117
  Width = 495
  Height = 339
  ActiveControl = edValor
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 369
    Height = 262
    Color = 15196656
    object TS_Shape4: TTS_Shape
      Left = 16
      Top = 136
      Width = 330
      Height = 3
      Brush.Color = 11775972
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 18
      Top = 16
      Width = 330
      Height = 3
      Brush.Color = 11775972
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Label1: TTS_Label
      Left = 56
      Top = 54
      Width = 65
      Caption = 'Fornecedor:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 56
      Top = 70
      Width = 65
      Caption = 'Vencimento:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 55
      Top = 86
      Width = 65
      Caption = 'Valor:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 55
      Top = 102
      Width = 65
      Caption = 'Falta Pagar:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label5: TTS_Label
      Left = 54
      Top = 179
      Width = 65
      Caption = 'Valor:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label6: TTS_Label
      Left = 9
      Top = 199
      Width = 110
      Caption = 'Forma de Pagamento:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbInvoice: TdxfLabel
      Left = 124
      Top = 37
      Width = 3
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfCool
      Effect3D.Orientation = dxfRightBottom
      Effect3D.Depth = 1
      Effect3D.ShadowedColor = clGray
      PenWidth = 1
    end
    object TS_Label7: TTS_Label
      Left = 56
      Top = 37
      Width = 65
      Caption = '# Invoice:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbFornecedor: TdxfLabel
      Left = 124
      Top = 53
      Width = 3
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfCool
      Effect3D.Orientation = dxfRightBottom
      Effect3D.Depth = 1
      Effect3D.ShadowedColor = clGray
      PenWidth = 1
    end
    object lbVencimento: TdxfLabel
      Left = 124
      Top = 69
      Width = 3
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfCool
      Effect3D.Orientation = dxfRightBottom
      Effect3D.Depth = 1
      Effect3D.ShadowedColor = clGray
      PenWidth = 1
    end
    object lbValor: TdxfLabel
      Left = 124
      Top = 85
      Width = 3
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfCool
      Effect3D.Orientation = dxfRightBottom
      Effect3D.Depth = 1
      Effect3D.ShadowedColor = clGray
      PenWidth = 1
    end
    object lbSaldo: TdxfLabel
      Left = 124
      Top = 101
      Width = 3
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfCool
      Effect3D.Orientation = dxfRightBottom
      Effect3D.Depth = 1
      Effect3D.ShadowedColor = clGray
      PenWidth = 1
    end
    object TS_Shape1: TTS_Shape
      Left = 24
      Top = 8
      Width = 97
      Height = 17
      Brush.Color = 11775972
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Label8: TTS_Label
      Left = 30
      Top = 9
      Width = 81
      Caption = 'Dados da Conta'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape3: TTS_Shape
      Left = 22
      Top = 128
      Width = 97
      Height = 17
      Brush.Color = 11775972
      Pen.Style = psClear
      Shape = stRoundRect
      Transparent = False
    end
    object TS_Label9: TTS_Label
      Left = 32
      Top = 129
      Width = 81
      Alignment = taCenter
      Caption = 'Pagamento'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label10: TTS_Label
      Left = 55
      Top = 159
      Width = 65
      Caption = 'Data:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbNumcheque: TTS_Label
      Left = 53
      Top = 239
      Width = 65
      Caption = 'N'#186' Cheque:'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbVenc: TTS_Label
      Left = 194
      Top = 240
      Width = 65
      Caption = 'Vencimento:'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lbConta: TTS_Label
      Left = 54
      Top = 219
      Width = 65
      Cursor = crHandPoint
      Caption = 'Conta Banco:'
      FocusControl = cmbConta
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      Visible = False
      FormatoTabela = False
      LinkTo = 'FrmContas'
      LinkToResult = 0
    end
    object edValor: TTS_CalcEdit
      Left = 121
      Top = 177
      Width = 81
      TabOrder = 1
      StyleController = DMProjeto.esFornecedores
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
    object cmbFormaPagamento: TTS_LookupComboBox
      Left = 121
      Top = 197
      Width = 213
      TabOrder = 2
      StyleController = DMProjeto.esFornecedores
      OnChange = cmbFormaPagamentoChange
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'FORMAPAGAMENTO'
      ListSource = Q_FormasPagamentoDS
      LookupKeyValue = Null
      Height = 19
    end
    object dtData: TTS_DateTimePicker
      Left = 121
      Top = 157
      Width = 81
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
    object edNumCheque: TTS_Edit
      Left = 121
      Top = 237
      Width = 72
      TabOrder = 4
      Visible = False
      StyleController = DMProjeto.esFornecedores
      Height = 19
    end
    object dtVencimento: TTS_DateTimePicker
      Left = 259
      Top = 237
      Width = 75
      TabOrder = 5
      Visible = False
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
    object cmbConta: TTS_LookupComboBox
      Left = 121
      Top = 217
      Width = 213
      TabOrder = 3
      Visible = False
      StyleController = DMProjeto.esFornecedores
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'CONTA'
      ListSource = DMFinanceiro.C_ContasBcDS
      LookupKeyValue = Null
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 369
    Height = 262
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 228
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 487
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 107
      Caption = 'Pagamento'
      Effect3D.ShadowedColor = 11775972
    end
    inherited lbEstadoForm: TTS_Label
      Width = 133
      Caption = 'Quita'#231#227'o de contas a pagar'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 451
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 366
    Top = 182
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 296
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Pagamento'
    Left = 234
    Top = 154
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 295
    Top = 154
  end
  inherited FormStorage: TFormStorage
    Left = 232
  end
  object Q_FormasPagamento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select formapagamento, especie, descricao '
      'from FORMASPAGAMENTO'
      'where not especie IN (3,6,7,40)')
    Left = 232
    Top = 200
    object Q_FormasPagamentoFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Origin = 'FORMASPAGAMENTO.FORMAPAGAMENTO'
      Required = True
    end
    object Q_FormasPagamentoESPECIE: TIntegerField
      FieldName = 'ESPECIE'
      Origin = 'FORMASPAGAMENTO.ESPECIE'
    end
    object Q_FormasPagamentoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'FORMASPAGAMENTO.DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object Q_FormasPagamentoDS: TDataSource
    DataSet = Q_FormasPagamento
    Left = 296
    Top = 200
  end
end

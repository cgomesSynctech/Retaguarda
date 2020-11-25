inherited DlgEstatVendasProduto: TDlgEstatVendasProduto
  Left = 148
  Top = 189
  HelpContext = 0
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'M'#243'dulo de Itens'
  ClientHeight = 219
  ClientWidth = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 447
    Width = 103
    Height = 176
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 142
      Width = 101
    end
    inherited btComando2: TTS_SpeedButton
      Width = 101
    end
    inherited btComando1: TTS_SpeedButton
      Width = 101
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 101
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 101
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 101
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 550
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 42
      Caption = 'Consulta'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 462
    end
    inherited lbUpperHint: TTS_Label
      Left = 506
    end
    inherited lbCaption: TdxfLabel
      Width = 214
      AutoSize = True
      Caption = 'Estat'#237'sticas de Vendas'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 447
    Height = 176
    Color = 14019327
    object lblData: TLabel
      Left = 130
      Top = 79
      Width = 225
      Height = 13
      Caption = 'Ainda n'#227'o houve vendas para esse item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TS_Shape4: TTS_Shape
      Left = 89
      Top = 124
      Width = 75
      Height = 47
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 9
      Top = 100
      Width = 388
      Height = 25
      Brush.Color = 13626620
      Transparent = False
    end
    object TS_Shape7: TTS_Shape
      Left = 313
      Top = 124
      Width = 84
      Height = 47
      Transparent = False
    end
    object TS_Shape6: TTS_Shape
      Left = 232
      Top = 124
      Width = 82
      Height = 47
      Transparent = False
    end
    object TS_Shape5: TTS_Shape
      Left = 161
      Top = 124
      Width = 72
      Height = 47
      Transparent = False
    end
    object TS_Shape3: TTS_Shape
      Left = 9
      Top = 124
      Width = 81
      Height = 47
      Transparent = False
    end
    object Label2: TTS_Label
      Left = 15
      Top = 129
      Width = 70
      Height = 13
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label3: TTS_Label
      Left = 15
      Top = 151
      Width = 38
      Height = 13
      Caption = 'Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label4: TTS_Label
      Left = 109
      Top = 105
      Width = 36
      Height = 13
      Caption = #218'ltimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label5: TTS_Label
      Left = 182
      Top = 105
      Width = 36
      Height = 13
      Caption = 'Menor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label6: TTS_Label
      Left = 263
      Top = 105
      Width = 35
      Height = 13
      Caption = 'M'#233'dia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label7: TTS_Label
      Left = 336
      Top = 105
      Width = 32
      Height = 13
      Caption = 'Maior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object DBText6: TTS_DBText
      Left = 90
      Top = 129
      Width = 70
      Height = 17
      Alignment = taRightJustify
      DataField = 'UltimaQuantidade'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText2: TTS_DBText
      Left = 90
      Top = 152
      Width = 70
      Height = 17
      Alignment = taRightJustify
      DataField = 'UltimoPreco'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText3: TTS_DBText
      Left = 315
      Top = 152
      Width = 74
      Height = 17
      Alignment = taRightJustify
      DataField = 'PrecoMaior'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText4: TTS_DBText
      Left = 315
      Top = 129
      Width = 74
      Height = 17
      Alignment = taRightJustify
      DataField = 'QuantidadeMaior'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText5: TTS_DBText
      Left = 236
      Top = 152
      Width = 74
      Height = 17
      Alignment = taRightJustify
      DataField = 'PrecoMedio'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText7: TTS_DBText
      Left = 236
      Top = 129
      Width = 74
      Height = 17
      Alignment = taRightJustify
      DataField = 'QuantidadeMedia'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText8: TTS_DBText
      Left = 164
      Top = 152
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'PrecoMenor'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object DBText9: TTS_DBText
      Left = 164
      Top = 129
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'QuantidadeMenor'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object TS_Shape8: TTS_Shape
      Left = 10
      Top = 147
      Width = 385
      Height = 1
      Transparent = False
    end
    object Label8: TTS_Label
      Left = 15
      Top = 8
      Width = 49
      Height = 13
      Alignment = taLeftJustify
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label1: TTS_Label
      Left = 15
      Top = 79
      Width = 111
      Height = 13
      Caption = 'Data '#218'ltima Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object dbtDataUltimaVenda: TTS_DBText
      Left = 128
      Top = 78
      Width = 261
      Height = 17
      DataField = 'UltimaCompra'
      DataSource = Q_EstatisticasDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object Bevel1: TBevel
      Left = 10
      Top = 62
      Width = 387
      Height = 3
    end
    object dfItem: TTS_EditItem
      Left = 96
      Top = 6
      Width = 294
      Hint = 
        '#C'#243'digo => Pesquisa pelo C'#243'digo. Ex: #123'#13'&Referencia => Pesquis' +
        'a pela Refer'#234'ncia. Ex: &PVDD-44456'
      Style.ButtonStyle = btsFlat
      TabOrder = 0
      StyleController = DMProjeto.esItens
      Buttons = <
        item
          Default = True
          Glyph.Data = {
            EE000000424DEE0000000000000076000000280000000F0000000F0000000100
            0400000000007800000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            777077777777777CC07077777777774EC0707777777774EC077077777777CEC0
            77707770000778077770770666608877777077EEEFF6077777708FEEEFFF6077
            77708FEEEFFF607777708EFFFEEE607777707EFFFEEE0777777078FFFEE67777
            777077788807777777707777777777777770}
          Kind = bkGlyph
        end
        item
          Default = False
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            700077777777777770007777700077777000777770C077777000777770C07777
            7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
            7000777770C07777700077777000777770007777777777777000777777777777
            7000}
          Kind = bkGlyph
        end>
      PermitirQuantidade = False
      SelecionarVariosItens = False
      C_Localizar = DMProjeto.C_LocalizarItens
      ID = 0
      OnSelecionou = dfItemSelecionou
      Height = 19
      ExistButtons = True
    end
    object dfCliente: TTS_EditFavorecido
      Left = 96
      Top = 33
      Width = 294
      Hint = 
        '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
        '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
        'a pelo EIN. Ex: EIN:6719034663'
      Style.ButtonStyle = btsFlat
      TabOrder = 2
      StyleController = DMProjeto.esItens
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
      LookupTipoFav = TS_DBLookupTipoFav1
      SelecionarVarios = False
      C_Localizar = DMProjeto.C_LocalizarFav
      ID = 0
      OnSelecionou = dfClienteSelecionou
      Height = 19
      ExistButtons = True
    end
    object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
      Left = 12
      Top = 32
      Width = 83
      Hint = 
        'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
        ' de edi'#231#227'o ao lado.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      StyleController = DMProjeto.esItens
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'TIPOFAVORECIDO'
      ListSource = DMProjeto.C_TipoFavDS
      LookupKeyValue = Null
      TipoFavorecido = 1
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 40
    Top = 179
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 206
    Top = 176
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 137
    Top = 175
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Estat'#237'sticas de Vendas'
    Left = 176
    Top = 181
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 146
    end
  end
  object Q_EstatisticasDS: TDataSource
    DataSet = Q_Estatisticas
    Left = 62
    Top = 173
  end
  object Q_UltimasCompras: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select Quantidade, Preco '
      'from Saidas i, SaidasItens ii '
      'where i.saida = ii.saida and i.situacao = '#39'N'#39' and'
      'i.data = :dData and ii.item = :nItem and i.tipopadrao = 1'
      'and (:bCliente = 1 or i.favorecido = :nCliente)'
      'order by i.saida desc')
    Left = 392
    Top = 128
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dData'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nItem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nCliente'
        ParamType = ptUnknown
      end>
    object Q_UltimasComprasQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDASITENS.QUANTIDADE'
    end
    object Q_UltimasComprasPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'SAIDASITENS.PRECO'
    end
  end
  object Q_Estatisticas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    OnCalcFields = Q_EstatisticasCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select ii.item as Produto, avg(ii.preco) as PrecoMedio, avg(ii.Q' +
        'uantidade) as QuantidadeMedia,'
      
        'min(ii.preco) as PrecoMenor, min(ii.Quantidade) as QuantidadeMen' +
        'or,'
      
        'max(ii.preco) as PrecoMaior, max(ii.Quantidade) as QuantidadeMai' +
        'or,'
      'max(i.data) as UltimaCompra'
      'from Saidas i, SaidasItens ii'
      
        'where i.saida = ii.saida and i.situacao = '#39'N'#39' and i.tipopadrao =' +
        ' 1'
      
        'and ii.item = :nItem and (:bCliente = 1 or i.favorecido = :nClie' +
        'nte)'
      'group by ii.item')
    Left = 25
    Top = 65
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nItem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bCliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nCliente'
        ParamType = ptUnknown
      end>
    object Q_EstatisticasPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object Q_EstatisticasPRECOMEDIO: TFloatField
      FieldName = 'PRECOMEDIO'
    end
    object Q_EstatisticasQUANTIDADEMEDIA: TFloatField
      FieldName = 'QUANTIDADEMEDIA'
    end
    object Q_EstatisticasPRECOMENOR: TFloatField
      FieldName = 'PRECOMENOR'
    end
    object Q_EstatisticasQUANTIDADEMENOR: TFloatField
      FieldName = 'QUANTIDADEMENOR'
    end
    object Q_EstatisticasPRECOMAIOR: TFloatField
      FieldName = 'PRECOMAIOR'
    end
    object Q_EstatisticasQUANTIDADEMAIOR: TFloatField
      FieldName = 'QUANTIDADEMAIOR'
    end
    object Q_EstatisticasULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object Q_EstatisticasUltimoPreco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UltimoPreco'
      Calculated = True
    end
    object Q_EstatisticasUltimaQuantidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UltimaQuantidade'
      Calculated = True
    end
  end
  object IBQuery1: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    OnCalcFields = Q_EstatisticasCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select ii.item as Produto, avg(ii.preco) as PrecoMedio, avg(ii.Q' +
        'uantidade) as QuantidadeMedia,'
      
        'min(ii.preco) as PrecoMenor, min(ii.Quantidade) as QuantidadeMen' +
        'or,'
      
        'max(ii.preco) as PrecoMaior, max(ii.Quantidade) as QuantidadeMai' +
        'or,'
      'max(i.data) as UltimaCompra'
      'from Saidas i, SaidasItens ii'
      'where i.saida = ii.saida and i.situacao is null'
      'and ii.item = :nItem'
      '')
    Left = 123
    Top = 77
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nItem'
        ParamType = ptUnknown
      end>
    object FloatField7: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UltimaQuantidade'
      DisplayFormat = '###,##0.0'
      Calculated = True
    end
    object FloatField8: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UltimoPreco'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object IBQuery1PRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object IBQuery1PRECOMEDIO: TFloatField
      FieldName = 'PRECOMEDIO'
    end
    object IBQuery1QUANTIDADEMEDIA: TFloatField
      FieldName = 'QUANTIDADEMEDIA'
    end
    object IBQuery1PRECOMENOR: TFloatField
      FieldName = 'PRECOMENOR'
    end
    object IBQuery1QUANTIDADEMENOR: TFloatField
      FieldName = 'QUANTIDADEMENOR'
    end
    object IBQuery1PRECOMAIOR: TFloatField
      FieldName = 'PRECOMAIOR'
    end
    object IBQuery1QUANTIDADEMAIOR: TFloatField
      FieldName = 'QUANTIDADEMAIOR'
    end
    object IBQuery1ULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
  end
end

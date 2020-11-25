inherited DlgSitCliente: TDlgSitCliente
  Left = 221
  Top = 149
  Width = 585
  Height = 499
  Caption = 'Clientes / Vendas'
  Constraints.MaxHeight = 499
  Constraints.MaxWidth = 585
  Constraints.MinHeight = 499
  Constraints.MinWidth = 585
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 577
    Width = 0
    Height = 429
    Visible = False
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 395
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 577
    Gradient.ColorStart = 14859922
    inherited lbUpperHint: TTS_Label [0]
      Left = 573
      Top = -1
      Width = 0
      Height = 42
      Caption = 'Situa'#231#227'o atual '#13#10'e hist'#243'rica do '#13#10'favorecido'
    end
    inherited lbCaption: TdxfLabel [1]
      Width = 347
      AutoSize = True
      Caption = 'Customer Relationship Management'
      Effect3D.ShadowedColor = 14859922
    end
    inherited imgModulo: TTS_Image [2]
    end
    inherited lbEstadoForm: TTS_Label [3]
      Width = 200
      Caption = 'Gerenciamento das rela'#231#245'es com o cliente'
    end
    inherited btHelp: TTS_SpeedButton [4]
      Left = 540
    end
  end
  inherited pnDados: TTS_Panel
    Width = 577
    Height = 429
    Color = 16116702
    object pnPesquisaFavorecido: TTS_Panel
      Left = 1
      Top = 1
      Width = 575
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = 16116702
      TabOrder = 0
      object sbOcorrencias: TTS_SpeedButton
        Left = 408
        Top = 11
        Height = 21
        Caption = '&Ocorr'#234'ncias'
        OnClick = sbOcorrenciasClick
        RepeatedClick = False
        Border = False
      end
      object dfTipoFav: TTS_DBLookupTipoFav
        Left = 4
        Top = 11
        Width = 100
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esClientes
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
        Height = 21
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 104
        Top = 11
        Width = 301
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        StyleController = DMProjeto.esClientes
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
        LookupTipoFav = dfTipoFav
        SelecionarVarios = False
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 21
        ExistButtons = True
      end
    end
    object pcQuadroGeral: TTS_PageControl
      Left = 1
      Top = 45
      Width = 575
      Height = 383
      ActivePage = tsSitFinanceira
      Align = alClient
      OwnerDraw = True
      TabIndex = 0
      TabOrder = 1
      ActivePageIndex = 0
      Transparent = False
      TabColor = 16116702
      TabColorActive = 14859922
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
      object tsSitFinanceira: TTS_TabSheet
        Tag = -1
        HelpContext = -1
        Caption = 'Financeiro'
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 16247774
        ParentColor = False
        object TS_Image1: TTS_Image
          Left = 248
          Top = 176
          Width = 87
          Height = 81
          AutoSize = True
          Transparent = True
          Visible = False
        end
        object pnParcelas: TTS_Panel
          Left = -1
          Top = 0
          Width = 331
          Height = 171
          BevelOuter = bvNone
          Color = 16247774
          TabOrder = 0
          Visible = False
          object TS_Shape16: TTS_Shape
            Left = 4
            Top = 20
            Width = 327
            Height = 152
            Brush.Color = clBlack
            Pen.Color = 14399624
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape5: TTS_Shape
            Left = 1
            Top = 12
            Width = 327
            Height = 157
            Pen.Color = 14399624
            Pen.Width = 2
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape3: TTS_Shape
            Left = 15
            Top = 4
            Width = 82
            Height = 19
            Brush.Color = 14399624
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label24: TTS_Label
            Left = 31
            Top = 6
            Width = 48
            Height = 13
            Alignment = taCenter
            AutoSize = True
            Caption = 'Parcelas'
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
          object pnSitFinAtual: TTS_Panel
            Tag = -1
            Left = 5
            Top = 26
            Width = 321
            Height = 133
            HelpContext = -1
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            BackgroundOptions.GlassColor = 15255199
            object TS_Shape12: TTS_Shape
              Left = 6
              Top = 115
              Width = 315
              Height = 19
              Pen.Color = 14399624
              Pen.Style = psClear
              Transparent = False
            end
            object TS_Shape4: TTS_Shape
              Left = 7
              Top = 29
              Width = 314
              Height = 86
              Brush.Color = 16116702
              Pen.Color = 14399624
              Pen.Style = psClear
              Transparent = False
            end
            object TS_Shape2: TTS_Shape
              Left = 6
              Top = 80
              Width = 315
              Height = 19
              Pen.Color = 14399624
              Pen.Style = psClear
              Transparent = False
            end
            object TS_Shape1: TTS_Shape
              Left = 7
              Top = 45
              Width = 314
              Height = 19
              Pen.Color = 14399624
              Pen.Style = psClear
              Transparent = False
            end
            object TS_Label7: TTS_Label
              Left = 12
              Top = 29
              Width = 88
              Alignment = taLeftJustify
              Caption = 'Total:'
              Color = 15916744
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label11: TTS_Label
              Left = 12
              Top = 47
              Width = 88
              Alignment = taLeftJustify
              Caption = 'Pagou em dia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label12: TTS_Label
              Left = 13
              Top = 9
              Width = 29
              Caption = 'Ano:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label16: TTS_Label
              Left = 271
              Top = 9
              Width = 48
              Height = 13
              Caption = 'Valor%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label20: TTS_Label
              Left = 223
              Top = 9
              Width = 48
              Height = 13
              Caption = 'Qtde.%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label29: TTS_Label
              Left = 152
              Top = 9
              Width = 70
              Height = 13
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label30: TTS_Label
              Left = 12
              Top = 64
              Width = 88
              Alignment = taLeftJustify
              Caption = 'Pagou em atraso:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label31: TTS_Label
              Left = 12
              Top = 82
              Width = 88
              Cursor = crHandPoint
              Alignment = taLeftJustify
              Caption = 'Em atraso:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = TS_Label31Click
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label32: TTS_Label
              Left = 12
              Top = 117
              Width = 88
              Cursor = crHandPoint
              Alignment = taLeftJustify
              Caption = 'A vencer:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = TS_Label32Click
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label33: TTS_Label
              Left = 97
              Top = 9
              Width = 52
              Height = 13
              Caption = 'Qtde.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcTotalQtde: TTS_Label
              Left = 97
              Top = 29
              Width = 52
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcTotalValor: TTS_Label
              Left = 152
              Top = 29
              Width = 70
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcTotalQtdePerc: TTS_Label
              Left = 223
              Top = 29
              Width = 48
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcTotalValorPerc: TTS_Label
              Left = 271
              Top = 29
              Width = 48
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmDiaQtde: TTS_Label
              Left = 97
              Top = 47
              Width = 52
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmDiaValor: TTS_Label
              Left = 152
              Top = 47
              Width = 70
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmDiaQtdePerc: TTS_Label
              Left = 223
              Top = 47
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmDiaValorPerc: TTS_Label
              Left = 271
              Top = 47
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmAtrasoQtde: TTS_Label
              Left = 97
              Top = 64
              Width = 52
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmAtrasoValor: TTS_Label
              Left = 152
              Top = 64
              Width = 70
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmAtrasoQtdePerc: TTS_Label
              Left = 223
              Top = 64
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcEmAtrasoValorPerc: TTS_Label
              Left = 271
              Top = 64
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAtrasadasQtde: TTS_Label
              Left = 97
              Top = 82
              Width = 52
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAtrasadasValor: TTS_Label
              Left = 152
              Top = 82
              Width = 70
              Height = 13
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAtrasadasQtdePerc: TTS_Label
              Left = 223
              Top = 82
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAtrasadasValorPerc: TTS_Label
              Left = 271
              Top = 82
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAVencerQtde: TTS_Label
              Left = 97
              Top = 117
              Width = 52
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAVencerValor: TTS_Label
              Left = 152
              Top = 117
              Width = 70
              Height = 13
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAVencerQtdePerc: TTS_Label
              Left = 223
              Top = 117
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcAVencerValorPerc: TTS_Label
              Left = 271
              Top = 117
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label37: TTS_Label
              Left = 12
              Top = 99
              Width = 88
              Cursor = crHandPoint
              Alignment = taLeftJustify
              Caption = 'Vencidas:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = TS_Label37Click
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcVencidasQtde: TTS_Label
              Left = 97
              Top = 99
              Width = 52
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcVencidasValor: TTS_Label
              Left = 152
              Top = 99
              Width = 70
              Height = 13
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcVencidasQtdePerc: TTS_Label
              Left = 223
              Top = 99
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbParcVencidasValorPerc: TTS_Label
              Left = 271
              Top = 99
              Width = 48
              Height = 13
              Caption = '%VALOR'
              FormatoTabela = False
              LinkToResult = 0
            end
            object seAnoPacelas: TTS_SpinEdit
              Left = 44
              Top = 6
              Width = 48
              TabOrder = 0
              StyleController = DMProjeto.esClientes
              OnChange = seAnoPacelasChange
              MaxValue = 3000
              MinValue = 1900
              Value = 2002
              Height = 19
              StoredValues = 48
            end
          end
        end
        object pnVendasCliente: TTS_Panel
          Left = 331
          Top = 2
          Width = 234
          Height = 260
          BevelOuter = bvNone
          Color = 16247774
          TabOrder = 1
          Visible = False
          object TS_Shape15: TTS_Shape
            Left = 6
            Top = 15
            Width = 228
            Height = 245
            Brush.Color = clBlack
            Pen.Color = 15190957
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape7: TTS_Shape
            Left = 4
            Top = 12
            Width = 227
            Height = 245
            Pen.Color = 15190957
            Pen.Width = 2
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape6: TTS_Shape
            Left = 24
            Top = 4
            Width = 74
            Height = 19
            Brush.Color = 14399624
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label34: TTS_Label
            Left = 41
            Top = 6
            Width = 41
            Height = 13
            Alignment = taLeftJustify
            AutoSize = True
            Caption = 'Vendas'
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
          object pnVendas: TTS_Panel
            Tag = -1
            Left = 10
            Top = 27
            Width = 215
            Height = 218
            HelpContext = -1
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            BackgroundOptions.GlassColor = 15255199
            object lbDataUltVenda: TTS_Label
              Left = 77
              Top = 22
              Width = 73
              Alignment = taCenter
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorUltVenda: TTS_Label
              Left = 149
              Top = 22
              Width = 66
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbValorUltVendaClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorVendas: TTS_Label
              Left = 149
              Top = 99
              Width = 66
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbQuantVendas: TTS_Label
              Left = 149
              Top = 84
              Width = 66
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbDataMaiorVenda: TTS_Label
              Left = 77
              Top = 39
              Width = 73
              Alignment = taCenter
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorMaiorVenda: TTS_Label
              Left = 149
              Top = 39
              Width = 66
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbValorUltVendaClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorMedioParcelas: TTS_Label
              Left = 149
              Top = 155
              Width = 66
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbQuantParcelas: TTS_Label
              Left = 149
              Top = 138
              Width = 66
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorMedioVendas: TTS_Label
              Left = 149
              Top = 114
              Width = 66
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label15: TTS_Label
              Left = 3
              Top = 22
              Width = 66
              Height = 13
              Alignment = taLeftJustify
              AutoSize = True
              Caption = #218'ltima Venda:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label17: TTS_Label
              Left = 32
              Top = 99
              Width = 55
              Height = 13
              Alignment = taLeftJustify
              Caption = 'Valor Total:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label18: TTS_Label
              Left = 3
              Top = 84
              Width = 155
              Alignment = taLeftJustify
              Caption = 'N'#250'mero de Vendas:'
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
            object TS_Label19: TTS_Label
              Left = 3
              Top = 39
              Width = 83
              Alignment = taLeftJustify
              Caption = 'Maior Venda:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label21: TTS_Label
              Left = 32
              Top = 155
              Width = 121
              Alignment = taLeftJustify
              Caption = 'Valor M'#233'dio:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label22: TTS_Label
              Left = 3
              Top = 138
              Width = 155
              Alignment = taLeftJustify
              Caption = 'N'#250'mero de Parcelas:'
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
            object TS_Label23: TTS_Label
              Left = 32
              Top = 114
              Width = 59
              Height = 13
              Alignment = taLeftJustify
              Caption = 'Valor M'#233'dio:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label8: TTS_Label
              Left = 77
              Top = 6
              Width = 73
              Height = 13
              Alignment = taCenter
              Caption = 'Data'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label9: TTS_Label
              Left = 149
              Top = 6
              Width = 66
              Height = 13
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label10: TTS_Label
              Left = 3
              Top = 55
              Width = 83
              Alignment = taLeftJustify
              Caption = 'Menor Venda:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbDataMenorVenda: TTS_Label
              Left = 77
              Top = 55
              Width = 73
              Alignment = taCenter
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorMenorVenda: TTS_Label
              Left = 149
              Top = 55
              Width = 66
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbValorUltVendaClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label14: TTS_Label
              Left = 32
              Top = 169
              Width = 121
              Alignment = taLeftJustify
              Caption = 'Maior parcela:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorMaiorParc: TTS_Label
              Left = 149
              Top = 169
              Width = 66
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbValorMaiorParcClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label25: TTS_Label
              Left = 32
              Top = 183
              Width = 121
              Alignment = taLeftJustify
              Caption = 'Menor parcela:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorMenorParc: TTS_Label
              Left = 149
              Top = 183
              Width = 66
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbValorMaiorParcClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label28: TTS_Label
              Left = 9
              Top = 205
              Width = 155
              Alignment = taLeftJustify
              Caption = 'M'#233'dia de Atraso:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbMediaAtraso: TTS_Label
              Left = 149
              Top = 205
              Width = 66
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
          end
        end
        object pnChequesDev: TTS_Panel
          Left = 253
          Top = 288
          Width = 314
          Height = 70
          BevelOuter = bvNone
          Color = 16247774
          TabOrder = 2
          Visible = False
          object TS_Shape14: TTS_Shape
            Left = 10
            Top = 8
            Width = 302
            Height = 57
            Brush.Color = clBlack
            Pen.Color = 15190957
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape11: TTS_Shape
            Left = 1
            Top = 3
            Width = 308
            Height = 60
            Pen.Color = 15190957
            Pen.Width = 2
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape10: TTS_Shape
            Left = 19
            Top = -1
            Width = 140
            Height = 19
            Brush.Color = 14399624
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label36: TTS_Label
            Left = 32
            Top = 1
            Width = 113
            Height = 13
            AutoSize = True
            Caption = 'Cheques Devolvidos'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object pnSitFinHistorica: TTS_Panel
            Tag = -1
            Left = 3
            Top = 17
            Width = 302
            Height = 41
            HelpContext = -1
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            BackgroundOptions.GlassColor = 15255199
            object lbValorCheqDevAc: TTS_Label
              Left = 241
              Top = 24
              Width = 57
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label27: TTS_Label
              Left = 7
              Top = 24
              Width = 229
              Height = 13
              Cursor = crHandPoint
              Alignment = taLeftJustify
              AutoSize = True
              Caption = 'Valor dos Cheques Devolvidos (mas acertados):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = TS_Label27Click
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label26: TTS_Label
              Left = 7
              Top = 7
              Width = 143
              Height = 13
              Cursor = crHandPoint
              Alignment = taLeftJustify
              AutoSize = True
              Caption = 'Valor de Cheques Devolvidos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = TS_Label26Click
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbValorCheqDev: TTS_Label
              Left = 241
              Top = 7
              Width = 57
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
          end
        end
        object pnInfGerais: TTS_Panel
          Left = -4
          Top = 172
          Width = 254
          Height = 199
          BevelOuter = bvNone
          Color = 16247774
          TabOrder = 3
          Visible = False
          object TS_Shape13: TTS_Shape
            Left = 5
            Top = 16
            Width = 244
            Height = 166
            Brush.Color = clBlack
            Pen.Color = 15190957
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape9: TTS_Shape
            Left = 1
            Top = 11
            Width = 245
            Height = 169
            Pen.Color = 15190957
            Pen.Width = 2
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Shape8: TTS_Shape
            Left = 14
            Top = 2
            Width = 137
            Height = 19
            Brush.Color = 14399624
            Pen.Style = psClear
            Shape = stRoundRect
            Transparent = False
          end
          object TS_Label35: TTS_Label
            Left = 27
            Top = 4
            Width = 111
            Height = 13
            Alignment = taLeftJustify
            AutoSize = True
            Caption = 'Informa'#231#245'es Gerais'
            Color = 9027548
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object pnDadosGerais: TTS_Panel
            Tag = -1
            Left = 5
            Top = 23
            Width = 231
            Height = 145
            HelpContext = -1
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            BackgroundOptions.GlassColor = 15255199
            object lbClienteDesde: TTS_Label
              Left = 140
              Top = 2
              Width = 84
              Caption = '%VALOR'
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
            object lbTempoDeCadastro: TTS_Label
              Left = 140
              Top = 18
              Width = 84
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbCreditoEmAberto: TTS_Label
              Left = 140
              Top = 48
              Width = 84
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbCreditoEmAbertoClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbLimiteCredito: TTS_Label
              Left = 140
              Top = 33
              Width = 84
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbCheqPendentes: TTS_Label
              Left = 140
              Top = 64
              Width = 84
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbCheqPendentesClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbSaldoParaCompra: TTS_Label
              Left = 140
              Top = 81
              Width = 84
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label1: TTS_Label
              Left = 9
              Top = 2
              Width = 69
              Alignment = taLeftJustify
              Caption = 'Cliente Desde:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label2: TTS_Label
              Left = 9
              Top = 18
              Width = 98
              Alignment = taLeftJustify
              Caption = 'Tempo de Cadastro:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label3: TTS_Label
              Left = 9
              Top = 48
              Width = 82
              Alignment = taLeftJustify
              Caption = 'Saldo em Aberto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label4: TTS_Label
              Left = 9
              Top = 33
              Width = 85
              Alignment = taLeftJustify
              Caption = 'Limite de Cr'#233'dito:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label5: TTS_Label
              Left = 9
              Top = 64
              Width = 101
              Alignment = taLeftJustify
              Caption = 'Cheques Pendentes:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label6: TTS_Label
              Left = 9
              Top = 81
              Width = 93
              Alignment = taLeftJustify
              Caption = 'Saldo para Compra:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label13: TTS_Label
              Left = 9
              Top = 97
              Width = 40
              Alignment = taLeftJustify
              Caption = 'Cr'#233'dito:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbCredito: TTS_Label
              Left = 140
              Top = 97
              Width = 84
              Cursor = crHandPoint
              Caption = '%VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              WordWrap = False
              OnClick = lbCreditoClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label38: TTS_Label
              Left = 9
              Top = 131
              Width = 93
              Alignment = taLeftJustify
              Caption = 'Boletos em Aberto:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label39: TTS_Label
              Left = 9
              Top = 115
              Width = 86
              Alignment = taLeftJustify
              Caption = 'Cheques Factory:'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbBoletos: TTS_Label
              Left = 140
              Top = 131
              Width = 84
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbChequesFactory: TTS_Label
              Left = 140
              Top = 115
              Width = 84
              Caption = '%VALOR'
              WordWrap = False
              FormatoTabela = False
              LinkToResult = 0
            end
          end
        end
      end
      object tsItens: TTS_TabSheet
        Caption = 'Itens mais comprados'
        ImageIndex = 3
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object gridItens: TTS_QDBGrid
          Left = 0
          Top = 0
          Width = 559
          Height = 344
          Cursor = crHandPoint
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ITEM'
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppmGrid
          TabOrder = 0
          OnDblClick = gridItensDblClick
          AutoSearchColor = clYellow
          AutoSearchTextColor = clNavy
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = C_ItensDS
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
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
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
          TS_SelectedColumn = 'CODIGO'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object gridItensCODIGO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
          end
          object gridItensDESCRICAO: TdxDBGridMaskColumn
            Width = 169
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRICAO'
          end
          object gridItensUNIDADE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UNIDADE'
          end
          object gridItensQUANTIDADE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUANTIDADE'
          end
          object gridItensTOTAL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOTAL'
          end
          object gridItensULTIMACOMPRA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ULTIMACOMPRA'
          end
        end
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 395
    Top = 273
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 462
    Top = 216
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 306
    Top = 269
  end
  inherited Beep: TBTBeeper
    Left = 114
    Top = 104
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Customer Relationship Management'
    FirstEditField = edFavorecido
    Left = 387
    Top = 214
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 233
    Top = 1
    inherited Ajuda1: TMenuItem
      HelpContext = 657
    end
  end
  object Img_Panels: TImageList
    Left = 474
    Top = 337
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000738C9400738C9400738C9400738C
      9400738C9400738C9400738C9400738C9400738C9400738C9400738C9400738C
      9400E7E7E70000000000738C9400738C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000738C9400E7E7E700000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700738C
      9400E7E7E700738C9400738C9400738C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000738C9400E7E7E700000000000000
      000000000000000000000000000000000000738C9400738C9400738C9400738C
      9400738C9400738C9400738C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      840000000000000000000000000000000000738C9400E7E7E700000000000000
      0000000000000000000000000000738C9400738C9400738C9400738C9400738C
      9400738C9400738C9400E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600FFFF00008484
      8400FFFFFF00000000000000000000000000738C9400E7E7E700000000000000
      00000000000000000000738C9400738C9400738C9400738C9400738C9400738C
      9400E7E7E700738C9400E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C600000000000000000000000000738C9400E7E7E700000000000000
      00000000000000000000738C9400738C9400738C9400738C9400738C9400738C
      9400738C9400738C9400E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C600000000000000000000000000738C9400E7E7E700000000000000
      00000000000000000000738C9400738C9400738C9400738C9400738C9400738C
      9400738C9400738C9400E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000C6C6C6008484
      8400FFFFFF00000000000000000000000000738C9400E7E7E700000000000000
      00000000000000000000738C9400738C9400738C9400738C9400738C9400738C
      9400E7E7E700738C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      840000000000000000000000000000000000738C9400E7E7E700000000000000
      0000000000000000000000000000738C9400738C9400738C9400738C9400738C
      9400738C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000738C9400E7E7E700000000000000
      000000000000000000000000000000000000738C9400738C9400738C9400738C
      9400E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000738C9400E7E7E700000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700738C
      9400E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000738C9400E7E7E700000000000000
      000000000000000000000000000000000000738C9400738C9400738C9400738C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600000000000000
      000000000000000000000000000000000000738C9400E7E7E700000000000000
      000000000000000000000000000000000000738C9400738C9400738C94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000738C9400E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700738C9400738C9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000738C9400738C9400738C9400738C
      9400738C9400738C9400738C9400738C9400738C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF800600000000000C000400000000
      00083F800000000000013F010000000000033E010000000000033C0100000000
      00033C010000000000033C010000000000033C030000000000073E0700000000
      000F3F0700000000000F3F8700000000000F3F0F00000000001F3F1F00000000
      003F003F00000000007F007F0000000000000000000000000000000000000000
      000000000000}
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 188
    Top = 51
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '22309'
      end>
    ProviderName = 'Q_ItensProvider'
    Left = 218
    Top = 138
    object C_ItensCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      DisplayLabel = 'Item'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensUNIDADE: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ItensTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = '##,###,##0.00'
    end
    object C_ItensULTIMACOMPRA: TDateField
      DisplayLabel = #218'ltima Compra'
      FieldName = 'ULTIMACOMPRA'
    end
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
  end
  object Q_ItensProvider: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 259
    Top = 50
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select i.item, i.codigo, i.descricao, i.unidade,'
      'sum(si.quantidade) as quantidade,'
      'sum((si.quantidade*si.preco)) as total,'
      'max(s.data) as ultimacompra'
      'From saidasitens si'
      'Join saidas s On si.saida=s.saida And s.situacao='#39'N'#39' '
      'And s.TipoPadrao=1'
      'Join itens i On i.item=si.item And i.tipoitem in (1,2,3)'
      'Where s.favorecido = :Favorecido'
      'Group by i.item, i.codigo, i.descricao, i.unidade'
      'Order By 6 Desc')
    Left = 324
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '22309'
      end>
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'set generator GEN_TOP to -1')
    Left = 288
    Top = 294
  end
  object Q_SQLTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DMProjeto.DB_Projeto
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 522
    Top = 339
  end
  object ppmGrid: TTS_PopupMenu
    Left = 317
    Top = 8
  end
  object FormTransitions1: TFormTransitions
    DestroyTransitions = False
    ShowTransition = TranAbertura
    Left = 135
    Top = 233
  end
  object TransitionList1: TTransitionList
    Left = 220
    Top = 213
    object TranAbertura: TWipeTransition
      OnAfterTransition = TranAberturaAfterTransition
      Milliseconds = 300
      BandWidth = 100
    end
    object TranParcelas: TSlideTransition
      Milliseconds = 300
      Direction = tedUpLeft
    end
    object TranInfGerais: TSlideTransition
      Milliseconds = 300
      Direction = tedDownLeft
    end
    object TranVendasCliente: TSlideTransition
      Milliseconds = 300
      Direction = tedUpRight
    end
    object TranChequesDev: TSlideTransition
      Milliseconds = 300
      Direction = tedDownRight
    end
    object TranLogotipo: TSlideTransition
      Pass2Options.Reversed = True
      Milliseconds = 400
      Direction = tedOut
    end
  end
end

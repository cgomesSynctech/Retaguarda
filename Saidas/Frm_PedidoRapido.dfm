inherited FrmPedidoRapido: TFrmPedidoRapido
  Tag = -1
  Left = 321
  Top = 52
  Width = 800
  Height = 600
  HelpContext = -1
  BorderIcons = []
  BorderStyle = bsSizeable
  Caption = 'FrmPedidoRapido'
  OldCreateOrder = True
  DesignSize = (
    792
    569)
  PixelsPerInch = 96
  TextHeight = 13
  object pgPrincipal: TTS_PageControl [0]
    Tag = -1
    Left = 0
    Top = 0
    Width = 792
    Height = 527
    HelpContext = -1
    ActivePage = tsOperacao
    Align = alClient
    OwnerDraw = True
    Style = tsButtons
    TabOrder = 0
    OnChange = pgPrincipalChange
    OnChangingToTab = pgPrincipalChangingToTab
    ActivePageIndex = 1
    Transparent = False
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
    object tsPropaganda: TTS_TabSheet
      Tag = -1
      HelpContext = -1
      Caption = 'Propaganda'
      TabVisible = False
      TabColor = clBtnFace
      TabFontColor = clBlack
      BevelInner = bvRaised
      BevelOuter = bvLowered
      object CtnPropagandas: TFormContainer
        Tag = -1
        Left = 0
        Top = 0
        Width = 784
        Height = 517
        HelpContext = -1
        Align = alClient
        TabOrder = 0
        BevelInner = bvNone
        BevelOuter = bvNone
      end
    end
    object tsOperacao: TTS_TabSheet
      Tag = -1
      HelpContext = -1
      Caption = '0'
      TabVisible = False
      TabColor = clBtnFace
      TabFontColor = clBlack
      BevelInner = bvRaised
      BevelOuter = bvLowered
      object pgOperacao: TTS_PageControl
        Tag = -1
        Left = 0
        Top = 56
        Width = 784
        Height = 461
        HelpContext = -1
        ActivePage = tsItens
        Align = alClient
        OwnerDraw = True
        Style = tsButtons
        TabOrder = 0
        OnChange = pgOperacaoChange
        OnChangingToTab = pgOperacaoChangingToTab
        ActivePageIndex = 0
        Transparent = False
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
        object tsItens: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'tsItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          DesignSize = (
            776
            451)
          object spFoto: TTS_Shape
            Left = 1
            Top = 137
            Width = 194
            Height = 146
            Brush.Style = bsClear
            Pen.Color = 7171510
            TagStr = 'CV'
            Transparent = False
          end
          object imgFoto: TTS_Image
            Left = 2
            Top = 138
            Width = 192
            Height = 144
            Stretch = True
            OnDblClick = imgFotoDblClick
          end
          object TS_Label3: TTS_Label
            Left = 357
            Top = 95
            Width = 56
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Vendedor:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dd_mm_yyyy: TTS_DBText
            Left = 690
            Top = 95
            Width = 84
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'DATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clRed
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
            EditOffSet.x = 0
            EditOffSet.y = 0
          end
          object TS_Shape9: TTS_Shape
            Left = 355
            Top = 110
            Width = 421
            Height = 338
            Anchors = [akTop, akRight, akBottom]
            Brush.Style = bsClear
            Pen.Color = 7171510
            TagStr = 'CV'
            Transparent = False
          end
          object TS_DBText2: TTS_DBText
            Left = 411
            Top = 95
            Width = 172
            Height = 14
            Anchors = [akTop, akRight]
            DataField = 'lkVendedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
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
          object imgLogo: TTS_Image
            Left = 135
            Top = 340
            Width = 215
            Height = 108
            Anchors = [akRight, akBottom]
            Center = True
            Transparent = True
          end
          object TS_Image2: TTS_Image
            Left = 3
            Top = 388
            Width = 93
            Height = 60
            Anchors = [akLeft]
            Center = True
            Transparent = True
          end
          object lbEstoque: TTS_Label
            Left = 2
            Top = 284
            Width = 56
            Alignment = taLeftJustify
            Caption = 'Estoque:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbCusto: TTS_Label
            Left = 2
            Top = 325
            Width = 56
            Alignment = taLeftJustify
            Caption = 'CST.:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbMPV: TTS_Label
            Left = 2
            Top = 338
            Width = 56
            Alignment = taLeftJustify
            Caption = 'MPV.:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbGrupo: TTS_Label
            Left = 2
            Top = 297
            Width = 56
            Alignment = taLeftJustify
            Caption = 'Grupo:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbFabricante: TTS_Label
            Left = 2
            Top = 311
            Width = 56
            Alignment = taLeftJustify
            Caption = 'Fabricante:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dbtEstoque: TTS_DBTextEffect
            Left = 60
            Top = 285
            Width = 133
            Height = 14
            Cursor = crHandPoint
            DataField = 'icEstoque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmCliente
            Transparent = True
            OnClick = pmInformarNomedoClienteClick
            EditOffSet.x = 0
            EditOffSet.y = 0
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
          end
          object dbtGrupo: TTS_DBTextEffect
            Left = 60
            Top = 298
            Width = 133
            Height = 14
            Cursor = crHandPoint
            DataField = 'DescricaoGrupo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmCliente
            Transparent = True
            OnClick = pmInformarNomedoClienteClick
            EditOffSet.x = 0
            EditOffSet.y = 0
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
          end
          object dbtFabricante: TTS_DBTextEffect
            Left = 60
            Top = 311
            Width = 133
            Height = 14
            Cursor = crHandPoint
            DataField = 'DescFabricante'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmCliente
            Transparent = True
            OnClick = pmInformarNomedoClienteClick
            EditOffSet.x = 0
            EditOffSet.y = 0
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
          end
          object dbtCusto: TTS_DBTextEffect
            Left = 60
            Top = 324
            Width = 70
            Height = 14
            Cursor = crHandPoint
            DataField = 'icCusto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmCliente
            Transparent = True
            OnClick = pmInformarNomedoClienteClick
            EditOffSet.x = 0
            EditOffSet.y = 0
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
          end
          object dbtMPV: TTS_DBTextEffect
            Left = 60
            Top = 338
            Width = 70
            Height = 14
            Cursor = crHandPoint
            DataField = 'icMPV'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmCliente
            Transparent = True
            OnClick = pmInformarNomedoClienteClick
            EditOffSet.x = 0
            EditOffSet.y = 0
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
          end
          object pnItem: TTS_Panel
            Tag = -1
            Left = 1
            Top = 96
            Width = 352
            Height = 41
            HelpContext = -1
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 0
            BackgroundOptions.Opaque = False
            object pnProduto: TTS_Panel
              Tag = -1
              Left = 0
              Top = 0
              Width = 192
              Height = 41
              HelpContext = -1
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              BackgroundOptions.Opaque = False
              DesignSize = (
                192
                41)
              object TS_Shape4: TTS_Shape
                Left = 0
                Top = 14
                Width = 190
                Height = 24
                Anchors = [akLeft, akTop, akRight]
                Brush.Style = bsClear
                Pen.Color = 7171510
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object TS_Label1: TTS_Label
                Left = 2
                Top = -1
                Width = 56
                Alignment = taLeftJustify
                Caption = 'Produto'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfItem: TTS_EditItem
                Tag = -2
                Left = 2
                Top = 16
                Width = 186
                Hint = 
                  'Para abrir o cadastro, pressione a tecla F7.'#13'# -> No in'#237'cio do T' +
                  'exto for'#231'a uma pesquisa pelo C'#243'digo. Ex: #123'#13'& -> No in'#237'cio do ' +
                  'Texto for'#231'a uma pesquisa pela Refer'#234'ncia. Ex: &RF1234-567'
                HelpContext = -2
                Color = 14674687
                Style.BorderColor = 33023
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.HotTrack = True
                Style.Shadow = False
                TabOrder = 0
                Anchors = [akLeft, akTop, akRight]
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
                    Visible = False
                    Width = 17
                  end>
                ClickKey = 0
                PermitirQuantidade = True
                SelecionarVariosItens = True
                TipoItem = '1,2,3'
                C_Localizar = DMProjeto.C_LocalizarItens
                ID = 0
                OnSelecionou = dfItemSelecionou
                OnIniciarLocalizar = dfItemIniciarLocalizar
                Height = 20
                ExistButtons = True
              end
            end
            object pnQuantidade: TTS_Panel
              Tag = -1
              Left = 192
              Top = 0
              Width = 65
              Height = 41
              HelpContext = -1
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              OnExit = pnQuantidadeExit
              BackgroundOptions.Opaque = False
              DesignSize = (
                65
                41)
              object TS_Shape5: TTS_Shape
                Left = 0
                Top = 14
                Width = 63
                Height = 24
                Anchors = [akLeft, akTop, akRight, akBottom]
                Brush.Style = bsClear
                Pen.Color = 7171510
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object lbQuantidade: TTS_Label
                Left = 3
                Top = -1
                Width = 53
                Alignment = taLeftJustify
                Caption = 'Qtd.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfQuantidade: TTS_CalcEdit
                Tag = -2
                Left = 2
                Top = 16
                Width = 59
                HelpContext = -2
                Color = 14674687
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 33023
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                Style.HotTrack = True
                Style.Shadow = False
                TabOrder = 0
                OnKeyPress = dfQuantidadeKeyPress
                Text = '1'
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
                DisplayFormat = '#,##0.###'
                Value = 1
                Height = 20
                StoredValues = 1
              end
            end
            object pnPreco: TTS_Panel
              Tag = -1
              Left = 257
              Top = 0
              Width = 95
              Height = 41
              HelpContext = -1
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              OnExit = pnPrecoExit
              BackgroundOptions.Opaque = False
              DesignSize = (
                95
                41)
              object TS_Shape7: TTS_Shape
                Left = 1
                Top = 14
                Width = 93
                Height = 24
                Anchors = [akLeft, akTop, akRight, akBottom]
                Brush.Style = bsClear
                Pen.Color = 7171510
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object lbPreco: TTS_Label
                Left = 4
                Top = -1
                Width = 49
                Alignment = taLeftJustify
                Caption = 'Pre'#231'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfPreco: TdxPopupEdit
                Tag = -17
                Left = 3
                Top = 16
                Width = 89
                HelpContext = -17
                Color = 14674687
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 33023
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                TabOrder = 0
                OnKeyPress = dfPrecoKeyPress
                AutoSize = False
                ButtonGlyph.Data = {
                  FE080000424DFE0800000000000036080000280000000A0000000A0000000100
                  100003000000C800000000000000000000000001000000000000007C0000E003
                  00001F0000000000000000008000008000000080800080000000800080008080
                  0000C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020
                  C0000020E00000400000004020000040400000406000004080000040A0000040
                  C0000040E00000600000006020000060400000606000006080000060A0000060
                  C0000060E00000800000008020000080400000806000008080000080A0000080
                  C0000080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0
                  C00000A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0
                  C00000C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0
                  C00000E0E00040000000400020004000400040006000400080004000A0004000
                  C0004000E00040200000402020004020400040206000402080004020A0004020
                  C0004020E00040400000404020004040400040406000404080004040A0004040
                  C0004040E00040600000406020004060400040606000406080004060A0004060
                  C0004060E00040800000408020004080400040806000408080004080A0004080
                  C0004080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0
                  C00040A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0
                  C00040C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0
                  C00040E0E00080000000800020008000400080006000800080008000A0008000
                  C0008000E00080200000802020008020400080206000802080008020A0008020
                  C0008020E00080400000804020008040400080406000804080008040A0008040
                  C0008040E00080600000806020008060400080606000806080008060A0008060
                  C0008060E00080800000808020008080400080806000808080008080A0008080
                  C0008080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0
                  C00080A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0
                  C00080C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0
                  C00080E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000
                  C000C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020
                  C000C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040
                  C000C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060
                  C000C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080
                  C000C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0
                  C000C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FB
                  FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
                  0000FFFFFF001F7C000000000000000000000000000000001F7C100210021000
                  10001000100010001000100000001002FF7F1002100210021002100210021000
                  00001002FF0310020000FF7F0000FF7F0000100000001002FF7F100210021002
                  100210021002100000001002FF03000018631863186318631863100000001002
                  FF7F0000FF7FFF7FFF7FFF7F1863100000001002FF0300000000000000000000
                  0000100000001002FF7FFF03FF7FFF03FF7FFF03FF7F100200001F7C10021002
                  1002100210021002100210021F7C}
                PopupFormBorderStyle = pbsSimple
                PopupSizeable = False
                OnCloseUp = dfPrecoCloseUp
                OnInitPopup = dfPrecoInitPopup
                OnPopup = dfPrecoPopup
                Height = 20
              end
            end
          end
          object dbgItens: TTS_QDBGrid
            Tag = -2
            Left = 356
            Top = 111
            Width = 419
            Height = 336
            HelpContext = -2
            Bands = <
              item
                Caption = 'dsfadsfasdfa'
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 2
            KeyField = 'IDITEM'
            SummaryGroups = <>
            SummarySeparator = '|'
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            PopupMenu = ppmItens
            ShowHint = False
            TabOrder = 3
            OnEnter = dbgItensEnter
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DefaultRowHeight = 20
            Filter.Criteria = {00000000}
            GridLineColor = clSilver
            GroupPanelColor = 16247774
            GroupNodeColor = 15461355
            GroupNodeTextColor = 16309210
            HeaderColor = 10921682
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HideFocusRect = True
            HideSelection = True
            HighlightColor = 14859922
            OptionsBehavior = [edgoAutoSearch, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoPartialLoad, edgoUseBookmarks, edgoUseLocate]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoPreview, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            PreviewLines = 1
            PreviewMaxLength = 5
            ScrollBars = ssVertical
            ShowGrid = False
            OnCustomDrawCell = dbgItensCustomDrawCell
            Anchors = [akTop, akRight, akBottom]
            TS_PermitirQuantidade = True
            TS_DescriptionCanChange = True
            TS_BeforeDeleteAll = dbgItensTS_BeforeDeleteAll
            TS_GridMenuOptions = [gmLayout, gmDados, gmImprimir, gmExportar]
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
            TS_BeforeLocalizar = dbgItensTS_BeforeLocalizar
            TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterFont.Color = clWindowText
            TS_SummaryFooterFont.Height = -11
            TS_SummaryFooterFont.Name = 'Tahoma'
            TS_SummaryFooterFont.Style = []
            TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
            TS_SummaryFooterSelFont.Color = clWindowText
            TS_SummaryFooterSelFont.Height = -11
            TS_SummaryFooterSelFont.Name = 'Tahoma'
            TS_SummaryFooterSelFont.Style = []
            TS_LikeString = False
            TS_SelectionColor = 12054783
            TS_SelectionFont.Charset = DEFAULT_CHARSET
            TS_SelectionFont.Color = clWindowText
            TS_SelectionFont.Height = -11
            TS_SelectionFont.Name = 'Tahoma'
            TS_SelectionFont.Style = []
            TS_SelectedColumn = 'SEQUENCIA'
            TS_ID = 0
            TS_ChaveEstrangeira = 'ITEM'
            TS_C_Localizar = DMProjeto.C_LocalizarItens
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object dbgItensSEQUENCIA: TdxDBGridMaskColumn
              Alignment = taLeftJustify
              Caption = '#'
              DisableCustomizing = True
              DisableEditor = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HeaderAlignment = taCenter
              TabStop = False
              Width = 30
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'SEQUENCIA'
              DisableFilter = True
            end
            object dbgItensColumn34: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'T'
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              TabStop = False
              Width = 21
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SITUACAOECF'
            end
            object dbgItensI_CODIGO: TdxDBGridMaskColumn
              Caption = 'C'#243'digo Item'
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              TabStop = False
              Width = 67
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'I_CODIGO'
              DisableFilter = True
            end
            object dbgItensDESCRICAO: TdxDBGridMaskColumn
              Caption = 'Descri'#231#227'o'
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Width = 161
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'DESCRICAO'
              DisableFilter = True
            end
            object dbgItensReferencia: TdxDBGridMaskColumn
              Caption = 'Referencia'
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 88
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'I_REFERENCIA'
              DisableFilter = True
            end
            object dbgItensQUANTIDADE: TdxDBGridMaskColumn
              Alignment = taCenter
              Caption = 'Qtd.'
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Width = 81
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'QUANTIDADE'
              DisableFilter = True
              StoredRowIndex = 1
            end
            object dbgItensI_UNIDADE: TdxDBGridLookupColumn
              Caption = 'Unid.'
              DisableCustomizing = True
              HeaderAlignment = taCenter
              TabStop = False
              Width = 52
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'lkUnidade'
              DisableFilter = True
            end
            object dbgItensX: TdxDBGridColumn
              Alignment = taCenter
              Caption = 'X'
              HeaderAlignment = taCenter
              TabStop = False
              Width = 25
              BandIndex = 0
              RowIndex = 1
              FieldName = 'icX'
              StoredRowIndex = 1
            end
            object dbgItensPRECO: TdxDBGridMaskColumn
              Alignment = taCenter
              Caption = 'Pre'#231'o'
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Width = 138
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'PRECO'
              DisableFilter = True
              StoredRowIndex = 1
            end
            object dbgItensIG: TdxDBGridColumn
              Alignment = taCenter
              Caption = '='
              HeaderAlignment = taCenter
              TabStop = False
              Width = 23
              BandIndex = 0
              RowIndex = 1
              FieldName = 'icIG'
              StoredRowIndex = 1
            end
            object dbgItensSubTotal: TdxDBGridColumn
              Alignment = taCenter
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 152
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'SubTotal'
              DisableFilter = True
              StoredRowIndex = 1
            end
            object dbgItensQtdFaturada: TdxDBGridMaskColumn
              Caption = 'Qtd. Faturada'
              Color = 15921906
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 71
              BandIndex = 0
              RowIndex = 1
              FieldName = 'QTDFATURADA'
              StoredRowIndex = 1
            end
            object dbgItensStatus: TdxDBGridImageColumn
              Alignment = taLeftJustify
              Caption = 'Status'
              MinWidth = 16
              Visible = False
              Width = 34
              BandIndex = 0
              RowIndex = 1
              FieldName = 'STATUS'
              Descriptions.Strings = (
                'Balc'#227'o de Entrega'
                'Expedi'#231#227'o'
                'Encomenda'
                'Entregue'
                'Montagem')
              ImageIndexes.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4')
              Values.Strings = (
                'B'
                'C'
                'D'
                'E'
                'M')
              StoredRowIndex = 1
            end
            object dbgItensNumeroLote: TdxDBGridPopupColumn
              Caption = 'Lote #'
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 47
              BandIndex = 0
              RowIndex = 1
              FieldName = 'NumeroLote'
              PopupFormBorderStyle = pbsSysPanel
              StoredRowIndex = 1
            end
            object dbgItensColuna1: TdxDBGridColumn
              DisableCustomizing = True
              Visible = False
              Width = 119
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'COLUNA1'
              DisableFilter = True
              StoredRowIndex = 2
            end
            object dbgItensColuna2: TdxDBGridColumn
              DisableCustomizing = True
              Visible = False
              Width = 119
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'COLUNA2'
              DisableFilter = True
              StoredRowIndex = 2
            end
            object dbgItensColuna3: TdxDBGridColumn
              DisableCustomizing = True
              Visible = False
              Width = 119
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'COLUNA3'
              DisableFilter = True
              StoredRowIndex = 2
            end
            object dbgItensColuna4: TdxDBGridColumn
              DisableCustomizing = True
              Visible = False
              Width = 119
              BandIndex = 0
              RowIndex = 1
              DisableGrouping = True
              FieldName = 'COLUNA4'
              DisableFilter = True
              StoredRowIndex = 2
            end
            object dbgItensI_Descricao: TdxDBGridColumn
              DisableEditor = True
              TabStop = False
              Visible = False
              Width = 272
              BandIndex = 0
              RowIndex = 0
              FieldName = 'I_DESCRICAO'
            end
            object dbgItensPromocao: TdxDBGridColumn
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 58
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PROMOCAO'
            end
            object dbgItensBaixaEstoque: TdxDBGridColumn
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 76
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BAIXAESTOQUE'
            end
            object dbgItensAliqICMS: TdxDBGridMaskColumn
              Caption = '% ICMS'
              DisableEditor = True
              HeaderAlignment = taCenter
              Width = 33
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ALIQICMS'
            end
            object dbgItensI_Percentual: TdxDBGridColumn
              DisableCaption = True
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              Width = 111
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'I_PERCENTUAL'
              DisableFilter = True
            end
            object dbgItensIPI: TdxDBGridMaskColumn
              Caption = '% IPI'
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 33
              BandIndex = 0
              RowIndex = 0
            end
            object dbgItensTVA: TdxDBGridMaskColumn
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 33
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TVA'
            end
            object dbgItensNumeroItem: TdxDBGridColumn
              Caption = 'N'#186' Item'
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 36
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NUMEROITEM'
            end
            object dbgItensRegistro: TdxDBGridColumn
              Caption = 'N'#186' Registro'
              DisableCustomizing = True
              DisableEditor = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 54
              BandIndex = 0
              RowIndex = 0
              FieldName = 'REGISTRO'
            end
            object dbgItensCFOP: TdxDBGridPopupColumn
              Caption = 'CFOP'
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 30
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CFOPNOTA'
            end
            object dbgItensBaixoEstoque: TdxDBGridColumn
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              Width = 77
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'cfBaixoEstoque'
              DisableFilter = True
            end
            object dbgItensTipoItem: TdxDBGridColumn
              Caption = 'TipItem'
              DisableCaption = True
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              Width = 44
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'I_TIPOITEM'
              DisableFilter = True
            end
            object dbgItensUltrapassouMesclagem: TdxDBGridColumn
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 92
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'UltrapassouMesclagem'
              DisableFilter = True
            end
            object dbgItensUsoTipoItem: TdxDBGridColumn
              Caption = 'UsoItem'
              DisableCustomizing = True
              DisableDragging = True
              DisableEditor = True
              Visible = False
              Width = 79
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'USOTIPOITEM'
              DisableFilter = True
            end
            object dbgItensMesclado: TdxDBGridColumn
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 44
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'MESCLADO'
              DisableFilter = True
            end
            object dbgItensColumn35: TdxDBGridColumn
              DisableCustomizing = True
              DisableEditor = True
              Visible = False
              Width = 43
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDITEM'
            end
          end
          object pnProdutoEscolhido: TTS_Panel
            Left = 0
            Top = 0
            Width = 776
            Height = 93
            Align = alTop
            BevelOuter = bvNone
            Color = 14674687
            TabOrder = 4
            DesignSize = (
              776
              93)
            object TS_Shape16: TTS_Shape
              Left = 4
              Top = 6
              Width = 773
              Height = 87
              Anchors = [akLeft, akTop, akRight]
              Brush.Color = clGray
              Pen.Color = clSilver
              Transparent = False
            end
            object spItens: TTS_Shape
              Left = 0
              Top = 0
              Width = 774
              Height = 90
              Anchors = [akLeft, akTop, akRight]
              Brush.Color = 14674687
              Pen.Color = 7171510
              Transparent = False
            end
            object dbtPrecoUnit: TTS_DBTextEffect
              Left = 192
              Top = 59
              Width = 131
              Height = 27
              Alignment = taCenter
              Anchors = [akTop]
              DataField = 'PRECO'
              Effects.Style = tsRaised
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              NullValue = '0.00'
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object TS_Shape3: TTS_Shape
              Left = 0
              Top = 49
              Width = 564
              Height = 3
              Anchors = [akLeft, akTop, akRight]
              Brush.Style = bsClear
              Pen.Color = 7171510
              Shape = stRoundRect
              TagStr = 'CV'
              Transparent = False
            end
            object dbtQuantidade: TTS_DBTextEffect
              Left = 32
              Top = 58
              Width = 96
              Height = 27
              Alignment = taCenter
              Anchors = [akTop]
              DataField = 'QUANTIDADE'
              Effects.Style = tsRaised
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              NullValue = '0.00'
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object dbtDescItem: TTS_DBTextEffect
              Left = 5
              Top = 10
              Width = 556
              Height = 33
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              DataField = 'DESCRICAO'
              Effects.Style = tsRaised
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -24
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object lbX: TdxfLabel
              Left = 142
              Top = 50
              Width = 38
              Height = 41
              Anchors = [akTop]
              AutoSize = False
              Caption = 'X'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Style = dxfOutLine
              Angle = 0
              Effect3D.Style = dxfFun
              Effect3D.Orientation = dxfLeftBottom
              Effect3D.Depth = 1
              Effect3D.ShadowedColor = clGray
              PenWidth = 1
            end
            object lbIg: TdxfLabel
              Left = 344
              Top = 55
              Width = 27
              Height = 26
              Anchors = [akTop]
              AutoSize = False
              Caption = '='
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -37
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Style = dxfOutLine
              Angle = 0
              Effect3D.Style = dxfFun
              Effect3D.Orientation = dxfLeftBottom
              Effect3D.Depth = 1
              Effect3D.ShadowedColor = clGray
              PenWidth = 1
            end
            object dbtSubTotal: TTS_DBTextEffect
              Left = 383
              Top = 59
              Width = 142
              Height = 28
              Alignment = taCenter
              Anchors = [akTop]
              DataField = 'SubTotal'
              Effects.Style = tsRaised
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              NullValue = '0.00'
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object TS_Shape10: TTS_Shape
              Left = 563
              Top = 0
              Width = 211
              Height = 50
              Anchors = [akTop, akRight]
              Brush.Style = bsClear
              Pen.Color = 7171510
              TagStr = 'CV'
              Transparent = False
            end
            object TS_DBTextEffect5: TTS_DBTextEffect
              Left = 570
              Top = 1
              Width = 198
              Height = 46
              Alignment = taCenter
              Anchors = [akTop, akRight]
              DataField = 'TOTALITENS'
              Effects.Pen.Color = clGreen
              Effects.Style = tsRaised
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -35
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              NullValue = '0.00'
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object TS_Shape6: TTS_Shape
              Left = 563
              Top = 51
              Width = 211
              Height = 39
              Anchors = [akTop, akRight]
              Brush.Style = bsClear
              Pen.Color = 7171510
              TagStr = 'CV'
              Transparent = False
            end
            object TS_DBTextEffect3: TTS_DBTextEffect
              Left = 570
              Top = 57
              Width = 198
              Height = 32
              Alignment = taCenter
              Anchors = [akTop, akRight]
              DataField = 'VOLUMES'
              Effects.Pen.Color = clGreen
              Effects.Style = tsRaised
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -24
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              NullValue = '0.00'
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object TS_Label2: TTS_Label
              Left = 565
              Top = -1
              Width = 207
              Alignment = taCenter
              Anchors = [akTop, akRight]
              Caption = 'Total dos Itens'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label4: TTS_Label
              Left = 635
              Top = 50
              Width = 68
              Alignment = taCenter
              Anchors = [akTop, akRight]
              Caption = 'Volumes'
              FormatoTabela = False
              LinkToResult = 0
            end
          end
          object pnCliente: TTS_Panel
            Tag = -1
            Left = 0
            Top = 0
            Width = 564
            Height = 91
            HelpContext = -1
            Anchors = [akLeft, akTop, akRight]
            BevelInner = bvLowered
            BevelWidth = 2
            TabOrder = 1
            Visible = False
            OnExit = pnClienteExit
            BackgroundOptions.GlassColor = clGray
            DesignSize = (
              564
              91)
            object lbPedidoCliente: TdxfLabel
              Left = 433
              Top = 12
              Width = 105
              Height = 35
              Hint = 'Nome do'
              Anchors = [akTop, akRight]
              AutoSize = False
              Caption = 'Pedido #'
              Color = 16744448
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Transparent = True
              Visible = False
              Style = dxfOutLine
              Angle = 0
              Effect3D.Style = dxfFun
              Effect3D.Orientation = dxfLeftBottom
              Effect3D.Depth = 1
              Effect3D.ShadowedColor = clSilver
              PenWidth = 1
            end
            object dfPedidoCliente: TTS_DBMaskEdit
              Left = 427
              Top = 47
              Width = 128
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnKeyPress = dfPedidoClienteKeyPress
              Anchors = [akTop, akRight]
              DataField = 'PEDIDO_CLIENTE'
              IgnoreMaskBlank = False
              StyleController = esPedidoRapido
              Height = 26
            end
            object pnInfoCliente: TTS_Panel
              Tag = -1
              Left = 7
              Top = 7
              Width = 410
              Height = 78
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              OnExit = pnClienteExit
              object dbtObs: TTS_DBTextEffect
                Left = 200
                Top = 60
                Width = 206
                Height = 15
                DataField = 'F_OBS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
                EditOffSet.x = 0
                EditOffSet.y = 0
                NullValue = 'Observa'#231#245'es...'
                AllowEditOnClick = False
                EditFont.Charset = DEFAULT_CHARSET
                EditFont.Color = clWindowText
                EditFont.Height = -11
                EditFont.Name = 'MS Sans Serif'
                EditFont.Style = []
              end
              object TS_DBEdit1: TTS_DBEdit
                Tag = -2
                Left = 1
                Top = 41
                Width = 196
                Hint = 'Endere'#231'o'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 6
                DataField = 'F_ENDERECO'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit2: TTS_DBEdit
                Tag = -2
                Left = 299
                Top = 41
                Width = 80
                Hint = 'Cidade'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 8
                DataField = 'F_CIDADE'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit3: TTS_DBEdit
                Tag = -2
                Left = 379
                Top = 41
                Width = 28
                Hint = 'Estado'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 9
                DataField = 'F_UF'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit4: TTS_DBEdit
                Tag = -2
                Left = 1
                Top = 58
                Width = 73
                Hint = 'Zip Code'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 10
                DataField = 'F_CEP'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit5: TTS_DBEdit
                Tag = -2
                Left = 73
                Top = 58
                Width = 124
                Hint = 'email'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 11
                OnDblClick = TS_DBEdit5DblClick
                DataField = 'F_EMAIL'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit6: TTS_DBEdit
                Tag = -2
                Left = 222
                Top = 24
                Width = 96
                Hint = 'Telefone'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 4
                DataField = 'F_FONE1'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object cmbTipoFav: TTS_DBLookupTipoFav
                Tag = -2
                Left = 1
                Top = 0
                Width = 125
                Hint = 
                  'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
                  ' de edi'#231#227'o ao lado.'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                AutoSize = False
                StyleController = esPedidoRapido
                DropDownRows = 15
                ListFieldName = 'DESCRICAO'
                KeyFieldName = 'TIPOFAVORECIDO'
                ListSource = DMProjeto.C_TipoFavDS
                LookupKeyValue = Null
                TipoFavorecido = 1
                Height = 24
              end
              object dfFavorecido: TTS_DBEditFavorecido
                Tag = -2
                Left = 125
                Top = 0
                Width = 283
                Hint = 
                  'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
                  'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
                  ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
                  ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
                  #227'o'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.ButtonStyle = btsFlat
                TabOrder = 1
                DataField = 'F_NOME'
                StyleController = esPedidoRapido
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
                  end
                  item
                    Default = False
                    Glyph.Data = {
                      66020000424D660200000000000036000000280000000D0000000E0000000100
                      1800000000003002000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C000C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0
                      C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C000000000FFFF00FFFF00FFFF00
                      FFFF00FFFF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C000000000FFFF00FF
                      FF007F7F007F7F007F7F007F7F00FFFF000000C0C0C0C0C0C000C0C0C0000000
                      00FFFF00FFFF007F7F00FFFF00FFFF00FFFF00FFFF007F7F00FFFF000000C0C0
                      C000C0C0C000000000FFFF007F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FFFF000000C0C0C000C0C0C000000000FFFF007F7F00FFFF00FFFF00FFFF00
                      FFFF00FFFFFFFFFF00FFFF000000C0C0C000C0C0C000000000FFFF007F7F00FF
                      FF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFF000000C0C0C000C0C0C0000000
                      00FFFF007F7F00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF000000C0C0
                      C000C0C0C000000000FFFF007F7F00FFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF
                      00FFFF000000C0C0C000C0C0C0C0C0C000000000FFFF00FFFFFFFFFFFFFFFFFF
                      FFFF00FFFF00FFFF000000C0C0C0C0C0C000C0C0C0C0C0C0C0C0C000000000FF
                      FF00FFFF00FFFF00FFFF00FFFF000000C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
                      C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0
                      C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C000}
                    Kind = bkGlyph
                    Visible = False
                  end>
                LookupTipoFav = cmbTipoFav
                SelecionarVarios = False
                C_Localizar = DMProjeto.C_LocalizarFav
                ID = 0
                ChaveEstrangeira = 'FAVORECIDO'
                OnSelecionou = dfFavorecidoSelecionou
                Height = 24
                ExistButtons = True
              end
              object TS_DBEdit13: TTS_DBEdit
                Tag = -2
                Left = 197
                Top = 41
                Width = 102
                Hint = 'Bairro'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 7
                DataField = 'F_Bairro'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit14: TTS_DBEdit
                Tag = -2
                Left = 1
                Top = 24
                Width = 125
                Hint = 'CPF ou CNPJ'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 2
                TabStop = False
                DataField = 'F_CPF_CNPJ'
                ReadOnly = True
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
                StoredValues = 64
              end
              object TS_DBEdit15: TTS_DBEdit
                Tag = -2
                Left = 126
                Top = 24
                Width = 96
                Hint = 'Inscri'#231#227'o Estadual'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 3
                TabStop = False
                DataField = 'F_Inscricao_Est'
                ReadOnly = True
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
                StoredValues = 64
              end
              object TS_DBEdit16: TTS_DBEdit
                Tag = -2
                Left = 318
                Top = 24
                Width = 89
                Hint = 'Fax'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsSingle
                TabOrder = 5
                DataField = 'F_FAX'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 17
              end
            end
          end
          object pnConsultaPrecos: TTS_Panel
            Tag = -1
            Left = 0
            Top = 0
            Width = 774
            Height = 91
            Hint = 'Consulta de Pre'#231'o...'
            HelpContext = -1
            Anchors = [akLeft, akTop, akRight]
            BevelInner = bvLowered
            BevelWidth = 2
            Color = 13303807
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ParentFont = False
            TabOrder = 2
            Visible = False
            DesignSize = (
              774
              91)
            object lbDescricaoConsulta: TTS_Label
              Left = 7
              Top = 3
              Width = 764
              Height = 42
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Descri'#231#227'o do Item'
              Font.Charset = ANSI_CHARSET
              Font.Color = 4227327
              Font.Height = -32
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object spConsultaPrecos: TTS_Shape
              Left = 3
              Top = 47
              Width = 768
              Height = 1
              Anchors = [akLeft, akTop, akRight]
              Brush.Style = bsClear
              Pen.Color = 7171510
              Shape = stRoundRect
              Visible = False
              TagStr = 'CV'
              Transparent = False
            end
            object lbPrecoConsulta: TTS_Label
              Left = 7
              Top = 50
              Width = 761
              Height = 37
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              Caption = '0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -29
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
              FormatoTabela = False
              LinkToResult = 0
            end
          end
          object pnPreco2: TPanel
            Tag = -1
            Left = 377
            Top = 155
            Width = 216
            Height = 278
            HelpContext = -1
            TabOrder = 5
            Visible = False
            object pnCalc: TPanel
              Tag = -1
              Left = 1
              Top = 110
              Width = 214
              Height = 167
              HelpContext = -1
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object dxCalculator1: TdxCalculator
                Tag = -2
                Left = 4
                Top = 24
                Width = 210
                Height = 139
                HelpContext = -2
                TabOrder = 0
                OnKeyPress = dxCalculator1KeyPress
                Associate = dxCalcDisplay
                ButtonStyle = bsFlat
              end
              object dxCalcDisplay: TdxCalcDisplay
                Tag = -1
                Left = 5
                Top = 3
                Width = 205
                Height = 21
                HelpContext = -1
                TabStop = False
                Text = '0'
              end
            end
            object pnOutros: TPanel
              Tag = -1
              Left = 1
              Top = 1
              Width = 214
              Height = 109
              HelpContext = -1
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object dbgTabelasPreco: TTS_QDBGrid
                Tag = -2
                Left = 0
                Top = 23
                Width = 214
                Height = 86
                HelpContext = -2
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'TABELAPRECO'
                SummaryGroups = <>
                SummarySeparator = '|'
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = dbgTabelasPrecoClick
                OnDblClick = dbgTabelasPrecoDblClick
                OnKeyDown = dbgTabelasPrecoKeyDown
                AutoSearchColor = 6611199
                AutoSearchTextColor = clBlue
                BandFont.Charset = DEFAULT_CHARSET
                BandFont.Color = clWindowText
                BandFont.Height = -11
                BandFont.Name = 'MS Sans Serif'
                BandFont.Style = []
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
                HideSelectionColor = 16116702
                HideSelectionTextColor = clBlack
                HighlightColor = 16116702
                HighlightTextColor = clBlack
                OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                OnChangeNode = dbgTabelasPrecoChangeNode
                OnCustomDrawCell = dbgTabelasPrecoCustomDrawCell
                OnCustomDrawColumnHeader = dbgTabelasPrecoCustomDrawColumnHeader
                TS_PermitirQuantidade = False
                TS_DescriptionCanChange = False
                TS_AppendOnEnter = False
                RowFooterNodeFont.Charset = DEFAULT_CHARSET
                RowFooterNodeFont.Color = clWindowText
                RowFooterNodeFont.Height = -11
                RowFooterNodeFont.Name = 'Tahoma'
                RowFooterNodeFont.Style = [fsBold]
                TS_AccountFooterStyle = False
                TS_HideFocusedRect = hfShowAlways
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
                TS_MultiSelection = False
                TS_LikeString = False
                TS_SelectionColor = 12054783
                TS_SelectionFont.Charset = DEFAULT_CHARSET
                TS_SelectionFont.Color = clWindowText
                TS_SelectionFont.Height = -11
                TS_SelectionFont.Name = 'Tahoma'
                TS_SelectionFont.Style = [fsBold]
                TS_SelectedColumn = 'DESCRICAO'
                TS_ID = 0
                TS_TipoDescricao = tdVenda
                TS_SummaryFooterQtdText = 'Qtd. Geral:'
                TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
                object dbgTabelasPrecoDESCRICAO: TdxDBGridMaskColumn
                  Alignment = taLeftJustify
                  Caption = 'Tabela de Pre'#231'o'
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 111
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'DESCRICAO'
                  DisableFilter = True
                end
                object dbgTabelasPrecoPRECO: TdxDBGridMaskColumn
                  Alignment = taRightJustify
                  Caption = 'Pre'#231'o'
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Width = 84
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'PRECO'
                  DisableFilter = True
                end
                object dbgTabelasPrecoITEM: TdxDBGridMaskColumn
                  DisableCustomizing = True
                  DisableDragging = True
                  Visible = False
                  Width = 46
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'ITEM'
                  DisableFilter = True
                end
                object dbgTabelasPrecoTABELAPRECO: TdxDBGridMaskColumn
                  Caption = 'tabelapreco'
                  DisableCustomizing = True
                  DisableDragging = True
                  Visible = False
                  Width = 55
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'TABELAPRECO'
                  DisableFilter = True
                end
                object dbgTabelasPrecoPRECOMANUAL: TdxDBGridMaskColumn
                  DisableCustomizing = True
                  DisableDragging = True
                  Visible = False
                  Width = 57
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'PRECOMANUAL'
                  DisableFilter = True
                end
                object dbgTabelasPrecoColumn7: TdxDBGridColumn
                  DisableCustomizing = True
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'ProdutoPreco'
                end
              end
              object TS_Panel3: TTS_Panel
                Left = 0
                Top = 0
                Width = 214
                Height = 23
                Align = alTop
                BevelInner = bvLowered
                TabOrder = 1
                object TS_Label48: TTS_Label
                  Left = 5
                  Top = 5
                  Width = 28
                  Caption = 'Item:'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lbDescItem: TTS_DBTextEffect
                  Left = 36
                  Top = 5
                  Width = 174
                  Height = 14
                  DataField = 'DESCITEM'
                  EditOffSet.x = 0
                  EditOffSet.y = 0
                  AllowEditOnClick = False
                  EditFont.Charset = DEFAULT_CHARSET
                  EditFont.Color = clWindowText
                  EditFont.Height = -11
                  EditFont.Name = 'MS Sans Serif'
                  EditFont.Style = []
                end
              end
            end
          end
        end
        object tsTermos: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'tsTermos'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          DesignSize = (
            776
            451)
          object spTotalFinal: TTS_Shape
            Left = 568
            Top = 14
            Width = 208
            Height = 43
            Anchors = [akTop, akRight]
            Brush.Style = bsClear
            Pen.Color = 7171510
            Pen.Width = 2
            TagStr = 'CV'
            Transparent = False
          end
          object dbtTotalFinal: TTS_DBTextEffect
            Left = 575
            Top = 14
            Width = 194
            Height = 38
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'TOTAL'
            Effects.Pen.Color = clGreen
            Effects.Style = tsRaised
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -29
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            EditOffSet.x = 0
            EditOffSet.y = 0
            NullValue = '0.00'
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
          end
          object lbTotalFinal: TTS_Label
            Left = 569
            Top = -2
            Width = 103
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Total Final'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object pnFiscal: TTS_Panel
            Left = 0
            Top = 243
            Width = 777
            Height = 204
            Anchors = [akLeft, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 3
            object TS_Label24: TTS_Label
              Left = 246
              Top = 1
              Width = 39
              Caption = 'S'#233'rie:'
              FocusControl = dfSerie
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label25: TTS_Label
              Left = 139
              Top = 1
              Width = 35
              Alignment = taLeftJustify
              Caption = 'CFOP:'
              FocusControl = dfCFOPNota
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Bevel2: TTS_Bevel
              Left = -10
              Top = 21
              Width = 571
              Height = 2
            end
            object TS_Label26: TTS_Label
              Left = 346
              Top = 1
              Width = 39
              Caption = 'Modelo:'
              FocusControl = dfModelo
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label45: TTS_Label
              Left = 451
              Top = 1
              Width = 49
              Caption = '% ICMS:'
              FocusControl = dfModelo
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label47: TTS_Label
              Left = 2
              Top = 1
              Width = 42
              Caption = 'N'#250'mero:'
              FocusControl = TS_DBEdit17
              FormatoTabela = False
              LinkToResult = 0
            end
            object pnBaseCalcICMS: TTS_Panel
              Tag = -1
              Left = 0
              Top = 26
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              object TS_Label27: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Base C'#225'lculo ICMS'
                Color = 10921682
                FocusControl = dfBaseCalculo
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfBaseCalculo: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'BASECALCICMS'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnValorICMS: TTS_Panel
              Tag = -1
              Left = 110
              Top = 26
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 6
              object TS_Label29: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor ICMS'
                Color = 10921682
                FocusControl = dfValorICMS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfValorICMS: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'VALORICMS'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnBaseCalcICMSSubst: TTS_Panel
              Tag = -1
              Left = 220
              Top = 26
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              object TS_Label30: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Base C'#225'lc. ICMS Subst.'
                Color = 10921682
                FocusControl = dfBaseCalcSubst
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfBaseCalcSubst: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'BASECALCSUBST'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnValorFrete: TTS_Panel
              Tag = -1
              Left = 0
              Top = 69
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 9
              object TS_Label31: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor do Frete'
                Color = 10921682
                FocusControl = dfValorFrete
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfValorFrete: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'FRETE'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnValorSeguro: TTS_Panel
              Tag = -1
              Left = 110
              Top = 69
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 10
              object TS_Label32: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor do Seguro'
                Color = 10921682
                FocusControl = dfValorSeguro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfValorSeguro: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'VALORSEGURO'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnOutrasDespesas: TTS_Panel
              Tag = -1
              Left = 220
              Top = 69
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 11
              object TS_Label33: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Outras Despesas'
                Color = 10921682
                FocusControl = dfOutrasDespesas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfOutrasDespesas: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'OUTRASDESPESAS'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnValorIPI: TTS_Panel
              Tag = -1
              Left = 330
              Top = 69
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 12
              object TS_Label34: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor do IPI'
                Color = 10921682
                FocusControl = dfValorIPI
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfValorIPI: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'VALORIPI'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnTotalNota: TTS_Panel
              Tag = -1
              Left = 440
              Top = 69
              Width = 118
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 13
              object TS_Label35: TTS_Label
                Left = 1
                Top = 1
                Width = 114
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Total da Nota'
                Color = 10921682
                FocusControl = dfTotal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfTotal: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 20
                Width = 112
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'TOTAL'
                ReadOnly = True
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
                Height = 22
                StoredValues = 65
              end
            end
            object pnValorICMSSubst: TTS_Panel
              Tag = -1
              Left = 330
              Top = 26
              Width = 111
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 8
              object TS_Label36: TTS_Label
                Left = 1
                Top = 1
                Width = 107
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Valor ICMS Subst.'
                Color = 10921682
                FocusControl = dfValorICMSSubst
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfValorICMSSubst: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 105
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'VALORICMSSUBST'
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
                Height = 22
                StoredValues = 1
              end
            end
            object pnTotalProdutos: TTS_Panel
              Tag = -1
              Left = 440
              Top = 26
              Width = 118
              Height = 44
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 21
              object TS_Label37: TTS_Label
                Left = 1
                Top = 1
                Width = 114
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Total Produtos'
                Color = 10921682
                FocusControl = dfTotalProdutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfTotalProdutos: TTS_DBEditNumber
                Tag = -2
                Left = 2
                Top = 19
                Width = 112
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                TabStop = False
                DataField = 'TOTALITENS'
                ReadOnly = True
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
                Height = 22
                StoredValues = 65
              end
            end
            object dfSerie: TTS_DBEdit
              Left = 288
              Top = -1
              Width = 36
              TabOrder = 2
              DataField = 'SERIENOTA'
              StyleController = esPedidoRapido
              DistinctEditOn = False
              Height = 19
            end
            object dfCFOPNota: TTS_DBPopupEdit
              Tag = -2
              Left = 174
              Top = -1
              Width = 55
              HelpContext = -2
              TabOrder = 1
              OnKeyDown = dfCFOPNotaKeyDown
              DataField = 'CFOPNOTA'
              StyleController = esPedidoRapido
              PopupFormBorderStyle = pbsSysPanel
              OnInitPopup = dfCFOPNotaInitPopup
              Height = 19
              StoredValues = 4
            end
            object dfModelo: TTS_DBEdit
              Left = 388
              Top = -1
              Width = 35
              TabOrder = 3
              DataField = 'MODELO'
              StyleController = esPedidoRapido
              DistinctEditOn = False
              Height = 19
            end
            object pnTransportadora: TTS_Panel
              Tag = -1
              Left = 0
              Top = 117
              Width = 223
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 14
              object TS_Label38: TTS_Label
                Left = 1
                Top = 1
                Width = 219
                Height = 18
                Cursor = crHandPoint
                Align = alTop
                Alignment = taCenter
                Caption = 'Transportadora   (Ctrl+Shift+T)'
                Color = 10921682
                FocusControl = cmbTransportadora
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkTo = 'FrmFornecedores'
                LinkToResult = 0
              end
              object cmbTransportadora: TTS_DBLookupComboBox
                Tag = -2
                Left = 2
                Top = 18
                Width = 219
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                TabOrder = 0
                DataField = 'lkTransportadora'
                DropDownRows = 15
                ClearKey = 32
                Revertable = True
                LookupKeyValue = Null
                Height = 21
              end
            end
            object pnCIF_FOB: TTS_Panel
              Tag = -1
              Left = 222
              Top = 117
              Width = 55
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 15
              object TS_Label39: TTS_Label
                Left = 1
                Top = 1
                Width = 51
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'CIF/FOB'
                Color = 10921682
                FocusControl = dfCIF_FOB
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfCIF_FOB: TTS_DBImageEdit
                Left = 1
                Top = 18
                Width = 52
                Style.Edges = []
                TabOrder = 0
                DataField = 'TIPOFRETE'
                StyleController = DMProjeto.esClientes
                Descriptions.Strings = (
                  'CIF'
                  'FOB')
                ImageIndexes.Strings = (
                  '0'
                  '1')
                Values.Strings = (
                  'C'
                  'F')
                Height = 21
              end
            end
            object pnPlaca: TTS_Panel
              Tag = -1
              Left = 276
              Top = 117
              Width = 81
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 16
              object TS_Label40: TTS_Label
                Left = 1
                Top = 1
                Width = 77
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Placa Ve'#237'culo'
                Color = 10921682
                FocusControl = dfPlaca
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfPlaca: TTS_DBEdit
                Tag = -2
                Left = 2
                Top = 19
                Width = 73
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                Alignment = taLeftJustify
                DataField = 'PLACAVEIC'
                DistinctEditOn = False
                Height = 18
                StoredValues = 1
              end
            end
            object pnEspecie: TTS_Panel
              Tag = -1
              Left = 0
              Top = 164
              Width = 62
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 17
              object TS_Label41: TTS_Label
                Left = 1
                Top = 1
                Width = 58
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Esp'#233'cie'
                Color = 10921682
                FocusControl = dfEspecie
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfEspecie: TTS_DBEdit
                Tag = -2
                Left = 1
                Top = 19
                Width = 55
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                Alignment = taLeftJustify
                DataField = 'DESCESPECIE'
                DistinctEditOn = False
                Height = 18
                StoredValues = 1
              end
            end
            object pnMarca: TTS_Panel
              Tag = -1
              Left = 61
              Top = 164
              Width = 76
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 18
              object TS_Label42: TTS_Label
                Left = 1
                Top = 1
                Width = 72
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Marca'
                Color = 10921682
                FocusControl = dfMarca
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfMarca: TTS_DBEdit
                Tag = -2
                Left = 1
                Top = 19
                Width = 70
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                Alignment = taLeftJustify
                DataField = 'DESCMARCA'
                DistinctEditOn = False
                Height = 18
                StoredValues = 1
              end
            end
            object pnPesoBruto: TTS_Panel
              Tag = -1
              Left = 136
              Top = 164
              Width = 107
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 19
              object TS_Label43: TTS_Label
                Left = 1
                Top = 1
                Width = 103
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Peso Bruto'
                Color = 10921682
                FocusControl = dfPesoBruto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfPesoBruto: TTS_DBEditNumber
                Tag = -2
                Left = 1
                Top = 19
                Width = 101
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'PESOBRUTO'
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
                Height = 18
                StoredValues = 1
              end
            end
            object pnPesoLiquido: TTS_Panel
              Tag = -1
              Left = 242
              Top = 164
              Width = 115
              Height = 40
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 20
              object TS_Label44: TTS_Label
                Left = 1
                Top = 1
                Width = 111
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Peso L'#237'quido'
                Color = 10921682
                FocusControl = dfPesoLiquido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfPesoLiquido: TTS_DBEditNumber
                Tag = -2
                Left = 1
                Top = 19
                Width = 109
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonTransparence = ebtHideInactive
                Style.Edges = []
                TabOrder = 0
                DataField = 'PESOLIQUIDO'
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
                Height = 18
                StoredValues = 1
              end
            end
            object dfAliqICMS: TTS_DBEditNumber
              Tag = -2
              Left = 502
              Top = -1
              Width = 56
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              DataField = 'ALIQICMSVENDA'
              StyleController = esPedidoRapido
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
            object TS_DBEdit17: TTS_DBEdit
              Left = 47
              Top = -1
              Width = 65
              TabOrder = 0
              DataField = 'NUMERO'
              StyleController = esPedidoRapido
              DistinctEditOn = False
              Height = 19
            end
          end
          object pnOrcamento: TTS_Panel
            Left = 0
            Top = 243
            Width = 776
            Height = 202
            Anchors = [akLeft, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
            object TS_Shape17: TTS_Shape
              Left = 0
              Top = 0
              Width = 776
              Height = 202
              Align = alClient
              Brush.Style = bsClear
              Pen.Color = 7171510
              Pen.Width = 2
              TagStr = 'CV'
              Transparent = False
            end
            object TS_Label14: TTS_Label
              Left = 8
              Top = 129
              Width = 60
              Alignment = taLeftJustify
              Caption = 'Garantia:'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label15: TTS_Label
              Left = 371
              Top = 3
              Width = 128
              Alignment = taLeftJustify
              Caption = 'Explica'#231#245'es Adicionais:'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label16: TTS_Label
              Left = 8
              Top = 3
              Width = 79
              Alignment = taLeftJustify
              Caption = 'A Tratar:'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label17: TTS_Label
              Left = 8
              Top = 59
              Width = 79
              Alignment = taLeftJustify
              Caption = 'Introdu'#231#227'o:'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label12: TTS_Label
              Left = 8
              Top = 164
              Width = 79
              Alignment = taLeftJustify
              Caption = 'Prazo Entrega:'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label13: TTS_Label
              Left = 267
              Top = 164
              Width = 79
              Alignment = taLeftJustify
              Caption = 'Validade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object dfTratar: TTS_DBMemo
              Left = 6
              Top = 16
              Width = 357
              TabOrder = 0
              DataField = 'ATRATAR'
              StyleController = esPedidoRapido
              Height = 42
            end
            object TS_DBMemo3: TTS_DBMemo
              Left = 6
              Top = 73
              Width = 357
              TabOrder = 1
              DataField = 'INTRODUCAO'
              StyleController = esPedidoRapido
              Height = 55
            end
            object TS_DBEdit7: TTS_DBEdit
              Left = 6
              Top = 142
              Width = 357
              TabOrder = 2
              DataField = 'GARANTIA'
              StyleController = esPedidoRapido
              DistinctEditOn = False
              Height = 19
            end
            object TS_DBMemo5: TTS_DBMemo
              Left = 368
              Top = 16
              Width = 402
              TabOrder = 5
              DataField = 'EXPLICACOES'
              StyleController = esPedidoRapido
              Height = 42
            end
            object TS_DBEdit8: TTS_DBEdit
              Left = 6
              Top = 178
              Width = 249
              TabOrder = 3
              DataField = 'PRAZOENTREGA'
              StyleController = esPedidoRapido
              DistinctEditOn = False
              Height = 19
            end
            object gbLicitacao: TTS_GroupBox
              Left = 369
              Top = 61
              Width = 400
              Height = 136
              Caption = ' LICITA'#199#195'O  '
              TabOrder = 6
              Visible = False
              object TS_Label18: TTS_Label
                Left = 42
                Top = 17
                Width = 65
                Caption = 'Processo:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label19: TTS_Label
                Left = 13
                Top = 40
                Width = 94
                Caption = 'Carta Convite:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label20: TTS_Label
                Left = 13
                Top = 64
                Width = 94
                Caption = 'Tomada de Pre'#231'os:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label21: TTS_Label
                Left = 13
                Top = 88
                Width = 94
                Caption = 'Data Abertura:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label22: TTS_Label
                Left = 42
                Top = 114
                Width = 65
                Caption = '% ICMS:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_DBEdit9: TTS_DBEdit
                Left = 110
                Top = 15
                Width = 277
                TabOrder = 0
                DataField = 'PROCESSO'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 19
              end
              object TS_DBEdit10: TTS_DBEdit
                Left = 110
                Top = 39
                Width = 277
                TabOrder = 1
                DataField = 'CARTACONVITE'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 19
              end
              object TS_DBEdit11: TTS_DBEdit
                Left = 110
                Top = 63
                Width = 277
                TabOrder = 2
                DataField = 'TOMADAPRECOS'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 19
              end
              object TS_DBEdit12: TTS_DBEdit
                Left = 110
                Top = 87
                Width = 277
                TabOrder = 3
                DataField = 'DATAABERTURA'
                StyleController = esPedidoRapido
                DistinctEditOn = False
                Height = 19
              end
              object TS_DBEditNumber1: TTS_DBEditNumber
                Left = 110
                Top = 111
                Width = 60
                TabOrder = 4
                DataField = 'LICITACAOICMS'
                StyleController = esPedidoRapido
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
            object TS_DBEditDate1: TTS_DBEditDate
              Left = 264
              Top = 178
              Width = 99
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              DataField = 'VALIDADE'
              StyleController = esPedidoRapido
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
              Height = 19
            end
          end
          object pnRecebimento: TTS_Panel
            Left = -1
            Top = 243
            Width = 777
            Height = 206
            Anchors = [akLeft, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              777
              206)
            object lbRecebimentos: TTS_Label
              Left = 2
              Top = 3
              Width = 130
              Alignment = taLeftJustify
              Anchors = [akLeft, akBottom]
              Caption = 'Recebimentos'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label6: TTS_Label
              Left = 330
              Top = 103
              Width = 10
              Alignment = taLeftJustify
              Caption = 'X'
              Visible = False
              TagStr = 'cb4'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label7: TTS_Label
              Left = 179
              Top = 101
              Width = 10
              Alignment = taLeftJustify
              Caption = '='
              Visible = False
              TagStr = 'cb4'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label8: TTS_Label
              Left = 179
              Top = 125
              Width = 10
              Alignment = taLeftJustify
              Caption = '='
              Visible = False
              TagStr = 'cb5'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label9: TTS_Label
              Left = 179
              Top = 77
              Width = 10
              Alignment = taLeftJustify
              Caption = '='
              Visible = False
              TagStr = 'cb3'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label10: TTS_Label
              Left = 179
              Top = 29
              Width = 10
              Alignment = taLeftJustify
              Caption = '='
              Visible = False
              TagStr = 'cb1'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label11: TTS_Label
              Left = 179
              Top = 53
              Width = 10
              Alignment = taLeftJustify
              Caption = '='
              Visible = False
              TagStr = 'cb2'
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Panel1: TTS_Panel
              Left = 2
              Top = 19
              Width = 175
              Height = 177
              BevelOuter = bvNone
              Color = 14674687
              TabOrder = 0
              object TS_Shape14: TTS_Shape
                Left = 3
                Top = 4
                Width = 172
                Height = 173
                Brush.Color = 7171510
                Pen.Color = clGray
                Pen.Width = 2
                Transparent = False
              end
              object spFormas: TTS_Shape
                Left = 0
                Top = 0
                Width = 172
                Height = 174
                Brush.Color = 14674687
                Pen.Color = 7171510
                Transparent = False
              end
              object cb1: TdxfCheckBox
                Left = 4
                Top = 6
                Width = 166
                Height = 18
                Hint = '1'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '1. Dinheiro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                OnClick = cb1Click
              end
              object cb2: TdxfCheckBox
                Left = 4
                Top = 30
                Width = 166
                Height = 20
                Hint = '2'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '2. Cheque'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                OnClick = cb1Click
              end
              object cb4: TdxfCheckBox
                Left = 4
                Top = 78
                Width = 166
                Height = 18
                Hint = '4'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '4. Cart'#227'o de Cr'#233'dito'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                OnClick = cb1Click
              end
              object cb5: TdxfCheckBox
                Left = 4
                Top = 102
                Width = 166
                Height = 19
                Hint = '5'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '5. Dep'#243'sito Banc'#225'rio'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 3
                OnClick = cb1Click
              end
              object cb6: TdxfCheckBox
                Left = 4
                Top = 126
                Width = 166
                Height = 19
                Hint = '6'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '6. Utilizar Cr'#233'ditos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 4
                OnClick = cb1Click
              end
              object cb7: TdxfCheckBox
                Left = 4
                Top = 150
                Width = 166
                Height = 20
                Hint = '7'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '7. Outra Forma'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 5
                OnClick = cb1Click
              end
              object cb3: TdxfCheckBox
                Left = 4
                Top = 54
                Width = 166
                Height = 20
                Hint = '3'
                Checked = False
                AutoSize = False
                GroupIndex = 0
                Caption = '3. Cheque Eletr'#244'nico'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 6
                OnClick = cb1Click
              end
            end
            object df1: TTS_CalcEdit
              Left = 188
              Top = 27
              Width = 92
              TabOrder = 1
              Visible = False
              StyleController = esPedidoRapido
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
              TagStr = 'cb1'
              Height = 19
              StoredValues = 1
            end
            object df2: TTS_CalcEdit
              Left = 188
              Top = 51
              Width = 92
              TabOrder = 2
              Visible = False
              StyleController = esPedidoRapido
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
              TagStr = 'cb2'
              Height = 19
              StoredValues = 1
            end
            object df3: TTS_CalcEdit
              Left = 188
              Top = 75
              Width = 92
              TabOrder = 3
              Visible = False
              StyleController = esPedidoRapido
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
              TagStr = 'cb3'
              Height = 19
              StoredValues = 1
            end
            object df4: TTS_CalcEdit
              Left = 188
              Top = 99
              Width = 92
              TabOrder = 4
              Visible = False
              OnKeyPress = df4KeyPress
              StyleController = esPedidoRapido
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
              TagStr = 'cb4'
              Height = 19
              StoredValues = 1
            end
            object df5: TTS_CalcEdit
              Left = 188
              Top = 123
              Width = 92
              TabOrder = 6
              Visible = False
              StyleController = esPedidoRapido
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
              TagStr = 'cb5'
              Height = 19
              StoredValues = 1
            end
            object dfVezes: TTS_CalcEdit
              Left = 284
              Top = 99
              Width = 43
              TabOrder = 5
              Visible = False
              StyleController = esPedidoRapido
              Text = '1'
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
              Value = 1
              TagStr = 'cb4'
              Height = 19
              StoredValues = 1
            end
          end
          object pnTermos: TTS_Panel
            Left = -1
            Top = 63
            Width = 778
            Height = 178
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              778
              178)
            object TS_Shape11: TTS_Shape
              Left = 2
              Top = 24
              Width = 776
              Height = 149
              Anchors = [akLeft, akTop, akRight, akBottom]
              Brush.Style = bsClear
              Pen.Color = 7171510
              Pen.Width = 2
              TagStr = 'CV'
              Transparent = False
            end
            object lbTermos: TTS_Label
              Left = 3
              Top = 5
              Width = 130
              Cursor = crHandPoint
              Alignment = taLeftJustify
              Caption = 'Termos (Ctrl + T)'
              FocusControl = dbgPlanos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbTermosClick
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Shape12: TTS_Shape
              Left = 7
              Top = 28
              Width = 355
              Height = 117
              Anchors = [akLeft, akTop, akBottom]
              Brush.Style = bsClear
              Pen.Color = 7171510
              TagStr = 'CV'
              Transparent = False
            end
            object TS_Shape13: TTS_Shape
              Left = 369
              Top = 29
              Width = 403
              Height = 138
              Anchors = [akLeft, akTop, akRight, akBottom]
              Brush.Style = bsClear
              Pen.Color = 7171510
              TagStr = 'CV'
              Transparent = False
            end
            object spPlano: TTS_Shape
              Left = 7
              Top = 143
              Width = 355
              Height = 24
              Anchors = [akLeft, akBottom]
              Brush.Color = 10921682
              Pen.Color = 7171510
              Transparent = False
            end
            object TS_DBTextEffect6: TTS_DBTextEffect
              Left = 11
              Top = 146
              Width = 348
              Height = 19
              Anchors = [akLeft, akBottom]
              DataField = 'icResumo'
              Effects.Pen.Color = 10485760
              Effects.ShadowColor = 4539717
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              EditOffSet.x = 0
              EditOffSet.y = 0
              NullValue = 'Escolha um Plano de Pagamento:'
              AllowEditOnClick = False
              EditFont.Charset = DEFAULT_CHARSET
              EditFont.Color = clWindowText
              EditFont.Height = -11
              EditFont.Name = 'MS Sans Serif'
              EditFont.Style = []
            end
            object lbCondicoesPgto: TTS_Label
              Left = 371
              Top = 4
              Width = 149
              Alignment = taLeftJustify
              Caption = '&Condi'#231#245'es de Pagamento:'
              FocusControl = dfCondicoesPgto
              Visible = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbTipoCobranca: TTS_Label
              Left = 371
              Top = 4
              Width = 115
              Alignment = taLeftJustify
              Caption = 'Tipo Cobran'#231'a Padr'#227'o:'
              FocusControl = dfCondicoesPgto
              Visible = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbCarteira: TTS_Label
              Left = 616
              Top = 4
              Width = 48
              Alignment = taLeftJustify
              Caption = 'Carteira:'
              FocusControl = dfCondicoesPgto
              Visible = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object dbgPlanos: TTS_QDBGrid
              Tag = -2
              Left = 8
              Top = 29
              Width = 353
              Height = 113
              HelpContext = -2
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'PLANOPAGAMENTO'
              SummaryGroups = <>
              SummarySeparator = '|'
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnDblClick = dbgPlanosDblClick
              OnKeyDown = dbgPlanosKeyDown
              AutoSearchColor = clYellow
              AutoSearchTextColor = clNavy
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              Filter.Criteria = {00000000}
              GroupPanelColor = 15461355
              HeaderColor = 10921682
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideFocusRect = True
              HideSelection = True
              HideSelectionColor = 14674687
              HideSelectionTextColor = clBlack
              HighlightColor = 14674687
              HighlightTextColor = clBlack
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              Anchors = [akLeft, akTop, akBottom]
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
              TS_SelectionFont.Height = -16
              TS_SelectionFont.Name = 'Tahoma'
              TS_SelectionFont.Style = [fsBold]
              TS_OnAfterSelection = dbgPlanosTS_OnAfterSelection
              TS_SelectedColumn = 'DESCRICAO'
              TS_ID = 0
              TS_TipoDescricao = tdVenda
              TS_SummaryFooterQtdText = 'Qtd. Geral:'
              TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
              object dbgPlanosPlanoPagamento: TdxDBGridColumn
                Caption = 'Plano'
                DisableDragging = True
                Visible = False
                Width = 98
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLANOPAGAMENTO'
              end
              object dbgPlanosDESCRICAO: TdxDBGridMaskColumn
                Caption = 'Planos de Pagamento'
                DisableCustomizing = True
                DisableDragging = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 291
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DESCRICAO'
              end
            end
            object dbgParcelas: TTS_QDBGrid
              Tag = -2
              Left = 370
              Top = 30
              Width = 401
              Height = 136
              HelpContext = -2
              Bands = <
                item
                  Caption = 'Parcelas'
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'ID'
              ShowSummaryFooter = True
              SummaryGroups = <
                item
                  DefaultGroup = True
                  SummaryItems = <
                    item
                      ColumnName = 'dbgParcelasValor'
                      SummaryField = 'Valor'
                      SummaryType = cstSum
                    end>
                  Name = 'Default'
                end>
              SummarySeparator = '|'
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              PopupMenu = ppmParcelas
              TabOrder = 3
              AutoSearchColor = 6611199
              AutoSearchTextColor = clBlue
              BandColor = 14859922
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -9
              BandFont.Name = 'Tahoma'
              BandFont.Style = []
              Filter.Criteria = {00000000}
              GroupPanelColor = 15461355
              HeaderColor = 10921682
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              HideFocusRect = True
              HideSelection = True
              HideSelectionColor = 14674687
              HideSelectionTextColor = clWindowText
              HighlightColor = 14674687
              HighlightTextColor = clWindowText
              OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              OnEdited = dbgParcelasEdited
              OnEditing = dbgParcelasEditing
              Anchors = [akLeft, akTop, akRight, akBottom]
              TS_PermitirQuantidade = False
              TS_DescriptionCanChange = False
              TS_GridMenuOptions = [gmLayout]
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
              TS_LikeString = False
              TS_SelectionColor = 12054783
              TS_SelectionFont.Charset = DEFAULT_CHARSET
              TS_SelectionFont.Color = clWindowText
              TS_SelectionFont.Height = -16
              TS_SelectionFont.Name = 'Tahoma'
              TS_SelectionFont.Style = []
              TS_OnAfterSelection = dbgParcelasTS_OnAfterSelection
              TS_SelectedColumn = 'Parcela'
              TS_ID = 0
              TS_TipoDescricao = tdVenda
              TS_SummaryFields.Strings = (
                'Valor;Sum;D')
              TS_SummaryFooterQtdText = 'Qtd. Geral:'
              TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
              object dbgParcelasParcela: TdxDBGridColumn
                Caption = '#'
                HeaderAlignment = taCenter
                Width = 31
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Parcela'
              end
              object dbgParcelasVencimento: TdxDBGridDateColumn
                HeaderAlignment = taCenter
                Width = 117
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Vencimento'
              end
              object dbgParcelasValor: TdxDBGridCalcColumn
                HeaderAlignment = taCenter
                Width = 107
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Valor'
                SummaryFooterType = cstSum
              end
              object dbgParcelasSaldo: TdxDBGridColumn
                Caption = 'Recebido'
                Color = 15918032
                DisableEditor = True
                HeaderAlignment = taCenter
                Visible = False
                Width = 113
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PGTOS'
              end
              object dbgParcelasTipoCobranca: TdxDBGridLookupColumn
                Caption = 'Tipo de Cobran'#231'a'
                HeaderAlignment = taCenter
                Width = 146
                BandIndex = 0
                RowIndex = 0
                FieldName = 'lkTipoCobranca'
              end
              object dbgParcelasStatus: TdxDBGridColumn
                Caption = 'Status'
                Visible = False
                Width = 96
                BandIndex = 0
                RowIndex = 0
                FieldName = 'STATUS'
              end
              object dbgParcelasDoc: TdxDBGridColumn
                Caption = '# Doc. Garantia'
                MinWidth = 85
                Visible = False
                Width = 107
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DOC_GARANTIA'
              end
              object dbgParcelasColumn8: TdxDBGridColumn
                DisableCustomizing = True
                Visible = False
                Width = 91
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ValorAReceber'
              end
              object dbgParcelasColumn9: TdxDBGridColumn
                DisableCustomizing = True
                Visible = False
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Pagamento'
              end
              object dbgParcelasColumn10: TdxDBGridColumn
                DisableCustomizing = True
                Visible = False
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Juros'
              end
              object dbgParcelasColumn11: TdxDBGridColumn
                DisableCustomizing = True
                Visible = False
                Width = 139
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DESCONTOS'
              end
            end
            object dfCondicoesPgto: TTS_DBMemo
              Left = 369
              Top = 29
              Width = 403
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Visible = False
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataField = 'CONDICOESPAGTO'
              StyleController = esPedidoRapido
              Height = 138
            end
            object cmbTipoCobranca: TTS_DBLookupComboBox
              Left = 487
              Top = 2
              Width = 124
              TabOrder = 1
              DataField = 'lkCobranca'
              StyleController = esPedidoRapido
              OnChange = cmbTipoCobrancaChange
              DropDownRows = 15
              ClearKey = 32
              LookupKeyValue = Null
              Height = 19
            end
            object cmbCarteira: TTS_DBLookupComboBox
              Left = 663
              Top = 2
              Width = 116
              TabOrder = 2
              Visible = False
              Anchors = [akLeft, akTop, akRight]
              DataField = 'lkCarteira'
              StyleController = esPedidoRapido
              OnChange = cmbTipoCobrancaChange
              DropDownRows = 15
              ClearKey = 32
              LookupKeyValue = Null
              Height = 19
            end
          end
          object dbgMensagens: TTS_QDBGrid
            Left = 10
            Top = 567
            Width = 189
            Height = 153
            Bands = <
              item
              end>
            DefaultLayout = False
            KeyField = 'MENSAGEMOPERACAO'
            SummaryGroups = <>
            SummarySeparator = '|'
            BorderStyle = bsNone
            Color = 10921682
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
            AutoSearchColor = clYellow
            AutoSearchTextColor = clNavy
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
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
            OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoRowSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowHeader = False
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
            TS_SelectedColumn = 'DESCRICAO'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object dbgMensagensDESCRICAO: TdxDBGridMemoColumn
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              BandIndex = 0
              RowIndex = 0
              HeaderMaxLineCount = 1
              FieldName = 'DESCRICAO'
            end
          end
          object pnLocalEntrega: TTS_Panel
            Left = 561
            Top = 263
            Width = 214
            Height = 185
            Anchors = [akLeft, akBottom]
            BevelInner = bvLowered
            TabOrder = 4
            DesignSize = (
              214
              185)
            object dxfLabel1: TdxfLabel
              Left = 2
              Top = 2
              Width = 210
              Height = 30
              Hint = '5'
              Align = alTop
              AutoSize = False
              Caption = 'Informa'#231#245'es para Entrega'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Transparent = True
              Style = dxfRaised
              Angle = 0
              Effect3D.Style = dxfFun
              Effect3D.Orientation = dxfRightBottom
              Effect3D.Depth = 3
              Effect3D.ShadowedColor = clSilver
              PenWidth = 1
            end
            object TS_Panel2: TTS_Panel
              Tag = -1
              Left = 6
              Top = 40
              Width = 202
              Height = 42
              HelpContext = -1
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object lbLocalEntrega: TTS_Label
                Left = 1
                Top = 1
                Width = 198
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Local para Entrega (Ctrl+Shit+E)'
                Color = 10921682
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object cmbLocalEntrega: TTS_DBLookupComboBox
                Tag = -2
                Left = 3
                Top = 19
                Width = 197
                Hint = 
                  'Escolha ou cadastre um local (endere'#231'o completo) para a entrega ' +
                  'dos Itens.'
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                TabOrder = 0
                DataField = 'LOCALENTREGA'
                DropDownRows = 15
                ClearKey = 32
                ListFieldName = 'DESCRICAO'
                Revertable = True
                KeyFieldName = 'ENTREGA'
                ListSource = DMSaidas.C_LocaisEntregaDS
                LookupKeyValue = Null
                Height = 21
              end
            end
            object pnDataEntrega: TTS_Panel
              Tag = -1
              Left = 49
              Top = 137
              Width = 117
              Height = 42
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              object lbDataEntrega: TTS_Label
                Left = 1
                Top = 1
                Width = 113
                Height = 18
                Align = alTop
                Alignment = taCenter
                Caption = 'Data Entrega'
                Color = 10921682
                FocusControl = dfDataEntrega
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfDataEntrega: TTS_DBEditDate
                Tag = -2
                Left = 2
                Top = 19
                Width = 112
                Hint = 'Digite a data prevista para a entrega'
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                TabOrder = 0
                Alignment = taLeftJustify
                DataField = 'DATAENTREGA'
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
                Height = 21
                StoredValues = 1
              end
            end
            object pnTipoEntrega: TTS_Panel
              Tag = -1
              Left = 17
              Top = 88
              Width = 180
              Height = 42
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWindow
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              object lbTipoEntrega: TTS_Label
                Left = 1
                Top = 1
                Width = 176
                Height = 18
                Cursor = crHandPoint
                Align = alTop
                Alignment = taCenter
                Caption = 'Tipo Entrega'
                Color = 10921682
                FocusControl = cmbTipoEntrega
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentColor = False
                ParentFont = False
                Transparent = False
                TagStr = 'CV'
                FormatoTabela = False
                LinkTo = 'FrmTiposEntrega'
                LinkToResult = 0
              end
              object cmbTipoEntrega: TTS_DBLookupComboBox
                Tag = -2
                Left = 2
                Top = 19
                Width = 176
                Hint = 'Escolha o Tipo de Entraga dos Itens.'
                HelpContext = -2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                TabOrder = 0
                Alignment = taLeftJustify
                DataField = 'lkTipoEntrega'
                DropDownRows = 15
                ClearKey = 32
                Revertable = True
                LookupKeyValue = Null
                Height = 21
                StoredValues = 1
              end
            end
          end
          object pnMensagem: TTS_Panel
            Tag = -1
            Left = 367
            Top = 361
            Width = 191
            Height = 87
            HelpContext = -1
            Anchors = [akLeft, akBottom]
            BevelOuter = bvNone
            BorderWidth = 1
            BorderStyle = bsSingle
            Color = clWindow
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
            object dfObs: TTS_DBMemo
              Tag = -2
              Left = 3
              Top = 20
              Width = 185
              HelpContext = -2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              TabOrder = 1
              DataField = 'OBS'
              Height = 63
            end
            object dfMensagem: TTS_PopupEdit
              Tag = -2
              Left = -2
              Top = -2
              Width = 194
              HelpContext = -2
              Color = 10921682
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              Style.ButtonTransparence = ebtAlways
              TabOrder = 0
              Alignment = taCenter
              ReadOnly = True
              Text = 'Mensagem - Cliente (Ctrl+Shift+M)'
              HideEditCursor = True
              PopupControl = dbgMensagens
              PopupFormBorderStyle = pbsSysPanel
              OnCloseUp = dfMensagemCloseUp
              TagStr = 'Titulos'
              LookupKeyValue = 0
              Height = 22
              StoredValues = 65
            end
          end
          object pnTotais: TTS_Panel
            Left = 1
            Top = 0
            Width = 563
            Height = 59
            BevelOuter = bvNone
            TabOrder = 7
            object pnTotalItens: TTS_Panel
              Left = 0
              Top = 0
              Width = 160
              Height = 59
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object spTotalItens: TTS_Shape
                Left = 0
                Top = 15
                Width = 156
                Height = 43
                Brush.Style = bsClear
                Pen.Color = 7171510
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object dbtTotalItens: TTS_DBTextEffect
                Left = 7
                Top = 19
                Width = 141
                Height = 34
                Alignment = taRightJustify
                DataField = 'TOTALPRODUTOS'
                Effects.Pen.Color = clGreen
                Effects.ShadowColor = 3684408
                Effects.Style = tsRaised
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                EditOffSet.x = 0
                EditOffSet.y = 0
                NullValue = '0.00'
                AllowEditOnClick = False
                EditFont.Charset = DEFAULT_CHARSET
                EditFont.Color = clWindowText
                EditFont.Height = -11
                EditFont.Name = 'MS Sans Serif'
                EditFont.Style = []
              end
              object lbTotalItens: TTS_Label
                Left = 1
                Top = -1
                Width = 130
                Alignment = taLeftJustify
                Caption = 'Total dos Produtos'
                FormatoTabela = False
                LinkToResult = 0
              end
            end
            object pnTotalServicos: TTS_Panel
              Left = 160
              Top = 0
              Width = 140
              Height = 59
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object TS_Shape29: TTS_Shape
                Left = 0
                Top = 15
                Width = 136
                Height = 43
                Brush.Style = bsClear
                Pen.Color = 7171510
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object TS_DBTextEffect1: TTS_DBTextEffect
                Left = 7
                Top = 19
                Width = 121
                Height = 34
                Alignment = taRightJustify
                DataField = 'TOTALSERVICOS'
                Effects.Pen.Color = clGreen
                Effects.ShadowColor = 3684408
                Effects.Style = tsRaised
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                EditOffSet.x = 0
                EditOffSet.y = 0
                NullValue = '0.00'
                AllowEditOnClick = False
                EditFont.Charset = DEFAULT_CHARSET
                EditFont.Color = clWindowText
                EditFont.Height = -11
                EditFont.Name = 'MS Sans Serif'
                EditFont.Style = []
              end
              object TS_Label28: TTS_Label
                Left = 1
                Top = -1
                Width = 113
                Alignment = taLeftJustify
                Caption = 'Total dos Servi'#231'os'
                FormatoTabela = False
                LinkToResult = 0
              end
            end
            object pnDescontoPe: TTS_Panel
              Left = 300
              Top = 0
              Width = 131
              Height = 59
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object spDescontoPe: TTS_Shape
                Left = 1
                Top = 15
                Width = 125
                Height = 43
                Hint = '300'
                Brush.Style = bsClear
                ParentShowHint = False
                Pen.Color = 7171510
                Pen.Width = 2
                ShowHint = False
                TagStr = 'CV'
                Transparent = False
              end
              object lbDescontoPe: TTS_Label
                Left = 3
                Top = -1
                Width = 110
                Hint = '301'
                Alignment = taLeftJustify
                Caption = 'F3. Descontos'
                ParentShowHint = False
                ShowHint = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfDescontoPe: TTS_DBEditNumber
                Tag = -2
                Left = 6
                Top = 21
                Width = 114
                Hint = '306'
                HelpContext = -2
                Color = 14674687
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                Style.HotTrack = False
                Style.Shadow = False
                TabOrder = 0
                OnExit = dfDescontoPeExit
                OnKeyPress = dfDescontoPeKeyPress
                DataField = 'DESCONTO'
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
                NumericRange = nrNegativos
                Height = 31
                StoredValues = 1
              end
            end
            object pnFrete: TTS_Panel
              Left = 431
              Top = 0
              Width = 130
              Height = 59
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object TS_Shape30: TTS_Shape
                Left = 1
                Top = 15
                Width = 125
                Height = 43
                Hint = '300'
                Brush.Style = bsClear
                ParentShowHint = False
                Pen.Color = 7171510
                Pen.Width = 2
                ShowHint = False
                TagStr = 'CV'
                Transparent = False
              end
              object TS_Label46: TTS_Label
                Left = 2
                Top = -1
                Width = 89
                Hint = '301'
                Alignment = taLeftJustify
                Caption = 'Frete'
                ParentShowHint = False
                ShowHint = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfFrete: TTS_DBEditNumber
                Tag = -2
                Left = 6
                Top = 21
                Width = 114
                Hint = '306'
                HelpContext = -2
                Color = 14674687
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                Style.HotTrack = False
                Style.Shadow = False
                TabOrder = 0
                OnExit = dfDescontoPeExit
                OnKeyPress = dfDescontoPeKeyPress
                DataField = 'FRETE'
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
                Height = 31
                StoredValues = 1
              end
            end
          end
        end
      end
      object pnAdicionais: TTS_Panel
        Tag = -1
        Left = 0
        Top = 55
        Width = 784
        Height = 1
        HelpContext = -1
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object pnCampo01: TTS_Panel
          Tag = -1
          Left = 38
          Top = 1
          Width = 187
          Height = 36
          HelpContext = -1
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          TabStop = True
          DesignSize = (
            187
            36)
          object lbCampo01: TTS_Label
            Left = 0
            Top = 0
            Width = 187
            Align = alTop
            Alignment = taCenter
            Caption = 'Add1'
            Color = 10921682
            FocusControl = dfAdd1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            TagStr = 'CV'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfAdd1: TTS_DBEdit
            Tag = -2
            Left = 1
            Top = 16
            Width = 185
            Hint = 'Informa'#231#227'o Adicional 1'
            HelpContext = -2
            Color = 14674687
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 0
            OnKeyPress = dfAdd1KeyPress
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CAMPO01'
            DistinctEditOn = False
            Height = 19
          end
        end
        object pnCampo02: TTS_Panel
          Tag = -1
          Left = 225
          Top = 1
          Width = 187
          Height = 36
          HelpContext = -1
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          DesignSize = (
            187
            36)
          object lbCampo02: TTS_Label
            Left = 0
            Top = 0
            Width = 187
            Align = alTop
            Alignment = taCenter
            Caption = 'Add2'
            Color = 10921682
            FocusControl = dfAdd2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            TagStr = 'CV'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfAdd2: TTS_DBEdit
            Tag = -2
            Left = 1
            Top = 16
            Width = 185
            Hint = 'Informa'#231#227'o Adicional 2'
            HelpContext = -2
            Color = 14674687
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 0
            OnKeyPress = dfAdd2KeyPress
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CAMPO02'
            DistinctEditOn = False
            Height = 19
          end
        end
        object pnCampo04: TTS_Panel
          Tag = -1
          Left = 598
          Top = 1
          Width = 186
          Height = 36
          HelpContext = -1
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          DesignSize = (
            186
            36)
          object lbCampo04: TTS_Label
            Left = 0
            Top = 0
            Width = 186
            Align = alTop
            Alignment = taCenter
            Caption = 'Add4'
            Color = 10921682
            FocusControl = dfAdd4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            TagStr = 'CV'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfAdd4: TTS_DBEdit
            Tag = -2
            Left = 1
            Top = 16
            Width = 184
            Hint = 'Informa'#231#227'o Adicional 4'
            HelpContext = -2
            Color = 14674687
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 0
            OnKeyPress = dfAdd4KeyPress
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CAMPO04'
            DistinctEditOn = False
            Height = 19
          end
        end
        object pnCampo03: TTS_Panel
          Tag = -1
          Left = 412
          Top = 1
          Width = 186
          Height = 36
          HelpContext = -1
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          DesignSize = (
            186
            36)
          object lbCampo03: TTS_Label
            Left = 0
            Top = 0
            Width = 186
            Align = alTop
            Alignment = taCenter
            Caption = 'Add3'
            Color = 10921682
            FocusControl = dfAdd3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            TagStr = 'CV'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfAdd3: TTS_DBEdit
            Tag = -2
            Left = 2
            Top = 16
            Width = 184
            Hint = 'Informa'#231#227'o Adicional 3'
            HelpContext = -2
            Color = 14674687
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 0
            OnKeyPress = dfAdd3KeyPress
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CAMPO03'
            DistinctEditOn = False
            Height = 19
          end
        end
        object pnAtalhoAdicionais: TTS_Panel
          Tag = -1
          Left = 1
          Top = 1
          Width = 37
          Height = 36
          HelpContext = -1
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          TabStop = True
          object TS_Label23: TTS_Label
            Left = 0
            Top = 0
            Width = 37
            Height = 36
            Align = alClient
            Alignment = taCenter
            Caption = 'Ctrl + Shift + D'
            Color = 10921682
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            TagStr = 'CV'
            FormatoTabela = False
            LinkToResult = 0
          end
        end
      end
      object pnOperacao: TTS_Panel
        Left = 0
        Top = 30
        Width = 784
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          784
          25)
        object TS_Shape1: TTS_Shape
          Left = 1
          Top = 1
          Width = 782
          Height = 20
          Anchors = [akLeft, akTop, akRight]
          Brush.Style = bsClear
          Pen.Color = 7171510
          Pen.Width = 2
          Shape = stRoundRect
          TagStr = 'CV'
          Transparent = False
        end
        object dbtNomeCliente: TTS_DBTextEffect
          Left = 27
          Top = 4
          Width = 237
          Height = 14
          Cursor = crHandPoint
          DataField = 'F_NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = ppmCliente
          Transparent = True
          OnClick = pmInformarNomedoClienteClick
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
        object TS_DBTextEffect9: TTS_DBTextEffect
          Left = 560
          Top = 4
          Width = 215
          Height = 16
          Cursor = crHandPoint
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          DataField = 'lkTipoMovimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = TS_DBTextEffect9Click
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
        object dbtStatus: TTS_DBTextEffect
          Left = 397
          Top = 4
          Width = 159
          Height = 16
          Cursor = crHandPoint
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          DataField = 'lkStatus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = dbtStatusClick
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
        object dbtTabelaPadrao: TTS_DBTextEffect
          Left = 278
          Top = 4
          Width = 117
          Height = 14
          Cursor = crHandPoint
          DataField = 'icNomeTabelaPadrao'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          OnClick = dbtTabelaPadraoClick
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
        object btLembrete: TTS_SpeedButton
          Left = 4
          Top = 3
          Width = 20
          Height = 16
          Hint = 'Lembretes para o Cliente'
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D800000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDD88880
            DDDDDD000000DDDDDD8000008DDDDD000000DDDDDD00FF770DDDDD000000DDDD
            DD8000000DDDDD000000DDDDDD00FF770DDDDD000000DDDDDD8000000DDDDD00
            0000DDDDDD0F878F0DDDDD000000DDDDDD8B878BF0DDDD000000DDDDD0FF878F
            F8DDDD000000DDDD8BFB878BFB8DDD000000DDD8BFF87778FFB8DD000000DDD8
            FBF87778FBF8DD000000DDD8BF0800080FB8DD000000DDD8FBF8FBF8FBF8DD00
            0000DDDD8FFFFFFFFF8DDD000000DDDDD8FBFBFBF8DDDD000000DDDDDD88BFB8
            8DDDDD000000DDDDDDDD888DDDDDDD000000}
          RepeatedClick = False
          Border = False
        end
        object lbMenorPreco: TTS_Label
          Left = 27
          Top = 4
          Width = 230
          Alignment = taLeftJustify
          Caption = 'lbMenorPreco'
          Color = 10930928
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
          FormatoTabela = False
          LinkToResult = 0
        end
      end
      object pnTitulo: TTS_Panel
        Left = 0
        Top = 0
        Width = 784
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        DesignSize = (
          784
          30)
        object lbEmpresa: TdxfLabel
          Left = 7
          Top = -12
          Width = 254
          Height = 42
          Hint = '5'
          AutoSize = False
          Caption = 'Nome da Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -29
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Transparent = True
          Style = dxfRaised
          Angle = 0
          Effect3D.Style = dxfFun
          Effect3D.Orientation = dxfRightBottom
          Effect3D.Depth = 3
          Effect3D.ShadowedColor = clSilver
          PenWidth = 1
        end
        object TS_Panel4: TTS_Panel
          Tag = -1
          Left = 620
          Top = 0
          Width = 161
          Height = 28
          HelpContext = -1
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Caption = 'TS_Panel4'
          TabOrder = 0
          object dxfClock: TdxfClock
            Tag = -1
            Left = 0
            Top = 0
            Width = 161
            Height = 28
            HelpContext = -1
            DisplayFormat = 'hh:mm:ss'
            ClockStyle = csRevolvingDrum
            BorderColor = clSilver
            HandOptions.HourHandColor = clBlack
            HandOptions.HourHandLenght = 60
            HandOptions.HourHandWidth = 5
            HandOptions.MinHandColor = clBlack
            HandOptions.MinHandLenght = 80
            HandOptions.MinHandWidth = 3
            HandOptions.SecHandColor = clRed
            HandOptions.SecHandLenght = 90
            HandOptions.SecHandWidth = 1
            HandOptions.ShowSecHand = False
            HandOptions.Clock = dxfClock
            OffsetHour = 0
            OffsetMin = 0
            OffsetSec = 0
            HoursDisplayStyle = dsDecimalNumbers
            Active = True
            BevelInner = bvNone
            BevelOuter = bvNone
            Align = alClient
            Color = 15365376
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
          end
        end
        object DBEdit1: TDBEdit
          Tag = -1
          Left = 540
          Top = 10
          Width = 8
          Height = 19
          HelpContext = -1
          Ctl3D = False
          DataField = 'TIPOMOVIMENTO'
          ParentCtl3D = False
          TabOrder = 1
          Visible = False
          OnChange = DBEdit1Change
        end
        object DBEdit2: TDBEdit
          Tag = -1
          Left = 551
          Top = 10
          Width = 8
          Height = 19
          HelpContext = -1
          Ctl3D = False
          DataField = 'I_Foto'
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
        end
        object DBEdit3: TDBEdit
          Tag = -1
          Left = 524
          Top = 10
          Width = 8
          Height = 19
          HelpContext = -1
          Ctl3D = False
          DataField = 'FAVORECIDO'
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
          OnChange = DBEdit3Change
        end
      end
    end
  end
  object pnStatus: TTS_Panel [1]
    Left = 0
    Top = 527
    Width = 792
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    BackgroundOptions.Opaque = False
    BackgroundOptions.GlassColor = 16776176
    object TS_Label5: TTS_Label
      Left = 812
      Top = 7
      Width = 177
      Height = 23
      Caption = 'SyncTech'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object pnsMaisOpcoes: TTS_Panel
      Left = 743
      Top = 0
      Width = 56
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        56
        40)
      object lbKey8: TTS_Label
        Left = 0
        Top = 0
        Width = 57
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Ctrl + O'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit8: TTS_Label
        Left = 3
        Top = 16
        Width = 51
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Outras Op'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape21: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
      object TS_Shape2: TTS_Shape
        Left = 55
        Top = 0
        Width = 1
        Height = 40
        Align = alRight
        Transparent = False
      end
    end
    object pnsConsultarPrecos: TTS_Panel
      Left = 324
      Top = 0
      Width = 53
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        53
        40)
      object lbKey7: TTS_Label
        Left = 0
        Top = 0
        Width = 55
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F11'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit7: TTS_Label
        Left = 3
        Top = 16
        Width = 49
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Consultar Pre'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape8: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsFecharTela: TTS_Panel
      Left = 689
      Top = 0
      Width = 54
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      object lbKey6: TTS_Label
        Left = 0
        Top = 0
        Width = 54
        Height = 13
        Alignment = taCenter
        Caption = 'Ctrl + F4'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit6: TTS_Label
        Left = 4
        Top = 16
        Width = 48
        Height = 24
        Alignment = taCenter
        Caption = 'Fechar a Tela'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape15: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsSalvar: TTS_Panel
      Left = 208
      Top = 0
      Width = 50
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        50
        40)
      object lbKey5: TTS_Label
        Left = 0
        Top = 0
        Width = 50
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F5'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit5: TTS_Label
        Left = 3
        Top = 16
        Width = 45
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Salvar Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape24: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsNomeCliente: TTS_Panel
      Left = 377
      Top = 0
      Width = 53
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        53
        40)
      object lbKey4: TTS_Label
        Left = 0
        Top = 0
        Width = 53
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Ctrl + N'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit4: TTS_Label
        Left = 3
        Top = 16
        Width = 48
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape22: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsInformarTermos: TTS_Panel
      Left = 155
      Top = 0
      Width = 53
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      object lbKey3: TTS_Label
        Left = 0
        Top = 0
        Width = 54
        Height = 13
        Alignment = taCenter
        Caption = 'PgDn'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = True
        LinkToResult = 0
      end
      object lbTit3: TTS_Label
        Left = 3
        Top = 16
        Width = 49
        Height = 24
        Alignment = taCenter
        Caption = 'Finalizar Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape19: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsInformarItens: TTS_Panel
      Left = 102
      Top = 0
      Width = 53
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        53
        40)
      object lbKey2: TTS_Label
        Left = 0
        Top = 0
        Width = 53
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'PgUp'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit2: TTS_Label
        Left = 3
        Top = 16
        Width = 49
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informar Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape18: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsIniciarVenda: TTS_Panel
      Left = 50
      Top = 0
      Width = 52
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        52
        40)
      object lbKey1: TTS_Label
        Left = 0
        Top = 0
        Width = 52
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F8'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit1: TTS_Label
        Left = 2
        Top = 16
        Width = 48
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Iniciar Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape28: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsPercorrerItens: TTS_Panel
      Left = 490
      Top = 0
      Width = 53
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        53
        40)
      object lbKey9: TTS_Label
        Left = 1
        Top = 0
        Width = 53
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Ctrl + I'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit9: TTS_Label
        Left = 3
        Top = 16
        Width = 48
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Percorrer Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape23: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsAproveitar: TTS_Panel
      Left = 430
      Top = 0
      Width = 60
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      object lbKey10: TTS_Label
        Left = 0
        Top = 0
        Width = 60
        Height = 13
        Alignment = taCenter
        Caption = 'Ctrl + A'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit10: TTS_Label
        Left = 3
        Top = 16
        Width = 54
        Height = 24
        Alignment = taCenter
        Caption = 'Aproveitar Or'#231'amentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape20: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsTipoMov: TTS_Panel
      Left = 258
      Top = 0
      Width = 66
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      object lbKey11: TTS_Label
        Left = 0
        Top = 0
        Width = 66
        Height = 13
        Alignment = taCenter
        Caption = 'Ctrl+Alt+T'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit11: TTS_Label
        Left = 3
        Top = 16
        Width = 60
        Height = 24
        Alignment = taCenter
        Caption = 'Alterar Tipo da Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape25: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsDescricao: TTS_Panel
      Left = 543
      Top = 0
      Width = 69
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        69
        40)
      object lbKey12: TTS_Label
        Left = 1
        Top = 0
        Width = 69
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Ctrl + F2'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit12: TTS_Label
        Left = 3
        Top = 16
        Width = 64
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Descri'#231#227'o Complementar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape26: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsComposicao: TTS_Panel
      Left = 612
      Top = 0
      Width = 77
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        77
        40)
      object lbKey13: TTS_Label
        Left = 1
        Top = 0
        Width = 77
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Ctrl + F3'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit13: TTS_Label
        Left = 3
        Top = 16
        Width = 72
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Composi'#231#227'o do Item (SubItens)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape27: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
    end
    object pnsAlterarOperacao: TTS_Panel
      Left = 0
      Top = 0
      Width = 50
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        50
        40)
      object lbKey14: TTS_Label
        Left = 0
        Top = 0
        Width = 50
        Height = 13
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F9'
        Color = 10921682
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit14: TTS_Label
        Left = 2
        Top = 16
        Width = 46
        Height = 24
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Alterar Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = False
        FormatoTabela = False
        LinkToResult = 0
      end
    end
  end
  object pnAlteracao: TTS_Panel [2]
    Left = 624
    Top = 6
    Width = 164
    Height = 28
    Anchors = [akTop, akRight]
    BevelInner = bvLowered
    Caption = '- Altera'#231#227'o -'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    BackgroundOptions.GlassColor = clYellow
    BackgroundOptions.GlassTranslucency = 235
  end
  inherited DlgMsg: TDlgMsg
    Left = 579
    Top = 743
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 585
    Top = 734
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 327
    Top = 254
    object pmAlterarOperacao: TMenuItem [0]
      Caption = 'Alterar Opera'#231#227'o'
      Hint = 'pnsAlterarOperacao'
      ShortCut = 120
      OnClick = pmAlterarOperacaoClick
    end
    object pmIniciarVenda: TMenuItem [1]
      Caption = 'Iniciar Opera'#231#227'o'
      Hint = 'pnsIniciarVenda'
      ShortCut = 119
      OnClick = pmIniciarVendaClick
    end
    object pmInformarItens: TMenuItem [2]
      Caption = 'Informar Itens'
      Enabled = False
      Hint = 'pnsInformarItens'
      ShortCut = 33
      OnClick = pmInformarItensClick
    end
    object pmInformarTermos: TMenuItem [3]
      Caption = 'Finalizar Opera'#231#227'o'
      Enabled = False
      Hint = 'pnsInformarTermos'
      ShortCut = 34
      OnClick = pmInformarTermosClick
    end
    object N4: TMenuItem [4]
      Caption = '-'
    end
    object pmGravar: TMenuItem [5]
      Caption = 'Salvar Opera'#231#227'o'
      Enabled = False
      Hint = 'pnsSalvar'
      ShortCut = 116
      OnClick = pmGravarClick
    end
    object N3: TMenuItem [6]
      Caption = '-'
    end
    object pmTipoMov: TMenuItem [7]
      Caption = 'Alterar Tipo da Opera'#231#227'o'
      Hint = 'pnsTipoMov'
      ShortCut = 49236
      OnClick = pmTipoMovClick
    end
    object pmStatus: TMenuItem [8]
      Caption = 'Alterar Status da Opera'#231#227'o'
      ShortCut = 49235
      OnClick = pmStatusClick
    end
    object pmConsultadePrecos: TMenuItem [9]
      Caption = 'Consultar Pre'#231'os'
      Hint = 'pnsConsultarPrecos'
      ShortCut = 122
      OnClick = pmConsultadePrecosClick
    end
    object pmComprarItemdaConsulta: TMenuItem [10]
      Caption = 'Comprar Item da Consulta'
      Enabled = False
      ShortCut = 115
      OnClick = pmComprarItemdaConsultaClick
    end
    object pmExibirMenorPreco: TMenuItem [11]
      AutoCheck = True
      Caption = 'Exibir Menor Pre'#231'o'
      ShortCut = 16574
      OnClick = pmExibirMenorPrecoClick
    end
    object N5: TMenuItem [12]
      Caption = '-'
    end
    object pmInformarNomedoCliente: TMenuItem [13]
      Caption = 'Nome do Cliente'
      Enabled = False
      Hint = 'pnsNomeCliente'
      ShortCut = 16462
      OnClick = pmInformarNomedoClienteClick
    end
    object pmAproveitarOperacoes: TMenuItem [14]
      Caption = 'Aproveitar Or'#231'amentos'
      Hint = 'pnsAproveitar'
      ShortCut = 16449
      OnClick = pmAproveitarOperacoesClick
    end
    object N2: TMenuItem [15]
      Caption = '-'
    end
    object pmPercorrerItens: TMenuItem [16]
      Caption = 'Percorrer Itens'
      Hint = 'pnsPercorrerItens'
      ShortCut = 16457
      OnClick = pmPercorrerItensClick
    end
    object pmDescricao: TMenuItem [17]
      Caption = 'Descri'#231#227'o Complementar'
      Hint = 'pnsDescricao'
      ShortCut = 16497
      OnClick = pmDescricaoClick
    end
    object pmComposicao: TMenuItem [18]
      Caption = 'Composi'#231#227'o do Item'
      Hint = 'pnsComposicao'
      ShortCut = 16498
      OnClick = pmComposicaoClick
    end
    object pmAlterarTabela: TMenuItem [19]
      Caption = 'Alterar Tabela de Pre'#231'os'
      ShortCut = 49217
      OnClick = pmAlterarTabelaClick
    end
    object pmDevolucao: TMenuItem [20]
      Caption = 'Devolu'#231#227'o / Troca de Itens'
      ShortCut = 16500
      OnClick = pmDevolucaoClick
    end
    object pmEstatisticasItem: TMenuItem [21]
      Caption = 'Estat'#237'sticas de Venda'
      ShortCut = 24662
    end
    object pmCopiarItens: TMenuItem [22]
      Caption = 'Copiar Itens de outra Opera'#231#227'o'
      ShortCut = 24690
      OnClick = pmCopiarItensClick
    end
    object pmLegenda: TMenuItem [23]
      Caption = 'Legenda dos Itens'
      OnClick = pmLegendaClick
    end
    object N1: TMenuItem [24]
      Caption = '-'
    end
    object pmFecharTela: TMenuItem [25]
      Caption = 'Fechar a Tela'
      Hint = 'pnsFecharTela'
      ShortCut = 16499
      OnClick = pmFecharTelaClick
    end
    object pmCancelarOperacao: TMenuItem [26]
      Caption = 'Cancelar Opera'#231#227'o Corrente'
      Enabled = False
      ShortCut = 16451
      OnClick = pmCancelarOperacaoClick
    end
    object CancelarOperaes1: TMenuItem [27]
      Caption = 'Cancelar Opera'#231#245'es'
      OnClick = CancelarOperaes1Click
    end
    object NomostrarAtalhos1: TMenuItem [29]
      Caption = 'N'#227'o mostrar mais os Atalhos'
      OnClick = NomostrarAtalhos1Click
    end
    inherited SalvarConfiguraes1: TMenuItem
      Visible = False
    end
    inherited ConfiguraoPadro1: TMenuItem
      Visible = False
    end
  end
  object FormBkg: TFormTransitions [6]
    BackgroundOptions.GlassVisible = False
    DestroyTransitions = False
    ShowTransition = T_FormShow
    Left = 649
    Top = 270
  end
  object TransitionList: TTransitionList [7]
    Left = 655
    Top = 211
    object T_FormShow: TInterlacedTransition
      Milliseconds = 500
      SmoothingLevel = 4
      SubStyle = 2
    end
    object T_ConsultaPreco: TWaterfallTransition
      Milliseconds = 500
      Direction = tedLeft
    end
    object T_Cliente: TCircleTransition
      Milliseconds = 500
      SmoothingLevel = 5
      Style = 3
    end
    object T_Alteracao: TRollTransition
      Milliseconds = 500
      Direction = tedRight
      Size = 35
    end
  end
  object P_Saidas: TDataSetProvider [8]
    Constraints = True
    Left = 48
    Top = 664
  end
  object ppmItens: TTS_PopupMenu [9]
    OnPopup = ppmItensPopup
    Left = 310
    Top = 320
    object MostrarCabealho1: TMenuItem
      Caption = 'Mostrar Cabe'#231'alho'
      Checked = True
      GroupIndex = 1
      OnClick = MostrarCabealho1Click
    end
    object AlterarTabeladoItem1: TMenuItem
      Caption = 'Alterar Tabela do Item'
      GroupIndex = 1
      OnClick = AlterarTabeladoItem1Click
    end
  end
  inherited Beep: TBTBeeper
    Left = 721
    Top = 184
  end
  inherited FormStorage: TFormStorage
    Active = True
    Options = []
    StoredProps.Strings = (
      'NomostrarAtalhos1.Checked'
      'pnStatus.Visible')
    Left = 516
    Top = 236
  end
  object msPedidoRapido: TTS_ModuloStyle
    StyleControler = esPedidoRapido
    BarEndColor = 7171510
    BarStartColor = 14674687
    CaptionShadow = 10921682
    FormColor = 13303807
    Textura.Data = {
      36440000424D364400000000000036040000280000007F000000800000000100
      08000000000000400000120B0000120B0000000100000000000097ACD7009CB2
      DC00A1B6DE00A3B7E100A6BAE200A5BAE400AABEE600AABDE300A9BEE900ABC0
      E600ADC1E600ADC3E600ABC0EA00ACC0E900AEC3E900ADC1EA00ADC2EC00AFC4
      EA00B1C5EB00B1C5E900B1C5EC00B1C6EC00B2C7EC00B1C5EE00B4C7EE00B0C3
      EC00B3C8EB00B3C8EE00B3C8ED00B4C9EF00B6CAED00B7CCEF00B5CCED00B4C9
      EC00B8CCEF00B9CDEE00B2C6F000B4C7F100B2C9F100B4C9F000B5C9F200B5CA
      F000B4CAF000B6CBF000B6CAF300B5C9F200B7CBF400B5CAF500B7CCF100B7CC
      F200B5CCF200B6CCF400B8CBF200B8CBEE00B8CBF500B8CCF000B8CDF000B8CC
      F100B8CCF200B8CCF300B8CDF300B9CDF300B9CEF100B9CEF000B9CFF200BACD
      F000BBCFF000BACFF200B8CCF400B9CDF600B9CEF400B8CFF500BACDF400BACF
      F400BBCFF400BACEF500BBCEF700B9CDF700BCCFF100BCCFF300BCCFF600BBCE
      F800B7CCF800BDD0EF00BBD0F200BBD0F300BAD0F300BAD0F100BBD0F500BBD0
      F400BBD0F600BAD1F600BCD0F100BCD0F200BCD0F300BDD1F200BDD0F300BCD2
      F300BED3F100BED2F300BFD2F300BED1F100BCD0F400BCD0F500BCD1F400BDD0
      F400BCD0F600BCD1F700BDD1F700BCD0F700BDD2F400BDD2F500BDD3F400BCD2
      F500BDD3F600BDD2F700BED1F400BED0F400BED3F500BFD2F400BFD3F400BFD3
      F500BED2F700BED3F600BFD2F600BFD1F700BFD4F200BFD4F300BFD4F100BED4
      F400BFD4F400BFD4F500BFD5F400BED4F700BFD4F600BFD4F700BFD5F600BFD5
      F700BED4F600BFD6F400BFD6F700BDD4F500BBD0F900BDD2F800BFD3F800BED3
      F800BDD1F900BFD4F900BFD5F800BFD4FA00BCD4F800BED3FC00AFC5EE00C0D3
      F200C0D3F400C0D3F700C1D4F300C2D5F200C0D4F500C0D5F400C1D4F400C0D4
      F600C0D5F700C1D4F700C1D5F600C0D7F500C1D6F400BFD7F400C0D6F700C1D7
      F600C1D7F700C0D7F700C2D4F400C2D5F700C3D5F600C2D7F400C2D7F500C3D7
      F500C3D7F400C2D6F700C3D7F600C3D7F700C3D6F700C4D7F500C5D7F700C4D7
      F700C5D7F300C0D5F800C0D4FA00C1D5FB00C1D6F800C1D6F900C0D7F900C2D4
      F800C2D7F800C2D7F900C3D6F800C3D7F800C3D7F900C3D7FA00C2D7FA00C2D5
      FB00C2D6FD00C5D7F800C4D7FA00C5D6F900C2D4F900C1D8F500C3D9F400C3D8
      F400C2D8F700C3D8F600C3D8F700C3D9F700C2D9F600C3DBF700C1D8F700C5D9
      F400C4D8F400C4D9F700C5D8F600C4DAF500C5DAF700C5DBF600C6D8F700C6D9
      F700C6DAF500C5D9F300C7DAF700C7DBF600C7D8F600C7DBF700C1D8F800C3D8
      F900C3D9FA00C3D8FB00C3DAF800C4D8F900C5D9FA00C5D8FB00C5DAF800C4DB
      F900C7D9F800C6D8F900C6DBF800C6DBF900C7DBF800C7DBF900C7DAF900C7DB
      FA00C6DAFB00C5DAFB00C6DAFC00C7DCFB00C9DBF700C9DBF900EAEAEAE9C2C2
      E9C2C7BEA8A8A8A8A8A8A4A4A2A2A2A2898988E8D5D5D5D7DEDBD2D2D2D5DEDE
      DEDBF4F4F4F4F5F5F5F5EFEFEEC5C4C6EDEEEEEDDBDBDBDBDBDBECECEAC2C3C3
      BEA2C2E9D5D2A5A5A8AA8C81AB8A3840686F87BBAAA8A5A9CFCFABABE8E8E8E8
      C2C2C2C2E9E9D5D5D5D5ECF1FBEAEAE9BE87686E6E5E6886C200AAAAAAAAC2E9
      E9C2A287A8A8A8AAAAAAB3B5BEBEA287898988ABD5D5D7D7DEDBD5D2D2D2DBDE
      DEDEF4F4F4F4F5F5F0F0CCEFEDC5C4C4C5EDEEEDDBD4D4D4D3D3D5D5E9C2C3C3
      C3BEAAAAD2A9A9A5A8AA8861707038726F6F87BBA8A8A5A9CFCFE8E8E8E8E8E8
      AAAAC2C2C2C2D2D2D2D5D5D5EAE9E9C2BE876E7676686E87AA00AAC2C2AAC2C2
      AA8888A8AAC2E9E9D5D5C5C5C2AAA8A8A2A288AAE9EAECECF0DBECD5D4D4D3DB
      DEDEDEDEF4F4F5F0F0F0EDEDEDC5B5B5B5C5EDC5C5B5B4B4B0B0A9D2C2AABEBE
      BEBEA8A8A9A9A8A8A888708D553F38BB4386A2BEAAAAAAC2D2D2E8E8E8ABAAAA
      AAAAC2C2C2C2D2D5D5D5D2D2D5D2C2C2BE878686867686A2C200C2C2C2AAAAA8
      A888AAC2E9EAEAEAECF1EDEEEAE9AAA8A2A2A8AAE9EAECF1F0F0F1ECD4D4D3DB
      DEDEDEDEDEDEF0F5F5F5EDEDC5C5B5B3B5C5B5B5B3B3B0B0B0B0A5A9AAA887A2
      A287A8A8A5A5A88883838D618A5737875E87A2BEC2C2C2E9D5D2ABABABABAAAA
      AAC2C2C2C2C2D2D5ECECD5D5D5D2C2C2BEA287A2A28787BEAA00768687868687
      A8AAAAC2D5D5D5ECECF1F0F0F1ECE9AAA888A8AAC2E9EAEAF0F0F1ECDBDBDBDE
      DEDEF4F4DEDBDBDBF0F0E9C2AAAAA888A8AAA8A8A8A888888888A5A5A8888787
      A287A8A88BA5A8888676BB3E87663876BE7688AAC2E9E9C2C2AAABABAAAAAAAA
      C2C2C2AAAAC2D2D5D5ECD5ECD5D2C2C2BE878687A28787A2A8006E7686767686
      AAC2C2C2D5D5D5ECF1F1F5F5F1F1EAC2AAA8AAAAAAE9EAEAF0F0ECECDBDBDEDE
      F4F4F7F4DEDBD4D4D4D4C2AAA8AAA8838388A8A8A8A8A8888888A5A5A8A8A2BE
      BEBEA8A88B8BA888878687686837C3BEA2BEA8AAE9E9E9C2C2AAABABAAAAAAAA
      AAAAC2C2C2C2D5D5D5D5D5ECD5D2C2AAA2867686878686878800878786767687
      AAAAD5D5D5D5ECF1F4F4F5F5F1F1ECECC2A8C2A8A8C2C2C2EDEDDBDBD4D4DBF0
      DEDEF4F4F5F0DBDBD4D4C2AAA8AAA8838388A2A2A2A2A8A8A8A8A9A9AAA8BEC3
      C2C2AAA8A5A5A888878767BC433EFCC383C2A9D2E9C2C3C3C3BEAAAAAAAAAAAA
      AAAAC2E9E9E9ECD5D5D5D5D5D5D5C2AA87866E868786868788008787767687BE
      C2AAECECECECECF1F4DEFDF5F1ECF1ECE9AAC2A8A8AAC2AAC5EDDBD4D4D4D4DB
      DEDEF4F4F5F5F5F0DBDBE9AAAAC2AA8888A88787A2A2AAAAAAAAD2D2C2AABEBE
      C2AAC2C2A9A5888887877A6A66C8C387E981A9D2C2AABEBEBEBEA8A8A8A8AAAA
      C2C2C2C2E9E9D5D5D5D2D5D5ECD5E9C2A2866E8687878687A800877B6E86BEA2
      A8E9D5D5DBF0F4F4F4DEF1D7DEDEDBD4D4DBC5C5C5B3A17987BED4B4B0D4DBDB
      F0F5F0F0F5F5F5F5F0F0ECD5C2C2C2AAA8A8AAA88888A8AAAAAAD2A9AAC2C2C2
      AAAAD5D2A5D2A883BF686C4A436FA2BEA8A8A9A9C2AABEBEBEBEAAAAA8AAAAAA
      C2C2AAC2C2E9D5D5D5D5D5F1C2AAAAAAA2687687878687BEA2007B7B7687BEBE
      AAE9D5D5F0F0F4F4F4F4F1D7DEDEDBD4DBF0EDEDC5A477777686B0B0B4B4D4DB
      F0F0DBF0F0F0F0F0DBDBD5D2C2C2C2AAA888A8A888888888A8A8A5A5A8AAAAAA
      AAAAD2D2A5D28381875567676F87878688AAA9D2C2C2C3BEBEBEAAA8A8AAAAAA
      AAC2AAC2C2E9D5D5D5D5D2D5AAAAA888876E6E87A287A2BEA200686F76A2C2AA
      A9D5DBDBDEF4F4F4F5F5F1F1DEDBDBDBF0F9F0F5EDA478636E6E9FB0B4B4B4DB
      F0DBF0F0F0F0F0F0D5D5D2D2C2C2C2AA88838388888888888BA5A5A5A8A8AAAA
      A9A9D2D5D2D288817B435E6E87BEA88388C2A8AAAAAAAAAABEBEAAA8AAC2C2C2
      C2C2C2C2C2E9DBDBDBDBC2E9AAAAA286877B6F87BBBB87878700667B87BEC2AA
      A9D5DBDBF4F4F4F4F5F5F1ECDEDBDBF0F5F9F5F9EEB38282766E7FB0B4B0B4DB
      F0DBF0F0F5F0F0F0D5D5D5D2C2AAAAA88381818388A8A8A8A5A9A9A9C2C2C2AA
      A9A9D2D5D5D2A8886F3E868687BEAAA8A8AA88A8AAAAAAAABEBEAAAAAAC2E9C2
      C2E9C2C2E9E9DBDBD4D4C2E9AAAAA26E7B7B7B878787868676006E87BEC3E9C2
      A9D5D3DBDEF4F0F0F5F5D5D5DBDBDEF4F4F4F5F5F0B4A49E86767EA6B0B0B0DB
      F0DBF0F0F0DBDBDBD2D2EDC5B5B3A49E82829EA4B0B4B4B4D3D3B4D4DBDBDBD4
      D4D4DBDBDBB1B5B3754EB5B3B3B3AAAABEA2A2A2AAC2C2AAA9D2A8A8AAC2E9C2
      C2C2E9E9E9E9DBDBD4D4C2E9A2BE865E68687B87878787877B0076A2C3C3EAE9
      D2D5D3DBDBDEF0F0F0F0D2D5DBF0DEF4F4DEF5F5F0DBB5A486767F9FA6A6B0D4
      DBDBF0F0DBDBDBD4D2D2C5B5B3A49E9E8282B3B3B4D4D4D4D3D3B4D4DBDBF0DB
      DBDBDEDEDBB1B5B36975A4B5B5B5A888A2BE87A2AAC2C2C2D2D2AAAAC2E9E9E9
      C2E9E9E9E9E9DBDBD4D4E9E9BEBE876868557B7B7B8787877B0076A2BEBED2D2
      B4D4D3D3D4DBF0F0EEEDA9D2DBDBF0F5F6E1F8F2F0F0C59E81817F7F9F9FB0B4
      D4DBF0DBDBD4D2D2D2D2B5B5B3B3B3A4A49EB4B4D4D4DBDBDBD3D4D4D4DBDBF0
      DEDEF4DEF4D3B59E4F9BA6B4D4B4ADA3BEC387A2AAC2D2D2D6D6C2C2C2E9E9E9
      E9E9E9E9EEEEDBDBDBD4E9EAC3BEBB7B6F436A6C8787877B7B006E878787A5A5
      B0B4D3B1D4DBDBF0EDEDD2D5DBDBF0F9F6E4F2B8D4F0C5825D619F7E7E9FB0B4
      D4DBDBD4D4B4A9A9A9A9B5B5B5B5C5B5B5B3B4B4B4D4DBDBDBDBF0DBD4D4DBF0
      F4F4DEDEF4D3A46341C1B0B4D4D4C6C6C3BEA2BEC2E9D5D5D5D5C2C2C2C2E9C2
      E9E9EAEAEEEEF0DBDBD4C2EABEA2BB876F384A6C87877B666800AAA8A8A8A8A8
      B5EDC5C5F0F0D4DBF0D4DBDEDFDFDFDFDBDBD3D3EDEDC3876E5E7477A1A188AA
      AAAAA9A9A9A9D4F0F0DBDBD4D4D4DBDBD4B4D4B4B4B4B1B1D3DBD2D5F0F5DEDE
      E4E4F5DBFAB58C8968BFA8AAC2C2C2AAB5B5B5C5EDEEEEEDEDEDD2D2D2D2D8D8
      D2D5F1ECDBF0F5F0DBD4C6CCC6ADA2A27B4349468E9246466B008188AAAAC2E9
      C5B3C5C5DBF0D4DBDBDBDBDBDDDDDDDDDBD3F4F4EDB3866E5E3F4E6077798388
      A8A8A5A5A9D2DBF0F0F0DBDBDBDBDBDBDBD4DBD4B4B4D3D3DBDED2D5F0F0DEDE
      E4E4F0F5EDB3AB8D5694AAC2C2C2AAAAB5B5B5C5EDEDEDEDEDEDD2D2D2D8D8D8
      D2D5D2A9D4DBF0F0F0F0C4C6C4AD8786683E463B4545314691004991BD95BBBF
      C8BFBEBEAAC2C2AAC2E9C6CCCCCCEDEDEDC5B5B5A8816E766E68697576766E76
      83838BA9D5ECF0F5F5F0F0F0F0F0F5F0F0DBF0DBD4DBDBDBDEF4ECECDEF4F4F4
      E4E4DBF9C4A3BB554995AAC2C2A8A8AAAAA8C5C5EDEEEEEDDBF0DBDBDBDBD4D4
      D4DBD4B4C5EDEDC5C2C2BFBFA2A287726A582C27282E2C2E3B00293C6B7387BB
      C8BFA2878388A8A8A8C2C6C6C6C6C5C5C5B5B3B588615E6E6E546975685E5E68
      8188A5D2ECF1F0F0F0F0F5F5F5F5F5F0F0F0D4D4DBF0DEDBDBDBF1ECDEF4F4F7
      F6E4F0F5ADA3661F6A9388A8A88383A8AAA8B5C5EDEDEDEDDBDBDBDBDBDBD4D4
      D4DBD4B4B5C5C5B5AAA8BB7B6E68563E3C462724252E454C4600454C8E95BD95
      8F6B959372728C8C898CA3ADADADADAD878787877A4A484B483B35373F435468
      83A8A8C2DBDBDBDBF0F0F0F0F5F5F0F0F0F0DBDBDBF0DBDBDBF0D7D7DEDEF4F4
      F5F0FAB5BB872B1D8F918787878686A2BEA2A8AAC2C2C2C2C2C2E1E6E0E0B8B8
      CBCBB5B387A2C3C3BEA2947268593E1F323C2E282628334533002427364C5A5A
      6B956B93727189898D8A79A1A1A1A1797B6F6F684A3D3B3B342B1E2243687676
      88A8A8AAD4D4D4DBF0F5F0F5F5F5F5F0F0F0F9F0DBD4D4D4F0F5D7D7DEDEF4F4
      F5F0FAB3BF87292B95918786868686878787A8AAC2C2C2AAAAAAE6E6B8B8B8B8
      CBB9C5B38787A2A287878785858585715B6B924D28262F2F2A003B4646311612
      11111D5858496B6B496A616170706868666650482E2C2C28252C435568878786
      838888AAD4D4D4DBF0F0F0F0F5F5F5F0F0F5F5F0DBD4D4D4DBF0D5D5DEDEF0F0
      EEEEC6C4BF683B506C6C7A6A6A7A907A7B8787BBBFBFA2A2A2A2ADADADADADC4
      ADADBEA28786766E76867B7B8687898985856D5A3C3C6D6D40006B6B6D494931
      0E040A2B3C3A49493C46545D5D5D5443433E2B1D25272C2C4D516F686F7B8676
      8388A8AAD4D4D4D4DBD4D4DBF0F0DBDBDBDBDBD4DBF0DBD4B4B4D6D6DBDBDBDB
      EDEEA3C4BB434B6C486D6A46466C7A6A687B878787878686767679797979A1A1
      A1A186767676686876A2BFBBA287898985856B6B49498F8F6800888886868676
      66432B122B7A484B906D87878768876F6C7A673D3B3B343B48484A67686F686F
      86A2B3B5C5EDDBDBF0F0D5D5D5D5D5D2D5D5D5ECECD5D2D2D2D5ECD2D2D5E9AA
      A2BEBBBFC91690933B3B313C3C3B3B496B8F93586A93916A6B738E8E2E2E6D6B
      6A6B6668686E79A1A4B3B3B3B3B5AAA8878687554A7A87878800AAAABEBEBEA2
      877BBC4A3D3D2B29486C876F7B8787BBBC6C906C6D4B48444444674A5566686F
      76879EA4B5C5D4DBDBDBD2D2D2D2D2D2D2D2D5D5ECD5D2A9A9A9D2A9A9D2AAA8
      A2A2C77B6A394A3A3B2915161615161D29274646586A6A6B6B46454533282727
      2B495566686E79A3B3B3C5B5B3B3A8A8A2877B666A93BBBBAA00D3D3D3D3B4B4
      B3B379AD9B747A4837484D8E9297458E918F6A6A59687070573F58463C3C6668
      79A1829EA4B5B4D4D4D4C2C2C2C2C2C2C2C2C2E9E9E9E9C2AAAAA8AAAAAABEBE
      BEA2876F1F3E553E90676C6C583C3A3A291D1D151B292927271D981010982428
      466A55686E86A4B5B4B4EDC5B4B4B4B4B3A4777479C4B3B3D400DBDBDBD3B4B4
      B5B5A1C6C19BCE7D4A672C0F1051974C498F91937168818888AB58463C466668
      77779EA4B3B5B4B4D4D4AAAAAAAAAAAAAAAAAAAAC2C2C2C2C2C2A8AAAAA887A2
      BEA27BC7373E7B8790909090736B6A6A493C3C1D1B27271D272B26101026334D
      6A496F7B8787B3C5D4D4C5C5D4D4DBD4A4827977A1C4B5B5DB00F0F0F0DBD4D4
      C5EDE9C2BE87868787768E4D190510284445466B93917271708D6B6A58586868
      74779EA4A4B3B4B4B4B4A8A8A8A8A8A8A8AAA2A2A2A2BEBEBEBEBBBFBB877B87
      878787BF3F5E86BE6E8686868786898987878571583C3A586B496A3A466B5956
      686F8687B3B3B5C5D4D4C5C5D4D4D2A98881877686BEC5EDF000F0F0F0F0DBDB
      EEFAE988BEC7A2BEC36E97923625360F0D27313C6B9172858A616B6B6B6B6F68
      747482829E9EB0B0B4B4A8A8A88888A8A8A8A2A2A287A2A2A2A2BB87877B7B87
      8787873743A286C387BEA2A2A2878A70717285716B58496A6B6A6A586B736859
      7BBBA2A2B5B5B5EDDBD4EDEDD4B4A5A58888A28686BEC5EEF500E9E9E9E9E9E9
      EAEAEA88A5A98BA5D8A5564020206B472C363625251710244D4D4946496A6F68
      7474787878829FA6A6A688838383868687878786868687878786906C6A6C7B7B
      7B6F7B3E6EC788A8A8A8A9A9D2D2AAA88C8C8961708A71597172A0A063637878
      82A4B3B5C5C5E9E9E9C2C7C7C2AAA8888C8C948587BBBEC7EA00E9E9E9E9C2C2
      C2C2C2AAA9D5D2A5A5A585612B1F3247364C8E51922E08082F36312B3046666F
      7774787878789F9F9F9F707070706E6E767668686E6E7676766E6A4A4A6A7B6F
      68683E7B87A2C2C2A8C2A9A5A5A9AAA88888898C8C8D68859485ACB69E82B3B3
      9EB3A4B3C5C5C2E9C2AAC3C3E9C2AAA8898C9485878787BEE900D2D2D5D5DBDB
      EDEDEEEEEDC5D4B4B0A6C8682B2B4C2C3C6D67BD7B55461B982F4D2F282F3651
      6D6D6B6B76868888A6A6AAA883838388A8A8C28884A5B4A6A6A67B7B4A6C676C
      3D397D7AA3C1C4C4C6CCC3BEBEBEBE87A3A3A4B3B39E829EA6A688888888A6A6
      A6A6B0B4D4DBDBDBDBD4DBD4D2A9BEA28C8985948787BEC3B500D2D2D5D5DBF0
      EEEEEDEEEEEDDBD4B4A66F683B124C2E3C8FBCBD6F556D31242624241724252C
      2E2C4949686E8388B0A683838388A8A8888388AAD2D2B4A69F9F8768936CBD6C
      7A4A90CEC1C4C4C1C4C4A2A2A2A2A287A1A19EB3B3A49EA4B0B0A8A8A8A8B0B0
      B0B0B0B4B4D4D4D4D4D4D4B4A5A5A2A28C8C87948787BEC3C500D5D5D5D7F0F0
      F5F5F0F0F0F0F0DBB4B0867649123B469191A2A287867B553C49736A493C3127
      15111C2B4A6C7B7B868787A2A2A2878787BF87BBBF8786878776818183A88370
      5D6188A8A5A9B0B0A6A6888888A8888883889EA4B0A6A6B0AFAFA58BA6A6B0B0
      B0B4B0B4B4B4B4D4D4B4B4B0A8A8A2A2A2A287BEA287A8AAC500D5D5D7D7F0F5
      F5F5F0F0F5F0F0F0D4B4A26E5830111B956B8787A2BE877B919573738F6B6B5A
      463B1C1515296687876E6E685E686F6F7B878787878787A28776838881C28183
      618188A8A5A5B0B0A6A688838888A88888A8A4B3B0B0B4B4B1AF8B8BA6A6B0B0
      B4B4B4D4D4D4D4D4D4B4B4B4A8AABEBEA2A2A2C3BE87AAAAC500D3DBDEF4F4F4
      F8F2F5F5F5F0F0F0DBD4888185681109BD91E9A8B0B08888A286A8A8A8888668
      5640496B6A3012111D3D41371F436C7A6B6B6B6B8F95958F6D6D8370876E8768
      83888888A5A5A5A5A5A78484848B88888BA5B4B0B0B4B1B1AFAFA6A6A6B0AFB1
      D3D3B1D3DBDBDBD4D4B4A8A8A2BEC3BEA2A2A2C3B5B5D4D4D400D3DBDEF4F4F4
      F2F2F5F5F5F0F0F0DBD4AAA894594711BD93E9C2D4D48888BEA2A8A8A8A88786
      85726B58463A3A3D3D464F413E3E3A2B3C6A6B6D6B6B5A46496B83818668685E
      818888888B8B8B8BA7A78B848BA5A8A8A5A9D4B4B0B4B1AFAFA6A6A6A6B0AFB1
      D3D3B1D3DBD4D4D4B4B08888A2A2BEBEA2A2A2C3B5B5D4DBD400DBDBE4F6F6F6
      E4E4F6F6F5F0F0F0DBB4AA88853E2A33916BA8C2F0DBB4B0C5EEB1B1B0A68381
      766E56596B736C6A6A6A6975663E160E12273B312E2E2E443645466B495A2950
      50907A7A7A7A7B877B7B888888A8AAAAAAAAAAA8A8A8A58B8B8BA6A6A6B0B1B4
      DCDCD4D4DBD4D4D4AAA887878787A2A2A2A2A8AAB3B3D4D4D400DBDEE4E4F6F6
      E4E4E4F6F5F5F0F0D4B4A8889471065B7391C2E9D4D4F0F0B5B3D3D3B4B0A8A8
      878771686A6A6A6C6C7A9B746F6F3D160D0906090D192428170D111629141416
      444B6A676767686F6F68888388A8A8A8A8AAAAA888A8A58B8BA5B0B0B0B0B4B8
      DCE1DBDBDBDBD4D4C2AABEA2878787A2A2A2A8AAB3A4B4D4D400DBDBF0F0E4F6
      F6F6E4E4DEDEF0F0DBD4B5B3721F332A8F91BEC3DBF0E0E0C5C5B4B4B4B08883
      8687766E686F6E6E7687A1A1767668432B1D1215303C140912272B1D182B4848
      34271D1818181D3444345476BB6FBF8787BB87BBBB8776868787D4B0B0B0D4F0
      F0DBDBDBD4DBEDEDE9C2BF8CA2877687BEBEA2C3C5B3B3EDEE00F0DBDBDBE1E1
      E4F6E4F6DEDEF0F0DBD4B5A4BF68150E6D95BEC3DBDBE0E0C5C5D4D4B4B08883
      768687766F6F6E6E6E86A1796E6E6F684630463A463C313C493C4444486C9595
      6C6C6D505044342B27141A22436887876F7B7B87876F6E7686867FA6B0B0A6B0
      DBF5DBDBD4D4EDEDC2C2898987866E86C3C7C7A29E9EB3C5ED00C6C4B5EDF0F0
      DBDEE4E4E4E4F0F0DBD4B1E0876892024497BBBFC5EDE0E0D4D4EDC5B5B5A49E
      76868676707070617081A4827863767668544366685638556F66546876A2A883
      83888383A28776766F55676739391D3A3A6C6A6C6C6A6C90BB877687BEC3C5B5
      B5C5EDC5C5C5C5C5B5B387A2A2866E6E87C3C3878687BBBBBB00CCC4B3B5DBF5
      DEDBE4E4E4E1F0F0DBD4F2B187879224069787BBC5C5E0E0DBDBC5B5B5B5B39E
      7676766E707070708181B5A482787676766E876F71727B7B6F5576A2C3C3AA88
      88A88888A2A28687BB876A7A90904A2B16164A67674A676C7B7B87867676A4B5
      C5EDC5C5C5B5B5B5B3A487A2A287867686BEBEA287878787BB008594BEA288C2
      F0F0DEDEE4E4E4E4E0B8E79DEEB55A5A116B8787B4D4D3D3D4DBB4B4B4B4AA88
      81816E6E6E6E7882829EB0B0A69F817070707686867677746060AFB1DBDBD3D3
      D3DBB4B0B4B083838786BB87906A3D293D672B2B393A4667686868729494BB87
      87A2C6C6B5C5C5B5B5B36E878787BE8787BBBBBB93738F9195002156A2C3AAAA
      D4F0DEDEE4E4E4F6F2E0E5B2B582BD142B957B87B0B4D3D3D4DBB4B4B4B4AAA8
      83817676766E78787878A6B0B4B0838170816EEBFB876074A3C6B1D3D3D3D3D3
      D3D3B4B4D4DBC2AAC3BE877BBC6A4A3A7A9393907A6A46391F1E3840687287BB
      8786C4C4B5C5C5C5B5B586A28686BE86688787879173916B3300151D5694C3BE
      B4D4DBDEE4E1E4E4E0B8BABA9F7F90390E6B7686A6AFB1B1D3D3D0D1B1B1A9A5
      88837686A177777979779EA4B5B5B39E797777A3775D77ADADA3E1E4F6E4E4E4
      DED3D4B4EDEDC4C1C4A3BF87876F435590937A909393877B727232271C1D1F59
      87BFA3A3ADADC4C6C4C4A8AA866E865E3E6867675A4945332600581D214087A2
      B0D4D3DBE1DCDCE1B8B4BAE5A69F6C6A290A6E76A6AFB1B1D3D3DFD0B1B1A9A5
      888887A2ADA1A1A3A179A4B3B5B5B5A4797777A179A3C6ADADEFB7E1E4E4E4F6
      F4DEF9DBEEEEC7C4C7C7BB876F6F3868907ABCBDC9EBBF8785855A6B6B49381F
      1F387979A1A3ADC4C4ADA8AA6E5E6843386F4A3A291D17172F004D332E2431BD
      9591A2C3D5D2CFD5D0D1FACCC4A3766E4A2B29BCC1C4B8F2E2FED0D0D3B1B4D4
      B8B8B9B9B6B6B6B6AEAEBE86BEC386A268763886B5B3B4DBB8B4DBDBDBDBE1E4
      E4E4E4E1B8F2E0B8B9CB6FBB7B55687687C3C5B5C5EDEDC5B3A49E9E9E9EA1A1
      6E5E1E1F38667A93BCBC8687A2876F68687B6C6A4A463D3A3A00334D4427151D
      6ABDC7A2A5D5D7D6D0E7C4ADC4C4A2876A390493CC9BB1B4FEBADDDDDBD3D4D4
      B8B8CBCBB9B9B9CBCBCBA287A287866E6E4376C3EDB5D4DBB8B8F0F0F0F0E4E4
      E4E4FFE4E0B8B8B4B6B6878787683886EA87EDC5C5EDEEEDC5B5B5B5B5B5C4C4
      8786876F4337393D6A90A2A2A2766F6F6F686C6C6C6A4A463D003C49466B1D09
      1D90BB878787BEC7C3A2FBE9AAA8818885591A20BFBFD4B4DDF6EDEEEDC5B8B8
      D4D4DBD4B1B1CFD6D6D686A287768668873FC7EBEDC5D4DBE1E4F0F0F0F0E0E0
      E0E0B8B8CBCBC5C5C4A37B7B663E68BEE9C2EEEDEDEEEEEDEDEDDBDBEDC5C5C5
      C6C4A2A2BB8768553E3E5E76867686BE8766686F6F68553E3800586A3A2B3A3C
      290E1F7BC7C7BEBEC7C7AA88888881818568400A3787B0B4D1DDEDEDEDC5B8B8
      DBD4DBD4B1B1CFD6CFCF868786878687A268EBEBC5C5DBDBE1F6F0F0F0F0E0E0
      E0B8E0E0F3B9B5B5A3776F663743C3C7AAE9EEEDEDEEEEEEEDEEDBF0EDEDEDED
      CCC6C3C3C7C8BB877B6F763F3F86A26E6FBF7B7B7B6855555500AA83AAA8866E
      68BB6C2911121D466CBDC3A28C8C898996723215098FCA95FCBFCBCBCBCBD4DB
      DBDBD5D6D2D2D2D2D8A5878787C87BC87687E9C2D4DBDEDBE1F6E4F6F6F6F0F0
      DBDBEEEDC4A387A2BB876E385EBEC2E9EAC2EEEDF0F5F5F0F0F0DEF4F0F0DBF0
      F0F0EDEDC5C5C6C6C6C679C6A34141A3C477ADADADA3A1A1A300A883A87086EA
      BB87C9BD936A3A1D1827131A1F618D8A96724733030F6A938CBFB9CBCBCBD4DB
      F0DBD5D6A9D2D2D2D8A5BF8787C855BF5EA2C2E9DBDBF4DEE1E4E4E4E4E4F0DB
      DBD4B3B3ADA386866F66225EA2C3C2EAFBFBEEEEF5F5F5F0F5F5F4F4F5F0F0F0
      F5F5EDEDEEFAFCEFC6ADCCADA3A3A17477A1A1A1ADC4C6C6C400AFA6D3DEDBA6
      9EC57CC4C7C193BD936C4A29150E0A0E2428522F0C0324CA9797A8A8A8A8AAC2
      C2C2C2AAA2A2C9C9BD9390BC6F87387B6EA2AAE9DBDBDEDEE1E4E1E1DBDBDBD4
      B5B3A2A2BBBB7B55381F38A8C2A8EAFBF0FDF0F0F0F5F0F0F0F9DEF4F4DEDEDE
      DEDEF9F9F5F0DBDBDBDBB5B5C5C5C5B3A49E8282A4B3B4D4B400B1DEAFAFB4B4
      EEA4C7C1A3C1BC939093907A907A4629241408050810242F97928888888888A8
      A8A8E9AAA2A2BCBDBC906CBC68683855A2A2AAEADBD4DBDEE1E4E4E4DEDBD4B4
      B3A4A2766F6866556887E9A8C2FBEAFBF5D4F0F0F0F0DBDBF0F5DEF4F7F4DEDE
      F4DEF0F5F9F5F0DBDBDBEEEDC5B3B3C5C5B5B5B3B3B3D4D4D400AFB1B1D3D4D4
      D4DBB5B5B5B3B3B5B5C5C4C1ADA3A177674A6D4C24060614486C9696476B9672
      6BBD878593BC90CE7DEFBC6C6637558776BEA8AAD4DBDBDEE4F6E1E1DBDBC5B5
      A287876668436687BBC7F0DBF0F0F5F5F0F0F5F0DBDBDBF0F0F0F7F4F4F4F4F4
      F4F4F4DEDEDEF4F4F0DBDBD4D4D4B4D4D4D4B0B0B0B0B0B0B000AFB1D3D3D4D4
      D4D4C5B5B5B5B5B5C5C5C4C1ADADADA390904C92924C364429161B96956B476B
      6A307156EB90CE7ACECE7A4A1E437B7BC3A2AAC2DBDBDEDEE4E4E4E4DBD4B5B3
      866E683E43436887BBEBF0F0F0F0F5F5F5F0F5F0DBDBDBF0F0F0F4F4F4F4F4F4
      F4DEF4F4DEDEF4F4F0DBDBDBD4D4B4B4B0B0B0B0B0B0B0B4B400B0B0D4D4D4D4
      B4D4B4B4D3D3D3D3D0D0E1DCD9DADADAB2B2ACAC9E829EA49E782F1017010C08
      928E918F4A67A3C4A0CB93461E6F8786C288D2D2DBDBF0F0E0E0E0E0C5B5A287
      6F553C2B436F87BEC2FBF0F0F5F5F5F5F4F4F5F0DBDBDBF0F0F5DEF4F4F7F7F4
      F4DEF4F4F6F6F6F6F6E4F0F0DBDBD4B4B0B0A6A6A69F9FA6A6009F9FA6B0B0B0
      B4B4B4B4B1D3D3D3D0D0E1E1D9D9D9D9B7B2E0B4A4A4B3B5C5C5978E2F080010
      0628496D93C95DA3B9B6BC39668787BE88A8D2D2D4DBF0F0E0B8B4B8B5B3A2A2
      6F3E293068BFC7C7E9FBF0F5F5F5F5F5F4F4F5F5F0DBDBF0F0F5F4F4F4F7F7F7
      F4F4F4F4F6F6F6F6F6F6F0F0F0F0DBDBD4B4B4B0B09F7F7F7E0070818181829E
      A4A4B0B4B4D4DBDBE1E1D3D3D9E2E2E2D9D9B2DADCE1E1B7B2B28787BC6A8E03
      98030C336B3B8787BE87551F7B8776BEAAAAA9A9D4D4DBDBE0B8B5B5C4A3877B
      583C295887C3C5C5DEDEF5F5F7F7F4F4F4F7F5F5F0DBDBDBEEEEF5F5F5F5F5F9
      F7F7F4F4F4F4E4E4E4F6DEDEDEDEDEDEDBD4DBDBD4B4B09F7F00838383838282
      9EA4B0B0B4D4DBDBE1E4DBDBE2E2E2E2D9DADADADCDCDCDCE2E5C8BFBD4A6D36
      240301020E6DBB87A25438666FBB8686EAAAA5A9B4D4D4D4B8B8B3B3A177553E
      3A3C4993BEBEB3C5F7F4F5F5F4F4F4F4F4F4F5F5F0DBDBDBEEEEF5F5F5F5F5F5
      F7F7F4F4DEDEE4E4E4E4DEDEF4DEDEDBDBD4DBDBDBD4B4B0A600A2A2A2878787
      A3ADA3A3B3B3B9CBF3F3EFEFDBDBDBD3B7B7E0F2F2E0E0E0B8B4E3E3AF80877B
      4C4C240500082F924D8E558776878786E9A88BA5B4B4B5B5B9B9A3796F553A29
      3A6A73BDBEC3B4D4E7E7F5F5F4F4F4F4F4F4F5F5F0DBD4D4EDEEF5F5F5F5F5F5
      F5F5F5F5F0F0F0F0F2F2F4F4DEDEDEDBDBDBD4D4C5C5C5B5B5008787A2878787
      A3AD79799EA4B6B9CBCBCCC6D4D4D3DBE1DCE0F2E0B4B8F2F2E0E3E3D19DBFBB
      4C6D2F522F10060317456F688676A2C788E98BA5B4B4B3B3B6B6A3796855392B
      58BD93BD87C7DBD4E7E2F5F5DEF4F4F4F4DEF5F5F0DBD4D4EDEEF0F0F5F5F5F5
      F0F0F9F5F0F0F5F5F2E0F4F4F4DEDEDEF0F0DBDBC5C5B5B5B500B1B1B4B4B0A6
      B0B0B5B39F7F7FA6B0B0B3B3B3B5B5B5B5B5B3B3B4D4D4D4DBDBDBD4B4A68787
      876F6B6D291B27160E11458E6B918785A8A89FD4EDA4F3C4C1AD765E541F2187
      A3C6ADADB5C5D3DBDEF4F6F6F7F6F4F4E7E7F7F4DED3B4B4C5EDF5F5F5F5F5F0
      F0F0F0F5F9F9F0F0F5F9F4DEDEF4F4F4DEDBD3DBDBD3D4DBDB00D3D3D4D4B4B4
      B4B4B3B3B0B0B0B0A69FB3A4A4A4A4A49EA4B5B5D4D4D4DBDBDBD4D4B4B4BE87
      7B663A58463C6B6B3C3B2824468F85948381D4B4B5B3AD9A9BCD6E54541F1FA2
      ADC6C4C4C5EDDBDEF4F4E4F6F6F6F4F4E7E7F4F4F4DBD4D4EDEEF0F0F0F5F5F5
      F5F5F0F5F9F5F0F0F0F5DEDEDEDEDEDEDBDBDBDBDBD3D4D4D400D4D4DBD4D4D4
      D4D4B3B5B5B5B4B4A69FB0A69E9E9E9E8282B3B3B0B0B4B4D4D4B4B4B5C5BEA2
      7B666687735893EBBDBC7272431A2B907BBF877B87BFC4C4AD79683E551E55BB
      C4C4B5C5D4DBDBDEF4F4F6F6F6F6F4F4F4F7F4F4F5F0DBD4EDEEF0F0F0F5F5F5
      F5F5F5F5F5F5F0F0F0F0DEDEDEDEDBDBDBDBDEDBDBDBDBD4D400B4B4D4D4D4D4
      D4D4B5B5B5B5B4D4B4B4B4B0A4B3B3A49E829E9E9FA6A6B0B4B4B4B4B3B3A287
      877BBFC7956B90BDBDC994BF68BB1D093E55BB6F6FBB777979776838551E6F87
      C4ADB5B5D4D4DBDBDEDEF6F6F6F6F7F7F7F7DEDEF5F0D4B4C5C5F0F0F5F5F5F5
      F0F0F5F5F5F5F5F0F0F0DEDEDEDEDBDBDBDEDEDBDBF0DBD4D400D4D4D4D4D4D4
      C5C5C5C5B5B3B4D4D4D4B4B4B4D4C5B3A49EA6A6A6A6A6B0B0B0AAA8A8A8A286
      8787BBBBBEBEC3BEBEC3F062AA83BD7A0F28282E6D6C586B72565A3C461D877B
      B5B3B4B4B1D3DBDBDEDEE4E4E4F6F4F4F4F4DEF4F5DBD4B4B5B5F0F0F0F0F5F5
      F5F5F5F0F0F5F5F5F5F0F4F4DEDEDBDBDBF0DBD4D4DBDBB4B400DBDBDBDBDBD4
      B5B5C5C5C5B5D4D4B4B0D4D4D4DBC5B5B3A4B4B4B4B4B0B0B0A6A8A8AAAAA286
      87BB8787A2C7EBC3C3EBD4F5EAC26C7ABD36281914346B3C5985493C3D1D7B68
      A4B3B4B4B1D3DBDEDEDEE4E4E4F6F4F4F4DEF4F4F5DBD4B4B5B5DBDBF0F0F5F5
      F5F5F0F5F5F5F5F5F5F5F4F4DEDEDBDBDBDBDBDBD4DBDBD4D400DBDBDBD4DBD4
      B4B4B5B5B5B5B4B4B4B0DBDBDBDBD4B0B0B0B4B4D4D4D4B4B0A68787BEBEA286
      A2EBBEA2A8C2D4D4F0F5F2F8A4B3C79B7A904B50280408265A2A444434297B68
      82B3AFB1B1D3DBDEF0F0E4E4E4E4F4F4F5F0F0F0F0DBB4B0B3B5D4D4DBF0F0F5
      F5F5F0F5F5F5F5F5F5F5DEDEF0DBDBD4D4B4D4D4D4D4D4D4D400D4B4B4D4D4D4
      D4B4B3B3A4A4B0B4D4D4F0F0F0DBB4A6B0B4B4B4D4DBDBD4D4B4878787A28686
      C7FCBEBEC2E9D4F0F5DBF2E0F9EDA3A390906C442E060C040E1B2C442B2B6F66
      82B5AFAFB1D3DBDEF0DBE4E1E1E4F4F4F0DBD4DBDBB4B0B0B3B5DBDBDBF0F0F0
      F0F5F5F5F9F5F5F0F0F0DEDEDBDBDBD4B4B0B0B4B4B0B0B4B400AFB1D3B1B4B0
      B0A69F7E7EA6D4D4D4DBD4D4D4D4D4B0A67FA6B4DBDBD4B4B4B4BE87BEBE86BE
      EAEBAAC2C5C5D4D4DBDBF8F3CBB9B3B3888387663B12240F01100F19123B7B66
      A4A4AFB1B1D3D3DBF0DBE4E4E4E1DBDBF0F5F0F0DBB4A6A6A6B0B4D4F0F0F0F0
      F5F5F5F5F9F9F5F0F0F0F4DED4B4B4B4B0B0A6A6A6A6B0B4B400AFB1D3B1B4B4
      B4B0B4A6B0D4DBDBD4DBF0F0F0F0DBD4B4A6B4D4DBDBDBD4D4D4C7BEBEC3A2C7
      EAC7AAC2C5C5D4D4DBDBF3F3CBB9B5B5A888687B5A1B282E0C08191027465587
      82B3A6AFD3D3D3DBF0F0E4E4E4E4DBDBF0F5F0F0DBB0A6A6B0B4D4DBF0F0F0F0
      F5F5F0F0F5F0F0DBDBDBDBD3B4B4B0B0B0B0B0B0A69FA6B0B000AFB1D3B1B1D3
      D4B4DBD4DBF0F5DBDBDBDEDEDEDEF0D4B4B0B4B4B4D4DBDBD4D4EAC2AAAAC3EB
      EBC3C2C2EDC5D4D4D3D3CBCBB5B3B0B0B09F81705537293C36170406153B6F7B
      60ADA6B4D3DBDBDBE4F6E4E4F6E4DEDEF0F0F0F0DBB0A6B0B4D4DBDBF0F0F0F0
      F0F5F0F0F0F0F0DBDBD4D3D3D3B1B1AFB0B4B4B0B0A6A6B0B000AFB1D3D3D3DB
      DBDBDBDBF0F5F0DBDBF0DEDBDBDBDBD4B0A6B0B0B4D4DBDBDBD4E9C2AAAABEC3
      C3A2C2E9EDC5D4D4D3B1C4C4B3A4A6A69F7F885738382B3B4D4D280D0A1D371F
      C4ADA6B0B1B1D3DBE4E4E4E4F6F6DEDEF0DBF0F0DBB4B0B0D4D4DBDBDBF0F0F0
      F0F0F5F0F0F0F0F0DBDBD3D3B1B1B1B1B4B0B4B4B0A6A6B0B000D1D0DBDBDBDB
      DEDEDBDBDEDEDBDBDBDEDBDBDBDBDBD4B4B0B0B4D4DBDBDBDBDBD4DBD4B4AAAA
      A8A8E9E9E9C2C5C5D4B4B5B5B5A4A4A49E78785C4E2242774E4E494607113768
      4175A4A4ACB1B7DCE1DCE5E5E4E4DEDEDBDBD4DBD4B4B0B4B1B1B8B8B8E0F2F2
      F2F2F8F2F2F2F2F2E0E0D3B1AFAFB1B1AF9FA6AFB0A6B0B4B000D1D0DBDBDBDE
      DEDEDEDEDEDBDBDBDEDEDBDBDBDBDBD4B4B4B0B4DBDBDBDBDBD4DBF5F0D4C2AA
      A8C2C2E9E9C2C5EDD4B4B5B5B3A4A49E8278636374415D794E756A491C021A1E
      41A3A4A4ACB1B7E1E1DCE2E2E4E4DEDEDBDBB4D4B4B0B0B4B1B1B4B4B8B8E0F2
      F2F2F8F2F2F2F2F2E0E0DBB1A6A6AFAFA69FAFAFB0B0B4D4B400D0DDDDDDDBDB
      DEDEDBDEDEDBDBDBDEDEDBDBDBD3DBD4D4B4B0B4D4D4DBDBD4D4DBF7F0B4B5B3
      88AABEC3C3C3C5EDC5B5CFCFA58BA4A4A17979796363626262A6593E4930041D
      41417479AEB6B7DCE2D9E2E2E2E2DEDEF0DBD4D4B4B0B1B1D3D3B8B8B8E0F2F2
      F2F2F2F8F8F2F2E0E0E0D3B1AFAFAFAFAFAFB1B1B1B1D4D4D400D0DDDDDDDBDB
      DBDBD3DBDEDBDBDEDEDBDEDBDBDBDBDBD4D4D4B4B4D4F0F0DBD4D3F4D4A6B3A4
      83A8BEBEBEBEC5C5C5B5CFCFA9A9B3B3ADA179795C827F7EAF5356684929150E
      22374274AEB6B2B2DAD9E2E2E2E2DEDEF0F0F0F0D4B4B1DBDBDEE0E0E0E0F2F2
      F2F2F8F8F8F8F2F2F2F2D3B1B1AFA6A6B1D3B1B1B1AFB4D4D400E1DCB7DCE1DC
      DCE1E1E1E1E4E4E4E4E1E0F2E4E1D9E2E2E2E1DCB8F8F8B8DCE1C2889EB5B49F
      9FD4B0B4DBDBD4B4A9D2C5B5B4B4B5B3B3B382827878777979798170583C240D
      0D19466A85857BBFC9C9B7E1B7E4E1F6DCE4E1E1E1DCDCE1E1E1DBDBDBDBDEDE
      DFE7E7E7E7E5F6F6E4E1E4DCB7B7B7B2B2DCDCB7B2B2DCDCDC00E1DCB7DCE1DC
      DCE1E4E1DCDCDCDCE1E1B8E0E4E1D9D9E2E2E4E4F2F8F2B8DCE1EAAAB5C5D4B0
      B0D4B4D4DBDBD4B4A9A9C5B5B4B4C5B5B3A48278636377797977707058584517
      0D0F070938BF877BBCBDB7E1E1B7E1DCE1F6DCDCDCDCDCE1E4E4DBDBDBDBDBDE
      DFDFE7E7E7E5F6F6E4E1E4E1E1DCDCDCDCDCDCDCB7B7DCDCB700E1DCDCE1E1E1
      E1E1E4E1E1DCDCDCE1E4E1E4E5E2E2E2E4E1F0F0EEEEEDC5D4D4EEEDDBDBDBD4
      D4DBD3DBDBDBDBD4D4B4D4B4B4D4D4B4B0A69E82635F777977748181553E3627
      14272B1D0B0B2B6A90BCAEB6CBB6FACBF2F2E0B8B8B8E0F2F2F8DEDBDBDBDBDB
      E4E4E4F6F6E4E4F6E4E4E2E5E5E2E2E2E2E2D9E2D9D9D9DADA00E1E1E1E1E4E1
      E1E1E1E1E4E4E4E4E4E4E4E4E7E5E5E5E4E4D4DBEEC5B5C5DBD4EDEDDBDBDBF0
      F0DBDEDEF0F0F0DBD4B4D4B4D4D4D4B4B0A6A482786377A179775D8166434C28
      242C5A4659210A0E6C93AEB6B6AEF8F3F2E0B8B8B8B8B8E0E0F2DEDEDBD3D3DB
      E4E4E4E4F6E4E4F6F6E4D9E2E5D9D9E5E5D9D9E2E2E2E2D9DA00D0DDDFDFDFDF
      DDDDD0D0DDDDDDDDDDDFE1E4E5E5E5E5DEDBC5C5C6C4A2BEC3C3D4DBDBD4DBF0
      DEDBDBDBDBDBDBDBB4B0D4B4D4DBDBB4B0A69F9F82787882A1799E9E66434931
      242746473A2B3B0E14276FBB8787A3C6C4CCB5B5B5B5B4D4D4DBE4E4E1DCDCDC
      DBDBDBDEDEDEDEF4F5F0D0DDDDD0D0DDDFDDD0DFDDDDDFD0D000DDDDDFDDDDDF
      DFDDDDDDDDD0D1D0DDDFE4E4E5E5E5E5DEDBC5B5ADA387A2BEBED4DBDBDBDBDB
      DBD3DBDBDBDBDBD4B4B4D4D4D4DBDBB4B0B09F9F827878827979A49E6855463B
      28275A323A2B160A291B21667BBBA1C4ADCCB3B3B3B5B4D4DBDBE1E1E1DCDCDC
      D3D3DBDBDEDBDBDBF0DBD0DDD0D0D0DDDDDDDDDDDDDDDFDDD000DBDEDEDBDBDB
      DEDEDBDEDBDBD3D3DBF4E5E5E5E5E5E5DED3C4A37B7B87878794D4D4D4D4D3D3
      DCDCE1E1DBDBDBDBD4B4DBD4D4D4D4B4B4B0A69F8278788282785C6387876A3D
      29142845331B1B0E3C491639464A6FBBBBBBA2A2B3B3B5B5C5EDB8B8B8B8DCDC
      B1B1B1D3DBD4B4D4D4D4D3B1D3D3D3D3D3D3D3DBD3D3DBD3D300DBDEDEDBD3DB
      DEDEB1D3DEDEDBDBDBDEE5E5E5E2E5E5DBD3A377666F7B7B8594B0B0B4D4D3D3
      B7DCDCDCD3D3D4D4B4B4DBD4D4D4D4B4B4B4B4A68278829E8263C57868684646
      290E2E2E4633270931466A3D1D12386FBB878787A4A4A4A4B3B3B8B8B8B8DCB7
      B1AFAFB1D4B4B0B0B0B0B1AFB1D3D3B1AFB1DBDBB1B1DBD3B100B1D3DBD3D3DB
      DEDBD3DBDBDBDBDBDEF4E7E7E7E5DFDFD4B4C3227B8740728787B0B0B4B4B1B1
      B7B7B7B7D3D3D4B4B4B4D4DBDBD4B4B4B4B0B0A6A69F8282787877745D4E5555
      3C290F2C272C150E466A58463C5811161F6F6F878686A1ADC4A3D4B4B0B0B4B4
      B0A6A6B0B4B0A69F9FB09F7F9FB0B4A6B0D4B4B4B4B4B4B4D400AFD3D3D3D3D3
      DBD3DBDBDBDBDBDBDBDEE5E5E5E2DFDFF0DB6E1F666F68857287A6A6B0B0B1B1
      B7B7DCDCD3D3D4B4B4B4D4DBDBD4B4B0B0A6B0A69F9F9E9E9E9EA3A177746866
      3C29192827270E276B5873586B581D15211E38556E767774A1C4B0B4D4DBDBDB
      D4D4DBB4B0B0B0B0B0B4B0A6B0B0B09F9FA6B0A6A6A6B0B4B400AFB1B1B1AFB1
      D3D3DBDBDEDEDBDBDBDBE1E1E5E5DEF4EEED43373E43687B5E87A6A6B0B0B1B1
      B1B1D3D3D4D4D4B4B4B4C2C2C2AAB0B0A6A6A69F8282A0ACACACA1A17977766E
      4A391B152909156A6E6E87668766551E37211F1E37556F6F7B87ADC4C5C5B5C5
      DBF5F0D4B4B4D4D4D4D4D4D4D4B4B0A69F9FB09F9FA6B0B0B000AFAFB1AFAFB1
      D3D3DBDBDEDEDEDBDBDBDCE1E5E5DEDBB5A46F3E4343666F6887A6B0B0B0B1B1
      B1B1B1B1D4D4D4D4B4B4AAC2AAA8B0A6A6A6A69F78789AA0A0A0797979777676
      673D1D141206466C6E86876887667B667B436F6F6638212143BBA3ADB5B5B5B5
      D4DBDBD4D4DBF0DBD4D4DBF0F0D4B4B4B4B0B4B0B0B4B4B4B000B4B4B4B4B4B4
      B4D4D4DBDBF0DBDBDBDBD3DBDBDBDBD4B39EA35D7574639EA58BB0B0B0B0B4B4
      B1B1B4B4B4D4D4D4B5B5AAAAA8889EA4A49E9E8278639A9A9A9AA1A182787061
      55381D1D044474749F7FA49EA4787882A1777B7B6C6C7A6A3916556886BEE9E9
      C5B5DBD4E1E4E4E1E1E1DCE1E4E1DCE1E1DCB7DCE1E4E1B7B700B4B4D4D4D4B4
      B4D4D4D4DBDBDBDBDBF0DEDEDBD3B4D4C5B5775D7CC182A4D28BA6B0B0B0B0B4
      B1B1B4B4B4D4D4B4B5B5A8A88883829E9E82827863639A9A9A6479798263615D
      43383A0E149574797F7F9EB3A49E789E79796887BC7A6A6A6A6A37373F5E8188
      B5C5DBDBE1E1E1E1E4F6DCE1E1E1DCDCDCE1B7DCE4F6E4DCDC00B4B4D4DBD4B4
      B4D4D4D4D4D4B4B4D4DBDBD4D4B4B4B4B5B3607779A3B3B3AFAFA5A5B0B0B4B4
      B4B4B4B4B4B4B5B5A8A8868683818282785F785F5C5F646464656074635F5D5D
      43221D0E7A6777AD62B280B2ACAC82A479A187877A7A6C6C4B3B1F1F38384368
      9EB5D4D4DCDCDCDCE1E4D9D9D9E2D9DADAE2D9D9E2E5E5E2D900B4B4D4DBDBB4
      B0B4D4D4D4B4B0B4B4D4B0B0B4B0B0A6827874C4A179C5B3A6DBA9A9B4B4B4D4
      D4D4D4D4D4D4B5B3A8888686838182785F5C635F5C5C646553426074635F5D54
      381E094A7D4879A39CB29C9DAC9C9E8277796866676748343B4B3E596F6F6868
      6382B0B0B2DCDCDCB7B7E2DAD9E2E2DADAE5E5E2E2E2E5E2D900D3D3D3D3DCE1
      D3B1AFB1D4D4AAA8A8A88C8CAAAAA88174749EA4B3B3B0B0B0B4B1B1B1B1B1DB
      DBDBD4DBDBDBD4B4B0B0A4827F7F9C99635F5F5F5E54433E302923544A464D2E
      1604425C6280ACACADAD80627FA6AD796C6C67391E22607982788787766879AD
      A15D7477A4C5C5B5B3B5B5B5B5B5B4B4DCE4DCE1E1B7B7E1E400D3DBDBDBE1E1
      DBD3B1D3D4D4AAA8A8A870708388838179A19EA4B3B3B0B4B4B4B1D3D3B1D3DB
      DEDEF0F0DBDBD4B4B0B0B39E7F7F9C9C827878635E433E382B1D20383A2B3636
      0A29425C809CACACA39AAF9F7E6277777D6C1E1E374F7779A4B587877676A1A1
      797777745F5C5F789EA49EA4B3A4A6B0B29C9DB2B7B2DCE4E400DBDEDEDBE1E1
      DBDBDBDBD4B4AAA8A8A88888838381709EB3B3B3B0B0B4B4B4B4B1B1D3B1D3DB
      F0DBF0DBD4D4B4B0B0B0B39E82829E9E9EA4A177604E3E382B1D23233A292C28
      0748425F80809CACAE9A5483AA88605D413741699BC1797463829E9E9EA49E82
      829E9E82635C5C5F5C5C355F9E78627E9F9FB2B7DCDCDCE4E100DBDEF4DEE4E4
      DEDEDEDEDBD4AAA8A8A8E8ABA8888383A4B3B5B5B0B4B4B4B4B0AFB1B1B1B1DB
      DBDBDBD4D4B4B4B4B0B0A49E82829E9EA4B3A3A1776066553A29383539392814
      0A18425F626299ACAEA0AA615D704E2122A3749BA3C1A37982788282829E8278
      7882A4B3B39E82635C231E3F5C5C5362A6B1B7E1E4E1E1E1DC00DBDEF4DEE4E4
      DEDEDEDEF0DBC2AAA888A2878787A8AAB5B5C5B5B4B4B4B4B1B1B7B7B1B1B1D3
      D4D4DBD4D4D4C2AAA888A17979A19EA4A4A4A3A1797974693E1F20201D30140F
      0614385462627E9F9E78686F3F211E6EA276A49E9EA4A4A49E787E7F7F7E7E7F
      8278829EA49E7774685E5C3F235C7FA6AFB1B7DCE1E1E1E1E100DBDEF4DEE4E4
      DEDBDEDEF0F0E9AA888376868687AAC2C5B5B5B5B0B0B4B4B1D3B7DCD3B1D3D3
      D4D4D4D4D4B4A8888381797779A1A4A4A4A4A3A3A1797C753E1F2020161D0F0F
      0214223F626262625C5C1E211E5E86867687A4B3B5B5B39E82637E7F7E7E7F9F
      826378829E9E797468685F424282B4B4AFB1E1E1E4E4E4E1E400DEDEF4DEE4F6
      DEDBF0F0DBDBC2AA88815E7687A2AAC2C5B5B4B0B0B0B0B0B4D4B1B1B4B4B4B4
      B4B4A9A9A8888381706181818388A4A4A4B3A4A49E8277745D42383E1D1D190D
      02042B3A436654382241211E436E82829FB47EAFDCB7B1ACAC9C787878788278
      787874606E867B553E3E425C7EA6B4B0B4DBDBDEF6F6E4E1E100F4F4F4DEF6F6
      DEDBF0DBDBDBC2A883813F6887A2A8C2EDEDB4B4B4B0B0B0B0B4AFAFB0B0B0B0
      B0B0A5A5A8838170707081818388B3B3B3B5B3A49E787774746056403A29270D
      0D0030303843381E354143666E869EA49F9FAFB1B7B2ACAC9C65785F6382825F
      5F827442385455371F3763789FA6B0D4D4B4B1D3E4F6E4E1E400F4F4F4F4E4F6
      F4F4F9F5FAFAE9A8766E436E87BEB5C5D4B4B4B4B4B0B0B0A5A5B4B4B0B0B4B4
      A883838383838388A8888B84848BAFAFAFB1B4B0B07E5F82635C6A492E36240F
      0C2404192B291C3A747C77749AA09C999DB2B29DBABABA9DAC994E4E795DA35D
      68687B38211A1D3A677A829EA6A6B0B4D4B4DBDBDBDBDBDEF200DBDBDEDEE4E4
      F4F4F5F0EEEEEAAA866E6886A2BEB5C5D4B4B4B4B0B0A6A68B8BA6B0B0A6A6A6
      88838388A8A8A8AAAAA8A5A5A5A5B1B1B1B1A6A6B0A69E785C5C301D362C3624
      24080603140E294A757477779A9A99999DB29D809DBA9D9D995374775D606077
      666F13131A1E3D676C909EB3B0A6A6B0B4B4D3D3B1B1B1B1B800DEDEDEDEF6F6
      F5F5F5F0EEEEEBC387767687AAAAB5B5B4B4B4B0A4A483838686838888838181
      838888A8AAAAC2C2C2AAD3B1B1B1B1B1B1B1DBD4A67E635C3F544B4B2C2C2F98
      081003010D1748506C93649A9A6499999C999D9CAC9C99999A64463A3A2B6C46
      1D0E3838414F6969757C9EB3B4B0A6B0B4B4D4D4B4B0B0B0D400F4F4F4F4F6F6
      F5F0F5F0EEEEC3A2867687A2AAAAB5B5B4B4B4B0A48281817676708181707081
      8888A8AAC2C2C2E9E9C2D3D3B1AFAFB1B1B19FB0B4B4C55F3F1F271119280805
      050808030F4D442B4A67656464656562806262535353659964234A1C1D1D3A09
      12467B6F75696969749B82A4B4B0B0B0B4D4D4D4D4B4B4B4DB00F7F4F4F4F8F2
      F0F0C5EDC6C487767B87A2A2AAAAB5B3B0B4B3A4A1776E68686F616161616E86
      A2A2AAAAC2C2D4DBDBDBD4D4AFA6A6B4D4B4B5C5A37487666C3A0E110A03080C
      109810050F363A467C7C53655C424E5D604E7460694F383E55431C1D0E0A113D
      666868687474788282826382A6B0B0B0B4D4B0B4D4D4D4DBF000F4F4F7F7F8F8
      F5F0C5C5C4AD867687BFBEA2A8AAB5B3B0B0B3A4A177686866665561707086A2
      BEBEAAAAC2AAB4D4DBD4D4D4B1A6A6B4D4B4B3B3AD797B372B0A090A110E1026
      280C2508362E4A674F4F65655C5C4E5D4E4242353541381E130915111629462B
      438786867979829E827878789FA6B0A6B0B4B0B4DBDBF0F0F500F7F7F9F9F9F8
      F5F0EDB5A3797B7BBBC8AAA8A8AAB5B3A6B0A4A4A17768664A4A566872728A89
      A2BEA8AAC2AAD4D4D4B4B4B4B4A6AEB6B3A4C679683E2B12270921431F382A46
      262810084C456C7A789E605D5D6066433A393B312B1B0F0D1B5A6A3A3C298759
      765E81817F7E809F9D9D78637E7FA6A6B0B0B4B4DBF0F5F5F500F7F7F9F5F8F2
      DBDBEEB37974686F87BFC2AAAAC2B5B3A6A6A4A4A17768664A4A406885878A89
      A2BEA8AAC2C2D4D4D4B4B0B4B09FACAEA47860223E433B164915383E68404632
      281710172C4C676A78825D4E5D606638291D1B0D09152E4C5B47496A493C4059
      686E7083A6A6A6AFB29D8263627E9FA6B0B4B4D4DBDBF0F5F500FEFEF6F6FAEE
      EBEBBBBB68664EA3B5C5D4D4D4DBC5B3ADC4A28787876A4646586E6E7687A2A2
      BEC7AAAAAAAAAAC2B5B5B3B5AD7977775C355F7868766637342B3C4946585849
      4B340F184444446C6C4B583C3C493115121D2143838168688787A17970617070
      7081838388888888A4A4828278787E7FA6D4B4B0DBF4DBDBF700FEE4E4F7FCF9
      EBC8C8553737ADC6EEB3D4D4D4D4B5B3ADC4A287877B6746496A76868687A287
      A2BEA8AAAAAAAAAAB39EA49E5D224277B3B3787854543E1E3434585846494946
      4B440E163448444B6D4B2B16121415162B6A546E83817687877BA3A383817070
      70818888A8A8A8A8A4A49E8282827E7E9FB0D4B0D3DED3DBDE00E4E4F0F5FBEA
      C8BF87382254C5C5DBD4EDEDEDB5B5B5BEBEBE877B6F58496A737686878787A2
      A2A2A8AAAAA8A49E82785F787878A1ADB5A49EA4708166372B272B303A6A6C4A
      3D2B291D1D1D15121D2B161C2B58736B6666A8A8888388AAC4A1B3B3B3B38370
      8188AAAAAAAAB3B3A6A69E82828282787882B3A4B5EDEDEDEE00E1E4F5F0C7C3
      BFBF666668C3B5C5B4F5EDEEEDB5B3B5BEA2A2866F6F6A6A6B91868787868687
      A287A888888178829E9EA4B3B3A4ADC4B5A4B3B5A8A887664834493A29466A67
      6A6711121D3D3D3D676C736A49496A6B878788A8A88888A8C4C4B5B5B5B38883
      88A8AAAAC2AAB5B3A69FA49E9E9E9E8278789E82A4B5C5EDEE00B3B5C3C3C8C8
      BB7B437B87EAEDFAD4DBC2E9C2A887A2A2867B6F686F71728585A2BEA2766E6E
      766E81819E829EA4B5C5A9A9B3A4A4B5C5EDB4D4A4A48676906C1F211A37553E
      381E373E6F876F6F7B7B6E6E6F6F68686F7B8188B4B0A4B3ADC4B3B3B3B3AAA8
      A8AAC2C2D2A9B4B0A69F9E9E9EA4A4A4797979A1A1A1A1A1AD0082827686C8C8
      6F38436FC7C3F9FAF9DBC2C2AAA8A2878676686F6F7B85878787878787766E6E
      6E6E83A8B5B5B5B5B5B38BA5B5C5C5C5C5B5D4DBB5B5A286906C6F3E211E3E66
      87878787877B6F87C8BF8787877B6F6F87BFA8A8B4B4B5B5ADA3B5B3B3B5C2C2
      AAAAC2C2D2D2B4B0A6A6A49E9EA4A4A4A1A179A3A177745D5D00686666667272
      3E214376EAC2FAEDF9F0C3BEA2BEA287766E6F7B878787878787767676868686
      88A8B3C5EEEDC5B5A49ED2A9A9A5B3C5EDEEB4F0DBDBAA816E5454543F546876
      A287A2A2C2C2AAAAAA83888386867B6F7687B5B5B4B4D4D4B5B3B5B5D4DBD4D4
      A9D2D2D2D4D4D4B4B0B0B3A49E9E9E9E828279A3A177775D4E0066686643381F
      201A76A2AAEAC5F9F0F0BE8787A2A27668688787BBBB87877B6F867687BEBEA2
      A8AAA4B5C5C5C5B5B5B5A5A5A5A9C5EDEDEDB4DBB4B08370866E6E8776867676
      A287BE8683888888AAAAC28876767B6F76A2B3B5D4D4B4B4EDFAEDEDF0F0DBB4
      A9D2D2D5DBDBD4D4B4B4B5B3A49E8278788277A3A179A3797400959172715913
      3F76BEC7EAE9EDEEEDB587878787867676766E76867676767676A2A2AAC2E9C2
      B5B5C5C5DBDBDBDBDBDBD2A9A58BB3C5C5C5B4B4AFAFA5A9A8A8A8A8A8888381
      88A8A8A8A5A5A5A5A5A5D2A9A888777479ADC5C5D4D4D4DBEEEEF0F0F0F0D5D2
      A9A9D2D2D2D5EDEDC5B5D3AFA6A69F7F7E7F829EB3B3A4A4C40095BD68712185
      3F76BEC7E9E9C5EDC5B5BF876643545E6E6E8687A2A2A2A2878787A2AAC2E9C2
      B5C5C5C5DBDBDBDBDBDBD2A9A58BA4B5C5C5D4D4B1B1A9A9AAAAAAA8A8888888
      838388A8A5A5A9A9A9A98B8BA8A8A17777A1B5B5D4D4DBF0EEEDDBDBDBDBD5D2
      D2A9D2D2D2D5EDEDC5C5D3B1B0B0A67F7F7F9E82A4B3B3B5C600BF7B871E5E87
      A25EA8AABEBEBEC3C3BE9468381F3E688687A2BEC2C2C2C2AAA8A8A8AAE9EDED
      D4D4D4DBF0F0DBDBDBF0D5D6A98BA4B5C5C5DBDBD3D3D4D4C2AAB4B0B0B0B4B0
      A67FA6A6B0B0A9A9A9A9B4B0B3A47977A1ADA4B3B4D4EEEEEEC5DBDBD5D5D5D5
      E9C2C2C2C2E9E9E9EDC5D3B1B4B4B0A69F9F78789EB3B3B5B500BF7B3E55A286
      C3768888A2BEBEBEBEBE725940406887BEC3BEBEC2C2E9E9C2AAAAAAC2EAEEEE
      DBF0F0F0F5F5F0F0F0F0D7D7D2A9B3C5EDEDF0DBDBD3DBDBC2C2D4D4D4D4D4B4
      A69FB0B0B0B4A9A9A9A9F0D4B3A47977A1ADB3B5D4DBEEFAEEC5DBDBD5D5D5D5
      E9E9C2C2C2E9E9E9EDEDD3D3B4B4B4B0A6A65F63A4B5A4A4B500867622C7AAC2
      A8C2A8A8A2A2BB877B7B7171717286A2BEBEAAC2C5C5D4DBDBB4A9D2D5ECF5F0
      F0F0F0F5F4F4F4F4F4F4D7D7D5D2AAC2EDEDF0DBDBDBDBDBD4D4DBDBDBDBD4B4
      B4B4D4B4B4B4B4B4A9A9A9A5AAAA876F6F7BA2BEC2C2E9EAE9C2D2D5E9E9C2C2
      E8ABE8E8E9E9E9E9E9EAEDEDEDC5B5B3A4A45F5C78B3B3B3C4006E3FA286EAAA
      AAE9AAA8A2877B685555717287878787A2BEC2C2C5C5DBDBDBDBA9A9D2ECF0F0
      F0F0F0F5F4F4F4DEDEDED7D7ECD2AAC2C5C5DBDBDBDBDBDBDBD4DBF0F0DBD4B4
      D4D4DBD4D4D4D4B4A9A9A9A5A8A87B686F87A2BEC2C2C2E9E9C2D5D5E9E9C2C2
      E8ABE8E8E9E9E9E9EAEAEEEEEEEDB5B5A49E63425C78B3B5AD007882C5C5C5FA
      B4DBC2AAA28787686A6A718587BBA287A2A2B5C5DBDBDBF0DEDBD4D4D4F0F0F0
      DBF0DEF4F4F4F4DEDEDEECECE9C2AAAAC5C5DBDBDBDBDBDBDBD4DEDEDEDEDBD4
      D4D4DBDBD4D4B5B5AAAAA9A9A88368556FBB86A2AAAAAAAAC3C3C2C2C2C2E8E8
      E8E8ABE8E8E8C2C2C7C7EFFAFACCC6C4ADA177424274A1A3AD00B3FAEDF9FAED
      F9DBEAC2BEBEBB8795BD8594BFC8BEA28786B3C5F0F0F0F0DBDBD4D4DBF0F5F0
      F0F0F4F4F7F7F4F4DEF4F1F1EAC2AAAAEDEDDBDBDBDBDEDEDBDBDEDEDBDBF0DB
      D4B4DBD4D4D4B5B5AAAA8B8BA8886855667B6E86A8AAA8A8BEBEAAAAC2C2E8E8
      E8E8ABE8E8E8C2C2C7C7CCEFEFCCCCCCC4AD775D747979A1C400}
    Left = 372
    Top = 21
  end
  object esPedidoRapido: TdxEditStyleController
    BorderColor = 9741530
    BorderStyle = xbsSingle
    ButtonStyle = btsFlat
    HotTrack = True
    Left = 463
    Top = 65528
  end
  object ppmParcelas: TTS_PopupMenu
    Left = 220
    Top = 278
  end
  object ppmCliente: TTS_PopupMenu
    OnPopup = ppmClientePopup
    Left = 114
    Top = 234
    object AbrirCadastro1: TMenuItem
      Caption = 'Abrir Cadastro'
      OnClick = AbrirCadastro1Click
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object QuadroGeral1: TMenuItem
      Caption = 'C.R.M.'
      OnClick = QuadroGeral1Click
    end
    object ExtratodeParcelas1: TMenuItem
      Caption = 'Extrato de Parcelas'
      OnClick = ExtratodeParcelas1Click
    end
    object ltimasVendas1: TMenuItem
      Caption = #218'ltimas Vendas'
      OnClick = ltimasVendas1Click
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object Limite: TMenuItem
      Caption = 'Limite:'
    end
    object EmAberto: TMenuItem
      Caption = 'Em Aberto:'
    end
    object SaldoCompra: TMenuItem
      Caption = 'Saldo para Compra:'
    end
  end
  object Q_SQLt: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 218
    Top = 226
  end
end

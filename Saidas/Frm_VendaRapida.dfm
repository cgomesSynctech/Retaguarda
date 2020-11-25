inherited FrmVendaRapida: TFrmVendaRapida
  Tag = -1
  Left = 16
  Top = 109
  HelpContext = -1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = '\'
  ClientHeight = 563
  ClientWidth = 781
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pgPrincipal: TTS_PageControl [0]
    Tag = -1
    Left = 0
    Top = 0
    Width = 781
    Height = 521
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
        Width = 773
        Height = 511
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
      Caption = 'Operacao'
      TabVisible = False
      TabColor = clBtnFace
      TabFontColor = clBlack
      BevelInner = bvRaised
      BevelOuter = bvLowered
      DesignSize = (
        773
        511)
      object TS_Shape1: TTS_Shape
        Left = 4
        Top = 31
        Width = 770
        Height = 19
        Anchors = [akLeft, akTop, akRight]
        Brush.Style = bsClear
        Pen.Color = 13605212
        Pen.Width = 2
        Shape = stRoundRect
        TagStr = 'CV'
        Transparent = False
      end
      object lbEmpresa: TdxfLabel
        Left = 3
        Top = -9
        Width = 254
        Height = 41
        Hint = '5'
        Anchors = [akTop]
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
      object dbtNomeCliente: TTS_DBTextEffect
        Left = 9
        Top = 34
        Width = 263
        Height = 14
        Cursor = crHandPoint
        DataField = 'F_NOME'
        DataSource = DMVendaRapida.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
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
      object TS_DBTextEffect9: TTS_DBTextEffect
        Left = 521
        Top = 34
        Width = 244
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        DataField = 'lkTipoMovimento'
        DataSource = DMVendaRapida.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
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
      object dbtTabelaPadrao: TTS_DBTextEffect
        Left = 300
        Top = 34
        Width = 142
        Height = 14
        Cursor = crHandPoint
        DataField = 'icNomeTabelaPadrao'
        DataSource = DMVendaRapida.C_TabelaDS
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
      object TS_Panel4: TTS_Panel
        Tag = -1
        Left = 609
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
          Color = 16744448
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
      object pgOperacao: TTS_PageControl
        Tag = -1
        Left = 0
        Top = 50
        Width = 773
        Height = 461
        HelpContext = -1
        ActivePage = tsItens
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        OwnerDraw = True
        Style = tsButtons
        TabOrder = 1
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
            765
            451)
          object TS_Shape9: TTS_Shape
            Left = 344
            Top = 110
            Width = 421
            Height = 337
            Anchors = [akTop, akRight, akBottom]
            Brush.Color = clWindow
            Pen.Color = 13605212
            TagStr = 'CV'
            Transparent = False
          end
          object TS_Shape16: TTS_Shape
            Left = 5
            Top = 6
            Width = 762
            Height = 87
            Anchors = [akLeft, akTop, akRight]
            Brush.Color = clGray
            Pen.Color = clSilver
            Transparent = False
          end
          object spFoto: TTS_Shape
            Left = 5
            Top = 137
            Width = 198
            Height = 148
            Brush.Style = bsClear
            Pen.Color = 13605212
            TagStr = 'CV'
            Transparent = False
          end
          object imgFoto: TTS_Image
            Left = 6
            Top = 138
            Width = 198
            Height = 149
            Stretch = True
            OnDblClick = imgFotoDblClick
          end
          object spItens: TTS_Shape
            Left = 0
            Top = 0
            Width = 763
            Height = 90
            Anchors = [akLeft, akTop, akRight]
            Brush.Color = 16247774
            Pen.Color = 13605212
            Transparent = False
          end
          object dbtPrecoUnit: TTS_DBTextEffect
            Left = 188
            Top = 59
            Width = 131
            Height = 27
            Alignment = taCenter
            Anchors = [akTop]
            DataField = 'PRECO'
            DataSource = DMVendaRapida.C_ItensDS
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
            Width = 553
            Height = 3
            Anchors = [akLeft, akTop, akRight]
            Brush.Style = bsClear
            Pen.Color = 13605212
            Shape = stRoundRect
            TagStr = 'CV'
            Transparent = False
          end
          object dbtQuantidade: TTS_DBTextEffect
            Left = 31
            Top = 58
            Width = 96
            Height = 27
            Alignment = taCenter
            Anchors = [akTop]
            DataField = 'QUANTIDADE'
            DataSource = DMVendaRapida.C_ItensDS
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
            Width = 545
            Height = 33
            Alignment = taCenter
            Anchors = [akLeft, akTop, akRight]
            DataField = 'DESCRICAO'
            DataSource = DMVendaRapida.C_ItensDS
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
            Left = 140
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
            Left = 339
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
            Left = 377
            Top = 59
            Width = 142
            Height = 28
            Alignment = taCenter
            Anchors = [akTop]
            DataField = 'SubTotal'
            DataSource = DMVendaRapida.C_ItensDS
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
          object TS_Label3: TTS_Label
            Left = 347
            Top = 95
            Width = 56
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Vendedor:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dd_mm_yyyy: TTS_DBText
            Left = 679
            Top = 95
            Width = 84
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'DATA'
            DataSource = DMVendaRapida.C_TabelaDS
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
          object TS_Shape10: TTS_Shape
            Left = 552
            Top = 0
            Width = 211
            Height = 50
            Anchors = [akTop, akRight]
            Brush.Style = bsClear
            Pen.Color = 13605212
            TagStr = 'CV'
            Transparent = False
          end
          object TS_DBTextEffect5: TTS_DBTextEffect
            Left = 559
            Top = 4
            Width = 198
            Height = 44
            Alignment = taCenter
            Anchors = [akTop, akRight]
            DataField = 'TOTALITENS'
            DataSource = DMVendaRapida.C_TabelaDS
            Effects.Pen.Color = clGreen
            Effects.Style = tsRaised
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -32
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
          object TS_DBText2: TTS_DBText
            Left = 402
            Top = 95
            Width = 246
            Height = 14
            Anchors = [akTop, akRight]
            DataField = 'lkVendedor'
            DataSource = DMVendaRapida.C_TabelaDS
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
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
          object TS_Shape6: TTS_Shape
            Left = 552
            Top = 51
            Width = 211
            Height = 39
            Anchors = [akTop, akRight]
            Brush.Style = bsClear
            Pen.Color = 13605212
            TagStr = 'CV'
            Transparent = False
          end
          object TS_DBTextEffect3: TTS_DBTextEffect
            Left = 559
            Top = 57
            Width = 198
            Height = 32
            Alignment = taCenter
            Anchors = [akTop, akRight]
            DataField = 'VOLUMES'
            DataSource = DMVendaRapida.C_TabelaDS
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
            Left = 554
            Top = -1
            Width = 207
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'Total dos Itens'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label4: TTS_Label
            Left = 624
            Top = 50
            Width = 68
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'Volumes'
            FormatoTabela = False
            LinkToResult = 0
          end
          object imgLogo: TTS_Image
            Left = 229
            Top = 192
            Width = 119
            Height = 51
            Anchors = [akTop]
            Stretch = True
            Transparent = True
          end
          object TS_Image2: TTS_Image
            Left = 3
            Top = 389
            Width = 93
            Height = 58
            Anchors = [akLeft]
            Transparent = True
          end
          object lbCPCaixa: TTS_Label
            Left = 345
            Top = 170
            Width = 419
            Height = 15
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'Caixa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbCPEmpresa: TTS_Label
            Left = 345
            Top = 111
            Width = 419
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'Empresa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbCPEndereco: TTS_Label
            Left = 345
            Top = 126
            Width = 419
            Height = 28
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 
              'Av. S'#227'o Paulo, 1417 - Bairro dos Estados'#13#10'Jo'#227'o Pessoa - PB - Fon' +
              'e: 244-9008'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbCPCGC: TTS_Label
            Left = 345
            Top = 156
            Width = 419
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'CNPJ: <CGC>     IE: <IE>'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbCPTitulo: TTS_Label
            Left = 345
            Top = 185
            Width = 419
            Height = 17
            Alignment = taCenter
            Anchors = [akTop, akRight]
            Caption = 'Cupom Fiscal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbTroca: TdxfLabel
            Left = 5
            Top = 323
            Width = 107
            Height = 59
            Anchors = [akLeft, akBottom]
            AutoSize = False
            Caption = 'Troca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 232
            Font.Height = -35
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Style = dxfRaised
            Angle = 15
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfLeftBottom
            Effect3D.Depth = 2
            Effect3D.ShadowedColor = clGray
            PenWidth = 1
          end
          object pnPropItens: TTS_Panel
            Tag = -1
            Left = 88
            Top = 269
            Width = 254
            Height = 180
            HelpContext = -1
            Anchors = [akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 0
          end
          object pnItem: TTS_Panel
            Tag = -1
            Left = 5
            Top = 96
            Width = 337
            Height = 41
            HelpContext = -1
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 1
            BackgroundOptions.Opaque = False
            object pnProduto: TTS_Panel
              Tag = -1
              Left = 0
              Top = 0
              Width = 170
              Height = 41
              HelpContext = -1
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              BackgroundOptions.Opaque = False
              DesignSize = (
                170
                41)
              object TS_Shape4: TTS_Shape
                Left = 0
                Top = 14
                Width = 168
                Height = 24
                Anchors = [akLeft, akTop, akRight]
                Brush.Style = bsClear
                Pen.Color = 13605212
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
                Left = 4
                Top = 16
                Width = 164
                Hint = 
                  'Para abrir o cadastro, pressione a tecla F7.'#13'# -> No in'#237'cio do T' +
                  'exto for'#231'a uma pesquisa pelo C'#243'digo. Ex: #123'#13'& -> No in'#237'cio do ' +
                  'Texto for'#231'a uma pesquisa pela Refer'#234'ncia. Ex: &RF1234-567'
                HelpContext = -2
                Color = 16247774
                Style.BorderColor = clGreen
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
                PermitirQuantidade = True
                SelecionarVariosItens = True
                BloquearNoBalanco = 'S'
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
              Left = 170
              Top = 0
              Width = 69
              Height = 41
              HelpContext = -1
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              BackgroundOptions.Opaque = False
              DesignSize = (
                69
                41)
              object TS_Shape5: TTS_Shape
                Left = 0
                Top = 14
                Width = 67
                Height = 24
                Anchors = [akLeft, akTop, akRight, akBottom]
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object lbQuantidade: TTS_Label
                Left = 3
                Top = -1
                Width = 86
                Alignment = taLeftJustify
                Caption = 'F2. Qtd.'
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
                Width = 63
                HelpContext = -2
                Color = 16247774
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGreen
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                Style.HotTrack = True
                TabOrder = 0
                OnKeyPress = dfPrecoKeyPress
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
              Left = 239
              Top = 0
              Width = 98
              Height = 41
              HelpContext = -1
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              BackgroundOptions.Opaque = False
              DesignSize = (
                98
                41)
              object TS_Shape7: TTS_Shape
                Left = 1
                Top = 14
                Width = 96
                Height = 24
                Anchors = [akLeft, akTop, akRight, akBottom]
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object lbPreco: TTS_Label
                Left = 3
                Top = -1
                Width = 79
                Alignment = taLeftJustify
                Caption = 'F3. Pre'#231'o'
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
                Width = 86
                HelpContext = -17
                Color = 16247774
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clGreen
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                TabOrder = 0
                OnKeyPress = dfPrecoKeyPress
                Alignment = taRightJustify
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
                StoredValues = 5
              end
            end
          end
          object pnCliente: TTS_Panel
            Tag = -1
            Left = 0
            Top = -1
            Width = 552
            Height = 91
            HelpContext = -1
            Anchors = [akLeft, akTop, akRight]
            BevelInner = bvLowered
            BevelWidth = 2
            TabOrder = 3
            Visible = False
            BackgroundOptions.GlassColor = clGray
            object pnInfoCliente: TTS_Panel
              Tag = -1
              Left = 7
              Top = 7
              Width = 551
              Height = 78
              HelpContext = -1
              BevelOuter = bvNone
              BorderWidth = 1
              BorderStyle = bsSingle
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              object TS_DBText1: TTS_DBText
                Left = 413
                Top = 3
                Width = 131
                Height = 70
                DataField = 'F_OBS'
                DataSource = DMVendaRapida.C_TabelaDS
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
                WordWrap = True
                NullValue = 'Observa'#231#245'es...'
                AllowEditOnClick = False
                EditFont.Charset = DEFAULT_CHARSET
                EditFont.Color = clWindowText
                EditFont.Height = -11
                EditFont.Name = 'MS Sans Serif'
                EditFont.Style = []
                EditOffSet.x = 0
                EditOffSet.y = 0
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
                DistinctEditOn = False
                Height = 17
              end
              object TS_DBEdit5: TTS_DBEdit
                Tag = -2
                Left = 73
                Top = 58
                Width = 334
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
                DataField = 'F_EMAIL'
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                StyleController = esVendaRapida
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
                Left = 126
                Top = 0
                Width = 281
                Hint = 
                  '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
                  '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
                  'a pelo EIN. Ex: EIN:6719034663'
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                ReadOnly = True
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                ReadOnly = True
                StyleController = esVendaRapida
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
                DataSource = DMVendaRapida.C_TabelaDS
                StyleController = esVendaRapida
                DistinctEditOn = False
                Height = 17
              end
            end
          end
          object pnConsultaPrecos: TTS_Panel
            Tag = -1
            Left = 0
            Top = -2
            Width = 763
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
              763
              91)
            object lbDescricaoConsulta: TTS_Label
              Left = 6
              Top = 2
              Width = 753
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
              Width = 757
              Height = 1
              Anchors = [akLeft, akTop, akRight]
              Brush.Style = bsClear
              Pen.Color = 13605212
              Shape = stRoundRect
              Visible = False
              TagStr = 'CV'
              Transparent = False
            end
            object lbPrecoConsulta: TTS_Label
              Left = 7
              Top = 50
              Width = 750
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
          object dbgItens: TTS_QDBGrid
            Tag = -2
            Left = 345
            Top = 226
            Width = 418
            Height = 220
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
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            PopupMenu = ppmItens
            ShowHint = False
            TabOrder = 4
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMVendaRapida.C_ItensDS
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
            OptionsBehavior = [edgoAutoSearch, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
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
            ShowHeader = False
            OnCustomDrawCell = dbgItensCustomDrawCell
            Anchors = [akTop, akRight, akBottom]
            TS_PermitirQuantidade = True
            TS_DescriptionCanChange = True
            TS_BeforeDeleteAll = dbgItensTS_BeforeDeleteAll
            TS_GridMenuOptions = [gmLayout, gmDados, gmExportar]
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
              Width = 120
              BandIndex = 0
              RowIndex = 0
              DisableGrouping = True
              FieldName = 'I_CODIGOBARRAS'
              DisableFilter = True
            end
            object dbgItensDESCRICAO: TdxDBGridMaskColumn
              Caption = 'Descri'#231#227'o'
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Width = 152
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
              Visible = False
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
          object pnReceberPgto: TTS_Panel
            Tag = -1
            Left = 0
            Top = 0
            Width = 765
            Height = 451
            HelpContext = -1
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            Visible = False
            BackgroundOptions.Opaque = False
            BackgroundOptions.GlassColor = 16247774
            BackgroundOptions.GlassTranslucency = 60
            DesignSize = (
              765
              451)
            object pnPgto: TTS_Panel
              Tag = -1
              Left = 0
              Top = 99
              Width = 767
              Height = 340
              HelpContext = -1
              Anchors = []
              BevelInner = bvLowered
              BevelWidth = 2
              TabOrder = 0
              BackgroundOptions.GlassColor = 16763025
              DesignSize = (
                767
                340)
              object TS_Shape17: TTS_Shape
                Left = 584
                Top = 23
                Width = 176
                Height = 43
                Anchors = [akTop, akRight]
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object TS_DBTextEffect1: TTS_DBTextEffect
                Left = 590
                Top = 25
                Width = 165
                Height = 36
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                DataField = 'TOTAL'
                DataSource = DMVendaRapida.C_TabelaDS
                Effects.Pen.Color = clGreen
                Effects.Style = tsRaised
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
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
              object TS_Label6: TTS_Label
                Left = 586
                Top = 7
                Width = 92
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = 'Total da Venda'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object sp18: TTS_Shape
                Left = 6
                Top = 23
                Width = 180
                Height = 43
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object TS_DBTextEffect7: TTS_DBTextEffect
                Left = 13
                Top = 25
                Width = 165
                Height = 37
                Alignment = taRightJustify
                DataField = 'TOTALITENS'
                DataSource = DMVendaRapida.C_TabelaDS
                Effects.Pen.Color = clGreen
                Effects.ShadowColor = 3684408
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
              object TS_Label7: TTS_Label
                Left = 7
                Top = 7
                Width = 130
                Alignment = taLeftJustify
                Caption = 'Total dos Itens'
                FormatoTabela = False
                LinkToResult = 0
              end
              object spDescontoPN: TTS_Shape
                Left = 352
                Top = 25
                Width = 155
                Height = 43
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object lbDescontoPn: TTS_Label
                Left = 193
                Top = 7
                Width = 130
                Alignment = taLeftJustify
                Caption = 'F3. Descontos'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Shape20: TTS_Shape
                Left = 436
                Top = 23
                Width = 142
                Height = 43
                Anchors = [akTop, akRight]
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                Visible = False
                TagStr = 'CV'
                Transparent = False
              end
              object TS_DBTextEffect8: TTS_DBTextEffect
                Left = 443
                Top = 25
                Width = 128
                Height = 37
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                DataField = 'IMPOSTO'
                DataSource = DMVendaRapida.C_TabelaDS
                Effects.Pen.Color = 10485760
                Effects.ShadowColor = 4539717
                Effects.Style = tsRaised
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -24
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                Visible = False
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
              object TS_Label10: TTS_Label
                Left = 437
                Top = 7
                Width = 102
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = 'Valor do Tax'
                Visible = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dbtOBS: TTS_DBText
                Left = 12
                Top = 148
                Width = 743
                Height = 172
                Alignment = taCenter
                Anchors = [akLeft, akRight, akBottom]
                DataField = 'OBS'
                DataSource = DMVendaRapida.C_TabelaDS
                Font.Charset = ANSI_CHARSET
                Font.Color = 5876991
                Font.Height = -37
                Font.Name = 'Comic Sans MS'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                Visible = False
                WordWrap = True
                AllowEditOnClick = False
                EditFont.Charset = DEFAULT_CHARSET
                EditFont.Color = clWindowText
                EditFont.Height = -11
                EditFont.Name = 'MS Sans Serif'
                EditFont.Style = []
                EditOffSet.x = 0
                EditOffSet.y = 0
              end
              object dbLabelMsg: TTS_DBText
                Left = 14
                Top = 74
                Width = 739
                Height = 47
                Alignment = taCenter
                DataField = 'LabelMsg'
                DataSource = DMVendaRapida.C_TabelaDS
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -35
                Font.Name = 'Courier New'
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
              object TS_Shape21: TTS_Shape
                Left = 194
                Top = 25
                Width = 155
                Height = 43
                Brush.Style = bsClear
                Pen.Color = 13605212
                Pen.Width = 2
                TagStr = 'CV'
                Transparent = False
              end
              object TS_Label9: TTS_Label
                Left = 353
                Top = 7
                Width = 130
                Alignment = taLeftJustify
                Caption = 'F4. Acrescimo'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfDescontoPN: TTS_DBEditNumber
                Tag = -2
                Left = 198
                Top = 29
                Width = 142
                HelpContext = -2
                Color = 16247774
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                TabOrder = 0
                OnExit = dfDescontoPeExit
                DataField = 'DESCONTO'
                DataSource = DMVendaRapida.C_TabelaDS
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
              object dfAcrescimoPN: TTS_DBEditNumber
                Tag = -2
                Left = 356
                Top = 30
                Width = 142
                HelpContext = -2
                Color = 16247774
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -24
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsFlat
                Style.ButtonTransparence = ebtHideInactive
                TabOrder = 1
                OnExit = dfDescontoPeExit
                DataField = 'DESCONTO'
                DataSource = DMVendaRapida.C_TabelaDS
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
          end
          object pnPreco2: TPanel
            Tag = -1
            Left = 72
            Top = 245
            Width = 216
            Height = 278
            HelpContext = -1
            TabOrder = 6
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
              object TS_Panel2: TTS_Panel
                Left = 0
                Top = 0
                Width = 214
                Height = 23
                Align = alTop
                BevelInner = bvLowered
                TabOrder = 1
                object TS_Label8: TTS_Label
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
            765
            451)
          object spTotalFinal: TTS_Shape
            Left = 529
            Top = 15
            Width = 235
            Height = 43
            Anchors = [akTop, akRight]
            Brush.Style = bsClear
            Pen.Color = 13605212
            Pen.Width = 2
            TagStr = 'CV'
            Transparent = False
          end
          object dbtTotalFinal: TTS_DBTextEffect
            Left = 536
            Top = 15
            Width = 221
            Height = 38
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'TOTAL'
            DataSource = DMVendaRapida.C_TabelaDS
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
            Left = 530
            Top = -1
            Width = 130
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Total da Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lbRecebimentos: TTS_Label
            Left = 2
            Top = 219
            Width = 130
            Alignment = taLeftJustify
            Anchors = [akLeft, akBottom]
            Caption = 'Recebimentos'
            FormatoTabela = False
            LinkToResult = 0
          end
          object spTotalItens: TTS_Shape
            Left = 2
            Top = 15
            Width = 193
            Height = 43
            Brush.Style = bsClear
            Pen.Color = 13605212
            Pen.Width = 2
            TagStr = 'CV'
            Transparent = False
          end
          object dbtTotalItens: TTS_DBTextEffect
            Left = 9
            Top = 17
            Width = 179
            Height = 37
            Alignment = taRightJustify
            DataField = 'TOTALITENS'
            DataSource = DMVendaRapida.C_TabelaDS
            Effects.Pen.Color = clGreen
            Effects.ShadowColor = 3684408
            Effects.Style = tsRaised
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -27
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
            Left = 3
            Top = -1
            Width = 130
            Alignment = taLeftJustify
            Caption = 'Total dos Itens'
            FormatoTabela = False
            LinkToResult = 0
          end
          object spDescontoPe: TTS_Shape
            Left = 201
            Top = 15
            Width = 155
            Height = 43
            Brush.Style = bsClear
            Pen.Color = 13605212
            Pen.Width = 2
            TagStr = 'CV'
            Transparent = False
          end
          object lbDescontoPe: TTS_Label
            Left = 202
            Top = -1
            Width = 130
            Alignment = taLeftJustify
            Caption = 'F3. Descontos'
            FormatoTabela = False
            LinkToResult = 0
          end
          object spBottomLine: TTS_Shape
            Left = -1
            Top = 511
            Width = 767
            Height = 1
            Anchors = [akLeft, akTop, akRight]
            Brush.Style = bsClear
            Pen.Color = 13605212
            Visible = False
            Transparent = False
          end
          object dbtOBS2: TTS_DBText
            Left = 3
            Top = 279
            Width = 759
            Height = 173
            Alignment = taCenter
            Anchors = [akLeft, akRight, akBottom]
            DataField = 'OBS'
            DataSource = DMVendaRapida.C_TabelaDS
            Font.Charset = ANSI_CHARSET
            Font.Color = 2265599
            Font.Height = -27
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            AllowEditOnClick = False
            EditFont.Charset = DEFAULT_CHARSET
            EditFont.Color = clWindowText
            EditFont.Height = -11
            EditFont.Name = 'MS Sans Serif'
            EditFont.Style = []
            EditOffSet.x = 0
            EditOffSet.y = 0
          end
          object TS_Label11: TTS_Label
            Left = 359
            Top = -1
            Width = 130
            Alignment = taLeftJustify
            Caption = 'F2. Acrescimo'
            FormatoTabela = False
            LinkToResult = 0
          end
          object spAcresciomPe: TTS_Shape
            Left = 357
            Top = 15
            Width = 155
            Height = 43
            Brush.Style = bsClear
            Pen.Color = 13605212
            Pen.Width = 2
            TagStr = 'CV'
            Transparent = False
          end
          object PgtoCtner: TFormContainer
            Tag = -1
            Left = 0
            Top = 231
            Width = 765
            Height = 215
            HelpContext = -1
            BackgroundOptions.GlassColor = 15190957
            BackgroundOptions.GlassTranslucency = 50
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnEnter = PgtoCtnerEnter
            Anchors = [akLeft, akRight, akBottom]
            BevelInner = bvNone
            BevelOuter = bvRaised
          end
          object dfDescontoPe: TTS_DBEditNumber
            Tag = -2
            Left = 209
            Top = 21
            Width = 142
            HelpContext = -2
            Color = 16247774
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            TabOrder = 0
            OnEnter = dfDescontoPeEnter
            OnExit = dfDescontoPeExit
            DataField = 'DESCONTO'
            DataSource = DMVendaRapida.C_TabelaDS
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
          object pnTermos: TTS_Panel
            Tag = -17
            Left = -2
            Top = 62
            Width = 767
            Height = 169
            HelpContext = -17
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 2
            DesignSize = (
              767
              169)
            object TS_Shape11: TTS_Shape
              Left = 2
              Top = 24
              Width = 765
              Height = 140
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
              Alignment = taLeftJustify
              Caption = 'Termos (Ctrl + T)'
              FocusControl = dbgPlanos
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Shape12: TTS_Shape
              Left = 7
              Top = 28
              Width = 355
              Height = 108
              Anchors = [akLeft, akTop, akBottom]
              Brush.Style = bsClear
              Pen.Color = 7171510
              TagStr = 'CV'
              Transparent = False
            end
            object TS_Shape13: TTS_Shape
              Left = 369
              Top = 29
              Width = 392
              Height = 129
              Anchors = [akLeft, akTop, akRight, akBottom]
              Brush.Style = bsClear
              Pen.Color = 7171510
              TagStr = 'CV'
              Transparent = False
            end
            object spPlano: TTS_Shape
              Left = 7
              Top = 134
              Width = 355
              Height = 24
              Anchors = [akLeft, akBottom]
              Brush.Color = 10921682
              Pen.Color = 7171510
              Transparent = False
            end
            object TS_DBTextEffect6: TTS_DBTextEffect
              Left = 11
              Top = 137
              Width = 348
              Height = 19
              Anchors = [akLeft, akBottom]
              DataField = 'icResumo'
              DataSource = DMVendaRapida.C_PlanosPagamentoDS
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
            object lbTipoCobranca: TTS_Label
              Left = 371
              Top = 4
              Width = 115
              Alignment = taLeftJustify
              Caption = 'Tipo Cobran'#231'a Padr'#227'o:'
              FormatoTabela = False
              LinkToResult = 0
            end
            object lbCarteira: TTS_Label
              Left = 617
              Top = 4
              Width = 48
              Alignment = taLeftJustify
              Caption = 'Carteira:'
              Visible = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object dbgPlanos: TTS_QDBGrid
              Tag = -2
              Left = 8
              Top = 29
              Width = 353
              Height = 104
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
              AutoSearchColor = clYellow
              AutoSearchTextColor = clNavy
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = DMVendaRapida.C_PlanosPagamentoDS
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
              TS_SelectedColumn = 'DESCRICAO'
              TS_ID = 0
              TS_TipoDescricao = tdVenda
              TS_SummaryFooterQtdText = 'Qtd. Geral:'
              TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
              object dbgPlanosPlanoPagamento: TdxDBGridColumn
                Caption = 'Plano'
                Visible = False
                Width = 98
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PLANOPAGAMENTO'
              end
              object dbgPlanosDESCRICAO: TdxDBGridMaskColumn
                Caption = 'Planos de Pagamento'
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
              Width = 390
              Height = 127
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
              TabOrder = 3
              AutoSearchColor = 6611199
              AutoSearchTextColor = clBlue
              BandColor = 14859922
              BandFont.Charset = ANSI_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -9
              BandFont.Name = 'Tahoma'
              BandFont.Style = []
              DataSource = DMVendaRapida.C_ParcelasDS
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
            object cmbTipoCobranca: TTS_DBLookupComboBox
              Tag = -17
              Left = 485
              Top = 2
              Width = 122
              HelpContext = -17
              TabOrder = 1
              DataField = 'lkCobranca'
              DataSource = DMVendaRapida.C_TabelaDS
              StyleController = esVendaRapida
              OnChange = cmbTipoCobrancaChange
              DropDownRows = 15
              ClearKey = 32
              LookupKeyValue = Null
              Height = 19
            end
            object cmbCarteira: TTS_DBLookupComboBox
              Tag = -17
              Left = 665
              Top = 2
              Width = 105
              HelpContext = -17
              TabOrder = 2
              Visible = False
              Anchors = [akLeft, akTop, akRight]
              DataField = 'lkCarteira'
              DataSource = DMVendaRapida.C_TabelaDS
              StyleController = esVendaRapida
              OnChange = cmbCarteiraChange
              DropDownRows = 15
              ClearKey = 32
              ListFieldName = 'DESCRICAO'
              LookupKeyValue = Null
              Height = 19
            end
          end
          object dfAcrescimoPE: TTS_DBEditNumber
            Left = 362
            Top = 21
            Width = 142
            Color = 16247774
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            TabOrder = 3
            DataField = 'OUTRASDESPESAS'
            DataSource = DMVendaRapida.C_TabelaDS
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
          object dfDescontoPeVisual: TTS_Edit
            Left = 250
            Top = 21
            Width = 101
            Color = 16247774
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            Style.ButtonTransparence = ebtHideInactive
            TabOrder = 4
            TabStop = False
            Visible = False
            OnEnter = dfDescontoPeVisualEnter
            Alignment = taRightJustify
            Height = 30
            StoredValues = 1
          end
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
        DataSource = DMVendaRapida.C_TabelaDS
        ParentCtl3D = False
        TabOrder = 2
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
        DataSource = DMVendaRapida.C_ItensDS
        ParentCtl3D = False
        TabOrder = 3
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
        DataSource = DMVendaRapida.C_TabelaDS
        ParentCtl3D = False
        TabOrder = 4
        Visible = False
        OnChange = DBEdit3Change
      end
    end
  end
  object pnStatus: TTS_Panel [1]
    Left = 0
    Top = 521
    Width = 781
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
      Left = 734
      Top = 0
      Width = 69
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        69
        40)
      object lbKey8: TTS_Label
        Left = 0
        Top = 0
        Width = 69
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'CTRL + O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit8: TTS_Label
        Left = 0
        Top = 17
        Width = 69
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Mais Op'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape2: TTS_Shape
        Left = 68
        Top = 0
        Width = 1
        Height = 40
        Align = alRight
        Transparent = False
      end
    end
    object pnsConsultarPrecos: TTS_Panel
      Left = 484
      Top = 0
      Width = 84
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        84
        40)
      object lbKey7: TTS_Label
        Left = 0
        Top = 0
        Width = 84
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit7: TTS_Label
        Left = 0
        Top = 17
        Width = 84
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Consultar '#13#10'Pre'#231'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
      Left = 412
      Top = 0
      Width = 72
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        72
        40)
      object lbKey6: TTS_Label
        Left = 0
        Top = 0
        Width = 72
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'CTRL + F4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit6: TTS_Label
        Left = 0
        Top = 17
        Width = 72
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Fechar '#13#10'a Tela'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
      Left = 216
      Top = 0
      Width = 63
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        63
        40)
      object lbKey5: TTS_Label
        Left = 0
        Top = 0
        Width = 63
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit5: TTS_Label
        Left = 0
        Top = 17
        Width = 63
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Salvar'#13#10'Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
      Left = 279
      Top = 0
      Width = 69
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        69
        40)
      object lbKey4: TTS_Label
        Left = 0
        Top = 0
        Width = 69
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'CTRL + N'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit4: TTS_Label
        Left = 0
        Top = 17
        Width = 69
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
      Left = 137
      Top = 0
      Width = 79
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        79
        40)
      object lbKey3: TTS_Label
        Left = 0
        Top = 0
        Width = 79
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'PgDn'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit3: TTS_Label
        Left = 0
        Top = 17
        Width = 79
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Receber Pagamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
      Left = 68
      Top = 0
      Width = 69
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        69
        40)
      object lbKey2: TTS_Label
        Left = 0
        Top = 0
        Width = 69
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'PgUp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit2: TTS_Label
        Left = 0
        Top = 17
        Width = 69
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informar '#13#10'Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
      Left = 0
      Top = 0
      Width = 68
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        68
        40)
      object lbKey1: TTS_Label
        Left = 0
        Top = 0
        Width = 68
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'F8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit1: TTS_Label
        Left = 0
        Top = 17
        Width = 68
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Iniciar '#13#10'Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
    end
    object pnsPercorrerItens: TTS_Panel
      Left = 348
      Top = 0
      Width = 64
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        64
        40)
      object lbKey9: TTS_Label
        Left = 0
        Top = 0
        Width = 64
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'CTRL + I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit9: TTS_Label
        Left = 0
        Top = 17
        Width = 64
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Percorrer '#13#10'Itens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
    object pnsBobina: TTS_Panel
      Left = 651
      Top = 0
      Width = 83
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        83
        40)
      object lbKey11: TTS_Label
        Left = 0
        Top = 0
        Width = 83
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'CTRL + B'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit11: TTS_Label
        Left = 0
        Top = 17
        Width = 83
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Troca de '#13#10'Bobina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape14: TTS_Shape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        Transparent = False
      end
      object TS_Shape25: TTS_Shape
        Left = 82
        Top = 0
        Width = 1
        Height = 40
        Align = alRight
        Transparent = False
      end
    end
    object pnsECF: TTS_Panel
      Left = 568
      Top = 0
      Width = 83
      Height = 40
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      BackgroundOptions.GlassColor = 16776176
      BackgroundOptions.GlassTranslucency = 180
      DesignSize = (
        83
        40)
      object lbKey12: TTS_Label
        Left = 0
        Top = 0
        Width = 83
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Ctrl + E'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        TagStr = 'CV'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTit12: TTS_Label
        Left = 0
        Top = 17
        Width = 83
        Height = 26
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Comandos '#13#10'para ECF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
    OnPopup = ppmPadraoPopup
    Left = 354
    Top = 433
    object pmIniciarVenda: TMenuItem [0]
      Caption = 'Iniciar Venda'
      Hint = 'pnsIniciarVenda'
      ShortCut = 119
      OnClick = pmIniciarVendaClick
    end
    object pmIniciarDevolucao: TMenuItem [1]
      Caption = 'Iniciar Devolu'#231#227'o'
      ShortCut = 16503
      OnClick = pmIniciarDevolucaoClick
    end
    object pmInformarItens: TMenuItem [2]
      Caption = 'Informar Itens'
      Enabled = False
      Hint = 'pnsInformarItens'
      ShortCut = 33
      OnClick = pmInformarItensClick
    end
    object pmInformarTermos: TMenuItem [3]
      Caption = 'Receber Pagamentos'
      Enabled = False
      Hint = 'pnsInformarTermos'
      ShortCut = 34
      OnClick = pmInformarTermosClick
    end
    object pmMostrarParcelas: TMenuItem [4]
      Caption = 'Mostrar Parcelas'
      ShortCut = 16500
      OnClick = pmMostrarParcelasClick
    end
    object N3: TMenuItem [5]
      Caption = '-'
    end
    object pmGravar: TMenuItem [6]
      Caption = 'Salvar'
      Enabled = False
      Hint = 'pnsSalvar'
      ShortCut = 116
      OnClick = pmGravarClick
    end
    object N5: TMenuItem [7]
      Caption = '-'
    end
    object pmConsultadePrecos: TMenuItem [8]
      Caption = 'Consultar Pre'#231'os'
      Hint = 'pnsConsultarPrecos'
      ShortCut = 122
      OnClick = pmConsultadePrecosClick
    end
    object pmComprarItemdaConsulta: TMenuItem [9]
      Caption = 'Comprar Item da Consulta'
      Enabled = False
      ShortCut = 115
      OnClick = pmComprarItemdaConsultaClick
    end
    object rocadeBobina1: TMenuItem [10]
      Caption = 'Troca de Bobina'
      Hint = 'pnsBobina'
      ShortCut = 16450
      OnClick = rocadeBobina1Click
    end
    object ComandosdoECF1: TMenuItem [11]
      Caption = 'Comandos para ECF'
      Hint = 'pnsECF'
      ShortCut = 16453
      OnClick = ComandosdoECF1Click
    end
    object AbrirGaveta1: TMenuItem [12]
      Caption = 'Abrir Gaveta'
      ShortCut = 16455
      OnClick = AbrirGaveta1Click
    end
    object N7: TMenuItem [13]
      Caption = '-'
    end
    object FazerRetirada1: TMenuItem [14]
      Caption = 'Fazer Retirada'
      ShortCut = 16466
      OnClick = FazerRetirada1Click
    end
    object ResuprimentodeCaixa1: TMenuItem [15]
      Caption = 'Suprimento de Caixa'
      ShortCut = 16467
      OnClick = ResuprimentodeCaixa1Click
    end
    object RecebimentodeParcelas1: TMenuItem [16]
      Caption = 'Recebimento de Parcelas'
      ShortCut = 16464
      OnClick = RecebimentodeParcelas1Click
    end
    object N2: TMenuItem [17]
      Caption = '-'
    end
    object pmInformarNomedoCliente: TMenuItem [18]
      Caption = 'Nome do Cliente'
      Enabled = False
      Hint = 'pnsNomeCliente'
      ShortCut = 16462
      OnClick = pmInformarNomedoClienteClick
    end
    object pmAproveitarOperacoes: TMenuItem [19]
      Caption = 'Aproveitar Or'#231'amentos'
      ShortCut = 16449
      OnClick = pmAproveitarOperacoesClick
    end
    object N8: TMenuItem [20]
      Caption = '-'
    end
    object pmPercorrerItens: TMenuItem [21]
      Caption = 'Percorrer Itens'
      Hint = 'pnsPercorrerItens'
      ShortCut = 16457
      OnClick = pmPercorrerItensClick
    end
    object pmAlterarTabela: TMenuItem [22]
      Caption = 'Alterar Tabela de Pre'#231'os'
      ShortCut = 49217
      OnClick = pmAlterarTabelaClick
    end
    object N4: TMenuItem [23]
      Caption = '-'
    end
    object pmFecharTela: TMenuItem [24]
      Caption = 'Fechar a Tela'
      Hint = 'pnsFecharTela'
      ShortCut = 16499
      OnClick = pmFecharTelaClick
    end
    object pmCancelarOperacao: TMenuItem [25]
      Caption = 'Cancelar Opera'#231#227'o Corrente'
      Enabled = False
      ShortCut = 16451
      OnClick = pmCancelarOperacaoClick
    end
    object CancelarOperaes1: TMenuItem [26]
      Caption = 'Cancelar Opera'#231#245'es'
      OnClick = CancelarOperaes1Click
    end
    object N1: TMenuItem [27]
      Caption = '-'
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
    object N6: TMenuItem
      Caption = '-'
    end
    object pmCheckEx: TMenuItem
      Caption = 'Consulta Check Express'
      ShortCut = 49265
      OnClick = pmCheckExClick
    end
    object CancelarSomenteTEF1: TMenuItem
      Caption = 'Cancelar Somente TEF'
      OnClick = CancelarSomenteTEF1Click
    end
    object CancelarSomenteHiperCard1: TMenuItem
      Caption = 'Cancelar Somente HiperCard'
      OnClick = CancelarSomenteHiperCard1Click
    end
  end
  object FormBkg: TFormTransitions [5]
    BackgroundOptions.GlassVisible = False
    DestroyTransitions = False
    ShowTransition = T_FormShow
    Left = 679
    Top = 412
  end
  object TransitionList: TTransitionList [6]
    Left = 400
    Top = 303
    object T_FormShow: TInterlacedTransition
      Milliseconds = 500
      SmoothingLevel = 4
      SubStyle = 2
    end
    object T_ConsultaPreco: TWaterfallTransition
      Milliseconds = 600
      Direction = tedLeft
    end
    object T_Cliente: TCircleTransition
      Milliseconds = 500
      SmoothingLevel = 4
      Style = 3
    end
    object T_Letras: TDripTransition
      Milliseconds = 500
    end
    object T_Termos: TWipeTransition
      Milliseconds = 500
      BandWidth = 100
      Direction = tedDown
    end
  end
  object P_Saidas: TDataSetProvider [7]
    Constraints = True
    Left = 48
    Top = 664
  end
  object ppmItens: TTS_PopupMenu [8]
    OnPopup = ppmItensPopup
    Left = 340
    Top = 346
    object MostrarCabealho1: TMenuItem
      Caption = 'Mostrar Cabe'#231'alho'
      GroupIndex = 1
      OnClick = MostrarCabealho1Click
    end
  end
  inherited Beep: TBTBeeper
    Left = 589
    Top = 252
  end
  inherited FormStorage: TFormStorage
    Active = True
    Options = []
    StoredProps.Strings = (
      'lbEmpresa.Font'
      'NomostrarAtalhos1.Checked'
      'pnStatus.Visible')
    Left = 72
    Top = 336
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 437
    Top = 382
  end
  object msVendaRapida: TTS_ModuloStyle
    StyleControler = esVendaRapida
    BarEndColor = 13605212
    BarStartColor = 16247774
    CaptionShadow = 15190957
    FormColor = 13303807
    Textura.Data = {
      B6430000424DB64300000000000036040000280000007E0000007F0000000100
      080000000000803F0000120B0000120B00000001000000000000CEB69C00CEBA
      A500CEBEA500D6BEA500D6BEAD00D6C3AD00D6C7AD00DEC7AD00DEC7B500DECB
      B500DECFB500E7CFB500E7CFBD00E7D3BD00E7D7BD00EFD7BD00EFD7C600EFDB
      C600000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000090D090C090D
      090C090D090C090D090C090D090C090C090B090D0A0D090D0B0D090D0A0D090D
      0A0D090D0A0D090D0A0D0A0D0B0D090D090C090D0A0D090D0A0D090D0A0D090D
      0A0D090D090B090C090B090C090A070A090A090D090C090D090C090D090C090D
      090C090D0A0D090D0A0D090D0A0D090D090B090B090A090B00000B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0C0B0D0A0B0A0D090B0B0D0B0C0C0D0B0C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0D0C0D0B0C0B0D0A0C0B0D0B0C0B0D0B0B0B0D0A0B0B
      0D0A0B0B0D090B0A0C090B0A0C0909090B090B0B0D0A0B0B0D0A0B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0B0B0D0B0C0B0D090A090B090A090000090C0B0A090C
      0B0A0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0A0A0D0C0B0B0D0D0C0B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0A0A0D0B0B0A0D0B0B090C0B0A090C
      0B0A0A0D0B0A090C0A09090C0A09090B0A0A0A0D0B0B0A0D0B0B0A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0A0D0C0B0B0D0B09090B0909090B00000D090B090D09
      0B090D090D0A0D090D0A0D090D0A0D090C090D090D0A0D0A0D0B0D090D0A0D09
      0D0A0D090D0A0D090D0A0D090D090D090B090D090C090D090C090D090B090D09
      0B090D090C090D090B090D090B090C090B090D090C090D090C090D090C090D09
      0C090D090D0A0D090D0A0D090D0A0D090B090C090A090C090000090C090B090C
      090B0A0D0B0D0A0D0B0D0A0D0A0D090D090C090D0A0D090D0B0D090D0A0D090D
      0A0D090D0A0D090D0A0D090D090C090C090B090D090C090D090C090D090C090D
      090C090D090B090C090B090B090B090C090C090D090C090D090C090D090C090D
      090C090D0A0D090D0A0D090D0A0D090D090B090B090A090B00000A090C090A09
      0C090D0C0D0B0D0C0D0B0D0C0D0B0C0B0D0A0B0B0D0B0C0C0D0B0C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0B0B0D0A0B0A0D090B0A0D090B0A0D090C0B0D0B0C0B
      0D0B0B0B0D090B0A0C090B090C090B0A0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0B0B0D0B0C0B0D090A090B090A090000090B0A09090B
      0A090B0D0D0C0B0D0D0C0B0D0D0B0B0D0B0B0A0D0C0B0B0D0D0C0B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0A0D0B0A090C0A09090C0B0A090C0B0A0B0D0C0B0B0D
      0C0B0A0D0B0A090C0A09090B0A09090D0C0C0A0D0B0B0A0D0B0B0A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0A0D0C0B0B0D0B09090B0909090B00000C090B090D09
      0C090D090D0A0D0A0D0B0D090D0A0D090D0A0F0B0D090C090B090D090D0A0D0A
      0D0B0E0B0D0B0D0A0D0A0D090D090D090B090D090B090D090B090D090B090D09
      0B090D090D090D090A090B070A090D090C0A0D090C090D090C090D090C090D09
      0C090D090D0A0D090D0A0D090C090D090B090B090B090D090000090B090B090D
      090C090D0A0D090D0B0D090D0A0D090D0A0D0B0D0A0B090C090C090D0A0D090D
      0B0D0B0D0B0D0A0D0A0D090D0A0C090D090B090C090B090C090B090C090B090C
      090B090D0A0C090C090A070B090B090D090D090D090C090D090C090D090C090D
      090C090D0A0D090D0A0D090D090C090B090A080B090B090C00000A090D090B0B
      0D0A0B0B0D0B0C0C0D0B0C0B0D0B0C0B0D0B0D0C0D0A0B0A0D090B0B0D0B0C0B
      0D0B0D0D0D0B0D0B0D0B0C0B0D0A0B0B0D090B0B0D0A0B0B0D0A0B0B0D0A0B0B
      0D0A0B0B0D0A0B0A0B0909090C090B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0C0B0D0A0B090C0909090D090B0A0000090B0B0A090D
      0B0B0A0D0C0B0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0A0C0B0A090D0B0B0B0D
      0C0B0B0D0D0C0B0D0C0B0B0D0C0B0A0D0B0A0A0D0B0B0A0D0B0B0A0D0B0B0A0D
      0B0B0A0D0C0B0A0C0909090B0A0A090D0B0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0B0D0B0B090B0A09090B0B0A090C00000C090B090D09
      0C090D090D0A0D0A0D0B0D090D0A0D090D0A0D0A0D0A0D090B090D090C090D09
      0D0A0D0A0D0A0D090C090D090D090D090B090D090C090D090C090D090C090D09
      0C090D090D090D090A090D090B090D090C090D090C090D090C090D090C090D09
      0C090D090D0A0D090D0A0D090C090D090B090B090B090D090000090B090B090D
      090C090D0A0D090D0B0D090D0A0D090D0A0D090D0B0D090D090A090C090B090D
      090D0A0D0A0D090D090C090D0A0C090D090B090D0A0D090D0A0D090D0A0D090D
      0A0D090D0A0C090C090A090D090C090D090C090D090C090D090C090D090C090D
      090C090D0A0D090D0A0D090D090C090B090A080B090B090C00000A090D090B0B
      0D0A0B0B0D0B0C0C0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0C090A0A0D090B0B
      0D0A0C0B0D0B0B0B0D090C0B0D0A0B0B0D090C0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0B0B0D0A0B0A0B090B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0C0B0D0A0B090C0909090D090B0A0000090B0B0A090D
      0B0B0A0D0C0B0B0D0D0C0B0D0C0B0B0D0C0B0B0D0D0C0B0D0A09090B0B0A090D
      0B0B0B0D0C0B0A0D0B0A0B0D0C0B0A0D0B0A0B0D0C0B0B0D0C0B0B0D0C0B0B0D
      0C0B0A0D0C0B0A0C09090B0D0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0B0D0B0B090B0A09090B0B0A090C00000B080B090D09
      0C090D0A0D0A0D090D0A0D090C090D090C090D090C090D090B090A0709090D09
      0D0B0D090D0A0D0A0D0B0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D09
      0D0A0D0A0D090B070B090D090C090D090C090D090D0A0D090D0A0D090C090D09
      0C090D0A0D0B0D0A0D0B0D090D090D090A090A0709080B080000090B090C090D
      090B090D090C090D090C090D0A0D090D0A0D090D090B090B0909070A090A090C
      090B090D0A0D090D0B0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D
      0A0D090D0A0B080A090B090D090C090D090C090D0A0D090D0A0D090D0A0D090D
      0A0D0A0D0B0D0A0D0B0D090D090B090B090A07090709070A00000A090D0A0B0B
      0D090B0A0D090B0A0D090C0B0D0B0C0B0D0B0C0B0D0909090A0809090B090909
      0B090B0B0D0B0C0C0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0B0B0D0909090B090B0B0D0A0B0B0D0A0C0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0B0A0D0909090B090908090809090000090B0A0A0A0D
      0C0B090C0B0A090D0B0B0B0D0C0B0B0D0C0B0B0D0B090909090708090909090B
      09090A0D0C0B0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D
      0C0B0A0D0C0A090A090A090C0B0A090C0B0A0A0D0B0B0A0D0B0B0B0D0D0C0B0D
      0D0C0B0D0C0B0B0D0C0B090B0A09090A09090709090807090000090609090D09
      0C090C090B090D090D0A0D090C090D090C090D090A080A060906090609080B09
      0B090D090D0A0D0A0D0B0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D09
      0D0A0D090C090B0709090D090B090D090B090D090C090D090C090D090D0A0D09
      0D0A0D090C090D090C090C090A090B080A08090609070906000006090709080B
      090A070B090B090C090C090C090B090C090B070A07090609060905090709090C
      090D090D0A0D090D0B0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D
      0A0D090D090B0709080B090C090B090C090B090D090C090D090C090D090C090D
      090C090C090B090C090B090B090B090B090B070907090709000009090B090907
      09050808090809090B0909090B0909090B09090809070908090709090B090A0A
      0D0A0B0B0D0B0C0C0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0B0B0D0909090B090A090C090A090C090B0A0D090B0A0D090B0A0D090B0A
      0D090A090C090A090C090A090D090B0A0D0909090B09090900000A0C0A090607
      05030508070707090909090A0909090A09090609080707090908090B0A09090B
      0B0A0A0D0C0B0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D
      0C0B090C0B0908090909090B0A09090B0A09090C0B0A090C0B0A090B0A09090B
      0A09090B0A09090B0A09090C0B0A090D0B0B090B0909090A00000C090B090C09
      0B090A0709070A0709080D090C090D090A080C0708060A0809070B070A090B09
      0B090D090C090D090D0A0D090C090D090C090D090C090D090C090D090C090D09
      0C090E090907090709070A0709080B080B090D090B090D090B090C0809080A07
      09090B080B090C090B090D090D090D090B090B080A090D090000090C090B090C
      090B070A0809070A0809080B090B090C090B090B0709080B080907090709070B
      090A090C090C090D0A0D090D090C090D090C090D090C090D090C090D090C090D
      090C0A0C0709070907090509060905090709070A0809070A0809070907090609
      0709080B090B090C090B090D0A0C090D090B070B090B090C00000B0B0D0A0B0B
      0D0A0B0A0C0909090B0908080A09090A0D0A0B090C090B0A0B07090809080909
      0B090B0A0D0A0B0B0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B
      0D0A0C090A0709090B0909080907080709070908090709080907080709060808
      0A090A090C090B0A0D0A0C0B0D0A0B0B0D0909090C090B0B00000B0D0C0B0B0D
      0C0B0B0D0B0A090B090906090707070A0909090B0B0B0A0D0B0908090909090A
      0909090C0B0A0A0D0B0B090C0B0A090C0B0A090C0B0A090C0B0A090C0B0A090C
      0B0A0A0B0909090B0909090B0A09090A09090709080707090807060907070709
      0909090B0B0A090D0B0B0B0D0C0B0A0D0B0A090B0A0A090D00000D0A0D0B0D0A
      0D0B0D0A0D090D090B0909050705090508060A070B090D090C0A0B0709090B08
      0B090C090B090D090C090D090B090D090B090D090B090D090B090D090B090D09
      0B090D0809080C090B090D090D090D090B090A0709070A0709070A0609070B08
      0B090C090B090D090C090D090D090D090B090C090B090D090000090D0A0D090D
      0A0D090D0A0C090C090B070905070507050706090809070A090D080B090A090B
      090B090B090B090C090C090C090B090C090B090C090B090C090B090C090B090C
      090B080A080A090D090B090D090B090C090B080B090A080B090A080B090A090C
      090D090C090C090D0A0D090D0A0C090D090B090B090B090D00000C0B0D0B0C0B
      0D0B0B0B0D0A0B0A0D090B090A060707090709090A0706060A0909090B090909
      0B0909090C090B0A0D090A090C090A090C090A090C090A090C090A090C090A09
      0C0909090B090B0B0D090A0A0D090B0A0D0A0A090C090A090C090B0A0C090A0A
      0D0A0B0A0D0A0B0B0D0B0C0B0D0A0B0B0D090A0A0D0A0C0B00000A0D0B0B0A0D
      0B0B090C0B0A090C0B0B0A0B090807090909090B09060406070907090909080A
      0909090B0A09090C0B0A090B0A09090B0A09090B0A09090B0A09090B0A09090B
      0A09090909090A0D0C0A090C0B0B0B0D0D0C090C0B0A090C0B0A0A0C0A09090B
      0A0A090C0B0B0A0D0C0B0B0D0C0B0A0D0B0A090C0B0B0B0D00000D090D0A0D0A
      0D0B0D0A0D0A0D090C090C07090509070A090D090A07090507050B0709080B08
      0A090D090B090D090C090D090B090D090C090D090C090D090B090B090B090C08
      09070D090C090D090C090D090B090D090B090D090B090D090B090D090B090D09
      0B090D090C090D090C090D090B090D090B090D090C090D090000090D0A0D090D
      0B0D0A0D0B0D090D090C090A07090509090B090B090906090507060906090509
      0609070A090B090D090D090D090B090B090B0A0D0A0D090D090C090C090D090C
      0909090D090C090D090C090C090B090C090B090C090B090C090B090C090B090C
      090B090D090C090D090C090C090B090C090B090C090C090D00000B0B0D0B0C0C
      0D0B0D0C0D0B0C0B0D0A0A090A0708080B090B0A0C0909090A08090809070807
      09060707090809090D0A0B0A0D090A090B090C0B0D0B0B0B0D0A0B0B0D0A0B0A
      0C090B0B0D0A0B0B0D0A0B0A0D090B0A0D090B0A0D090B0A0D090B0A0D090B0A
      0D090B0B0D0A0B0B0D0A0B0A0D090B0A0D090B0A0D0A0B0B00000A0D0C0B0B0D
      0D0C0B0D0D0B0B0D0B0B090B09080709090A090C0B0A090B0A09090C0A09090A
      090906090808080A0909090B0909090B0909090C0B0A090B0A09090B0A0A090B
      0A09090C0B0A090C0B0A090C0B0A090C0B0A090C0B0A090C0B0A090C0B0A090C
      0B0A0A0D0B0B0A0D0B0B090C0B0A090C0B0A090C0B0B0A0D00000D090D0A0D0A
      0D0B0D0A0D0A0D090C090D090B07090509090D090C090D090C090D0A0D090D09
      0B090906090709050906090609070B070A090C090B090C090B090D090B090C09
      0B090D090B090D090B090D090B090D090B090D090B090D090B090D090B090D09
      0B090D090C090D090C090D090B090D090B090D090C090D090000090D0A0D090D
      0B0D0A0D0B0D090D090C090D09090509080C090D0A0D090D090C090D090B090B
      090B080A0809060906090609070907090709080B090B090C090B090C090B090C
      090D090C090B090C090B090C090B090C090B090C090B090C090B090C090B090C
      090B090D090C090D090C090C090B090C090B090C090C090D00000B0B0D0B0C0C
      0D0B0D0C0D0B0C0B0D0A0B0B0D0907070B0A0D0C0D0B0B0B0D090B0A0D090B0A
      0D0909090B0909090B0909090A07080709050807090709090A0809090A070909
      0B090A090C090A090C090B0A0D090B0A0D090B0A0D090B0A0D090B0A0D090B0A
      0D090B0B0D0A0B0B0D0A0B0A0D090B0A0D090B0A0D0A0B0B00000A0D0C0B0B0D
      0D0C0B0D0D0B0B0D0B0B090D0C090608090B0B0D0C0B0A0C0B090A0D0B0B0B0D
      0C0B090A0909090B0B0A090B0908060705050506050505070605050705050508
      0808090B0A09090B0A09090C0B0A090C0B0A090C0B0A090C0B0A090C0B0A090C
      0B0A0A0D0B0B0A0D0B0B090C0B0A090C0B0A090C0B0B0A0D00000D0A0D0B0D09
      0D090D090D0A0D090D0A0D090D090A05090B0D090D0A0D0A0D0B0D090C090D09
      0B090C090B090C090B090B090B090C0809070905070509050705090509070A07
      0908090609060905080509070B090D090B090D090B090C090A090D090C090D09
      0D0A0D090D0A0D090D0A0D090B090D090D0B0D090B090D0900000A0D0A0D090D
      0A0C090D0A0D090D0A0D090C090B0607070D090D0A0D090D0B0D090D090B090C
      090B090B090B090B090B090B090B090B080905090609050906090509070A090B
      090B070A080907090709050A090B080A090A090C090B090C090B090D090C090D
      0A0D090D0A0D090D0A0D090B090B090C090D090C090C090D00000B0B0D0A0B0B
      0D0B0C0B0D0B0C0B0D0B0B090C09090509090B0B0D0B0C0B0D0B0B0B0D090B0A
      0C090A090C090A090C090A090D090A090B0909090B0909090B0909090D0A0B0B
      0D0A0B0A0D090A090B0909090B09090809080A090D090B0A0D0A0B0B0D0A0C0B
      0D0B0C0B0D0B0C0B0D0B0B090C090A0A0D0A0B0B0D0A0C0B0000090C0B0A0A0D
      0C0B0B0D0C0B0B0D0C0B0B0C0A0A08080709090D0B0B0B0D0C0B0A0D0B0A090C
      0A09090B0A09090B0A09090C0B0A090B0909090B0909090B0909090C0B0B0B0D
      0C0B0A0D0B0B090C0B09090B0A0907090808090B0909090C0B0A090C0B0B0A0D
      0C0B0A0D0B0B0A0D0B0B090C0A09090B0B0B0A0D0B0B0A0D00000B080A090D09
      0D0A0D090D0A0D090D0A0E090B090C0509090D090C090D090D0A0D090C090D09
      0B090C090B090C090B090D090B090D090A090B080A090B080A090D090C0A0D09
      0D090D090C090D090B090D090C090A0609080A0709080B080B090C090B090D09
      0C090D090C090D090C090D090B090B090B090D090B090D0900000709080A090D
      0A0D090D0A0D090D0A0D0B0D090D09090609090C090B090D090D090D090B090C
      090B090B090B090B090B090C090C090C090A080B090A080B090A090D0A0D090D
      090C090D090B090C090B090D0A0B0709090B070A0809080B090A070A080A080B
      090B090D090C090D090C090C090A080B090B090B090A080A000008080A090A0B
      0D0B0C0B0D0B0C0B0D0B0D0B0D0A0B0809070A0A0D090B0B0D0A0B0B0D090B0A
      0C090A090C090A090C090B0B0D0A0B0A0C090A090C090A090C090C0B0D0B0D0B
      0D0A0C0B0D0A0B0B0D090C0B0D0909090C0A0B0A0D090A090C0909080A080909
      0B090B0A0D090B0A0D090B0A0C0909090B0909090B080908000006090909090D
      0C0C0B0D0C0B0B0D0C0B0C0C090A09090606090B0B0A090D0B0B0A0D0B0A090C
      0A09090B0A09090B0A09090D0B0B0A0C0A09090C0B0A090C0B0A0B0D0D0D0C0D
      0C0B0B0D0D0B0B0D0B0B0A0D0B09090A0A0B0B0D0C0B0A0D0B0A070908080709
      0909090C0B0A090C0B0A090C0A09090A090908090908070900000B0709070907
      0B090C090B090D090D0A0D090D090D090A090B0709090D0B0D090D090C090D09
      0C090D090C090D090C090C090B090D090A080D090C090D090D0A0D090D0A0D09
      0D0A0D0A0D0B0D090D090D090B090B080B090D090C090D090C090D090B090D09
      0B09090509070B090C0A0C090B090C090B090D090B090B070000070907090509
      080B090D090C090D090C090D090C090D090C0509090D0A0D090C090D090C090D
      090C090D090C090D090C090C090C090B0909090D090C090D0A0D090D0A0D090D
      0A0D0A0D0B0D090D090C090C090A080B090C090D090C090D090C090D090C090D
      090C07090809080B090B090B090B090B090B090B090A07090000090909060707
      09080B0A0D090B0B0D0B0A090C090A090C0905080D0D0D0A0D0B0B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0A0A0D090B090B090B0B0D0A0C0B0D0B0C0B0D0B0C0B
      0D0B0C0B0D0B0B0B0D090A090B090A0A0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0B0A0D0909090B0909090B0909090B090B0A0C0909090000090B09080709
      090808090909090D0C0B0B0D0B0A090B09090509090B0A0D0C0B0A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B090C0B0A090B09090A0D0C0B0B0D0D0C0B0D0C0B0B0D
      0C0B0B0D0B0B090C0B0A090B0909090D0D0C0B0D0C0B0B0D0C0B0B0D0D0C0B0D
      0D0C0B0D0B0A090B0909090B0909090B0909090C0B09090B00000D090B090B07
      09080B0709080B070A090D090D0A0D090C090B0506050C0B0D0A0D090C090D09
      0C090D090C090D090C090D090B090C090B090D090D0A0D0A0D0B0D090D0A0D09
      0D0A0D090B090D090B090A070B090D0A0D0B0D090D0A0D090D0A0E0B0D0B0E0B
      0D0B0D090C090D090B090B080A090B080A090D090B090D090000090D090C090C
      090B090D090A0709050705090609070B090B09080105070D0B0C090D090C090D
      090C090D090C090D090C090C090B080B090B090D0A0D0A0D0B0D090D0A0D090D
      0A0D090C090B090B090A070B090C090D0B0D0A0D0B0D0A0D0B0D0A0D0B0D0A0D
      0B0D090D0A0D090D0B0D090B090B090B090B090D090B090C00000B0B0D0B0C0B
      0D0B0C0B0D0909090A07060508050706090609050504080A0D090B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0C0B0C0909090C090C0B0D0B0D0D0E0C0C0B0D0B0C0B
      0D0B0A090C0909090B0909090D0B0D0C0D0B0D0C0D0B0D0C0D0B0D0C0D0B0D0C
      0D0B0D0C0D0B0D0C0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B0000090C0B0B0B0D
      0C0B090B0A0A0A0D0C0C0B0D0B090709060505060505070A0A0A0A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B0B0D0A09090B0A0A0B0D0D0C0B0D0D0D0B0D0C0B0B0D
      0C0B090B0A09090B0909090B0B0C0B0D0C0B0B0D0D0C0B0D0D0C0B0D0C0B0B0D
      0C0B0D0E0D0D0B0D0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D00000D090C090D09
      0C090D090D090D090C090D090B090C090A090B060704070509080B090B090D09
      09080B090B090D090C090C0809070A080C0B0D090D0B0D0A0D090D090D0B0D09
      0B090D090A080B090C0A0D0A0D0B0D0A0D0B0D0A0D090D090D0B0D0A0D0B0D0A
      0D0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D090D090000090D090C090D
      090C090D090C090D090C090D090B090B090B090A07080509080B05090508050A
      090C070A0709070B090D090B0709070B090D090D0A0D0A0D0A0C090D0B0D090C
      090A080B090A090C0A0D0A0D0B0D0A0D0B0D0A0D0A0C090D0B0D0A0D0B0D0A0D
      0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D0A0C090D00000B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0C0B0D0A0B0B0D090B0A0C090A090D0A090707040505
      0A090A090B0809090C0909090B0909090D0B0B0B0D0B0D0B0D0A0B0B0D0B0B0A
      0B0909090B090B0B0D0B0D0C0D0B0D0C0D0B0D0C0D0A0B0B0D0B0D0C0D0B0D0C
      0D0B0D0C0D0B0D0C0D0B0C0B0D0B0C0B0D0B0C0B0D0A0B0B0000090C0B0A090C
      0B0A0A0D0B0B0A0D0C0B0B0D0D0B0B0D0B0B0A0D0C0B0B0D0B0B0B0B07050305
      0505090B0B0A090B0A09090B0909090C0B0B0A0D0C0B0B0D0B0B0A0D0B0A090B
      09090709090B0B0D0D0C0B0D0D0C0B0D0D0C0B0D0C0B0A0D0D0C0B0D0D0C0B0D
      0D0C0B0D0D0C0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0A0D00000D090B090D09
      0B090D090C090D090D0A0E0A0D0B0D090D0A0D090D0B0D090C090E090B070803
      0502070509090D090C090B080A090C090C0A0D090C0A0D090C090D090B090B08
      090809070B090D0B0D0B0D0A0D0B0D0A0D0B0D0A0D090D090D0B0D0A0D0B0D0A
      0D0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D090D090000090C090B090C
      090B090C090C090D0B0D0A0D0B0D090D0A0C090C090D090D090B090D090B0809
      050600040409080C090B080B090B090D090D090C090C090D090B090C090A070A
      0809070B090C090D0B0D0A0D0B0D0A0D0B0D0A0D0A0C090D0B0D0A0D0B0D0A0D
      0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D0A0C090D00000A090C090A09
      0C090A090D0A0C0B0D0B0D0B0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0B0B09
      0B070403060507080A0909090C090B0B0D0B0B0A0D0A0B0B0D090B0A0B090909
      0A090B0A0D090B0B0D0C0D0C0D0B0D0C0D0B0D0C0D0A0B0B0D0B0D0C0D0B0D0C
      0D0B0D0C0D0B0D0C0D0B0C0B0D0B0C0B0D0B0C0B0D0A0B0B0000090B0A09090B
      0A09090B0B0B0B0D0D0D0B0D0C0B0A0D0B0A0B0D0B0A090D0B0B0B0D0D0B0A0B
      09090909070504070707090B0B0B0A0D0C0B090C0B0B0A0D0B090A0B09090709
      09090B0D0B09090D0D0D0B0D0D0C0B0D0D0C0B0D0C0B0A0D0D0C0B0D0D0C0B0D
      0D0C0B0D0D0C0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0A0D00000D090C090D09
      0C090D090C090D090C090D090C090D090B090D090D0A0D090D0A0D090D090D09
      0A090C080907090506050B080B0A0D090C090D090B090C090C090D0708050908
      0B090D090C090D090D0A0D0A0D0B0D0A0D0B0D0A0D0A0D090C090D0A0D0B0D0A
      0D0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D0A0D090000090D090C090D
      090C090D090C090D090C090D090C090C090B090D0A0D090D0A0D090D090C090B
      090A080B08090709070906090709090D0A0D090D090B090C090B090A0608060B
      090C090C090C090D0A0D0A0D0B0D0A0D0B0D0A0D0B0D090D090C0A0D0B0D0A0D
      0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D0A0D090D00000B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0C0B0D0A0B0A0D090B0B0D0A0B0B0D0A0C0B0D0A0B09
      0C0909090B090B0A0D0A0909090709090D0A0B0B0D0A0B0A0C090A0909070909
      0D0A0B0A0D0A0B0B0D0B0D0C0D0B0D0C0D0B0D0C0D0B0C0B0D0A0D0C0D0B0D0C
      0D0B0D0C0D0B0D0C0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B00000A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B0B0D0C0B0A0D0B0A090C0B0A090C0B0A0A0D0B0A090C
      0A09090B0A0A0A0D0C0C0B0D0A0907090908090B0B0A090C0A0909090807080B
      0B0A090C0B0B0A0D0C0B0B0D0D0C0B0D0D0C0B0D0D0B0B0D0B0B0B0D0D0C0B0D
      0D0C0B0D0D0C0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0B0D00000D090C090D09
      0C090D090C090D090C090D090D0A0D090C090D090B090D090B090D090C090D09
      0B090D090B090D090C090D0A0D090C070905090609090C090B090B0709070B09
      0B090D090C090D090D0A0D0A0D0B0D0A0D0B0D0A0D0A0D090C090D0A0D0B0D0A
      0D0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D0A0D090000090D090C090D
      090C090D090C090D090C0A0D0A0D090D090C090D090C090D090C090C090B090C
      090B090D090B090C090B090D0A0D0A0D0909050905090609090B07090609080B
      090B090C090C090D0A0D0A0D0B0D0A0D0B0D0A0D0B0D090D090C0A0D0B0D0A0D
      0B0D0A0D0B0D0A0D0B0D090D0A0D090D0A0D090D0A0D090D00000B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0D0C0D0B0C0B0D0A0C0B0D0B0C0B0D0B0B0A0D090B0A
      0D0A0B0B0D0A0B0B0D0A0B0B0D0B0B0B0D09090809050506090809080908090A
      0C090B0A0D0A0B0B0D0B0D0C0D0B0D0C0D0B0D0C0D0B0C0B0D0A0D0C0D0B0D0C
      0D0B0D0C0D0B0D0C0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B00000A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B0B0D0D0B0B0D0B0B0B0D0C0B0B0D0C0B090C0B0A090D
      0B0B0A0D0B0B0B0D0D0D0D0E0C09090A0909090907050406060709090909090C
      0A09090C0B0B0A0D0C0B0B0D0D0C0B0D0D0C0B0D0D0B0B0D0B0B0B0D0D0C0B0D
      0D0C0B0D0D0C0B0D0D0C0B0D0C0B0B0D0C0B0B0D0C0B0B0D00000D090B090D09
      0B090D090D0A0D090D0A0D090D090D090B090D090D0A0D090D0A0D090B090D09
      0D0B0D090C090D090C090D090C090D090B090B07090507030502050509080A07
      0B0A0D090D0A0D0A0D0B0D090D0A0D090D0A0D090C090D090C090D090D0A0D0A
      0D0B0D090D0A0D090D0A0D090C090D090C090D090C090D090000090C090B090C
      090B090D0A0D090D0A0D090D0A0C090D090B090D0A0D090D0A0D090C090C090D
      0A0D090D090C090D090C090D090B090C090B090B07090507050601070609080B
      090B090D0A0D090D0B0D090D0A0D090D0A0D0A0D090C090C090C090D0A0D090D
      0B0D090D0A0D090D0A0D090D090C090D090C090D090C090D00000B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0C0B0D0A0B0B0D090C0B0D0B0C0B0D0B0B0B0D0A0B0B
      0D0B0B0B0D0A0B0B0D0A0B0B0D090B0A0C090B090B0809070907050508070A0A
      0C090B0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0D0B0D0A0B0A0D0A0B0B0D0B0C0C
      0D0B0C0B0D0B0C0B0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B00000A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0A0B0D0C0B0B0D0C0B0A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B0A0D0B0A090C0A09090B0909080A090906070505080C
      0B09090D0B0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D0B0B090C0B0B0A0D0C0B0B0D
      0D0C0B0D0C0B0B0D0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D00000D090C090D09
      0C090D090D0A0D090D0A0D090D090D090B090D090D0A0D090D0A0D090C090D09
      0C090D090C090D090C090D090C090D090B090B0809070B070A090B0505030807
      0B090D090C090D090D0A0D090D0A0D090D0A0D090C090D090C090D090D0A0D0A
      0D0B0D090D0A0D090D0A0D090C090D090C090D090C090D090000090D0A0D090D
      0A0D090D0A0D090D0A0D090D0A0C090D090B090D0A0D090D0A0D090D0A0C090D
      090B090D090C090D090C090D090B090C090B080A0809070A090A090905050309
      080B090C090B090D090D090D0A0D090D0A0D0A0D090C090C090C090D0A0D090D
      0B0D090D0A0D090D0A0D090D090C090D090C090D090C090D00000C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0C0B0D0A0B0B0D090C0B0D0B0C0B0D0B0C0B0D0A0B0B
      0D090B0B0D0A0B0B0D0A0B0B0D090B0A0C090A090B0909090B09090909050505
      09090A0A0D090B0B0D0A0C0B0D0B0C0B0D0B0D0B0D0A0B0A0D0A0B0B0D0B0C0C
      0D0B0C0B0D0B0C0B0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B00000B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0A0B0D0C0B0B0D0C0B0B0D0C0B0A0C
      0B0A0A0D0B0B0A0D0B0B0A0D0B0A090C0A090A0C0A09090B0A0A070A09070506
      0607090B0B0A090D0B0B0B0D0C0B0B0D0C0B0B0D0B0B090C0B0B0A0D0C0B0B0D
      0D0C0B0D0C0B0B0D0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D00000D090D0A0D09
      0D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090B090D09
      0B090D090C090D090C090D090D090D090B090C090B090C090B090D090A070905
      050309070B090D090B090D090C090D090D0A0D090D0A0D0A0D0B0D090D0A0D09
      0D0A0D0A0D0B0D0A0D0B0D090C090D090C090D090C090D090000090D0A0D090D
      0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D090C090D
      090C090D090C090D090C090D0A0C090D090B090B090B090B090B090B09090608
      05050308070A090C0A0D090D090C090D0A0D090D0A0D090D0B0D090D0A0D090D
      0A0D0A0D0B0D0A0D0B0D090D090C090D090C090D090C090D00000C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0B0B0D0A0B0B0D0A0C0B0D0A0B0B0D090A090C090A090C090A090C090907
      09050505090709090D0C0B0B0D0B0C0C0D0B0B0B0D0B0C0B0D0B0C0B0D0B0C0B
      0D0B0D0C0D0B0D0C0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B00000B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0B0A0D0B0B0B0D0C0B0B0D
      0C0B0A0D0B0B0A0D0B0B0B0D0C0B0A0D0B0A090B0A09090B0A09090B0A090909
      09070809090705080909090C0B0B0B0D0D0C090D0B0B0B0D0C0B0B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D00000D090D0A0D09
      0D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090C090D090C090D090D0A0D09
      0D0A0D090C090D090C090D090D090D090B090C090B090C090B090C090B090B07
      09070D090905070307060C090B090D090D0B0D090C090D090D0A0D090D0A0D09
      0D0A0D090D0A0D090D0A0D090C090D090C090D090C090D090000090D0A0D090D
      0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D090C090D090C090D0A0D090D
      0A0D090D090C090D090C090D0A0C090D090B090B090B090B090B090B090B0809
      07090709070704070509070A090B090D0A0D090C090B090D090D090D0A0D090D
      0A0D090D0A0D090D0A0D090D090C090D090C090D090C090D00000C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0C0B0D0B0C0B0D0B0B0A0D090B0A0D090B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0C0B0D0A0B0B0D090A090C090A090C090A090C090908
      0906080709060706090909080A090A0A0D0A0A0A0D090B0B0D0A0C0B0D0B0C0B
      0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B0D0A0B0B00000B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0B0D0C0B0B0D0C0B090C0B0A090C0B0A090C0B0A090C
      0B0A0A0D0B0B0A0D0B0B0B0D0C0B0A0D0B0A090B0A09090B0A09090B0A090809
      0705070909080608080907090909090B0B0A090B0B0A090D0B0B0B0D0C0B0B0D
      0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D00000D090C090D09
      0C090D090D0A0D090D0A0E0B0D0B0D0A0D0A0A0709080B080A090D090C090D09
      0C090D090C090D090C090D090D090D090B090D090B090D090B090A0709080B07
      090608050906080509080B070907090508050B080A090D090C090D090C090D09
      0C090D090B090D090B090D090B090D090B090D090B090D090000090D090C090D
      090C090D0A0D090D0A0D0B0D0B0D0A0D0A0D070A0809080B090A090D090C090D
      090C090D090C090D090C090D0A0C090D090B090C090B090C090B070A090A070A
      0709050905070509070A080B080907090609070A080A080B090B090D0A0D090D
      090C090D090C090D090C090C090B090C090B090C090B090C00000B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0D0D0D0B0D0B0D0B09090B0909090B090B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0C0B0D0A0B0A0D090B0A0D090B0A0D0909090C090909
      0B080806070507090B090A090C0909090A0809090B0909090B090C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0B0B0D0A0B0B0D0A0B0B0D0A0B0B00000A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0B0D0D0C0B0D0C0B090A0909090B0A090A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B0A0D0B0B090C0B09090B0A09090B0A09090B0A09090B
      090907070505070B0B0A090C0B09090B0909090A0909090B09090A0D0B0B0B0D
      0C0B0B0D0C0B0B0D0C0B0A0D0B0B0A0D0B0B0A0D0B0B0A0D00000D090C090D09
      0C090D090D0A0D090D0A0D0A0D0A0D090C090B080A090C090B090D090C090D09
      0C090D090C090D090C090D090C090D090B090C090B090C090B090C090B090C08
      0908090505050A090D090D090B090D090B090C090B090C090B090D090B090D09
      0D0A0D090D0A0D090D0A0D090C090D090C090D090C090D090000090D090C090D
      090C090D0A0D090D0A0D0A0D0A0D090D090C080B090B090B090B090D090C090D
      090C090D090C090D090C090C090B090B090B090B090B090B090B080B090B080B
      080905080509070C090C090C090B090C090B090C090B090B090B080B090B090D
      090C090D0A0D090D0A0D090D0A0D090D0A0D090D0A0D090D00000B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0C0B0D0B0B0B0D0909090C090A0A0D090B0B0D0A0B0B
      0D0A0B0B0D0A0B0B0D0A0B0A0D090A090C0909090B0909090B0909090B090909
      0A0705070A0909090D0A0A090C090B0A0D090B0A0C0909090B0909090B090909
      0D090B0B0D0A0B0B0D0A0C0B0D0B0C0B0D0B0C0B0D0B0C0B00000A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0A090B0A09090C0B0A0A0D0B0B0A0D
      0B0B0A0D0B0B0A0D0B0B090C0B09090B0909090B0909090B0909080A09090909
      090705090A0B090B0A0B090B0A09090B0B0A090B09090909090907090909090B
      0A09090C0B0A090C0B0A0B0D0C0B0B0D0C0B0B0D0C0B0B0D00000D090D0A0D09
      0D0A0D090C090D090D0A0D090C090D090B090D090C090D090C090D090C090D09
      0D0A0D0A0D0A0D090C090D090B090C080A090B0809080A0609060B0709080B07
      0601090709090C090B090A080B090D090B09090509080B0709080C090B090C09
      0B090B090B090D090D0A0D090C090D090B090D090D0A0D090000090D0A0D090D
      0A0D090D090C090D090D090C090B090C090B090D090C090D090C090C090C090D
      0A0D0A0D0B0D090D090C090C090B090B090A080B080907090709070907090709
      05050709090B090C090B090B090B090B09090609080A080B0909090B090B090B
      090B080B090B090B090B090C090B090C090B090D0A0D090D00000C0B0D0B0C0B
      0D0B0B0B0D0A0B0B0D0A0B0A0D090B0A0D090B0B0D0A0B0B0D0A0B0A0D0A0B0B
      0D0B0D0C0D0B0C0B0D0A0B0A0D090A090C090A090B090909090708080A070705
      080509090B090B0A0D090B0A0C0909090A0909090B090B090C090A090C090A09
      0C0909090B0909090B0909090B090A0A0D090C0B0D0B0C0B00000B0D0C0B0B0D
      0C0B0B0D0C0B0A0D0B0B090C0B0A090D0B0B0A0D0B0B0A0D0B0B090C0B0B0A0D
      0C0B0B0D0C0B0A0D0B0A090B0A09090B0A09090B090909090908060909080506
      0507090A0909090C0B09090B090807090909090B0B0B0A0C0B09090B0A09090B
      0A09090C0A09090A090907090909090C0B0B0B0D0C0B0B0D00000D090D0A0D09
      0D0A0D090D090D090B090C090B090D090C090D090C090D090C090D090C090D09
      0D0A0D090D090D090B090C090B090C090B090C090B090B070907090609060703
      06050A070A090C090A090A0709070A080B090D090C0A0D090B090C090B090C09
      0B090D090B090B070907090609080C090C0A0D090D0A0D090000090D0A0D090D
      0A0D0A0D0A0D090C090B080B090B090D0A0D090D090C090D090C090C090C090D
      0A0D090D090C090C090B080B090B090C090B090B090A070A0709050907080506
      030507090809070A070906090709080C090D090D0A0D090D090B090B090B090B
      090B090D090B080B08090609080A090D0A0D090D0A0D090D00000C0B0D0B0C0B
      0D0B0D0C0D0B0B0A0C0909090C090B0B0D0B0B0B0D0A0B0B0D0A0B0A0D0A0B0B
      0D0B0B0B0D0A0B0A0D0909090C090A0A0D090B0A0C0909090B08090709060705
      050108080A080908090709090B090B0A0D0A0B0B0D0B0B0A0C090A090C090A09
      0C090A090B0909090A0809090B090B0B0D0B0C0B0D0B0C0B00000B0D0C0B0B0D
      0C0B0C0D0D0B0A0C0A09090B0A0A0A0D0C0C0A0D0B0B0A0D0B0B090C0B0B0A0D
      0C0B0A0D0B0A090C0A09090B0909090C0B0B090C0A09090A0909080907070707
      03000709090807090707090B0B0B0A0C0A090A0D0B0B0A0C0A09090B0A09090B
      0A09090A090908090908090B0A0A0A0D0C0B0B0D0C0B0B0D00000D0A0D0B0D0A
      0D0B0E0B0D0C0D090B080B080B090D090D0A0D090C090D090B090D090C090D09
      0B090D090B090D090B090D090B090D090B090D090B090D090A08090609050905
      0605060407070B080A090B0709090C090B090B090B090D090B090B0709070B08
      0B090A06090509070B090D090C090D090D0A0D090C090D0900000A0D0B0D0A0D
      0B0D0B0D0B0D0A0D090A070B090C090D0A0D090D090B090C090B090C090B090C
      090B090C090B090C090B090C090B090C090B090D090C090B0909090B08090508
      050601050508070B090A070A080A080B090B090C090C090B0809080A07090609
      070907090609060A090C090C090C090D0A0D090D090C090D00000D0C0D0B0D0C
      0D0B0D0D0E0B0C0B0C0909090D0A0B0B0D0A0B0B0D090B090C090B0A0D090B0A
      0D090B0B0D0A0B0B0D0A0B0A0D090B0A0D090B0B0D0A0B090B090A090B070705
      07050102060509090B0909090B0909090C0909090C090A090B08090909070707
      09060909090709090C0A0B0A0D0A0B0B0D0B0B0B0D0A0C0B00000B0D0D0C0B0D
      0D0C0B0D0D0B0A0C0A09090B0B0B0A0D0B0B090C0B0A090B0A09090B0A09090C
      0B0A0A0D0B0B0A0D0B0B090C0B0A090C0B0A0B0D0C0B090B0909060907050505
      050301050506070A0909090A0909090B090907090909090B0909070907060508
      0707090A0909090B0A0A090C0B0A0A0D0B0B0A0D0C0B0B0D00000D0A0D0B0D0A
      0D0B0D0A0D090D090B090C090B090D090B090D090B090C090A090B080A090C09
      0B090D090C090D090C090D090B090D090B090D090C090C080907070305040703
      0503070407070B0709080B0709080B0709080A07090709060907080507050905
      09070B080A090B090B090C090B090D090C090D090D0A0D0A00000A0D0B0D0A0D
      0B0D0A0D090B090C090B090C090C090D090B090B090B080B090A070A090A090C
      090B090D0A0D090D0A0D090C090B090C090B090C090B08090608040705070508
      050805090709080B0909070A080907090709090B070905080507050705080509
      090B090B090B090C090B090B090B090C090C090D0A0D0A0D00000D0C0D0B0D0C
      0D0B0C0B0D090A090D0A0B0A0D0A0B0A0D090A090C0909090B0909090B090A0A
      0D0A0C0B0D0B0C0B0D0B0B0A0D090B0A0D090A090C0909070905070709070808
      0907060709090A0A0D0909090B09090909070908090507070907080709070909
      0C090B0A0D0A0B0A0D0909090C090B0A0D090C0B0D0B0D0D00000B0D0D0C0B0D
      0D0C0B0D0B09090B0B0B090C0B0B0A0C0A09090B0A09090B090908090909090C
      0B0B0B0D0C0B0B0D0C0B090C0B0A090C0B0A090B090907090605070909080709
      080705070809090D0B0B090A0909080909080506050506090A0B090A0909090B
      0909090C0B0B0A0C0B09090B0A09090C0B0A0B0D0D0C0B0D00000D090D0B0D0A
      0D0A0C0809080B090C0B0D0A0D0A0D090C090D090B090B0709070B080A090D09
      0B090D090C090D090C090D090B090C080A090B080B090B0709060A070A090C08
      0907090509070B090B090B070905090507050B080B090C090B090C090B090C09
      0B090D090B090D090B090C090B090C090B090D090B090D090000090D0B0D0A0D
      0A0D090B090A080C0A0D0A0D0B0D090D090C090C090B080A0809090B090B090C
      090B090D090C090D090C090C090B090B090A090B090B080A0709070A090A080A
      070905080509070A08090609060805090609080B090B090C090B090B090B090B
      090B090C090B090C090B090B090B090B090B090D0A0D090D00000C0B0D0B0D0C
      0D0B0A090B090A0A0D0B0D0C0D0B0C0B0D0A0B0A0D0909090B090B0A0D090A09
      0C090B0A0D090B0A0D090B0A0D090A090C090A090C090A090A0709090A090909
      0A070505090709090A080807090709090C090A090C090B0A0D0A0B0A0D090B0A
      0D090B0B0D0A0B0B0D0A0A090C090A090C090C0B0D0B0D0C00000B0D0D0C0B0D
      0B0B090B0A09090D0C0B0B0D0C0B0A0D0B0A090C0B09090B09090A0C0B0A090B
      0909090B0A09090B0A09090C0B0A090C0B0A090C0B0A090B0909070909090809
      0909050908080809090908090909090B0B0B090B0B0A090D0B0B090C0B0A090C
      0B0A0A0D0B0B0A0D0B0B090B0A09090B0A090A0D0B0B0A0D00000D090D0A0D09
      0B090B090B090D090D0A0D090D090D090B090D090B090C090B090D090B090C08
      0A090C090B090C090B090D090B090D090C090D090C090D090A08090609070A07
      0909090709090C090A090D090A090B090B090C090B090D090C090D090B090D09
      0B090D090C090D090C090C090B090C090B090C090B090C090000090C090B090B
      0809080B090C090D0A0D090D090C090C090B090C090B090C090B090C090B090B
      090B090C090B090C090B090C090C090D0A0D090D0A0D090C090A07090709070B
      090B080B090B090D090B090D090B080B090B090C090C090D0A0D090D090C090D
      090C090D0A0D090D0A0D090B090B090B090B090B090A080A000009090C090909
      090709090D0B0D0C0D0B0B0B0D0A0B0A0D090B0A0D090B0A0D090A090C090A0A
      0D090B0B0D0A0B0B0D0A0B0A0D0A0B0B0D0B0C0B0D0B0B0A0C0909090B090909
      0D0B0A0A0D0A0C0B0D090B0B0D0909090C090B0A0D0A0B0B0D0B0B0B0D0A0B0B
      0D0A0C0B0D0B0C0B0D0B0A090C090A090C090A090C0909090000090B09090809
      0807090B0B0C0B0D0C0B0A0D0B0A090C0A09090C0B0A090D0B0B090B0909090C
      0B0B0A0D0B0B0A0D0B0B090C0B0B0B0D0D0C0B0D0D0C0B0D0A09090B0909090C
      0C0C090C0B0B0A0D0B0A090B0A09090B0B0A090C0B0B0A0D0C0B0A0D0B0B0A0D
      0B0B0B0D0C0B0B0D0C0B090B0A09090B0A090A0C0B09090B00000D090A070906
      09070D090D0A0D0A0D0B0D090A070A070A090C090B090C090B090C090C0A0D09
      0D090D090D0A0D090D0A0D090B090C090C090D090B090D090B090D090C090D09
      0B090D090B090D090B090D090D090C080B090D090D0B0D0A0D0A0D090D0A0D09
      0D0A0D090D0A0D090D0A0D090C090D090B090C090B090D090000090C09090709
      0709090D090D090D0A0D090C0909070A090B090C090B090C090B090C090D090D
      0A0D090D0A0D090D0A0D090D090B090C090C090C090B090C090B090D090C090C
      090B090C090B090C090B090D0A0C090B090B090D0A0D0A0D0B0D090D0A0D090D
      0A0D090D0A0D090D0A0D090D090C090C090B090B090B090D00000A090B090909
      0B090B0A0D090B0A0D090B090B0909090D0A0B0B0D0A0B0B0D0A0B0B0D0B0D0C
      0D0B0C0B0D0B0C0B0D0B0B0B0D090B0A0D0A0B0B0D0A0B0B0D0A0C0B0D0A0B0A
      0D090B0B0D0A0B0B0D0A0B0B0D0A0A090C090B0B0D0B0D0C0D0B0C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0C0B0D0A0B0A0D090A090C090B0A0000090B0909090B
      0B0A090C0B09090B0A09090B0909090B0B0B0B0D0C0B0B0D0C0B090D0C0C0B0D
      0D0B0B0D0C0B0B0D0C0B0B0D0B0A090D0B0B0A0D0B0B0A0D0B0B0B0D0C0B0A0D
      0B0A0A0D0B0B0A0D0B0B090D0C0B090B0A0A090C0B0B0B0D0C0B0B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0B0D0C0B0A0D0B0A090B0A09090C00000B080B090D09
      0C090D090B090C080A090B080A090C090C090D0A0D0B0D0A0D0B0D090D0B0D0A
      0D0B0D090D0A0D090D0A0D090C090D090D0A0D090C090D090C090D090D0A0D09
      0C090D090C090D090C090D090D090C080B090C090C0A0D090D090D090D0A0D09
      0D0A0D090D0A0D090D0A0D090D0A0D090C090B080B090C090000080B090C090D
      090C090D090B090B0909090B090B090C090B090D0A0D090D0A0D090D0B0D0B0D
      0B0D090D0A0D090D0A0D0A0D0A0C090D0A0D090D0A0D090D0A0D0A0D0A0D090D
      090C090D0A0D090D0A0D090D0A0C090B090B090C090C090D090C090D0A0D090D
      0A0D090D0A0D090D0A0D0A0D0A0D090D090C080B090A090B00000A0A0D0B0C0B
      0D090C0B0D090A090B090B0A0D0A0B0A0C090C0B0D0B0C0B0D0B0B0B0D0C0D0D
      0E0B0C0B0D0B0C0B0D0B0D0B0D0A0B0B0D0B0C0B0D0B0C0B0D0B0D0C0D0B0C0B
      0D0A0C0B0D0B0C0B0D0B0B0B0D0A0A090C090A090D0A0B0B0D0A0C0B0D0B0C0B
      0D0B0C0B0D0B0C0B0D0B0D0C0D0B0C0B0D0A09090B090A090000090D0C0C0B0D
      0B0A0B0D0C0B090B09090A0D0B0B0A0C0A090A0D0B0B0A0D0B0B0B0D0D0D0C0D
      0D0C0B0D0C0B0B0D0C0B0B0D0C0B0A0D0D0C0B0D0C0B0B0D0C0B0B0D0D0B0B0D
      0B0B0B0D0C0B0B0D0C0B090D0C0B090B0A0A090B0B0B0A0D0B0A0B0D0C0B0B0D
      0C0B0B0D0C0B0B0D0C0B0B0D0D0B0B0D0B0B090A0909090B0000}
    Left = 180
    Top = 225
  end
  object esVendaRapida: TdxEditStyleController
    BorderColor = 13605212
    BorderStyle = xbsSingle
    ButtonStyle = btsFlat
    HotTrack = True
    Left = 434
    Top = 182
  end
  object msDevolucao: TTS_ModuloStyle
    StyleControler = DMProjeto.esFornecedores
    BarEndColor = 14408667
    BarStartColor = clWhite
    CaptionShadow = clSilver
    FormColor = 14408667
    Textura.Data = {
      36C00000424D36C0000000000000360000002800000080000000800000000100
      18000000000000C00000120B0000120B00000000000000000000D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6
      C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CE
      CBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C7E7CEC7E7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7D6CFEFC6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6
      C7E7C6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7D6D3EFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECFEFC6C7E7
      C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C7E7CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7CECFEFC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DECEC7E7CECBE7CECBE7CEC7
      E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6
      C7E7C6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7CECBE7CEC7E7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECFEFC6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECFEFC6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3
      DECECBE7C6C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECE
      C7E7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7D6CFEFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6C3DECECBE7C6
      C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6BEDECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECFEFC6C7E7
      C6C3DECECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DECEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7CECBE7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C3DECE
      C7E7C6C3DEC6C3DEC6C3DECECBE7C6C3DEC6C7E7C6C7E7CEC7E7CECFEFC6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C7E7CEC7E7C6C7E7C6C7E7C6C3DE
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7CECBE7CEC7E7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3
      DECECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7D6CFEFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DEC6C7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6BEDECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECFEFC6C7E7
      C6C3DECECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CEC7E7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C3DECE
      C7E7C6C3DEC6C3DEC6C3DECECBE7C6C3DEC6C7E7C6C7E7CEC7E7CECFEFC6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CEC7E7C6C3DEC6C3DEC6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7CECBE7CEC7E7
      C6BEDECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DEC6C7E7
      BDBEDEC6C3DEC6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3
      DECEC7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DEC6C7E7BDBEDEC6C3DEC6BEDECEC7E7C6BEDEC6C7E7D6CFEFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C7E7C6C3DEC6C3DEC6BEDE
      C6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7
      E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C7E7C6
      C3DEC6C7E7BDBEDEC6C3DEC6BEDEC6C3DEC6BEDEC6C7E7C6C3DECECFEFC6C7E7
      C6C3DECECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DE
      C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C3
      DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DEC6
      C7E7C6C3DEC6C3DEC6BEDEC6C3DEC6BEDEC6C3DEC6C3DEC6C7E7CECFEFC6C3DE
      C6C7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C3DEC6C3DEC6C3DEC6C3DEC6BEDEC6BEDE
      C6C3DEC6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7CEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6BEDEC6BEDEC6C3DEC6C3DECECBE7C6C3DE
      BDBEDEC6C3DEC6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C7E7BDBEDEC6C3DEBDBEDEC6C3DE
      BDBEDEC6C3DEC6BEDECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3
      DEC6C7E7BDBEDEC6C3DEC6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6
      C7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DECECFEFBDBEDE
      C6C3DEC6BEDEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBAD6
      C6C3DEC6BEDEC6C3DEC6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DEC6C7
      E7C6BEDEC6C3DEC6BEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBEDEC6C3DEBDBEDECECFEFC6C3DE
      C6C3DEC6C7E7C6C3DEC6C3DEC6BEDEC6C3DEBDBAD6C6BEDEC6BEDEC6C3DEC6BE
      DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DEC6C3DEC6BEDEC6C3DEC6BEDEC6C3DEC6BEDEC6C3DEC6BEDEC6C3DE
      C6C3DEC6C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3
      DEC6C3DEC6C3DEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3
      DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7D6CFEFC6C7E7
      CEC7E7C6C7E7C6C3DEBDBEDEBDBEDEBDBAD6BDB6D6BDBAD6C6BEDEC6BEDEBDBE
      DEBDBEDEC6C3DEC6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEBDBEDEC6C3DEC6BEDEC6BEDEBDBEDEC6C3DEC6C3DEC6BEDEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C3
      DEC6BEDEC6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CE
      C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DECECBE7CEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6C3DEC6BE
      DEC6C7E7BDBEDEC6C3DEC6BEDECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6BEDECEC7E7BDBEDEC6BEDEBDBEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C7E7
      C6BEDEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECFEFC6C3DEC6C3DEBDBE
      DEC6C3DEBDBEDEC6C3DEC6BEDEC6C7E7BDBEDEC6C3DEC6BEDECEC7E7C6BEDEC6
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7
      C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6C3DECEC7E7C6BEDEC6C7E7C6C3
      DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C7E7C6BEDEC6C3
      DEC6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEBDBEDE
      C6C3DEC6BEDEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C7E7CEC7E7C6BEDEC6C3
      DEBDBEDEC6C3DEC6BEDEC6C3DEBDBAD6C6C3DEBDBEDEC6C3DEBDBAD6C6C3DEBD
      BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEBDBEDE
      C6C3DEBDBEDEC6C3DEBDBEDEC6C3DEC6BEDEC6C3DEC6BEDECEC7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CEC7E7C6C3
      DEC6C3DEC6C3DEC6C7E7C6C3DEC6BEDEC6BEDEC6C7E7C6C3DEC6C3DEC6C7E7CE
      CBE7C6C7E7CEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7C6C7E7C6BEDEC6C3DE
      C6BEDEC6C3DEC6BEDEC6C3DEC6C3DEC6C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C3DEC6C7E7C6BE
      DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6BEDEC6C3DEBDBEDEC6BEDEC6BEDEC6
      C3DEBDBEDEC6C3DEC6BEDEC6C3DEC6BEDEC6C3DEC6BEDEC6C3DEC6BEDEC6BEDE
      BDBEDEC6C3DEBDBEDEC6BEDEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3
      DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C3DEC6C3DEBDBEDEC6C3DEC6BEDEC6BEDEC6BEDEC6C7E7C6
      C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7C6C3DEC6BEDE
      C6C3DEC6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CEC7E7C6C3DEC6C3
      DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEBDBEDEC6C3DEC6BEDEC6BEDEBDBEDEC6C3DEC6BEDEC6BEDEBDBEDE
      C6C3DEC6BEDEC6BEDEC6BEDEC6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DEC6C7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7CECFEFCECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3
      DECECBE7C6C3DEC6C7E7C6C3DEC6C3DEBDBAD6C6BEDEBDBAD6C6C3DEBDBAD6C6
      BEDEBDBEDEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C7E7C6C7E7
      C6BEDEC6C3DEC6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6BEDEC6C3DEC6BE
      DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DEC6C7E7BDBEDEC6C3DEC6BEDEC6C7E7BDBEDEC6C3DEC6BEDEC6C7E7
      BDBEDEC6C3DEC6BEDEC6C7E7C6BEDECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C3DEBDBAD6C6BEDEBDBAD6C6BEDEBD
      BAD6C6BEDEBDBEDEC6C3DEC6BEDEC6C3DEBDBEDEC6C7E7C6C3DECECBE7C6BEDE
      C6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C7E7C6BEDEC6C7
      E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6BEDEC6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6BEDE
      C6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7D6CFEFCEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6BEDEBDBEDEC6
      C3DEC6BEDEC6C3DEC6C3DEC6C7E7BDBEDEBDBEDEBDBEDEC6C7E7C6C3DEC6C3DE
      C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3
      DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3
      DECEC7E7CEC7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C7E7CEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CEC7E7C6C3DEC6BEDEC6BEDEC6C3DEC6
      C3DEC6C3DEC6C3DECEC7E7C6C3DEBDBEDEBDB6D6BDBEDEBDBEDEC6C3DEC6BEDE
      C6C3DEC6C3DEC6C3DEC6BEDEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C3DEC6C3DEC6C3
      DEC6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CECBE7CE
      CBE7CEC7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CECBE7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C3DEBDBAD6C6C3DEBDBEDEC6
      C7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C3DEBDBAD6BDBEDEBDBAD6C6C7E7
      C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6C3DEBDBEDECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C7E7BDBEDEC6C3DEBDBAD6C6C3DEC6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEBDBEDEC6C3DEBDBAD6C6BEDEBDBEDE
      C6C3DEBDBEDEC6C3DEBDBAD6C6C3DEBDBEDEC6C3DEBDBEDEC6C7E7C6C3DEC6C7
      E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C3DEC6C7E7BDBEDEC6BEDEC6BEDECE
      C7E7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DE
      C6BEDEC6C3DEBDBEDEC6BEDEBDBEDEC6C3DEBDBEDEC6BEDEC6BEDEC6C3DEC6BE
      DEC6C3DEC6C3DECECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C3DEC6BEDEBDBEDEC6C3DEC6
      C3DEC6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEBDBEDEC6C3DEC6BEDEC6BE
      DEC6BEDEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C3DEBDBAD6C6
      C3DEC6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C7E7CECBE7C6C3DECECBE7C6C3DEC6C7E7C6C3DEC6C3DEBDBEDEC6C3DEBDBE
      DEC6C3DEBDBAD6C6C3DEBDBEDEC6C3DEBDBEDEC6C3DEC6BEDEC6C7E7C6BEDEC6
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7
      C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C3DEBDBAD6C6C3DEC6
      BEDECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3
      DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEC6
      BEDEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7CEC7E7CECBE7C6C3DEC6BEDEBDBEDEC6
      C7E7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DECEC7E7C6C3
      DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEC6BEDEBDBEDEC6
      C3DEBDBAD6C6BEDEC6BEDEC6C3DEC6BEDEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DE
      C6C3DEC6C7E7C6BEDEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3
      DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECECBE7CEC7E7C6C3DEBDBEDEC6BEDEC6
      C3DEC6C7E7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CEC7E7C6C7E7C6C3DEC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DEC6C7E7C6C3DEC6C3
      DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6BEDEBDBEDEC6BEDEBD
      BAD6BDBAD6BDBAD6BDBEDEBDBAD6BDBAD6BDBAD6BDBEDEBDBEDEBDBAD6BDBAD6
      C6BEDEBDBAD6BDBAD6BDBAD6C6BEDEC6BEDEC6BEDEC6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DEC6C7E7BDBAD6C6
      C3DECEC7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3
      DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6
      C3DEC6BEDEC6C3DEBDBAD6C6BEDEBDBAD6C6C3DEBDBAD6C6BEDEBDBAD6C6C3DE
      BDBAD6C6C3DEBDBEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBEDEC6C3DEBDBE
      DEC6C3DEBDBAD6C6BEDEBDBAD6C6C3DEC6BEDECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7D6D3EFC6C7E7
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7BDBEDEC6BEDEBD
      BEDECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7C6
      BEDEC6C3DEBDBAD6C6C3DEBDBEDEC6C3DEBDBAD6C6C3DEBDBEDEC6C3DEBDBAD6
      C6C3DEC6BEDEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3
      DEBDBEDEC6C3DEC6BEDEC6C3DEBDBAD6C6C7E7C6C3DECEC7E7C6BEDEC6C7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C3DECEC7E7C6C3DEC6C3DEBDBAD6C6
      C3DEC6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3
      DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DE
      C6C3DECECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6BEDEC6
      C3DEC6BEDEC6C7E7C6C3DECECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CECFEFC6C3DE
      CEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CEC7E7C6C7E7C6C7E7C6BEDEC6BEDEC6
      BEDEC6C3DEC6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DE
      CEC7E7CEC7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C7E7C6C3DEC6BEDEC6C3DEC6
      BEDEC6BEDEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECBE7C6C7E7
      C6BEDEC6C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECFEFC6C3DECEC7E7C6C3DECEC7E7BDBAD6C6
      C3DEC6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3
      DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C7E7BDBEDEC6
      C3DEC6BEDEC6C7E7BDBEDEC6C3DEC6BEDECEC7E7C6BEDEC6C7E7C6C3DECEC7E7
      C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6CFEFBDBEDE
      C6C3DEC6BEDEC6C7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7CEC7E7CECBE7C6C3DECECBE7C6C3DEC6C3DEBD
      BEDEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C7E7CEC7E7C6BEDEC6C3DEC6
      C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6BEDE
      C6C7E7C6BEDEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDECECBE7C6BEDE
      C6BEDEC6C7E7C6C3DEC6C7E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7C6C7E7C6BEDEC6
      C3DEBDBEDEC6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3
      DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C3DECEC7E7CEC7E7CECBE7C6C3DEC6C3DEC6C3DECE
      C7E7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DE
      C6BEDEC6C7E7C6BEDEC6C3DEC6C3DEC6C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DEC6BEDEC6C3DECECBE7BDBEDE
      C6C3DEC6C3DEC6C3DEC6C3DECECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CEC7E7C6C3DEC6C7E7C6C3DEC6C3DEBD
      BEDEBDBEDEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECECBE7CEC7E7C6C7E7C6C7E7CEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7CEC7E7
      CECBE7CECBE7CECBE7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C3DEC6C3DEC6C7E7C6
      C7E7C6C7E7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7BDBEDE
      C6C3DEC6BEDEC6BEDEC6BEDEC6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6BEDEC6BEDEC6C3DEC6BEDECECBE7CEC7E7
      C6BEDEC6C3DEBDBEDEC6C3DEC6BEDECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DEC6C7E7BDBEDEC6C3DEC6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6BEDECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C3DEBDBAD6C6C3DEC6BE
      DECEC7E7C6C3DECEC7E7C6C7E7CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6C3DED6CFEFC6BEDE
      C6C3DEBDBEDEC6C3DEBDBAD6C6C3DEC6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7BDBAD6C6C3DEC6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C3DEC6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7BDBEDEC6C3DEC6BEDEC6C3
      DEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C3DEC6BEDECECBE7C6C3DE
      C6C3DEC6C3DEBDBEDEC6BEDEC6BEDEC6C3DEC6BEDEC6C7E7C6C7E7CECBE7C6C3
      DECEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEBDBAD6C6BEDECECBE7CECBE7CECBE7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3
      DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6C7E7CECFEFC6C3DE
      C6C7E7C6C3DEC6BEDEBDBEDEC6C3DEC6C3DEC6BEDEC6BEDEC6C3DEC6C3DEC6C3
      DEC6C3DECECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DEC6C7E7C6
      C3DEC6C3DEBDBAD6C6C3DEC6C3DEC6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C3DEC6C3DEC6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECECBE7CE
      CBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DECECFEFCECBE7
      C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6BE
      DEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECEC7E7BDBAD6BDBEDEBDBAD6CEC7E7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C7E7CE
      CBE7CEC7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECFEF
      C6C7E7CECBE7CEC7E7CECFEFC6C7E7CECBE7CEC7E7CECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6BEDEC6
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7
      E7BDBEDEC6C3DEBDBAD6C6BEDEBDBAD6C6C3DEBDBEDEC6C3DEC6BEDEC6C7E7C6
      C3DECEC7E7C6C3DEC6BEDEB5B2CEBDBAD6BDBEDECECBE7CEC7E7CEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6
      C3DEC6C7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECFEFC6C7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C3
      DEC6C3DEC6C3DEC6C7E7C6BEDEBDBEDEBDBAD6C6BEDEBDBAD6BDBEDEBDBEDEC6
      C3DEBDBEDEC6C3DEBDBAD6BDBAD6BDB6D6C6BEDEC6C7E7CECBE7C6C3DECEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DECEC7E7CEC7E7CECBE7CEC7E7CECBE7CECBE7CECFEFCEC7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3
      DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECECBE7C6C7E7CECBE7CEC7E7CE
      CBE7C6C7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7CECFEFC6C3DE
      CEC7E7CEC7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7C6C3DEC6BEDEC6C3DEBD
      BEDEBDBAD6BDBAD6BDBEDEBDBAD6BDBAD6BDBEDEC6C7E7C6C7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6C7E7C6C3DEC6C3DEC6C7E7C6
      C7E7C6C7E7C6C7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CECBE7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C3
      DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7CEC7E7CEC7E7CEC7E7CECBE7CE
      C7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7CECBE7CECFEFCECBE7CECB
      E7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DEC6C7E7BDBEDEBDBEDEBDB6D6BDBEDEBDBAD6C6C3DEC6BEDECEC7E7
      C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C3DEC6BEDECEC7E7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C3DEBDBEDEC6C7E7C6BEDECE
      C7E7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DEC6C7E7C6BE
      DECEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CE
      CBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6BEDEBDBAD6C6C3DEC6BEDEC6C7E7BDBAD6
      C6C3DEBDBAD6C6BEDEBDBAD6C6C7E7C6C3DECEC7E7C6BEDEC6C7E7C6BEDEC6C3
      DEC6BEDECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C3DEC6BEDECEC7E7C6
      C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CEC7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C7E7CEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6C3DECECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DECEC7E7C6C7E7CEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C7E7C6C3DE
      BDBEDEC6BEDEBDB6D6BDBAD6BDBAD6C6C7E7C6C3DEC6C7E7C6C3DEC6C7E7C6BE
      DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3
      DECEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CE
      CBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7D6CFEFC6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CEC7E7C6BEDEBDBAD6BDB6D6BDBAD6BDBAD6BDBAD6C6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C3DEC6C3DEBDBEDEC6C3DEC6C3DEC6C7
      E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CE
      CBE7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CECBE7CEC7E7CEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6C7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECFEFC6C7E7CECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECFEF
      C6C3DEC6C7E7BDBEDEC6BEDEBDB6D6BDBAD6B5B6D6C6BEDEBDBAD6C6C3DEC6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECE
      C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBEDEC6C7E7C6C3
      DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CE
      CBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6BEDEC6C3DEBDBAD6BDBEDEADAECEBDB6D6BDB6D6C6C3
      DEC6BEDECEC7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C7E7CEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6C3DECECFEFC6C7E7
      C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C7
      E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C3DEC6C7E7C6BEDEBDB6D6BDB6D6BDBEDEBDBA
      D6BDBEDEC6BEDEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C7E7CE
      CBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DECEC7E7
      C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3
      DECEC7E7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CE
      CBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7CECFEFC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7
      E7C6C7E7CECBE7CECBE7CECBE7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECECBE7CEC7E7CEC7E7CEC7E7
      CECBE7CECBE7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6C3DEBDBEDEBDBA
      D6BDB6D6BDBEDEBDBEDEBDBEDEC6C3DEC6C7E7C6C7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CECBE7C6C7E7C6C3DEC6C7E7
      CEC7E7C6C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6C3DEC6C7E7CECBE7C6C7E7C6C3
      DEC6C3DECECBE7CECBE7CECBE7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CE
      CBE7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CECBE7CEC7E7CEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6C7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6C3DEBDBE
      DEC6C3DEBDBAD6BDBEDEBDBAD6C6C7E7C6BEDECEC7E7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7
      C6BEDEC6BEDEBDBAD6C6C3DEC6BEDECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CE
      CBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3
      DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEC6BEDEC6C3DEC6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DE
      C6C7E7BDBEDEC6BEDEBDBEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CE
      CBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3
      DEC6C7E7C6C7E7CECBE7C6C7E7C6C3DEC6C3DEC6C3DEBDBEDEC6C3DEC6C3DECE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CEC7E7C6C3DEC6C7E7
      C6C3DEC6C3DEBDBEDEC6C3DEC6C3DECECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CE
      CBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7C6C3DEC6BEDEC6C3DEC6
      C3DEC6BEDEC6C3DEC6C7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      C6C3DEC6BEDEC6BEDEC6BEDECEC7E7C6C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CE
      CBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7CEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6BEDEC6
      C3DEBDBAD6C6C3DEBDBEDEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7
      BDBEDEC6C3DEBDBEDEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CE
      CBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6
      C3DEC6C3DEBDBAD6C6C3DEBDBAD6C6C3DEBDBEDEC6C3DEC6C3DEC6C7E7C6BEDE
      C6C3DEBDBEDEC6C3DEC6BEDECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C3DEC6BEDEC6C3DEBDBAD6BDBAD6BDBEDEC6C3DEC6BEDEC6C3DE
      C6BEDEC6C3DEC6BEDEC6C3DEC6C7E7CEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CE
      CBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7CEC7E7CECBE7CECBE7CECBE7CECBE7CECFEFCEC7E7C6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6C3DEC6C3DEBDBEDEBDBAD6BDB6D6BDBEDEBDBEDEBDBEDEC6C3DE
      C6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CE
      CBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7CEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6BEDEC6C3DEBDBAD6BDBEDEB5B6D6BDBAD6B5B6D6BDBAD6
      BDBAD6C6C3DEC6BEDEC6C7E7BDBEDEC6C7E7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6C3DEBDBAD6BDBEDEBDBAD6BDBEDEB5B2CE
      BDBEDEBDBEDEC6C3DEC6BEDEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      C7E7C6C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBEDEBDBAD6
      BDBAD6C6BEDEC6BEDEC6C7E7C6C7E7CEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6BEDEC6C7E7C6C3DEC6C3DEBDBEDE
      BDBEDEBDBAD6BDBAD6C6BEDECEC7E7C6C7E7C6C3DEC6C3DECECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6C3DECEC7E7
      BDBAD6BDBAD6B5B6D6C6BEDEBDBEDECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DE
      C6C3DEBDBAD6BDBAD6B5B6D6C6C3DEC6BEDECEC7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DED6CFEFCEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DE
      C6C3DEC6C3DEBDBAD6BDBAD6BDBAD6C6C3DEC6C3DEC6C7E7C6C7E7CECBE7C6C3
      DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7
      CECBE7CEC7E7CEC7E7C6C7E7CEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C7E7CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6BEDE
      C6C7E7C6C3DEC6BEDEBDBAD6BDBEDEBDBEDEC6BEDEC6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7
      C6C3DEC6C7E7C6BEDEC6C3DEBDBAD6BDBAD6B5B6D6C6C3DEBDBEDECEC7E7C6C3
      DECECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DE
      CEC7E7C6C3DEC6C3DEBDBEDEC6BEDEBDBAD6BDBAD6BDB6D6C6BEDEC6BEDEC6C7
      E7C6C3DECEC7E7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DED6CFEFCEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C3DECEC7E7C6C3DEC6C3DEC6BEDEC6C3DEBDBAD6BDBAD6BDBAD6C6C3DEC6BE
      DEC6C3DEC6C3DECECBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7CEC7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7CEC7
      E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DEC6C3DEC6C3DEC6BEDEC6BEDEC6C3DEC6C3DEBDBE
      DEBDBAD6C6BEDEC6C3DEC6C3DEC6C3DECEC7E7CEC7E7C6C7E7C6C7E7CECBE7CE
      CBE7CEC7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6C3DEBDBEDECECBE7C6C3DEC6C3DEBDBA
      D6C6BEDEBDB6D6BDBEDEBDBEDECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DE
      CEC7E7C6C3DEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6BE
      DEBDB6D6BDBEDEBDBAD6C6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DED6CFEFCEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C3DECEC7E7C6C3DEC6C3DEC6BEDEC6C3DEBDBEDEC6BEDEC6BEDEC6C3DEBDBE
      DEBDBEDEBDBEDEC6C3DEC6C3DEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6BEDEC6C3DEC6BEDEBDBAD6BDBEDEC6C3DEC6C3DEC6BE
      DEBDBEDEC6BEDEC6BEDEC6C3DEBDBEDEC6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECFEFC6C7E7CECBE7C6C7E7CECBE7C6C7E7CE
      CBE7C6C7E7C6C7E7BDBEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DEC6C7E7
      C6BEDEC6C3DEC6BEDEC6C7E7BDBEDEC6C3DEBDBEDEC6BEDEBDBAD6C6C3DEBDBE
      DEC6BEDEBDBAD6C6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBAD6C6
      BEDEBDBAD6CEC7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CECBE7C6
      C7E7CECBE7BDBEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6C3DEC6C7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6BEDE
      C6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBAD6C6C3DEBDBAD6C6BE
      DEBDBAD6C6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEBD
      BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6BEDECEC7E7C6C3DEC6C7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CECBE7CECBE7CEC7E7CECBE7CEC7E7CE
      CBE7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C3DE
      C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEC6BEDEBDBEDEC6BEDEBDBA
      D6C6BEDEC6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6
      C7E7C6BEDEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6BEDEC6BEDEBDBAD6BDBA
      D6C6BEDECEC7E7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBAD6BDBAD6BDBA
      D6C6C7E7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DECEC7E7C6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDE
      C6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBAD6C6BEDEBDBAD6C6C3
      DEC6BEDECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDE
      C6C7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECFEFCEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DE
      C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEBDBAD6BDBEDEC6C7E7C6C3
      DEC6C3DEC6C3DECECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DE
      C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DEC6C7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6BEDE
      C6C7E7C6C3DEC6C3DEC6C3DEC6C3DEC6C3DEC6BEDEBDBAD6C6C3DEC6C7E7C6C7
      E7C6C3DEC6C7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C3DEC6C3DEC6C3DEC6BEDE
      C6C3DEC6C3DEC6C3DEC6C3DEC6C7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7
      E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6
      C7E7C6C3DECEC7E7C6BEDEC6C3DEC6BEDEC6C7E7BDBEDEC6C3DEBDBEDEC6C7E7
      BDBEDEC6C3DEC6BEDECEC7E7BDBEDEBDBEDEB5B2CEC6C3DEBDBEDEC6C3DEC6C3
      DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DEC6C3DEBDBAD6C6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6BEDECEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDE
      C6C3DEC6BEDEC6C3DEBDBEDEC6C3DEBDBAD6BDBAD6BDBEDEC6C3DEC6C3DEC6C7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C3DEBDBEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6C3DEC6C3DEC6C3DE
      CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7D6CFEFCEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C3DEC6BEDEC6BEDE
      C6BEDEC6C7E7C6BEDEC6BEDEBDBAD6C6BEDEBDBAD6C6C3DEC6C3DECEC7E7C6C3
      DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6
      C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3
      DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DE
      CEC7E7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C3DEC6C3DEC6BEDEBDBEDE
      C6C3DEC6C3DEC6BEDEBDBAD6BDBEDEBDBAD6BDBEDEC6C3DEC6C7E7C6C3DEC6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6BEDEC6BEDEC6C3DEC6
      C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3
      DEC6C3DEC6C7E7C6C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6C3DEC6C3DECEC7E7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6C3DEC6BEDEC6C3DE
      BDBEDEC6C3DEBDBEDEC6BEDEB5B6D6BDBEDEBDBAD6C6C7E7C6BEDEC6C7E7C6C3
      DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6C3DEBDBEDEC6C7E7C6BEDECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECEC7E7C6BEDEC6C3DEC6BEDEC6C3DEBDBEDEC6C3DEC6BEDECEC7E7C6C3DECE
      C7E7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECB
      E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDECEC7E7C6C3DECEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6BEDECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBAD6
      C6C3DEBDBEDEC6BEDEBDBAD6BDBEDEBDB6D6BDBAD6BDBEDEC6C3DEC6BEDEC6C3
      DEC6BEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEC6BEDECEC7E7C6
      C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DEC6C7E7C6C3DE
      CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DEC6C7
      E7C6BEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEC6BEDEC6C7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7D6CFEFCEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7
      E7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7
      E7C6C7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DE
      C6BEDEC6C3DEBDBEDEBDBEDEBDBAD6BDBAD6B5B2CEC6BEDEC6BEDEC6C7E7C6BE
      DEC6C3DEC6BEDEC6C3DEBDBEDEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CEC7E7C6C3DEC6C7E7
      C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3
      DEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7C6C7E7CEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C7E7C6C7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DE
      CEC7E7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6BEDE
      C6C3DEC6BEDEBDBEDEBDBEDEBDBEDEB5B6D6B5AECEBDBEDEC6C3DEC6C3DEC6BE
      DEC6BEDEC6C3DEC6BEDEBDBEDEC6C3DEC6C7E7C6C7E7C6C7E7C6C7E7CEC7E7C6
      C7E7C6C3DEC6C7E7CECBE7CEC7E7C6C7E7C6C7E7CEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3
      DEC6BEDEC6C3DEC6C3DEC6BEDEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECFEFC6C7E7CECBE7CEC7
      E7CECBE7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C7E7C6C3DECECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C3DE
      BDBEDEC6C3DEBDBAD6C6C3DEBDBAD6BDBEDEBDBAD6BDBEDEBDB6D6C6BEDEBDBE
      DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6BEDEC6C3DEC6C3DECEC7E7C6C3DECE
      C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DEC6C7E7
      C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7BDBEDEC6C3DEBDBA
      D6C6C3DEC6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7D6D3EFC6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECB
      E7C6C7E7CECBE7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DE
      CEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DE
      CEC7E7C6BEDEC6C3DEBDBAD6C6BEDEBDBAD6BDBEDEB5B2CEBDBAD6BDBAD6C6BE
      DEBDBEDEC6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C7E7C6BEDECEC7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C3DEC6BEDE
      C6C7E7C6BEDEC6C3DEBDBEDEC6C3DEC6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3
      DEBDBEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7D6CFEFCECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CECBE7CECFEFCEC7
      E7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DEC6C3DECECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DECEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7
      C6C3DEC6C7E7C6BEDEC6BEDEBDBAD6BDBEDEBDBAD6B5B2CEB5B6D6BDBEDEBDBA
      D6C6C3DEC6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6C3DE
      C6C3DEC6C3DEBDBEDEC6BEDEBDBEDEC6C3DEBDBEDEC6C3DEC6C3DEC6C3DEC6BE
      DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7D6CFEFCEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7
      E7C6C7E7CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DE
      CEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C3DEC6C3DEBDBEDE
      C6C3DEBDBEDEBDBAD6BDBAD6BDBAD6BDBAD6BDB6D6B5B2CEBDBAD6BDBAD6BDBE
      DEC6BEDEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6
      C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEBDBEDE
      C6C3DEC6BEDEBDBEDEBDBAD6C6BEDEC6BEDEBDBEDEC6C3DEC6C7E7C6C3DEC6C3
      DEC6C3DEC6C7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CECBE7CECFEFCECBE7
      C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7
      C6BEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C3DEBDBEDEBDBEDE
      BDB6D6BDBAD6BDB6D6BDBEDEBDB6D6BDBAD6BDB6D6BDBEDEBDB6D6C6BEDEBDBE
      DEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6BEDEC6C7E7C6BEDEC6
      C3DEC6BEDEC6C7E7BDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6C3DEBDBEDEC6BEDE
      BDBAD6BDBEDEBDBAD6C6C3DEBDBAD6C6C3DEC6BEDECEC7E7C6BEDEC6C7E7C6C3
      DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7D6D3EFC6C7E7
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6C3DEC6C7E7C6BEDE
      C6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C3DEBDBEDEC6BEDEBDB6D6
      BDBEDEBDBAD6BDBEDEBDBAD6C6BEDEBDBAD6C6BEDEBDBAD6C6C3DEBDBEDEC6C3
      DEC6BEDEC6C7E7C6C3DEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEC6
      BEDEC6C3DEC6C3DEC6C7E7C6BEDEC6C3DEBDBAD6C6BEDEBDBAD6C6BEDEBDBAD6
      C6BEDEBDBAD6C6BEDEBDBAD6C6C3DEC6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7
      E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7CEC7E7D6CFEFCECBE7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7C6C3
      DEC6C7E7C6C3DECECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C3DE
      C6C3DEC6C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6BEDEC6C3DEBDBAD6C6BEDE
      BDBEDEC6C3DEBDBEDEC6BEDEC6BEDEC6C3DEC6BEDEBDBEDEBDBEDEC6C3DEC6C3
      DEC6C7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6
      C3DEC6BEDEC6C3DEC6BEDEC6C3DEBDBAD6BDBEDEBDBEDEC6C3DEBDBEDEC6BEDE
      C6BEDEC6C3DEC6BEDEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7
      E7C6C7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C3DECEC7E7CEC7E7CECBE7CEC7E7CECBE7CECBE7CECFEFD6CFEFCEC7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6BEDE
      C6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6BEDEC6C3DEBDBEDEBDBAD6C6BEDE
      C6C3DEC6C3DEC6BEDEBDBEDEC6C3DEC6BEDEC6BEDEBDBAD6C6BEDEC6BEDEC6C3
      DEC6C3DECECBE7CEC7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6BEDEC6C3DEC6
      C3DEC6BEDEBDBAD6BDBEDEBDBAD6BDBAD6BDBEDEC6C3DEC6C7E7C6C7E7C6C3DE
      C6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7CEC7E7C6C7
      E7C6C7E7CEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C7E7CECBE7CECBE7CEC7E7CEC7E7CECBE7CECBE7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CEC7E7C6BEDEC6C3DEC6BE
      DECEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C3DEC6BEDECEC7E7
      C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6
      C7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7BDBEDEC6C3DEBDBEDEC6C7E7
      C6BEDEC6C7E7C6C3DECEC7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBAD6C6C3DEC6BE
      DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7BDBEDEC6C3DEBDBAD6C6C3DEBDBAD6BD
      BEDEBDBAD6CEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7
      C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7D6D3EFC6C3DE
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DEC6C7E7C6C3DEC6C7
      E7C6BEDECEC7E7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEC6C3DE
      CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBEDE
      C6C7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDEC6C3DEBDBAD6C6BEDEBDBAD6C6C3
      DEBDBEDEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEBDBEDEC6BEDEBDBAD6C6C3DEBD
      BEDEC6C3DEC6BEDECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7D6CFEFCEC7E7
      CEC7E7CECBE7CEC7E7CECBE7CEC7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3
      DEC6C7E7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      CBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DEC6C7E7C6C3DEC6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DEC6C7E7C6BEDEC6C3DE
      C6C3DEC6C7E7C6C3DEC6C3DEC6C3DEC6C7E7C6BEDEBDBAD6BDBAD6C6C3DEBDBE
      DEC6C3DEC6C3DEC6C7E7C6BEDEC6BEDEC6BEDEC6C3DEC6BEDEC6C3DEC6C3DECE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7D6CFEFC6C7E7
      CECBE7CECBE7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C7E7
      CEC7E7C6C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6BEDE
      C6C3DEC6C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6C3DEBDBAD6C6C3DEC6BEDEC6BE
      DEC6BEDEC6C3DEC6C3DEC6C3DEC6BEDEC6C3DEC6C3DEC6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C3DE
      CEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C3DEC6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CECFEFCECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3
      DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3
      DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C3DE
      BDBEDEC6C3DEC6BEDEC6C7E7C6BEDEC6C3DEC6C3DEC6C3DEBDBEDEC6C3DEC6C3
      DECEC7E7C6C3DEC6C7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECE
      C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7D6D3EFC6C3DE
      CEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C3DEC6BEDECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C7E7BDBEDE
      C6C3DEC6BEDEC6C3DEC6BEDEC6C7E7C6C3DECEC7E7C6BEDECEC7E7C6C3DECEC7
      E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6BEDEC6C7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6BEDEC6C7E7C6BEDECECFEFC6C3DE
      C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C3DEBDBEDEC6C3DEC6C3DECECBE7C6C7
      E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7
      C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CEC7E7C6C3DEC6C3DE
      C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C3DEC6C3DEC6C3DECE
      C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DEC6C7E7CECFEFC6C3DE
      C6C7E7C6C3DEC6C3DEC6BEDEC6C3DEC6BEDEBDBEDEC6C3DECEC7E7CEC7E7CEC7
      E7CEC7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6
      C7E7C6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C3DE
      C6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CE
      CBE7CEC7E7C6C7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7C6C7E7C6C3DEC6C3DE
      C6C7E7C6C3DEC6C3DEC6C3DECEC7E7CEC7E7CEC7E7C6C3DECEC7E7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C7E7C6C3DECEC7E7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6
      C7E7C6C3DEC6C7E7CEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DECECFEFCECBE7
      C6C3DEC6C7E7C6BEDEC6C3DEBDBEDEC6C3DEC6BEDECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DEC6C7E7C6BEDEC6C7E7BDBEDEC6
      C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7
      C6C3DECEC7E7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DECE
      C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECEC7E7C6C3DECECBE7C6C3DEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6BEDEC6
      C7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DEC6
      C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7D6D3EFC6C3DE
      CEC7E7C6C3DEC6C3DEBDBEDEC6C3DEC6BEDEC6C3DEC6C3DECECBE7C6C3DECECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DEC6C3DEBDBEDEC6C7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CEC7E7C6C3DECECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DE
      CECBE7C6C3DECEC7E7C6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7
      E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C7E7CEC7E7C6C3DEC6C7E7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DEC6C7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECECFEFC6C7E7
      C6C3DECEC7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C3
      DEC6C7E7C6C7E7CECBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C3DEC6C3DECE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7
      C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C3DEC6C7E7C6C7E7CE
      CBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C3DECEC7E7C6C7E7CECBE7C6C7
      E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7C6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CE
      CBE7C6C3DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7CECFEFC6C3DE
      C6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3
      DEC6C3DECEC7E7C6C7E7C6C3DEC6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DE
      CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECECBE7CE
      C7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7
      E7C6C7E7CECBE7CEC7E7C6C7E7C6C3DECECBE7CEC7E7C6C7E7C6C3DEC6C7E7C6
      C7E7C6C7E7C6C3DECEC7E7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C3DEC6C3DECEC7E7C6C7E7CECBE7CEC7E7
      C6BEDEC6C7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECE
      C7E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECE
      CBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3
      DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECECBE7C6C3DECEC7E7C6BEDEC6
      C7E7C6C3DECEC7E7C6C3DECEC7E7C6C7E7CECBE7C6C3DECECBE7C6C3DECECBE7
      C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7
      E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECE
      C7E7C6C3DECEC7E7C6BEDEC6C7E7C6C3DECEC7E7C6C3DECEC7E7D6CFEFC6BEDE
      CEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7
      E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6
      C3DECEC7E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DE
      CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CEC7E7C6C3DECECBE7C6
      C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C7E7
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C3DECEC7E7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CEC7E7C6C3DEC6C7E7C6
      C3DECEC7E7C6C3DECEC7E7C6C3DECEC7E7C6C3DECECBE7C6C3DECEC7E7C6C3DE
      CECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECBE7C6C3DECECBE7C6C7E7CECB
      E7C6C3DECECBE7C6C7E7CECBE7C6C7E7CECBE7C6C7E7CECBE7C6C3DECECBE7C6
      C3DECEC7E7C6BEDEC6C7E7C6C3DEC6C7E7C6C3DECEC7E7C6C3DECECFEFC6C7E7
      C6C7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C3DECEC7E7CEC7E7CECBE7C6C3
      DEC6C7E7C6C3DECEC7E7C6C3DEC6C7E7C6C7E7CECBE7C6C7E7CEC7E7C6C7E7CE
      C7E7C6C3DECEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7CEC7E7CECBE7CECBE7CECFEFCEC7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7CEC7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7C6C7E7C6C7E7CECBE7C6C7E7C6C7E7C6C3DECE
      C7E7C6C3DEC6C7E7C6C3DECECBE7C6C7E7CEC7E7C6C7E7CECBE7C6C7E7CEC7E7
      CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CECBE7C6C7
      E7CEC7E7CEC7E7CECBE7C6C7E7CECBE7CEC7E7CECBE7C6C7E7CEC7E7CEC7E7CE
      CBE7C6C7E7C6C3DEC6C3DECEC7E7C6C3DEC6C7E7C6C3DECEC7E7D6CFEFC6C3DE
      CECBE7CEC7E7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7CEC7E7CECBE7CEC7E7C6C7
      E7C6C3DECEC7E7C6C3DEC6C3DEC6C7E7CECBE7CEC7E7C6C7E7C6C7E7CEC7E7C6
      C7E7C6C3DEC6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CECBE7CECBE7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CE
      CBE7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7
      CECBE7CECBE7CEC7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7C6C3DECECBE7CEC7E7C6C7E7C6C3DEC6C7E7C6
      C7E7C6C7E7C6C3DECEC7E7C6C7E7C6C7E7C6C7E7CECBE7CEC7E7C6C7E7C6C7E7
      CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7E7C6C7E7CECBE7CEC7E7CEC7
      E7C6C7E7CECBE7CEC7E7CEC7E7CEC7E7CECBE7CECBE7CEC7E7C6C7E7CECBE7CE
      C7E7C6C7E7C6C3DEC6C7E7C6C3DEC6C3DEC6C3DECEC7E7C6C7E7D6D3EFD6D3EF
      CECBE7D6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECF
      EFD6D3EFCECBE7D6CFEFCECBE7D6D3EFCECBE7D6D3EFCECFEFD6D3EFCECBE7D6
      CFEFCECBE7D6D3EFCECBE7D6D3EFCECFEFD6D3EFCECBE7D6D3EFCECFEFD6D3EF
      CECFEFD6D3EFD6CFEFD6D7F7CECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECF
      EFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6
      D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EF
      CECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECF
      EFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECBE7D6D3EFCECFEFD6D3EFCECBE7D6
      CFEFCECFEFD6D3EFCECBE7D6D3EFCECFEFD6D3EFCECBE7D6D3EFCECFEFD6D3EF
      CECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECF
      EFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6D3EFCECFEFD6
      D3EFCECFEFD6D3EFCECBE7D6CFEFCECBE7D6D3EFCECBE7D6CFEF}
    Left = 304
    Top = 216
  end
end

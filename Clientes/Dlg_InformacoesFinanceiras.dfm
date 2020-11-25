inherited DlgInformacoesFinanceiras: TDlgInformacoesFinanceiras
  Left = 158
  Top = 120
  Width = 751
  Height = 539
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 430
    Width = 28
    Align = alNone
    Visible = False
    inherited btFecharCadastro: TTS_SpeedButton
      Width = 26
    end
    inherited btComando2: TTS_SpeedButton
      Width = 26
    end
    inherited btComando1: TTS_SpeedButton
      Width = 26
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 26
    end
    inherited btGravar: TTS_SpeedButton
      Width = 26
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 26
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 735
    Gradient.ColorStart = 14859922
    inherited btHelp: TTS_SpeedButton
      Left = 707
    end
    inherited lbCaption: TdxfLabel
      Width = 339
      AutoSize = True
      Caption = 'Informa'#231#245'es Financeiras (Cheques)'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited pnDados: TTS_Panel
    Width = 735
    Height = 457
    Color = 16116702
    object dxfEmaberto: TdxfLabel
      Left = 2
      Top = 231
      Width = 461
      Height = 23
      Hint = 'Cheques na empresa'
      AutoSize = False
      Caption = 'Em Aberto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfLeftTop
      Effect3D.Depth = 0
      Effect3D.ShadowedColor = 14859922
      PenWidth = 1
    end
    object pnPesquisaFavorecido: TTS_Panel
      Left = 0
      Top = 50
      Width = 468
      Height = 179
      BorderStyle = bsSingle
      Color = 16116702
      TabOrder = 0
      object dxfLiquidados: TdxfLabel
        Left = 1
        Top = 1
        Width = 462
        Height = 23
        Hint = 'Cheques compenssados em banco e factory'
        Align = alTop
        AutoSize = False
        Caption = 'Liquidados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfFun
        Effect3D.Orientation = dxfLeftTop
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = 14859922
        PenWidth = 1
      end
      object DBGLiquidados: TTS_QDBGrid
        Left = 1
        Top = 31
        Width = 462
        Height = 143
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'icANOMES'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'QTDDOC'
                SummaryFormat = '>QTDDOC=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'icANOMES'
                SummaryFormat = '>icANOMES=###0'
                SummaryType = cstCount
              end
              item
                SummaryField = 'TOTAL'
                SummaryFormat = '>TOTAL=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'MENORVALOR'
                SummaryFormat = '>MENORVALOR=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'MEDIA'
                SummaryFormat = '>MEDIA=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'MAIORVALOR'
                SummaryFormat = '>MAIORVALOR=#,###,##0.00'
                SummaryType = cstAvg
              end>
            Name = 'Default'
          end>
        SummarySeparator = '|'
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnDblClick = DBGLiquidadosDblClick
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = C_LiquidadosDs
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
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
        TS_SelectedColumn = 'icANOMES'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'QTDDOC;SUM'
          'icANOMES;COUNT'
          'TOTAL;SUM'
          'MENORVALOR;AVG'
          'MEDIA;AVG'
          'MAIORVALOR;AVG')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object DBGLiquidadosANO: TdxDBGridMaskColumn
          Visible = False
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ANO'
        end
        object DBGLiquidadosMES: TdxDBGridMaskColumn
          Visible = False
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MES'
        end
        object DBGLiquidadosANOMES: TdxDBGridMaskColumn
          Alignment = taCenter
          Caption = 'Periodo'
          HeaderAlignment = taCenter
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icANOMES'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '###0'
        end
        object DBGLiquidadosQTDDOC: TdxDBGridMaskColumn
          Alignment = taCenter
          Caption = 'Qtd. Doc'#39's'
          HeaderAlignment = taCenter
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDDOC'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
        end
        object DBGLiquidadosMENORVALOR: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Menor Valor'
          HeaderAlignment = taCenter
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MENORVALOR'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object DBGLiquidadosMEDIA: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'M'#233'dia'
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MEDIA'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object DBGLiquidadosMAIORVALOR: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Maior Valor'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MAIORVALOR'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object DBGLiquidadosTOTAL: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Total'
          HeaderAlignment = taCenter
          Width = 90
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTAL'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
      end
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 733
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 16116702
      TabOrder = 1
      object TS_Label1: TTS_Label
        Left = 454
        Top = 9
        Width = 45
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 574
        Top = 10
        Width = 18
        Caption = ' '#224' '
        FormatoTabela = False
        LinkToResult = 0
      end
      object btPesquisar: TTS_SpeedButton
        Left = 677
        Top = 7
        Width = 22
        Height = 19
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000014000000130000000100
          1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBEBEBCA3
          A6A4E1E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2AEAA5858629F7A856762
          5FD9DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BA6B2308AEB636CACAB838B696461
          D8DADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFBAE1FF42B9FF348BEA636FADA9828B6C6763D7
          D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFB7DEFD44B9FF358CEB6370AEA781896E6865D8DA
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB6DDFD45B9FF358EEC6470AE997986A2A09FFBFEFF
          D0D4D6B2B5B7ADB0B2C3C5C6F3F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEB6DDFD45B9FF358FEE6C728B737372907B7CA27C71B0
          8E80C19F9389706C6D6567BFC2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEACDBFFA9D0E8A49F9EB98D85F5D2A7FFFCCAFFFFD8FFFF
          DCFFFEDBCAADA25F4F51C2C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFCFBC79E97FEDDAFFFF9C6FFFDCBFFFFDBFFFFE7FFFFFA
          FFFFFFC6A89C615B5DF8F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE7DADEEBC19EFFF5C1FFE9B5FFFECFFFFFE0FFFFF3FFFFFEFFFFFBFF
          FFDA745554D2D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DCC4C3FAE3B7FFE3AFFFE7B3FFFECDFFFFDEFFFFECFFFFF1FFFFE6FFFFDDA585
          75BABDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC1BAFC
          F0C3FFDAA6FFE0AEFFF7C3FFFFD4FFFFDEFFFFE1FFFFDBFFFFD6B9937EBDC0C3
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D0D2F7E3B6FFF4
          CBFFE0B2FFE6B3FFF8C4FFFDCCFFFFCFFFFDC9FFFDCA9C7468DADEE0FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDF1E1BEA2FFFFF5FFFBF5
          FFDEB3FFE7B5FFE4B0FFE5B1FFF8C4F4D1A5937B7EFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDABDBBE8D6D0FFFFFFFFF7D8FF
          E3B2FFE1ADFFF9C5FEDDAEAA7B73E0E3E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BCBBCFAD98F3E2B7FFF0BCFDEA
          B9E6B998B88E8AE4E6E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F6CDB5BACEB3B8E1C7CCE5DCE0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Spacing = 2
        OnClick = btPesquisarClick
        RepeatedClick = False
        Border = False
      end
      object TS_Label3: TTS_Label
        Left = -22
        Top = 8
        Width = 65
        Caption = 'Cliente:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object sbImprimir: TTS_SpeedButton
        Left = 705
        Top = 7
        Width = 22
        Height = 19
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        Spacing = 2
        OnClick = sbImprimirClick
        RepeatedClick = False
        Border = False
      end
      object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
        Left = -6
        Top = 26
        Width = 100
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Visible = False
        AutoSize = False
        StyleController = DMProjeto.esClientes
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
        Height = 21
      end
      object dfFavorecido: TTS_EditFavorecido
        Left = 52
        Top = 6
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
        LookupTipoFav = TS_DBLookupTipoFav1
        SelecionarVarios = False
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = dfFavorecidoSelecionou
        Height = 21
        ExistButtons = True
      end
      object DataI: TTS_DateTimePicker
        Left = 501
        Top = 7
        Width = 81
        Enabled = False
        TabOrder = 2
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 592
        Top = 7
        Width = 81
        Enabled = False
        TabOrder = 3
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        Height = 19
        StoredValues = 4
      end
      object cbNaoPeriodo: TTS_CheckBox
        Left = 358
        Top = 6
        Width = 95
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 4
        Caption = 'Sem Per'#237'odo'
        StyleController = DMProjeto.esClientes
        OnChange = cbNaoPeriodoChange
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
    end
    object TS_Panel2: TTS_Panel
      Left = 1
      Top = 409
      Width = 733
      Height = 47
      Align = alBottom
      BorderStyle = bsSingle
      Color = 16116702
      TabOrder = 2
      object lbChequesDevolvidos: TdxfLabel
        Left = 1
        Top = 1
        Width = 727
        Height = 41
        Align = alClient
        AutoSize = False
        Caption = 'Cheques Devolvidos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        OnDblClick = lbChequesDevolvidosDblClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfFun
        Effect3D.Orientation = dxfLeftTop
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = 14859922
        PenWidth = 1
      end
    end
    object TS_Panel3: TTS_Panel
      Left = 0
      Top = 260
      Width = 468
      Height = 163
      BorderStyle = bsSingle
      Color = 16116702
      TabOrder = 3
      object dbgAbertas: TTS_QDBGrid
        Left = 1
        Top = 1
        Width = 462
        Height = 157
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'icAnoMes'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'QTDDOC'
                SummaryFormat = '>QTDDOC=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'icANOMES'
                SummaryFormat = '>icANOMES=###0'
                SummaryType = cstCount
              end
              item
                SummaryField = 'TOTAL'
                SummaryFormat = '>TOTAL=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'MENORVALOR'
                SummaryFormat = '>MENORVALOR=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'MEDIA'
                SummaryFormat = '>MEDIA=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'MAIORVALOR'
                SummaryFormat = '>MAIORVALOR=#,###,##0.00'
                SummaryType = cstAvg
              end>
            Name = 'Default'
          end>
        SummarySeparator = '|'
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnDblClick = dbgAbertasDblClick
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = C_AbertasDs
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
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
        TS_SelectedColumn = 'icAnoMes'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'QTDDOC;SUM'
          'icANOMES;COUNT'
          'TOTAL;SUM'
          'MENORVALOR;AVG'
          'MEDIA;AVG'
          'MAIORVALOR;AVG')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgAbertasANO: TdxDBGridMaskColumn
          Visible = False
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ANO'
        end
        object dbgAbertasMES: TdxDBGridMaskColumn
          Visible = False
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MES'
        end
        object dbgAbertasANOMES: TdxDBGridMaskColumn
          Alignment = taCenter
          Caption = 'Per'#237'odo'
          HeaderAlignment = taCenter
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icAnoMes'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '###0'
        end
        object dbgAbertasQTDDOC: TdxDBGridMaskColumn
          Alignment = taCenter
          Caption = 'Qtd Doc'#39's'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDDOC'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
        end
        object dbgAbertasMENORVALOR: TdxDBGridCurrencyColumn
          Caption = 'Menor Valor'
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MENORVALOR'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object dbgAbertasMEDIA: TdxDBGridCurrencyColumn
          Caption = 'M'#233'dia'
          HeaderAlignment = taCenter
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MEDIA'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object dbgAbertasMAIORVALOR: TdxDBGridCurrencyColumn
          Caption = 'Maior Valor'
          HeaderAlignment = taCenter
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MAIORVALOR'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object dbgAbertasTOTAL: TdxDBGridCurrencyColumn
          Caption = 'Total'
          HeaderAlignment = taCenter
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTAL'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
      end
    end
    object TS_Panel4: TTS_Panel
      Left = 464
      Top = 50
      Width = 277
      Height = 373
      BorderStyle = bsSingle
      Color = 16116702
      TabOrder = 4
      object dxfVendas: TdxfLabel
        Left = 1
        Top = 1
        Width = 271
        Height = 23
        Align = alTop
        AutoSize = False
        Caption = 'Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clPurple
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfFun
        Effect3D.Orientation = dxfLeftTop
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = 14859922
        PenWidth = 1
      end
      object DBGVendas: TTS_QDBGrid
        Left = 1
        Top = 30
        Width = 271
        Height = 338
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'icAnoMes'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'QTDDOC'
                SummaryFormat = '>QTDDOC=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'icANOMES'
                SummaryFormat = '>icANOMES=###0'
                SummaryType = cstCount
              end
              item
                SummaryField = 'TOTAL'
                SummaryFormat = '>TOTAL=#,###,##0.00'
                SummaryType = cstSum
              end
              item
                SummaryField = 'MENORVALOR'
                SummaryFormat = '>MENORVALOR=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'MEDIA'
                SummaryFormat = '>MEDIA=#,###,##0.00'
                SummaryType = cstAvg
              end
              item
                SummaryField = 'MAIORVALOR'
                SummaryFormat = '>MAIORVALOR=#,###,##0.00'
                SummaryType = cstAvg
              end>
            Name = 'Default'
          end>
        SummarySeparator = '|'
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnDblClick = DBGVendasDblClick
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = C_VendasDs
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
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
        TS_SelectedColumn = 'icAnoMes'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'QTDDOC;SUM'
          'icANOMES;COUNT'
          'TOTAL;SUM'
          'MENORVALOR;AVG'
          'MEDIA;AVG'
          'MAIORVALOR;AVG')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dxDBGridMaskColumn1: TdxDBGridMaskColumn
          Visible = False
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ANO'
        end
        object dxDBGridMaskColumn2: TdxDBGridMaskColumn
          Visible = False
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MES'
        end
        object dxDBGridMaskColumn3: TdxDBGridMaskColumn
          Alignment = taCenter
          Caption = 'Periodo'
          HeaderAlignment = taCenter
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icAnoMes'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '###0'
        end
        object dxDBGridMaskColumn4: TdxDBGridMaskColumn
          Alignment = taCenter
          Caption = 'Qtd. '
          HeaderAlignment = taCenter
          Width = 43
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDDOC'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
        end
        object dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Menor Valor'
          HeaderAlignment = taCenter
          Visible = False
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MENORVALOR'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'M'#233'dia'
          HeaderAlignment = taCenter
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MEDIA'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object dxDBGridCurrencyColumn3: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Maior Valor'
          HeaderAlignment = taCenter
          Visible = False
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MAIORVALOR'
          SummaryFooterType = cstAvg
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
        object dxDBGridCurrencyColumn4: TdxDBGridCurrencyColumn
          Alignment = taRightJustify
          Caption = 'Total'
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTAL'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
          DisplayFormat = '#,###,##0.00;-#,###,##0.00'
          Nullable = False
        end
      end
    end
    object Barra: TdxfProgressBar
      Left = 1
      Top = 35
      Width = 733
      Height = 16
      Align = alTop
      BarBevelOuter = bvNone
      BeginColor = clRed
      BevelOuter = bvLowered
      EndColor = clBlue
      Max = 4
      Min = 0
      Orientation = orHorizontal
      Position = 0
      ShowTextStyle = stsPercent
      Step = 10
      Style = sExRectangles
      TabOrder = 5
      TransparentGlyph = True
      Visible = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 604
    Top = 65530
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 514
    Top = 65527
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 364
    Top = 2
  end
  inherited Beep: TBTBeeper
    Left = 404
    Top = 65526
  end
  inherited FormStorage: TFormStorage
    Left = 264
    Top = 65528
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Informa'#231#245'es Financeiras (Cheques)'
    FirstEditField = dfFavorecido
    Left = 648
    Top = 4
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 311
    Top = 65528
  end
  object P_Liquidados: TDataSetProvider
    DataSet = Q_Liquidados
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 171
    Top = 200
  end
  object Q_Liquidados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select'
      'extract(Year from d.data) as Ano,'
      'extract(month from d.data) as Mes,'
      'count(dd.valor) as QtdDoc,'
      'Min(dd.valor) as MenorValor,'
      'avg(dd.valor) as Media,'
      'Max(dd.valor) as MaiorValor,'
      'sum(dd.valor) as Total'
      
        'From  DepositosDoc dd inner join Depositos d on dd.Deposito = d.' +
        'Deposito'
      
        'inner join FormasPagamento fp on dd.FormaPagamento = fp.FormaPag' +
        'amento'
      'inner join StatusDoc s on dd.Status = s.Status'
      'left  join Favorecidos f on d.Favorecido = f.Favorecido'
      'Where fp.Especie in(1,7) and s.status in (50,55,60,61,62) '
      'and d.favorecido = :Favorecido'
      'and dd.vencimento < :DtHoje'
      'and d.data >= :DataI '
      'and d.data <= :DataF '
      'group by 1,2,3'
      'order by 1,2')
    Left = 174
    Top = 148
  end
  object C_LiquidadosDs: TDataSource
    DataSet = C_Liquidados
    Left = 310
    Top = 153
  end
  object C_Liquidados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Liquidados'
    OnCalcFields = C_LiquidadosCalcFields
    Left = 310
    Top = 206
    object C_LiquidadosANO: TSmallintField
      FieldName = 'ANO'
    end
    object C_LiquidadosMES: TSmallintField
      FieldName = 'MES'
    end
    object C_LiquidadosQTDDOC: TIntegerField
      FieldName = 'QTDDOC'
      Required = True
    end
    object C_LiquidadosMENORVALOR: TBCDField
      FieldName = 'MENORVALOR'
      Precision = 18
      Size = 2
    end
    object C_LiquidadosMEDIA: TBCDField
      FieldName = 'MEDIA'
      Precision = 18
      Size = 2
    end
    object C_LiquidadosMAIORVALOR: TBCDField
      FieldName = 'MAIORVALOR'
      Precision = 18
      Size = 2
    end
    object C_LiquidadosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object C_LiquidadosicANOMES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icANOMES'
      Size = 7
    end
  end
  object Q_Abertas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select extract(Year from dd.vencimento) as Ano, extract(month fr' +
        'om dd.vencimento) as Mes,'
      
        ' extract(month from dd.vencimento)||'#39'/'#39'||extract(Year from dd.ve' +
        'ncimento) as AnoMes,'
      ' count(dd.valor) as QtdDoc, Min(dd.valor) as MenorValor, '
      ' avg(dd.valor) as Media, Max(dd.valor) as MaiorValor, '
      ' sum(dd.valor) as Total '
      ' From  DepositosDoc dd '
      ' left join Depositos d on dd.Deposito = d.Deposito'
      
        ' left join FormasPagamento fp on dd.FormaPagamento = fp.FormaPag' +
        'amento'
      ' left join StatusDoc s on dd.Status = s.Status'
      ' left  join Favorecidos f on d.Favorecido = f.Favorecido '
      ' Where fp.Especie in(1,7)'
      
        ' and  (s.status in (1,3,5) or (s.status in (50,55,60,61,62) and ' +
        'dd.vencimento >= :dtHoje))'
      ' and d.favorecido = :Favorecido '
      ' group by 1,2,3 order by 1 desc,2 desc')
    Left = 188
    Top = 334
  end
  object P_Abertas: TDataSetProvider
    DataSet = Q_Abertas
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 185
    Top = 386
  end
  object C_AbertasDs: TDataSource
    DataSet = C_Abertas
    Left = 320
    Top = 339
  end
  object C_Abertas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Abertas'
    OnCalcFields = C_AbertasCalcFields
    Left = 318
    Top = 392
    object C_AbertasicAnoMes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icAnoMes'
      Size = 7
    end
    object C_AbertasANO: TSmallintField
      FieldName = 'ANO'
    end
    object C_AbertasMES: TSmallintField
      FieldName = 'MES'
    end
    object C_AbertasANOMES: TStringField
      FieldName = 'ANOMES'
      Size = 13
    end
    object C_AbertasQTDDOC: TIntegerField
      FieldName = 'QTDDOC'
      Required = True
    end
    object C_AbertasMENORVALOR: TBCDField
      FieldName = 'MENORVALOR'
      Precision = 18
      Size = 2
    end
    object C_AbertasMEDIA: TBCDField
      FieldName = 'MEDIA'
      Precision = 18
      Size = 2
    end
    object C_AbertasMAIORVALOR: TBCDField
      FieldName = 'MAIORVALOR'
      Precision = 18
      Size = 2
    end
    object C_AbertasTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object Q_Vendas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select extract(Year from s.data) as Ano, extract(month from s.da' +
        'ta) as Mes, '
      
        'count(s.saida) as QtdDoc, Min(s.Total) as MenorValor, avg(s.tota' +
        'l) as Media, '
      'Max(s.total) as MaiorValor, sum(s.total) as Total '
      'From  Saidas s '
      'Where s.tipopadrao = 1 and s.situacao = '#39'N'#39
      'and (s.data >= :DataI and s.data <= :DataF) '
      'and s.favorecido = :Favorecido '
      'group by 1,2 order by 1,2 ')
    Left = 516
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Favorecido'
        ParamType = ptUnknown
      end>
  end
  object P_Vendas: TDataSetProvider
    DataSet = Q_Vendas
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 517
    Top = 214
  end
  object C_VendasDs: TDataSource
    DataSet = C_Vendas
    Left = 516
    Top = 325
  end
  object C_Vendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendas'
    OnCalcFields = C_VendasCalcFields
    Left = 518
    Top = 268
    object C_VendasANO: TSmallintField
      FieldName = 'ANO'
    end
    object C_VendasMES: TSmallintField
      FieldName = 'MES'
    end
    object C_VendasicAnoMes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icAnoMes'
      Size = 7
    end
    object C_VendasQTDDOC: TIntegerField
      FieldName = 'QTDDOC'
      Required = True
    end
    object C_VendasMENORVALOR: TFloatField
      FieldName = 'MENORVALOR'
    end
    object C_VendasMEDIA: TFloatField
      FieldName = 'MEDIA'
    end
    object C_VendasMAIORVALOR: TFloatField
      FieldName = 'MAIORVALOR'
    end
    object C_VendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object ppRelatorio: TppReport
    AutoStop = False
    DataPipeline = ppDBLiquidados
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
    Left = 672
    Top = 158
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBLiquidados'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppLiquidadas: TppLabel
        UserName = 'Liquidadas'
        OnGetText = ppLiquidadasGetText
        AutoSize = False
        Caption = 'Liquidadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 0
        mmTop = 26194
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 32544
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Qtd Doc'#39's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 35454
        mmTop = 32544
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Menor Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 32544
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 94192
        mmTop = 32544
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Maior Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 123561
        mmTop = 32544
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 160338
        mmTop = 32544
        mmWidth = 7938
        BandType = 0
      end
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        Pen.Style = psClear
        mmHeight = 25400
        mmLeft = 794
        mmTop = 0
        mmWidth = 195263
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Style = bsClear
          Pen.Style = psClear
          mmHeight = 13229
          mmLeft = 25136
          mmTop = 30957
          mmWidth = 13229
          BandType = 0
        end
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'icANOMES'
        DataPipeline = ppDBLiquidados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4064
        mmLeft = 2757
        mmTop = 0
        mmWidth = 18034
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'QTDDOC'
        DataPipeline = ppDBLiquidados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4064
        mmLeft = 34862
        mmTop = 0
        mmWidth = 15409
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'MENORVALOR'
        DataPipeline = ppDBLiquidados
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4064
        mmLeft = 58113
        mmTop = 0
        mmWidth = 25231
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'MEDIA'
        DataPipeline = ppDBLiquidados
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4064
        mmLeft = 97218
        mmTop = 0
        mmWidth = 11261
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        DataField = 'MAIORVALOR'
        DataPipeline = ppDBLiquidados
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4064
        mmLeft = 119168
        mmTop = 0
        mmWidth = 23707
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        DataField = 'TOTAL'
        DataPipeline = ppDBLiquidados
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4064
        mmLeft = 157819
        mmTop = 0
        mmWidth = 11515
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Liquidadas2'
        OnGetText = ppLabel17GetText
        AutoSize = False
        Caption = 'Devolvidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 0
        mmTop = 794
        mmWidth = 196850
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppDBAbertas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5027
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBAbertas
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
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBAbertas'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 11113
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              UserName = 'Liquidadas1'
              OnGetText = ppLabel7GetText
              AutoSize = False
              Caption = 'Abertas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5757
              mmLeft = 794
              mmTop = 265
              mmWidth = 196850
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Periodo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 7938
              mmTop = 6879
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Qtd Doc'#39's'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 37306
              mmTop = 6879
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Menor Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 66675
              mmTop = 6879
              mmWidth = 19315
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Caption = 'M'#233'dia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 101336
              mmTop = 6879
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'Maior Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 125413
              mmTop = 6879
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 162190
              mmTop = 6879
              mmWidth = 7938
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              AutoSize = True
              DataField = 'TOTAL'
              DataPipeline = ppDBAbertas
              DisplayFormat = 'R$ ###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 3969
              mmLeft = 158486
              mmTop = 0
              mmWidth = 11642
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              AutoSize = True
              DataField = 'MAIORVALOR'
              DataPipeline = ppDBAbertas
              DisplayFormat = 'R$ ###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 4064
              mmLeft = 121814
              mmTop = 0
              mmWidth = 23707
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              AutoSize = True
              DataField = 'MEDIA'
              DataPipeline = ppDBAbertas
              DisplayFormat = 'R$ ###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 4064
              mmLeft = 99864
              mmTop = 0
              mmWidth = 11261
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              AutoSize = True
              DataField = 'MENORVALOR'
              DataPipeline = ppDBAbertas
              DisplayFormat = 'R$ ###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 4064
              mmLeft = 60759
              mmTop = 0
              mmWidth = 25231
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              AutoSize = True
              DataField = 'QTDDOC'
              DataPipeline = ppDBAbertas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 4064
              mmLeft = 37508
              mmTop = 0
              mmWidth = 15409
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              AutoSize = True
              DataField = 'icANOMES'
              DataPipeline = ppDBAbertas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 4064
              mmLeft = 6672
              mmTop = 0
              mmWidth = 15494
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 10583
            mmPrintPosition = 0
            object ppSubReport2: TppSubReport
              UserName = 'SubReport2'
              ExpandAll = False
              NewPrintJob = False
              TraverseAllData = False
              DataPipelineName = 'ppDBVendas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 5292
              mmWidth = 197300
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport2: TppChildReport
                AutoStop = False
                DataPipeline = ppDBVendas
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
                Version = '6.02'
                mmColumnWidth = 0
                DataPipelineName = 'ppDBVendas'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 11642
                  mmPrintPosition = 0
                  object ppLabel14: TppLabel
                    UserName = 'Label14'
                    OnGetText = ppLabel14GetText
                    AutoSize = False
                    Caption = 'Vendas'
                    Color = clPurple
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clPurple
                    Font.Name = 'Arial'
                    Font.Size = 14
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 5821
                    mmLeft = 794
                    mmTop = 0
                    mmWidth = 196850
                    BandType = 1
                  end
                  object ppLabel15: TppLabel
                    UserName = 'Label15'
                    Caption = 'Periodo'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 3969
                    mmLeft = 10848
                    mmTop = 7144
                    mmWidth = 12171
                    BandType = 1
                  end
                  object ppLabel16: TppLabel
                    UserName = 'Label16'
                    Caption = 'Quantidade'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 3969
                    mmLeft = 38629
                    mmTop = 7144
                    mmWidth = 18256
                    BandType = 1
                  end
                  object ppLabel18: TppLabel
                    UserName = 'Label18'
                    Caption = 'M'#233'dia'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 3969
                    mmLeft = 104246
                    mmTop = 7144
                    mmWidth = 9525
                    BandType = 1
                  end
                  object ppLabel20: TppLabel
                    UserName = 'Label20'
                    Caption = 'Total'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    TextAlignment = taCentered
                    Transparent = True
                    mmHeight = 3969
                    mmLeft = 165100
                    mmTop = 7144
                    mmWidth = 7938
                    BandType = 1
                  end
                end
                object ppDetailBand3: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 4233
                  mmPrintPosition = 0
                  object ppDBText13: TppDBText
                    UserName = 'DBText13'
                    AutoSize = True
                    DataField = 'TOTAL'
                    DataPipeline = ppDBVendas
                    DisplayFormat = 'R$ ###,###,##0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBVendas'
                    mmHeight = 4064
                    mmLeft = 162581
                    mmTop = 264
                    mmWidth = 11515
                    BandType = 4
                  end
                  object ppDBText15: TppDBText
                    UserName = 'DBText15'
                    AutoSize = True
                    DataField = 'MEDIA'
                    DataPipeline = ppDBVendas
                    DisplayFormat = 'R$ ###,###,##0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBVendas'
                    mmHeight = 4064
                    mmLeft = 101981
                    mmTop = 264
                    mmWidth = 11261
                    BandType = 4
                  end
                  object ppDBText17: TppDBText
                    UserName = 'DBText17'
                    AutoSize = True
                    DataField = 'QTDDOC'
                    DataPipeline = ppDBVendas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBVendas'
                    mmHeight = 4064
                    mmLeft = 39624
                    mmTop = 264
                    mmWidth = 15409
                    BandType = 4
                  end
                  object ppDBText18: TppDBText
                    UserName = 'DBText18'
                    AutoSize = True
                    DataField = 'icANOMES'
                    DataPipeline = ppDBVendas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = []
                    ParentDataPipeline = False
                    TextAlignment = taCentered
                    Transparent = True
                    DataPipelineName = 'ppDBVendas'
                    mmHeight = 4064
                    mmLeft = 7520
                    mmTop = 264
                    mmWidth = 18034
                    BandType = 4
                  end
                end
                object ppSummaryBand3: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5292
                  mmPrintPosition = 0
                  object ppDBCalc1: TppDBCalc
                    UserName = 'DBCalc1'
                    AutoSize = True
                    DataField = 'TOTAL'
                    DataPipeline = ppDBVendas
                    DisplayFormat = 'R$ ###,###,##0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppDBVendas'
                    mmHeight = 4233
                    mmLeft = 152527
                    mmTop = 265
                    mmWidth = 22098
                    BandType = 7
                  end
                  object ppLabel19: TppLabel
                    UserName = 'Label19'
                    Caption = 'Total Acumulado ==>>'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Arial'
                    Font.Size = 10
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 95250
                    mmTop = 265
                    mmWidth = 38365
                    BandType = 7
                  end
                end
              end
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = 'Total Acumulado ==>>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 93134
              mmTop = 0
              mmWidth = 38365
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              AutoSize = True
              DataField = 'TOTAL'
              DataPipeline = ppDBAbertas
              DisplayFormat = 'R$ ###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBAbertas'
              mmHeight = 4233
              mmLeft = 147902
              mmTop = 0
              mmWidth = 22225
              BandType = 7
            end
          end
        end
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Total Acumulado ==>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 265
        mmWidth = 38365
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        AutoSize = True
        DataField = 'TOTAL'
        DataPipeline = ppDBLiquidados
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBLiquidados'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 265
        mmWidth = 22098
        BandType = 7
      end
    end
  end
  object ppDBLiquidados: TppDBPipeline
    DataSource = C_LiquidadosDs
    UserName = 'DBLiquidados'
    Left = 582
    Top = 156
    object ppDBLiquidadosppField1: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField2: TppField
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField3: TppField
      FieldAlias = 'QTDDOC'
      FieldName = 'QTDDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField4: TppField
      FieldAlias = 'MENORVALOR'
      FieldName = 'MENORVALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField5: TppField
      FieldAlias = 'MEDIA'
      FieldName = 'MEDIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField6: TppField
      FieldAlias = 'MAIORVALOR'
      FieldName = 'MAIORVALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField7: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBLiquidadosppField8: TppField
      FieldAlias = 'icANOMES'
      FieldName = 'icANOMES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object ppDBAbertas: TppDBPipeline
    DataSource = C_AbertasDs
    UserName = 'DBAbertas'
    Left = 586
    Top = 206
    object ppDBAbertasppField1: TppField
      FieldAlias = 'icAnoMes'
      FieldName = 'icAnoMes'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBAbertasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBAbertasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBAbertasppField4: TppField
      FieldAlias = 'ANOMES'
      FieldName = 'ANOMES'
      FieldLength = 13
      DisplayWidth = 13
      Position = 3
    end
    object ppDBAbertasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDDOC'
      FieldName = 'QTDDOC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBAbertasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'MENORVALOR'
      FieldName = 'MENORVALOR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppDBAbertasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEDIA'
      FieldName = 'MEDIA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppDBAbertasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MAIORVALOR'
      FieldName = 'MAIORVALOR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppDBAbertasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
  end
  object ppDBVendas: TppDBPipeline
    DataSource = C_VendasDs
    UserName = 'DBVendas'
    Left = 584
    Top = 262
    object ppDBVendasppField1: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField2: TppField
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField3: TppField
      FieldAlias = 'QTDDOC'
      FieldName = 'QTDDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField4: TppField
      FieldAlias = 'MENORVALOR'
      FieldName = 'MENORVALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField5: TppField
      FieldAlias = 'MEDIA'
      FieldName = 'MEDIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField6: TppField
      FieldAlias = 'MAIORVALOR'
      FieldName = 'MAIORVALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField7: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBVendasppField8: TppField
      FieldAlias = 'icAnoMes'
      FieldName = 'icAnoMes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
end

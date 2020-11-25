inherited DlgChequesLight: TDlgChequesLight
  Left = 56
  Top = 138
  Width = 735
  Height = 392
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 609
    Height = 315
    Color = 16116702
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 607
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      Color = 16116702
      TabOrder = 0
      object TS_Label1: TTS_Label
        Left = 3
        Top = 27
        Width = 130
        Caption = 'Status do Cheque:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
        Left = 27
        Top = 2
        Width = 105
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        StyleController = DMProjeto.esClientes
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 134
        Top = 3
        Width = 259
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'#C'#243'digo => Pesquis' +
          'a pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN => Pesquisa pelo SS' +
          'N. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquisa pelo EIN. Ex: EI' +
          'N:6719034663'
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
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
      object cmbStatus: TTS_ImageEdit
        Left = 134
        Top = 24
        Width = 184
        TabOrder = 2
        StyleController = DMProjeto.esClientes
        OnChange = cmbStatusChange
        Descriptions.Strings = (
          'Aguardando Dep'#243'sito'
          'Depositado'
          'Devolvido'
          'Devolvido, mas Acertado'
          'Factory'
          'Pago a Terceiros'
          'Resgatado pelo Cliente'
          'Cancelado'
          'Qualquer Status')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8')
        Images = Imagens
        Values.Strings = (
          '3'
          '50'
          '4'
          '71'
          '55'
          '60'
          '61'
          '70'
          '0')
        Height = 19
      end
    end
    object dbgCheques: TTS_QDBGrid
      Left = 1
      Top = 47
      Width = 607
      Height = 267
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'IDDOC'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 1
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_ChequesDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
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
      TS_ShowSelectionColumn = True
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgChequesDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgChequesNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        HeaderAlignment = taCenter
        Width = 163
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgChequesNUMCHEQUE: TdxDBGridMaskColumn
        Caption = '# Cheque'
        HeaderAlignment = taCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMCHEQUE'
      end
      object dbgChequesVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgChequesVALOR: TdxDBGridMaskColumn
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object dbgChequesFORMAPAGAMENTO: TdxDBGridMaskColumn
        Caption = 'Forma Pagamento'
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMAPAGAMENTO'
      end
      object dbgChequesSTATUS: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Status'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
        Descriptions.Strings = (
          'Aguardando Dep'#243'sito'
          'Depositado'
          'Devolvido'
          'Devolvido, mas acertado'
          'Factory'
          'Pag. a Terceiros'
          'Resgatado pelo Cliente'
          'Cancelado')
        Images = Imagens
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
        ShowDescription = True
        Values.Strings = (
          '3'
          '50'
          '4'
          '71'
          '55'
          '60'
          '61'
          '70')
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 609
    Height = 315
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 281
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = 'Imprimir'
      Glyph.Data = {
        CA030000424DCA030000000000008A0100002800000018000000180000000100
        08000000000040020000210B0000210B00005500000055000000111111001111
        16001616160016161C001C1C1C00232323002A2A2A0031313100383838004040
        4000484048004848480050505000606060006A6A6A00736A6A006AB66A007373
        7300847B8400848484008F8484008F848F008F8F8F00988F8F00F4A18F00FFAB
        8F00988F980098989800A198980098A19800E0A19800FFB69800A198A100A1A1
        A100ABA1A100D4A1A100E0ABA100F4ABA100FFB6A100FFC0A100ABA1AB00ABAB
        AB00B6ABAB00E0ABAB00E0B6AB00FFC0AB00FFCAAB00B6ABB600B6B6B600C0B6
        B600E0B6B600E0C0B600FFCAB600B6B6C000C0B6C000C0C0C000CAC0C000EAC0
        C000EACAC000FFD4C000CAC0CA00CACACA00D4CACA00F4D4CA00FFD4CA00FFE0
        CA00CAF4CA00CACAD400CAD4D400D4D4D400E0D4D400EAD4D400D4E0D400E0E0
        D400FFE0D400FFEAD400E0E0E000EAE0E000FFEAE000EAEAEA00FFF4EA00F4F4
        F400FFF4F400FF00FF00FFFFFF00535353535353535353535353535353535353
        53535353535353535353535353531B361B1353531B3D3E291B53535353535353
        535353531B305151291B090B0E1B31464C3D21535353535353531B224C54544F
        221C070004060B0E1B374C4517535353531B45545251524F2121120C07040204
        060B11165353531637515151514C301B13161B211C130D090502061453535316
        4F514F452917213D2116141314172121160E0C14535353164C3E2216223D454C
        4C3D30221B161413161B2116535353161C16293D453D3D4D51514F4C3D372921
        1716141353535316293D3D3D3D3D4C51302F37454C4C453D3730291653535316
        3D3D3D3D3D4551291D10211B1B29303D45453D1B5353535329453D3D4C4C2129
        4F424F4C25291C171B292921535353535321303D301B315151514F4C4C4C453D
        3717165353535353535353142945371B30454C4C4C4C4C453022535353535353
        5353531B5151452929303D3D3D3D301B225353535353535353535353474A4140
        3F3F3F47464530535353535353535353535353532C4A403B342D26261F395353
        5353535353535353535353532C4A403B342D261F185353535353535353535353
        53535353334A403B342D261F18535353535353535353535353535353334A403B
        342D261F25535353535353535353535353535353334A403B342D262525535353
        5353535353535353535353324E4A403B342D2725535353535353535353535353
        53535333504A413B3434252553535353535353535353535353532333322C2C24
        241E255353535353535353535353}
      NumGlyphs = 1
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Alterar Status...'
      Glyph.Data = {
        8A050000424D8A050000000000004A0300002800000018000000180000000100
        08000000000040020000D10E0000D10E0000C5000000C50000008F230000B640
        0000C0480000AB380300B6400300C0480300C05003006A230600A1380600AB40
        0600CA500600CA580600501C0B00A1380B00B6480B0048231100582A1100602A
        110073311100733811007B38110084381100844011008F401100A14011009848
        1100B6481100CA60110038231600A1501600AB501600B6501600B6581600C058
        1600CA601600D46A1600402A1C0048311C0060381C0084481C008F481C009848
        1C00A1481C00AB481C00A1501C00B6581C00312A2300382A2300403123004831
        23008450230098502300AB502300B6582300D473230038312A0040312A008458
        2A00AB582A0098602A00B6602A00383831006A503100B6603100403838004840
        3800B6603800C06A3800B6733800CA843800EA8F3800B66A4000AB734000C07B
        4000D47B4000C0844000484848005850480060504800C07B4800FFAB48005050
        500058505000585850006A585000C0735000CA7B5000AB845000C0845000C08F
        5000F4A15000EAAB500073735800847B580098845800A1845800AB8F5800CA8F
        5800E08F5800E0985800F4AB5800232A600050506000606060008F7B6000987B
        600098846000A1846000C0846000E0986000EAA1600040406A006A6A6A00847B
        6A00CA8F6A00CA986A00E0A16A00EAA16A00FFC06A00D4987300FFC073004848
        7B007B7B7B00847B7B008F8F7B00D4AB7B00EAB67B00F4B67B00E0AB8400EAB6
        8400F4B68400988F8F00E0AB8F00EAB68F00FFCA8F00ABA19800EAC09800E0B6
        A100F4C0A100F4D4A100FFD4A1000B2AAB00B6C0AB00F4CAAB00F4D4AB00FFE0
        AB003148B6004858B60084B6B6008FB6B600B6B6B600EACAB600D4D4B600EAD4
        B600FFE0B6000084C0003198C0009898C00048ABC00060ABC00073B6C00084C0
        C000B6CAC000F4E0C000FFE0C000FFEAC00038A1CA0050ABCA0073B6CA007BC0
        CA0084C0CA0098C0CA00C0D4CA00EAD4CA00EAE0CA00FFEACA007BC0D4008FCA
        D400A1CAD400C0E0D400CAE0D400F4E0D400EAEAD400F4EAD400FFEAD400B6D4
        E000C0E0E000F4F4E000FFF4E000F4EAEA00EAF4EA00F4F4EA00FFF4EA00F4F4
        F400FFFFF400FF00FF00FFFFFF00C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        4E3837405170C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C31300070C1C2E3D4C
        6770C3C3C3C3C3C3C3C3C3C3C3C3C3C3140856563415110F2F37415370C3C3C3
        C3C3C3C3C3C3C3C3160D85A58C81624329121024374CC3C3C3C3C3C3C3C3C3C3
        170D85A49A91918C82754A341230C3C3C3C3C3C3C3C3C3C319188AA49A90908B
        8C86765A2A25C3C3C3C3C3C3C3C3C3C319188FAFA498958E8C78505A2C31C3C3
        C3C3C3C3C3C3C3C31D2BA3B8AEA09C948C645B6E3331C3C3C3C3C3C3C3C3C3C3
        1D34B5B6A19C9B9F885F5D582C264D7BC3C3C3C3C3C3C3C31E3ABBB2A6AAAB9B
        8E7C5C616344393E547AC3C3C3C3C3C3203ABFB9B1B6AC9C94997D747E7F6E49
        3B3E5270C3C3C3C32042C2BFBBB8AEA89CA39A743F48747E6D696F6566C3C3C3
        2247C4C0C0BCB7B29EA2AF8128266B807383928D79C3C3C32155C4C2C0C0BCB4
        A7A0B781281CC3C3809693929DC3C3C3216CC4C4C2C0C0BBB09EAC85281CC3C3
        C3C39D9DC3C3C3C3216CC4C4C4C2C2C0BAA9B380271CC3C3C3C3C3C3C3C3C3C3
        213A7789ADBDC1C2C1BEBB80271CC3C3C3C3C3C3C3C3C3C31B03091A1F3C4F72
        8497B580271CC3C3C3C3C3C3C3C3C3C3460A0501010404090E1A352D141CC3C3
        C3C3C3C3C3C3C3C36A6059453636230B060201013030C3C3C3C3C3C3C3C3C3C3
        C3C3C36A6071685E574B453632C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
        C3C3C3C3C3C3C3C3C3C3C3C3C3C3}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 727
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 302
      Caption = 'Controle de Cheques Recebidos'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbEstadoForm: TTS_Label
      Width = 144
      Caption = 'Cheque recebidos de clientes.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 691
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    object Ocorrncias1: TMenuItem [0]
      Caption = 'Ocorr'#234'ncias do Cheque...'
      OnClick = Ocorrncias1Click
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Controle de Cheques Recebidos'
    FirstEditField = edFavorecido
  end
  object Q_Cheques: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select dd.iddoc, f.nome, dd.numcheque, dd.vencimento, d.data, dd' +
        '.status, fp.descricao as formapagamento, dd.valor'
      'from depositos d'
      'inner join depositosdoc dd on dd.deposito = d.deposito'
      
        'inner join formaspagamento fp on fp.formapagamento = dd.formapag' +
        'amento'
      'left join favorecidos f on f.favorecido = d.favorecido'
      'where dd.formapagamento > 1 and  dd.formapagamento < 4'
      'order by dd.iddoc')
    Left = 360
    Top = 168
  end
  object C_Cheques: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Cheques'
    Left = 360
    Top = 120
    object C_ChequesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Origin = 'DEPOSITOSDOC.IDDOC'
      Required = True
    end
    object C_ChequesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ChequesNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
      Origin = 'DEPOSITOSDOC.NUMCHEQUE'
    end
    object C_ChequesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'DEPOSITOSDOC.VENCIMENTO'
    end
    object C_ChequesDATA: TDateField
      FieldName = 'DATA'
      Origin = 'DEPOSITOS.DATA'
    end
    object C_ChequesSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'DEPOSITOSDOC.STATUS'
    end
    object C_ChequesFORMAPAGAMENTO: TStringField
      FieldName = 'FORMAPAGAMENTO'
      Origin = 'FORMASPAGAMENTO.FORMAPAGAMENTO'
      Required = True
      Size = 50
    end
    object C_ChequesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'DEPOSITOSDOC.VALOR'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_Cheques_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
  end
  object C_ChequesDS: TDataSource
    DataSet = C_Cheques
    Left = 360
    Top = 216
  end
  object P_Cheques: TDataSetProvider
    DataSet = Q_Cheques
    Constraints = True
    Options = [poAllowCommandText]
    Left = 360
    Top = 267
  end
  object Imagens: TImageList
    Left = 128
    Top = 160
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000034462D250D250D250D25
      0D250D250D250D250D250D250D250E2100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000073806AA072A072A072C076
      806A806AA076A072A072A072A072C241EE18741D741DB604B608D808D608D008
      EE140000000000000000000000000000000000000000A0010106230E64126412
      8001E3096205E8144B2100000000000000000000487540440040004000400040
      00400040004000404040487500000000000000008977C076207F007B007B0077
      A018A014C172007B007B207F007B624EB335B604B6041C113E195F213D191C11
      1D15CE0869216411630D82096209430D682100000000220A630EA61AC71E0412
      AE32A71EA5166205A60800000000000000000000405820584058405840584060
      4060406040602060004C4040000000000000000000000073407F207F207F2077
      A01C81180073207F207FA07F007B0A210000D808D8087F219F255A159D369A19
      7E211C11CC11AD2E6922C926C71E830EE10500000000020AA61A0A2BCA2AFE77
      FE77C9260927230E4611000000000000000000002060606461648270A270A270
      A170807060704070206000400000000000000000000089770077407F207F407F
      807B807B407F207F407F407FC0724E2900000000B9259F25DF29DA213F43DA21
      9D211C112C1E5653995B2B2F09278516C105000000000000A61A0B2F271AFF7F
      FF7FCA2A0B2F030E00000000000000000000000040646164A270C370C270C270
      A170A07080706070406000400000000000000000000000000073A07F407F407F
      A05AA066807F407FC17F20770A21000000000000000031156E04422C4230F118
      160D8B224D37DF73DF736C26A926C411000000000000000000006119A44D8255
      C54DA926041200000000000000000000000000006064A270E470E370C370C270
      A170817080706070606000400000000000000000000000008977407F807F807F
      402D4431A07FA07FA07FC0724E29000000000000000021040000603C603C202C
      E920261AA9266F52C651E945A3110000000000000000000000008159C271C271
      C271421D000000000000000000000000000000008270C370E470E370C370C270
      A1708070607060706060004000000000000000000000000000000073A07FA07B
      402D4431A07BC17F807F0A21000000000000000000000004C14401550155E154
      603800000000E379E379E379E27500000000000000000000824D047E047E047E
      047EC271E41C0000000000000000000000000000C3700571E570E370C370A270
      81686068606860686060004000000000000000000000000000008977807B8077
      A01803042073A07FC0724E2900000000000000002104400C0155426142612261
      C04C00000762247E247E047E047E45310000000000000000A259257E257E257E
      257E047A03290000000000000000000000000000E47026710571E470A370A268
      816860646068606860600040000000000000000000000000000000000073406B
      00000304825640770A2100000000000000000000630C42080245E379E379C279
      426100002572867E877E867E667EC2610000000000002A5A257A867E877EA77E
      877E667E643D0000000000000000000000000000E57047752671E568C370A268
      8268816461686068606000400000000000000000000000000000000089778077
      E01CA0148173C0724E2900000000000000000000630CC618411442618271E379
      425900002672A77EA87EA77E877EE369000000000000E7552576A87EA87E877A
      8676877A643900000000000000000000000000002671AA7568752671E570E370
      C368A268A2688264606020400000000000000000000000000000000000008977
      C07FE17FC07F0A21000000000000000000000000000008214A293146AD35630C
      C6180000075AE4590662E361C2614041000000000000A9416245E6596A66697A
      06724245000000000000000000000000000000006875EE758A75677527712671
      06710571E470C270606061440000000000000000000000000000000000008977
      C07BE07FC0724E290000000000000000000000000000A5146B2DCE39AD358410
      00000000000028668A6A33778B66A545000000000000000062456A66AE72AB72
      686A433100000000000000000000000000000000687568750671E470C370C370
      A270827082648164615848750000000000000000000000000000000000000000
      0073C07B8C520000000000000000000000000000000000000000000000000000
      000000000000D06AAE668D668E620000000000000000000000002A56E651C64D
      A941000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      4977497700000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFC001FFFFFFFFFFFF
      800000FFC00F800780000000C00F8007C0010000C00F8007C0018000E01F8007
      E003C001F03F8007E003C003F07F8007F00780C3E03F8007F0078081E03F8007
      F80F8081C03F8007F80F8081C03F8007FC1FC081C07F8007FC1FC1C1E07F8007
      FE3FFFC3F0FFFFFFFE7FFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFF87FBFFFFC63
      F81FF07F9FFFC001F00FF03FCFFFC001E007E03FF01FC001C003E01FF01FC003
      C003E01FF01FC003C003F30FF01FC003C003FF0FF00FC007C003FF87F003C00F
      C003FF87F001FC1FE007FFC3FF01F83FF00FFFC7FF81F87FF81FFFEFFF83F83F
      FFFFFFFFFFC7F83FFFFFFFFFFFFFFC3F00000000000000000000000000000000
      000000000000}
  end
end

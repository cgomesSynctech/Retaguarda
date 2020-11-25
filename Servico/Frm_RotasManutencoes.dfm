inherited FrmRotasManutencoes: TFrmRotasManutencoes
  Left = 201
  Top = 166
  Width = 626
  Height = 412
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 503
    Height = 342
    inherited btComando1: TTS_SpeedButton
      Caption = 'Imprimir'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Caption = 'Folha de Rota'
      OnClick = btComando2Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 308
    end
  end
  inherited pnDados: TTS_Panel
    Width = 503
    Height = 342
    inherited Grid: TTS_QDBGrid
      Width = 501
      Height = 340
      KeyField = 'ROTAMANUTENCAO'
      DataSource = DMRotasManutencoes.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'lkRota'
      object GridlkRota: TdxDBGridLookupColumn
        Caption = 'Rota'
        HeaderAlignment = taCenter
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkRota'
      end
      object GridMES: TdxDBGridMaskColumn
        Caption = 'M'#234's'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MES'
      end
      object GridANO: TdxDBGridMaskColumn
        Caption = 'Ano'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ANO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = 'Funcion'#225'rio'
        HeaderAlignment = taCenter
        Width = 217
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 501
      Height = 340
    end
    inherited sbDados: TTS_Panel
      Width = 501
      Height = 340
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 15
        Top = 15
        Width = 71
        Height = 17
        Cursor = crHandPoint
        Caption = 'Rota:'
        FocusControl = df_Rota
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmRotas'
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 15
        Top = 40
        Width = 71
        Height = 17
        Caption = 'Per'#237'odo:'
        FocusControl = edPeriodo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 191
        Top = 40
        Width = 30
        Height = 17
        Alignment = taCenter
        Caption = 'Ano:'
        FocusControl = edAno
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 15
        Top = 65
        Width = 71
        Height = 17
        Caption = 'Funcion'#225'rio:'
        FocusControl = edFuncionario
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object btUp: TTS_SpeedButton
        Left = 453
        Top = 181
        Width = 32
        Height = 27
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003C3333339333
          337437FFF3337F3333F73CCC33339333344437773F337F33377733CCC3339337
          4447337F73FF7F3F337F33CCCCC3934444433373F7737F773373333CCCCC9444
          44733337F337773337F3333CCCCC9444443333373F337F3337333333CCCC9444
          473333337F337F337F333333CCCC94444333333373F37F33733333333CCC9444
          7333333337F37F37F33333333CCC944433333333373F7F373333333333CC9447
          33333333337F7F7F3333333333CC94433333333333737F7333333333333C9473
          33333333333737F333333333333C943333333333333737333333333333339733
          3333333333337F33333333333333933333333333333373333333}
        NumGlyphs = 2
        OnClick = btUpClick
        RepeatedClick = False
        Border = False
      end
      object btDown: TTS_SpeedButton
        Left = 453
        Top = 208
        Width = 32
        Height = 27
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333393333
          333333333337F3333333333333397333333333333337FF333333333333C94333
          3333333333737F333333333333C9473333333333337373F3333333333CC94433
          3333333337F7F7F3333333333CC94473333333333737F73F33333333CCC94443
          333333337F37F37F33333333CCC94447333333337337F373F333333CCCC94444
          33333337F337F337F333333CCCC94444733333373337F3373F3333CCCCC94444
          4333337F3337FF337F3333CCCCC94444473333733F7773FF73F33CCCCC393444
          443337F37737F773F7F33CCC33393374447337F73337F33737FFCCC333393333
          444377733337F333777FC3333339333337437333333733333373}
        NumGlyphs = 2
        OnClick = btDownClick
        RepeatedClick = False
        Border = False
      end
      object edPeriodo: TTS_DBImageEdit
        Left = 87
        Top = 39
        Width = 97
        TabOrder = 0
        DataField = 'MES'
        DataSource = DMRotasManutencoes.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Descriptions.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        Height = 19
      end
      object edFuncionario: TTS_DBEditFavorecido
        Left = 87
        Top = 64
        Width = 266
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        DataField = 'NOME'
        DataSource = DMRotasManutencoes.C_TabelaDS
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
        SelecionarVarios = False
        TipoFavorecido = 3
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        ChaveEstrangeira = 'FUNCIONARIO'
        Height = 19
        ExistButtons = True
      end
      object df_Rota: TTS_DBLookupComboBox
        Left = 87
        Top = 14
        Width = 183
        TabOrder = 2
        DataField = 'ROTA'
        DataSource = DMRotasManutencoes.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'ROTA'
        ListSource = DMRotasManutencoes.C_RotasDS
        LookupKeyValue = Null
        Height = 19
      end
      object GridCliente: TTS_QDBGrid
        Left = 8
        Top = 104
        Width = 435
        Height = 221
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ROTAMANUTENCAODET'
        SummaryGroups = <>
        SummarySeparator = '|'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMRotasManutencoes.C_RotasManutencoesDetDS
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
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        OnColumnSorting = GridClienteColumnSorting
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
        TS_SelectedColumn = 'lkFavorecido'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object GridClientelkFavorecido: TdxDBGridColumn
          Caption = 'Cliente'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 105
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkFavorecido'
        end
        object GridClienteicQtdeEquip: TdxDBGridColumn
          Caption = 'Qtde'
          HeaderAlignment = taCenter
          Width = 39
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icQtdeEquip'
        end
        object GridClienteORDEM: TdxDBGridMaskColumn
          Caption = 'Ordem'
          DisableEditor = True
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORDEM'
        end
        object GridClienteDIA: TdxDBGridImageColumn
          Alignment = taRightJustify
          Caption = 'Dia'
          HeaderAlignment = taCenter
          MinWidth = 16
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIA'
          Descriptions.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30')
          ShowDescription = True
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31')
        end
        object GridClienteSTATUS: TdxDBGridCheckColumn
          Caption = 'Realizado'
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATUS'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GridClienteURGENTE: TdxDBGridCheckColumn
          Caption = 'Urgente'
          HeaderAlignment = taCenter
          MinWidth = 20
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'URGENTE'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GridClienteOBS: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 143
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OBS'
        end
      end
      object edAno: TTS_DBSpinEdit
        Left = 219
        Top = 39
        Width = 71
        TabOrder = 4
        DataField = 'ANO'
        DataSource = DMRotasManutencoes.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        MaxValue = 9999999
        Height = 19
        StoredValues = 16
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 501
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 618
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 116
      Caption = 'Manuten'#231#227'o'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 579
    end
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    CamposObrigatorios.Strings = (
      'df_Rota'
      'edPeriodo'
      'edAno'
      'edFuncionario')
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Manuten'#231#227'o'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
  end
  inherited Beep: TBTBeeper
    Left = 334
    Top = 2
  end
  inherited FormStorage: TFormStorage
    Left = 266
    Top = 6
  end
end

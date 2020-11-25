inherited DlgDigitacaoLeitor: TDlgDigitacaoLeitor
  Left = 30
  Top = 158
  Width = 639
  Height = 350
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 529
    Width = 102
    Height = 280
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 246
      Width = 100
    end
    inherited btComando2: TTS_SpeedButton
      Width = 100
    end
    inherited btComando1: TTS_SpeedButton
      Width = 100
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 100
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 100
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 100
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 631
    Gradient.ColorStart = 9027548
    inherited btHelp: TTS_SpeedButton
      Left = 595
    end
    inherited lbCaption: TdxfLabel
      Width = 388
      AutoSize = True
      Caption = 'Digita'#231#227'o por Leitor de C'#243'digo de Barras'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 529
    Height = 280
    Color = 14019327
    object TS_Label1: TTS_Label
      Left = 4
      Top = 12
      Width = 54
      Caption = 'C'#243'digo:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dbgContagens: TTS_QDBGrid
      Left = 1
      Top = 45
      Width = 527
      Height = 234
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEM'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
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
      object dbgContagensITEM: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgContagensCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgContagensDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 247
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgContagensREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgContagensUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgContagensQTDE: TdxDBGridCalcColumn
        Caption = 'Qtde.'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDE'
      end
    end
    object dfCodigo: TTS_EditItem
      Left = 60
      Top = 10
      Width = 156
      Hint = 
        'Para abrir o cadastro, pressione a tecla F7.'#13'# -> No in'#237'cio do T' +
        'exto for'#231'a uma pesquisa pelo C'#243'digo. Ex: #123'#13'& -> No in'#237'cio do ' +
        'Texto for'#231'a uma pesquisa pela Refer'#234'ncia. Ex: &RF1234-567'
      Style.ButtonStyle = btsFlat
      TabOrder = 1
      OnKeyDown = dfCodigoKeyDown
      OnKeyPress = dfCodigoKeyPress
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
          Visible = False
          Width = 17
        end>
      PermitirQuantidade = False
      SelecionarVariosItens = False
      TipoDescricao = tdCodigo
      BloquearNoBalanco = 'N'
      TipoItem = '1'
      C_Localizar = DMProjeto.C_LocalizarItens
      ID = 0
      OnSelecionou = dfCodigoSelecionou
      Height = 19
      ExistButtons = True
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 116
    Top = 176
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Digita'#231#227'o por Leitor de C'#243'digo de Barras'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 201
    Top = 213
  end
  object C_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 401
    Top = 15
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select item, codigo, referencia, descricao, unidade, (estoque * ' +
        '0) as Qtde'
      'from itens where item is null')
    Left = 325
    Top = 186
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 325
    Top = 134
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Itens'
    Left = 324
    Top = 89
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ItensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
  end
end

inherited FrmAlerta: TFrmAlerta
  Left = 20
  Top = 123
  Width = 545
  Height = 358
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 422
    Height = 281
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 247
    end
  end
  inherited pnDados: TTS_Panel
    Width = 422
    Height = 281
    inherited Grid: TTS_QDBGrid
      Width = 420
      Height = 279
      KeyField = 'ALERTA'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'APLICAR'
      object GridALERTA: TdxDBGridImageColumn
        Alignment = taRightJustify
        MinWidth = 16
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALERTA'
        ImageIndexes.Strings = (
          '0')
      end
      object GridAPLICAR: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Aplicar'
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        ReadOnly = True
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'APLICAR'
        Descriptions.Strings = (
          'Cliente'
          'Fornecedor'
          'Itens'
          'Contas')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3')
        ShowDescription = True
        Values.Strings = (
          'C'
          'F'
          'I'
          'S')
      end
      object GridTIPO: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Tipo da alerta'
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        ReadOnly = True
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
        Descriptions.Strings = (
          'Que ultrapassam o limite de cr'#233'dito'
          'Com vendas no per'#237'odo'
          'Com vendas no ano'
          'Com saldo atual'
          'Volume em compras no per'#237'odo'
          'Saldo atual'
          'Saldo invoice'
          'Vendas no per'#237'odo'
          'Vendas no ano'
          'Quantidade vendida no per'#237'odo'
          'Quantidade vendida no ano'
          'Saldo no per'#237'odo'
          'Saldo no ano'
          'Volume em compras no ano'
          'Abaixo do m'#237'nimo'
          'Abaixo do ponto de pedido'
          'Que est'#227'o no estoque')
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
          '16')
        ShowDescription = True
        Values.Strings = (
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
          '16')
      end
      object GridCONDICAO: TdxDBGridMaskColumn
        Caption = 'Condi'#231#227'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONDICAO'
      end
      object GridVALOR: TdxDBGridMaskColumn
        Caption = 'Valor'
        DisableEditor = True
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 420
      Height = 279
    end
    inherited sbDados: TTS_Panel
      Width = 420
      Height = 279
      Color = 13359603
      object pnAvisarPara: TTS_Panel
        Left = 0
        Top = 104
        Width = 420
        Height = 175
        Align = alClient
        BevelOuter = bvNone
        Color = 13359603
        TabOrder = 2
        DesignSize = (
          420
          175)
        object lbDescGrid: TTS_Label
          Left = 5
          Top = 56
          Width = 59
          Height = 13
          Alignment = taLeftJustify
          Anchors = [akBottom]
          AutoSize = True
          Caption = 'Avisar para:'
          WordWrap = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label1: TTS_Label
          Left = 10
          Top = 5
          Width = 76
          Caption = 'Obs.:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object dbgFavorecidos: TTS_QDBGrid
          Left = 0
          Top = 73
          Width = 420
          Height = 102
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ALERTACLIENTE'
          SummaryGroups = <>
          SummarySeparator = '|'
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = ppmGridAlertas
          TabOrder = 1
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = DMAlerta.C_ClienteDS
          Filter.Criteria = {00000000}
          HeaderColor = 15461355
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          HideSelection = True
          OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnChangeNode = dbgFavorecidosChangeNode
          TS_DescriptionCanChange = False
          TS_GridMenuOptions = [gmDados]
          TS_AppendOnEnter = False
          RowFooterNodeFont.Charset = DEFAULT_CHARSET
          RowFooterNodeFont.Color = clWindowText
          RowFooterNodeFont.Height = -11
          RowFooterNodeFont.Name = 'Tahoma'
          RowFooterNodeFont.Style = [fsBold]
          TS_AccountFooterStyle = False
          TS_TipoLocalizar = tlFavorecidos
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
          TS_SelectionFont.Height = -11
          TS_SelectionFont.Name = 'Tahoma'
          TS_SelectionFont.Style = []
          TS_SelectedColumn = 'lkTipoFav'
          TS_ID = 0
          TS_ChaveEstrangeira = 'CLIENTE'
          TS_TipoItem = '1'
          TS_C_Localizar = DMProjeto.C_LocalizarFav
          TS_ItemColumns = 'Nome'
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Qtd. Geral:'
          TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
          object dbgFavorecidosTIPOFAVORECIDO: TdxDBGridMaskColumn
            Caption = 'Tipo'
            HeaderAlignment = taCenter
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'lkTipoFav'
          end
          object dbgFavorecidosTipoFav: TdxDBGridLookupColumn
            Caption = 'Tipo'
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            OnChange = dbgFavorecidosTipoFavChange
            FieldName = 'lkTipoFav'
          end
          object dbgFavorecidosNOME: TdxDBGridButtonColumn
            Caption = 'Nome'
            HeaderAlignment = taCenter
            Width = 318
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
            Buttons = <
              item
                Default = True
              end
              item
                Default = False
                Glyph.Data = {
                  DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                  0400000000006800000000000000000000001000000010000000000000000000
                  BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                  700077777777777770007777700077777000777770C077777000777770C07777
                  7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
                  7000777770C07777700077777000777770007777777777777000777777777777
                  7000}
                Kind = bkGlyph
              end>
            OnButtonClick = dbgFavorecidosNOMEButtonClick
          end
          object dbgFavorecidosALERTACLIENTE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALERTACLIENTE'
          end
          object dbgFavorecidosALERTA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALERTA'
          end
          object dbgFavorecidosCLIENTE: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CLIENTE'
          end
        end
        object TS_DBMemo1: TTS_DBMemo
          Left = 89
          Top = 7
          Width = 320
          TabOrder = 0
          DataField = 'DESCRICAO'
          DataSource = DMAlerta.C_TabelaDS
          StyleController = DMProjeto.esGeral
          Height = 47
        end
      end
      object pnCondicao: TTS_Panel
        Left = 0
        Top = 60
        Width = 420
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        Color = 13359603
        TabOrder = 1
        object lbCondicao: TTS_Label
          Left = 18
          Top = 3
          Width = 70
          Caption = 'Condi'#231#227'o:'
          FocusControl = DbLookCondicao
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbValor: TTS_Label
          Left = 7
          Top = 28
          Width = 81
          Caption = 'Valor:'
          FocusControl = dbEditValor
          FormatoTabela = False
          LinkToResult = 0
        end
        object DbLookCondicao: TTS_DBImageEdit
          Left = 89
          Top = 2
          Width = 211
          TabOrder = 0
          DataField = 'CONDICAO'
          DataSource = DMAlerta.C_TabelaDS
          StyleController = DMProjeto.esGeral
          Descriptions.Strings = (
            'Igual a'
            'Menor ou igual a'
            'Maior ou igual a'
            'Menor que'
            'Maior que')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4')
          Values.Strings = (
            '='
            '<='
            '>='
            '<'
            '>')
          Height = 19
        end
        object dbEditValor: TTS_DBEditNumber
          Left = 89
          Top = 26
          Width = 82
          TabOrder = 1
          DataField = 'VALOR'
          DataSource = DMAlerta.C_TabelaDS
          StyleController = DMProjeto.esGeral
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
      object pnPrincipal: TTS_Panel
        Left = 0
        Top = 0
        Width = 420
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        Color = 13359603
        TabOrder = 0
        object lbAplicar: TTS_Label
          Left = 7
          Top = 15
          Width = 81
          Caption = 'Aplicar '#224':'
          FocusControl = DbLookAplicar
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbTipoAlerta: TTS_Label
          Left = 7
          Top = 39
          Width = 81
          Caption = 'Tipo de Alerta:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_SpeedButton1: TTS_SpeedButton
          Left = 217
          Top = 15
          Width = 89
          Height = 16
          Caption = 'Selecionar'
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777700000007777777777777777700000007777777774F77777700000007777
            7777444F77777000000077777774444F777770000000700000444F44F7777000
            000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
            74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
            8777F07777774000000070FFFF00007777777000000070F88707077777777000
            000070FFFF007777777770000000700000077777777770000000777777777777
            777770000000}
          OnClick = TS_SpeedButton1Click
          RepeatedClick = False
          Border = True
        end
        object DbLookAplicar: TTS_DBImageEdit
          Left = 89
          Top = 13
          Width = 121
          TabOrder = 0
          DataField = 'APLICAR'
          DataSource = DMAlerta.C_TabelaDS
          StyleController = DMProjeto.esGeral
          OnChange = DbLookAplicarChange
          Descriptions.Strings = (
            'Clientes'
            'Fornecedores'
            'Itens'
            'Contas')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3')
          Values.Strings = (
            'C'
            'F'
            'I'
            'S')
          Height = 19
        end
        object TS_DBLookupComboBox1: TTS_DBLookupComboBox
          Left = 89
          Top = 38
          Width = 320
          TabOrder = 1
          StyleController = DMProjeto.esGeral
          OnChange = TS_DBLookupComboBox1Change
          ClearKey = 32
          LookupKeyValue = Null
          Height = 19
        end
        object popupFiltroItens: TTS_PopupFiltrarItens
          Left = 216
          Top = 13
          Width = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          AutoSelect = False
          StyleController = DMProjeto.esGeral
          Text = 'Filtrar itens...'
          HideEditCursor = True
          PopupFormBorderStyle = pbsSysPanel
          PopupClientEdge = True
          LookupKeyValue = 0
          TS_DB_Projeto = DMProjeto.DB_Projeto
          TS_FornecedorSelecionado = 0
          TS_PossuiEstoque = False
          TS_NaoPossuiEstoque = False
          TS_EstoqueMinimo = False
          TS_EstoqueMaximo = False
          TS_EstoquePontoPedido = False
          TS_EstoqueNegativo = False
          TS_ItensDesativado = False
          TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
          TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
          TS_AliasItens = 'i'
          OnSelecionou = popupFiltroItensSelecionou
          Height = 19
        end
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 537
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 67
      Caption = 'Alertas'
      Effect3D.ShadowedColor = 9741530
    end
    inherited btHelp: TTS_SpeedButton
      Left = 515
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 95
    Top = 274
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 210
    Top = 251
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 142
    Top = 223
  end
  inherited ImgPadrao: TImageList
    Left = 124
    Top = 277
  end
  inherited FormComponent: TFormComponent
    BeforeLoadKey = FormComponentBeforeLoadKey
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Alertas'
    OnInclusao = FormComponentInclusao
    Left = 53
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 636
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 318
  end
  inherited FormStorage: TFormStorage
    Left = 295
    Top = 65
  end
  object ppmGridAlertas: TTS_PopupMenu
    Left = 372
    Top = 109
    object MenuItem5: TMenuItem
      Caption = 'Novo'
      ShortCut = 45
      OnClick = MenuItem5Click
    end
    object Apagar1: TMenuItem
      Caption = 'Apagar'
      ShortCut = 16430
      OnClick = Apagar1Click
    end
  end
end

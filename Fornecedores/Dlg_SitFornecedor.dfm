inherited DlgSitFornecedor: TDlgSitFornecedor
  Left = 546
  Top = 133
  Width = 579
  Height = 433
  Caption = 'Fornecedores / Compras'
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 563
    Width = 0
    Height = 352
    Visible = False
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 318
    end
  end
  inherited pnDados: TTS_Panel [1]
    Width = 563
    Height = 352
    Color = 15196656
    object pnPesquisaFavorecido: TTS_Panel
      Left = 1
      Top = 1
      Width = 561
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = 15196656
      TabOrder = 0
      object dfTipoFav: TTS_DBLookupTipoFav
        Left = 4
        Top = 6
        Width = 100
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        Color = 15461355
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFornecedores
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 2
        Height = 21
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 106
        Top = 6
        Width = 303
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        OnKeyPress = edFavorecidoKeyPress
        StyleController = DMProjeto.esFornecedores
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
        TipoFavorecido = 2
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        Height = 21
        ExistButtons = True
      end
    end
    object TS_PageControl1: TTS_PageControl
      Left = 1
      Top = 33
      Width = 561
      Height = 318
      ActivePage = tsPagina2
      Align = alClient
      OwnerDraw = True
      TabOrder = 1
      ActivePageIndex = 1
      Transparent = False
      TabColor = 11775972
      TabColorActive = 15196656
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
      object tsPagina1: TTS_TabSheet
        Caption = 'tsPagina1'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
      end
      object tsPagina2: TTS_TabSheet
        Caption = 'tsPagina2'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object mvRelatorios: TdxMasterView
          Left = 0
          Top = 0
          Width = 553
          Height = 308
          Align = alClient
          TabOrder = 0
          ArrowsColor = 4227072
          OptionsBehavior = []
          OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movHideSelection, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
          ScrollBars = sbVertical
          object stCabCinzaAndre: TdxMasterViewStyle
            Color = 15461355
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object stGroupPanel: TdxMasterViewStyle
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object stItens1: TdxMasterViewStyle
            Color = 11448040
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object stItens2: TdxMasterViewStyle
            Color = 13290233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object stItens3: TdxMasterViewStyle
            Color = 15000826
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object stPagamentos: TdxMasterViewStyle
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 9603930
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object stCompras: TdxMasterViewStyle
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4029501
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object mvItens: TdxMasterViewLevel
            Caption = 'Itens mais comprados'
            CaptionStyle = stItens1
            DataSource = C_ItensDS
            GridLinesColor = clAppWorkSpace
            GroupByBoxStyle = stGroupPanel
            HeaderStyle = stItens2
            ID = 'CODIGO'
            OptionsDB = [lodConfirmDelete, lodSmartReload]
            OptionsView = [lovCaption, lovGrid, lovGridWithPreview]
            object mvItensCODIGO: TdxMasterViewColumn
              Alignment = taRightJustify
              Caption = 'C'#243'digo'
              FieldName = 'CODIGO'
              HeaderAlignment = taCenter
              Options = [coGrouping, coHorSizing, coSorting, coVerSizing]
              RowIndex = 0
              ColIndex = 0
              Width = 68
            end
            object mvItensDESCRICAO: TdxMasterViewColumn
              Caption = 'Item'
              FieldName = 'DESCRICAO'
              Options = [coGrouping, coHorSizing, coSorting, coVerSizing]
              RowIndex = 0
              ColIndex = 1
              Width = 127
            end
            object mvItensUNIDADE: TdxMasterViewColumn
              Alignment = taCenter
              Caption = 'Und'
              FieldName = 'UNIDADE'
              HeaderAlignment = taCenter
              Options = [coGrouping, coHorSizing, coSorting, coVerSizing]
              RowIndex = 0
              ColIndex = 2
              Width = 48
            end
            object mvItensQUANTIDADE: TdxMasterViewColumn
              Caption = 'Quant.'
              FieldName = 'QUANTIDADE'
              HeaderAlignment = taCenter
              Options = [coGrouping, coHorSizing, coSorting, coVerSizing]
              RowIndex = 0
              ColIndex = 3
              Width = 84
            end
            object mvItensTOTAL: TdxMasterViewColumn
              Caption = 'Total'
              FieldName = 'TOTAL'
              HeaderAlignment = taCenter
              Options = [coGrouping, coHorSizing, coSorting, coVerSizing]
              RowIndex = 0
              ColIndex = 4
              SortIndex = 0
              SortOrder = soAscending
              Width = 81
            end
            object mvItensULTIMACOMPRA: TdxMasterViewColumn
              Alignment = taCenter
              Caption = #218'ltima Compra'
              FieldName = 'ULTIMACOMPRA'
              HeaderAlignment = taCenter
              Options = [coGrouping, coHorSizing, coSorting, coVerSizing]
              RowIndex = 0
              ColIndex = 5
              Width = 106
            end
          end
          object mvPedAberto: TdxMasterViewLevel
            Caption = 'Pedidos em Aberto'
            CaptionStyle = stItens2
            DataSource = C_MovimentosDS
            GroupStyle = stCabCinzaAndre
            ID = 'PEDIDO'
            OptionsDB = [lodConfirmDelete, lodSmartReload]
            OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
            object mvPedAbertoNUMERO: TdxMasterViewColumn
              Alignment = taRightJustify
              Caption = '#'
              FieldName = 'NUMERO'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 0
            end
            object mvPedAbertoDATA: TdxMasterViewColumn
              Alignment = taCenter
              Caption = 'Data'
              FieldName = 'DATA'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 1
            end
            object mvPedAbertoTOTAL: TdxMasterViewColumn
              Caption = 'Total'
              FieldName = 'TOTAL'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 2
            end
            object mvPedAbertoTIPOENTREGA: TdxMasterViewColumn
              Caption = 'Tipo da Entrega'
              FieldName = 'TIPOENTREGA'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 3
            end
            object mvPedAbertoPREVISAOENTREGA: TdxMasterViewColumn
              Alignment = taCenter
              Caption = 'Previs'#227'o de Entrega'
              FieldName = 'PREVISAOENTREGA'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 4
            end
            object mvItensPedAberto: TdxMasterViewLevel
              Caption = 'Itens'
              DataSource = C_ItensMovDS
              DetailKey = 'PEDIDO'
              ID = 'SEQ'
              MasterKey = 'PEDIDO'
              OptionsDB = [lodConfirmDelete, lodSmartReload]
              OptionsView = [lovGrid, lovGridWithPreview, lovOccupyRestSpace]
              object mvItensPedAbertoSEQ: TdxMasterViewColumn
                Caption = '#'
                FieldName = 'SEQ'
                RowIndex = 0
                ColIndex = 1
                Visible = False
              end
              object mvItensPedAbertoITEMDESC: TdxMasterViewColumn
                Caption = 'Item'
                FieldName = 'ITEMDESC'
                RowIndex = 0
                ColIndex = 0
              end
              object mvItensPedAbertoQUANTIDADE: TdxMasterViewColumn
                Caption = 'Quant.'
                FieldName = 'QUANTIDADE'
                RowIndex = 0
                ColIndex = 1
              end
              object mvItensPedAbertoPRECO: TdxMasterViewColumn
                Caption = 'Pre'#231'o'
                FieldName = 'PRECO'
                RowIndex = 0
                ColIndex = 2
              end
              object mvItensPedAbertoTOTAL: TdxMasterViewColumn
                Caption = 'Total'
                FieldName = 'TOTAL'
                RowIndex = 0
                ColIndex = 3
              end
            end
          end
          object mvHistPag: TdxMasterViewLevel
            Caption = 'Hist'#243'rico de Pagamentos'
            CaptionStyle = stItens3
            DataSource = C_HistRecDS
            GroupStyle = stCabCinzaAndre
            ID = 'MES'
            OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locShowColumnOnUngrouping]
            OptionsDB = [lodConfirmDelete, lodSmartReload]
            OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
            object mvHistPagNOMEDOMES: TdxMasterViewColumn
              Caption = 'M'#234's/Ano'
              FieldName = 'NOMEDOMES'
              RowIndex = 0
              ColIndex = 0
            end
            object mvHistPagPAGOU: TdxMasterViewColumn
              Caption = 'Pagamentos'
              FieldName = 'PAGOU'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 2
            end
            object mvHistPagCOMPROU: TdxMasterViewColumn
              Caption = 'Compras'
              FieldName = 'COMPROU'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 1
            end
            object mvPagamentos: TdxMasterViewLevel
              Caption = 'Pagamentos'
              DataSource = C_PagamentosDS
              DetailKey = 'MES'
              ID = 'IDDOC'
              MasterKey = 'MES'
              OptionsDB = [lodConfirmDelete, lodSmartReload]
              OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovOccupyRestSpace]
              object mvPagamentosDATA: TdxMasterViewColumn
                Alignment = taCenter
                Caption = 'Data'
                FieldName = 'DATA'
                FooterAlignment = taCenter
                RowIndex = 0
                ColIndex = 0
              end
              object mvPagamentosTIPODOC: TdxMasterViewColumn
                Caption = 'Tipo de Pagamento'
                FieldName = 'TIPODOC'
                FooterAlignment = taCenter
                RowIndex = 0
                ColIndex = 1
              end
              object mvPagamentosVALOR: TdxMasterViewColumn
                Caption = 'Valor'
                FieldName = 'VALOR'
                FooterAlignment = taCenter
                RowIndex = 0
                ColIndex = 2
              end
              object mvPagamentosNUMCHEQUE: TdxMasterViewColumn
                Caption = 'CH #'
                FieldName = 'NUMCHEQUE'
                FooterAlignment = taCenter
                RowIndex = 0
                ColIndex = 3
              end
              object mvPagamentosIDDOC: TdxMasterViewColumn
                FieldName = 'IDDOC'
                RowIndex = 0
                ColIndex = 4
                Visible = False
              end
            end
            object mvCompras: TdxMasterViewLevel
              Caption = 'Compras'
              DataSource = C_RecebimentosDS
              DetailKey = 'MES'
              ID = 'NUMERO'
              MasterKey = 'MES'
              OptionsDB = [lodConfirmDelete, lodSmartReload]
              OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovOccupyRestSpace]
              object mvComprasDATA: TdxMasterViewColumn
                Alignment = taCenter
                Caption = 'Data'
                FieldName = 'DATA'
                HeaderAlignment = taCenter
                RowIndex = 0
                ColIndex = 0
              end
              object mvComprasNUMERO: TdxMasterViewColumn
                FieldName = 'NUMERO'
                RowIndex = 0
                ColIndex = 2
              end
              object mvComprasTOTAL: TdxMasterViewColumn
                Caption = 'Total'
                FieldName = 'TOTAL'
                HeaderAlignment = taCenter
                RowIndex = 0
                ColIndex = 1
              end
            end
          end
        end
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel [2]
    Width = 563
    Gradient.ColorStart = 11775972
    inherited lbUpperHint: TTS_Label
      Left = 563
    end
    inherited lbCaption: TdxfLabel
      Width = 186
      AutoSize = True
      Caption = 'Informa'#231#245'es Gerais'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 157
    Top = 353
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 127
    Top = 353
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 43
    Top = 337
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Informa'#231#245'es Gerais'
    FirstEditField = edFavorecido
    Left = 186
    Top = 274
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 223
    Top = 276
    inherited Ajuda1: TMenuItem
      HelpContext = 643
    end
  end
  object C_InforGeraisDS: TDataSource
    DataSet = C_InforGerais
    Left = 14
    Top = 186
  end
  object C_InforGerais: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
    ProviderName = 'Q_InforGeraisProvider'
    Left = 46
    Top = 186
    object C_InforGeraisFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_InforGeraisNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_InforGeraisENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_InforGeraisCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_InforGeraisUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_InforGeraisFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_InforGeraisFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_InforGeraisFAX: TStringField
      FieldName = 'FAX'
    end
    object C_InforGeraisCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_InforGeraisEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_InforGeraisTIPOATIVIDADE: TStringField
      FieldName = 'TIPOATIVIDADE'
      Size = 30
    end
    object C_InforGeraisTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
  end
  object Q_InforGeraisProvider: TDataSetProvider
    DataSet = Q_InforGerais
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 78
    Top = 186
  end
  object Q_InforGerais: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select f.favorecido, f.nome, f.endereco, f.cidade, f.uf, f.fone1' +
        ', f.fone2, f.fax, f.celular, f.email, f.tipofavorecido,'
      'ta.descricao as tipoatividade'
      
        'From Favorecidos f Left Join TiposAtividade ta On f.tipoatividad' +
        'e=ta.tipoatividade'
      'Where f.Favorecido = :Favorecido')
    Left = 110
    Top = 186
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
  end
  object Img_Panels: TImageList
    Left = 10
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
    Left = 14
    Top = 218
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
    ProviderName = 'Q_ItensProvider'
    Left = 46
    Top = 218
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ItensTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,0.00;-#,0.00'
    end
    object C_ItensULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
  end
  object Q_ItensProvider: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 78
    Top = 218
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select i.codigo, i.descricao, i.unidade,'
      'sum(si.quantidade) as quantidade,'
      'sum((si.quantidade*si.preco)) as total,'
      'max(s.data) as ultimacompra'
      'From entradasitens si'
      'Join entradas s On si.entrada=s.entrada And s.situacao='#39'N'#39
      'Join itens i On i.item=si.item And i.tipoitem in (1,2,3)'
      'Where s.favorecido = :Favorecido'
      'Group by i.codigo, i.descricao, i.unidade'
      'Order By 5 Desc')
    Left = 110
    Top = 218
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = Q_SQLTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'set generator GEN_TOP to -1')
    Left = 272
    Top = 328
  end
  object Q_SQLTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DMProjeto.DB_Projeto
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 240
    Top = 328
  end
  object C_HistRecDS: TDataSource
    DataSet = C_HistRec
    Left = 268
    Top = 180
  end
  object C_HistRec: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 300
    Top = 180
    object C_HistRecMES: TStringField
      FieldName = 'MES'
      Size = 10
    end
    object C_HistRecPAGOU: TFloatField
      FieldName = 'PAGOU'
      DisplayFormat = '#,0.00;-#,0.00'
    end
    object C_HistRecCOMPROU: TFloatField
      FieldName = 'COMPROU'
      DisplayFormat = '#,0.00;-#,0.00'
      EditFormat = '#,0.00;-#,0.00'
    end
    object C_HistRecNUM_MES: TIntegerField
      FieldName = 'NUM_MES'
    end
    object C_HistRecNUM_ANO: TIntegerField
      FieldName = 'NUM_ANO'
    end
    object C_HistRecNOMEDOMES: TStringField
      FieldName = 'NOMEDOMES'
      Size = 50
    end
  end
  object C_HistRecAux: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
        Value = 2001
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
        Value = 2001
      end>
    ProviderName = 'Q_HistRecAuxProvider'
    Left = 332
    Top = 180
    object C_HistRecAuxMES: TStringField
      FieldName = 'MES'
      Required = True
      Size = 23
    end
    object C_HistRecAuxPAGOU: TBCDField
      FieldName = 'PAGOU'
      Precision = 18
      Size = 2
    end
    object C_HistRecAuxNUM_MES: TIntegerField
      FieldName = 'NUM_MES'
      Required = True
    end
    object C_HistRecAuxNUM_ANO: TIntegerField
      FieldName = 'NUM_ANO'
      Required = True
    end
    object C_HistRecAuxCOMPROU: TBCDField
      FieldName = 'COMPROU'
      Precision = 18
      Size = 3
    end
  end
  object Q_HistRecAuxProvider: TDataSetProvider
    DataSet = Q_HistRecAux
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 364
    Top = 181
  end
  object Q_HistRecAux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select m.mes||'#39'/'#39'||a.ano as mes, sum(e.total) as comprou, sum(rd' +
        '.valor) as pagou,'
      'm.mes as num_mes, a.ano as num_ano'
      'from anos a'
      'join meses m on 1=1'
      
        'left join retiradas r on m.mes=f_month(r.data) and a.ano=f_year(' +
        'r.data)'
      
        'left join entradas e on m.mes=f_month(e.data) and a.ano=f_year(e' +
        '.data) and e.favorecido=:favorecido'
      
        'left join retiradasdoc rd on rd.retirada=r.retirada and rd.favor' +
        'ecidodoc=:favorecido'
      'where a.ano>= (:ano - 1)and a.ano<=:ano'
      'group by a.ano, m.mes'
      'order by a.ano desc, m.mes desc')
    Left = 396
    Top = 181
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
        Value = 2001
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
        Value = 2001
      end>
  end
  object Q_Pagamentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select dd.IDDOC, d.data, fp.descricao as TipoDoc, dd.Valor, dd.N' +
        'umCheque,'
      
        'dd.favorecidodoc as favorecido, f_month(d.data)||'#39'/'#39'||f_year(d.d' +
        'ata) As mes'
      'From RetiradasDoc dd'
      'Join Retiradas d On dd.retirada=d.retirada'
      'Join FormasPagamento fp On fp.formapagamento=dd.formapagamento'
      'Where dd.Favorecidodoc=:Favorecido and d.situacao <> '#39'C'#39)
    Left = 396
    Top = 213
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
  end
  object Q_PagamentosProvider: TDataSetProvider
    DataSet = Q_Pagamentos
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 364
    Top = 213
  end
  object C_Pagamentos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
    ProviderName = 'Q_PagamentosProvider'
    Left = 332
    Top = 212
    object C_PagamentosIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_PagamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_PagamentosTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Required = True
      Size = 50
    end
    object C_PagamentosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_PagamentosNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_PagamentosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_PagamentosMES: TStringField
      FieldName = 'MES'
      Required = True
      Size = 23
    end
  end
  object C_PagamentosDS: TDataSource
    DataSet = C_Pagamentos
    Left = 302
    Top = 212
  end
  object C_RecebimentosDS: TDataSource
    DataSet = C_Recebimentos
    Left = 302
    Top = 244
  end
  object C_Recebimentos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
    ProviderName = 'Q_RecebimentosProvider'
    Left = 332
    Top = 252
    object C_RecebimentosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_RecebimentosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_RecebimentosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object C_RecebimentosNUM_MES: TIntegerField
      FieldName = 'NUM_MES'
      Required = True
    end
    object C_RecebimentosNUM_ANO: TIntegerField
      FieldName = 'NUM_ANO'
      Required = True
    end
    object C_RecebimentosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_RecebimentosMES: TStringField
      FieldName = 'MES'
      Required = True
      Size = 23
    end
    object C_RecebimentosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 3
    end
  end
  object Q_RecebimentosProvider: TDataSetProvider
    DataSet = Q_Recebimentos
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 364
    Top = 245
  end
  object Q_Recebimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select s.numero, s.data, s.total, '#39' '#39' as vendedor,'
      
        'f_month(s.data) as num_mes, f_year(s.data) as num_ano, s.favorec' +
        'ido,'
      'f_month(s.data)||'#39'/'#39'||f_year(s.data) As mes'
      'From Entradas s'
      'Where s.Favorecido=:Favorecido and s.situacao <> '#39'C'#39)
    Left = 396
    Top = 245
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
  end
  object C_MovimentosDS: TDataSource
    DataSet = C_Movimentos
    Left = 410
    Top = 291
  end
  object C_Movimentos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
    ProviderName = 'Q_MovimentosProvider'
    Left = 440
    Top = 291
    object C_MovimentosPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Required = True
    end
    object C_MovimentosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_MovimentosDATA: TDateField
      FieldName = 'DATA'
    end
    object C_MovimentosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object C_MovimentosTIPOENTREGA: TStringField
      FieldName = 'TIPOENTREGA'
      Size = 30
    end
    object C_MovimentosPREVISAOENTREGA: TDateField
      FieldName = 'PREVISAOENTREGA'
    end
  end
  object Q_MovimentosProvider: TDataSetProvider
    DataSet = Q_Movimentos
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 472
    Top = 291
  end
  object Q_Movimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select p.pedido, p.numero, p.data, p.total,'
      'te.descricao as tipoentrega, p.previsaoentrega'
      'From pedidos p'
      'Left Join tiposentrega te On p.tipoentrega=te.tipoentrega'
      'Where p.situacao='#39'N'#39
      'And p.favorecido = :Favorecido')
    Left = 504
    Top = 291
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1060'
      end>
  end
  object Q_ItensMov: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select pi.pedido, i.descricao as itemdesc,'
      'pi.sequencia as seq, pi.quantidade, pi.preco,'
      '(pi.quantidade* pi.preco) as total'
      'From pedidositens pi'
      'join itens i on pi.item=i.item')
    Left = 504
    Top = 325
  end
  object Q_ItensMovProvider: TDataSetProvider
    DataSet = Q_ItensMov
    Constraints = True
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    Left = 472
    Top = 325
  end
  object C_ItensMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ItensMovProvider'
    Left = 441
    Top = 325
    object C_ItensMovPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object C_ItensMovITEMDESC: TStringField
      FieldName = 'ITEMDESC'
      Size = 50
    end
    object C_ItensMovSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object C_ItensMovQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ItensMovPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 2
    end
    object C_ItensMovTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object C_ItensMovDS: TDataSource
    DataSet = C_ItensMov
    Left = 410
    Top = 325
  end
end

inherited DlgUltimasVendas: TDlgUltimasVendas
  Left = 394
  Top = 150
  Width = 696
  Height = 382
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 569
    Top = 42
    Width = 111
    Height = 301
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 267
      Width = 109
    end
    inherited btComando2: TTS_SpeedButton
      Top = 1
      Width = 109
      Height = 0
    end
    inherited btComando1: TTS_SpeedButton
      Top = 1
      Width = 109
      Height = 0
    end
    inherited btLimpar: TTS_SpeedButton
      Top = 1
      Width = 109
      Height = 0
      Caption = 'Imprimir...'
      Enabled = False
      Glyph.Data = {00000000}
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 109
      Height = 0
      Caption = 'Abrir Venda...'
      Enabled = False
      Glyph.Data = {00000000}
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Top = 1
      Width = 109
      Height = 0
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel [1]
    Top = 42
    Width = 569
    Height = 301
    Color = 16116702
    object mvUltimasVendas: TdxMasterView
      Left = 1
      Top = 33
      Width = 567
      Height = 267
      Align = alClient
      TabOrder = 0
      OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movHideSelection, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
      ScrollBars = sbVertical
      OnDblClick = mvUltimasVendasDblClick
      object stCabVenda: TdxMasterViewStyle
        Color = 15190957
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svColor, svFont]
      end
      object stDadosVenda: TdxMasterViewStyle
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object stCabInvoices: TdxMasterViewStyle
        Color = 15461355
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svColor, svFont]
      end
      object stDadosInvoices: TdxMasterViewStyle
        AnotherColor = clWhite
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object mvVendas: TdxMasterViewLevel
        Tag = 1
        Caption = 'Vendas'
        ContentStyle = stDadosVenda
        DataSource = C_VendasDS
        FooterStyle = stCabVenda
        HeaderStyle = stCabVenda
        ID = 'SAIDA'
        OptionsCustomizeBox = [loxColumns]
        OptionsDB = [lodConfirmDelete, lodSmartReload]
        OptionsView = [lovFooter, lovGrid, lovGridWithPreview, lovHeader, lovNoButtonsWhenNoChildren, lovOccupyRestSpace]
        object mvVendasNUMERO: TdxMasterViewColumn
          Alignment = taRightJustify
          FieldName = 'NUMERO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 1
          Width = 55
        end
        object mvVendasDATA: TdxMasterViewColumn
          FieldName = 'DATA'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 0
          Width = 72
        end
        object mvVendasTOTAL: TdxMasterViewColumn
          FieldName = 'TOTAL'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 4
          SummaryFormat = '#0.00,'
          SummaryType = stSum
          Width = 95
        end
        object mvVendasVENDEDORNOME: TdxMasterViewColumn
          FieldName = 'VENDEDORNOME'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 2
          Width = 123
        end
        object mvVendasTIPOENTREGADESCRICAO: TdxMasterViewColumn
          FieldName = 'TIPOENTREGADESCRICAO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 3
          Width = 98
        end
        object mvVendasSALDO: TdxMasterViewColumn
          FieldName = 'SALDOINVOICE'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '#0.00,'
          SummaryType = stSum
          Width = 96
        end
        object mvVendasProd: TdxMasterViewLevel
          Tag = 2
          Caption = 'Itens'
          ContentStyle = stDadosInvoices
          DataSource = C_VendasProdDS
          DetailKey = 'SAIDA'
          FooterStyle = stCabInvoices
          HeaderStyle = stCabInvoices
          ID = 'SAIDAITEM'
          MasterKey = 'SAIDA'
          OptionsCustomizeBox = [loxColumns]
          OptionsDB = [lodConfirmDelete, lodSmartReload]
          OptionsView = [lovFooter, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
          object mvVendasProdSEQUENCIA: TdxMasterViewColumn
            FieldName = 'SEQUENCIA'
            HeaderAlignment = taCenter
            HeaderGlyphAlignment = taCenter
            RowIndex = 0
            ColIndex = 0
            Width = 20
          end
          object mvVendasProdITEMCODIGO: TdxMasterViewColumn
            FieldName = 'ITEMCODIGO'
            HeaderAlignment = taCenter
            HeaderGlyphAlignment = taCenter
            RowIndex = 0
            ColIndex = 1
            Width = 51
          end
          object mvVendasProdDESCRICAO: TdxMasterViewColumn
            FieldName = 'DESCRICAO'
            HeaderGlyphAlignment = taCenter
            RowIndex = 0
            ColIndex = 2
            Width = 178
          end
          object mvVendasProdQUANTIDADE: TdxMasterViewColumn
            FieldName = 'QUANTIDADE'
            HeaderAlignment = taCenter
            HeaderGlyphAlignment = taCenter
            RowIndex = 0
            ColIndex = 3
            SummaryFormat = '##00'
            SummaryType = stSum
            Width = 66
          end
          object mvVendasProdPRECO: TdxMasterViewColumn
            FieldName = 'PRECO'
            HeaderAlignment = taCenter
            HeaderGlyphAlignment = taCenter
            RowIndex = 0
            ColIndex = 4
            SummaryFormat = '#0.00,'
            SummaryType = stSum
            Width = 93
          end
          object mvVendasProdSUBTOTAL: TdxMasterViewColumn
            FieldName = 'SUBTOTAL'
            HeaderAlignment = taCenter
            HeaderGlyphAlignment = taCenter
            RowIndex = 0
            ColIndex = 5
            SummaryFormat = '#0.00,'
            SummaryType = stSum
            Width = 93
          end
        end
      end
    end
    object pnPesquisaFavorecido: TTS_Panel
      Left = 1
      Top = 1
      Width = 567
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = 16247774
      TabOrder = 1
      object dfTipoFav: TTS_DBLookupTipoFav
        Left = 4
        Top = 6
        Width = 100
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        Color = clWhite
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
        Left = 106
        Top = 6
        Width = 295
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
  end
  inherited pnTitulo: TTS_MaxPanel [2]
    Width = 680
    Height = 42
    Gradient.ColorStart = 14859922
    inherited btHelp: TTS_SpeedButton
      Left = 647
    end
    inherited lbUpperHint: TTS_Label
      Left = 688
      Top = -1
      Width = 0
      Height = 42
      Caption = 'Vendas/Itens '#13#10'comprados pelo '#13#10'favorecido'
    end
    inherited lbCaption: TdxfLabel
      Width = 148
      AutoSize = True
      Caption = #217'ltimas Vendas'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 242
    Top = 309
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 282
    Top = 309
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 323
    Top = 309
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = #217'ltimas Vendas'
    FirstEditField = edFavorecido
    Left = 202
    Top = 309
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 359
    Top = 309
    inherited Ajuda1: TMenuItem
      HelpContext = 429
    end
  end
  object C_Vendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '20878'
      end>
    ProviderName = 'Q_VendasProvider'
    Left = 69
    Top = 188
    object C_VendasSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_VendasNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_VendasDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_VendasVENDEDORNOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDORNOME'
      Size = 50
    end
    object C_VendasTIPOENTREGADESCRICAO: TStringField
      DisplayLabel = 'Tipo de Entrega'
      FieldName = 'TIPOENTREGADESCRICAO'
      Size = 30
    end
    object C_VendasTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_VendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_VendasSALDOINVOICE: TFloatField
      FieldName = 'SALDOINVOICE'
    end
  end
  object Q_VendasProvider: TDataSetProvider
    DataSet = Q_Vendas
    Constraints = True
    Left = 103
    Top = 239
  end
  object Q_Vendas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  s.saida,'
      '        s.numero,'
      '        s.data,'
      '        s.total,'
      '        f.nome As VendedorNome,'
      '        te.Descricao As TipoEntregaDescricao,'
      ''
      '        (Total - TotalPgtos) as SaldoInvoice,'
      ''
      '        f.tipofavorecido'
      'From Saidas s'
      'Left Join Favorecidos f On s.Vendedor=f.Favorecido'
      'Left Join TiposEntrega te On s.TipoEntrega=te.TipoEntrega'
      'Where s.Favorecido = :Favorecido'
      'And s.TipoPadrao = 1 and s.situacao = '#39'N'#39' '
      'Order By Data Desc, Saida Desc')
    Left = 177
    Top = 191
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '20878'
      end>
  end
  object Q_VendasProd: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  si.saida, si.saidaitem,'
      '        si.sequencia,'
      '        i.Codigo As ItemCodigo,'
      '        si.descricao,'
      '        si.quantidade,'
      '        si.preco,'
      '        si.subtotalitem as subtotal,'
      '        si.taxavel,'
      '        si.item'
      'From SaidasItens si'
      'Left Join Itens i On si.Item=i.Item'
      'Order By si.ordem')
    Left = 323
    Top = 192
  end
  object C_VendasProdDS: TDataSource
    DataSet = C_VendasProd
    Left = 439
    Top = 240
  end
  object C_VendasProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_VendasProdProvider'
    Left = 334
    Top = 234
    object C_VendasProdSAIDA: TIntegerField
      FieldName = 'SAIDA'
    end
    object C_VendasProdSEQUENCIA: TIntegerField
      DisplayLabel = '#'
      FieldName = 'SEQUENCIA'
    end
    object C_VendasProdITEMCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ITEMCODIGO'
      Size = 13
    end
    object C_VendasProdDESCRICAO: TStringField
      DisplayLabel = 'Item'
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_VendasProdTAXAVEL: TStringField
      DisplayLabel = 'Tax.'
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_VendasProdcfTAXAVEL: TStringField
      DisplayLabel = 'Tax.'
      FieldKind = fkInternalCalc
      FieldName = 'cfTAXAVEL'
      Size = 10
    end
    object C_VendasProdITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_VendasProdSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Required = True
    end
    object C_VendasProdQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_VendasProdPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_VendasProdSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
  end
  object C_VendasDS: TDataSource
    DataSet = C_Vendas
    Left = 170
    Top = 239
  end
  object Q_VendasProdProvider: TDataSetProvider
    DataSet = Q_VendasProd
    Constraints = True
    Left = 335
    Top = 128
  end
end

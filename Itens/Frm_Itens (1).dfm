inherited FrmItens: TFrmItens
  Left = 340
  Top = 53
  Width = 937
  Height = 654
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label20: TTS_Label [0]
    Left = 132
    Top = 224
    Width = 107
    Height = 17
    Caption = 'Estoque Atual:'
    Versoes = 'S,P,E'
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label53: TTS_Label [1]
    Left = 4
    Top = 124
    Width = 133
    Height = 17
    Alignment = taCenter
    Caption = 'Substitui'#231#227'o Tribut'#225'ria'
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
  object TS_Shape3: TTS_Shape [2]
    Left = 3
    Top = 122
    Width = 136
    Height = 18
    Brush.Color = 9027548
    Pen.Style = psClear
    Shape = stRoundRect
    Transparent = False
  end
  object TS_Shape5: TTS_Shape [3]
    Left = 3
    Top = 131
    Width = 492
    Height = 3
    Brush.Color = 9027548
    Pen.Style = psClear
    Transparent = False
  end
  inherited pnNavigator: TTS_Panel
    Left = 794
    Width = 135
    Height = 580
    inherited btGravar: TTS_SpeedButton
      Width = 133
    end
    inherited btPesquisar: TTS_SpeedButton
      Width = 133
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 133
    end
    inherited btComando1: TTS_SpeedButton
      Width = 133
      Hint = 'Estat'#237'sticas de quantidade e pre'#231'o vendido do item selecionado'
      Caption = '1. Estat'#237'sticas de Venda'
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Width = 133
      Hint = 'Permite visualizar todas as vendas do item selecionado'
      Caption = '2. '#218'ltimas Vendas'
      OnClick = btComando2Click
    end
    inherited bv2: TTS_Bevel
      Width = 133
    end
    inherited bv3: TTS_Bevel
      Width = 133
    end
    inherited bv1: TTS_Bevel
      Width = 133
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 546
      Width = 133
    end
    inherited btIR_Para: TTS_SpeedButton
      Width = 133
      PopupMenu = ppmIrPara
    end
    object btUltimosFornec: TTS_SpeedButton [10]
      Left = 1
      Top = 238
      Width = 133
      Hint = 
        'Permite visualizar as '#250'ltimas entradas do fornecedor do item sel' +
        'ecionado'
      Caption = '3. '#218'ltimos Fornecimentos'
      OnClick = btUltimosFornecClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object btOutros: TTS_SpeedButton [11]
      Left = 1
      Top = 271
      Width = 133
      Hint = 'Outros recursos existentes atrav'#233's de menu popup'
      Caption = '4. Outras Op'#231#245'es'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0404FFFFFFFFFFFFFFFFFFFFFFFFFFD8D80404FFFFFFFFFFFFFFFFFFFFFFD8
        D8D8D80404FFFFFFFFFFFFFFFFFFD8D8D8D8D8D80404FFFFFFFFFFFFFFD8D8D8
        D8D8D8D8D80404FFFFFFFFFFD8D8D8D8D8D8D8D8D8D80404FFFFFFD8D8D8D8D8
        D8D8D8D8D8D8D80404FFD8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphRight
      PopupMenu = ppmOutros
      OnClick = btOutrosClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object btSubItens: TTS_SpeedButton [12]
      Left = 1
      Top = 304
      Width = 133
      Hint = 'Composi'#231#227'o do Item'
      Caption = '5. Sub Itens'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000130B0000130B00000001000000010000CE6300003929
        1800D67B21003131310021214A0052424A007363520018425A00846B5A000842
        630021526B0052636B007373730029637B0084847B008C847B009C948C004A6B
        9C00FFD6A500E7CEB500FFDEB5003139BD008CB5C60010A5D600FFEFD60042A5
        DE000010E700F7EFE700299CEF00FFF7EF002973F70042E7F700FF00FF006BC6
        FF008CF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00202020202020
        2020202020202020202020202020202020202020202000202020202020202020
        2020202020202020202020202020002020202020000000000000000020202020
        202020202020000000000000021D1D1818141200202020202020202020200020
        2020202002232323181412002020202020202020202000202020202002020202
        0202020020202020202020202020002020202020202020202020202020202020
        2020202020200020202020200000000000000000202020202020202020200000
        0000000003051D18181412002020202020202020202000202020202005010D0B
        18141200202020202020202020200020202020200C16221E0A02020020202020
        2020202020200020202020202021221E1E092020202020202020202020200020
        202020200000171F1E1E0A0020202020202020202020000000000000021D1D17
        1F1E1E072020202020202020202000202020202002232323171F1E1E0A202020
        2020202020200020202020200202020202171F1E1E0920202020202020200020
        20202020202020202020171F1E15032020202000000000000000002020202020
        20202017190F0E03202020021D1D181814120020202020202020202008231B06
        04202002232323181412002020202020202020202010130D1E15200202020202
        0202002020202020202020202020111C1E152020202020202020202020202020
        202020202020201A1A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020}
      OnClick = btSubItensClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    inherited pnInicioFim: TTS_Panel
      Top = 337
      Width = 133
    end
    inherited pnAvancaRecua: TTS_Panel
      Width = 133
      inherited btPrevReg: TTS_SpeedButton
        Left = 33
        Width = 34
      end
      inherited btProxReg: TTS_SpeedButton
        Left = 67
        Width = 34
      end
      inherited btPrimeiroReg: TTS_SpeedButton
        Width = 33
      end
      inherited btUltimoReg: TTS_SpeedButton
        Left = 101
        Width = 31
      end
    end
  end
  inherited pnDados: TTS_Panel
    Width = 794
    Height = 580
    inherited Grid: TTS_QDBGrid
      Width = 792
      Height = 578
      KeyField = 'ITEM'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object GridITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridDESCRICAOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o de Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPRA'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o de Venda'
        HeaderAlignment = taCenter
        Width = 241
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object GridQTDEMINIMO: TdxDBGridCurrencyColumn
        Caption = 'Estoque M'#237'nimo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMINIMO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridQTDEMAXIMO: TdxDBGridCurrencyColumn
        Caption = 'Estoque M'#225'ximo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMAXIMO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridPONTOPEDIDO: TdxDBGridCurrencyColumn
        Caption = 'Ponto de Pedido'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PONTOPEDIDO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object GridDESATIVADO: TdxDBGridCheckColumn
        Caption = 'Desativado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESATIVADO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GridlkUnidade: TdxDBGridLookupColumn
        Caption = 'Unidade de Venda'
        HeaderAlignment = taCenter
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUnidade'
      end
      object GridESTOQUE: TdxDBGridCurrencyColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridCOMISSAO: TdxDBGridCurrencyColumn
        Caption = 'Comiss'#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
        DisplayFormat = ',0.0#%;-R$ ,0.0#%'
        Nullable = False
      end
      object GridDESCONTOMAXIMO: TdxDBGridCurrencyColumn
        Caption = 'Desconto M'#225'ximo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
        DisplayFormat = ',0.0#&;-,0.0#%'
        Nullable = False
      end
      object GridCAMPO01: TdxDBGridMaskColumn
        Caption = 'Campo 01'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO01'
      end
      object GridCAMPO02: TdxDBGridMaskColumn
        Caption = 'Campo 02'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO02'
      end
      object GridCAMPO03: TdxDBGridMaskColumn
        Caption = 'Campo 03'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO03'
      end
      object GridCAMPO04: TdxDBGridMaskColumn
        Caption = 'Campo 04'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO04'
      end
      object GridCAMPO05: TdxDBGridMaskColumn
        Caption = 'Campo 05'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO05'
      end
      object GridPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o de Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object GridCAMPO06: TdxDBGridMaskColumn
        Caption = 'Campo 06'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO06'
      end
      object GridCUSTOCONTABIL: TdxDBGridMaskColumn
        Caption = 'Custo Cont'#225'bil'
        HeaderAlignment = taCenter
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object GridCAMPO07: TdxDBGridMaskColumn
        Caption = 'Campo 07'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO07'
      end
      object GridCAMPO08: TdxDBGridMaskColumn
        Caption = 'Campo 08'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO08'
      end
      object GridCAMPO09: TdxDBGridMaskColumn
        Caption = 'Campo 09'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO09'
      end
      object GridCAMPO10: TdxDBGridMaskColumn
        Caption = 'Campo 10'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO10'
      end
      object GridPROMOCAO: TdxDBGridCheckColumn
        Caption = 'Promo'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PROMOCAO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GridDATACADASTRO: TdxDBGridDateColumn
        Caption = 'Data Cadastro'
        HeaderAlignment = taCenter
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATACADASTRO'
      end
      object GridCONTROLEVALIDADE: TdxDBGridCheckColumn
        Caption = 'Controle de Validade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTROLEVALIDADE'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GridTEMPOMEDIOVALIDADE: TdxDBGridMaskColumn
        Caption = 'Tempo M'#233'dio de Validade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEMPOMEDIOVALIDADE'
      end
      object GridULTIMACOMPRA: TdxDBGridDateColumn
        Caption = #218'ltima Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMACOMPRA'
      end
      object GridULTQTDECOMPRA: TdxDBGridCurrencyColumn
        Caption = #218'lt. Qtd. Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTQTDECOMPRA'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o Complementar'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPLEMENTAR'
      end
      object GridDESCRICAOTECNICA: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o T'#233'cnica'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1230
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOTECNICA'
      end
      object GridPRECO: TdxDBGridCurrencyColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridNOMEULTIMOFORNECEDOR: TdxDBGridMaskColumn
        Caption = #218'ltimo Fornecedor'
        HeaderAlignment = taCenter
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEULTIMOFORNECEDOR'
      end
      object GridNOMEFORNECPREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Fornecedor Preferido'
        HeaderAlignment = taCenter
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFORNECPREFERENCIA'
      end
      object GridlkTipoItem: TdxDBGridLookupColumn
        Caption = 'Tipo de Item'
        HeaderAlignment = taCenter
        Visible = False
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkTipoItem'
      end
      object GridlkGrupoItem: TdxDBGridLookupColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkGrupoItem'
      end
      object GridlkFabricante: TdxDBGridLookupColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkFabricante'
      end
      object GridLOCALIZACAO: TdxDBGridMaskColumn
        Caption = 'Localiza'#231#227'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALIZACAO'
      end
      object GridlkContaVenda: TdxDBGridLookupColumn
        Caption = 'Conta de Venda'
        HeaderAlignment = taCenter
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkContaVenda'
      end
      object GridlkContaCusto: TdxDBGridLookupColumn
        Caption = 'Conta de Custo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkContaCusto'
      end
      object GridlkContaInvent: TdxDBGridLookupColumn
        Caption = 'Conta de Invent'#225'rio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkContaInvent'
      end
      object GridlkUnidadeVarejo: TdxDBGridLookupColumn
        Caption = 'Unidade Varejo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUnidadeVarejo'
      end
      object GridlkUnidadeCompra: TdxDBGridLookupColumn
        Caption = 'Unidade de Compra'
        HeaderAlignment = taCenter
        Visible = False
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUnidadeCompra'
      end
      object GridlkUnidadeCarga: TdxDBGridLookupColumn
        Caption = 'Unidade de Carga'
        HeaderAlignment = taCenter
        Visible = False
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUnidadeCarga'
      end
      object GridlkSitECF: TdxDBGridLookupColumn
        Caption = 'Tipo Tributa'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkSitECF'
      end
      object GridlkCST: TdxDBGridLookupColumn
        Caption = 'CST'
        HeaderAlignment = taCenter
        Visible = False
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkCST'
      end
      object GridALIQICMS: TdxDBGridCurrencyColumn
        Caption = 'Al'#237'q. ICMS'
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
        DisplayFormat = ',0.0#%;-R$ ,0.0#%'
        Nullable = False
      end
      object GridTVA: TdxDBGridCurrencyColumn
        Caption = 'TVA Substitui'#231#227'o'
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
        DisplayFormat = ',0.0#%;-R$ ,0.0#%'
        Nullable = False
      end
      object GridTVAFONTE: TdxDBGridCurrencyColumn
        Caption = 'TVA Fonte'
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVAFONTE'
        DisplayFormat = ',0.0#%;-R$ ,0.0#%'
        Nullable = False
      end
      object GridCLASFISCAL: TdxDBGridMaskColumn
        Caption = 'Classif. Subst. Tribut.'
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
      end
      object GridIPICOMPRA: TdxDBGridCurrencyColumn
        Caption = 'IPI Compra'
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPICOMPRA'
        DisplayFormat = ',0.0#%;-R$ ,0.0#%'
        Nullable = False
      end
      object GridIPIVENDA: TdxDBGridCurrencyColumn
        Caption = 'IPI Venda'
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPIVENDA'
        DisplayFormat = ',0.0#%;-R$ ,0.0#%'
        Nullable = False
      end
      object GridCODIGOBARRAS: TdxDBGridMaskColumn
        Caption = 'C'#243'digo de Barras'
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOBARRAS'
      end
      object GridlkIndexador: TdxDBGridLookupColumn
        Caption = 'Indexador'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkIndexador'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 792
      Height = 578
    end
    inherited sbDados: TTS_Panel
      Width = 792
      Height = 578
      Color = 14019327
      object lbDescricaoVenda: TTS_Label
        Left = -2
        Top = 47
        Width = 121
        Height = 15
        Caption = 'Descri'#231#227'o de Venda:'
        Color = 9027548
        FocusControl = dfDescricaoVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Versoes = 'S,P,E'
        TagStr = 'Descri'#231#227'o de Venda:;Mensagem:;Descri'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbGrupo: TTS_Label
        Left = 31
        Top = 67
        Width = 86
        Height = 17
        Cursor = crHandPoint
        Hint = 'Permite entrar no cadastro de grupos'
        Caption = 'Grupo:'
        FocusControl = cmbGrupo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lbGrupoClick
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkTo = 'FrmGrupos'
        LinkToResult = 0
      end
      object lbReferencia: TTS_Label
        Left = 17
        Top = 86
        Width = 101
        Height = 15
        Caption = '# Refer'#234'ncia:'
        FocusControl = dfReferencia
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 47
        Top = 26
        Width = 71
        Height = 17
        Caption = 'C'#243'digo:'
        FocusControl = dfCodigo
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 44
        Top = 3
        Width = 74
        Height = 17
        Caption = 'Tipo:'
        FocusControl = cmbTipoItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbDataCadastro: TTS_Label
        Left = 322
        Top = 5
        Width = 93
        Height = 15
        Caption = 'Cadastrado em:'
        FocusControl = dfReferencia
        Visible = False
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbABC: TTS_Label
        Left = 393
        Top = 86
        Width = 65
        Caption = 'Classe ABC:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object imgFocoCodigo: TImage
        Left = 62
        Top = 23
        Width = 15
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000000F00
          000010000000010008000000000000010000C21E0000C21E0000000100000000
          0000590000009F3B3B00FF555500B65D5D00B86D6D00CD757500E28A8A00D490
          9000FF919100FBA3A300FFB7B700FFD8D800FFF8F800FFFFFF00000000000000
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
          00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D00
          0D000D0D0D0D0D0D0D0D0D0D0D0D000D0D000D0D0D0D0D0D0D00000D0D000D0D
          0D000D0D0D0D0D0D00010400000D0D0D0D000D0D0D0D0D0D00040706000D0D0D
          0D000D0D0D0D0D0D00050A0B09000D0D0D000D0D0D0D0D0005080B0C0C000D0D
          0D000D0D0D0D00060B0C0000000D0D0D0D000D0D0000060B0C000D0D0D0D0D0D
          0D000D000305020C000D0D0D0D0D0D0D0D000D0D000B09000D0D0D0D0D0D0D0D
          0D000D0D0D000C000D0D0D0D0D0D0D0D0D000D0D0D0D000D0D0D0D0D0D0D0D0D
          0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D00}
        PopupMenu = ppmFoco
        Transparent = True
        OnClick = imgFocoCodigoClick
      end
      object ImgFocoDescricaoVenda: TImage
        Left = 3
        Top = 44
        Width = 15
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000000F00
          000010000000010008000000000000010000C21E0000C21E0000000100000000
          0000590000009F3B3B00FF555500B65D5D00B86D6D00CD757500E28A8A00D490
          9000FF919100FBA3A300FFB7B700FFD8D800FFF8F800FFFFFF00000000000000
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
          00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D00
          0D000D0D0D0D0D0D0D0D0D0D0D0D000D0D000D0D0D0D0D0D0D00000D0D000D0D
          0D000D0D0D0D0D0D00010400000D0D0D0D000D0D0D0D0D0D00040706000D0D0D
          0D000D0D0D0D0D0D00050A0B09000D0D0D000D0D0D0D0D0005080B0C0C000D0D
          0D000D0D0D0D00060B0C0000000D0D0D0D000D0D0000060B0C000D0D0D0D0D0D
          0D000D000305020C000D0D0D0D0D0D0D0D000D0D000B09000D0D0D0D0D0D0D0D
          0D000D0D0D000C000D0D0D0D0D0D0D0D0D000D0D0D0D000D0D0D0D0D0D0D0D0D
          0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D00}
        PopupMenu = ppmFoco
        Transparent = True
        OnClick = imgFocoCodigoClick
      end
      object imgCobBarras: TImage
        Left = 278
        Top = 25
        Width = 15
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000000F00
          000010000000010008000000000000010000C21E0000C21E0000000100000000
          0000590000009F3B3B00FF555500B65D5D00B86D6D00CD757500E28A8A00D490
          9000FF919100FBA3A300FFB7B700FFD8D800FFF8F800FFFFFF00000000000000
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
          00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D00
          0D000D0D0D0D0D0D0D0D0D0D0D0D000D0D000D0D0D0D0D0D0D00000D0D000D0D
          0D000D0D0D0D0D0D00010400000D0D0D0D000D0D0D0D0D0D00040706000D0D0D
          0D000D0D0D0D0D0D00050A0B09000D0D0D000D0D0D0D0D0005080B0C0C000D0D
          0D000D0D0D0D00060B0C0000000D0D0D0D000D0D0000060B0C000D0D0D0D0D0D
          0D000D000305020C000D0D0D0D0D0D0D0D000D0D000B09000D0D0D0D0D0D0D0D
          0D000D0D0D000C000D0D0D0D0D0D0D0D0D000D0D0D0D000D0D0D0D0D0D0D0D0D
          0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D00}
        PopupMenu = ppmFoco
        Transparent = True
        OnClick = imgFocoCodigoClick
      end
      object ImgPinoGrupo: TImage
        Left = 68
        Top = 64
        Width = 15
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000000F00
          000010000000010008000000000000010000C21E0000C21E0000000100000000
          0000590000009F3B3B00FF555500B65D5D00B86D6D00CD757500E28A8A00D490
          9000FF919100FBA3A300FFB7B700FFD8D800FFF8F800FFFFFF00000000000000
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
          00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D00
          0D000D0D0D0D0D0D0D0D0D0D0D0D000D0D000D0D0D0D0D0D0D00000D0D000D0D
          0D000D0D0D0D0D0D00010400000D0D0D0D000D0D0D0D0D0D00040706000D0D0D
          0D000D0D0D0D0D0D00050A0B09000D0D0D000D0D0D0D0D0005080B0C0C000D0D
          0D000D0D0D0D00060B0C0000000D0D0D0D000D0D0000060B0C000D0D0D0D0D0D
          0D000D000305020C000D0D0D0D0D0D0D0D000D0D000B09000D0D0D0D0D0D0D0D
          0D000D0D0D000C000D0D0D0D0D0D0D0D0D000D0D0D0D000D0D0D0D0D0D0D0D0D
          0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D00}
        PopupMenu = ppmFoco
        Transparent = True
        OnClick = imgFocoCodigoClick
      end
      object ImgPinoRef: TImage
        Left = 33
        Top = 84
        Width = 15
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617036050000424D360500000000000036040000280000000F00
          000010000000010008000000000000010000C21E0000C21E0000000100000000
          0000590000009F3B3B00FF555500B65D5D00B86D6D00CD757500E28A8A00D490
          9000FF919100FBA3A300FFB7B700FFD8D800FFF8F800FFFFFF00000000000000
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
          00000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D00
          0D000D0D0D0D0D0D0D0D0D0D0D0D000D0D000D0D0D0D0D0D0D00000D0D000D0D
          0D000D0D0D0D0D0D00010400000D0D0D0D000D0D0D0D0D0D00040706000D0D0D
          0D000D0D0D0D0D0D00050A0B09000D0D0D000D0D0D0D0D0005080B0C0C000D0D
          0D000D0D0D0D00060B0C0000000D0D0D0D000D0D0000060B0C000D0D0D0D0D0D
          0D000D000305020C000D0D0D0D0D0D0D0D000D0D000B09000D0D0D0D0D0D0D0D
          0D000D0D0D000C000D0D0D0D0D0D0D0D0D000D0D0D0D000D0D0D0D0D0D0D0D0D
          0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D0D000D0D0D0D0D0D0D0D0D0D0D0D0D0D
          0D00}
        PopupMenu = ppmFoco
        Transparent = True
        OnClick = imgFocoCodigoClick
      end
      object lbGenero: TTS_Label
        Left = 19
        Top = 104
        Width = 101
        Height = 15
        Caption = 'G'#234'nero:'
        Color = 9027548
        FocusControl = cmbGenero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Versoes = 'S,P,E'
        TagStr = 'G'#234'nero do Item:;Mensagem:;G'#234'nero:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbOrigem: TTS_Label
        Left = 19
        Top = 123
        Width = 101
        Height = 15
        Caption = 'Origem:'
        Color = 14019327
        FocusControl = cmbOrigem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label74: TTS_Label
        Left = 525
        Top = 104
        Width = 65
        Caption = 'IPPT:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label76: TTS_Label
        Left = 525
        Top = 120
        Width = 65
        Caption = 'IAT:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label83: TTS_Label
        Left = 263
        Top = 26
        Width = 105
        Cursor = crHandPoint
        Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
        Caption = 'C'#243'digo Barras:'
        FocusControl = dfPrecoVenda1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = TS_Label83Click
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object pnDescricoes: TTS_Panel
        Left = 360
        Top = 136
        Width = 378
        Height = 212
        BevelOuter = bvNone
        Color = 14019327
        TabOrder = 13
        Visible = False
        DesignSize = (
          378
          212)
        object TS_Label27: TTS_Label
          Left = 4
          Top = 12
          Width = 125
          Alignment = taLeftJustify
          Caption = 'Descri'#231#227'o Complementar:'
          FocusControl = dfDescricaoComp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label30: TTS_Label
          Left = 4
          Top = 107
          Width = 125
          Alignment = taLeftJustify
          Caption = 'Descri'#231#227'o T'#233'cnica:'
          FocusControl = dfDescricaoTec
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object dfDescricaoComp: TTS_DBMemo
          Left = 1
          Top = 22
          Width = 375
          TabOrder = 0
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRICAOCOMPLEMENTAR'
          DataSource = DMItens.C_TabelaDS
          StyleController = DMProjeto.esItens
          Height = 89
        end
        object dfDescricaoTec: TTS_DBMemo
          Left = 1
          Top = 118
          Width = 375
          TabOrder = 1
          Anchors = [akLeft, akTop, akRight]
          DataField = 'DESCRICAOTECNICA'
          DataSource = DMItens.C_TabelaDS
          StyleController = DMProjeto.esItens
          Height = 89
        end
      end
      object pcItens: TTS_PageControl
        Tag = -1
        Left = 0
        Top = 138
        Width = 821
        Height = 445
        HelpContext = -1
        ActivePage = tsProdutosInvent
        Anchors = [akLeft, akTop, akRight, akBottom]
        OwnerDraw = True
        Style = tsButtons
        TabOrder = 12
        TabStop = False
        OnChange = pcItensChange
        ActivePageIndex = 0
        BorderInvisible = True
        Versoes = 'S,P,E'
        Transparent = False
        TabColor = clBlack
        TabColorActive = clBlack
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
        object tsProdutosInvent: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'Produtos de Invent'#225'rio'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          Versoes = 'S,P,E'
          BevelInner = bvRaised
          BevelOuter = bvLowered
          DesignSize = (
            821
            443)
          object lbPrincipioAtivo: TTS_Label
            Left = 19
            Top = 2
            Width = 101
            Height = 15
            Cursor = crHandPoint
            Caption = 'Principio Ativo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
            Visible = False
            Versoes = 'S,P,E'
            FormatoTabela = False
            LinkTo = 'FrmPrincipioAtivo'
            LinkToResult = 0
          end
          object lbPromocao: TdxfLabel
            Left = 531
            Top = 15
            Width = 95
            Height = 19
            Cursor = crHandPoint
            AutoSize = False
            Caption = '(Promo'#231#227'o)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            OnClick = lbPromocaoClick
            Style = dxfRaised
            Angle = 0
            Effect3D.Style = dxfExtrude
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 3
            Effect3D.ShadowedColor = clSilver
            PenWidth = 1
          end
          object lbBalanco: TdxfLabel
            Left = 540
            Top = -1
            Width = 78
            Height = 19
            AutoSize = False
            Caption = '(Balan'#231'o)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            Style = dxfRaised
            Angle = 0
            Effect3D.Style = dxfCool
            Effect3D.Orientation = dxfRightBottom
            Effect3D.Depth = 0
            Effect3D.ShadowedColor = clGray
            PenWidth = 1
          end
          object pcEstoque: TTS_PageControl
            Tag = -1
            Left = 123
            Top = 32
            Width = 667
            Height = 436
            HelpContext = -1
            ActivePage = tsCaracteristicas1
            Anchors = [akLeft, akTop, akRight, akBottom]
            MultiLine = True
            OwnerDraw = True
            TabOrder = 0
            TabStop = False
            TabWidth = 167
            ActivePageIndex = 0
            Transparent = False
            TabColor = 14019327
            TabColorActive = 9027548
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
            object tsCaracteristicas1: TTS_TabSheet
              Hint = 'btCaracteristicas1'
              Caption = #39
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'S,P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Shape22: TTS_Shape
                Left = 17
                Top = 299
                Width = 494
                Height = 3
                Brush.Color = 9027548
                Pen.Style = psClear
                Transparent = False
              end
              object TS_Shape21: TTS_Shape
                Left = 17
                Top = 291
                Width = 133
                Height = 18
                Brush.Color = 9027548
                Pen.Style = psClear
                Shape = stRoundRect
                Transparent = False
              end
              object shapePreco: TTS_Shape
                Left = 20
                Top = 5
                Width = 233
                Height = 22
                Brush.Color = 9552605
                Pen.Style = psClear
                Shape = stRoundRect
                Versoes = 'S,P,E'
                Transparent = False
              end
              object lbPrecoVenda1: TTS_Label
                Left = 22
                Top = 8
                Width = 105
                Cursor = crHandPoint
                Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                Caption = 'Pre'#231'o de Venda:'
                FocusControl = dfPrecoVenda1
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lbPrecoVenda1Click
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbComissao1: TTS_Label
                Left = 16
                Top = 31
                Width = 110
                Caption = 'Comiss'#227'o:'
                FocusControl = dfComissao1
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbDescMax1: TTS_Label
                Left = 16
                Top = 51
                Width = 110
                Hint = 'lbDescMax'
                Caption = 'Desconto M'#225'ximo:'
                FocusControl = dfDescMax1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbFab: TTS_Label
                Left = 17
                Top = 122
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de fabricantes'
                Caption = 'Fabricante:'
                FocusControl = cmbFabricante
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkTo = 'FrmFabricantes'
                LinkToResult = 0
              end
              object lblUnidade: TTS_Label
                Left = 6
                Top = 77
                Width = 120
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de unidades'
                Caption = 'Unidade de Venda:'
                FocusControl = cmbUnidade
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkTo = 'FrmUnidades'
                LinkToResult = 0
              end
              object lbUnidadeVarejo: TTS_Label
                Left = 17
                Top = 252
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de unidades'
                Caption = 'Unidade de Varejo:'
                FocusControl = cmbUnidadeVarejo
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmUnidades'
                LinkToResult = 0
              end
              object lbUnidadeCarga: TTS_Label
                Left = 16
                Top = 270
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de unidades'
                Caption = 'Unidade de Carga:'
                FocusControl = cmbUnidadeCarga
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmUnidades'
                LinkToResult = 0
              end
              object lblEstoque: TTS_Label
                Left = 18
                Top = 98
                Width = 110
                Height = 17
                Caption = 'Estoque Atual:'
                FocusControl = dfEstoque_b
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label17: TTS_Label
                Left = 16
                Top = 142
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Fornecedor Preferencial'
                Caption = #218'lt.Fornecedor:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkTo = 'FrmFornecedores'
                LinkToResult = 0
              end
              object TS_Label33: TTS_Label
                Left = 16
                Top = 162
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Fornecedor Preferencial'
                Caption = 'Forn. Preferido:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'P,E'
                FormatoTabela = False
                LinkTo = 'FrmFornecedores'
                LinkToResult = 0
              end
              object TS_Label65: TTS_Label
                Left = 16
                Top = 181
                Width = 110
                Cursor = crHandPoint
                Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                Caption = 'Unidade Compra:'
                FocusControl = cmbUnidadeCompra
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'P,E'
                FormatoTabela = False
                LinkTo = 'FrmUnidades'
                LinkToResult = 0
              end
              object lblDescCompra: TTS_Label
                Left = -2
                Top = 199
                Width = 129
                Height = 16
                Caption = 'Descri'#231#227'o para Compra:'
                Color = 9027548
                FocusControl = TS_DBEdit2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Versoes = 'P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label12: TTS_Label
                Left = 261
                Top = 181
                Width = 141
                Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                Caption = #218'ltimo Pre'#231'o de Compra:'
                FocusControl = dfUltPrecoCompra
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbGruposComissoes: TTS_Label
                Left = 201
                Top = 31
                Width = 104
                Cursor = crHandPoint
                Caption = 'Grupo de Comiss'#245'es:'
                FocusControl = cmbGruposComissoes
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkTo = 'FrmGruposComissoes'
                LinkToResult = 0
              end
              object lbIndexadores: TTS_Label
                Left = 17
                Top = 217
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de indexadores'
                Caption = 'Indexador:'
                FocusControl = cmbIndexador
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmIndexadores'
                LinkToResult = 0
              end
              object lblEstoqueVolumes: TTS_Label
                Left = 263
                Top = 98
                Width = 43
                Height = 13
                AutoSize = True
                Caption = 'Volumes:'
                FocusControl = dfEstoque_b
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbPrecoManual: TTS_Label
                Left = 246
                Top = 9
                Width = 110
                Caption = 'Prc. Consumidor:'
                FocusControl = dfComissao1
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Visible = False
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label57: TTS_Label
                Left = 19
                Top = 292
                Width = 116
                Height = 18
                Alignment = taLeftJustify
                Caption = 'Combustivel'
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
              object TS_Label81: TTS_Label
                Left = 27
                Top = 317
                Width = 101
                Height = 15
                Caption = 'C'#243'digo ANP:'
                FocusControl = dfCodANP
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label82: TTS_Label
                Left = 263
                Top = 317
                Width = 87
                Height = 15
                Caption = 'Registro CODIF:'
                FocusControl = TS_DBEdit7
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbTipoMateriaPrima: TTS_Label
                Left = 49
                Top = 355
                Width = 110
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de fabricantes'
                Caption = 'Tipo de Mat'#233'ria Prima:'
                FocusControl = cmbTipoMateriaPrima
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Visible = False
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkTo = 'FrmMateriasPrimasIndustria'
                LinkToResult = 0
              end
              object lblCodigoVenda: TTS_Label
                Left = 27
                Top = 235
                Width = 101
                Height = 15
                Caption = 'C'#243'digo de Venda:'
                FocusControl = dfCodANP
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object cmbGruposComissoes: TTS_DBLookupComboBox
                Left = 308
                Top = 29
                Width = 161
                TabOrder = 4
                DataField = 'lkGruposComissoes'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                ClearKey = 32
                LookupKeyValue = Null
                Height = 19
              end
              object TS_Panel1: TTS_Panel
                Left = 322
                Top = 219
                Width = 172
                Height = 49
                BevelOuter = bvNone
                Color = 9552605
                TabOrder = 22
                Visible = False
                Versoes = 'P,E'
              end
              object dfPrecoVenda1: TTS_DBEditNumber
                Tag = -2
                Left = 132
                Top = 6
                Width = 111
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderColor = 1522253
                TabOrder = 0
                DataField = 'PRECO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Precision = 18
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfComissao1: TTS_DBEditNumber
                Tag = -2
                Left = 130
                Top = 28
                Width = 68
                HelpContext = -2
                PopupMenu = ppmGrupo
                TabOrder = 2
                OnMouseDown = dfDescMax3MouseDown
                DataField = 'icComissao'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfComissao1Change
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
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                Height = 19
                StoredValues = 1
              end
              object dfDescMax1: TTS_DBEditNumber
                Tag = -2
                Left = 130
                Top = 49
                Width = 68
                HelpContext = -2
                PopupMenu = ppmGrupo
                TabOrder = 3
                OnMouseDown = dfDescMax3MouseDown
                DataField = 'icDescontoMaximo'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfDescMax1Change
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
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                Height = 19
                StoredValues = 1
              end
              object cmbFabricante: TTS_DBLookupComboBox
                Tag = -2
                Left = 130
                Top = 121
                Width = 189
                HelpContext = -2
                TabOrder = 8
                DataField = 'lkFabricante'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                Height = 19
              end
              object cbLockFabricante: TTS_CheckBox
                Left = 318
                Top = 120
                Width = 23
                Hint = 'Fixa o Fabricante para inclus'#245'es em s'#233'rie'
                HelpContext = -2
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 9
                TabStop = False
                OnChange = cbLockFabricanteChange
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
                  000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
                  C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
                  C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
                  0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
                  C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
                  0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                GlyphCount = 2
                TagStr = 'OffTab'
                Versoes = 'S,P,E'
                DisableEdit = False
                Height = 19
              end
              object cbLockUnidades: TTS_CheckBox
                Left = 267
                Top = 75
                Width = 23
                Hint = 'Fixa a Unidade para inclus'#245'es em s'#233'rie'
                HelpContext = -2
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 6
                TabStop = False
                OnChange = cbLockUnidadesChange
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
                  000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
                  C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
                  C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
                  0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
                  C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
                  0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                GlyphCount = 2
                DisableEdit = False
                Height = 19
              end
              object cmbUnidadeVarejo: TTS_DBLookupComboBox
                Tag = -2
                Left = 130
                Top = 251
                Width = 128
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 17
                OnEnter = cmbUnidadeEnter
                DataField = 'lkUnidadeVarejo'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 25
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'E'
                Height = 19
                StoredValues = 64
              end
              object cmbUnidadeCarga: TTS_DBLookupComboBox
                Tag = -2
                Left = 130
                Top = 269
                Width = 128
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 18
                OnEnter = cmbUnidadeEnter
                DataField = 'lkUnidadeCarga'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 25
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'E'
                Height = 19
                StoredValues = 64
              end
              object dfEstoque_b: TTS_DBEditNumber
                Tag = -2
                Left = 130
                Top = 95
                Width = 111
                HelpContext = -2
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                DataField = 'ESTOQUE'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                Height = 19
                StoredValues = 65
              end
              object cbLockFornecedor: TTS_CheckBox
                Left = 387
                Top = 141
                Width = 22
                Hint = 'Fixa o Fornecedor para inclus'#245'es em s'#233'rie'
                HelpContext = -2
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 11
                TabStop = False
                OnChange = cbLockFornecedorChange
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
                  000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
                  C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
                  C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
                  0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
                  C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
                  0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                GlyphCount = 2
                Versoes = 'S,P,E'
                DisableEdit = False
                Height = 19
              end
              object cmbUnidadeCompra: TTS_DBLookupComboBox
                Tag = -2
                Left = 130
                Top = 179
                Width = 129
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 13
                OnEnter = cmbUnidadeEnter
                DataField = 'lkUnidadeCompra'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 25
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'P,E'
                Height = 19
                StoredValues = 64
              end
              object TS_DBEdit2: TTS_DBEdit
                Tag = -2
                Left = 130
                Top = 197
                Width = 366
                HelpContext = -2
                TabOrder = 15
                DataField = 'DESCRICAOCOMPRA'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                NumericRange = nrAmbos
                Versoes = 'P,E'
                Height = 19
              end
              object dfFornPreferencia: TTS_DBEditFavorecido
                Tag = -2
                Left = 130
                Top = 161
                Width = 260
                Hint = 
                  'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
                  'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
                  ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
                  ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
                  #227'o'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonStyle = btsFlat
                TabOrder = 12
                DataField = 'NOMEFORNECPREFERENCIA'
                DataSource = DMItens.C_TabelaDS
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
                Versoes = 'P,E'
                SelecionarVarios = False
                WhereAdicional = 'or favorecido = -9'
                TipoFavorecido = 2
                C_Localizar = DMProjeto.C_LocalizarFav
                ID = 0
                ChaveEstrangeira = 'FORNECPREFERENCIA'
                Height = 19
                ExistButtons = True
              end
              object dfUltPrecoCompra: TTS_DBEditNumber
                Tag = -2
                Left = 405
                Top = 179
                Width = 91
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 14
                DataField = 'PRECOCOMPRA'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfUltForn1: TTS_DBEditFavorecido
                Tag = -2
                Left = 130
                Top = 140
                Width = 260
                Hint = 
                  'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
                  'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
                  ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
                  ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
                  #227'o'
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.ButtonStyle = btsFlat
                TabOrder = 10
                DataField = 'NOMEULTIMOFORNECEDOR'
                DataSource = DMItens.C_TabelaDS
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
                Versoes = 'P,E'
                SelecionarVarios = False
                WhereAdicional = 'or favorecido = -9'
                TipoFavorecido = 2
                C_Localizar = DMProjeto.C_LocalizarFav
                ID = 0
                ChaveEstrangeira = 'ULTIMOFORNECEDOR'
                Height = 19
                ExistButtons = True
              end
              object cbIdentificacao: TTS_DBCheckBox
                Left = 344
                Top = 234
                Width = 150
                Color = 9552605
                ParentColor = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 20
                TabStop = False
                Alignment = taRightJustify
                Caption = 'Controle de Identifica'#231#227'o'
                DataField = 'IDENTIFICACAO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                Versoes = 'P,E'
                DisableEdit = False
                Height = 19
                StoredValues = 1
              end
              object cbEncerrantes: TTS_DBCheckBox
                Left = 344
                Top = 220
                Width = 150
                Color = 9552605
                ParentColor = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 19
                TabStop = False
                Alignment = taRightJustify
                Caption = 'Controle de Encerrantes'
                DataField = 'ENCERRANTE'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                ValueChecked = 'S'
                ValueGrayed = 'N'
                ValueUnchecked = 'N'
                Versoes = 'P,E'
                DisableEdit = False
                Height = 18
                StoredValues = 1
              end
              object cbPosVenda: TTS_DBCheckBox
                Left = 327
                Top = 249
                Width = 167
                Color = 9552605
                ParentColor = False
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 21
                TabStop = False
                Alignment = taRightJustify
                Caption = 'Agendar Contato P'#243's-Venda'
                DataField = 'AGENDARCONTATO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                Versoes = 'P,E'
                DisableEdit = False
                Height = 19
                StoredValues = 1
              end
              object cmbUnidade: TTS_DBLookupComboBox
                Left = 130
                Top = 75
                Width = 138
                TabOrder = 5
                OnEnter = cmbUnidadeEnter
                DataField = 'lkUnidade'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                ClearKey = 32
                LookupKeyValue = Null
                Height = 19
              end
              object cmbIndexador: TTS_DBLookupComboBox
                Tag = -2
                Left = 130
                Top = 215
                Width = 128
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 16
                OnEnter = cmbUnidadeEnter
                DataField = 'lkIndexador'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 25
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'E'
                Height = 19
                StoredValues = 64
              end
              object pnTabelaPreco: TTS_Panel
                Left = 253
                Top = 123
                Width = 284
                Height = 116
                BevelOuter = bvNone
                Color = 9552605
                TabOrder = 1
                Visible = False
                Versoes = 'P,E'
                DesignSize = (
                  284
                  116)
                object TS_Label55: TTS_Label
                  Left = 2
                  Top = 3
                  Width = 74
                  Caption = 'Na Unidade:'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lbUnidade: TTS_DBTextEffect
                  Left = 79
                  Top = 3
                  Width = 140
                  Height = 14
                  DataField = 'lkUnidade'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  EditOffSet.x = 0
                  EditOffSet.y = 0
                  AllowEditOnClick = False
                  EditFont.Charset = DEFAULT_CHARSET
                  EditFont.Color = clWindowText
                  EditFont.Height = -11
                  EditFont.Name = 'MS Sans Serif'
                  EditFont.Style = []
                end
                object dbgTabelaPreco: TTS_QDBGrid
                  Tag = -2
                  Left = 3
                  Top = 19
                  Width = 278
                  Height = 95
                  HelpContext = -2
                  Bands = <
                    item
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'PRODUTOPRECO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  AutoSearchColor = 6611199
                  AutoSearchTextColor = clBlue
                  BandFont.Charset = DEFAULT_CHARSET
                  BandFont.Color = clWindowText
                  BandFont.Height = -11
                  BandFont.Name = 'MS Sans Serif'
                  BandFont.Style = []
                  DataSource = DMItens.C_ProdutosPrecoDS
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
                  OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                  PreviewFont.Charset = DEFAULT_CHARSET
                  PreviewFont.Color = clBlue
                  PreviewFont.Height = -11
                  PreviewFont.Name = 'MS Sans Serif'
                  PreviewFont.Style = []
                  OnColumnSorting = dbgTabelaPrecoColumnSorting
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  TS_PermitirQuantidade = False
                  TS_DescriptionCanChange = False
                  TS_GridMenuOptions = []
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
                  TS_SelectedColumn = 'lkTabelaPreco'
                  TS_ID = 0
                  TS_TipoDescricao = tdVenda
                  TS_SummaryFooterQtdText = 'Qtd. Geral:'
                  TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
                  object dbgTabelaPrecolkTabelaPreco: TdxDBGridColumn
                    Caption = 'Tabela Pre'#231'o'
                    DisableEditor = True
                    HeaderAlignment = taCenter
                    TabStop = False
                    Width = 73
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'lkTabelaPreco'
                  end
                  object dbgTabelaPrecoPRECO: TdxDBGridCalcColumn
                    Caption = 'Pre'#231'o'
                    HeaderAlignment = taCenter
                    Width = 54
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PRECO'
                  end
                  object dbgTabelaPrecoPRECOPROMOCAO: TdxDBGridColumn
                    Caption = 'Pre'#231'o Manual'
                    Width = 78
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PRECOPROMOCAO'
                  end
                  object dbgTabelaPrecoPRECOMANUAL: TdxDBGridColumn
                    HeaderAlignment = taCenter
                    Visible = False
                    Width = 160
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PRECOMANUAL'
                  end
                  object dbgTabelaPrecoTABELAPRECO: TdxDBGridColumn
                    HeaderAlignment = taCenter
                    Visible = False
                    Width = 156
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'TABELAPRECO'
                  end
                  object dbgTabelaPrecoicPrecoMinimo: TdxDBGridColumn
                    Caption = 'Desc. M'#225'ximo'
                    DisableEditor = True
                    HeaderAlignment = taCenter
                    TabStop = False
                    Width = 71
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'icPrecoMinimo'
                  end
                  object dbgTabelaPrecoPERCENTUAL: TdxDBGridColumn
                    Sorted = csUp
                    Visible = False
                    Width = 117
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PERCENTUAL'
                  end
                end
              end
              object dfEstoqueVolume: TTS_DBEditNumber
                Tag = -2
                Left = 308
                Top = 95
                Width = 111
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 23
                DataField = 'ESTOQUEVOLUME'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                Height = 19
                StoredValues = 65
              end
              object dfPrecoManual: TTS_DBEditNumber
                Tag = -2
                Left = 356
                Top = 6
                Width = 111
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderColor = 1522253
                TabOrder = 24
                Visible = False
                DataField = 'CUSTOMANUAL'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Precision = 18
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfCodANP: TTS_DBEdit
                Tag = -2
                Left = 130
                Top = 315
                Width = 130
                HelpContext = -2
                TabOrder = 25
                OnEnter = dfCodBarrasEnter
                OnExit = dfCodBarrasExit
                DataField = 'CODANP'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                Versoes = 'S,P,E'
                Height = 19
              end
              object TS_DBEdit7: TTS_DBEdit
                Tag = -2
                Left = 352
                Top = 315
                Width = 148
                HelpContext = -2
                TabOrder = 26
                OnEnter = dfCodBarrasEnter
                OnExit = dfCodBarrasExit
                DataField = 'CODIF'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                Versoes = 'S,P,E'
                Height = 19
              end
              object cbPesavel: TTS_DBCheckBox
                Left = 307
                Top = 73
                Width = 110
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 27
                Caption = 'Produto pes'#225'vel'
                DataField = 'PESAVEL'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esGeral
                ValueChecked = 'S'
                ValueGrayed = 'N'
                ValueUnchecked = 'N'
                NullStyle = nsUnchecked
                DisableEdit = False
                Height = 22
              end
              object cmbTipoMateriaPrima: TTS_DBLookupComboBox
                Tag = -2
                Left = 162
                Top = 353
                Width = 189
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 28
                Visible = False
                OnEnter = cmbUnidadeEnter
                DataField = 'lkMateriaPrima'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 25
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'E'
                Height = 19
                StoredValues = 64
              end
              object dfCodigoVenda: TTS_DBEdit
                Tag = -2
                Left = 130
                Top = 233
                Width = 127
                Hint = 
                  'Informar o c'#243'digo de venda a ser informado nas opera'#231#245'es de Sa'#237'd' +
                  'a de Mercadoria.'
                HelpContext = -2
                TabOrder = 29
                OnKeyPress = dfCodigoVendaKeyPress
                DataField = 'CODIGOVENDA'
                DataSource = DMItens.C_TabelaDS
                MaxLength = 14
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 2
              end
              object TS_DBCheckBox1: TTS_DBCheckBox
                Left = 307
                Top = 53
                Width = 134
                Hint = 
                  'Marque se o produto '#233' de fabrica'#231#227'o pr'#243'pria.'#13#10'Se estiver marcado' +
                  ', no SyncNFCe o CFOP emitido para esse produto ser'#225' 5101.'
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 30
                Caption = 'Fabrica'#231#227'o Pr'#243'pria'
                DataField = 'FABRICACAOPROPRIA'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esGeral
                ValueChecked = 'S'
                ValueGrayed = 'N'
                ValueUnchecked = 'N'
                NullStyle = nsUnchecked
                DisableEdit = False
                Height = 22
              end
            end
            object tsEstoque: TTS_TabSheet
              Tag = -1
              Hint = 'btEstoques'
              HelpContext = -1
              Caption = '1.Estoque'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'S,P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Shape10: TTS_Shape
                Left = 3
                Top = 18
                Width = 226
                Height = 157
                Brush.Style = bsClear
                Pen.Color = 9552605
                Shape = stRoundRect
                Versoes = 'S,P,E'
                Transparent = False
              end
              object TS_Label24: TTS_Label
                Left = 5
                Top = 93
                Width = 106
                Height = 17
                Caption = 'Estoque M'#237'nimo:'
                FocusControl = dfMinimo
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label25: TTS_Label
                Left = 7
                Top = 134
                Width = 104
                Height = 17
                Caption = 'Estoque M'#225'ximo:'
                FocusControl = dfMaximo
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label26: TTS_Label
                Left = 6
                Top = 114
                Width = 105
                Height = 16
                Caption = 'Ponto de Pedido:'
                FocusControl = dfPontoPedido
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lblEstoque1: TTS_Label
                Left = 4
                Top = 37
                Width = 107
                Height = 17
                Caption = 'Estoque Atual:'
                FocusControl = dfEstoque
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label28: TTS_Label
                Left = 1
                Top = 187
                Width = 110
                Caption = 'Valor do Estoque:'
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label75: TTS_Label
                Left = 653
                Top = 59
                Width = 88
                Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                Alignment = taLeftJustify
                Caption = '(pelo Custo M'#233'dio)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Visible = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label34: TTS_Label
                Left = 17
                Top = 209
                Width = 94
                Cursor = crHandPoint
                Caption = 'Localiza'#231#227'o:'
                FocusControl = cmbLocalizacao
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkTo = 'FrmLocalizacoes'
                LinkToResult = 0
              end
              object TS_Label10: TTS_Label
                Left = 277
                Top = 248
                Width = 118
                Height = 16
                Caption = 'Qtd '#218'ltima Comprada:'
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Shape9: TTS_Shape
                Left = 16
                Top = 4
                Width = 199
                Height = 28
                Brush.Color = 9552605
                Pen.Style = psClear
                Shape = stRoundRect
                Versoes = 'S,P,E'
                Transparent = False
              end
              object TS_Label41: TTS_Label
                Left = 38
                Top = 230
                Width = 73
                Caption = 'Peso Bruto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label42: TTS_Label
                Left = 38
                Top = 251
                Width = 73
                Caption = 'Peso L'#237'quido:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label35: TTS_Label
                Left = 252
                Top = 2
                Width = 120
                Alignment = taLeftJustify
                Caption = 'Tabela de Unidades:'
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbEstoquefiscal: TTS_Label
                Left = 6
                Top = 56
                Width = 107
                Height = 17
                Caption = 'Estoque Fiscal:'
                FocusControl = dfEstoque
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbDifEstoque: TTS_Label
                Left = 6
                Top = 75
                Width = 107
                Height = 17
                Caption = 'Dif. Estoque:'
                FocusControl = dfEstoque
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbGondolas: TTS_Label
                Left = 7
                Top = 153
                Width = 104
                Height = 17
                Caption = 'Estq. Min. Gondola:'
                FocusControl = dfMaximo
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfMinimo: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 92
                Width = 100
                HelpContext = -2
                TabOrder = 2
                DataField = 'QTDEMINIMO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfMaximo: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 132
                Width = 100
                HelpContext = -2
                TabOrder = 4
                DataField = 'QTDEMAXIMO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfPontoPedido: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 112
                Width = 100
                HelpContext = -2
                TabOrder = 3
                DataField = 'PONTOPEDIDO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfEstoque: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 35
                Width = 100
                HelpContext = -2
                Enabled = False
                TabOrder = 1
                DataField = 'ESTOQUE'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 65
              end
              object TS_DBEditNumber1: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 186
                Width = 100
                HelpContext = -2
                Color = 14019327
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                TabStop = False
                DataField = 'icValorEstoqueTotal'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = True
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 65
              end
              object dbgMultUnidade: TTS_QDBGrid
                Left = 233
                Top = 18
                Width = 400
                Height = 114
                Hint = 
                  'Unidade M'#237'nima '#233' menor unidade em que este produto pode ser come' +
                  'rcializado.'#13#10#13#10'Um pacote de biscoito a quantidade m'#237'nima seria p' +
                  'or unidade, porque n'#227'o faz sentido vender meio ou 1/4 de pacote ' +
                  'de biscoito.'#13#10'J'#225' Queijo a unidade m'#237'nima poderia ser gramas caso' +
                  ' voc'#234' venda menos que 1 kilo do produto; ou miligramas caso voc'#234 +
                  ' venda este produto nesta unidade.'
                Bands = <
                  item
                  end>
                DefaultLayout = False
                HeaderMinRowCount = 2
                HeaderPanelRowCount = 1
                KeyField = 'ITEMUNIDADE'
                SummaryGroups = <>
                SummarySeparator = '|'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = ppmUnidades
                TabOrder = 9
                OnExit = dbgMultUnidadeExit
                AutoSearchColor = clYellow
                AutoSearchTextColor = clNavy
                BandFont.Charset = DEFAULT_CHARSET
                BandFont.Color = clWindowText
                BandFont.Height = -11
                BandFont.Name = 'MS Sans Serif'
                BandFont.Style = []
                DataSource = DMItens.C_ItensUnidadesDS
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
                OptionsDB = [edgoCanAppend, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
                PreviewFont.Charset = DEFAULT_CHARSET
                PreviewFont.Color = clBlue
                PreviewFont.Height = -11
                PreviewFont.Name = 'MS Sans Serif'
                PreviewFont.Style = []
                TS_PermitirQuantidade = False
                Versoes = 'P,E'
                TS_DescriptionCanChange = False
                TS_GridMenuOptions = []
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
                TS_SelectedColumn = 'lkUnidade'
                TS_ID = 0
                TS_TipoDescricao = tdVenda
                TS_SummaryFooterQtdText = 'Qtd. Geral:'
                TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
                object dbgMultUnidadelkUnidade: TdxDBGridLookupColumn
                  Caption = 'Und'
                  HeaderAlignment = taCenter
                  Width = 43
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'lkUnidade'
                  DropDownWidth = 120
                end
                object dbgMultUnidadeFATOR: TdxDBGridMaskColumn
                  Alignment = taRightJustify
                  Caption = 'N'#176' vezes relat. a Und m'#237'n.'
                  HeaderAlignment = taCenter
                  Width = 51
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FATOR'
                end
                object dbgMultUnidadeUnidade: TdxDBGridColumn
                  DisableCustomizing = True
                  DisableDragging = True
                  DisableEditor = True
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 28
                  BandIndex = 0
                  RowIndex = 0
                  DisableGrouping = True
                  FieldName = 'UNIDADE'
                end
                object dbgMultUnidadePERCENTUAL: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Perc. Adic. %'
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 35
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PERCENTUAL'
                  DisplayFormat = ',0.00;,0.00'
                  Nullable = False
                end
                object dbgMultUnidadePRECOMANUAL: TdxDBGridCurrencyColumn
                  Alignment = taRightJustify
                  Caption = 'Pre'#231'o Manual'
                  HeaderAlignment = taCenter
                  Width = 47
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PRECOMANUAL'
                  Nullable = False
                end
                object dbgMultUnidadePERCENTUALMINIMO: TdxDBGridCurrencyColumn
                  Caption = 'Perc. M'#237'n. %'
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 43
                  BandIndex = 0
                  RowIndex = 0
                  HeaderMaxLineCount = 2
                  FieldName = 'PERCENTUALMINIMO'
                  DisplayFormat = ',0.00;-,0.00'
                  Nullable = False
                end
                object dbgMultUnidadeQTDEMBALAGEM: TdxDBGridColumn
                  Caption = 'Qtd. Emb.'
                  HeaderAlignment = taCenter
                  Visible = False
                  Width = 51
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'QTDEMBALAGEM'
                end
                object dbgMultUnidadelkTabelaPreco: TdxDBGridLookupColumn
                  Caption = 'Tab. Pre'#231'o'
                  HeaderAlignment = taCenter
                  Width = 62
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'lkTabelaPreco'
                  DropDownWidth = 120
                end
                object dbgMultUnidadeCODIGO: TdxDBGridMaskColumn
                  Caption = 'C'#243'digo'
                  HeaderAlignment = taCenter
                  Width = 66
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CODIGO'
                end
              end
              object gbControleValidade: TTS_GroupBox
                Left = 233
                Top = 136
                Width = 267
                Height = 105
                Caption = 'Controlar Validade '
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 10
                Versoes = 'P,E'
                object lblTempoMedioValidade: TTS_Label
                  Left = 7
                  Top = 61
                  Width = 97
                  Height = 26
                  Caption = 'Tempo M'#233'dio de Validade:'
                  FocusControl = dfTempoMedioValidade
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblTempoMedioValidadeDias: TTS_Label
                  Left = 169
                  Top = 68
                  Width = 53
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Alignment = taLeftJustify
                  Caption = '(em dias)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object cbControleValidade: TTS_DBCheckBox
                  Tag = -2
                  Left = 20
                  Top = 26
                  Width = 128
                  HelpContext = -2
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  Style.Shadow = False
                  TabOrder = 0
                  Caption = 'Ativar Controle'
                  DataField = 'CONTROLEVALIDADE'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  DisableEdit = False
                  Height = 20
                end
                object dfTempoMedioValidade: TTS_DBEditNumber
                  Left = 110
                  Top = 65
                  Width = 56
                  TabOrder = 1
                  DataField = 'TEMPOMEDIOVALIDADE'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
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
              object TS_DBEdit1: TTS_DBEdit
                Tag = -2
                Left = 397
                Top = 247
                Width = 103
                HelpContext = -2
                Color = 14019327
                TabOrder = 8
                TabStop = False
                DataField = 'ULTQTDECOMPRA'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = True
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object TS_DBLookupComboBox1: TTS_DBLookupComboBox
                Tag = -2
                Left = 51
                Top = 8
                Width = 138
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = 2118252
                TabOrder = 0
                DataField = 'lkUnidade'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
              end
              object TS_DBEditNumber13: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 249
                Width = 81
                HelpContext = -2
                TabOrder = 7
                DataField = 'PESOLIQUIDO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
              object TS_DBEditNumber14: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 228
                Width = 81
                HelpContext = -2
                TabOrder = 6
                DataField = 'PESOBRUTO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
              object cmbLocalizacao: TTS_DBLookupComboBox
                Left = 113
                Top = 207
                Width = 121
                TabOrder = 11
                DataField = 'lkLocalizacao'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                ClearKey = 32
                LookupKeyValue = Null
                Height = 19
              end
              object dfEstoqueFiscal: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 54
                Width = 100
                HelpContext = -2
                Enabled = False
                TabOrder = 12
                DataField = 'ESTOQUEFISCAL'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 65
              end
              object dfDifEstoque: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 73
                Width = 100
                HelpContext = -2
                Enabled = False
                TabOrder = 13
                DataField = 'icDIFESTOQUE'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 65
              end
              object pestoquefiscal: TTS_Panel
                Left = 35
                Top = 53
                Width = 182
                Height = 39
                BevelOuter = bvNone
                Caption = 'Para Atingir o Minimo'
                Color = 14019327
                Font.Charset = ANSI_CHARSET
                Font.Color = clHighlight
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 14
              end
              object dfGondolas: TTS_DBEditNumber
                Tag = -2
                Left = 113
                Top = 152
                Width = 100
                HelpContext = -2
                TabOrder = 15
                DataField = 'QTDMINGONDOLA'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
            end
            object tsFiscal: TTS_TabSheet
              Hint = 'btFiscal'
              Caption = #39
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Shape19: TTS_Shape
                Left = -1
                Top = 336
                Width = 133
                Height = 18
                Brush.Color = 9027548
                Pen.Style = psClear
                Shape = stRoundRect
                Transparent = False
              end
              object lbAliqICMS: TTS_Label
                Left = 26
                Top = 76
                Width = 103
                Caption = 'Aliquota de ICMS:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbTipoTributacao: TTS_Label
                Left = 25
                Top = 18
                Width = 104
                Cursor = crHandPoint
                Caption = 'Tipo Tributa'#231#227'o:'
                FocusControl = cmbTipoTributacao
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                TagStr = 'Tipo de Tributa'#231#227'o ICMS:;Mensagem:;Tipo Tributa'#231#227'o ICMS:'
                FormatoTabela = False
                LinkTo = 'FrmTipoTributacao'
                LinkToResult = 0
              end
              object lbCST: TTS_Label
                Left = 50
                Top = 38
                Width = 79
                Caption = 'CST:'
                FocusControl = cmbCST
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TagStr = 'C'#243'digo Situa'#231#227'o Tribut'#225'ria:;Mensagem:;CST:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbReducaoCST: TTS_Label
                Left = 217
                Top = 76
                Width = 56
                Caption = 'Redu'#231#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbTVA: TTS_Label
                Left = 25
                Top = 130
                Width = 103
                Caption = 'TVA Substitui'#231#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbTVAFonte: TTS_Label
                Left = 213
                Top = 130
                Width = 56
                Caption = 'TVA Fonte:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbNCM: TTS_Label
                Left = 357
                Top = 130
                Width = 54
                Caption = 'NCM:'
                FocusControl = dfNCM
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TagStr = 'Nomenclatura Merco-Sul:;Mensagem:;NCM:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Shape11: TTS_Shape
                Left = 3
                Top = 8
                Width = 494
                Height = 3
                Brush.Color = 9027548
                Pen.Style = psClear
                Transparent = False
              end
              object TS_Shape12: TTS_Shape
                Left = 3
                Top = 0
                Width = 133
                Height = 18
                Brush.Color = 9027548
                Pen.Style = psClear
                Shape = stRoundRect
                Transparent = False
              end
              object TS_Label48: TTS_Label
                Left = 5
                Top = 1
                Width = 116
                Height = 18
                Alignment = taLeftJustify
                Caption = 'Legisla'#231#227'o Fiscal'
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
              object TS_Shape13: TTS_Shape
                Left = 3
                Top = 102
                Width = 492
                Height = 3
                Brush.Color = 9027548
                Pen.Style = psClear
                Transparent = False
              end
              object TS_Shape14: TTS_Shape
                Left = 1
                Top = 93
                Width = 136
                Height = 18
                Brush.Color = 9027548
                Pen.Style = psClear
                Shape = stRoundRect
                Transparent = False
              end
              object TS_Label50: TTS_Label
                Left = 1
                Top = 95
                Width = 133
                Height = 18
                Alignment = taLeftJustify
                Caption = 'Substitui'#231#227'o Tribut'#225'ria'
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
              object TS_Label37: TTS_Label
                Left = 353
                Top = 77
                Width = 71
                Caption = 'Red. Entrada:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label44: TTS_Label
                Left = 24
                Top = 111
                Width = 108
                Caption = 'Mod. BC Substitui'#231#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbModBaseCalc: TTS_Label
                Left = 23
                Top = 56
                Width = 108
                Caption = 'Mod. Base Calc.:'
                FocusControl = cmbModBaseCalc
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TagStr = 'Mod. Base Calc ICMS:;Mensagem:;Mod. Base Calc. ICMS:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Shape16: TTS_Shape
                Left = 3
                Top = 198
                Width = 492
                Height = 3
                Brush.Color = 9027548
                Pen.Style = psClear
                Transparent = False
              end
              object TS_Shape17: TTS_Shape
                Left = 1
                Top = 189
                Width = 133
                Height = 18
                Brush.Color = 9027548
                Pen.Style = psClear
                Shape = stRoundRect
                Transparent = False
              end
              object TS_Label54: TTS_Label
                Left = 1
                Top = 190
                Width = 80
                Height = 18
                Alignment = taLeftJustify
                Caption = 'Imp. Federais'
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
              object TS_Shape18: TTS_Shape
                Left = 5
                Top = 346
                Width = 492
                Height = 3
                Brush.Color = 9027548
                Pen.Style = psClear
                Transparent = False
              end
              object TS_Label39: TTS_Label
                Left = 1
                Top = 338
                Width = 133
                Height = 18
                Alignment = taLeftJustify
                Caption = 'Mens. Nota Fiscal'
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
              object TS_Label66: TTS_Label
                Left = 37
                Top = 357
                Width = 95
                Cursor = crHandPoint
                Caption = 'Mens. Nota Fiscal:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                FormatoTabela = False
                LinkTo = 'FrmMensagensOperacoes'
                LinkToResult = 0
              end
              object lbMVA: TTS_Label
                Left = 20
                Top = 149
                Width = 108
                Caption = 'Classifica'#231#227'o MVA:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object lblCEST: TTS_Label
                Left = 93
                Top = 169
                Width = 35
                Hint = 'CEST - C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
                Caption = 'CEST:'
                FocusControl = dfNCM
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TagStr = 'Nomenclatura Merco-Sul:;Mensagem:;NCM:'
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfAliqICMS: TTS_DBEditNumber
                Left = 135
                Top = 74
                Width = 77
                HelpContext = -2
                TabOrder = 3
                OnMouseDown = cmbCSTMouseDown
                DataField = 'icAliqICMS'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfAliqICMSChange
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
              object cmbCST: TTS_DBLookupComboBox
                Left = 135
                Top = 35
                Width = 365
                HelpContext = -2
                TabOrder = 1
                OnMouseDown = cmbCSTMouseDown
                DataField = 'lkCST'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = cmbCSTChange
                DropDownRows = 15
                ClearKey = 32
                ListFieldName = 'CST;DESCRICAO'
                LookupKeyValue = Null
                Height = 19
              end
              object cmbTipoTributacao: TTS_DBLookupComboBox
                Left = 135
                Top = 16
                Width = 365
                HelpContext = -2
                TabOrder = 0
                OnMouseDown = cmbCSTMouseDown
                DataField = 'lkSitECF'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = cmbTipoTributacaoChange
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Height = 19
              end
              object dfReducaoCST: TTS_DBEditNumber
                Tag = -2
                Left = 275
                Top = 74
                Width = 78
                HelpContext = -2
                TabOrder = 4
                OnMouseDown = cmbCSTMouseDown
                DataField = 'icReducaoCST'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfReducaoCSTChange
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
              object dfTVA: TTS_DBEditNumber
                Tag = -2
                Left = 134
                Top = 128
                Width = 77
                HelpContext = -2
                TabOrder = 7
                OnMouseDown = cmbCSTMouseDown
                DataField = 'icTVA'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfTVAChange
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
              object dfTVAFonte: TTS_DBEditNumber
                Tag = -2
                Left = 278
                Top = 128
                Width = 77
                HelpContext = -2
                TabOrder = 8
                OnMouseDown = cmbCSTMouseDown
                DataField = 'icTVAFonte'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfTVAFonteChange
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
              object dfNCM: TTS_DBEdit
                Left = 410
                Top = 128
                Width = 89
                TabOrder = 9
                DataField = 'CLASFISCAL'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                Height = 19
              end
              object DBEdit14: TDBEdit
                Left = 325
                Top = 19
                Width = 12
                Height = 19
                DataField = 'icSituacaoECF'
                DataSource = DMItens.C_TabelaDS
                TabOrder = 10
                Visible = False
                OnChange = DBEdit14Change
              end
              object DBEdit5: TDBEdit
                Left = 325
                Top = 33
                Width = 12
                Height = 19
                DataField = 'icCST'
                DataSource = DMItens.C_TabelaDS
                TabOrder = 11
                Visible = False
                OnChange = DBEdit5Change
              end
              object DBEdit15: TDBEdit
                Left = 216
                Top = 34
                Width = 12
                Height = 19
                DataField = 'icAliqICMS'
                DataSource = DMItens.C_TabelaDS
                TabOrder = 12
                Visible = False
                OnChange = DBEdit6Change
              end
              object DBEdit16: TDBEdit
                Left = 348
                Top = 75
                Width = 12
                Height = 19
                DataField = 'icReducaoCST'
                DataSource = DMItens.C_TabelaDS
                TabOrder = 13
                Visible = False
                OnChange = DBEdit6Change
              end
              object DBEdit17: TDBEdit
                Left = 197
                Top = 127
                Width = 12
                Height = 19
                DataField = 'icTVA'
                DataSource = DMItens.C_TabelaDS
                TabOrder = 14
                Visible = False
                OnChange = DBEdit6Change
              end
              object DBEdit18: TDBEdit
                Left = 301
                Top = 129
                Width = 12
                Height = 19
                DataField = 'icTVAFonte'
                DataSource = DMItens.C_TabelaDS
                TabOrder = 15
                Visible = False
                OnChange = DBEdit6Change
              end
              object dfReducaoBase: TTS_DBEditNumber
                Tag = -2
                Left = 422
                Top = 74
                Width = 77
                HelpContext = -2
                TabOrder = 5
                DataField = 'REDUCAOCSTENTRADA'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
              object lcbModBaseCalcST: TTS_DBLookupComboBox
                Tag = -2
                Left = 134
                Top = 109
                Width = 365
                HelpContext = -2
                TabOrder = 6
                DataField = 'lkModaledadeICMSST'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object cmbModBaseCalc: TTS_DBLookupComboBox
                Left = 135
                Top = 54
                Width = 365
                HelpContext = -2
                TabOrder = 2
                DataField = 'lkModalidadeICMS'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object lcbMensagens: TTS_DBLookupComboBox
                Tag = -2
                Left = 135
                Top = 355
                Width = 365
                HelpContext = -2
                TabOrder = 16
                DataField = 'lkMensagem'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object pcImpFederais: TTS_PageControl
                Left = 2
                Top = 207
                Width = 497
                Height = 122
                ActivePage = tsIPI
                OwnerDraw = True
                TabIndex = 0
                TabOrder = 17
                TabFillGradient = False
                ActivePageIndex = 0
                Transparent = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = 14019327
                TabFont.Height = -8
                TabFont.Name = 'MS Sans Serif'
                TabFont.Style = []
                TabFontActive.Charset = DEFAULT_CHARSET
                TabFontActive.Color = clWindowText
                TabFontActive.Height = -11
                TabFontActive.Name = 'MS Sans Serif'
                TabFontActive.Style = []
                object tsIPI: TTS_TabSheet
                  Caption = 'IPI'
                  TabColor = clBtnFace
                  TabFontColor = clBlack
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  object TS_Label63: TTS_Label
                    Left = 4
                    Top = 7
                    Width = 85
                    Caption = 'CST IPI Sa'#237'da:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object lbIPICompra: TTS_Label
                    Left = 26
                    Top = 77
                    Width = 62
                    Caption = 'IPI Compra:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object lbIPIVenda: TTS_Label
                    Left = 14
                    Top = 28
                    Width = 75
                    Caption = 'IPI Venda:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object lblCodEnqIPIVenda: TTS_Label
                    Left = 193
                    Top = 28
                    Width = 113
                    Hint = 'C'#243'digo de Enquadramento de IPI Venda'
                    Alignment = taCenter
                    Caption = 'C'#243'd. Enq. IPI Venda:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object lblCSTIPIEntrada: TTS_Label
                    Left = 4
                    Top = 55
                    Width = 85
                    Caption = 'CST IPI Entrada:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object lblCodEnqIPICompra: TTS_Label
                    Left = 189
                    Top = 76
                    Width = 113
                    Hint = 'C'#243'digo de Enquadramento de IPI Compra'
                    Alignment = taCenter
                    Caption = 'C'#243'd. Enq. IPI Compra:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object cmbCSTIPI: TTS_DBLookupComboBox
                    Tag = -2
                    Left = 91
                    Top = 4
                    Width = 326
                    HelpContext = -2
                    TabOrder = 0
                    DataField = 'lkCSTSIPI'
                    DataSource = DMItens.C_TabelaDS
                    ReadOnly = False
                    StyleController = DMProjeto.esItens
                    DropDownRows = 15
                    ClearKey = 32
                    LookupKeyValue = Null
                    Versoes = 'S,P,E'
                    Height = 19
                    StoredValues = 64
                  end
                  object dfIPICompra: TTS_DBEditNumber
                    Tag = -2
                    Left = 91
                    Top = 75
                    Width = 78
                    HelpContext = -2
                    TabOrder = 1
                    DataField = 'IPICOMPRA'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                  object dfIPIVenda: TTS_DBEditNumber
                    Tag = -2
                    Left = 91
                    Top = 26
                    Width = 78
                    HelpContext = -2
                    TabOrder = 2
                    DataField = 'IPIVENDA'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                  object dfCodEnqIPIVenda: TTS_DBEdit
                    Left = 306
                    Top = 26
                    Width = 111
                    Hint = 'C'#243'digo de Enquadramento de IPI Venda'
                    TabOrder = 3
                    DataField = 'CENQIPIVENDA'
                    DataSource = DMItens.C_TabelaDS
                    MaxLength = 5
                    StyleController = DMProjeto.esItens
                    DistinctEditOn = False
                    Height = 19
                    StoredValues = 2
                  end
                  object cmbCSTsIPIEntrada: TTS_DBLookupComboBox
                    Tag = -2
                    Left = 91
                    Top = 52
                    Width = 327
                    HelpContext = -2
                    TabOrder = 4
                    DataField = 'lkCSTSIPIEntrada'
                    DataSource = DMItens.C_TabelaDS
                    ReadOnly = False
                    StyleController = DMProjeto.esItens
                    DropDownRows = 15
                    ClearKey = 32
                    LookupKeyValue = Null
                    Versoes = 'S,P,E'
                    Height = 19
                    StoredValues = 64
                  end
                  object dfCodEnqIPICompra: TTS_DBEdit
                    Left = 306
                    Top = 74
                    Width = 111
                    Hint = 'C'#243'digo de Enquadramento de IPI Compra'
                    TabOrder = 5
                    DataField = 'CENQIPICOMPRA'
                    DataSource = DMItens.C_TabelaDS
                    MaxLength = 5
                    StyleController = DMProjeto.esItens
                    DistinctEditOn = False
                    Height = 19
                    StoredValues = 2
                  end
                end
                object tsPisCofinsEntrada: TTS_TabSheet
                  Caption = 'PIS/COFINS Entrada'
                  TabColor = clBtnFace
                  TabFontColor = clBlack
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  object lbTipoTribFederal: TTS_Label
                    Left = 12
                    Top = 25
                    Width = 95
                    Caption = 'Tipo Trib. Federal:'
                    FocusControl = cmbTribFederal
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object lbCSTPisCofins: TTS_Label
                    Left = 12
                    Top = 48
                    Width = 95
                    Caption = 'CST Pis/Cofins:'
                    FocusControl = cmbCSTPISCOFINS
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_Label58: TTS_Label
                    Left = 12
                    Top = 70
                    Width = 95
                    Caption = 'Al'#237'q. PIS:'
                    FocusControl = cmbTribFederal
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_Label61: TTS_Label
                    Left = 200
                    Top = 70
                    Width = 71
                    Caption = 'Al'#237'q. COFINS:'
                    FocusControl = cmbTribFederal
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object DBCBpiscofins: TTS_DBCheckBox
                    Left = 108
                    Top = 2
                    Width = 257
                    Color = 14019327
                    ParentColor = False
                    Style.BorderStyle = xbsNone
                    Style.ButtonStyle = btsSimple
                    Style.HotTrack = False
                    TabOrder = 0
                    TabStop = False
                    Visible = False
                    Alignment = taLeftJustify
                    Caption = 'Este Produto Incide na B.C'#225'lc. do PIS/COFINS'
                    DataField = 'PISCOFINS'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
                    ValueChecked = 'S'
                    ValueUnchecked = 'N'
                    NullStyle = nsUnchecked
                    Versoes = 'P,E'
                    DisableEdit = False
                    Height = 19
                    StoredValues = 1
                  end
                  object cmbTribFederal: TTS_DBLookupComboBox
                    Tag = -2
                    Left = 111
                    Top = 22
                    Width = 184
                    HelpContext = -2
                    TabOrder = 1
                    Visible = False
                    DataField = 'IDTRIBFEDERAL'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
                    DropDownRows = 15
                    DropDownWidth = 400
                    ClearKey = 32
                    ListFieldName = 'DESCRICAO'
                    KeyFieldName = 'IDTRIBFEDERAL'
                    ListSource = DMItens.C_TribFederalDs
                    LookupKeyValue = Null
                    Height = 19
                  end
                  object cmbCSTPISCOFINS: TTS_DBLookupComboBox
                    Tag = -2
                    Left = 111
                    Top = 45
                    Width = 360
                    HelpContext = -2
                    TabOrder = 2
                    DataField = 'lkCSTPISCONFINS'
                    DataSource = DMItens.C_TabelaDS
                    ReadOnly = False
                    StyleController = DMProjeto.esItens
                    DropDownRows = 15
                    ClearKey = 32
                    LookupKeyValue = Null
                    Versoes = 'S,P,E'
                    Height = 19
                    StoredValues = 64
                  end
                  object dfAliqPis: TTS_DBEditNumber
                    Tag = -2
                    Left = 111
                    Top = 67
                    Width = 78
                    HelpContext = -2
                    TabOrder = 3
                    OnMouseDown = cmbCSTMouseDown
                    DataField = 'ALIQPIS'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                  object dfAliqCofins: TTS_DBEditNumber
                    Tag = -2
                    Left = 273
                    Top = 67
                    Width = 78
                    HelpContext = -2
                    TabOrder = 4
                    OnMouseDown = cmbCSTMouseDown
                    DataField = 'ALIQCOFINS'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                object tsPisCofinsSaida: TTS_TabSheet
                  Caption = 'PIS/COFINS SAIDA'
                  TabColor = clBtnFace
                  TabFontColor = clBlack
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  object TS_Label40: TTS_Label
                    Left = 9
                    Top = 7
                    Width = 95
                    Caption = 'CST Pis/Cofins:'
                    FocusControl = cmbCSTPISCOFINSSaida
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_Label47: TTS_Label
                    Left = 8
                    Top = 46
                    Width = 95
                    Caption = 'Aliq. PIS:'
                    FocusControl = cmbTribFederal
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_Label78: TTS_Label
                    Left = 196
                    Top = 46
                    Width = 71
                    Caption = 'Aliq. COFINS:'
                    FocusControl = cmbTribFederal
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_Label80: TTS_Label
                    Left = 9
                    Top = 25
                    Width = 95
                    Caption = 'Nat. Receita:'
                    FocusControl = cmbNaturezaReceira
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object cmbCSTPISCOFINSSaida: TTS_DBLookupComboBox
                    Tag = -2
                    Left = 108
                    Top = 4
                    Width = 360
                    HelpContext = -2
                    TabOrder = 0
                    DataField = 'lkCSTPISCOFINSSAIDA'
                    DataSource = DMItens.C_TabelaDS
                    ReadOnly = False
                    StyleController = DMProjeto.esItens
                    DropDownRows = 15
                    ClearKey = 32
                    LookupKeyValue = Null
                    Versoes = 'S,P,E'
                    Height = 19
                    StoredValues = 64
                  end
                  object dfAliqPisSaida: TTS_DBEditNumber
                    Tag = -2
                    Left = 107
                    Top = 43
                    Width = 78
                    HelpContext = -2
                    TabOrder = 1
                    OnMouseDown = cmbCSTMouseDown
                    DataField = 'ALIQPISSAIDA'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                  object dfAliqCofinsSaida: TTS_DBEditNumber
                    Tag = -2
                    Left = 269
                    Top = 43
                    Width = 78
                    HelpContext = -2
                    TabOrder = 2
                    OnMouseDown = cmbCSTMouseDown
                    DataField = 'ALIQCOFINSSAIDA'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                  object cmbNaturezaReceira: TTS_DBLookupComboBox
                    Tag = -2
                    Left = 108
                    Top = 23
                    Width = 360
                    HelpContext = -2
                    TabOrder = 3
                    DataField = 'lkNaturezaReceitaPisCofins'
                    DataSource = DMItens.C_TabelaDS
                    ReadOnly = False
                    StyleController = DMProjeto.esItens
                    DropDownRows = 15
                    ClearKey = 32
                    LookupKeyValue = Null
                    Versoes = 'S,P,E'
                    Height = 19
                    StoredValues = 64
                  end
                end
                object tsIRCS: TTS_TabSheet
                  Caption = 'I.R/C.S'
                  TabColor = clBtnFace
                  TabFontColor = clBlack
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  object TS_Label64: TTS_Label
                    Left = 25
                    Top = 20
                    Width = 71
                    Caption = 'Aliq. I.R.:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_Label67: TTS_Label
                    Left = 26
                    Top = 38
                    Width = 71
                    Caption = 'Aliq. C. Soc.:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object dfAliqIR: TTS_DBEditNumber
                    Tag = -2
                    Left = 99
                    Top = 15
                    Width = 78
                    HelpContext = -2
                    TabOrder = 0
                    OnMouseDown = cmbCSTMouseDown
                    DataField = 'ALIQIR'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
                  object dfAliqSS: TTS_DBEditNumber
                    Tag = -2
                    Left = 99
                    Top = 36
                    Width = 78
                    HelpContext = -2
                    TabOrder = 1
                    OnMouseDown = cmbCSTMouseDown
                    DataField = 'ALIQSS'
                    DataSource = DMItens.C_TabelaDS
                    StyleController = DMProjeto.esItens
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
              end
              object lcbMVA: TTS_DBLookupComboBox
                Tag = -2
                Left = 134
                Top = 147
                Width = 365
                HelpContext = -2
                TabOrder = 18
                DataField = 'lkMva'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object dfCEST: TTS_DBEdit
                Left = 134
                Top = 166
                Width = 89
                Hint = 'Digite o CEST (C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria)'
                TabOrder = 19
                DataField = 'CEST_OPC'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DistinctEditOn = False
                Height = 19
              end
            end
            object tsCalcPreco1: TTS_TabSheet
              Hint = 'btCalcPreco1'
              Caption = '3.C'#225'lculo do Pre'#231'o de Venda'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'S,P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object pnCalcPreco: TTS_Panel
                Left = 0
                Top = 0
                Width = 659
                Height = 426
                Align = alClient
                BevelOuter = bvNone
                Color = 14019327
                TabOrder = 0
                Versoes = 'P,E'
                object TS_Label86: TTS_Label
                  Left = -1
                  Top = 124
                  Width = 135
                  Cursor = crHandPoint
                  Caption = 'Encargos Cart'#245'es:'
                  Color = 9027548
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsUnderline]
                  ParentColor = False
                  ParentFont = False
                  OnClick = TS_Label77Click
                  FormatoTabela = False
                  LinkTo = 'FrmFatoresCustos'
                  LinkToResult = 0
                end
                object lbComissaoAplicada: TTS_Label
                  Left = -2
                  Top = 144
                  Width = 136
                  Caption = 'Comiss'#227'o Aplicada:'
                  Color = 9027548
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label77: TTS_Label
                  Left = 21
                  Top = 104
                  Width = 113
                  Cursor = crHandPoint
                  Caption = 'Despesas Fixas:'
                  Color = 9027548
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsUnderline]
                  ParentColor = False
                  ParentFont = False
                  OnClick = TS_Label77Click
                  FormatoTabela = False
                  LinkTo = 'FrmFatoresCustos'
                  LinkToResult = 0
                end
                object TS_Shape15: TTS_Shape
                  Left = 245
                  Top = 24
                  Width = 240
                  Height = 137
                  Brush.Color = 12315135
                  Pen.Color = 16744448
                  Shape = stRoundRect
                  Transparent = False
                end
                object TS_Shape33: TTS_Shape
                  Left = 139
                  Top = 229
                  Width = 88
                  Height = 17
                  Brush.Color = 14019327
                  Pen.Color = 9027548
                  Transparent = False
                end
                object TS_Shape32: TTS_Shape
                  Left = 139
                  Top = 250
                  Width = 88
                  Height = 17
                  Brush.Color = 14019327
                  Pen.Color = 8421631
                  Transparent = False
                end
                object lbCustoAdicional: TTS_Label
                  Left = 31
                  Top = 165
                  Width = 103
                  Caption = 'Custos Adicionais:'
                  Color = 9027548
                  FocusControl = dfCustoAdic
                  ParentColor = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lbLucro: TTS_Label
                  Left = 7
                  Top = 185
                  Width = 127
                  Caption = 'Percentual de Lucro:'
                  Color = 9027548
                  FocusControl = dfLucro
                  ParentColor = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label29: TTS_Label
                  Left = -3
                  Top = 4
                  Width = 137
                  Hint = 
                    'M'#233'dia ponderada do estoque do custo cont'#225'bil (Pre'#231'o de Compra + ' +
                    'IPI + Frete - ICMS)'
                  Caption = 'Custo M'#233'dio (C.M.):'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label46: TTS_Label
                  Left = -12
                  Top = 209
                  Width = 146
                  Caption = 'Pre'#231'o de Venda Calculado:'
                  Color = 9027548
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lbICMSAplicado: TTS_Label
                  Left = 8
                  Top = 64
                  Width = 126
                  Caption = 'ICMS de Venda:'
                  Color = 9027548
                  ParentColor = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label32: TTS_Label
                  Left = -13
                  Top = 230
                  Width = 147
                  Caption = 'Pre'#231'o com Desc. M'#225'ximo:'
                  Color = 9027548
                  FocusControl = dfLucro
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label45: TTS_Label
                  Left = -12
                  Top = 251
                  Width = 146
                  Caption = 'Menor Pre'#231'o de Venda:'
                  Color = 9027548
                  FocusControl = dfLucro
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_DBText8: TTS_DBText
                  Left = 143
                  Top = 251
                  Width = 81
                  Height = 14
                  Hint = 
                    #201' o pre'#231'o de empate.  Ao vender o Item neste pre'#231'o voc'#234' n'#227'o est'#225 +
                    ' tendo lucro, se vender abaixo estar'#225' tendo preju'#237'zo.'
                  Alignment = taRightJustify
                  DataField = 'icMenorPrecoVenda'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  AllowEditOnClick = False
                  EditFont.Charset = DEFAULT_CHARSET
                  EditFont.Color = clWindowText
                  EditFont.Height = -11
                  EditFont.Name = 'MS Sans Serif'
                  EditFont.Style = []
                  EditOffSet.x = 0
                  EditOffSet.y = 0
                end
                object TS_DBText9: TTS_DBText
                  Left = 143
                  Top = 230
                  Width = 81
                  Height = 14
                  Hint = 
                    'Pre'#231'o que o item ter'#225' ao ser aplicado o desconto M'#225'ximo que est'#225 +
                    ' configurado.'
                  Alignment = taRightJustify
                  DataField = 'icPrecoCalcDescMax'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  AllowEditOnClick = False
                  EditFont.Charset = DEFAULT_CHARSET
                  EditFont.Color = clWindowText
                  EditFont.Height = -11
                  EditFont.Name = 'MS Sans Serif'
                  EditFont.Style = []
                  EditOffSet.x = 0
                  EditOffSet.y = 0
                end
                object TS_Shape36: TTS_Shape
                  Left = 245
                  Top = 164
                  Width = 240
                  Height = 35
                  Brush.Color = 12315135
                  Pen.Color = 16744448
                  Shape = stRoundRect
                  Transparent = False
                end
                object TS_Label79: TTS_Label
                  Left = 248
                  Top = 165
                  Width = 50
                  Alignment = taLeftJustify
                  Caption = 'Fatores:'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_DBText12: TTS_DBText
                  Left = 304
                  Top = 180
                  Width = 52
                  Height = 14
                  Hint = 
                    'Dividindo o Custo M'#233'dio por este Fator voc'#234' encontrar'#225' o Pre'#231'o d' +
                    'e Venda Calculado'
                  DataField = 'icFator'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
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
                object imgPreco: TTS_Image
                  Left = 253
                  Top = 233
                  Width = 117
                  Height = 37
                  Center = True
                  ParentShowHint = False
                  Picture.Data = {
                    07544269746D6170360C0000424D360C00000000000036000000280000002000
                    0000200000000100180000000000000C0000C40E0000C40E0000000000000000
                    0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FF000000000000000000000000000000000000000000000000FF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
                    00000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
                    00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FFFF
                    00FFFF00FFFF00FF00000000FFFF00FFFF00000000000000FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00000000000000FFFF00FFFF00FFFF000000FF00FFFF
                    00FFFF00FFFF00FF00000000FFFF00000000FFFF00FFFF00000000000000FFFF
                    00FFFF00FFFF00000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00000000FFFF00FFFF00000000FFFF00FFFF000000FF00FFFF
                    00FFFF00FF00000000FFFF00FFFF00000000FFFF00FFFF00FFFF000000000000
                    00000000000000FFFF00FFFF00000000000000FFFF00FFFF00FFFF0000000000
                    0000000000FFFF00000000FFFF00FFFF00FFFF00000000FFFF00FFFF000000FF
                    00FFFF00FF0000007F7F7F7F7F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF00FFFF00000000FFFF00FF
                    FF00FFFF00000000FFFF00FFFF00FFFF00FFFF00FFFF7F7F7F7F7F7F000000FF
                    00FFFF00FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF
                    00FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7F007F7F007F7F00
                    7F7F007F7F007F7F0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7F007F7F
                    007F7F007F7F007F7F007F7F0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    000000000000FFFF00FFFF00FFFF00FFFF00FFFF7F7F0000FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF7F7F0000FFFF00FFFF00FFFF00FFFF7F7F0000FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF7F7F0000FFFF00FFFF00FFFF00FFFF00FFFF00
                    000000000000FFFF00FFFF00FFFF00FFFF7F7F0000FFFF00FFFF7F00007F0000
                    7F00007F000000FFFF00FFFF7F7F0000FFFF00FFFF7F7F0000FFFF00FFFF7F00
                    007F00007F00007F000000FFFF00FFFF7F7F0000FFFF00FFFF00FFFF00FFFF00
                    000000000000FFFF00FFFF00FFFF7F7F0000FFFF00FFFF7F0000FFFF00FFFF00
                    FFFF00FFFF007F000000FFFF00FFFF00FFFF7F7F0000FFFF00FFFF7F0000FFFF
                    00FFFF00FFFF00FFFF007F000000FFFF00FFFF7F7F0000FFFF00FFFF00FFFF00
                    000000000000FFFF00FFFF7F7F0000FFFF00FFFF7F0000FFFF000000FFFF00FF
                    0000FFFF00FFFFFF007F000000FFFF7F7F0000FFFF00FFFF7F0000FFFF00FF00
                    FF0000FFFF00FF0000FFFFFF007F000000FFFF00FFFF7F7F0000FFFF00FFFF00
                    000000000000FFFF00FFFF7F7F0000FFFF7F0000FFFF000000FFFF00FF0000FF
                    FF00FF0000FFFF00FFFFFF007F000000FFFF7F7F007F0000FFFF00FF00FF0000
                    FFFF00FF0000FFFF00FF0000FFFFFF007F000000FFFF7F7F0000FFFF00FFFF00
                    000000000000FFFF00FFFF7F7F0000FFFF7F0000FFFF00FF00FF0000FFFFFF00
                    FFFF00FF00FF0000FFFFFF007F00007F7F0000FFFF7F0000FFFF000000FFFF00
                    FFFFFF00FFFF000000FFFF00FFFFFF007F000000FFFF7F7F0000FFFF00FFFF00
                    0000FF00FF00000000FFFF7F7F0000FFFF7F0000FFFF000000FFFF00FFFFFF00
                    FFFF000000FFFF00FFFFFF007F000000FFFF7F7F007F0000FFFF00FF00FF0000
                    FFFFFF00FFFF00FF00FF0000FFFFFF007F000000FFFF7F7F0000FFFF000000FF
                    00FFFF00FF00000000FFFF7F7F0000FFFF7F0000FFFF00FF00FF0000FFFF00FF
                    0000FFFF00FF0000FFFFFF007F00007F7F0000FFFF7F0000FFFF000000FFFF00
                    FF0000FFFF00FF0000FFFF00FFFFFF007F000000FFFF7F7F0000FFFF000000FF
                    00FFFF00FF00000000FFFF7F7F0000FFFF00FFFF7F0000FFFF00FF00FF0000FF
                    FF00FF0000FFFFFF007F000000FFFF00FFFF7F7F0000FFFF7F0000FFFF000000
                    FFFF00FF0000FFFF00FFFFFF007F000000FFFF00FFFF7F7F0000FFFF000000FF
                    00FFFF00FFFF00FF00000000FFFF7F7F0000FFFF00FFFF7F0000FFFF00FFFF00
                    FFFF00FFFF007F000000FFFF00FFFF7F7F0000FFFF00FFFF00FFFF7F0000FFFF
                    00FFFF00FFFF00FFFF007F000000FFFF00FFFF7F7F0000FFFF000000FF00FFFF
                    00FFFF00FFFF00FF00000000FFFF00FFFF7F7F0000FFFF00FFFF7F00007F0000
                    7F00007F000000FFFF00FFFF7F7F0000FFFF00FFFF7F7F0000FFFF00FFFF7F00
                    007F00007F00007F000000FFFF00FFFF7F7F0000FFFF00FFFF000000FF00FFFF
                    00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF7F7F0000FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF7F7F0000FFFF00FFFF00FFFF00FFFF7F7F0000FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF7F7F0000FFFF00FFFF000000FF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF7F7F007F7F007F7F00
                    7F7F007F7F007F7F0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF7F7F007F7F
                    007F7F007F7F007F7F007F7F0000FFFF00FFFF000000FF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
                    00000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
                    00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    FF00FFFF00FF000000000000000000000000000000000000000000000000FF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FF}
                  ShowHint = True
                  Transparent = True
                end
                object TS_DBText21: TTS_DBText
                  Left = 420
                  Top = 180
                  Width = 52
                  Height = 14
                  Hint = 
                    'Multiplicando o Custo M'#233'dio por este Fator voc'#234' obtem o Pre'#231'o de' +
                    ' Venda Calculado.'
                  DataField = 'icFatorMult'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
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
                object dxfLabel1: TdxfLabel
                  Left = 263
                  Top = 179
                  Width = 40
                  Height = 14
                  AutoSize = False
                  Caption = 'C.M.  /'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Style = dxfNormal
                  Angle = 0
                  Effect3D.Style = dxfCool
                  Effect3D.Orientation = dxfRightBottom
                  Effect3D.Depth = 0
                  Effect3D.ShadowedColor = clGray
                  PenWidth = 1
                end
                object dxfLabel2: TdxfLabel
                  Left = 381
                  Top = 179
                  Width = 37
                  Height = 14
                  AutoSize = False
                  Caption = 'C.M.  x'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Style = dxfNormal
                  Angle = 0
                  Effect3D.Style = dxfCool
                  Effect3D.Orientation = dxfRightBottom
                  Effect3D.Depth = 0
                  Effect3D.ShadowedColor = clGray
                  PenWidth = 1
                end
                object TS_Label43: TTS_Label
                  Left = -6
                  Top = 24
                  Width = 140
                  Caption = 'Compensa'#231#227'o de Custo:'
                  Color = 9027548
                  ParentColor = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lbUltPrecoCompra: TTS_Label
                  Left = 249
                  Top = 44
                  Width = 127
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Caption = #218'ltimo Pre'#231'o de Compra:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label49: TTS_Label
                  Left = 251
                  Top = 110
                  Width = 127
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Caption = 'Data '#218'ltima Compra:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label7: TTS_Label
                  Left = 232
                  Top = 6
                  Width = 133
                  Height = 13
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Alignment = taLeftJustify
                  Caption = 'em (                                    )'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label13: TTS_Label
                  Left = 379
                  Top = 30
                  Width = 97
                  Height = 13
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Alignment = taLeftJustify
                  Caption = '(                              )'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_DBText1: TTS_DBText
                  Left = 252
                  Top = 7
                  Width = 106
                  Height = 12
                  Alignment = taCenter
                  DataField = 'lkUnidade'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  AllowEditOnClick = False
                  EditFont.Charset = DEFAULT_CHARSET
                  EditFont.Color = clWindowText
                  EditFont.Height = -11
                  EditFont.Name = 'MS Sans Serif'
                  EditFont.Style = []
                  EditOffSet.x = 0
                  EditOffSet.y = 0
                end
                object TS_DBText2: TTS_DBText
                  Left = 383
                  Top = 30
                  Width = 88
                  Height = 12
                  Hint = 
                    'Representa o percentual de comiss'#227'o que estar'#225' sendo aplicado ao' +
                    ' '#237'tem'
                  Alignment = taCenter
                  DataField = 'lkUnidade'
                  DataSource = DMItens.C_TabelaDS
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -9
                  Font.Name = 'Tahoma'
                  Font.Style = []
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
                object TS_Label51: TTS_Label
                  Left = 23
                  Top = 44
                  Width = 113
                  Cursor = crHandPoint
                  Caption = 'Impostos Federais:'
                  Color = 9027548
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsUnderline]
                  ParentColor = False
                  ParentFont = False
                  OnClick = TS_Label77Click
                  FormatoTabela = False
                  LinkTo = 'FrmFatoresCustos'
                  LinkToResult = 0
                end
                object TS_Label52: TTS_Label
                  Left = 249
                  Top = 68
                  Width = 127
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Caption = #218'ltimo Custo Cont'#225'bil:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_SpeedButton1: TTS_SpeedButton
                  Left = 292
                  Top = 130
                  Width = 155
                  Height = 27
                  BiDiMode = bdLeftToRight
                  Caption = 'Forma'#231#227'o de Custo'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    76060000424D7606000000000000360400002800000018000000180000000100
                    08000000000040020000D30E0000D30E00000001000000010000EF9C2100F7A5
                    5A00636B6B00FFB56B008C8C8C00949494009C9C94009C9C9C00A5A5A500ADAD
                    AD00ADB5B500B5B5B500296BC600527BC600D6D6D600DEDEDE00397BE700E7E7
                    E700317BEF00EFEFEF000073F700F7F7F700FF00FF00007BFF00008CFF000094
                    FF00009CFF0000A5FF0039A5FF0052A5FF005AA5FF0000ADFF0029ADFF0000B5
                    FF0008BDFF0010BDFF0000C6FF0008C6FF0018CEFF0000D6FF0010D6FF0031D6
                    FF0000DEFF0042DEFF0039E7FF0000EFFF0039EFFF004AEFFF0000F7FF0008F7
                    FF0031F7FF0042F7FF0000FFFF0008FFFF0018FFFF0021FFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00161616161616
                    1616161616161616161616161616161616161616160202020202020202020202
                    0202020202021616161616161604383838383838383838383838383838041616
                    161616161605380303030303030303030303030338051616161616161605380D
                    3838033838033838033838033805161616161616160538120D0C033838033838
                    0338380338051616161616161605381017140D03030303030303030338051616
                    16161616160538011A18180D3801383801383801380516161616161616063801
                    382118190D0D383801383801380616161616161616073801010121251A1A0D01
                    0101010138071616161616161608380038380021221F1A0D0038380038081616
                    16161616160815000D0D0D243532231F0D0D1500150816161616161616081500
                    20242D3030342F261B0D00001508161616161616160913001C242D302D2A3434
                    2E250D0013091616161616161609110011252C2F3336343435370D0011091616
                    16161616160911000000002931343027210D00001109161616161616160A0F0F
                    0F0F0F0F0F29302D1F1B0D0F0F0A161616161616160B0E0E0E0E0E0E0E0E0E29
                    2B281E0D0E0B161616161616160B0E0E0E0E0E0E0E0E0E0E0E291D0D0E0B1616
                    16161616160B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B16161616161616161616
                    1616161616161616161616161616161616161616161616161616161616161616
                    1616161616161616161616161616161616161616161616161616161616161616
                    1616161616161616161616161616161616161616161616161616}
                  Layout = blGlyphRight
                  ParentFont = False
                  ParentBiDiMode = False
                  OnClick = TS_SpeedButton1Click
                  RepeatedClick = False
                  Border = True
                end
                object lbIPIAplicado: TTS_Label
                  Left = 8
                  Top = 84
                  Width = 126
                  Caption = 'IPI para Venda:'
                  Color = 9027548
                  ParentColor = False
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label21: TTS_Label
                  Left = 248
                  Top = 89
                  Width = 127
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Caption = 'Custo Manual:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_DBEditNumber7: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 142
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 7
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icComissaoAplic'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object TS_DBEditNumber6: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 122
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 6
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icEncargosCartoes'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object TS_DBEditNumber5: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 102
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 5
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icDespesaFixa'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object dfLucro: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 183
                  Width = 92
                  Hint = 
                    #201' o percentual de lucro que se deseja ter sobre as vendas do Ite' +
                    'm.'
                  HelpContext = -2
                  PopupMenu = ppmGrupo
                  TabOrder = 9
                  OnExit = dfLucroExit
                  OnMouseDown = dfDescMax3MouseDown
                  DataField = 'icFATORLUCRO'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
                  OnChange = dfLucroChange
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
                  NumericRange = nrAmbos
                  Height = 19
                  StoredValues = 1
                end
                object dfCustoAdic: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 163
                  Width = 92
                  Hint = 
                    'Serve para informar algum custo percentual que o  item possua a ' +
                    'mais.'
                  HelpContext = -2
                  PopupMenu = ppmGrupo
                  TabOrder = 8
                  OnMouseDown = dfDescMax3MouseDown
                  DataField = 'icCustoDepesas'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
                  OnChange = dfCustoAdicChange
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
                object DBEdit1: TDBEdit
                  Left = 489
                  Top = 109
                  Width = 10
                  Height = 19
                  DataField = 'icPrecoCalc'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 16
                  Visible = False
                  OnChange = DBEdit1Change
                end
                object dfPrecoCalc: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 207
                  Width = 92
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 10
                  OnExit = dfPrecoCalcExit
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icPrecoCalc'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
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
                object DBEdit3: TDBEdit
                  Left = 252
                  Top = 253
                  Width = 6
                  Height = 19
                  DataField = 'icComissaoAplic'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 17
                  Visible = False
                  OnChange = DBEdit6Change
                end
                object DBEdit6: TDBEdit
                  Left = 264
                  Top = 247
                  Width = 5
                  Height = 19
                  DataField = 'icCustoDepesas'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 15
                  Visible = False
                  OnChange = DBEdit6Change
                end
                object DBEdit7: TDBEdit
                  Left = 253
                  Top = 238
                  Width = 8
                  Height = 19
                  DataField = 'icFatorLucro'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 18
                  Visible = False
                  OnChange = DBEdit6Change
                end
                object DBEdit8: TDBEdit
                  Left = 487
                  Top = 59
                  Width = 6
                  Height = 19
                  DataField = 'PRECO'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 19
                  Visible = False
                  OnChange = DBEdit1Change
                end
                object DBEdit9: TDBEdit
                  Left = 491
                  Top = 135
                  Width = 6
                  Height = 19
                  DataField = 'icPrecoCalcDescMax'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 20
                  Visible = False
                  OnChange = DBEdit9Change
                end
                object dfDataCompra: TTS_DBEditDate
                  Left = 377
                  Top = 108
                  Width = 99
                  Color = 14019327
                  TabOrder = 13
                  TabStop = False
                  DataField = 'ULTIMACOMPRA'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 64
                end
                object pnAtualizarPreco: TTS_Panel
                  Left = 244
                  Top = 199
                  Width = 240
                  Height = 35
                  BevelOuter = bvNone
                  Color = 14019327
                  TabOrder = 14
                  Visible = False
                  object btAtualizarPreco: TTS_SpeedButton
                    Left = 9
                    Top = 8
                    Width = 118
                    Height = 22
                    Caption = 'Atualizar Pre'#231'o'
                    Glyph.Data = {
                      DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                      0400000000006800000000000000000000001000000010000000000000000000
                      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                      7000777707707777700077770070077770007777060060777000000006606607
                      7000066666660660700006666666606600000666666606607000000006606607
                      7000777706006077700077770070077770007777077077777000777777777777
                      7000}
                    Layout = blGlyphRight
                    OnClick = btAtualizarPrecoClick
                    RepeatedClick = False
                    Border = True
                  end
                  object TS_Label15: TTS_Label
                    Left = 134
                    Top = 0
                    Width = 99
                    Height = 13
                    Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                    Alignment = taCenter
                    Caption = 'Pre'#231'o de Venda Atual'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    FormatoTabela = False
                    LinkToResult = 0
                  end
                  object TS_DBEditNumber2: TTS_DBEditNumber
                    Tag = -2
                    Left = 134
                    Top = 12
                    Width = 98
                    Hint = 
                      #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                      'ais acima informados.'
                    HelpContext = -2
                    Color = 14019327
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Style.ButtonTransparence = ebtHideInactive
                    Style.HotTrack = False
                    TabOrder = 0
                    OnKeyPress = dfPrecoCalcKeyPress
                    DataField = 'PRECO'
                    DataSource = DMItens.C_TabelaDS
                    ReadOnly = True
                    StyleController = DMProjeto.esItens
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
                    StoredValues = 65
                  end
                end
                object TS_DBEditNumber3: TTS_DBEditNumber
                  Tag = -2
                  Left = 138
                  Top = 0
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 0
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icCusto'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object dfCompensaCusto: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 22
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtAlways
                  Style.HotTrack = False
                  TabOrder = 1
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'COMPENSACUSTO'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object DBEdit10: TDBEdit
                  Left = 235
                  Top = 247
                  Width = 12
                  Height = 19
                  DataField = 'icDescontoMaximo'
                  DataSource = DMItens.C_TabelaDS
                  TabOrder = 21
                  Visible = False
                  OnChange = DBEdit6Change
                end
                object TS_DBEditNumber17: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 42
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 2
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icImpostosFederais'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object dfICMSAplicado: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 62
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 3
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'icICMSAplicado'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object TS_DBEditNumber19: TTS_DBEditNumber
                  Tag = -2
                  Left = 377
                  Top = 66
                  Width = 98
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 12
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'CUSTOCONTABIL'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object TS_DBEditNumber20: TTS_DBEditNumber
                  Tag = -2
                  Left = 377
                  Top = 44
                  Width = 98
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 11
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'PRECOCOMPRA'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object dfIPIAplicado: TTS_DBEditNumber
                  Tag = -2
                  Left = 137
                  Top = 82
                  Width = 91
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 4
                  TabStop = False
                  OnDblClick = TS_DBEditNumber3DblClick
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'IPIVENDA'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = True
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
                object dfCUSTOMANUAL: TTS_DBEditNumber
                  Tag = -2
                  Left = 377
                  Top = 87
                  Width = 98
                  Hint = 
                    #201' o preco de Venda calculado pela aplica'#231#227'o de todos os percentu' +
                    'ais acima informados.'
                  HelpContext = -2
                  Color = 14019327
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonTransparence = ebtHideInactive
                  Style.HotTrack = False
                  TabOrder = 22
                  TabStop = False
                  OnKeyPress = dfPrecoCalcKeyPress
                  DataField = 'CUSTOMANUAL'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
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
                  StoredValues = 65
                end
              end
            end
            object tsCustomizados1: TTS_TabSheet
              Hint = 'btCustom'
              Caption = 'Customizados'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object pnCustomizados: TTS_Panel
                Left = 0
                Top = 0
                Width = 659
                Height = 426
                Align = alClient
                BevelOuter = bvNone
                Color = 14019327
                TabOrder = 0
                Versoes = 'S,P,E'
                object lblCampo1: TTS_Label
                  Left = -2
                  Top = 8
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo2: TTS_Label
                  Left = -2
                  Top = 30
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo3: TTS_Label
                  Left = -2
                  Top = 53
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo4: TTS_Label
                  Left = -2
                  Top = 75
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo5: TTS_Label
                  Left = -1
                  Top = 97
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo6: TTS_Label
                  Left = -2
                  Top = 120
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo7: TTS_Label
                  Left = -2
                  Top = 143
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo8: TTS_Label
                  Left = -2
                  Top = 165
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo9: TTS_Label
                  Left = -2
                  Top = 188
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object lblCampo10: TTS_Label
                  Left = -2
                  Top = 211
                  Width = 122
                  Caption = 'lblCampo1'
                  Visible = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object btDefinirCampos: TTS_SpeedButton
                  Left = 381
                  Top = 220
                  Width = 120
                  Height = 47
                  Caption = '&Definir Campos'
                  Glyph.Data = {
                    66010000424D6601000000000000760000002800000014000000140000000100
                    040000000000F000000000000000000000001000000000000000000000000000
                    BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    77777777000077777777777777777777000077777771171177777777000078FF
                    FFFFF1FFFFFFFFF70000780000000100000000F70000780FFFFFF1FFFFFFF0F7
                    0000780FFFFFF1FFFFFFF0F70000780FCCCCF1FCCCCFF0F70000780FCFCCF1FC
                    CFCCF0F70000780FCCCCF1FCCFCCF0F70000780FFFCCF1FCCFCCF0F70000780F
                    CCCFF1FCCCCFF0F70000780FFFFFF1FCCFFFF0F70000780FFFFFF1FCCFFFF0F7
                    0000780FFFFFF1FFFFFFF0F70000780000000100000000F70000788888888188
                    8888888700007777777117117777777700007777777777777777777700007777
                    77777777777777770000}
                  OnClick = btDefinirCamposClick
                  Versoes = 'S,P,E'
                  RepeatedClick = False
                  Border = True
                end
                object dfCampo1: TTS_DBEdit
                  Left = 122
                  Top = 6
                  Width = 251
                  TabOrder = 0
                  Visible = False
                  DataField = 'CAMPO01'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo2: TTS_DBEdit
                  Left = 122
                  Top = 28
                  Width = 251
                  TabOrder = 1
                  Visible = False
                  DataField = 'CAMPO02'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo3: TTS_DBEdit
                  Left = 122
                  Top = 50
                  Width = 251
                  TabOrder = 2
                  Visible = False
                  DataField = 'CAMPO03'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo4: TTS_DBEdit
                  Left = 122
                  Top = 73
                  Width = 251
                  TabOrder = 3
                  Visible = False
                  DataField = 'CAMPO04'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo5: TTS_DBEdit
                  Left = 122
                  Top = 95
                  Width = 251
                  TabOrder = 4
                  Visible = False
                  DataField = 'CAMPO05'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo6: TTS_DBEdit
                  Left = 122
                  Top = 118
                  Width = 251
                  TabOrder = 5
                  Visible = False
                  DataField = 'CAMPO06'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo7: TTS_DBEdit
                  Left = 122
                  Top = 141
                  Width = 251
                  TabOrder = 6
                  Visible = False
                  DataField = 'CAMPO07'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo8: TTS_DBEdit
                  Left = 122
                  Top = 163
                  Width = 251
                  TabOrder = 7
                  Visible = False
                  DataField = 'CAMPO08'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo9: TTS_DBEdit
                  Left = 122
                  Top = 186
                  Width = 251
                  TabOrder = 8
                  Visible = False
                  DataField = 'CAMPO09'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object dfCampo10: TTS_DBEdit
                  Left = 122
                  Top = 209
                  Width = 251
                  TabOrder = 9
                  Visible = False
                  DataField = 'CAMPO10'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cbCampo1: TTS_DBCheckBox
                  Left = 122
                  Top = 6
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 10
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO01'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo2: TTS_DBCheckBox
                  Left = 122
                  Top = 28
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 11
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO02'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo3: TTS_DBCheckBox
                  Left = 122
                  Top = 50
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 12
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO03'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo4: TTS_DBCheckBox
                  Left = 122
                  Top = 73
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 13
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO04'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo5: TTS_DBCheckBox
                  Left = 122
                  Top = 95
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 14
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO05'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo6: TTS_DBCheckBox
                  Left = 122
                  Top = 118
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 15
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO06'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo7: TTS_DBCheckBox
                  Left = 122
                  Top = 141
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 16
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO07'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo8: TTS_DBCheckBox
                  Left = 122
                  Top = 163
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 17
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO08'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo9: TTS_DBCheckBox
                  Left = 122
                  Top = 186
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 18
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO09'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cbCampo10: TTS_DBCheckBox
                  Left = 122
                  Top = 209
                  Width = 251
                  Color = 14019327
                  ParentColor = False
                  Style.BorderStyle = xbsNone
                  Style.ButtonStyle = btsSimple
                  Style.HotTrack = False
                  TabOrder = 19
                  Visible = False
                  Caption = 'cbCampo1'
                  DataField = 'CAMPO10'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  Versoes = 'S,P,E'
                  DisableEdit = False
                  Height = 17
                  StoredValues = 64
                end
                object cmbCampo1: TTS_DBComboBox
                  Left = 122
                  Top = 6
                  Width = 251
                  TabOrder = 20
                  DataField = 'CAMPO01'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo2: TTS_DBComboBox
                  Left = 122
                  Top = 28
                  Width = 251
                  TabOrder = 21
                  DataField = 'CAMPO02'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo3: TTS_DBComboBox
                  Left = 122
                  Top = 50
                  Width = 252
                  TabOrder = 22
                  DataField = 'CAMPO03'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo4: TTS_DBComboBox
                  Left = 122
                  Top = 73
                  Width = 251
                  TabOrder = 23
                  DataField = 'CAMPO04'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo5: TTS_DBComboBox
                  Left = 122
                  Top = 95
                  Width = 251
                  TabOrder = 24
                  DataField = 'CAMPO05'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo6: TTS_DBComboBox
                  Left = 122
                  Top = 118
                  Width = 251
                  TabOrder = 25
                  DataField = 'CAMPO06'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo7: TTS_DBComboBox
                  Left = 122
                  Top = 141
                  Width = 251
                  TabOrder = 26
                  DataField = 'CAMPO07'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo8: TTS_DBComboBox
                  Left = 122
                  Top = 163
                  Width = 251
                  TabOrder = 27
                  DataField = 'CAMPO08'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo9: TTS_DBComboBox
                  Left = 122
                  Top = 186
                  Width = 251
                  TabOrder = 28
                  DataField = 'CAMPO09'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
                object cmbCampo10: TTS_DBComboBox
                  Left = 122
                  Top = 209
                  Width = 251
                  TabOrder = 29
                  DataField = 'CAMPO10'
                  DataSource = DMItens.C_TabelaDS
                  ReadOnly = False
                  StyleController = DMProjeto.esItens
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 64
                end
              end
            end
            object tsContabilidade1: TTS_TabSheet
              Hint = 'btContabilidade1'
              Caption = '4.Contabilidade'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object lblContaReceita: TTS_Label
                Left = 11
                Top = 11
                Width = 119
                Cursor = crHandPoint
                Caption = 'Conta para Vendas:'
                FocusControl = cmbContaVendas1
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object TS_Label16: TTS_Label
                Left = 10
                Top = 38
                Width = 120
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de contas'
                Caption = 'Conta de Custo:'
                FocusControl = cmbContaCusto
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object TS_Label19: TTS_Label
                Left = -1
                Top = 66
                Width = 130
                Cursor = crHandPoint
                Caption = 'Conta de Invent'#225'rio:'
                FocusControl = cmbContaInvent
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object cmbContaVendas1: TTS_DBPopupEdit
                Tag = -2
                Left = 132
                Top = 9
                Width = 206
                HelpContext = -2
                TabOrder = 0
                DataField = 'lkContaVenda'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaVendas1InitPopup
                Versoes = 'E'
                Height = 19
              end
              object cbLockConta: TTS_CheckBox
                Left = 337
                Top = 8
                Width = 23
                Hint = 'Fixa a Conta de Venda para inclus'#245'es em s'#233'rie'
                HelpContext = -2
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 1
                TabStop = False
                OnChange = cbLockContaChange
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
                  000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
                  C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
                  C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
                  0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
                  C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
                  0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                GlyphCount = 2
                Versoes = 'E'
                DisableEdit = False
                Height = 19
              end
              object cmbContaCusto: TTS_DBPopupEdit
                Tag = -2
                Left = 132
                Top = 36
                Width = 206
                HelpContext = -2
                TabOrder = 2
                DataField = 'lkContaCusto'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaCustoInitPopup
                Versoes = 'E'
                Height = 19
              end
              object cbLockCtCusto: TTS_CheckBox
                Left = 337
                Top = 36
                Width = 23
                Hint = 'Fixa a Conta de Custo para inclus'#245'es em s'#233'rie'
                HelpContext = -2
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 3
                TabStop = False
                OnChange = cbLockCtCustoChange
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
                  000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
                  C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
                  C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
                  0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
                  C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
                  0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                GlyphCount = 2
                Versoes = 'E'
                DisableEdit = False
                Height = 19
              end
              object cmbContaInvent: TTS_DBPopupEdit
                Tag = -2
                Left = 132
                Top = 65
                Width = 206
                HelpContext = -2
                TabOrder = 4
                DataField = 'lkContaInvent'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaInventInitPopup
                Versoes = 'E'
                Height = 19
              end
              object cbLockCtInventario: TTS_CheckBox
                Left = 337
                Top = 65
                Width = 23
                Hint = 'Fixa a Conta de Invent'#225'rio para inclus'#245'es em s'#233'rie'
                HelpContext = -2
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 5
                TabStop = False
                OnChange = cbLockCtInventarioChange
                Glyph.Data = {
                  36060000424D3606000000000000360000002800000020000000100000000100
                  18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
                  000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
                  000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
                  808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
                  80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
                  0000000000000000000000000000000000000000000000000000000000000000
                  00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
                  0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
                  C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
                  C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
                  0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
                  C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
                  0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                GlyphCount = 2
                Versoes = 'E'
                DisableEdit = False
                Height = 19
              end
            end
            object tsServicosPreco: TTS_TabSheet
              Caption = 'tsServicosPreco'
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object pnServicosPreco: TTS_Panel
                Left = 0
                Top = 0
                Width = 659
                Height = 426
                Align = alClient
                BevelOuter = bvNone
                Color = 9552605
                TabOrder = 0
                Versoes = 'P,E'
                DesignSize = (
                  659
                  426)
                object TS_Label38: TTS_Label
                  Left = 11
                  Top = 4
                  Width = 101
                  Height = 15
                  Caption = 'Pre'#231'o dos Servi'#231'os:'
                  FocusControl = dfReferencia
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_QDBGrid1: TTS_QDBGrid
                  Tag = -2
                  Left = 2
                  Top = 22
                  Width = 656
                  Height = 403
                  HelpContext = -2
                  Bands = <
                    item
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'SERVICOPRECO'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  AutoSearchColor = 6611199
                  AutoSearchTextColor = clBlue
                  BandFont.Charset = DEFAULT_CHARSET
                  BandFont.Color = clWindowText
                  BandFont.Height = -11
                  BandFont.Name = 'MS Sans Serif'
                  BandFont.Style = []
                  DataSource = DMItens.C_ServicosPrecoDs
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
                  OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
                  PreviewFont.Charset = DEFAULT_CHARSET
                  PreviewFont.Color = clBlue
                  PreviewFont.Height = -11
                  PreviewFont.Name = 'MS Sans Serif'
                  PreviewFont.Style = []
                  OnColumnSorting = dbgTabelaPrecoColumnSorting
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  TS_PermitirQuantidade = False
                  TS_DescriptionCanChange = False
                  TS_GridMenuOptions = []
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
                  TS_SelectedColumn = 'lkpServico'
                  TS_ID = 0
                  TS_TipoDescricao = tdVenda
                  TS_SummaryFooterQtdText = 'Qtd. Geral:'
                  TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
                  object TS_QDBGrid1lkpServico: TdxDBGridLookupColumn
                    Caption = 'Servi'#231'o'
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'lkpServico'
                  end
                  object TS_QDBGrid1PRECO: TdxDBGridCurrencyColumn
                    Caption = 'Pre'#231'o'
                    Width = 97
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PRECO'
                    Nullable = False
                  end
                end
              end
            end
          end
          object pnControl1: TTS_Panel
            Left = 3
            Top = 34
            Width = 119
            Height = 408
            Anchors = [akLeft, akTop, akBottom]
            Color = 16116702
            TabOrder = 1
            BackgroundOptions.Picture.Data = {
              07544269746D617096900000424D969000000000000036000000280000007500
              0000690000000100180000000000609000000000000000000000000000000000
              0000E5E5E5E6E6E6EBEBEBEEEEEEEEEEEED9D9D9C7C7C7D7D7D7E7E7E7E9E9E9
              E7E7E7E9E9E9F3F3F3ECECECF9F9F9FFFFFFF4F4F4E1E1E1DADADADADADADADA
              DAD8D8D8D8D8D8D4D4D4D2D2D2D9D9D9E9E9E9EEEEEEEBEBEBF0F0F0FBFBFBFF
              FFFFFDFDFDFDFDFDFCFCFCFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDBDBDBD8D8D8E5E5E5F7F7F7F9F9F9F4F4F4E7E7E7E3E3E3E6E6
              E6ECECECF1F1F1F0F0F0FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCFCFCF3F3F3E9E9E9E3E3E3E7E7E7E9E9E9DDDDDDD1D1D1
              C9C9C9D4D4D4E6E6E6EEEEEEF4F4F4F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFED5D5D5CBCBCBF6F6F6FFFFFFFFFFFFF7F7F7FFFFFFFCFCFCF8
              F8F8EFEFEFDFDFDFEBEBEBF1F1F1FCFCFCFBFBFBEEEEEEF3F3F3F9F9F9FAFAFA
              FAFAFAFCFCFCFDFDFDFCFCFCF7F7F7F3F3F3E3E3E3D9D9D9ECECECF3F3F3F3F3
              F300E5E5E5E7E7E7F1F1F1F6F6F6F2F2F2DEDEDECCCCCCE1E1E1F8F8F8FAFAFA
              EEEEEEF1F1F1EFEFEFE8E8E8EDEDEDEBEBEBD9D9D9D4D4D4D9D9D9E1E1E1E8E8
              E8E3E3E3E1E1E1DADADADEDEDEECECECF0F0F0EEEEEEF1F1F1F9F9F9FDFDFDFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F3DCDCDCDCDCDCEAEAEAF8F8F8F9F9F9F9F9F9E7E7E7E7E7E7F1F1
              F1F1F1F1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAE9E9E9E1E1E1DDDDDDDFDFDFE1E1E1E4E4E4ECECECE8E8E8DCDCDCD0D0D0
              D0D0D0E1E1E1ECECECF2F2F2FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD6D6D6D0D0D0F7F7F7FFFFFFFFFFFFF7F7F7FCFCFCFFFFFFFF
              FFFFFFFFFFEBEBEBF3F3F3F9F9F9FDFDFDFFFFFFF3F3F3F9F9F9FCFCFCFAFAFA
              FBFBFBFCFCFCFFFFFFFFFFFFFAFAFAF2F2F2D8D8D8DBDBDBF3F3F3F8F8F8F8F8
              F800F3F3F3F1F1F1F3F3F3FFFFFFFAFAFAE1E1E1D6D6D6F1F1F1FFFFFFFFFFFF
              FAFAFAFFFFFFF7F7F7E0E0E0DFDFDFE0E0E0DFDFDFE4E4E4EBEBEBEEEEEEE8E8
              E8E1E1E1DEDEDEE1E1E1EBEBEBEFEFEFF1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFE9E9E9DCDCDCDFDFDFEEEEEEF8F8F8FBFBFBFDFDFDE8E8E8E9E9E9F9F9
              F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBDADADAD3
              D3D3D1D1D1D6D6D6DEDEDEE4E4E4E6E6E6E9E9E9EBEBEBE3E3E3D7D7D7CCCCCC
              D8D8D8EAEAEAF4F4F4FAFAFAFDFDFDFDFDFDFDFDFDFAFAFAFBFBFBFFFFFFFFFF
              FFFFFFFFFFFFFFD6D6D6D8D8D8FFFFFFFFFFFFFBFBFBF6F6F6F4F4F4FDFDFDFF
              FFFFFFFFFFF6F6F6F1F1F1FCFCFCFDFDFDFFFFFFF3F3F3F8F8F8FAFAFAFAFAFA
              F9F9F9F8F8F8FCFCFCFFFFFFF9F9F9E8E8E8D3D3D3E5E5E5F9F9F9FAFAFAFCFC
              FC00FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFF1F1F1E7E7E7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF8F8F8E3E3E3DADADAE3E3E3ECECECEFEFEFF0F0F0EAEAEADEDE
              DEDADADAE0E0E0EBEBEBF1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCEBEBEBE3E3E3E5E5E5F2F2F2F4F4F4F9F9F9FBFBFBE6E6E6EFEFEFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFEFEFDBDBDBD0D0D0CFCFCFD9
              D9D9E1E1E1E7E7E7EDEDEDEEEEEEF0F0F0ECECECE4E4E4D9D9D9CDCDCDD2D2D2
              E9E9E9F4F4F4F7F7F7FAFAFAFFFFFFFDFDFDF9F9F9F7F7F7FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFDADADADCDCDCFDFDFDFFFFFFF3F3F3F2F2F2F4F4F4F1F1F1F9
              F9F9FFFFFFFAFAFAF6F6F6FFFFFFFEFEFEFFFFFFF3F3F3F8F8F8FBFBFBFAFAFA
              FAFAFAFAFAFAFBFBFBFFFFFFF9F9F9DEDEDED9D9D9F0F0F0FAFAFAFAFAFAFDFD
              FD00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FFFFFFFFFFFFFFFFFF
              FCFCFCF3F3F3F3F3F3E5E5E5E5E5E5F0F0F0EFEFEFEBEBEBDFDFDFD8D8D8D5D5
              D5DEDEDEE9E9E9F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFDFDFDF9F9F9FDFDFDFFFFFFFBFBFBFBFBFBFBFBFBFBFBFB
              F9F9F9EEEEEEE6E6E6E8E8E8F2F2F2F0F0F0F8F8F8F4F4F4E7E7E7FCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFECECECF0F0F0EEEEEECCCCCCD8D8D8EDEDEDF9
              F9F9FAFAFAFAFAFAF9F9F9F2F2F2ECECECE4E4E4DBDBDBD4D4D4D6D6D6E8E8E8
              F4F4F4F8F8F8FAFAFAFDFDFDFDFDFDF8F8F8F9F9F9F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDFDFDFDEDEDEFDFDFDFEFEFEEDEDEDEDEDEDF1F1F1E7E7E7F2
              F2F2FCFCFCFAFAFAF9F9F9FFFFFFFEFEFEFFFFFFF3F3F3F6F6F6F9F9F9F9F9F9
              FAFAFAF9F9F9F8F8F8FCFCFCF2F2F2E1E1E1EBEBEBFAFAFAFCFCFCFCFCFCFFFF
              FF00FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE5E5E5EFEFEFF7F7F7F0F0F0
              E3E3E3E7E7E7E8E8E8DBDBDBE3E3E3E5E5E5D8D8D8D2D2D2CFCFCFD3D3D3DCDC
              DCE8E8E8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E6E6E6E6
              E6E6F6F6F6F9F9F9FAFAFAF3F3F3F6F6F6FBFBFBF8F8F8F7F7F7F6F6F6F8F8F8
              F9F9F9F0F0F0E8E8E8E8E8E8EDEDEDEEEEEEFEFEFEEEEEEEE5E5E5FFFFFFFFFF
              FFFFFFFFFFFFFFF8F8F8F4F4F4F0F0F0FCFCFCEAEAEAD7D7D7F2F2F2FAFAFAFA
              FAFAF7F7F7F2F2F2EFEFEFE9E9E9DDDDDDD3D3D3D4D4D4E4E4E4F2F2F2F7F7F7
              F9F9F9FAFAFAFBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFEE3E3E3E1E1E1FFFFFFFAFAFAE8E8E8F1F1F1F9F9F9E8E8E8ED
              EDEDF3F3F3F3F3F3F6F6F6F6F6F6F9F9F9F8F8F8F6F6F6F4F4F4F9F9F9FAFAFA
              FDFDFDFCFCFCFBFBFBF8F8F8EDEDEDF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FF00EFEFEFF6F6F6FFFFFFFFFFFFFFFFFFE1E1E1E8E8E8F7F7F7F7F7F7E5E5E5
              DCDCDCE3E3E3D9D9D9C9C9C9D1D1D1D2D2D2D2D2D2D6D6D6DBDBDBE6E6E6F2F2
              F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEC5C5C5CCCCCCDC
              DCDCF7F7F7FEFEFEF9F9F9F7F7F7F7F7F7FCFCFCFEFEFEFBFBFBF7F7F7FCFCFC
              FFFFFFF2F2F2E7E7E7E5E5E5EAEAEAF3F3F3FFFFFFE5E5E5F9F9F9FFFFFFFFFF
              FFF9F9F9F8F8F8FAFAFAF9F9F9FDFDFDF7F7F7D6D6D6DFDFDFF3F3F3F0F0F0E9
              E9E9E3E3E3DFDFDFDCDCDCD4D4D4D2D2D2D9D9D9E9E9E9FCFCFCFFFFFFFAFAFA
              F3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE5E5E5E6E6E6FDFDFDF2F2F2EAEAEAFAFAFAFFFFFFEAEAEAEE
              EEEEF7F7F7F4F4F4F2F2F2F4F4F4F9F9F9F2F2F2F3F3F3F4F4F4F4F4F4FAFAFA
              FCFCFCFEFEFEFDFDFDF7F7F7F3F3F3F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFFFFFFFFFFFF3F3F3DBDBDB
              D4D4D4DADADAD1D1D1D0D0D0DDDDDDDFDFDFE6E6E6ECECECF2F2F2F8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDC4C4C4CACACADCDCDCED
              EDEDFCFCFCFDFDFDFBFBFBFBFBFBF9F9F9FEFEFEFFFFFFFFFFFFFBFBFBFFFFFF
              FFFFFFF3F3F3E6E6E6E5E5E5EAEAEAFBFBFBFEFEFEEEEEEEFFFFFFFFFFFFF9F9
              F9FCFCFCFAFAFAFDFDFDFFFFFFEDEDEDC4C4C4C0C0C0D2D2D2D2D2D2CACACAC8
              C8C8C9C9C9D0D0D0D3D3D3D8D8D8E4E4E4EFEFEFF8F8F8FFFFFFFFFFFFFEFEFE
              EAEAEAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEAEAEAE8E8E8F9F9F9F0F0F0EDEDEDFCFCFCFEFEFEE8E8E8F0
              F0F0F7F7F7F7F7F7F4F4F4F9F9F9F9F9F9F3F3F3F2F2F2F9F9F9F3F3F3FFFFFF
              FFFFFFFDFDFDFAFAFAF4F4F4F4F4F4F4F4F4F8F8F8FBFBFBFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4EBEBEBE8E8E8DCDCDCCACACA
              D2D2D2DDDDDDD9D9D9E0E0E0EBEBEBEBEBEBF6F6F6FAFAFAFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4B9B9B9D4D4D4E6E6E6E7E7E7F3
              F3F3FAFAFAFEFEFEFAFAFAFAFAFAFCFCFCFCFCFCFFFFFFFEFEFEFAFAFAFFFFFF
              FFFFFFF3F3F3E3E3E3E5E5E5F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
              F4F7F7F7F9F9F9FFFFFFDFDFDFB9B9B9B4B4B4CACACAD3D3D3CBCBCBCDCDCDD7
              D7D7E1E1E1E9E9E9EDEDEDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              ECECECF1F1F1FFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFFFFFFFFFFFFFEFEFEFFFF
              FFFFFFFFFFFFFFF2F2F2E7E7E7F3F3F3EBEBEBEDEDEDFEFEFEFCFCFCE5E5E5F0
              F0F0F7F7F7F4F4F4F8F8F8F4F4F4FDFDFDFAFAFAF7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FBFBFBF4F4F4F1F1F1F0F0F0F0F0F0D6D6D6D9D9D9EBEBEBD1D1D1CDCDCD
              E0E0E0E1E1E1DEDEDEEAEAEAEFEFEFF3F3F3FBFBFBFAFAFAFBFBFBFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7B9B9B9CCCCCCEEEEEEF2F2F2EAEAEAF0
              F0F0F7F7F7FCFCFCF8F8F8FBFBFBFBFBFBF9F9F9FDFDFDFAFAFAFCFCFCFFFFFF
              FFFFFFF9F9F9ECECECF7F7F7FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFCFC
              FCFFFFFFFFFFFFDEDEDEBBBBBBC0C0C0D3D3D3E6E6E6E5E5E5E6E6E6F2F2F2F7
              F7F7F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
              F3F3F3EFEFEFF6F6F6FFFFFFFFFFFFFEFEFEFCFCFCFBFBFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF3F3F3E4E4E4EDEDEDEBEBEBF4F4F4FFFFFFF0F0F0E5E5E5F3
              F3F3F7F7F7F4F4F4F9F9F9F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
              E800ECECECEBEBEBEDEDEDFAFAFAFBFBFBDADADAE8E8E8DEDEDEC9C9C9DADADA
              E3E3E3E5E5E5EBEBEBF1F1F1F7F7F7F9F9F9FCFCFCFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4BDBDBDD2D2D2EDEDEDFDFDFDFBFBFBF1F1F1EE
              EEEEF6F6F6F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFAFAFAFBFBFBFCFCFCFFFFFF
              FFFFFFFCFCFCF7F7F7FFFFFFFFFFFFF4F4F4FFFFFFFFFFFFFAFAFAE9E9E9EDED
              EDF1F1F1E0E0E0C4C4C4C5C5C5D6D6D6E6E6E6EBEBEBE8E8E8F4F4F4FCFCFCFA
              FAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFBFBFBFFFFFFFFFFFF
              F0F0F0ECECECECECECFFFFFFFFFFFFFAFAFAF9F9F9F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF7F7F7E3E3E3E9E9E9F2F2F2FCFCFCFDFDFDEBEBEBEAEAEAF4
              F4F4F7F7F7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFF4F4F4EDEDEDFBFBFBFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2E9E9E9F2F2
              F200EEEEEEF3F3F3FFFFFFFFFFFFFDFDFDD2D2D2D7D7D7D6D6D6DBDBDBDFDFDF
              E4E4E4E9E9E9EFEFEFF8F8F8FCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD8D8D8BEBEBED2D2D2EAEAEAF0F0F0F9F9F9FDFDFDF0F0F0ED
              EDEDF7F7F7F8F8F8F9F9F9FAFAFAFBFBFBFBFBFBF9F9F9FAFAFAFAFAFAFFFFFF
              FFFFFFFFFFFFF9F9F9F3F3F3E8E8E8F6F6F6FFFFFFF9F9F9E9E9E9EDEDEDECEC
              ECE8E8E8D7D7D7C4C4C4D4D4D4E1E1E1ECECECEBEBEBF1F1F1FCFCFCFCFCFCFD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2D3D3D3DDDDDDF9F9F9FBFBFB
              EFEFEFEBEBEBE9E9E9F3F3F3FEFEFEF8F8F8F9F9F9F7F7F7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFBFBFBE3E3E3ECECECF9F9F9FCFCFCF9F9F9E5E5E5EDEDEDF9
              F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEF6F6F6F2F2F2ECECEC
              EAEAEAE4E4E4EBEBEBF8F8F8FBFBFBECECECEAEAEAFAFAFAFFFFFFFFFFFFFFFF
              FF00FAFAFAFFFFFFFFFFFFFFFFFFD4D4D4C4C4C4DDDDDDE8E8E8E4E4E4E5E5E5
              EFEFEFF6F6F6FCFCFCFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF0F0F0C1C1C1D0D0D0EBEBEBF9F9F9F9F9F9F9F9F9FFFFFFF7F7F7ED
              EDEDF4F4F4F4F4F4F8F8F8FFFFFFFFFFFFFBFBFBFAFAFAF9F9F9F8F8F8FFFFFF
              FFFFFFEDEDEDD7D7D7D7D7D7F1F1F1FFFFFFF7F7F7E7E7E7EAEAEAEEEEEEF2F2
              F2EAEAEACDCDCDCACACADEDEDEE9E9E9EEEEEEF1F1F1FBFBFBFDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7C5C5C5C4C4C4DBDBDBFFFFFFFFFFFF
              F4F4F4F0F0F0EBEBEBF0F0F0FEFEFEFAFAFAF9F9F9F8F8F8FEFEFEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE3E3E3E5E5E5F2F2F2FCFCFCEDEDEDE8E8E8FCFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEFEFEFF6F6F6F1F1F1EBEBEB
              F0F0F0EEEEEEF7F7F7FAFAFAF9F9F9F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFF
              FF00FAFAFAFCFCFCF3F3F3DEDEDECCCCCCE3E3E3FCFCFCF6F6F6E8E8E8F0F0F0
              F9F9F9FCFCFCFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDCDCDCCDCDCDE3E3E3F3F3F3FCFCFCFAFAFAF6F6F6FFFFFFFDFDFDF2
              F2F2F8F8F8F8F8F8FBFBFBFFFFFFFFFFFFFBFBFBF7F7F7EFEFEFEEEEEEEEEEEE
              DEDEDEC9C9C9DBDBDBFFFFFFFFFFFFF7F7F7E9E9E9EBEBEBF2F2F2F6F6F6EEEE
              EED3D3D3C4C4C4D5D5D5E5E5E5ECECECF1F1F1FCFCFCFDFDFDFCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEDEDEDBDBDBDC4C4C4D6D6D6E8E8E8FFFFFFFFFFFF
              FBFBFBF3F3F3EFEFEFEEEEEEF4F4F4F7F7F7F6F6F6F7F7F7F9F9F9FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFE5E5E5E8E8E8FFFFFFF7F7F7E8E8E8FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F3F3F3F9F9F9F4F4F4FAFAFA
              FFFFFFFDFDFDF7F7F7F7F7F7F8F8F8FCFCFCFDFDFDFFFFFFFFFFFFF9F9F9F3F3
              F300F4F4F4F4F4F4F4F4F4F1F1F1FAFAFAFFFFFFFFFFFFEEEEEEDCDCDCF6F6F6
              FCFCFCFDFDFDFFFFFFFFFFFFFAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F6D8D8D8D8D8D8E8E8E8F9F9F9FBFBFBF1F1F1F0F0F0F9F9F9FCFCFCF9
              F9F9F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFF9F9F9EEEEEEE7E7E7ECECECF8F8F8
              FBFBFBFFFFFFFFFFFFFFFFFFF9F9F9EBEBEBF0F0F0F6F6F6F9F9F9EDEDEDD4D4
              D4C3C3C3D2D2D2E4E4E4EBEBEBF1F1F1FBFBFBFCFCFCFAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF9F9F9C6C6C6CCCCCCE0E0E0E8E8E8F8F8F8FFFFFFFFFFFF
              FFFFFFF9F9F9F3F3F3EDEDEDF3F3F3FDFDFDFBFBFBFAFAFAF9F9F9FAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFF3F3F3EFEFEFF2F2F2EBEBEBFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF1F1F1EDEDEDF1F1F1F3F3F3F1F1F1
              EDEDEDE7E7E7E8E8E8EEEEEEF4F4F4F7F7F7F2F2F2F4F4F4F0F0F0EDEDEDEDED
              ED00FFFFFFFBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDC9C9C9EFEFEF
              FAFAFAFCFCFCFCFCFCF8F8F8F4F4F4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FDEFEFEFDEDEDEDFDFDFEEEEEEFEFEFEFCFCFCF1F1F1EEEEEEEEEEEEEFEFEFF8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF0F0F0E7E7E7E7E7E7EBEBEBE9E9E9DDDDDDCCCCCCC5C5
              C5D1D1D1E4E4E4ECECECF3F3F3FCFCFCFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFCACACAC0C0C0DADADAE4E4E4E8E8E8F7F7F7FFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7F0F0F0F1F1F1FFFFFFFFFFFFFDFDFDF9F9F9F6F6F6F4F4
              F4F3F3F3FFFFFFFFFFFFE4E4E4D2D2D2DEDEDEF7F7F7FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDE6E6E6E5E5E5E6E6E6E4E4E4DBDBDB
              D2D2D2C9C9C9C6C6C6CBCBCBD6D6D6D8D8D8D3D3D3CBCBCBC9C9C9D1D1D1E4E4
              E400FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1BEBEBECDCDCDEFEFEF
              FAFAFAF9F9F9F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFF
              FFF8F8F8E8E8E8E6E6E6F2F2F2FBFBFBF9F9F9F2F2F2E7E7E7E7E7E7F9F9F9FF
              FFFFF7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFF
              FFFFFFF1F1F1E5E5E5E4E4E4E7E7E7E7E7E7E4E4E4D7D7D7C8C8C8CACACAD5D5
              D5E3E3E3EFEFEFF7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE5E5E5C6C6C6D9D9D9E9E9E9E5E5E5E8E8E8F2F2F2FBFBFBFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F6F2F2F2FFFFFFFFFFFFFFFFFFF3F3F3EAEAEAEDED
              EDEDEDEDE1E1E1D4D4D4C7C7C7D8D8D8F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFEFEFEF9F9F9EBEBEBE8E8E8ECECECF3F3F3F0F0F0E8E8E8DEDEDE
              DCDCDCDFDFDFE0E0E0E4E4E4E1E1E1DADADADCDCDCDBDBDBDEDEDEE3E3E3E9E9
              E900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9D4D4D4DCDCDCDBDBDBEFEFEF
              FCFCFCFCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFE
              FEFBFBFBEFEFEFE9E9E9F0F0F0F4F4F4F3F3F3F0F0F0DFDFDFEFEFEFFFFFFFFF
              FFFFF0F0F0F8F8F8FFFFFFFFFFFFFCFCFCE5E5E5E4E4E4F1F1F1F1F1F1EBEBEB
              E3E3E3DEDEDEDDDDDDDDDDDDDBDBDBD7D7D7CFCFCFC9C9C9D4D4D4E1E1E1EAEA
              EAF2F2F2F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFD6D6D6D8D8D8EAEAEAEFEFEFE8E8E8ECECECF4F4F4FDFDFDFFFFFF
              FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8E8E8E8EBEB
              EBE6E6E6D9D9D9CACACADEDEDEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFCFAFAFAF3F3F3F2F2F2F3F3F3F9F9F9F3F3F3E8E8E8E1E1E1E3E3E3
              EBEBEBF3F3F3F9F9F9FDFDFDF9F9F9F6F6F6F3F3F3F6F6F6FBFBFBFCFCFCF8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDCDCDCF3F3F3DCDCDCEEEEEE
              FFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBFBFBFFFFFFFEFEFEFFFF
              FFFFFFFFF6F6F6E7E7E7EBEBEBEBEBEBEFEFEFF2F2F2E8E8E8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEDEDEDCFCFCFB9B9B9C4C4C4D2D2D2D5D5D5D0D0D0
              CBCBCBCCCCCCCACACACACACAC9C9C9C9C9C9CFCFCFD8D8D8E6E6E6EFEFEFF4F4
              F4F7F7F7FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEBEBEBD6D6D6E1E1E1EDEDEDF0F0F0E8E8E8F3F3F3F8F8F8FEFEFEFFFFFF
              FFFFFFFFFFFFEBEBEBF2F2F2FDFDFDFFFFFFFFFFFFF8F8F8F7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFCFCFCF1F1F1EDEDEDEEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFB
              FBFBF7F7F7F7F7F7F6F6F6F6F6F6F3F3F3EFEFEFE5E5E5E5E5E5EAEAEAF6F6F6
              F9F9F9F9F9F9FAFAFAF6F6F6F6F6F6F6F6F6F7F7F7FBFBFBF7F7F7FAFAFAFAFA
              FA00FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D4D4D4ECECECFFFFFFDCDCDCEBEBEB
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF7F7F7E7E7E7E4E4E4EAEAEAFAFAFAFFFFFFFDFDFDFFFFFFFFFFFFFF
              FFFFFAFAFAEFEFEFD3D3D3C6C6C6C2C2C2C1C1C1CFCFCFD3D3D3CCCCCCC8C8C8
              CFCFCFD2D2D2D7D7D7DEDEDEE4E4E4E6E6E6EDEDEDF4F4F4F9F9F9F9F9F9FBFB
              FBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
              FBFBEAEAEADEDEDEE8E8E8F2F2F2F3F3F3E9E9E9F6F6F6FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFF0F0F0FCFCFCF1F1F1F2F2F2FBFBFBEDEDEDF7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8FBFBFBFCFCFCFAFAFAF2F2F2EF
              EFEFEEEEEEEDEDEDEBEBEBEBEBEBE7E7E7E3E3E3E9E9E9F2F2F2F6F6F6F7F7F7
              EFEFEFEBEBEBF0F0F0F0F0F0F3F3F3F3F3F3F4F4F4F7F7F7F2F2F2FAFAFAFCFC
              FC00FFFFFFFFFFFFFFFFFFFFFFFFEAEAEADBDBDBF7F7F7FDFDFDD3D3D3E1E1E1
              F9F9F9FEFEFEFFFFFFFFFFFFFDFDFDFAFAFAF7F7F7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFAFAFAE8E8E8DFDFDFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
              F1F1E4E4E4D6D6D6D8D8D8D9D9D9D4D4D4DCDCDCEAEAEAE8E8E8E0E0E0E6E6E6
              EEEEEEF1F1F1F4F4F4F7F7F7F3F3F3F7F7F7FDFDFDFDFDFDFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAEFEFEFE8E8E8F1F1F1F7F7F7F3F3F3EEEEEEF7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE7E7E7D9D9D9E6E6E6F3F3F3F7F7
              F7F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1E1E1
              E1E1E6E6E6EAEAEAEDEDEDEBEBEBE8E8E8EDEDEDF2F2F2EEEEEEEBEBEBE6E6E6
              E6E6E6EBEBEBF1F1F1F3F3F3F7F7F7F6F6F6F0F0F0ECECECF1F1F1FAFAFAFDFD
              FD00FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E3E3E3F8F8F8F1F1F1CCCCCCDCDCDC
              EDEDEDEDEDEDEEEEEEF1F1F1F8F8F8F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDEBEBEBE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E6
              E6E6E6E6E6E6E6E6E4E4E4D8D8D8D9D9D9E5E5E5EEEEEEE8E8E8EEEEEEF8F8F8
              FBFBFBFAFAFAFAFAFAFAFAFAFCFCFCFDFDFDFCFCFCFFFFFFFDFDFDFCFCFCFCFC
              FCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8FBFBFBF9
              F9F9F3F3F3F0F0F0F2F2F2F3F3F3F6F6F6F3F3F3F9F9F9FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9E7E7E7CCCCCCB5B5B5BBBBBBCCCCCCE3E3E3F0F0F0F4F4
              F4FAFAFAFEFEFEFFFFFFF7F7F7EFEFEFEEEEEEF7F7F7F4F4F4E5E5E5DDDDDDE1
              E1E1E7E7E7EDEDEDEFEFEFEDEDEDEAEAEAEEEEEEEEEEEEEAEAEAE7E7E7E9E9E9
              F4F4F4F9F9F9F9F9F9FAFAFAFCFCFCF6F6F6F2F2F2FCFCFCFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFCFCFCE6E6E6E5E5E5F7F7F7E7E7E7CACACADFDFDF
              EEEEEEEFEFEFE9E9E9E3E3E3E9E9E9EFEFEFF2F2F2FDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF8F8F8F2F2F2FFFFFFFFFFFFFFFFFFFCFCFCEAEAEAE5E5E5EC
              ECECF0F0F0E8E8E8D6D6D6D3D3D3E0E0E0EDEDEDF0F0F0F0F0F0FAFAFAFDFDFD
              FDFDFDFAFAFAF9F9F9FBFBFBFDFDFDFCFCFCFDFDFDFDFDFDF7F7F7F4F4F4F4F4
              F4F4F4F4F7F7F7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFF9F9F9F6F6F6F4F4F4FA
              FAFAF9F9F9F7F7F7F3F3F3F8F8F8FBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEED9D9D9C4C4C4BBBBBBC7C7C7D5D5D5D4D4D4CFCFCFD2D2D2E1E1
              E1F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFAFAFAE5E5E5E5E5E5EF
              EFEFF4F4F4F6F6F6ECECECE9E9E9EAEAEAF0F0F0EAEAEAE8E8E8EBEBEBF9F9F9
              FFFFFFFDFDFDFDFDFDFDFDFDF9F9F9F2F2F2F9F9F9FFFFFFFFFFFFFDFDFDFEFE
              FE00FFFFFFFFFFFFFFFFFFF9F9F9E6E6E6E9E9E9F2F2F2D6D6D6D1D1D1EEEEEE
              F8F8F8FBFBFBFAFAFAF7F7F7EFEFEFECECECEEEEEEF2F2F2F7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6EAEAEAE8E8E8F1F1F1F1
              F1F1EDEDEDD8D8D8CCCCCCDCDCDCEBEBEBEEEEEEF1F1F1FAFAFAFDFDFDFCFCFC
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF7F7F7F4F4F4FAFAFAFFFF
              FFFFFFFFFFFFFFFFFFFFFCFCFCF7F7F7F8F8F8FDFDFDFAFAFAF4F4F4F6F6F6FA
              FAFAFCFCFCFAFAFAF2F2F2FAFAFAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              EEEEEEDBDBDBC8C8C8C2C2C2D2D2D2E8E8E8EDEDEDE4E4E4DCDCDCD9D9D9D7D7
              D7D6D6D6DBDBDBE1E1E1EDEDEDFFFFFFFDFDFDFDFDFDF0F0F0E5E5E5EEEEEEFA
              FAFAFFFFFFFAFAFAF0F0F0F2F2F2F2F2F2F2F2F2EBEBEBEDEDEDF6F6F6FFFFFF
              FFFFFFFAFAFAF7F7F7F3F3F3F0F0F0F3F3F3FAFAFAFAFAFAF8F8F8F8F8F8F6F6
              F600FBFBFBFFFFFFFFFFFFFDFDFDECECECECECECDBDBDBCCCCCCE9E9E9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF3F3F3F1F1F1F2F2F2F8F8F8FDFD
              FDFFFFFFFFFFFFFFFFFFF2F2F2FAFAFAF3F3F3E5E5E5E6E6E6F2F2F2F7F7F7F0
              F0F0DCDCDCC9C9C9D5D5D5EBEBEBEEEEEEF1F1F1F8F8F8FCFCFCFAFAFAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2F1F1F1EFEFEFF3F3F3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEF8F8F8F2F2F2F2F2F2F7F7F7F3
              F3F3F7F7F7FCFCFCF8F8F8F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFF9F9F9E7E7E7
              DADADAC8C8C8C5C5C5D3D3D3E9E9E9EDEDEDE7E7E7EDEDEDFBFBFBFCFCFCF7F7
              F7F0F0F0E5E5E5DBDBDBD3D3D3D3D3D3E6E6E6F7F7F7E9E9E9EFEFEFF6F6F6F7
              F7F7FDFDFDFAFAFAF7F7F7F2F2F2F2F2F2EDEDEDEBEBEBF0F0F0FFFFFFFFFFFF
              F7F7F7EEEEEEEEEEEEF1F1F1F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFCFCFCF7F7
              F700FEFEFEFFFFFFFFFFFFFEFEFEE9E9E9D1D1D1C1C1C1DBDBDBF4F4F4FFFFFF
              FFFFFFFFFFFFF6F6F6F7F7F7FAFAFAFDFDFDFCFCFCF7F7F7F2F2F2F2F2F2F4F4
              F4F9F9F9FCFCFCEFEFEFDFDFDFE8E8E8E5E5E5E6E6E6F4F4F4FCFCFCF2F2F2DB
              DBDBC7C7C7D3D3D3E8E8E8EDEDEDEEEEEEF8F8F8FCFCFCFCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE6E6E6E8E8E8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1F3F3F3F9F9F9F7
              F7F7F7F7F7FBFBFBF6F6F6F1F1F1FFFFFFFFFFFFFFFFFFEBEBEBDADADAD3D3D3
              CCCCCCCBCBCBD9D9D9EAEAEAE8E8E8EAEAEAFAFAFAFFFFFFFCFCFCFBFBFBFFFF
              FFFFFFFFFFFFFFFDFDFDF4F4F4EBEBEBE7E7E7ECECECEBEBEBF0F0F0F7F7F7F3
              F3F3F7F7F7FDFDFDF9F9F9F3F3F3F2F2F2EDEDEDEDEDEDF6F6F6FFFFFFF3F3F3
              EEEEEEF0F0F0F1F1F1F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFF8F8F8ECECECDDDDDDBFBFBFABABABC5C5C5EDEDEDEFEFEFF7F7F7
              FBFBFBF7F7F7FCFCFCFFFFFFFEFEFEFFFFFFFFFFFFFDFDFDFBFBFBF8F8F8F1F1
              F1F0F0F0EEEEEEE9E9E9E7E7E7EAEAEAEBEBEBF3F3F3F9F9F9EDEDEDD4D4D4C3
              C3C3D1D1D1EBEBEBF0F0F0F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDEDEDEEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F9F9F9FB
              FBFBFEFEFEFFFFFFFAFAFAFCFCFCFFFFFFF7F7F7DEDEDED6D6D6D5D5D5D3D3D3
              D2D2D2DADADAE5E5E5E5E5E5EDEDEDFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFF
              FFFEFEFEFCFCFCFDFDFDFAFAFAFEFEFEFFFFFFFCFCFCF1F1F1F3F3F3F9F9F9F2
              F2F2F2F2F2FEFEFEFCFCFCF7F7F7F2F2F2EBEBEBEBEBEBF7F7F7F7F7F7EDEDED
              F4F4F4F3F3F3F4F4F4FBFBFBFAFAFAFCFCFCFDFDFDFCFCFCFFFFFFFFFFFFFFFF
              FF00FFFFFFF1F1F1DCDCDCBFBFBFA9A9A9BEBEBEE9E9E9F4F4F4F4F4F4FBFBFB
              FCFCFCFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFEFEEEEEEEE7E7E7EAEAEAE6E6E6E0E0E0D1D1D1C9C9C9D8
              D8D8EAEAEAF0F0F0F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEDEDEDE7E7E7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
              FAFAFAFAFAFAFAF6F6F6FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF4F4F4F0F0F0EDEDEDDFDFDFDADADAE3E3E3E1E1E1DCDCDC
              DBDBDBDFDFDFDDDDDDE5E5E5FFFFFFFFFFFFFCFCFCF6F6F6FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFAFAF7F7F7FBFBFBFFFFFFFFFFFFFFFFFFF2F2F2F3F3F3F2
              F2F2F6F6F6FFFFFFFFFFFFF7F7F7F0F0F0E8E8E8EBEBEBF6F6F6F1F1F1F7F7F7
              FCFCFCF7F7F7FAFAFAFFFFFFFDFDFDFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDFD
              FD00FFFFFFEAEAEAC7C7C7C4C4C4D4D4D4E8E8E8F4F4F4F9F9F9FAFAFAFFFFFF
              FFFFFFFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFAFAE8E8E8DFDFDFDDDDDDD9D9D9D5D5D5D2D2D2DDDDDDE6
              E6E6EBEBEBF4F4F4F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EEEEEEE5E5E5E8E8E8E7E7E7EBEBEBF6F6F6FAFAFAF9F9F9F0F0F0EAEAEAE9E9
              E9EAEAEAE5E5E5EBEBEBF0F0F0F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF9F9F9F2F2F2F1F1F1E5E5E5DBDBDBE0E0E0DDDDDDD5D5D5CFCFCF
              D3D3D3DDDDDDE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF9F9F9F7F7F7F8F8F8FFFFFFFFFFFFFFFFFFF2F2F2F1F1F1F2
              F2F2F7F7F7FFFFFFFFFFFFF7F7F7F0F0F0E8E8E8EDEDEDF3F3F3F4F4F4FFFFFF
              F9F9F9F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF7F7
              F700F4F4F4C8C8C8C1C1C1E5E5E5F6F6F6F8F8F8FEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAECECECE6E6E6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F4F4
              F4FFFFFFFFFFFFEDEDEDDBDBDBCDCDCDCFCFCFD4D4D4DADADAE0E0E0E6E6E6E9
              E9E9F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8
              E1E1E1EEEEEEF1F1F1EBEBEBEEEEEEF3F3F3F7F7F7F7F7F7EBEBEBE8E8E8ECEC
              ECF2F2F2EEEEEEECECECEFEFEFF6F6F6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFC
              FCFCF4F4F4F3F3F3EEEEEEDFDFDFD8D8D8D8D8D8D6D6D6CCCCCCCBCBCBD1D1D1
              DFDFDFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6F1F1F1FFFFFFFFFF
              FFFFFFFFF6F6F6F2F2F2F7F7F7F8F8F8FCFCFCFFFFFFFFFFFFF6F6F6ECECECF1
              F1F1F9F9F9FFFFFFFDFDFDF9F9F9EDEDEDE5E5E5EBEBEBF4F4F4FFFFFFFFFFFF
              F0F0F0F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F4F4
              F400CACACAC2C2C2E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAF7F7F7F8F8F8FAFAFAF9F9F9FFFFFFFFFFFFF0F0F0E6E6E6E5E5E5EDED
              EDFCFCFCE7E7E7D5D5D5C5C5C5C6C6C6D9D9D9E8E8E8E9E9E9E6E6E6ECECECF8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E3E3E3
              EFEFEFF9F9F9FCFCFCF6F6F6F3F3F3FAFAFAF6F6F6F7F7F7EBEBEBEDEDEDF6F6
              F6FBFBFBFDFDFDF3F3F3F1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
              F3F3E8E8E8DADADACFCFCFCBCBCBD0D0D0CFCFCFCDCDCDCFCFCFDADADAE7E7E7
              F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F7F7FFFFFFFFFF
              FFF9F9F9F0F0F0F3F3F3F9F9F9FAFAFAFCFCFCFFFFFFFFFFFFF9F9F9E7E7E7EC
              ECECFDFDFDFFFFFFFAFAFAF9F9F9EAEAEAE5E5E5F0F0F0F9F9F9FFFFFFFFFFFF
              EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F9F9F9F2F2F2F1F1F1F8F8
              F800E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBF9F9F9FFFFFFE8E8
              E8E5E5E5DDDDDDDCDCDCD8D8D8DFDFDFF2F2F2F7F7F7EDEDEDEDEDEDF8F8F8FF
              FFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBDDDDDDE8E8E8
              F1F1F1F7F7F7FDFDFDF9F9F9F2F2F2FAFAFAF2F2F2F3F3F3F0F0F0F4F4F4F7F7
              F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DEDEDEC7
              C7C7C1C1C1C1C1C1C8C8C8D2D2D2D3D3D3D4D4D4DADADAEBEBEBF3F3F3FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBFFFFFFFFFFFFF9F9
              F9F6F6F6F2F2F2F7F7F7FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFAFAFAE5E5E5EE
              EEEEFFFFFFFDFDFDF9F9F9F6F6F6E5E5E5E5E5E5F1F1F1FAFAFAFFFFFFFFFFFF
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF2F2F2F3F3F3FEFE
              FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFFAFAFADFDF
              DFE7E7E7EEEEEEEEEEEEDCDCDCE5E5E5F8F8F8F7F7F7EFEFEFF6F6F6FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E6E6EDEDEDF0F0F0
              F4F4F4F4F4F4FDFDFDF7F7F7F0F0F0F9F9F9F0F0F0F7F7F7F7F7F7F7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D4D4D4BEBEBEBE
              BEBECACACAD6D6D6E1E1E1E5E5E5E3E3E3E7E7E7F9F9F9FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7F4F4F4FBFBFBFAFAFAFAFAFAF8F8F8F1F1F1F2F2F2F3F3
              F3F0F0F0F3F3F3F6F6F6FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFF7F7F7EBEBEBFE
              FEFEFFFFFFF4F4F4F7F7F7F2F2F2E3E3E3E8E8E8F7F7F7FFFFFFFFFFFFFFFFFF
              F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEECECECFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCD9D9D9D7D7D7D7D7D7DBDBDB
              E5E5E5F2F2F2F0F0F0F7F7F7FBFBFBFFFFFFFFFFFFF0F0F0F2F2F2EBEBEBE3E3
              E3EBEBEBF0F0F0EAEAEADADADAEBEBEBFBFBFBF3F3F3F0F0F0F9F9F9FDFDFDFB
              FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7EBEBEBF4F4F4F3F3F3
              FAFAFAFAFAFAFDFDFDFAFAFAF7F7F7F4F4F4F0F0F0FAFAFAFAFAFAFCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6C5C5C5CBCBCBD8
              D8D8E5E5E5EFEFEFEEEEEEECECECF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9F7F7F7FBFBFBF7F7F7F9F9F9F9F9F9F3F3F3EEEEEEEBEB
              EBF0F0F0F7F7F7F6F6F6F9F9F9FBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFF
              FFFFFCFCFCF0F0F0F6F6F6EAEAEADFDFDFEEEEEEFCFCFCFFFFFFFFFFFFFBFBFB
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE3E3E3E8E8E8FFFF
              FF00E3E3E3CACACAB8B8B8ACACACA4A4A4A8A8A8B4B4B4BFBFBFC6C6C6CDCDCD
              D5D5D5D7D7D7DCDCDCE9E9E9F3F3F3FFFFFFFFFFFFF3F3F3F6F6F6EBEBEBDFDF
              DFE8E8E8EEEEEEE8E8E8DEDEDEF1F1F1F7F7F7EEEEEEF3F3F3FAFAFAFDFDFDFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5F1F1F1F4F4F4F3F3F3
              FCFCFCF6F6F6FBFBFBFFFFFFF7F7F7E6E6E6F1F1F1FCFCFCFCFCFCFAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD9D9D9D2D2D2D9D9D9E5E5E5EF
              EFEFF7F7F7F7F7F7F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              FFFFFFFFFFFFFDFDFDF9F9F9FDFDFDFBFBFBF7F7F7F7F7F7F4F4F4F1F1F1EDED
              EDF0F0F0F6F6F6F7F7F7F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF4F4F4EBEBEBEFEFEFE3E3E3E5E5E5F3F3F3FDFDFDFFFFFFFFFFFFEDEDED
              F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6EBEBEBFFFF
              FF00BDBDBDBDBDBDC5C5C5D3D3D3DADADAE1E1E1E8E8E8EFEFEFF1F1F1F1F1F1
              F4F4F4F4F4F4F7F7F7F2F2F2FAFAFAFFFFFFFFFFFFF9F9F9F0F0F0D7D7D7D9D9
              D9E6E6E6ECECECE3E3E3DFDFDFF3F3F3F1F1F1F0F0F0F8F8F8FDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E7E7E7F4F4F4F7F7F7FAFAFA
              FAFAFAF3F3F3FFFFFFFFFFFFE6E6E6DEDEDEFBFBFBFCFCFCF9F9F9F9F9F9FCFC
              FCFFFFFFFFFFFFFFFFFFFDFDFDEAEAEAD7D7D7D8D8D8E3E3E3EAEAEAF0F0F0F7
              F7F7F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3
              F6F6F6FEFEFEF9F9F9F7F7F7F9F9F9F9F9F9F7F7F7F8F8F8F9F9F9F6F6F6F3F3
              F3F6F6F6F7F7F7F3F3F3F0F0F0FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAEDEDEDE5E5E5E7E7E7DEDEDEEBEBEBFBFBFBFFFFFFFFFFFFFEFEFEEAEAEA
              EEEEEEF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFAFAFADFDFDFD5D5D5FBFBFBFFFF
              FF00EBEBEBE8E8E8E8E8E8EDEDEDEEEEEEE8E8E8EAEAEAF4F4F4F3F3F3F2F2F2
              F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DBDBDBCDCDCDDFDF
              DFEBEBEBEFEFEFE4E4E4E1E1E1EEEEEEECECECF1F1F1FAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE5E5E5F0F0F0FFFFFFFCFCFCFDFDFD
              FAFAFAF7F7F7FFFFFFFAFAFAD8D8D8E8E8E8FFFFFFF9F9F9F2F2F2F4F4F4FDFD
              FDFFFFFFFFFFFFFBFBFBEBEBEBD9D9D9DDDDDDEBEBEBF0F0F0EFEFEFF0F0F0F3
              F3F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF9F9F9
              F3F3F3FAFAFAF7F7F7F3F3F3F1F1F1F3F3F3F7F7F7F8F8F8F8F8F8F6F6F6FAFA
              FAFCFCFCFBFBFBF8F8F8F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF2
              F2F2E7E7E7DCDCDCDEDEDEE3E3E3F3F3F3FEFEFEFDFDFDFFFFFFFFFFFFF0F0F0
              EEEEEEF3F3F3FBFBFBFEFEFEFFFFFFFDFDFDF2F2F2D8D8D8E6E6E6FFFFFFFFFF
              FF00EAEAEAE7E7E7EAEAEAEFEFEFF6F6F6EEEEEEECECECF3F3F3F6F6F6F7F7F7
              FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCCACACADADADAEAEA
              EAEDEDEDE9E9E9DEDEDEE5E5E5F1F1F1F1F1F1F8F8F8FEFEFEFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEFFFFFFFFFFFFFAFAFAFFFFFF
              FEFEFEF3F3F3F8F8F8ECECECE1E1E1F9F9F9FFFFFFF7F7F7F6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFF1F1F1E5E5E5DFDFDFEEEEEEF7F7F7F3F3F3EEEEEEF2F2F2F7
              F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFCFCFCFDFDFDF8F8F8
              F3F3F3F6F6F6F2F2F2F0F0F0F1F1F1F3F3F3F8F8F8F8F8F8F8F8F8F3F3F3FAFA
              FAFDFDFDFEFEFEFCFCFCF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6ED
              EDEDDCDCDCD4D4D4DCDCDCEAEAEAF9F9F9FEFEFEFAFAFAFFFFFFFFFFFFF2F2F2
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EAEAEADCDCDCF6F6F6FFFFFFFFFF
              FF00E8E8E8EBEBEBF0F0F0F3F3F3FCFCFCF6F6F6EBEBEBF0F0F0F7F7F7F8F8F8
              FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE3E3E3C5C5C5CFCFCFE6E6E6E8E8
              E8E8E8E8E3E3E3E3E3E3EDEDEDF1F1F1F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFDFDFDFCFCFCFFFFFF
              FFFFFFF2F2F2FCFCFCF6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF9F9F9E7E7E7DFDFDFEAEAEAF7F7F7F9F9F9F0F0F0EBEBEBF3F3F3FD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF9F9F9F6F6F6F4F4F4F3F3F3
              F3F3F3F2F2F2EDEDEDEDEDEDF0F0F0F4F4F4F8F8F8F8F8F8F7F7F7F3F3F3F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDDE
              DEDEC9C9C9D0D0D0E4E4E4F4F4F4F9F9F9F6F6F6F8F8F8FFFFFFFFFFFFF0F0F0
              FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE4E4E4E5E5E5FFFFFFFFFFFFFFFF
              FF00F0F0F0F2F2F2F2F2F2F2F2F2F9F9F9F8F8F8EBEBEBEEEEEEFAFAFAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDECACACACDCDCDE4E4E4EAEAEAE5E5
              E5E3E3E3E5E5E5EEEEEEF0F0F0F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFDFDFDFDFDFDF6F6F6FDFDFDFFFFFF
              F3F3F3F2F2F2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
              FCEEEEEEE6E6E6DBDBDBE1E1E1F2F2F2F6F6F6F3F3F3EAEAEAE8E8E8F8F8F8FF
              FFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6F9F9F9FAFAFAF7F7F7F9F9F9FAFAFA
              F3F3F3F2F2F2F0F0F0EEEEEEF3F3F3F7F7F7F7F7F7F8F8F8F3F3F3F3F3F3F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF3F3F3EEEEEEDFDFDFC6
              C6C6C1C1C1DEDEDEF2F2F2F3F3F3ECECECE8E8E8F7F7F7FFFFFFF6F6F6E8E8E8
              F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DEDEDEF4F4F4FFFFFFFFFFFFFFFF
              FF00F6F6F6F3F3F3F3F3F3F6F6F6FAFAFAF9F9F9EBEBEBF0F0F0FCFCFCFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD1D1D1D8D8D8E5E5E5E8E8E8E5E5E5E3E3
              E3E8E8E8EEEEEEF3F3F3F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F3F3F3F2F2F2F9F9F9F6F6F6
              F3F3F3F6F6F6FAFAFAFFFFFFFFFFFFF3F3F3F6F6F6F4F4F4EEEEEEE6E6E6E4E4
              E4DEDEDEE0E0E0E0E0E0EDEDEDFBFBFBF8F8F8F3F3F3EBEBEBEFEFEFFFFFFFFF
              FFFFFCFCFCF9F9F9FFFFFFFAFAFAF4F4F4F7F7F7F7F7F7F9F9F9F9F9F9F9F9F9
              F7F7F7F4F4F4F3F3F3F1F1F1F7F7F7F7F7F7F8F8F8FAFAFAF7F7F7F6F6F6F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAEFEFEFFFFFFFE3E3E3C7C7C7B9
              B9B9D5D5D5F2F2F2F0F0F0E9E9E9E8E8E8F2F2F2FFFFFFFFFFFFECECECE5E5E5
              EFEFEFFBFBFBFFFFFFFFFFFFFDFDFDE8E8E8E8E8E8FFFFFFFFFFFFFFFFFFFAFA
              FA00F6F6F6F3F3F3F6F6F6F7F7F7FAFAFAF7F7F7F0F0F0F6F6F6FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE8E8E8DEDEDEDEDEDEE7E7E7ECECECE8E8E8E8E8E8EAEA
              EAEEEEEEF0F0F0F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFBFBFBF7F7F7F4F4F4F2F2F2ECECECF0F0F0F7F7F7F7F7F7
              FAFAFAF9F9F9FDFDFDF6F6F6DFDFDFD2D2D2D9D9D9DFDFDFDEDEDEE5E5E5E9E9
              E9E8E8E8EBEBEBEAEAEAF7F7F7FEFEFEFAFAFAF6F6F6EDEDEDF0F0F0FFFFFFFF
              FFFFFCFCFCFAFAFAFDFDFDF7F7F7F4F4F4F7F7F7F8F8F8F9F9F9F3F3F3F6F6F6
              F6F6F6F8F8F8F3F3F3F6F6F6F6F6F6F7F7F7F9F9F9FAFAFAF7F7F7F3F3F3FCFC
              FCFFFFFFFFFFFFFFFFFFFCFCFCE3E3E3EEEEEEFFFFFFF2F2F2C0C0C0B4B4B4CD
              CDCDF1F1F1F2F2F2ECECECFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEECECEC
              F8F8F8FFFFFFFEFEFEF7F7F7EDEDEDDFDFDFF2F2F2FFFFFFFFFFFFFCFCFCF2F2
              F200F3F3F3F3F3F3F3F3F3F3F3F3F7F7F7EDEDEDF3F3F3FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF3F3F3E8E8E8EAEAEAE3E3E3EAEAEAEEEEEEEAEAEAEAEAEAEDED
              EDF1F1F1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
              F3F3DFDFDFD9D9D9D5D5D5D6D6D6DCDCDCE8E8E8E8E8E8EFEFEFF7F7F7FAFAFA
              F9F9F9F7F7F7EBEBEBD4D4D4C4C4C4CCCCCCDADADADEDEDEE4E4E4EFEFEFF3F3
              F3F6F6F6F3F3F3F0F0F0FFFFFFFFFFFFFAFAFAF6F6F6EBEBEBF0F0F0FFFFFFFF
              FFFFF9F9F9F9F9F9F9F9F9F7F7F7F9F9F9FCFCFCFEFEFEFBFBFBF2F2F2F3F3F3
              F2F2F2F1F1F1F1F1F1F7F7F7F9F9F9FBFBFBFDFDFDFCFCFCF6F6F6F4F4F4FFFF
              FFFFFFFFFFFFFFFAFAFAF0F0F0FFFFFFFFFFFFFFFFFFBDBDBDB1B1B1CBCBCBEC
              ECECEEEEEEE1E1E1F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFEFEFE
              FFFFFFFFFFFFFAFAFAEEEEEEDBDBDBD9D9D9F7F7F7FFFFFFFFFFFFF2F2F2E5E5
              E500F4F4F4F3F3F3EFEFEFEEEEEEEBEBEBE5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEBEBEBE0E0E0E0E0E0D6D6D6CFCFCFDBDBDBE3E3E3E0E0E0E5E5E5EFEF
              EFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7CCCCCCC7
              C7C7CCCCCCD2D2D2D1D1D1D0D0D0D0D0D0D9D9D9E7E7E7EEEEEEF7F7F7FBFBFB
              F7F7F7EBEBEBD6D6D6CCCCCCD1D1D1E5E5E5EFEFEFECECECEDEDEDEDEDEDF1F1
              F1F4F4F4F2F2F2F7F7F7FFFFFFFFFFFFFAFAFAF6F6F6EAEAEAF2F2F2FFFFFFFF
              FFFFF6F6F6F6F6F6F4F4F4F9F9F9FCFCFCFDFDFDFFFFFFF7F7F7F0F0F0F1F1F1
              F0F0F0F1F1F1F3F3F3F3F3F3F2F2F2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEEEEEEFDFDFDFFFFFFFFFFFFC1C1C1ABABABC9C9C9EAEAEAEB
              EBEBE3E3E3E4E4E4F3F3F3F4F4F4EFEFEFF2F2F2F3F3F3F7F7F7FCFCFCFFFFFF
              FFFFFFFFFFFFFCFCFCEDEDEDDEDEDEECECECFFFFFFFFFFFFF3F3F3EAEAEAE4E4
              E400F1F1F1EFEFEFEAEAEAE8E8E8E7E7E7F2F2F2FFFFFFFFFFFFFFFFFFF0F0F0
              DFDFDFD9D9D9DCDCDCD7D7D7CACACAD5D5D5E6E6E6EBEBEBEBEBEBF6F6F6FDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5C6C6C6CCCCCCDFDFDFEB
              EBEBE8E8E8E7E7E7EAEAEAE8E8E8E4E4E4D9D9D9DADADAEBEBEBFAFAFAFFFFFF
              EEEEEEDBDBDBD0D0D0D7D7D7EAEAEAF9F9F9FDFDFDF4F4F4EAEAEAECECECF2F2
              F2F4F4F4F2F2F2F9F9F9FFFFFFFFFFFFF9F9F9F6F6F6EAEAEAF2F2F2FFFFFFFF
              FFFFF6F6F6F9F9F9F9F9F9FDFDFDFDFDFDFCFCFCF9F9F9EDEDEDEAEAEAEDEDED
              EEEEEEF0F0F0F2F2F2F6F6F6F2F2F2F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEDEDEDFDFDFDFFFFFFFFFFFFC1C1C1A8A8A8C8C8C8ECECECEAEAEAE0
              E0E0E8E8E8F4F4F4FAFAFAFCFCFCF0F0F0EBEBEBF0F0F0F8F8F8FFFFFFFFFFFF
              FFFFFFFDFDFDF3F3F3E7E7E7E8E8E8FCFCFCFFFFFFFFFFFFF4F4F4E3E3E3DCDC
              DC00EDEDEDEFEFEFECECECECECECF2F2F2FFFFFFFFFFFFFFFFFFF6F6F6DFDFDF
              E5E5E5EEEEEEEAEAEAD9D9D9DBDBDBEBEBEBF4F4F4F2F2F2F7F7F7FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAB4B4B4CDCDCDEDEDEDF9F9F9F0
              F0F0ECECECF3F3F3FAFAFAFAFAFAF9F9F9FCFCFCFBFBFBFFFFFFFFFFFFF9F9F9
              DEDEDED5D5D5D9D9D9F8F8F8FFFFFFF3F3F3FBFBFBF0F0F0ECECECF7F7F7F7F7
              F7F4F4F4F1F1F1F7F7F7FBFBFBFDFDFDFAFAFAF6F6F6EAEAEAF0F0F0FFFFFFFF
              FFFFF3F3F3FCFCFCFDFDFDFFFFFFFCFCFCF9F9F9F2F2F2E7E7E7EAEAEAEBEBEB
              EBEBEBF0F0F0F3F3F3F6F6F6F9F9F9F8F8F8F7F7F7F7F7F7FFFFFFFFFFFFFFFF
              FFEEEEEEF7F7F7FFFFFFFFFFFFC2C2C2A6A6A6CACACAECECECEBEBEBE5E5E5EE
              EEEEF9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFF
              F7F7F7EAEAEAECECECEEEEEEF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7DFDFDFE6E6
              E600EDEDEDEFEFEFEEEEEEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDF2F2F2
              F8F8F8EAEAEADBDBDBD6D6D6E8E8E8F6F6F6F3F3F3F4F4F4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C7C7C7D3D3D3E7E7E7EFEFEFEDEDEDEE
              EEEEECECECF7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4
              D6D6D6DCDCDCE1E1E1F4F4F4F2F2F2EBEBEBFAFAFAF2F2F2F3F3F3FAFAFAFBFB
              FBF8F8F8F2F2F2F7F7F7FEFEFEFDFDFDFAFAFAF2F2F2EAEAEAEFEFEFFFFFFFF9
              F9F9F1F1F1FBFBFBFBFBFBFDFDFDFEFEFEF9F9F9EEEEEEE8E8E8F0F0F0F1F1F1
              F4F4F4F6F6F6F4F4F4F8F8F8F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFEDED
              EDF4F4F4FFFFFFFFFFFFC5C5C5A4A4A4C8C8C8ECECECEAEAEAE3E3E3EBEBEBF4
              F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFEF
              E6E6E6EBEBEBF3F3F3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DEDEDEF1F1
              F100F4F4F4F4F4F4F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2F0F0F0
              DEDEDECDCDCDD1D1D1E3E3E3F1F1F1F1F1F1F0F0F0FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF7F7F7CACACADCDCDCEEEEEEE8E8E8EAEAEAE8E8E8E7
              E7E7F0F0F0F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD4D4D4
              DFDFDFEAEAEAE9E9E9EBEBEBEDEDEDF3F3F3F7F7F7F9F9F9F9F9F9FFFFFFFFFF
              FFFFFFFFF8F8F8FEFEFEFFFFFFFDFDFDF9F9F9F2F2F2E9E9E9EFEFEFFEFEFEFB
              FBFBF0F0F0F6F6F6F7F7F7F8F8F8F9F9F9F3F3F3EBEBEBEBEBEBF2F2F2F4F4F4
              F7F7F7F4F4F4F6F6F6F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7ECEC
              ECFFFFFFFFFFFFCFCFCFA1A1A1C4C4C4EDEDEDEFEFEFE3E3E3ECECECF4F4F4FE
              FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DFDFDFDADADA
              E1E1E1EFEFEFF8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E1E1E1F4F4
              F400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBD6D6D6
              C9C9C9CFCFCFE3E3E3F3F3F3F3F3F3F0F0F0F8F8F8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4D1D1D1EFEFEFF4F4F4E5E5E5E5E5E5EAEAEAEB
              EBEBEDEDEDF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D7D7D7DEDEDE
              F1F1F1F2F2F2F0F0F0EDEDEDF7F7F7F3F3F3F3F3F3FCFCFCFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7F3F3F3E9E9E9F0F0F0FEFEFEFE
              FEFEF0F0F0F6F6F6F7F7F7EFEFEFEEEEEEEBEBEBE8E8E8EDEDEDF6F6F6F9F9F9
              F7F7F7F8F8F8FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E8E8E8FFFF
              FFFFFFFFDCDCDCA6A6A6BFBFBFECECECF6F6F6E8E8E8EBEBEBF9F9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EDEDEDE8E8E8E6E6E6
              DFDFDFDADADADEDEDEE7E7E7F1F1F1FEFEFEFAFAFAF1F1F1F4F4F4E4E4E4F3F3
              F300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E7E7E7D0D0D0C4C4C4
              D1D1D1E5E5E5F4F4F4F6F6F6F0F0F0F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDADADAC5C5C5DEDEDEF8F8F8FCFCFCE1E1E1DFDFDFEEEEEEF6
              F6F6F4F4F4F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDBDBDBF2F2F2
              F8F8F8F3F3F3F7F7F7F6F6F6FAFAFAFDFDFDF9F9F9FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFCFCFCF6F6F6EBEBEBF1F1F1FAFAFAFA
              FAFAEFEFEFF3F3F3F2F2F2E9E9E9E9E9E9E7E7E7E4E4E4ECECECF8F8F8FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEE1E1E1FFFFFFFFFF
              FFE0E0E0B0B0B0BBBBBBE4E4E4F7F7F7EDEDEDE7E7E7F4F4F4FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0F0F0EEEEEEEFEFEFEFEFEFF0F0F0
              EBEBEBE6E6E6E3E3E3DDDDDDE1E1E1EBEBEBF3F3F3F2F2F2F9F9F9E5E5E5F3F3
              F300FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DEDEDECBCBCBC7C7C7D3D3D3
              E8E8E8F3F3F3F6F6F6EDEDEDF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE8E8E8B9B9B9CDCDCDEDEDEDFEFEFEF7F7F7D8D8D8E4E4E4F4F4F4F8
              F8F8FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCE8E8E8F0F0F0
              EFEFEFEFEFEFF6F6F6F9F9F9FCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF7F7F7F7F7F7FDFDFDFAFAFAF3F3F3F0F0F0F7F7F7FAFAFAFA
              FAFAF2F2F2F1F1F1F6F6F6F3F3F3F4F4F4F2F2F2F7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E3E3E3FFFFFFFFFFFFE5E5
              E5B4B4B4C0C0C0E1E1E1F3F3F3F6F6F6EDEDEDF6F6F6FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAFAFAEDEDEDEBEBEBEBEBEBECECECEEEEEEF6F6F6
              F6F6F6F6F6F6F7F7F7F7F7F7F0F0F0F0F0F0F4F4F4F0F0F0FEFEFEF0F0F0F8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFDFDFD1D1D1D1D1D1D6D6D6E6E6E6
              F7F7F7F9F9F9F0F0F0EEEEEEFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFC4C4C4C4C4C4E9E9E9FBFBFBFCFCFCEBEBEBD4D4D4E8E8E8F7F7F7F8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFDFDFDE3E3E3D7D7D7DFDFDFE5E5E5
              EAEAEAF0F0F0F2F2F2F9F9F9FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEAEAEAF7F7F7FFFFFFFAFAFAF3F3F3F7F7F7FAFAFAFEFEFEFE
              FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3E6E6E6FCFCFCFFFFFFEBEBEBB9B9
              B9C1C1C1E6E6E6F7F7F7F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFAFAFAE9E9E9E7E7E7E8E8E8E8E8E8EAEAEAECECECF6F6F6
              F6F6F6F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FAFAFAF9F9F9F8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0D0D0D4D4D4D9D9D9E1E1E1F4F4F4
              FAFAFAF2F2F2EBEBEBF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDBDBDBBEBEBEDFDFDFFAFAFAFEFEFEF2F2F2E5E5E5D6D6D6ECECECF6F6F6FF
              FFFFFFFFFFFFFFFFFFFFFFE4E4E4EAEAEAEEEEEEDCDCDCCFCFCFDCDCDCE5E5E5
              EBEBEBEDEDEDEDEDEDF2F2F2F1F1F1F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFAFAFAE8E8E8E4E4E4FBFBFBFFFFFFF9F9F9F3F3F3F9F9F9F9F9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCF9F9F9FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDCDCDCE4E4E4F3F3F3FFFFFFF9F9F9C1C1C1BDBD
              BDDBDBDBF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F3F3F9
              F9F9FFFFFFFFFFFFEDEDEDE3E3E3E7E7E7EEEEEEEEEEEEECECECEFEFEFF8F8F8
              F7F7F7F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7
              F700FFFFFFFFFFFFFFFFFFEFEFEFD6D6D6D7D7D7DEDEDEDBDBDBE9E9E9F9F9F9
              F7F7F7EFEFEFF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFC3C3C3CDCDCDF1F1F1FCFCFCF7F7F7EEEEEEE3E3E3DCDCDCF6F6F6FFFFFFFF
              FFFFFFFFFFFFFFFFE3E3E3F6F6F6FCFCFCF6F6F6ECECECE9E9E9F7F7F7FCFCFC
              F6F6F6EAEAEAE6E6E6EDEDEDEEEEEEF1F1F1F2F2F2F9F9F9FFFFFFFEFEFEF8F8
              F8F0F0F0E7E7E7EBEBEBFDFDFDFAFAFAF3F3F3F3F3F3F7F7F7F9F9F9FAFAFAF9
              F9F9F9F9F9F9F9F9F8F8F8F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F6F3F3F3FFFFFFFFFFFFFFFFFFDBDBDBC1C1C1D6D6
              D6ECECECF9F9F9FFFFFFFFFFFFFFFFFFFCFCFCFDFDFDF7F7F7F3F3F3FBFBFBFF
              FFFFFFFFFFFCFCFCEFEFEFE8E8E8E5E5E5EDEDEDF1F1F1F8F8F8FBFBFBFCFCFC
              F8F8F8FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF7F7
              F700FFFFFFFFFFFFF3F3F3D6D6D6D4D4D4E1E1E1DCDCDCE3E3E3F2F2F2F8F8F8
              EEEEEEEEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
              E7C1C1C1E1E1E1FAFAFAF7F7F7EEEEEEF4F4F4DEDEDEEAEAEAFFFFFFFFFFFFFF
              FFFFFFFFFFF6F6F6F9F9F9FFFFFFFCFCFCFCFCFCFEFEFEF6F6F6FFFFFFFEFEFE
              FFFFFFFFFFFFFAFAFAEFEFEFEBEBEBECECECEDEDEDF2F2F2FFFFFFFFFFFFFFFF
              FFF6F6F6EBEBEBEAEAEAF3F3F3F3F3F3F1F1F1F3F3F3F3F3F3F4F4F4F3F3F3F1
              F1F1F0F0F0EEEEEEF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
              F4F4F4F3F3F3F0F0F0EBEBEBEEEEEEF0F0F0EBEBEBE0E0E0DFDFDFE0E0E0E4E4
              E4EFEFEFF4F4F4F8F8F8FAFAFAFAFAFAF9F9F9FFFFFFF6F6F6F6F6F6FFFFFFFF
              FFFFFFFFFFF9F9F9F0F0F0E9E9E9E3E3E3EFEFEFF7F7F7FBFBFBFFFFFFFFFFFF
              FCFCFCFCFCFCFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF0F0
              F000FFFFFFFFFFFFE3E3E3D3D3D3E3E3E3E1E1E1DBDBDBE9E9E9F4F4F4F0F0F0
              E9E9E9F1F1F1FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
              D2C6C6C6EDEDEDF7F7F7EEEEEEF8F8F8F7F7F7E4E4E4FFFFFFFFFFFFFFFFFFFF
              FFFFEFEFEFE7E7E7E3E3E3D5D5D5C6C6C6BFBFBFC3C3C3C9C9C9DCDCDCEFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFDFD
              FDEEEEEEE3E3E3E7E7E7F4F4F4F7F7F7F4F4F4F4F4F4F1F1F1F0F0F0ECECECE9
              E9E9E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6F2F2F2F1F1F1
              F0F0F0F2F2F2EDEDEDE4E4E4D7D7D7D1D1D1CBCBCBD3D3D3E8E8E8FAFAFAE9E9
              E9ECECECF9F9F9F6F6F6F0F0F0F2F2F2F7F7F7FFFFFFF4F4F4F9F9F9FFFFFFFF
              FFFFFBFBFBF6F6F6F1F1F1ECECECE3E3E3EFEFEFFAFAFAFEFEFEFFFFFFFDFDFD
              F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FAFAFAFFFFFFF3F3
              F300FFFFFFF7F7F7D1D1D1D9D9D9E9E9E9DEDEDEDFDFDFEEEEEEF1F1F1EBEBEB
              EEEEEEF8F8F8FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
              CCD0D0D0EEEEEEEEEEEEF8F8F8FFFFFFEEEEEEFFFFFFFFFFFFFFFFFFF9F9F9ED
              EDEDECECECE7E7E7D1D1D1C0C0C0C4C4C4D0D0D0CFCFCFC5C5C5C7C7C7D6D6D6
              E9E9E9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF
              EFDFDFDFDFDFDFEDEDEDFAFAFAFBFBFBF8F8F8F6F6F6F2F2F2F0F0F0EEEEEEED
              EDEDF1F1F1FFFFFFFFFFFFF8F8F8F0F0F0EDEDEDECECECEFEFEFF4F4F4F4F4F4
              F0F0F0EFEFEFE6E6E6DDDDDDD8D8D8D4D4D4D5D5D5DDDDDDE7E7E7F6F6F6FFFF
              FFEBEBEBF2F2F2FFFFFFF4F4F4EBEBEBEFEFEFF8F8F8F7F7F7FCFCFCFFFFFFFF
              FFFFFEFEFEF8F8F8F1F1F1EAEAEAEAEAEAF8F8F8FFFFFFFFFFFFFCFCFCFAFAFA
              F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3F3F3FCFCFCF9F9F9F6F6
              F600F8F8F8DBDBDBCCCCCCE6E6E6EAEAEADBDBDBE5E5E5F1F1F1F0F0F0EEEEEE
              F8F8F8FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
              D2DCDCDCFBFBFBFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFF9F9F9EEEEEEF1
              F1F1EBEBEBD7D7D7C9C9C9CFCFCFDDDDDDE4E4E4E5E5E5E9E9E9E0E0E0D3D3D3
              D1D1D1DDDDDDE9E9E9F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
              F4EBEBEBEDEDEDF2F2F2F8F8F8F8F8F8F2F2F2EFEFEFEEEEEEEEEEEEEEEEEEEE
              EEEEF1F1F1F9F9F9E6E6E6D7D7D7DDDDDDE3E3E3EBEBEBEEEEEEECECECEAEAEA
              EBEBEBEAEAEAEBEBEBEEEEEEEEEEEEEFEFEFF0F0F0F8F8F8FEFEFEF4F4F4F4F4
              F4F2F2F2F1F1F1F8F8F8FFFFFFF3F3F3F2F2F2F8F8F8F6F6F6FAFAFAFFFFFFFF
              FFFFFFFFFFF6F6F6EDEDEDE4E4E4ECECECFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEEEEEEFFFFFFF7F7F7EDEDEDEEEE
              EE00E5E5E5D0D0D0DADADAEEEEEEE7E7E7DCDCDCEBEBEBF3F3F3F1F1F1F7F7F7
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB
              DBE3E3E3FFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFFFFFFFCFCFCF0F0F0EEEEEEE7
              E7E7D4D4D4CCCCCCD9D9D9ECECECF6F6F6F6F6F6FEFEFEFFFFFFFFFFFFFFFFFF
              EFEFEFDDDDDDD6D6D6D7D7D7E8E8E8F2F2F2F1F1F1F3F3F3F9F9F9FEFEFEFAFA
              FAF1F1F1EFEFEFF3F3F3FAFAFAFAFAFAF3F3F3F1F1F1EDEDEDECECECEDEDEDEB
              EBEBE9E9E9E8E8E8D5D5D5C7C7C7CACACAD8D8D8E8E8E8E0E0E0DDDDDDE4E4E4
              ECECECF4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ECEC
              ECEAEAEAE8E8E8F0F0F0FAFAFAFFFFFFF7F7F7F8F8F8F7F7F7F6F6F6FCFCFCFF
              FFFFFCFCFCEBEBEBE1E1E1E5E5E5F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8EDEDEDE7E7E7EEEEEEF3F3
              F300DBDBDBD6D6D6E8E8E8EEEEEEE1E1E1DEDEDEEEEEEEF3F3F3F4F4F4FDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
              F0D8D8D8E8E8E8E5E5E5F0F0F0FFFFFFFFFFFFFFFFFFEFEFEFE3E3E3DADADACF
              CFCFCFCFCFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCF1F1F1E3E3E3DADADADCDCDCE1E1E1E3E3E3E1E1E1E5E5E5F2F2F2F4F4
              F4F0F0F0EEEEEEF1F1F1F6F6F6F4F4F4F3F3F3F3F3F3EFEFEFF0F0F0EEEEEEED
              EDEDEDEDEDF0F0F0EDEDEDEAEAEAF4F4F4FFFFFFFDFDFDF4F4F4FAFAFAFDFDFD
              FEFEFEFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6F2F2F2F9F9F9FAFA
              FAF9F9F9F7F7F7F3F3F3F2F2F2F9F9F9FCFCFCF9F9F9F2F2F2F4F4F4F9F9F9FB
              FBFBF0F0F0E4E4E4E6E6E6F8F8F8FFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DFDFDFC8C8C8C6C6C6D2D2D2E0E0E0F1F1
              F100DEDEDEDFDFDFEFEFEFEBEBEBDCDCDCE5E5E5F4F4F4F9F9F9FCFCFCFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFF
              FFDEDEDED7D7D7ECECECFFFFFFFFFFFFFFFFFFEDEDEDDEDEDED4D4D4D0D0D0D6
              D6D6EDEDEDFFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              FFFFFFFFFFFFFFFFFFFAFAFAEFEFEFF1F1F1F1F1F1F0F0F0F6F6F6F3F3F3F7F7
              F7F2F2F2F0F0F0EEEEEEF0F0F0F0F0F0EFEFEFF1F1F1F0F0F0F2F2F2F0F0F0F0
              F0F0F0F0F0F3F3F3F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7EEEEEEEBEBEBF0F0F0F9F9F9FFFF
              FFFFFFFFFFFFFFFBFBFBF8F8F8F3F3F3F6F6F6F7F7F7F6F6F6F7F7F7F9F9F9F7
              F7F7EFEFEFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFCFCFCECECECD7D7D7C4C4C4CCCCCCDCDCDCE9E9E9EFEFEFE9E9
              E900E6E6E6E8E8E8F1F1F1E7E7E7DEDEDEF0F0F0F9F9F9FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1B8B8B8AAAAAAAAAAAAB2B2B2CFCF
              CFEEEEEED9D9D9DFDFDFFFFFFFFFFFFFF0F0F0E1E1E1D6D6D6D4D4D4DFDFDFEF
              EFEFFFFFFFFFFFFFFBFBFBF6F6F6F3F3F3F3F3F3FDFDFDFFFFFFFFFFFFF1F1F1
              F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FFFFFFFFFFFFFFFF
              FFF2F2F2EFEFEFE7E7E7EAEAEAEBEBEBF2F2F2F4F4F4F3F3F3F3F3F3F2F2F2F3
              F3F3F3F3F3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFEFEFEFEEEEEEEFEFEFEDEDEDEBEBEBEEEEEEF0F0F0F0F0
              F0F1F1F1E9E9E9ECECECEAEAEAEAEAEAF3F3F3F9F9F9F4F4F4F1F1F1F8F8F8FD
              FDFDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F7F7F7E7E7E7D5D5D5CACACAC5C5C5D7D7D7EAEAEAF0F0F0FDFDFDFFFFFFFDFD
              FD00EBEBEBF0F0F0EEEEEEDFDFDFE3E3E3F7F7F7F9F9F9FDFDFDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFECECECB1B1B1AFAFAFCBCBCBD7D7D7D7D7D7C4C4C4AEAE
              AEB1B1B1C2C2C2C7C7C7F9F9F9FAFAFAE5E5E5DEDEDED9D9D9E1E1E1F0F0F0FD
              FDFDFFFFFFFDFDFDF7F7F7F0F0F0F1F1F1FFFFFFFFFFFFFFFFFFFDFDFDE0E0E0
              EDEDEDEFEFEFF3F3F3F9F9F9FFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFF
              FFF6F6F6E8E8E8DFDFDFE5E5E5EAEAEAF3F3F3F7F7F7F9F9F9F7F7F7F6F6F6F6
              F6F6F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7D7D7D7DEDEDEF0F0F0EEEEEEF3F3F3F3F3F3EDEDEDECEC
              ECEDEDEDEAEAEAE3E3E3E8E8E8E9E9E9EEEEEEFAFAFAF9F9F9F3F3F3EDEDEDFA
              FAFAFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFFFFFFFFFFFFFFFFFFFAFAFAE9E9E9
              DEDEDED9D9D9D4D4D4D6D6D6DFDFDFF1F1F1F6F6F6FAFAFAFFFFFFFFFFFFFEFE
              FE00EEEEEEF0F0F0E5E5E5DFDFDFEFEFEFF9F9F9FBFBFBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7BEBEBEBCBCBCE5E5E5F6F6F6F7F7F7F7F7F7F3F3F3E4E4
              E4C3C3C3ADADADB8B8B8E5E5E5E1E1E1D4D4D4DCDCDCE5E5E5ECECECF9F9F9FD
              FDFDFCFCFCFAFAFAF3F3F3F1F1F1FEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D3D3D3
              EAEAEAF4F4F4F4F4F4F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF1F1F1DDDDDDDCDCDCE1E1E1EAEAEAF0F0F0F6F6F6F9F9F9FAFAFAFAFAFAFB
              FBFBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF2F2F2E3E3E3D0D0D0DDDDDDF1F1F1F1F1F1F8F8F8F2F2F2EBEBEBEDED
              EDF1F1F1F7F7F7EBEBEBEAEAEAF1F1F1EEEEEEFCFCFCF9F9F9F6F6F6F8F8F8EF
              EFEFFBFBFBFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFF3F3F3E3E3E3DDDDDD
              DCDCDCDBDBDBDDDDDDE8E8E8F2F2F2F8F8F8FAFAFAFFFFFFFAFAFAF2F2F2EEEE
              EE00EDEDEDE5E5E5DEDEDEE9E9E9F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFCACACAC2C2C2EAEAEAFAFAFAEFEFEFE6E6E6EAEAEAF7F7F7FBFB
              FBF9F9F9EBEBEBE3E3E3E3E3E3E0E0E0E3E3E3EEEEEEEEEEEEEBEBEBF2F2F2F9
              F9F9F7F7F7F8F8F8F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD0D0D0
              EAEAEAF8F8F8F3F3F3F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
              F9E5E5E5D5D5D5DFDFDFE7E7E7EEEEEEF1F1F1F3F3F3F9F9F9FDFDFDFEFEFEFC
              FCFCFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F0F0F0E5E5E5E1E1E1D6D6D6E7E7E7F3F3F3F0F0F0F8F8F8F0F0F0EAEAEAEDED
              EDF4F4F4F9F9F9F8F8F8EDEDEDF3F3F3F6F6F6FCFCFCFDFDFDFAFAFAFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDE0E0E0DFDFDFE4E4E4
              E8E8E8E8E8E8F1F1F1F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFF4F4F4EFEFEFEFEF
              EF00DDDDDDDCDCDCE7E7E7F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFDCDCDCC2C2C2E4E4E4FFFFFFFFFFFFF6F6F6E7E7E7ECECECF0F0F0F7F7
              F7F9F9F9F6F6F6EBEBEBE6E6E6F4F4F4FBFBFBF7F7F7F0F0F0EBEBEBF0F0F0F9
              F9F9F6F6F6F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDCDCDCCDCDCD
              ECECECF7F7F7F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1
              E1D6D6D6DFDFDFF1F1F1ECECECEDEDEDEDEDEDF1F1F1FAFAFAFFFFFFFFFFFFFC
              FCFCF8F8F8F7F7F7F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2F2F2
              E7E7E7E8E8E8E7E7E7D4D4D4EBEBEBF6F6F6F2F2F2F9F9F9EDEDEDEAEAEAEDED
              EDF9F9F9FDFDFDFAFAFAF6F6F6ECECECF6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAE7E7E7E8E8E8EDEDEDF2F2F2
              EFEFEFEDEDEDF3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1F8F8
              F800DDDDDDE9E9E9F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EAEAEAC6C6C6DEDEDEFDFDFDFFFFFFF9F9F9F6F6F6E6E6E6EAEAEAEFEFEFF2F2
              F2F6F6F6F0F0F0E8E8E8F3F3F3FDFDFDFCFCFCF8F8F8F3F3F3ECECECF0F0F0F9
              F9F9F6F6F6F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFCFCFCEAEAEACDCDCDD9D9D9
              F3F3F3F3F3F3F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6D6D6D6C9C9
              C9C1C1C1DBDBDBFCFCFCF2F2F2E5E5E5F0F0F0F7F7F7F8F8F8FCFCFCFCFCFCFA
              FAFAF7F7F7F1F1F1F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2F2F2
              EEEEEEEBEBEBDCDCDCD6D6D6F1F1F1F4F4F4F4F4F4F8F8F8EEEEEEEDEDEDF0F0
              F0F9F9F9FBFBFBFAFAFAF8F8F8F6F6F6EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAEAEAD9D9D9DADADAE4E4E4EBEBEBEEEEEEEEEEEE
              E7E7E7E9E9E9FAFAFAFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8ECECECDEDEDEE8E8
              E800EFEFEFF9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              CDCDCDD7D7D7FBFBFBFFFFFFFAFAFAF9F9F9F9F9F9E0E0E0E3E3E3F3F3F3F4F4
              F4F6F6F6F2F2F2ECECECF1F1F1FFFFFFFFFFFFFAFAFAF6F6F6EEEEEEEEEEEEF6
              F6F6F3F3F3F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFEBEBEBD5D5D5CDCDCDEBEBEB
              F6F6F6F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDBDBDBDADADAD3D3
              D3D0D0D0DDDDDDE8E8E8FAFAFAE5E5E5EEEEEEFAFAFAFDFDFDFBFBFBFBFBFBFA
              FAFAF6F6F6F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFFFFFF
              EEEEEED8D8D8CDCDCDE0E0E0F3F3F3F3F3F3F6F6F6F9F9F9F3F3F3EFEFEFF0F0
              F0F7F7F7FDFDFDFDFDFDFAFAFAF8F8F8F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDFDFDFCACACACACACADADADAEAEAEAF2F2F2F3F3F3F2F2F2
              EDEDEDFAFAFAFFFFFFFFFFFFFEFEFEF9F9F9F0F0F0E7E7E7DBDBDBD9D9D9E5E5
              E500F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7
              D1D1D1F6F6F6FFFFFFFCFCFCF2F2F2F8F8F8EBEBEBD4D4D4E5E5E5F4F4F4FBFB
              FBF9F9F9F6F6F6ECECECEEEEEEFFFFFFFFFFFFFCFCFCF9F9F9F1F1F1ECECECF2
              F2F2F6F6F6F9F9F9FDFDFDFFFFFFFBFBFBE3E3E3CBCBCBCBCBCBE5E5E5FAFAFA
              F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E3E3E3DFDFDFE4E4E4D8D8
              D8E5E5E5FBFBFBFEFEFEF6F6F6EDEDEDE8E8E8F6F6F6FFFFFFFFFFFFFEFEFEF9
              F9F9F6F6F6F6F6F6FCFCFCFEFEFEFFFFFFFEFEFEFCFCFCFCFCFCFFFFFFF2F2F2
              CACACAC0C0C0D6D6D6F0F0F0F3F3F3F4F4F4FAFAFAFDFDFDF9F9F9F2F2F2F6F6
              F6F9F9F9FEFEFEFEFEFEFAFAFAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
              FCFCF7F7F7DEDEDEBFBFBFC4C4C4DCDCDCF1F1F1FCFCFCFCFCFCF9F9F9F9F9F9
              FAFAFAFFFFFFFFFFFFFCFCFCF1F1F1EBEBEBE6E6E6E0E0E0DDDDDDE4E4E4E7E7
              E700FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C7C7C7
              E6E6E6FFFFFFFDFDFDF2F2F2FAFAFAFDFDFDD9D9D9D6D6D6EFEFEFF7F7F7FFFF
              FFFBFBFBF4F4F4EEEEEEF1F1F1FFFFFFFFFFFFFFFFFFFAFAFAF6F6F6EDEDEDEF
              EFEFF6F6F6F8F8F8FAFAFAF6F6F6DADADAC7C7C7CFCFCFE7E7E7F9F9F9F8F8F8
              F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAE7E7E7E5E5E5DCDCDCDFDF
              DFFAFAFAFFFFFFFFFFFFFCFCFCFAFAFAF4F4F4F4F4F4FFFFFFFFFFFFFFFFFFFB
              FBFBF7F7F7F7F7F7FAFAFAFCFCFCFFFFFFFEFEFEFDFDFDFEFEFEEEEEEEC8C8C8
              B6B6B6D2D2D2F0F0F0F7F7F7F9F9F9F9F9F9F9F9F9FCFCFCFBFBFBF6F6F6F6F6
              F6F9F9F9FDFDFDFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
              E8E8D9D9D9CACACAC8C8C8DDDDDDF1F1F1FFFFFFFBFBFBF9F9F9F9F9F9F7F7F7
              F0F0F0F3F3F3F7F7F7F4F4F4EEEEEEEEEEEEF2F2F2F2F2F2F6F6F6FAFAFAFCFC
              FC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7CACACADADADA
              FBFBFBFEFEFEEBEBEBEDEDEDFFFFFFE4E4E4C7C7C7E3E3E3F7F7F7F7F7F7FBFB
              FBFEFEFEF8F8F8F6F6F6F0F0F0FCFCFCFFFFFFFFFFFFFCFCFCF6F6F6EFEFEFEF
              EFEFF6F6F6F3F3F3F3F3F3F4F4F4F1F1F1EDEDEDF6F6F6FAFAFAFAFAFAFAFAFA
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBEAEAEADFDFDFE1E1E1F3F3
              F3FCFCFCF3F3F3F9F9F9FBFBFBF0F0F0F3F3F3F7F7F7F8F8F8FFFFFFFFFFFFFB
              FBFBF4F4F4F4F4F4FAFAFAFAFAFAFDFDFDFEFEFEF3F3F3EEEEEEDADADAC8C8C8
              DADADAF0F0F0F7F7F7F7F7F7F9F9F9FAFAFAFCFCFCFFFFFFFFFFFFFAFAFAFAFA
              FAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D4
              D4D4D0D0D0D5D5D5DDDDDDECECECFAFAFAF7F7F7F0F0F0F6F6F6F6F6F6F0F0F0
              EBEBEBF3F3F3FBFBFBF8F8F8F6F6F6F7F7F7F7F7F7F6F6F6FCFCFCFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6D0D0D0EEEEEE
              FAFAFAF1F1F1E9E9E9FFFFFFFDFDFDC5C5C5D1D1D1F1F1F1F7F7F7F7F7F7F8F8
              F8FFFFFFFFFFFFFAFAFAF1F1F1F9F9F9FFFFFFFFFFFFFDFDFDF6F6F6F6F6F6F1
              F1F1F0F0F0F6F6F6F9F9F9F6F6F6FBFBFBFFFFFFFCFCFCFCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3EDEDEDE7E7E7DFDFDFF1F1F1F6F6
              F6F1F1F1F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFDFDFDF2F2F2FFFFFFFFFFFFF9
              F9F9F0F0F0F0F0F0F3F3F3F6F6F6FBFBFBFAFAFAF2F2F2DEDEDED6D6D6E6E6E6
              F3F3F3F9F9F9FCFCFCFAFAFAF7F7F7F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFBFB
              FBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFDFDFC9
              C9C9D6D6D6E1E1E1EEEEEEFAFAFAFDFDFDF9F9F9FEFEFEFEFEFEF7F7F7EEEEEE
              F0F0F0F9F9F9F9F9F9F4F4F4F7F7F7F3F3F3F0F0F0EEEEEEF3F3F3F8F8F8FEFE
              FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1D0D0D0E5E5E5F7F7F7
              F3F3F3EBEBEBFBFBFBFFFFFFDADADAC6C6C6E8E8E8F9F9F9F7F7F7F4F4F4F8F8
              F8FFFFFFFFFFFFFFFFFFF4F4F4F0F0F0FFFFFFFFFFFFFFFFFFFAFAFAFAFAFAF8
              F8F8F4F4F4FBFBFBFAFAFAFAFAFAFAFAFAF6F6F6F8F8F8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEE5E5E5E1E1E1EBEBEBF7F7F7F0F0
              F0F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8FFFFFFFFFFFFF2
              F2F2E8E8E8EBEBEBEEEEEEF1F1F1F2F2F2F6F6F6F8F8F8F7F7F7F9F9F9FCFCFC
              FDFDFDFCFCFCFCFCFCFAFAFAFAFAFAFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0C9C9C9CA
              CACADCDCDCEEEEEEFCFCFCFFFFFFFDFDFDFFFFFFFFFFFFF3F3F3EEEEEEEEEEEE
              F1F1F1F3F3F3EEEEEEF1F1F1F7F7F7F3F3F3F2F2F2F3F3F3F6F6F6F7F7F7F7F7
              F700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8D2D2D2DEDEDEF6F6F6F6F6F6
              F2F2F2F7F7F7FFFFFFFAFAFAC1C1C1D7D7D7F2F2F2FAFAFAF9F9F9F9F9F9FCFC
              FCFFFFFFFFFFFFFFFFFFF9F9F9F0F0F0FFFFFFFFFFFFFEFEFEF9F9F9F9F9F9FA
              FAFAFBFBFBFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9E8E8E8DFDFDFDEDEDEEBEBEBF9F9F9F7F7F7F2F2
              F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E6
              E6E6E7E7E7F2F2F2F3F3F3EFEFEFEFEFEFF1F1F1F4F4F4FBFBFBFFFFFFFDFDFD
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5C1C1C1C2C2C2D7
              D7D7EBEBEBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0EAEAEAF3F3F3F8F8F8
              FCFCFCF9F9F9F6F6F6F6F6F6F7F7F7F8F8F8F7F7F7F6F6F6F3F3F3F6F6F6F6F6
              F600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8D9D9D9EEEEEEF9F9F9F7F7F7
              FCFCFCFFFFFFFFFFFFDCDCDCC5C5C5EBEBEBF8F8F8F8F8F8F9F9F9F9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFFFFEFEFEF9F9F9F7F7F7F9
              F9F9FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEDFDFDFD4D4D4DEDEDEF1F1F1FDFDFDFFFFFFFFFFFFFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFBFBFBEAEAEAE8
              E8E8F8F8F8FFFFFFFDFDFDF9F9F9F6F6F6F0F0F0F0F0F0F2F2F2F6F6F6F9F9F9
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C3C3C3BFBFBFD7D7D7EB
              EBEBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEBEBEBF7F7F7FFFFFFFFFFFF
              FFFFFFFFFFFFFBFBFBF2F2F2F9F9F9FAFAFAF9F9F9F6F6F6F3F3F3F6F6F6FAFA
              FA00FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7CFCFCFE5E5E5F1F1F1F7F7F7FAFAFA
              FFFFFFFFFFFFFFFFFFC7C7C7D6D6D6FAFAFAFAFAFAF8F8F8FAFAFAFCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFDFDFDE9E9E9F6F6F6FFFFFFFAFAFAF1F1F1F2F2F2F4
              F4F4F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              FFFFFFF6F6F6C8C8C8C0C0C0D8D8D8F0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFBFB
              FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE3E3E3D6D6D6DBDBDBE4E4E4F8
              F8F8FFFFFFFFFFFFFCFCFCFDFDFDFDFDFDFAFAFAF7F7F7F2F2F2F1F1F1F1F1F1
              F4F4F4F6F6F6F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4
              F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCC1C1C1C4C4C4DDDDDDEFEFEFF6
              F6F6FCFCFCF8F8F8FAFAFAFEFEFEFCFCFCF9F9F9F2F2F2FFFFFFFFFFFFFFFFFF
              FFFFFFFCFCFCF6F6F6ECECECF6F6F6FBFBFBF7F7F7F3F3F3F6F6F6F9F9F9FEFE
              FE00FFFFFFFFFFFFFFFFFFF4F4F4CDCDCDCCCCCCE5E5E5EDEDEDF1F1F1F7F7F7
              FFFFFFFFFFFFE1E1E1B9B9B9E7E7E7FAFAFAF9F9F9FCFCFCFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF2F2F2E4E4E4F0F0F0F3F3F3E5E5E5E1E1E1E8E8E8ED
              EDEDF6F6F6FAFAFAFAFAFAFAFAFAFCFCFCFAFAFAFCFCFCFAFAFAF7F7F7F3F3F3
              EFEFEFDFDFDFC6C6C6DADADAF4F4F4F9F9F9F9F9F9F6F6F6F6F6F6FAFAFAF0F0
              F0F6F6F6FFFFFFFFFFFFFFFFFFFBFBFBDCDCDCC0C0C0C1C1C1CCCCCCD8D8D8EA
              EAEAFAFAFAFEFEFEFBFBFBFEFEFEFCFCFCFAFAFAFCFCFCFAFAFAF7F7F7F1F1F1
              F1F1F1F2F2F2F2F2F2F0F0F0EFEFEFECECECF0F0F0F3F3F3F8F8F8FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFEEEEEED4D4D4C2C2C2CBCBCBEAEAEAF9F9F9F7F7F7F9
              F9F9F7F7F7F0F0F0F2F2F2F1F1F1F4F4F4FBFBFBFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F3F0F0F0E5E5E5EEEEEEFCFCFCFAFAFAF6F6F6F7F7F7FCFCFCFFFF
              FF00FFFFFFFFFFFFFFFFFFD4D4D4C1C1C1D0D0D0E1E1E1E4E4E4E4E4E4EAEAEA
              F9F9F9FCFCFCB8B8B8C3C3C3F9F9F9FDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9EFEFEFEAEAEAE3E3E3DBDBDBDEDEDEE6E6E6EA
              EAEAF1F1F1F7F7F7F9F9F9F7F7F7F6F6F6F3F3F3EEEEEEEAEAEAE7E7E7E5E5E5
              E1E1E1DFDFDFE8E8E8F3F3F3F9F9F9F2F2F2F0F0F0ECECECEBEBEBEEEEEEEFEF
              EFFDFDFDFFFFFFFFFFFFFFFFFFE7E7E7C9C9C9CCCCCCECECECF7F7F7F3F3F3F2
              F2F2EEEEEEF3F3F3FFFFFFFFFFFFFEFEFEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFDF0F0F0E1E1E1CFCFCFC6C6C6D1D1D1EBEBEBFBFBFBF7F7F7F2F2F2EE
              EEEEEBEBEBECECECEDEDEDEBEBEBF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAEDEDEDEBEBEBDEDEDEEFEFEFFDFDFDFAFAFAF4F4F4F4F4F4FCFCFCFFFF
              FF00FFFFFFFFFFFFEEEEEEC0C0C0C7C7C7DFDFDFE9E9E9ECECECEAEAEAE9E9E9
              EEEEEEDADADAB6B6B6E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFAFAFAE1E1E1EBEBEBF9F9F9EAEAEAF2F2F2F9F9F9FCFCFCF3F3F3EA
              EAEAE5E5E5E6E6E6EEEEEEF1F1F1F1F1F1F0F0F0E9E9E9E6E6E6E5E5E5E5E5E5
              EAEAEAEFEFEFF7F7F7F4F4F4F0F0F0EBEBEBEBEBEBEDEDEDEDEDEDF8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFF8F8F8E3E3E3E3E3E3FAFAFAFFFFFFFFFFFFFFFFFFF8
              F8F8F0F0F0EEEEEEF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1EEEEEEEAEAEAE8E8
              E8E5E5E5EBEBEBDBDBDBD1D1D1D3D3D3DCDCDCEAEAEAF4F4F4F7F7F7F3F3F3EE
              EEEEF0F0F0F0F0F0F1F1F1F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
              F0F0F0EBEBEBE5E5E5E1E1E1F7F7F7FEFEFEF9F9F9F7F7F7F8F8F8FFFFFFFFFF
              FF00FFFFFFFFFFFFDBDBDBB9B9B9DBDBDBF0F0F0F7F7F7F3F3F3F1F1F1FAFAFA
              FBFBFBD1D1D1D8D8D8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFE5E5E5DFDFDFF8F8F8FEFEFEE8E8E8E6E6E6FBFBFBFFFFFFFDFDFDFAFAFAF6
              F6F6F0F0F0EDEDEDEDEDEDEFEFEFECECECECECECEDEDEDF0F0F0F3F3F3F2F2F2
              F1F1F1EDEDEDEAEAEAE6E6E6E8E8E8ECECECF1F1F1F3F3F3F9F9F9FFFFFFFFFF
              FFFCFCFCEDEDEDDFDFDFD4D4D4D7D7D7E9E9E9F3F3F3F3F3F3EEEEEEEAEAEAE9
              E9E9E9E9E9E9E9E9E9E9E9E6E6E6E7E7E7EAEAEAF7F7F7FCFCFCFBFBFBF4F4F4
              F2F2F2F9F9F9F0F0F0ECECECEFEFEFEDEDEDEBEBEBF0F0F0F7F7F7F8F8F8FDFD
              FDFFFFFFFFFFFFE8E8E8E1E1E1E1E1E1E4E4E4EBEBEBF1F1F1FAFAFAF3F3F3F7
              F7F7F9F9F9F4F4F4F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E8E8
              EBEBEBECECECE8E8E8EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFDADADABFBFBFE8E8E8F6F6F6F2F2F2F0F0F0F9F9F9FFFFFF
              EDEDEDDADADAF3F3F3F9F9F9F4F4F4F6F6F6FCFCFCFFFFFFFFFFFFFFFFFFF9F9
              F9FCFCFCFFFFFFF0F0F0D4D4D4C7C7C7CFCFCFDEDEDEECECECF3F3F3FBFBFBF8
              F8F8F9F9F9FCFCFCFCFCFCFBFBFBF1F1F1E8E8E8E7E7E7EAEAEAEBEBEBE6E6E6
              E6E6E6E5E5E5E8E8E8ECECECF3F3F3F3F3F3F6F6F6F9F9F9FFFFFFFFFFFFEDED
              EDD2D2D2D1D1D1D9D9D9E0E0E0E8E8E8EEEEEEEDEDEDEEEEEEF0F0F0F3F3F3F1
              F1F1EEEEEEF1F1F1F0F0F0EDEDEDEDEDEDF1F1F1F3F3F3F2F2F2FAFAFAFFFFFF
              FFFFFFFAFAFADFDFDFD7D7D7D1D1D1CDCDCDC7C7C7C0C0C0BDBDBDB9B9B9B8B8
              B8C0C0C0D1D1D1EFEFEFF2F2F2EEEEEEEDEDEDF7F7F7F4F4F4F3F3F3F4F4F4FA
              FAFAFFFFFFF6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DEDEDEE1E1E1
              EEEEEEF6F6F6F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFCFCFCDDDDDDC2C2C2E3E3E3EBEBEBE9E9E9F1F1F1FEFEFEF7F7F7
              D9D9D9EAEAEAF8F8F8F6F6F6F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6
              F6EAEAEAC7C7C7AAAAAAB7B7B7CBCBCBD0D0D0CFCFCFDCDCDCF8F8F8F7F7F7F1
              F1F1F2F2F2F8F8F8FFFFFFFEFEFEF0F0F0E8E8E8E8E8E8EBEBEBE6E6E6E3E3E3
              EAEAEAEEEEEEF4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF7F7F7F7F7F7FAFAFAF9F9F9FAFAFAF9F9F9F0F0F0F0F0F0F4F4F4F9F9F9F6
              F6F6F7F7F7FAFAFAF6F6F6F6F6F6FEFEFEFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
              E3E3E3BDBDBDB6B6B6BDBDBDC1C1C1C1C1C1C1C1C1C6C6C6CBCBCBD2D2D2D3D3
              D3CFCFCFCBCBCBD2D2D2EBEBEBF4F4F4F2F2F2F3F3F3FDFDFDF2F2F2F1F1F1F6
              F6F6FFFFFFF7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDEDEDEEBEBEB
              F7F7F7FAFAFAF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
              F900FFFFFFFFFFFFEBEBEBCACACADFDFDFEEEEEEF7F7F7FFFFFFF7F7F7DEDEDE
              E1E1E1F7F7F7F7F7F7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0D7D7
              D7B3B3B3AEAEAECBCBCBE8E8E8ECECECE5E5E5E1E1E1E1E1E1E4E4E4EFEFEFEE
              EEEEE9E9E9EBEBEBFFFFFFFFFFFFEDEDEDE3E3E3EAEAEAF1F1F1E8E8E8ECECEC
              F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFBFBFBF6F6F6FCFCFCFFFFFFFFFFFFF3F3F3F6F6F6F7F7F7F1F1F1F1
              F1F1F7F7F7FCFCFCF9F9F9FFFFFFFFFFFFFFFFFFFAFAFAFEFEFEEBEBEBD4D4D4
              C5C5C5C0C0C0D5D5D5E0E0E0DFDFDFE4E4E4EDEDEDF1F1F1F2F2F2F4F4F4F4F4
              F4F4F4F4F6F6F6EEEEEEF0F0F0F1F1F1F1F1F1F2F2F2F4F4F4FEFEFEF1F1F1F4
              F4F4FBFBFBF9F9F9F8F8F8FEFEFEFFFFFFFFFFFFF6F6F6E4E4E4E8E8E8FCFCFC
              FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
              EE00FFFFFFFEFEFEF3F3F3E0E0E0DEDEDEFBFBFBFFFFFFF8F8F8E7E7E7E7E7E7
              F9F9F9FCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCB9B9
              B9B6B6B6D6D6D6F1F1F1F8F8F8F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFEFEFEF1
              F1F1E8E8E8EBEBEBFFFFFFFFFFFFF0F0F0E3E3E3EEEEEEF3F3F3EDEDEDF4F4F4
              FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFBFBFBECECECF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEFEFEFF1
              F1F1F2F2F2F2F2F2F4F4F4FFFFFFFFFFFFFDFDFDF2F2F2F3F3F3E4E4E4E5E5E5
              DADADADCDCDCF3F3F3EFEFEFEBEBEBF8F8F8FBFBFBFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFBFBFBEDEDEDEDEDEDF0F0F0F0F0F0F8F8F8FAFAFAF3
              F3F3F4F4F4F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFF2F2F2E5E5E5EBEBEBF9F9F9
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDECEC
              EC00FFFFFFFAFAFAF6F6F6F3F3F3EBEBEBF3F3F3F9F9F9F2F2F2F0F0F0F4F4F4
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DBDBDBC4C4C4BEBE
              BEDADADAF0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
              F4F4E5E5E5EFEFEFFFFFFFFFFFFFEDEDEDDFDFDFF0F0F0F3F3F3EEEEEEFAFAFA
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3
              F3E5E5E5DDDDDDEFEFEFFFFFFFFFFFFFFDFDFDF3F3F3F9F9F9F3F3F3DFDFDFEE
              EEEEF0F0F0F0F0F0F4F4F4FFFFFFFFFFFFFDFDFDFEFEFEF7F7F7E8E8E8E8E8E8
              D6D6D6E5E5E5F4F4F4EAEAEAF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDEFEFEFE0E0E0DFDFDFF1F1F1F3F3F3F1F1F1ECECECF9F9F9F6
              F6F6F3F3F3FAFAFAFAFAFAFAFAFAFFFFFFFDFDFDF9F9F9F8F8F8FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E8
              E800FFFFFFEEEEEEEBEBEBEFEFEFF2F2F2ECECECF8F8F8FEFEFEF2F2F2EDEDED
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D9D9D9CCCCCCD0D0D0D9D9
              D9E8E8E8F6F6F6FFFFFFFFFFFFF6F6F6F1F1F1F9F9F9FFFFFFFFFFFFFFFFFFEC
              ECECE1E1E1FCFCFCFFFFFFFFFFFFE8E8E8DFDFDFF2F2F2F3F3F3F2F2F2FBFBFB
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCCCCB7B7
              B7B6B6B6C8C8C8E3E3E3EFEFEFF1F1F1EFEFEFEFEFEFF4F4F4EBEBEBD8D8D8F0
              F0F0F4F4F4F4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEEBEBEBE8E8E8DEDEDE
              D8D8D8EDEDEDF0F0F0F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF1F1F1F8F8F8F8F8F8F1F1F1F0F0F0F8
              F8F8F2F2F2F7F7F7F3F3F3F3F3F3F8F8F8F9F9F9FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9FBFBFBFCFCFCF9F9F9F8F8F8F8F8F8F3F3F3E4E4E4E1E1
              E100EAEAEAE5E5E5DDDDDDE1E1E1EAEAEAEAEAEAF8F8F8FFFFFFDCDCDCD9D9D9
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DBDBDBD5D5D5E0E0E0DEDEDEDEDE
              DEF0F0F0FFFFFFFDFDFDECECECECECECF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFE4
              E4E4E3E3E3FFFFFFFFFFFFFCFCFCE3E3E3DDDDDDF3F3F3F6F6F6F6F6F6FEFEFE
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCBFBFBFBEBEBEB9B9
              B9C5C5C5DBDBDBE9E9E9EDEDEDEDEDEDEFEFEFF6F6F6F3F3F3DFDFDFD9D9D9F1
              F1F1F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E8E8E8E8E8E8DADADA
              E1E1E1F2F2F2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFB
              FBFFFFFFFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF8F8F8F0F0F0F7
              F7F7FAFAFAF3F3F3F3F3F3EFEFEFEFEFEFF1F1F1F6F6F6FAFAFAFDFDFDFDFDFD
              FFFFFFFFFFFFFEFEFEF9F9F9EEEEEEE8E8E8E9E9E9EBEBEBE8E8E8DFDFDFE4E4
              E400E6E6E6EFEFEFEAEAEADFDFDFE1E1E1E8E8E8F7F7F7F0F0F0C2C2C2D1D1D1
              F7F7F7FFFFFFFFFFFFFFFFFFFBFBFBE5E5E5DCDCDCEEEEEEEDEDEDDDDDDDE7E7
              E7FCFCFCFFFFFFEEEEEEEFEFEFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF
              DFDFEDEDEDFFFFFFFCFCFCF3F3F3DADADAE3E3E3FAFAFAF6F6F6F6F6F6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D1D1D1D3D3D3E4E4E4DBDB
              DBE1E1E1F7F7F7F7F7F7F2F2F2F0F0F0F0F0F0F1F1F1E6E6E6D9D9D9E7E7E7F7
              F7F7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAE7E7E7DCDCDC
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFFFFFFFFFF1F1F1EDED
              EDF8F8F8F6F6F6F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F0
              F0F0FFFFFFFCFCFCF4F4F4F1F1F1F2F2F2F3F3F3F7F7F7FCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEF3F3F3EAEAEAE6E6E6E6E6E6E6E6E6E0E0E0DEDEDEE9E9
              E900F0F0F0F1F1F1F3F3F3F0F0F0EAEAEAE8E8E8EAEAEAD0D0D0B3B3B3D9D9D9
              FEFEFEFFFFFFFFFFFFFFFFFFF6F6F6E1E1E1EFEFEFF9F9F9E8E8E8E3E3E3F2F2
              F2FFFFFFF6F6F6EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE6
              E6E6EEEEEEFCFCFCF8F8F8E8E8E8D9D9D9EAEAEAF9F9F9F3F3F3F9F9F9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DBDBDBE3E3E3E7E7E7F2F2F2E5E5
              E5E7E7E7FBFBFBF4F4F4F4F4F4F2F2F2F3F3F3ECECECDFDFDFE0E0E0F0F0F0F7
              F7F7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EBEBEBE7E7E7E5E5E5EDEDED
              FFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDE6E6
              E6F2F2F2F3F3F3F3F3F3F3F3F3F2F2F2F6F6F6FBFBFBFFFFFFFFFFFFFEFEFEFA
              FAFAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2F1F1F1F7F7
              F700F3F3F3F7F7F7F3F3F3EFEFEFE9E9E9E4E4E4D9D9D9B8B8B8BFBFBFEFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFE6E6E6E7E7E7FAFAFAF3F3F3E7E7E7E9E9E9F6F6
              F6F9F9F9F2F2F2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DE
              DEDEEAEAEAF9F9F9F0F0F0DFDFDFDFDFDFEEEEEEF9F9F9F2F2F2FAFAFAFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE4E4E4EDEDEDF0F0F0FAFAFAE5E5
              E5E9E9E9FBFBFBF7F7F7F8F8F8F8F8F8F7F7F7F3F3F3EEEEEEF2F2F2F7F7F7F7
              F7F7FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEFEFEFE7E7E7E3E3E3EBEBEBFDFDFD
              FFFFFFFDFDFDF9F9F9F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFCFCFCEDEDEDE4E4
              E4EDEDEDF7F7F7F6F6F6F1F1F1F2F2F2F7F7F7FFFFFFFFFFFFFAFAFADFDFDFEE
              EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F1F1F1
              F9F9F9F9F9F9F7F7F7F9F9F9FCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFAFAFAFAFA
              FA00F9F9F9FBFBFBF1F1F1ECECECE4E4E4DDDDDDC9C9C9C1C1C1E3E3E3FFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9DDDDDDF1F1F1FCFCFCF3F3F3F1F1F1F4F4F4F8F8
              F8F6F6F6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDC
              DCDCEFEFEFF2F2F2E8E8E8E1E1E1E8E8E8F6F6F6F7F7F7F3F3F3FDFDFDFFFFFF
              FFFFFFFDFDFDFCFCFCFFFFFFFBFBFBE5E5E5E4E4E4E8E8E8F8F8F8F7F7F7DFDF
              DFF3F3F3FDFDFDF9F9F9F9F9F9FAFAFAF9F9F9F7F7F7F7F7F7F8F8F8FCFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5DFDFDFE3E3E3F6F6F6FFFFFF
              FCFCFCFAFAFAFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE8E8E8DDDD
              DDEDEDEDFAFAFAF4F4F4F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F6
              F6F6E6E6E6F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E8E8E8E3E3E3E3E3E3
              DEDEDED9D9D9D8D8D8E0E0E0ECECECEFEFEFF1F1F1FBFBFBFDFDFDFBFBFBFDFD
              FD00FFFFFFFCFCFCEAEAEAE0E0E0D9D9D9DBDBDBDDDDDDEDEDEDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE6E6E6DFDFDFF8F8F8F9F9F9F2F2F2F3F3F3FAFAFAFCFC
              FCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1E3E3E3DF
              DFDFEAEAEAE5E5E5E5E5E5E7E7E7EEEEEEF7F7F7F2F2F2F3F3F3FBFBFBFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAEAEAEAF2F2F2FDFDFDE8E8E8E4E4
              E4FAFAFAFAFAFAF8F8F8F7F7F7F6F6F6F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAFAFAE8E8E8D8D8D8D7D7D7E6E6E6F7F7F7F7F7F7
              F4F4F4FEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E1E1E1DADA
              DAF3F3F3FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEEEEEEF1
              F1F1FFFFFFFFFFFFFDFDFDF0F0F0E9E9E9DADADACFCFCFC4C4C4BEBEBEBCBCBC
              BDBDBDC1C1C1C9C9C9CFCFCFCBCBCBC9C9C9D2D2D2DDDDDDEBEBEBFBFBFBF3F3
              F300FFFFFFF2F2F2DEDEDEDCDCDCE4E4E4EDEDEDFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7DCDCDCE7E7E7F3F3F3F1F1F1F3F3F3F7F7F7FCFCFCFAFA
              FAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E1E1E1DEDEDEE1
              E1E1E3E3E3E8E8E8EBEBEBEBEBEBF0F0F0F0F0F0EFEFEFF7F7F7FEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FDFDFDFFFFFFE7E7E7D8D8D8EAEA
              EAFAFAFAF9F9F9F7F7F7F9F9F9FDFDFDF7F7F7F7F7F7FCFCFCFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFAFAFAE8E8E8D1D1D1CCCCCCDEDEDEF6F6F6F8F8F8F2F2F2
              F1F1F1FBFBFBFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8D9D9D9E5E5
              E5FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEEEEEED8D8D8CBCBCBDC
              DCDCFAFAFAF3F3F3DEDEDED9D9D9D6D6D6D5D5D5D9D9D9D4D4D4D7D7D7E5E5E5
              F1F1F1F8F8F8F8F8F8F1F1F1EFEFEFF1F1F1F2F2F2EBEBEBE4E4E4E9E9E9EFEF
              EF00F7F7F7DCDCDCD2D2D2E1E1E1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEAEAEAD4D4D4DFDFDFE6E6E6E9E9E9F1F1F1F9F9F9FDFDFDFCFC
              FCFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E9E9E9E5E5E5E7E7E7DF
              DFDFE3E3E3EAEAEAE9E9E9EDEDEDF1F1F1F2F2F2F7F7F7FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC3C3C3DCDCDCF4F4
              F4F3F3F3F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFF3F3F3DCDCDCC7C7C7C2C2C2DADADAF8F8F8FDFDFDF8F8F8F8F8F8
              F6F6F6FBFBFBFCFCFCF9F9F9FFFFFFFFFFFFFFFFFFF0F0F0D6D6D6DEDEDEF9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF0F0F0D9D9D9D0D0D0E8E8E8FA
              FAFAF2F2F2E5E5E5E7E7E7ECECECF0F0F0F9F9F9F7F7F7ECECECF0F0F0FFFFFF
              FFFFFFFAFAFAF6F6F6F6F6F6F6F6F6F9F9F9F8F8F8F9F9F9FDFDFDF7F7F7EAEA
              EA00E7E7E7CDCDCDDFDFDFF4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF6F6F6D6D6D6CDCDCDDDDDDDE6E6E6ECECECF3F3F3F1F1F1F7F7F7FAFA
              FAF7F7F7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFF2F2F2EDEDEDDFDFDFDCDCDCDD
              DDDDE7E7E7EBEBEBEAEAEAEFEFEFF1F1F1F3F3F3FBFBFBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFD0D0D0C5C5C5F2F2F2FEFE
              FEFAFAFAFAFAFAF7F7F7F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEDEDEDD3D3D3C2C2C2C4C4C4DBDBDBFBFBFBFFFFFFFFFFFFFEFEFEFAFAFA
              FAFAFAFEFEFEFEFEFEFBFBFBFBFBFBF8F8F8F1F1F1DFDFDFDCDCDCF1F1F1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE9E9E9DCDCDCD7D7D7ECECECFFFFFFFF
              FFFFFBFBFBF3F3F3F3F3F3F6F6F6FBFBFBFDFDFDF6F6F6EEEEEEF4F4F4FCFCFC
              EDEDEDEEEEEEF3F3F3FAFAFAFEFEFEFFFFFFF4F4F4EFEFEFF6F6F6FAFAFAF4F4
              F400D1D1D1D5D5D5F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F9F9F9DFDFDFCDCDCDD9D9D9E5E5E5EDEDEDF1F1F1EFEFEFE8E8E8EAEAEAECEC
              ECF2F2F2F6F6F6FFFFFFFFFFFFF2F2F2F9F9F9F1F1F1DEDEDED4D4D4DADADAE1
              E1E1ECECECECECECEFEFEFF1F1F1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFCFCFCF7F7F7F3F3F3F4F4F4EEEEEECACACACDCDCDEEEEEEFBFB
              FBFCFCFCF9F9F9FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
              E7E7C8C8C8C1C1C1CDCDCDE8E8E8FAFAFAFFFFFFFFFFFFFFFFFFF9F9F9FCFCFC
              FFFFFFFFFFFFFFFFFFFDFDFDF2F2F2EEEEEEE7E7E7E4E4E4F3F3F3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF1F1F1D7D7D7CFCFCFD3D3D3E4E4E4F7F7F7FFFFFFFF
              FFFFFDFDFDFFFFFFEEEEEEF0F0F0F8F8F8FDFDFDF4F4F4EFEFEFEBEBEBEAEAEA
              ECECECF4F4F4F9F9F9FFFFFFFFFFFFFFFFFFF3F3F3F4F4F4F9F9F9FAFAFAF8F8
              F800D2D2D2ECECECFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              E1E1E1D4D4D4E1E1E1F3F3F3F7F7F7F4F4F4EDEDEDE8E8E8EAEAEAEEEEEEF2F2
              F2F6F6F6F4F4F4FAFAFAEAEAEAE0E0E0E3E3E3D6D6D6D1D1D1D8D8D8E4E4E4EB
              EBEBEEEEEEEBEBEBEFEFEFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAF7F7F7EFEFEFE8E8E8E1E1E1C7C7C7CACACAEAEAEAFBFB
              FBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAC3
              C3C3C6C6C6DDDDDDF3F3F3FCFCFCFAFAFAFDFDFDF9F9F9F0F0F0F9F9F9FFFFFF
              FFFFFFFFFFFFFFFFFFFDFDFDF1F1F1F1F1F1F1F1F1F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE3E3E3D3D3D3D4D4D4DBDBDBE8E8E8F3F3F3F8F8F8FFFFFFFF
              FFFFFFFFFFFFFFFFE7E7E7EAEAEAF3F3F3FCFCFCF7F7F7EFEFEFEBEBEBEDEDED
              F4F4F4F7F7F7FAFAFAFFFFFFFFFFFFFCFCFCEBEBEBF4F4F4FBFBFBFEFEFEFCFC
              FC00E9E9E9FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D3D3D3
              BFBFBFC6C6C6DADADAEEEEEEFFFFFFFCFCFCF0F0F0F6F6F6F3F3F3F7F7F7FAFA
              FAFAFAFAF8F8F8F3F3F3EEEEEEEAEAEAE5E5E5DBDBDBDFDFDFE4E4E4EBEBEBEC
              ECECECECECECECECF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEF6F6F6F4F4F4EDEDEDE9E9E9DBDBDBCACACAD9D9D9F2F2F2FBFB
              FBFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2D1D1D1C2C2C2CD
              CDCDEAEAEAFCFCFCFDFDFDF7F7F7F6F6F6FBFBFBF6F6F6F7F7F7FEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE8E8E8D3D3D3D1D1D1EAEAEAF1F1F1F9F9F9F9F9F9FCFCFCFFFFFFFF
              FFFFFFFFFFFCFCFCE1E1E1E6E6E6F3F3F3FCFCFCF7F7F7F2F2F2EEEEEEEEEEEE
              F6F6F6F4F4F4FAFAFAFFFFFFFFFFFFF2F2F2E7E7E7F3F3F3FAFAFAFFFFFFFEFE
              FE00F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BFBFBFB1B1B1
              C0C0C0D4D4D4DADADAD5D5D5DCDCDCFAFAFAF9F9F9EFEFEFFAFAFAFFFFFFFFFF
              FFFFFFFFFDFDFDF6F6F6FAFAFAF2F2F2DFDFDFDCDCDCE3E3E3E9E9E9ECECECEE
              EEEEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAF4F4F4F6F6F6F2F2F2EBEBEBD3D3D3D0D0D0EBEBEBF7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD0D0D0C4C4C4D4D4D4EE
              EEEEFCFCFCFFFFFFF7F7F7F3F3F3F7F7F7FCFCFCFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEF1F1F1EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FDE5E5E5D8D8D8D7D7D7E1E1E1F8F8F8FFFFFFF9F9F9F9F9F9FFFFFFFFFFFFFF
              FFFFFFFFFFF7F7F7E3E3E3E9E9E9F6F6F6FFFFFFFBFBFBF6F6F6F1F1F1ECECEC
              F6F6F6F9F9F9FCFCFCFFFFFFFDFDFDE4E4E4E5E5E5F3F3F3FBFBFBFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B8B8B8BCBCBCD2D2D2
              E7E7E7EFEFEFE9E9E9ECECECF6F6F6F0F0F0F2F2F2EEEEEEFBFBFBFFFFFFFFFF
              FFFFFFFFFEFEFEF3F3F3EFEFEFE3E3E3DADADADFDFDFE8E8E8EFEFEFF4F4F4FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              F8F8F8EFEFEFF2F2F2F7F7F7F3F3F3DBDBDBC0C0C0D4D4D4ECECECF8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBCCCCCCC8C8C8D9D9D9EDEDEDF9
              F9F9FAFAFAFAFAFAF6F6F6F6F6F6F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF0F0F0E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DEDE
              DED2D2D2D8D8D8E3E3E3F3F3F3FFFFFFFCFCFCF9F9F9FAFAFAFFFFFFFFFFFFFD
              FDFDFFFFFFF3F3F3DFDFDFE8E8E8F6F6F6FFFFFFFEFEFEFCFCFCF9F9F9ECECEC
              F3F3F3F6F6F6FAFAFAFFFFFFF2F2F2DEDEDEEBEBEBF6F6F6FAFAFAFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAD5D5D5BDBDBDCCCCCCE5E5E5F2F2F2
              F6F6F6F0F0F0F7F7F7FFFFFFFFFFFFF4F4F4EEEEEEFCFCFCFFFFFFFFFFFFFFFF
              FFFFFFFFFCFCFCF0F0F0E6E6E6E4E4E4E9E9E9E7E7E7F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F3F3F3EEEEEEEBEBEB
              E9E9E9E8E8E8EDEDEDECECECDBDBDBC1C1C1C5C5C5EBEBEBFBFBFBF9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEACDCDCDCACACADFDFDFEEEEEEF4F4F4F4
              F4F4F3F3F3F8F8F8F4F4F4F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F9F9F9E8E8E8EAEAEAFCFCFCFFFFFFFFFFFFFFFFFFFEFEFEEEEEEED9D9D9CFCF
              CFDDDDDDEFEFEFF0F0F0F9F9F9F8F8F8F8F8F8F9F9F9FEFEFEFFFFFFFAFAFAF1
              F1F1F4F4F4ECECECDFDFDFE7E7E7F2F2F2FDFDFDFEFEFEFAFAFAF6F6F6EBEBEB
              EFEFEFF9F9F9FAFAFAF6F6F6E7E7E7E4E4E4F2F2F2F9F9F9FDFDFDFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFF2F2F2D0D0D0C1C1C1DADADAEFEFEFF6F6F6F7F7F7
              F0F0F0F8F8F8FFFFFFFAFAFAF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E3E3
              E3FFFFFFFCFCFCF2F2F2E5E5E5E7E7E7EEEEEEEBEBEBFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5D3D3D3E7E7E7ECECECECECEC
              EAEAEAE3E3E3DEDEDED5D5D5C5C5C5C8C8C8E7E7E7FBFBFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE7E7E7CACACAC3C3C3DEDEDEF7F7F7FAFAFAF7F7F7F3
              F3F3F7F7F7F8F8F8F6F6F6FCFCFCFFFFFFFFFFFFFCFCFCFFFFFFFBFBFBF7F7F7
              EDEDEDE8E8E8F1F1F1FDFDFDFFFFFFFFFFFFFEFEFEEFEFEFDDDDDDD4D4D4E0E0
              E0F6F6F6FDFDFDF7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EF
              EFEFF0F0F0F0F0F0E6E6E6E7E7E7F1F1F1F8F8F8FBFBFBF8F8F8F3F3F3F0F0F0
              ECECECF6F6F6F7F7F7F6F6F6EEEEEEF1F1F1F9F9F9FEFEFEFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFEBEBEBC8C8C8C6C6C6E3E3E3FAFAFAFCFCFCFCFCFCF4F4F4
              F7F7F7FFFFFFF7F7F7F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DEDEDEDADA
              DAFEFEFEFBFBFBF2F2F2E5E5E5E6E6E6EFEFEFF1F1F1FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B7B7B7D3D3D3F1F1F1F2F2F2F0F0F0
              F0F0F0EEEEEEE7E7E7E0E0E0DFDFDFECECECF9F9F9FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE8E8E8C7C7C7C3C3C3D9D9D9F4F4F4FFFFFFFAFAFAF1F1F1F2
              F2F2F8F8F8F8F8F8F8F8F8FEFEFEFFFFFFFAFAFAFCFCFCFCFCFCFAFAFAF4F4F4
              F1F1F1F8F8F8FFFFFFFDFDFDFDFDFDFCFCFCF8F8F8E9E9E9E3E3E3E8E8E8F7F7
              F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
              F6F6F4F4F4FAFAFAEEEEEEE8E8E8EEEEEEF8F8F8FAFAFAFCFCFCF7F7F7F3F3F3
              ECECECF3F3F3F9F9F9F7F7F7F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00F2F2F2EAEAEAC9C9C9C7C7C7EBEBEBFEFEFEFFFFFFFFFFFFFAFAFAF8F8F8
              FEFEFEFAFAFAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DFDFDFE1E1
              E1FFFFFFFFFFFFF0F0F0E3E3E3E7E7E7F0F0F0FCFCFCFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE5E5E5D1D1D1C5C5C5E7E7E7F7F7F7F3F3F3F0F0F0
              F2F2F2F2F2F2F3F3F3F6F6F6F7F7F7FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAEAEAD0D0D0CACACADFDFDFF1F1F1FFFFFFFFFFFFF7F7F7EFEFEFF0
              F0F0F3F3F3F4F4F4F8F8F8FFFFFFFFFFFFF3F3F3F7F7F7F6F6F6F8F8F8F4F4F4
              FAFAFAFFFFFFFFFFFFFAFAFAF9F9F9F6F6F6F1F1F1ECECECF3F3F3F7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3F3F3F3F0F0F0F0F0F0F1F1F1F1F1F1F7
              F7F7F6F6F6FFFFFFF9F9F9EDEDEDEDEDEDF7F7F7F8F8F8F9F9F9F8F8F8F6F6F6
              EFEFEFF0F0F0F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00DFDFDFDCDCDCD9D9D9EAEAEAF6F6F6F7F7F7F9F9F9FDFDFDFCFCFCFFFFFF
              FFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E3E3E3E8E8
              E8FFFFFFFEFEFEF3F3F3E6E6E6E8E8E8F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEBD4D4D4DCDCDCD6D6D6EEEEEEF9F9F9F9F9F9F8F8F8
              F3F3F3F4F4F4F7F7F7FAFAFAFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFEDEDEDD1D1D1CFCFCFDEDEDEEEEEEEFAFAFAFFFFFFFFFFFFF1F1F1E8E8E8EB
              EBEBF2F2F2F6F6F6F9F9F9FFFFFFFFFFFFEDEDEDEDEDEDEFEFEFEFEFEFF0F0F0
              FAFAFAFFFFFFFDFDFDF3F3F3F1F1F1F1F1F1F1F1F1F7F7F7FCFCFCF3F3F3FDFD
              FDFFFFFFFFFFFFF3F3F3DCDCDCD9D9D9DCDCDCDBDBDBD8D8D8DEDEDEDADADADA
              DADAEDEDEDFFFFFFFFFFFFF3F3F3E8E8E8F1F1F1F4F4F4F6F6F6FBFBFBF9F9F9
              F8F8F8F7F7F7FBFBFBFDFDFDFCFCFCFCFCFCF4F4F4F0F0F0FFFFFFFFFFFFFFFF
              FF00}
            BackgroundOptions.GlassColor = 11786751
            BackgroundOptions.GlassTranslucency = 90
            Versoes = 'S,P,E'
            object btCaracteristicas1: TTS_SpeedButton
              Left = 1
              Top = 1
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Caption = '&1 - Caracteristicas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas1Click
              Versoes = 'S,P,E'
              TagStr = '0'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btEstoques: TTS_SpeedButton
              Left = 1
              Top = 46
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&2 - Estoques'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas1Click
              Versoes = 'S,P,E'
              TagStr = '1'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btCalcPreco1: TTS_SpeedButton
              Left = 1
              Top = 136
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&4 - Pre'#231'o de Venda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas1Click
              Versoes = 'P,E'
              TagStr = '3'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btCustom: TTS_SpeedButton
              Left = 1
              Top = 271
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&0 - Customizados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas1Click
              Versoes = 'S,P,E'
              TagStr = '4'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btFiscal: TTS_SpeedButton
              Left = 1
              Top = 91
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&3 - Fiscal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas1Click
              Versoes = 'S,P,E'
              TagStr = '2'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object sbServicosEmItens: TTS_SpeedButton
              Left = 1
              Top = 181
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&5 - Pre'#231'o dos Servi'#231'os'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              OnClick = sbServicosEmItensClick
              Versoes = 'S,P,E'
              TagStr = '6'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object TS_SpeedButton2: TTS_SpeedButton
              Left = 1
              Top = 226
              Width = 117
              Height = 45
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&6 - Contabilidade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas1Click
              Versoes = 'S,P,E'
              TagStr = '5'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
          end
          object lcbPrincipioAtivo: TTS_DBLookupComboBox
            Tag = -2
            Left = 120
            Top = 2
            Width = 381
            HelpContext = -2
            TabOrder = 2
            Visible = False
            DataField = 'lkPrincipioAtivo'
            DataSource = DMItens.C_TabelaDS
            ReadOnly = False
            StyleController = DMProjeto.esItens
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Versoes = 'S,P,E'
            Height = 19
            StoredValues = 64
          end
        end
        object tsProdutosSemInvent: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          ImageIndex = 1
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          Versoes = 'P,E'
          BevelInner = bvRaised
          BevelOuter = bvLowered
          DesignSize = (
            821
            443)
          object pcSemEstoque: TTS_PageControl
            Left = 123
            Top = 0
            Width = 668
            Height = 442
            ActivePage = tsCaracteristicas2
            Anchors = [akLeft, akTop, akRight, akBottom]
            OwnerDraw = True
            TabOrder = 0
            ActivePageIndex = 0
            Versoes = 'P,E'
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
            object tsCaracteristicas2: TTS_TabSheet
              Hint = 'btCaracteristicas2'
              Caption = 'Caracteristicas2'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object lbComissao2: TTS_Label
                Left = 39
                Top = 35
                Width = 91
                Height = 17
                Caption = 'Comiss'#227'o:'
                FocusControl = dfComissao2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbDescMax2: TTS_Label
                Left = 10
                Top = 58
                Width = 120
                Caption = 'Desconto M'#225'ximo:'
                FocusControl = dfDescMax2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Shape2: TTS_Shape
                Left = 23
                Top = 8
                Width = 235
                Height = 22
                Brush.Color = 9552605
                Pen.Style = psClear
                Shape = stRoundRect
                Versoes = 'P,E'
                Transparent = False
              end
              object lbPrecoVenda2: TTS_Label
                Left = 25
                Top = 11
                Width = 105
                Cursor = crHandPoint
                Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                Caption = 'Pre'#231'o de Venda:'
                FocusControl = dfPrecoVenda2
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lbPrecoVenda1Click
                Versoes = 'P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label3: TTS_Label
                Left = 151
                Top = 116
                Width = 334
                Height = 28
                Alignment = taLeftJustify
                Caption = 
                  '(Se esta op'#231#227'o n'#227'o estiver marcada, n'#227'o ser'#225' poss'#237'vel usar este ' +
                  'Item para fazer pedidos ou mesmo registrar compras)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Visible = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfComissao2: TTS_DBEditNumber
                Tag = -2
                Left = 134
                Top = 34
                Width = 74
                HelpContext = -2
                PopupMenu = ppmGrupo
                TabOrder = 1
                OnMouseDown = dfDescMax3MouseDown
                DataField = 'icComissao'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfComissao1Change
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
                Versoes = 'P,E'
                Height = 19
                StoredValues = 1
              end
              object TS_DBCheckBox3: TTS_DBCheckBox
                Left = 131
                Top = 96
                Width = 226
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 3
                Visible = False
                Alignment = taLeftJustify
                Caption = 'Este Item tamb'#233'm '#233' comprado'
                DataField = 'ISITEMCOMPRA'
                DataSource = DMItens.C_TabelaDS
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnChange = DBEdit11Change
                Versoes = 'P,E'
                DisableEdit = False
                Height = 24
                StoredValues = 1
              end
              object pnInfoCompras: TTS_Panel
                Left = 1
                Top = 156
                Width = 506
                Height = 71
                BevelOuter = bvNone
                Color = 14019327
                TabOrder = 4
                Visible = False
                Versoes = 'P,E'
                object TS_Label59: TTS_Label
                  Left = 12
                  Top = 28
                  Width = 117
                  Height = 17
                  Cursor = crHandPoint
                  Caption = #218'ltimo Fornecedor:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsUnderline]
                  ParentFont = False
                  Versoes = 'P,E'
                  FormatoTabela = False
                  LinkTo = 'FrmFornecedores'
                  LinkToResult = 0
                end
                object TS_Label56: TTS_Label
                  Left = 1
                  Top = 54
                  Width = 130
                  Height = 16
                  Caption = 'Descri'#231#227'o para Compra:'
                  FocusControl = TS_DBEdit3
                  Versoes = 'P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label23: TTS_Label
                  Left = 2
                  Top = 5
                  Width = 128
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Caption = #218'ltimo Pre'#231'o de Compra:'
                  FocusControl = dfUltPrecoCompra2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_DBEdit3: TTS_DBEdit
                  Tag = -2
                  Left = 133
                  Top = 52
                  Width = 365
                  HelpContext = -2
                  TabOrder = 2
                  DataField = 'DESCRICAOCOMPRA'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  NumericRange = nrAmbos
                  Versoes = 'P,E'
                  Height = 19
                end
                object dfUltForn2: TTS_DBEditFavorecido
                  Tag = -2
                  Left = 133
                  Top = 27
                  Width = 241
                  Hint = 
                    'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
                    'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
                    ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
                    ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
                    #227'o'
                  HelpContext = -2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonStyle = btsFlat
                  TabOrder = 1
                  DataField = 'NOMEULTIMOFORNECEDOR'
                  DataSource = DMItens.C_TabelaDS
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
                  Versoes = 'P,E'
                  SelecionarVarios = False
                  TipoFavorecido = 2
                  C_Localizar = DMProjeto.C_LocalizarFav
                  ID = 0
                  ChaveEstrangeira = 'ULTIMOFORNECEDOR'
                  Height = 19
                  ExistButtons = True
                end
                object dfUltPrecoCompra2: TTS_DBEditNumber
                  Tag = -2
                  Left = 133
                  Top = 3
                  Width = 91
                  HelpContext = -2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  DataField = 'PrecoCompra'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
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
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 1
                end
              end
              object dfDescMax2: TTS_DBEditNumber
                Tag = -2
                Left = 134
                Top = 56
                Width = 74
                HelpContext = -2
                PopupMenu = ppmGrupo
                TabOrder = 2
                OnMouseDown = dfDescMax3MouseDown
                DataField = 'icDescontoMaximo'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfComissao1Change
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
                Versoes = 'P,E'
                Height = 19
                StoredValues = 1
              end
              object dfPrecoVenda2: TTS_DBEditNumber
                Tag = -2
                Left = 133
                Top = 9
                Width = 111
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderColor = 1522253
                TabOrder = 0
                DataField = 'PRECO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'P,E'
                Height = 19
                StoredValues = 1
              end
            end
            object tsCalcPreco2: TTS_TabSheet
              Hint = 'btCalcPreco2'
              Caption = 'CalcPreco2'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
            end
            object tsCustomizados2: TTS_TabSheet
              Hint = 'btCustomizados2'
              Caption = 'Customizados2'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'S,P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
            end
            object tsContabilidade2: TTS_TabSheet
              Hint = 'btContabilidade2'
              Caption = 'Contabilidade2'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object lblCReceita: TTS_Label
                Left = 3
                Top = 16
                Width = 129
                Cursor = crHandPoint
                Caption = 'Conta para Vendas:'
                FocusControl = cmbContaVendas2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object lblContaDespesa2: TTS_Label
                Left = 1
                Top = 44
                Width = 131
                Cursor = crHandPoint
                Caption = 'Conta de Despesa:'
                FocusControl = cmbContaDespesa2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Visible = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object cmbContaVendas2: TTS_DBPopupEdit
                Tag = -2
                Left = 136
                Top = 16
                Width = 228
                HelpContext = -2
                TabOrder = 0
                DataField = 'lkContaVenda'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaVendas2InitPopup
                Versoes = 'E'
                Height = 19
              end
              object cmbContaDespesa2: TTS_DBPopupEdit
                Tag = -2
                Left = 136
                Top = 43
                Width = 227
                HelpContext = -2
                TabOrder = 1
                Visible = False
                DataField = 'lkContaCusto'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaVendas1InitPopup
                Versoes = 'E'
                Height = 19
              end
            end
          end
          object pnControl2: TTS_Panel
            Left = 3
            Top = 3
            Width = 119
            Height = 439
            Anchors = [akLeft, akTop, akBottom]
            Color = 16116702
            TabOrder = 1
            BackgroundOptions.Picture.Data = {
              07544269746D617096900000424D969000000000000036000000280000007500
              0000690000000100180000000000609000000000000000000000000000000000
              0000E5E5E5E6E6E6EBEBEBEEEEEEEEEEEED9D9D9C7C7C7D7D7D7E7E7E7E9E9E9
              E7E7E7E9E9E9F3F3F3ECECECF9F9F9FFFFFFF4F4F4E1E1E1DADADADADADADADA
              DAD8D8D8D8D8D8D4D4D4D2D2D2D9D9D9E9E9E9EEEEEEEBEBEBF0F0F0FBFBFBFF
              FFFFFDFDFDFDFDFDFCFCFCFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDBDBDBD8D8D8E5E5E5F7F7F7F9F9F9F4F4F4E7E7E7E3E3E3E6E6
              E6ECECECF1F1F1F0F0F0FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCFCFCF3F3F3E9E9E9E3E3E3E7E7E7E9E9E9DDDDDDD1D1D1
              C9C9C9D4D4D4E6E6E6EEEEEEF4F4F4F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFED5D5D5CBCBCBF6F6F6FFFFFFFFFFFFF7F7F7FFFFFFFCFCFCF8
              F8F8EFEFEFDFDFDFEBEBEBF1F1F1FCFCFCFBFBFBEEEEEEF3F3F3F9F9F9FAFAFA
              FAFAFAFCFCFCFDFDFDFCFCFCF7F7F7F3F3F3E3E3E3D9D9D9ECECECF3F3F3F3F3
              F300E5E5E5E7E7E7F1F1F1F6F6F6F2F2F2DEDEDECCCCCCE1E1E1F8F8F8FAFAFA
              EEEEEEF1F1F1EFEFEFE8E8E8EDEDEDEBEBEBD9D9D9D4D4D4D9D9D9E1E1E1E8E8
              E8E3E3E3E1E1E1DADADADEDEDEECECECF0F0F0EEEEEEF1F1F1F9F9F9FDFDFDFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F3DCDCDCDCDCDCEAEAEAF8F8F8F9F9F9F9F9F9E7E7E7E7E7E7F1F1
              F1F1F1F1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAE9E9E9E1E1E1DDDDDDDFDFDFE1E1E1E4E4E4ECECECE8E8E8DCDCDCD0D0D0
              D0D0D0E1E1E1ECECECF2F2F2FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD6D6D6D0D0D0F7F7F7FFFFFFFFFFFFF7F7F7FCFCFCFFFFFFFF
              FFFFFFFFFFEBEBEBF3F3F3F9F9F9FDFDFDFFFFFFF3F3F3F9F9F9FCFCFCFAFAFA
              FBFBFBFCFCFCFFFFFFFFFFFFFAFAFAF2F2F2D8D8D8DBDBDBF3F3F3F8F8F8F8F8
              F800F3F3F3F1F1F1F3F3F3FFFFFFFAFAFAE1E1E1D6D6D6F1F1F1FFFFFFFFFFFF
              FAFAFAFFFFFFF7F7F7E0E0E0DFDFDFE0E0E0DFDFDFE4E4E4EBEBEBEEEEEEE8E8
              E8E1E1E1DEDEDEE1E1E1EBEBEBEFEFEFF1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFE9E9E9DCDCDCDFDFDFEEEEEEF8F8F8FBFBFBFDFDFDE8E8E8E9E9E9F9F9
              F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBDADADAD3
              D3D3D1D1D1D6D6D6DEDEDEE4E4E4E6E6E6E9E9E9EBEBEBE3E3E3D7D7D7CCCCCC
              D8D8D8EAEAEAF4F4F4FAFAFAFDFDFDFDFDFDFDFDFDFAFAFAFBFBFBFFFFFFFFFF
              FFFFFFFFFFFFFFD6D6D6D8D8D8FFFFFFFFFFFFFBFBFBF6F6F6F4F4F4FDFDFDFF
              FFFFFFFFFFF6F6F6F1F1F1FCFCFCFDFDFDFFFFFFF3F3F3F8F8F8FAFAFAFAFAFA
              F9F9F9F8F8F8FCFCFCFFFFFFF9F9F9E8E8E8D3D3D3E5E5E5F9F9F9FAFAFAFCFC
              FC00FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFF1F1F1E7E7E7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF8F8F8E3E3E3DADADAE3E3E3ECECECEFEFEFF0F0F0EAEAEADEDE
              DEDADADAE0E0E0EBEBEBF1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCEBEBEBE3E3E3E5E5E5F2F2F2F4F4F4F9F9F9FBFBFBE6E6E6EFEFEFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFEFEFDBDBDBD0D0D0CFCFCFD9
              D9D9E1E1E1E7E7E7EDEDEDEEEEEEF0F0F0ECECECE4E4E4D9D9D9CDCDCDD2D2D2
              E9E9E9F4F4F4F7F7F7FAFAFAFFFFFFFDFDFDF9F9F9F7F7F7FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFDADADADCDCDCFDFDFDFFFFFFF3F3F3F2F2F2F4F4F4F1F1F1F9
              F9F9FFFFFFFAFAFAF6F6F6FFFFFFFEFEFEFFFFFFF3F3F3F8F8F8FBFBFBFAFAFA
              FAFAFAFAFAFAFBFBFBFFFFFFF9F9F9DEDEDED9D9D9F0F0F0FAFAFAFAFAFAFDFD
              FD00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FFFFFFFFFFFFFFFFFF
              FCFCFCF3F3F3F3F3F3E5E5E5E5E5E5F0F0F0EFEFEFEBEBEBDFDFDFD8D8D8D5D5
              D5DEDEDEE9E9E9F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFDFDFDF9F9F9FDFDFDFFFFFFFBFBFBFBFBFBFBFBFBFBFBFB
              F9F9F9EEEEEEE6E6E6E8E8E8F2F2F2F0F0F0F8F8F8F4F4F4E7E7E7FCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFECECECF0F0F0EEEEEECCCCCCD8D8D8EDEDEDF9
              F9F9FAFAFAFAFAFAF9F9F9F2F2F2ECECECE4E4E4DBDBDBD4D4D4D6D6D6E8E8E8
              F4F4F4F8F8F8FAFAFAFDFDFDFDFDFDF8F8F8F9F9F9F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDFDFDFDEDEDEFDFDFDFEFEFEEDEDEDEDEDEDF1F1F1E7E7E7F2
              F2F2FCFCFCFAFAFAF9F9F9FFFFFFFEFEFEFFFFFFF3F3F3F6F6F6F9F9F9F9F9F9
              FAFAFAF9F9F9F8F8F8FCFCFCF2F2F2E1E1E1EBEBEBFAFAFAFCFCFCFCFCFCFFFF
              FF00FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE5E5E5EFEFEFF7F7F7F0F0F0
              E3E3E3E7E7E7E8E8E8DBDBDBE3E3E3E5E5E5D8D8D8D2D2D2CFCFCFD3D3D3DCDC
              DCE8E8E8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E6E6E6E6
              E6E6F6F6F6F9F9F9FAFAFAF3F3F3F6F6F6FBFBFBF8F8F8F7F7F7F6F6F6F8F8F8
              F9F9F9F0F0F0E8E8E8E8E8E8EDEDEDEEEEEEFEFEFEEEEEEEE5E5E5FFFFFFFFFF
              FFFFFFFFFFFFFFF8F8F8F4F4F4F0F0F0FCFCFCEAEAEAD7D7D7F2F2F2FAFAFAFA
              FAFAF7F7F7F2F2F2EFEFEFE9E9E9DDDDDDD3D3D3D4D4D4E4E4E4F2F2F2F7F7F7
              F9F9F9FAFAFAFBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFEE3E3E3E1E1E1FFFFFFFAFAFAE8E8E8F1F1F1F9F9F9E8E8E8ED
              EDEDF3F3F3F3F3F3F6F6F6F6F6F6F9F9F9F8F8F8F6F6F6F4F4F4F9F9F9FAFAFA
              FDFDFDFCFCFCFBFBFBF8F8F8EDEDEDF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FF00EFEFEFF6F6F6FFFFFFFFFFFFFFFFFFE1E1E1E8E8E8F7F7F7F7F7F7E5E5E5
              DCDCDCE3E3E3D9D9D9C9C9C9D1D1D1D2D2D2D2D2D2D6D6D6DBDBDBE6E6E6F2F2
              F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEC5C5C5CCCCCCDC
              DCDCF7F7F7FEFEFEF9F9F9F7F7F7F7F7F7FCFCFCFEFEFEFBFBFBF7F7F7FCFCFC
              FFFFFFF2F2F2E7E7E7E5E5E5EAEAEAF3F3F3FFFFFFE5E5E5F9F9F9FFFFFFFFFF
              FFF9F9F9F8F8F8FAFAFAF9F9F9FDFDFDF7F7F7D6D6D6DFDFDFF3F3F3F0F0F0E9
              E9E9E3E3E3DFDFDFDCDCDCD4D4D4D2D2D2D9D9D9E9E9E9FCFCFCFFFFFFFAFAFA
              F3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE5E5E5E6E6E6FDFDFDF2F2F2EAEAEAFAFAFAFFFFFFEAEAEAEE
              EEEEF7F7F7F4F4F4F2F2F2F4F4F4F9F9F9F2F2F2F3F3F3F4F4F4F4F4F4FAFAFA
              FCFCFCFEFEFEFDFDFDF7F7F7F3F3F3F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFFFFFFFFFFFF3F3F3DBDBDB
              D4D4D4DADADAD1D1D1D0D0D0DDDDDDDFDFDFE6E6E6ECECECF2F2F2F8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDC4C4C4CACACADCDCDCED
              EDEDFCFCFCFDFDFDFBFBFBFBFBFBF9F9F9FEFEFEFFFFFFFFFFFFFBFBFBFFFFFF
              FFFFFFF3F3F3E6E6E6E5E5E5EAEAEAFBFBFBFEFEFEEEEEEEFFFFFFFFFFFFF9F9
              F9FCFCFCFAFAFAFDFDFDFFFFFFEDEDEDC4C4C4C0C0C0D2D2D2D2D2D2CACACAC8
              C8C8C9C9C9D0D0D0D3D3D3D8D8D8E4E4E4EFEFEFF8F8F8FFFFFFFFFFFFFEFEFE
              EAEAEAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEAEAEAE8E8E8F9F9F9F0F0F0EDEDEDFCFCFCFEFEFEE8E8E8F0
              F0F0F7F7F7F7F7F7F4F4F4F9F9F9F9F9F9F3F3F3F2F2F2F9F9F9F3F3F3FFFFFF
              FFFFFFFDFDFDFAFAFAF4F4F4F4F4F4F4F4F4F8F8F8FBFBFBFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4EBEBEBE8E8E8DCDCDCCACACA
              D2D2D2DDDDDDD9D9D9E0E0E0EBEBEBEBEBEBF6F6F6FAFAFAFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4B9B9B9D4D4D4E6E6E6E7E7E7F3
              F3F3FAFAFAFEFEFEFAFAFAFAFAFAFCFCFCFCFCFCFFFFFFFEFEFEFAFAFAFFFFFF
              FFFFFFF3F3F3E3E3E3E5E5E5F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
              F4F7F7F7F9F9F9FFFFFFDFDFDFB9B9B9B4B4B4CACACAD3D3D3CBCBCBCDCDCDD7
              D7D7E1E1E1E9E9E9EDEDEDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              ECECECF1F1F1FFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFFFFFFFFFFFFFEFEFEFFFF
              FFFFFFFFFFFFFFF2F2F2E7E7E7F3F3F3EBEBEBEDEDEDFEFEFEFCFCFCE5E5E5F0
              F0F0F7F7F7F4F4F4F8F8F8F4F4F4FDFDFDFAFAFAF7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FBFBFBF4F4F4F1F1F1F0F0F0F0F0F0D6D6D6D9D9D9EBEBEBD1D1D1CDCDCD
              E0E0E0E1E1E1DEDEDEEAEAEAEFEFEFF3F3F3FBFBFBFAFAFAFBFBFBFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7B9B9B9CCCCCCEEEEEEF2F2F2EAEAEAF0
              F0F0F7F7F7FCFCFCF8F8F8FBFBFBFBFBFBF9F9F9FDFDFDFAFAFAFCFCFCFFFFFF
              FFFFFFF9F9F9ECECECF7F7F7FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFCFC
              FCFFFFFFFFFFFFDEDEDEBBBBBBC0C0C0D3D3D3E6E6E6E5E5E5E6E6E6F2F2F2F7
              F7F7F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
              F3F3F3EFEFEFF6F6F6FFFFFFFFFFFFFEFEFEFCFCFCFBFBFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF3F3F3E4E4E4EDEDEDEBEBEBF4F4F4FFFFFFF0F0F0E5E5E5F3
              F3F3F7F7F7F4F4F4F9F9F9F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
              E800ECECECEBEBEBEDEDEDFAFAFAFBFBFBDADADAE8E8E8DEDEDEC9C9C9DADADA
              E3E3E3E5E5E5EBEBEBF1F1F1F7F7F7F9F9F9FCFCFCFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4BDBDBDD2D2D2EDEDEDFDFDFDFBFBFBF1F1F1EE
              EEEEF6F6F6F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFAFAFAFBFBFBFCFCFCFFFFFF
              FFFFFFFCFCFCF7F7F7FFFFFFFFFFFFF4F4F4FFFFFFFFFFFFFAFAFAE9E9E9EDED
              EDF1F1F1E0E0E0C4C4C4C5C5C5D6D6D6E6E6E6EBEBEBE8E8E8F4F4F4FCFCFCFA
              FAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFBFBFBFFFFFFFFFFFF
              F0F0F0ECECECECECECFFFFFFFFFFFFFAFAFAF9F9F9F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF7F7F7E3E3E3E9E9E9F2F2F2FCFCFCFDFDFDEBEBEBEAEAEAF4
              F4F4F7F7F7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFF4F4F4EDEDEDFBFBFBFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2E9E9E9F2F2
              F200EEEEEEF3F3F3FFFFFFFFFFFFFDFDFDD2D2D2D7D7D7D6D6D6DBDBDBDFDFDF
              E4E4E4E9E9E9EFEFEFF8F8F8FCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD8D8D8BEBEBED2D2D2EAEAEAF0F0F0F9F9F9FDFDFDF0F0F0ED
              EDEDF7F7F7F8F8F8F9F9F9FAFAFAFBFBFBFBFBFBF9F9F9FAFAFAFAFAFAFFFFFF
              FFFFFFFFFFFFF9F9F9F3F3F3E8E8E8F6F6F6FFFFFFF9F9F9E9E9E9EDEDEDECEC
              ECE8E8E8D7D7D7C4C4C4D4D4D4E1E1E1ECECECEBEBEBF1F1F1FCFCFCFCFCFCFD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2D3D3D3DDDDDDF9F9F9FBFBFB
              EFEFEFEBEBEBE9E9E9F3F3F3FEFEFEF8F8F8F9F9F9F7F7F7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFBFBFBE3E3E3ECECECF9F9F9FCFCFCF9F9F9E5E5E5EDEDEDF9
              F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEF6F6F6F2F2F2ECECEC
              EAEAEAE4E4E4EBEBEBF8F8F8FBFBFBECECECEAEAEAFAFAFAFFFFFFFFFFFFFFFF
              FF00FAFAFAFFFFFFFFFFFFFFFFFFD4D4D4C4C4C4DDDDDDE8E8E8E4E4E4E5E5E5
              EFEFEFF6F6F6FCFCFCFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF0F0F0C1C1C1D0D0D0EBEBEBF9F9F9F9F9F9F9F9F9FFFFFFF7F7F7ED
              EDEDF4F4F4F4F4F4F8F8F8FFFFFFFFFFFFFBFBFBFAFAFAF9F9F9F8F8F8FFFFFF
              FFFFFFEDEDEDD7D7D7D7D7D7F1F1F1FFFFFFF7F7F7E7E7E7EAEAEAEEEEEEF2F2
              F2EAEAEACDCDCDCACACADEDEDEE9E9E9EEEEEEF1F1F1FBFBFBFDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7C5C5C5C4C4C4DBDBDBFFFFFFFFFFFF
              F4F4F4F0F0F0EBEBEBF0F0F0FEFEFEFAFAFAF9F9F9F8F8F8FEFEFEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE3E3E3E5E5E5F2F2F2FCFCFCEDEDEDE8E8E8FCFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEFEFEFF6F6F6F1F1F1EBEBEB
              F0F0F0EEEEEEF7F7F7FAFAFAF9F9F9F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFF
              FF00FAFAFAFCFCFCF3F3F3DEDEDECCCCCCE3E3E3FCFCFCF6F6F6E8E8E8F0F0F0
              F9F9F9FCFCFCFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDCDCDCCDCDCDE3E3E3F3F3F3FCFCFCFAFAFAF6F6F6FFFFFFFDFDFDF2
              F2F2F8F8F8F8F8F8FBFBFBFFFFFFFFFFFFFBFBFBF7F7F7EFEFEFEEEEEEEEEEEE
              DEDEDEC9C9C9DBDBDBFFFFFFFFFFFFF7F7F7E9E9E9EBEBEBF2F2F2F6F6F6EEEE
              EED3D3D3C4C4C4D5D5D5E5E5E5ECECECF1F1F1FCFCFCFDFDFDFCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEDEDEDBDBDBDC4C4C4D6D6D6E8E8E8FFFFFFFFFFFF
              FBFBFBF3F3F3EFEFEFEEEEEEF4F4F4F7F7F7F6F6F6F7F7F7F9F9F9FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFE5E5E5E8E8E8FFFFFFF7F7F7E8E8E8FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F3F3F3F9F9F9F4F4F4FAFAFA
              FFFFFFFDFDFDF7F7F7F7F7F7F8F8F8FCFCFCFDFDFDFFFFFFFFFFFFF9F9F9F3F3
              F300F4F4F4F4F4F4F4F4F4F1F1F1FAFAFAFFFFFFFFFFFFEEEEEEDCDCDCF6F6F6
              FCFCFCFDFDFDFFFFFFFFFFFFFAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F6D8D8D8D8D8D8E8E8E8F9F9F9FBFBFBF1F1F1F0F0F0F9F9F9FCFCFCF9
              F9F9F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFF9F9F9EEEEEEE7E7E7ECECECF8F8F8
              FBFBFBFFFFFFFFFFFFFFFFFFF9F9F9EBEBEBF0F0F0F6F6F6F9F9F9EDEDEDD4D4
              D4C3C3C3D2D2D2E4E4E4EBEBEBF1F1F1FBFBFBFCFCFCFAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF9F9F9C6C6C6CCCCCCE0E0E0E8E8E8F8F8F8FFFFFFFFFFFF
              FFFFFFF9F9F9F3F3F3EDEDEDF3F3F3FDFDFDFBFBFBFAFAFAF9F9F9FAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFF3F3F3EFEFEFF2F2F2EBEBEBFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF1F1F1EDEDEDF1F1F1F3F3F3F1F1F1
              EDEDEDE7E7E7E8E8E8EEEEEEF4F4F4F7F7F7F2F2F2F4F4F4F0F0F0EDEDEDEDED
              ED00FFFFFFFBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDC9C9C9EFEFEF
              FAFAFAFCFCFCFCFCFCF8F8F8F4F4F4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FDEFEFEFDEDEDEDFDFDFEEEEEEFEFEFEFCFCFCF1F1F1EEEEEEEEEEEEEFEFEFF8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF0F0F0E7E7E7E7E7E7EBEBEBE9E9E9DDDDDDCCCCCCC5C5
              C5D1D1D1E4E4E4ECECECF3F3F3FCFCFCFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFCACACAC0C0C0DADADAE4E4E4E8E8E8F7F7F7FFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7F0F0F0F1F1F1FFFFFFFFFFFFFDFDFDF9F9F9F6F6F6F4F4
              F4F3F3F3FFFFFFFFFFFFE4E4E4D2D2D2DEDEDEF7F7F7FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDE6E6E6E5E5E5E6E6E6E4E4E4DBDBDB
              D2D2D2C9C9C9C6C6C6CBCBCBD6D6D6D8D8D8D3D3D3CBCBCBC9C9C9D1D1D1E4E4
              E400FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1BEBEBECDCDCDEFEFEF
              FAFAFAF9F9F9F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFF
              FFF8F8F8E8E8E8E6E6E6F2F2F2FBFBFBF9F9F9F2F2F2E7E7E7E7E7E7F9F9F9FF
              FFFFF7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFF
              FFFFFFF1F1F1E5E5E5E4E4E4E7E7E7E7E7E7E4E4E4D7D7D7C8C8C8CACACAD5D5
              D5E3E3E3EFEFEFF7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE5E5E5C6C6C6D9D9D9E9E9E9E5E5E5E8E8E8F2F2F2FBFBFBFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F6F2F2F2FFFFFFFFFFFFFFFFFFF3F3F3EAEAEAEDED
              EDEDEDEDE1E1E1D4D4D4C7C7C7D8D8D8F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFEFEFEF9F9F9EBEBEBE8E8E8ECECECF3F3F3F0F0F0E8E8E8DEDEDE
              DCDCDCDFDFDFE0E0E0E4E4E4E1E1E1DADADADCDCDCDBDBDBDEDEDEE3E3E3E9E9
              E900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9D4D4D4DCDCDCDBDBDBEFEFEF
              FCFCFCFCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFE
              FEFBFBFBEFEFEFE9E9E9F0F0F0F4F4F4F3F3F3F0F0F0DFDFDFEFEFEFFFFFFFFF
              FFFFF0F0F0F8F8F8FFFFFFFFFFFFFCFCFCE5E5E5E4E4E4F1F1F1F1F1F1EBEBEB
              E3E3E3DEDEDEDDDDDDDDDDDDDBDBDBD7D7D7CFCFCFC9C9C9D4D4D4E1E1E1EAEA
              EAF2F2F2F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFD6D6D6D8D8D8EAEAEAEFEFEFE8E8E8ECECECF4F4F4FDFDFDFFFFFF
              FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8E8E8E8EBEB
              EBE6E6E6D9D9D9CACACADEDEDEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFCFAFAFAF3F3F3F2F2F2F3F3F3F9F9F9F3F3F3E8E8E8E1E1E1E3E3E3
              EBEBEBF3F3F3F9F9F9FDFDFDF9F9F9F6F6F6F3F3F3F6F6F6FBFBFBFCFCFCF8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDCDCDCF3F3F3DCDCDCEEEEEE
              FFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBFBFBFFFFFFFEFEFEFFFF
              FFFFFFFFF6F6F6E7E7E7EBEBEBEBEBEBEFEFEFF2F2F2E8E8E8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEDEDEDCFCFCFB9B9B9C4C4C4D2D2D2D5D5D5D0D0D0
              CBCBCBCCCCCCCACACACACACAC9C9C9C9C9C9CFCFCFD8D8D8E6E6E6EFEFEFF4F4
              F4F7F7F7FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEBEBEBD6D6D6E1E1E1EDEDEDF0F0F0E8E8E8F3F3F3F8F8F8FEFEFEFFFFFF
              FFFFFFFFFFFFEBEBEBF2F2F2FDFDFDFFFFFFFFFFFFF8F8F8F7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFCFCFCF1F1F1EDEDEDEEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFB
              FBFBF7F7F7F7F7F7F6F6F6F6F6F6F3F3F3EFEFEFE5E5E5E5E5E5EAEAEAF6F6F6
              F9F9F9F9F9F9FAFAFAF6F6F6F6F6F6F6F6F6F7F7F7FBFBFBF7F7F7FAFAFAFAFA
              FA00FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D4D4D4ECECECFFFFFFDCDCDCEBEBEB
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF7F7F7E7E7E7E4E4E4EAEAEAFAFAFAFFFFFFFDFDFDFFFFFFFFFFFFFF
              FFFFFAFAFAEFEFEFD3D3D3C6C6C6C2C2C2C1C1C1CFCFCFD3D3D3CCCCCCC8C8C8
              CFCFCFD2D2D2D7D7D7DEDEDEE4E4E4E6E6E6EDEDEDF4F4F4F9F9F9F9F9F9FBFB
              FBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
              FBFBEAEAEADEDEDEE8E8E8F2F2F2F3F3F3E9E9E9F6F6F6FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFF0F0F0FCFCFCF1F1F1F2F2F2FBFBFBEDEDEDF7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8FBFBFBFCFCFCFAFAFAF2F2F2EF
              EFEFEEEEEEEDEDEDEBEBEBEBEBEBE7E7E7E3E3E3E9E9E9F2F2F2F6F6F6F7F7F7
              EFEFEFEBEBEBF0F0F0F0F0F0F3F3F3F3F3F3F4F4F4F7F7F7F2F2F2FAFAFAFCFC
              FC00FFFFFFFFFFFFFFFFFFFFFFFFEAEAEADBDBDBF7F7F7FDFDFDD3D3D3E1E1E1
              F9F9F9FEFEFEFFFFFFFFFFFFFDFDFDFAFAFAF7F7F7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFAFAFAE8E8E8DFDFDFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
              F1F1E4E4E4D6D6D6D8D8D8D9D9D9D4D4D4DCDCDCEAEAEAE8E8E8E0E0E0E6E6E6
              EEEEEEF1F1F1F4F4F4F7F7F7F3F3F3F7F7F7FDFDFDFDFDFDFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAEFEFEFE8E8E8F1F1F1F7F7F7F3F3F3EEEEEEF7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE7E7E7D9D9D9E6E6E6F3F3F3F7F7
              F7F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1E1E1
              E1E1E6E6E6EAEAEAEDEDEDEBEBEBE8E8E8EDEDEDF2F2F2EEEEEEEBEBEBE6E6E6
              E6E6E6EBEBEBF1F1F1F3F3F3F7F7F7F6F6F6F0F0F0ECECECF1F1F1FAFAFAFDFD
              FD00FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E3E3E3F8F8F8F1F1F1CCCCCCDCDCDC
              EDEDEDEDEDEDEEEEEEF1F1F1F8F8F8F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDEBEBEBE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E6
              E6E6E6E6E6E6E6E6E4E4E4D8D8D8D9D9D9E5E5E5EEEEEEE8E8E8EEEEEEF8F8F8
              FBFBFBFAFAFAFAFAFAFAFAFAFCFCFCFDFDFDFCFCFCFFFFFFFDFDFDFCFCFCFCFC
              FCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8FBFBFBF9
              F9F9F3F3F3F0F0F0F2F2F2F3F3F3F6F6F6F3F3F3F9F9F9FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9E7E7E7CCCCCCB5B5B5BBBBBBCCCCCCE3E3E3F0F0F0F4F4
              F4FAFAFAFEFEFEFFFFFFF7F7F7EFEFEFEEEEEEF7F7F7F4F4F4E5E5E5DDDDDDE1
              E1E1E7E7E7EDEDEDEFEFEFEDEDEDEAEAEAEEEEEEEEEEEEEAEAEAE7E7E7E9E9E9
              F4F4F4F9F9F9F9F9F9FAFAFAFCFCFCF6F6F6F2F2F2FCFCFCFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFCFCFCE6E6E6E5E5E5F7F7F7E7E7E7CACACADFDFDF
              EEEEEEEFEFEFE9E9E9E3E3E3E9E9E9EFEFEFF2F2F2FDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF8F8F8F2F2F2FFFFFFFFFFFFFFFFFFFCFCFCEAEAEAE5E5E5EC
              ECECF0F0F0E8E8E8D6D6D6D3D3D3E0E0E0EDEDEDF0F0F0F0F0F0FAFAFAFDFDFD
              FDFDFDFAFAFAF9F9F9FBFBFBFDFDFDFCFCFCFDFDFDFDFDFDF7F7F7F4F4F4F4F4
              F4F4F4F4F7F7F7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFF9F9F9F6F6F6F4F4F4FA
              FAFAF9F9F9F7F7F7F3F3F3F8F8F8FBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEED9D9D9C4C4C4BBBBBBC7C7C7D5D5D5D4D4D4CFCFCFD2D2D2E1E1
              E1F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFAFAFAE5E5E5E5E5E5EF
              EFEFF4F4F4F6F6F6ECECECE9E9E9EAEAEAF0F0F0EAEAEAE8E8E8EBEBEBF9F9F9
              FFFFFFFDFDFDFDFDFDFDFDFDF9F9F9F2F2F2F9F9F9FFFFFFFFFFFFFDFDFDFEFE
              FE00FFFFFFFFFFFFFFFFFFF9F9F9E6E6E6E9E9E9F2F2F2D6D6D6D1D1D1EEEEEE
              F8F8F8FBFBFBFAFAFAF7F7F7EFEFEFECECECEEEEEEF2F2F2F7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6EAEAEAE8E8E8F1F1F1F1
              F1F1EDEDEDD8D8D8CCCCCCDCDCDCEBEBEBEEEEEEF1F1F1FAFAFAFDFDFDFCFCFC
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF7F7F7F4F4F4FAFAFAFFFF
              FFFFFFFFFFFFFFFFFFFFFCFCFCF7F7F7F8F8F8FDFDFDFAFAFAF4F4F4F6F6F6FA
              FAFAFCFCFCFAFAFAF2F2F2FAFAFAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              EEEEEEDBDBDBC8C8C8C2C2C2D2D2D2E8E8E8EDEDEDE4E4E4DCDCDCD9D9D9D7D7
              D7D6D6D6DBDBDBE1E1E1EDEDEDFFFFFFFDFDFDFDFDFDF0F0F0E5E5E5EEEEEEFA
              FAFAFFFFFFFAFAFAF0F0F0F2F2F2F2F2F2F2F2F2EBEBEBEDEDEDF6F6F6FFFFFF
              FFFFFFFAFAFAF7F7F7F3F3F3F0F0F0F3F3F3FAFAFAFAFAFAF8F8F8F8F8F8F6F6
              F600FBFBFBFFFFFFFFFFFFFDFDFDECECECECECECDBDBDBCCCCCCE9E9E9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF3F3F3F1F1F1F2F2F2F8F8F8FDFD
              FDFFFFFFFFFFFFFFFFFFF2F2F2FAFAFAF3F3F3E5E5E5E6E6E6F2F2F2F7F7F7F0
              F0F0DCDCDCC9C9C9D5D5D5EBEBEBEEEEEEF1F1F1F8F8F8FCFCFCFAFAFAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2F1F1F1EFEFEFF3F3F3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEF8F8F8F2F2F2F2F2F2F7F7F7F3
              F3F3F7F7F7FCFCFCF8F8F8F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFF9F9F9E7E7E7
              DADADAC8C8C8C5C5C5D3D3D3E9E9E9EDEDEDE7E7E7EDEDEDFBFBFBFCFCFCF7F7
              F7F0F0F0E5E5E5DBDBDBD3D3D3D3D3D3E6E6E6F7F7F7E9E9E9EFEFEFF6F6F6F7
              F7F7FDFDFDFAFAFAF7F7F7F2F2F2F2F2F2EDEDEDEBEBEBF0F0F0FFFFFFFFFFFF
              F7F7F7EEEEEEEEEEEEF1F1F1F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFCFCFCF7F7
              F700FEFEFEFFFFFFFFFFFFFEFEFEE9E9E9D1D1D1C1C1C1DBDBDBF4F4F4FFFFFF
              FFFFFFFFFFFFF6F6F6F7F7F7FAFAFAFDFDFDFCFCFCF7F7F7F2F2F2F2F2F2F4F4
              F4F9F9F9FCFCFCEFEFEFDFDFDFE8E8E8E5E5E5E6E6E6F4F4F4FCFCFCF2F2F2DB
              DBDBC7C7C7D3D3D3E8E8E8EDEDEDEEEEEEF8F8F8FCFCFCFCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE6E6E6E8E8E8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1F3F3F3F9F9F9F7
              F7F7F7F7F7FBFBFBF6F6F6F1F1F1FFFFFFFFFFFFFFFFFFEBEBEBDADADAD3D3D3
              CCCCCCCBCBCBD9D9D9EAEAEAE8E8E8EAEAEAFAFAFAFFFFFFFCFCFCFBFBFBFFFF
              FFFFFFFFFFFFFFFDFDFDF4F4F4EBEBEBE7E7E7ECECECEBEBEBF0F0F0F7F7F7F3
              F3F3F7F7F7FDFDFDF9F9F9F3F3F3F2F2F2EDEDEDEDEDEDF6F6F6FFFFFFF3F3F3
              EEEEEEF0F0F0F1F1F1F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFF8F8F8ECECECDDDDDDBFBFBFABABABC5C5C5EDEDEDEFEFEFF7F7F7
              FBFBFBF7F7F7FCFCFCFFFFFFFEFEFEFFFFFFFFFFFFFDFDFDFBFBFBF8F8F8F1F1
              F1F0F0F0EEEEEEE9E9E9E7E7E7EAEAEAEBEBEBF3F3F3F9F9F9EDEDEDD4D4D4C3
              C3C3D1D1D1EBEBEBF0F0F0F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDEDEDEEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F9F9F9FB
              FBFBFEFEFEFFFFFFFAFAFAFCFCFCFFFFFFF7F7F7DEDEDED6D6D6D5D5D5D3D3D3
              D2D2D2DADADAE5E5E5E5E5E5EDEDEDFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFF
              FFFEFEFEFCFCFCFDFDFDFAFAFAFEFEFEFFFFFFFCFCFCF1F1F1F3F3F3F9F9F9F2
              F2F2F2F2F2FEFEFEFCFCFCF7F7F7F2F2F2EBEBEBEBEBEBF7F7F7F7F7F7EDEDED
              F4F4F4F3F3F3F4F4F4FBFBFBFAFAFAFCFCFCFDFDFDFCFCFCFFFFFFFFFFFFFFFF
              FF00FFFFFFF1F1F1DCDCDCBFBFBFA9A9A9BEBEBEE9E9E9F4F4F4F4F4F4FBFBFB
              FCFCFCFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFEFEEEEEEEE7E7E7EAEAEAE6E6E6E0E0E0D1D1D1C9C9C9D8
              D8D8EAEAEAF0F0F0F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEDEDEDE7E7E7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
              FAFAFAFAFAFAFAF6F6F6FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF4F4F4F0F0F0EDEDEDDFDFDFDADADAE3E3E3E1E1E1DCDCDC
              DBDBDBDFDFDFDDDDDDE5E5E5FFFFFFFFFFFFFCFCFCF6F6F6FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFAFAF7F7F7FBFBFBFFFFFFFFFFFFFFFFFFF2F2F2F3F3F3F2
              F2F2F6F6F6FFFFFFFFFFFFF7F7F7F0F0F0E8E8E8EBEBEBF6F6F6F1F1F1F7F7F7
              FCFCFCF7F7F7FAFAFAFFFFFFFDFDFDFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDFD
              FD00FFFFFFEAEAEAC7C7C7C4C4C4D4D4D4E8E8E8F4F4F4F9F9F9FAFAFAFFFFFF
              FFFFFFFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFAFAE8E8E8DFDFDFDDDDDDD9D9D9D5D5D5D2D2D2DDDDDDE6
              E6E6EBEBEBF4F4F4F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EEEEEEE5E5E5E8E8E8E7E7E7EBEBEBF6F6F6FAFAFAF9F9F9F0F0F0EAEAEAE9E9
              E9EAEAEAE5E5E5EBEBEBF0F0F0F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF9F9F9F2F2F2F1F1F1E5E5E5DBDBDBE0E0E0DDDDDDD5D5D5CFCFCF
              D3D3D3DDDDDDE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF9F9F9F7F7F7F8F8F8FFFFFFFFFFFFFFFFFFF2F2F2F1F1F1F2
              F2F2F7F7F7FFFFFFFFFFFFF7F7F7F0F0F0E8E8E8EDEDEDF3F3F3F4F4F4FFFFFF
              F9F9F9F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF7F7
              F700F4F4F4C8C8C8C1C1C1E5E5E5F6F6F6F8F8F8FEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAECECECE6E6E6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F4F4
              F4FFFFFFFFFFFFEDEDEDDBDBDBCDCDCDCFCFCFD4D4D4DADADAE0E0E0E6E6E6E9
              E9E9F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8
              E1E1E1EEEEEEF1F1F1EBEBEBEEEEEEF3F3F3F7F7F7F7F7F7EBEBEBE8E8E8ECEC
              ECF2F2F2EEEEEEECECECEFEFEFF6F6F6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFC
              FCFCF4F4F4F3F3F3EEEEEEDFDFDFD8D8D8D8D8D8D6D6D6CCCCCCCBCBCBD1D1D1
              DFDFDFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6F1F1F1FFFFFFFFFF
              FFFFFFFFF6F6F6F2F2F2F7F7F7F8F8F8FCFCFCFFFFFFFFFFFFF6F6F6ECECECF1
              F1F1F9F9F9FFFFFFFDFDFDF9F9F9EDEDEDE5E5E5EBEBEBF4F4F4FFFFFFFFFFFF
              F0F0F0F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F4F4
              F400CACACAC2C2C2E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAF7F7F7F8F8F8FAFAFAF9F9F9FFFFFFFFFFFFF0F0F0E6E6E6E5E5E5EDED
              EDFCFCFCE7E7E7D5D5D5C5C5C5C6C6C6D9D9D9E8E8E8E9E9E9E6E6E6ECECECF8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E3E3E3
              EFEFEFF9F9F9FCFCFCF6F6F6F3F3F3FAFAFAF6F6F6F7F7F7EBEBEBEDEDEDF6F6
              F6FBFBFBFDFDFDF3F3F3F1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
              F3F3E8E8E8DADADACFCFCFCBCBCBD0D0D0CFCFCFCDCDCDCFCFCFDADADAE7E7E7
              F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F7F7FFFFFFFFFF
              FFF9F9F9F0F0F0F3F3F3F9F9F9FAFAFAFCFCFCFFFFFFFFFFFFF9F9F9E7E7E7EC
              ECECFDFDFDFFFFFFFAFAFAF9F9F9EAEAEAE5E5E5F0F0F0F9F9F9FFFFFFFFFFFF
              EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F9F9F9F2F2F2F1F1F1F8F8
              F800E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBF9F9F9FFFFFFE8E8
              E8E5E5E5DDDDDDDCDCDCD8D8D8DFDFDFF2F2F2F7F7F7EDEDEDEDEDEDF8F8F8FF
              FFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBDDDDDDE8E8E8
              F1F1F1F7F7F7FDFDFDF9F9F9F2F2F2FAFAFAF2F2F2F3F3F3F0F0F0F4F4F4F7F7
              F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DEDEDEC7
              C7C7C1C1C1C1C1C1C8C8C8D2D2D2D3D3D3D4D4D4DADADAEBEBEBF3F3F3FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBFFFFFFFFFFFFF9F9
              F9F6F6F6F2F2F2F7F7F7FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFAFAFAE5E5E5EE
              EEEEFFFFFFFDFDFDF9F9F9F6F6F6E5E5E5E5E5E5F1F1F1FAFAFAFFFFFFFFFFFF
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF2F2F2F3F3F3FEFE
              FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFFAFAFADFDF
              DFE7E7E7EEEEEEEEEEEEDCDCDCE5E5E5F8F8F8F7F7F7EFEFEFF6F6F6FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E6E6EDEDEDF0F0F0
              F4F4F4F4F4F4FDFDFDF7F7F7F0F0F0F9F9F9F0F0F0F7F7F7F7F7F7F7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D4D4D4BEBEBEBE
              BEBECACACAD6D6D6E1E1E1E5E5E5E3E3E3E7E7E7F9F9F9FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7F4F4F4FBFBFBFAFAFAFAFAFAF8F8F8F1F1F1F2F2F2F3F3
              F3F0F0F0F3F3F3F6F6F6FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFF7F7F7EBEBEBFE
              FEFEFFFFFFF4F4F4F7F7F7F2F2F2E3E3E3E8E8E8F7F7F7FFFFFFFFFFFFFFFFFF
              F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEECECECFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCD9D9D9D7D7D7D7D7D7DBDBDB
              E5E5E5F2F2F2F0F0F0F7F7F7FBFBFBFFFFFFFFFFFFF0F0F0F2F2F2EBEBEBE3E3
              E3EBEBEBF0F0F0EAEAEADADADAEBEBEBFBFBFBF3F3F3F0F0F0F9F9F9FDFDFDFB
              FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7EBEBEBF4F4F4F3F3F3
              FAFAFAFAFAFAFDFDFDFAFAFAF7F7F7F4F4F4F0F0F0FAFAFAFAFAFAFCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6C5C5C5CBCBCBD8
              D8D8E5E5E5EFEFEFEEEEEEECECECF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9F7F7F7FBFBFBF7F7F7F9F9F9F9F9F9F3F3F3EEEEEEEBEB
              EBF0F0F0F7F7F7F6F6F6F9F9F9FBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFF
              FFFFFCFCFCF0F0F0F6F6F6EAEAEADFDFDFEEEEEEFCFCFCFFFFFFFFFFFFFBFBFB
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE3E3E3E8E8E8FFFF
              FF00E3E3E3CACACAB8B8B8ACACACA4A4A4A8A8A8B4B4B4BFBFBFC6C6C6CDCDCD
              D5D5D5D7D7D7DCDCDCE9E9E9F3F3F3FFFFFFFFFFFFF3F3F3F6F6F6EBEBEBDFDF
              DFE8E8E8EEEEEEE8E8E8DEDEDEF1F1F1F7F7F7EEEEEEF3F3F3FAFAFAFDFDFDFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5F1F1F1F4F4F4F3F3F3
              FCFCFCF6F6F6FBFBFBFFFFFFF7F7F7E6E6E6F1F1F1FCFCFCFCFCFCFAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD9D9D9D2D2D2D9D9D9E5E5E5EF
              EFEFF7F7F7F7F7F7F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              FFFFFFFFFFFFFDFDFDF9F9F9FDFDFDFBFBFBF7F7F7F7F7F7F4F4F4F1F1F1EDED
              EDF0F0F0F6F6F6F7F7F7F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF4F4F4EBEBEBEFEFEFE3E3E3E5E5E5F3F3F3FDFDFDFFFFFFFFFFFFEDEDED
              F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6EBEBEBFFFF
              FF00BDBDBDBDBDBDC5C5C5D3D3D3DADADAE1E1E1E8E8E8EFEFEFF1F1F1F1F1F1
              F4F4F4F4F4F4F7F7F7F2F2F2FAFAFAFFFFFFFFFFFFF9F9F9F0F0F0D7D7D7D9D9
              D9E6E6E6ECECECE3E3E3DFDFDFF3F3F3F1F1F1F0F0F0F8F8F8FDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E7E7E7F4F4F4F7F7F7FAFAFA
              FAFAFAF3F3F3FFFFFFFFFFFFE6E6E6DEDEDEFBFBFBFCFCFCF9F9F9F9F9F9FCFC
              FCFFFFFFFFFFFFFFFFFFFDFDFDEAEAEAD7D7D7D8D8D8E3E3E3EAEAEAF0F0F0F7
              F7F7F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3
              F6F6F6FEFEFEF9F9F9F7F7F7F9F9F9F9F9F9F7F7F7F8F8F8F9F9F9F6F6F6F3F3
              F3F6F6F6F7F7F7F3F3F3F0F0F0FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAEDEDEDE5E5E5E7E7E7DEDEDEEBEBEBFBFBFBFFFFFFFFFFFFFEFEFEEAEAEA
              EEEEEEF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFAFAFADFDFDFD5D5D5FBFBFBFFFF
              FF00EBEBEBE8E8E8E8E8E8EDEDEDEEEEEEE8E8E8EAEAEAF4F4F4F3F3F3F2F2F2
              F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DBDBDBCDCDCDDFDF
              DFEBEBEBEFEFEFE4E4E4E1E1E1EEEEEEECECECF1F1F1FAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE5E5E5F0F0F0FFFFFFFCFCFCFDFDFD
              FAFAFAF7F7F7FFFFFFFAFAFAD8D8D8E8E8E8FFFFFFF9F9F9F2F2F2F4F4F4FDFD
              FDFFFFFFFFFFFFFBFBFBEBEBEBD9D9D9DDDDDDEBEBEBF0F0F0EFEFEFF0F0F0F3
              F3F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF9F9F9
              F3F3F3FAFAFAF7F7F7F3F3F3F1F1F1F3F3F3F7F7F7F8F8F8F8F8F8F6F6F6FAFA
              FAFCFCFCFBFBFBF8F8F8F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF2
              F2F2E7E7E7DCDCDCDEDEDEE3E3E3F3F3F3FEFEFEFDFDFDFFFFFFFFFFFFF0F0F0
              EEEEEEF3F3F3FBFBFBFEFEFEFFFFFFFDFDFDF2F2F2D8D8D8E6E6E6FFFFFFFFFF
              FF00EAEAEAE7E7E7EAEAEAEFEFEFF6F6F6EEEEEEECECECF3F3F3F6F6F6F7F7F7
              FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCCACACADADADAEAEA
              EAEDEDEDE9E9E9DEDEDEE5E5E5F1F1F1F1F1F1F8F8F8FEFEFEFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEFFFFFFFFFFFFFAFAFAFFFFFF
              FEFEFEF3F3F3F8F8F8ECECECE1E1E1F9F9F9FFFFFFF7F7F7F6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFF1F1F1E5E5E5DFDFDFEEEEEEF7F7F7F3F3F3EEEEEEF2F2F2F7
              F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFCFCFCFDFDFDF8F8F8
              F3F3F3F6F6F6F2F2F2F0F0F0F1F1F1F3F3F3F8F8F8F8F8F8F8F8F8F3F3F3FAFA
              FAFDFDFDFEFEFEFCFCFCF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6ED
              EDEDDCDCDCD4D4D4DCDCDCEAEAEAF9F9F9FEFEFEFAFAFAFFFFFFFFFFFFF2F2F2
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EAEAEADCDCDCF6F6F6FFFFFFFFFF
              FF00E8E8E8EBEBEBF0F0F0F3F3F3FCFCFCF6F6F6EBEBEBF0F0F0F7F7F7F8F8F8
              FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE3E3E3C5C5C5CFCFCFE6E6E6E8E8
              E8E8E8E8E3E3E3E3E3E3EDEDEDF1F1F1F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFDFDFDFCFCFCFFFFFF
              FFFFFFF2F2F2FCFCFCF6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF9F9F9E7E7E7DFDFDFEAEAEAF7F7F7F9F9F9F0F0F0EBEBEBF3F3F3FD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF9F9F9F6F6F6F4F4F4F3F3F3
              F3F3F3F2F2F2EDEDEDEDEDEDF0F0F0F4F4F4F8F8F8F8F8F8F7F7F7F3F3F3F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDDE
              DEDEC9C9C9D0D0D0E4E4E4F4F4F4F9F9F9F6F6F6F8F8F8FFFFFFFFFFFFF0F0F0
              FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE4E4E4E5E5E5FFFFFFFFFFFFFFFF
              FF00F0F0F0F2F2F2F2F2F2F2F2F2F9F9F9F8F8F8EBEBEBEEEEEEFAFAFAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDECACACACDCDCDE4E4E4EAEAEAE5E5
              E5E3E3E3E5E5E5EEEEEEF0F0F0F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFDFDFDFDFDFDF6F6F6FDFDFDFFFFFF
              F3F3F3F2F2F2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
              FCEEEEEEE6E6E6DBDBDBE1E1E1F2F2F2F6F6F6F3F3F3EAEAEAE8E8E8F8F8F8FF
              FFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6F9F9F9FAFAFAF7F7F7F9F9F9FAFAFA
              F3F3F3F2F2F2F0F0F0EEEEEEF3F3F3F7F7F7F7F7F7F8F8F8F3F3F3F3F3F3F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF3F3F3EEEEEEDFDFDFC6
              C6C6C1C1C1DEDEDEF2F2F2F3F3F3ECECECE8E8E8F7F7F7FFFFFFF6F6F6E8E8E8
              F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DEDEDEF4F4F4FFFFFFFFFFFFFFFF
              FF00F6F6F6F3F3F3F3F3F3F6F6F6FAFAFAF9F9F9EBEBEBF0F0F0FCFCFCFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD1D1D1D8D8D8E5E5E5E8E8E8E5E5E5E3E3
              E3E8E8E8EEEEEEF3F3F3F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F3F3F3F2F2F2F9F9F9F6F6F6
              F3F3F3F6F6F6FAFAFAFFFFFFFFFFFFF3F3F3F6F6F6F4F4F4EEEEEEE6E6E6E4E4
              E4DEDEDEE0E0E0E0E0E0EDEDEDFBFBFBF8F8F8F3F3F3EBEBEBEFEFEFFFFFFFFF
              FFFFFCFCFCF9F9F9FFFFFFFAFAFAF4F4F4F7F7F7F7F7F7F9F9F9F9F9F9F9F9F9
              F7F7F7F4F4F4F3F3F3F1F1F1F7F7F7F7F7F7F8F8F8FAFAFAF7F7F7F6F6F6F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAEFEFEFFFFFFFE3E3E3C7C7C7B9
              B9B9D5D5D5F2F2F2F0F0F0E9E9E9E8E8E8F2F2F2FFFFFFFFFFFFECECECE5E5E5
              EFEFEFFBFBFBFFFFFFFFFFFFFDFDFDE8E8E8E8E8E8FFFFFFFFFFFFFFFFFFFAFA
              FA00F6F6F6F3F3F3F6F6F6F7F7F7FAFAFAF7F7F7F0F0F0F6F6F6FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE8E8E8DEDEDEDEDEDEE7E7E7ECECECE8E8E8E8E8E8EAEA
              EAEEEEEEF0F0F0F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFBFBFBF7F7F7F4F4F4F2F2F2ECECECF0F0F0F7F7F7F7F7F7
              FAFAFAF9F9F9FDFDFDF6F6F6DFDFDFD2D2D2D9D9D9DFDFDFDEDEDEE5E5E5E9E9
              E9E8E8E8EBEBEBEAEAEAF7F7F7FEFEFEFAFAFAF6F6F6EDEDEDF0F0F0FFFFFFFF
              FFFFFCFCFCFAFAFAFDFDFDF7F7F7F4F4F4F7F7F7F8F8F8F9F9F9F3F3F3F6F6F6
              F6F6F6F8F8F8F3F3F3F6F6F6F6F6F6F7F7F7F9F9F9FAFAFAF7F7F7F3F3F3FCFC
              FCFFFFFFFFFFFFFFFFFFFCFCFCE3E3E3EEEEEEFFFFFFF2F2F2C0C0C0B4B4B4CD
              CDCDF1F1F1F2F2F2ECECECFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEECECEC
              F8F8F8FFFFFFFEFEFEF7F7F7EDEDEDDFDFDFF2F2F2FFFFFFFFFFFFFCFCFCF2F2
              F200F3F3F3F3F3F3F3F3F3F3F3F3F7F7F7EDEDEDF3F3F3FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF3F3F3E8E8E8EAEAEAE3E3E3EAEAEAEEEEEEEAEAEAEAEAEAEDED
              EDF1F1F1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
              F3F3DFDFDFD9D9D9D5D5D5D6D6D6DCDCDCE8E8E8E8E8E8EFEFEFF7F7F7FAFAFA
              F9F9F9F7F7F7EBEBEBD4D4D4C4C4C4CCCCCCDADADADEDEDEE4E4E4EFEFEFF3F3
              F3F6F6F6F3F3F3F0F0F0FFFFFFFFFFFFFAFAFAF6F6F6EBEBEBF0F0F0FFFFFFFF
              FFFFF9F9F9F9F9F9F9F9F9F7F7F7F9F9F9FCFCFCFEFEFEFBFBFBF2F2F2F3F3F3
              F2F2F2F1F1F1F1F1F1F7F7F7F9F9F9FBFBFBFDFDFDFCFCFCF6F6F6F4F4F4FFFF
              FFFFFFFFFFFFFFFAFAFAF0F0F0FFFFFFFFFFFFFFFFFFBDBDBDB1B1B1CBCBCBEC
              ECECEEEEEEE1E1E1F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFEFEFE
              FFFFFFFFFFFFFAFAFAEEEEEEDBDBDBD9D9D9F7F7F7FFFFFFFFFFFFF2F2F2E5E5
              E500F4F4F4F3F3F3EFEFEFEEEEEEEBEBEBE5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEBEBEBE0E0E0E0E0E0D6D6D6CFCFCFDBDBDBE3E3E3E0E0E0E5E5E5EFEF
              EFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7CCCCCCC7
              C7C7CCCCCCD2D2D2D1D1D1D0D0D0D0D0D0D9D9D9E7E7E7EEEEEEF7F7F7FBFBFB
              F7F7F7EBEBEBD6D6D6CCCCCCD1D1D1E5E5E5EFEFEFECECECEDEDEDEDEDEDF1F1
              F1F4F4F4F2F2F2F7F7F7FFFFFFFFFFFFFAFAFAF6F6F6EAEAEAF2F2F2FFFFFFFF
              FFFFF6F6F6F6F6F6F4F4F4F9F9F9FCFCFCFDFDFDFFFFFFF7F7F7F0F0F0F1F1F1
              F0F0F0F1F1F1F3F3F3F3F3F3F2F2F2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEEEEEEFDFDFDFFFFFFFFFFFFC1C1C1ABABABC9C9C9EAEAEAEB
              EBEBE3E3E3E4E4E4F3F3F3F4F4F4EFEFEFF2F2F2F3F3F3F7F7F7FCFCFCFFFFFF
              FFFFFFFFFFFFFCFCFCEDEDEDDEDEDEECECECFFFFFFFFFFFFF3F3F3EAEAEAE4E4
              E400F1F1F1EFEFEFEAEAEAE8E8E8E7E7E7F2F2F2FFFFFFFFFFFFFFFFFFF0F0F0
              DFDFDFD9D9D9DCDCDCD7D7D7CACACAD5D5D5E6E6E6EBEBEBEBEBEBF6F6F6FDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5C6C6C6CCCCCCDFDFDFEB
              EBEBE8E8E8E7E7E7EAEAEAE8E8E8E4E4E4D9D9D9DADADAEBEBEBFAFAFAFFFFFF
              EEEEEEDBDBDBD0D0D0D7D7D7EAEAEAF9F9F9FDFDFDF4F4F4EAEAEAECECECF2F2
              F2F4F4F4F2F2F2F9F9F9FFFFFFFFFFFFF9F9F9F6F6F6EAEAEAF2F2F2FFFFFFFF
              FFFFF6F6F6F9F9F9F9F9F9FDFDFDFDFDFDFCFCFCF9F9F9EDEDEDEAEAEAEDEDED
              EEEEEEF0F0F0F2F2F2F6F6F6F2F2F2F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEDEDEDFDFDFDFFFFFFFFFFFFC1C1C1A8A8A8C8C8C8ECECECEAEAEAE0
              E0E0E8E8E8F4F4F4FAFAFAFCFCFCF0F0F0EBEBEBF0F0F0F8F8F8FFFFFFFFFFFF
              FFFFFFFDFDFDF3F3F3E7E7E7E8E8E8FCFCFCFFFFFFFFFFFFF4F4F4E3E3E3DCDC
              DC00EDEDEDEFEFEFECECECECECECF2F2F2FFFFFFFFFFFFFFFFFFF6F6F6DFDFDF
              E5E5E5EEEEEEEAEAEAD9D9D9DBDBDBEBEBEBF4F4F4F2F2F2F7F7F7FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAB4B4B4CDCDCDEDEDEDF9F9F9F0
              F0F0ECECECF3F3F3FAFAFAFAFAFAF9F9F9FCFCFCFBFBFBFFFFFFFFFFFFF9F9F9
              DEDEDED5D5D5D9D9D9F8F8F8FFFFFFF3F3F3FBFBFBF0F0F0ECECECF7F7F7F7F7
              F7F4F4F4F1F1F1F7F7F7FBFBFBFDFDFDFAFAFAF6F6F6EAEAEAF0F0F0FFFFFFFF
              FFFFF3F3F3FCFCFCFDFDFDFFFFFFFCFCFCF9F9F9F2F2F2E7E7E7EAEAEAEBEBEB
              EBEBEBF0F0F0F3F3F3F6F6F6F9F9F9F8F8F8F7F7F7F7F7F7FFFFFFFFFFFFFFFF
              FFEEEEEEF7F7F7FFFFFFFFFFFFC2C2C2A6A6A6CACACAECECECEBEBEBE5E5E5EE
              EEEEF9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFF
              F7F7F7EAEAEAECECECEEEEEEF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7DFDFDFE6E6
              E600EDEDEDEFEFEFEEEEEEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDF2F2F2
              F8F8F8EAEAEADBDBDBD6D6D6E8E8E8F6F6F6F3F3F3F4F4F4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C7C7C7D3D3D3E7E7E7EFEFEFEDEDEDEE
              EEEEECECECF7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4
              D6D6D6DCDCDCE1E1E1F4F4F4F2F2F2EBEBEBFAFAFAF2F2F2F3F3F3FAFAFAFBFB
              FBF8F8F8F2F2F2F7F7F7FEFEFEFDFDFDFAFAFAF2F2F2EAEAEAEFEFEFFFFFFFF9
              F9F9F1F1F1FBFBFBFBFBFBFDFDFDFEFEFEF9F9F9EEEEEEE8E8E8F0F0F0F1F1F1
              F4F4F4F6F6F6F4F4F4F8F8F8F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFEDED
              EDF4F4F4FFFFFFFFFFFFC5C5C5A4A4A4C8C8C8ECECECEAEAEAE3E3E3EBEBEBF4
              F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFEF
              E6E6E6EBEBEBF3F3F3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DEDEDEF1F1
              F100F4F4F4F4F4F4F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2F0F0F0
              DEDEDECDCDCDD1D1D1E3E3E3F1F1F1F1F1F1F0F0F0FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF7F7F7CACACADCDCDCEEEEEEE8E8E8EAEAEAE8E8E8E7
              E7E7F0F0F0F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD4D4D4
              DFDFDFEAEAEAE9E9E9EBEBEBEDEDEDF3F3F3F7F7F7F9F9F9F9F9F9FFFFFFFFFF
              FFFFFFFFF8F8F8FEFEFEFFFFFFFDFDFDF9F9F9F2F2F2E9E9E9EFEFEFFEFEFEFB
              FBFBF0F0F0F6F6F6F7F7F7F8F8F8F9F9F9F3F3F3EBEBEBEBEBEBF2F2F2F4F4F4
              F7F7F7F4F4F4F6F6F6F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7ECEC
              ECFFFFFFFFFFFFCFCFCFA1A1A1C4C4C4EDEDEDEFEFEFE3E3E3ECECECF4F4F4FE
              FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DFDFDFDADADA
              E1E1E1EFEFEFF8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E1E1E1F4F4
              F400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBD6D6D6
              C9C9C9CFCFCFE3E3E3F3F3F3F3F3F3F0F0F0F8F8F8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4D1D1D1EFEFEFF4F4F4E5E5E5E5E5E5EAEAEAEB
              EBEBEDEDEDF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D7D7D7DEDEDE
              F1F1F1F2F2F2F0F0F0EDEDEDF7F7F7F3F3F3F3F3F3FCFCFCFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7F3F3F3E9E9E9F0F0F0FEFEFEFE
              FEFEF0F0F0F6F6F6F7F7F7EFEFEFEEEEEEEBEBEBE8E8E8EDEDEDF6F6F6F9F9F9
              F7F7F7F8F8F8FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E8E8E8FFFF
              FFFFFFFFDCDCDCA6A6A6BFBFBFECECECF6F6F6E8E8E8EBEBEBF9F9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EDEDEDE8E8E8E6E6E6
              DFDFDFDADADADEDEDEE7E7E7F1F1F1FEFEFEFAFAFAF1F1F1F4F4F4E4E4E4F3F3
              F300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E7E7E7D0D0D0C4C4C4
              D1D1D1E5E5E5F4F4F4F6F6F6F0F0F0F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDADADAC5C5C5DEDEDEF8F8F8FCFCFCE1E1E1DFDFDFEEEEEEF6
              F6F6F4F4F4F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDBDBDBF2F2F2
              F8F8F8F3F3F3F7F7F7F6F6F6FAFAFAFDFDFDF9F9F9FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFCFCFCF6F6F6EBEBEBF1F1F1FAFAFAFA
              FAFAEFEFEFF3F3F3F2F2F2E9E9E9E9E9E9E7E7E7E4E4E4ECECECF8F8F8FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEE1E1E1FFFFFFFFFF
              FFE0E0E0B0B0B0BBBBBBE4E4E4F7F7F7EDEDEDE7E7E7F4F4F4FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0F0F0EEEEEEEFEFEFEFEFEFF0F0F0
              EBEBEBE6E6E6E3E3E3DDDDDDE1E1E1EBEBEBF3F3F3F2F2F2F9F9F9E5E5E5F3F3
              F300FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DEDEDECBCBCBC7C7C7D3D3D3
              E8E8E8F3F3F3F6F6F6EDEDEDF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE8E8E8B9B9B9CDCDCDEDEDEDFEFEFEF7F7F7D8D8D8E4E4E4F4F4F4F8
              F8F8FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCE8E8E8F0F0F0
              EFEFEFEFEFEFF6F6F6F9F9F9FCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF7F7F7F7F7F7FDFDFDFAFAFAF3F3F3F0F0F0F7F7F7FAFAFAFA
              FAFAF2F2F2F1F1F1F6F6F6F3F3F3F4F4F4F2F2F2F7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E3E3E3FFFFFFFFFFFFE5E5
              E5B4B4B4C0C0C0E1E1E1F3F3F3F6F6F6EDEDEDF6F6F6FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAFAFAEDEDEDEBEBEBEBEBEBECECECEEEEEEF6F6F6
              F6F6F6F6F6F6F7F7F7F7F7F7F0F0F0F0F0F0F4F4F4F0F0F0FEFEFEF0F0F0F8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFDFDFD1D1D1D1D1D1D6D6D6E6E6E6
              F7F7F7F9F9F9F0F0F0EEEEEEFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFC4C4C4C4C4C4E9E9E9FBFBFBFCFCFCEBEBEBD4D4D4E8E8E8F7F7F7F8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFDFDFDE3E3E3D7D7D7DFDFDFE5E5E5
              EAEAEAF0F0F0F2F2F2F9F9F9FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEAEAEAF7F7F7FFFFFFFAFAFAF3F3F3F7F7F7FAFAFAFEFEFEFE
              FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3E6E6E6FCFCFCFFFFFFEBEBEBB9B9
              B9C1C1C1E6E6E6F7F7F7F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFAFAFAE9E9E9E7E7E7E8E8E8E8E8E8EAEAEAECECECF6F6F6
              F6F6F6F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FAFAFAF9F9F9F8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0D0D0D4D4D4D9D9D9E1E1E1F4F4F4
              FAFAFAF2F2F2EBEBEBF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDBDBDBBEBEBEDFDFDFFAFAFAFEFEFEF2F2F2E5E5E5D6D6D6ECECECF6F6F6FF
              FFFFFFFFFFFFFFFFFFFFFFE4E4E4EAEAEAEEEEEEDCDCDCCFCFCFDCDCDCE5E5E5
              EBEBEBEDEDEDEDEDEDF2F2F2F1F1F1F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFAFAFAE8E8E8E4E4E4FBFBFBFFFFFFF9F9F9F3F3F3F9F9F9F9F9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCF9F9F9FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDCDCDCE4E4E4F3F3F3FFFFFFF9F9F9C1C1C1BDBD
              BDDBDBDBF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F3F3F9
              F9F9FFFFFFFFFFFFEDEDEDE3E3E3E7E7E7EEEEEEEEEEEEECECECEFEFEFF8F8F8
              F7F7F7F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7
              F700FFFFFFFFFFFFFFFFFFEFEFEFD6D6D6D7D7D7DEDEDEDBDBDBE9E9E9F9F9F9
              F7F7F7EFEFEFF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFC3C3C3CDCDCDF1F1F1FCFCFCF7F7F7EEEEEEE3E3E3DCDCDCF6F6F6FFFFFFFF
              FFFFFFFFFFFFFFFFE3E3E3F6F6F6FCFCFCF6F6F6ECECECE9E9E9F7F7F7FCFCFC
              F6F6F6EAEAEAE6E6E6EDEDEDEEEEEEF1F1F1F2F2F2F9F9F9FFFFFFFEFEFEF8F8
              F8F0F0F0E7E7E7EBEBEBFDFDFDFAFAFAF3F3F3F3F3F3F7F7F7F9F9F9FAFAFAF9
              F9F9F9F9F9F9F9F9F8F8F8F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F6F3F3F3FFFFFFFFFFFFFFFFFFDBDBDBC1C1C1D6D6
              D6ECECECF9F9F9FFFFFFFFFFFFFFFFFFFCFCFCFDFDFDF7F7F7F3F3F3FBFBFBFF
              FFFFFFFFFFFCFCFCEFEFEFE8E8E8E5E5E5EDEDEDF1F1F1F8F8F8FBFBFBFCFCFC
              F8F8F8FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF7F7
              F700FFFFFFFFFFFFF3F3F3D6D6D6D4D4D4E1E1E1DCDCDCE3E3E3F2F2F2F8F8F8
              EEEEEEEEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
              E7C1C1C1E1E1E1FAFAFAF7F7F7EEEEEEF4F4F4DEDEDEEAEAEAFFFFFFFFFFFFFF
              FFFFFFFFFFF6F6F6F9F9F9FFFFFFFCFCFCFCFCFCFEFEFEF6F6F6FFFFFFFEFEFE
              FFFFFFFFFFFFFAFAFAEFEFEFEBEBEBECECECEDEDEDF2F2F2FFFFFFFFFFFFFFFF
              FFF6F6F6EBEBEBEAEAEAF3F3F3F3F3F3F1F1F1F3F3F3F3F3F3F4F4F4F3F3F3F1
              F1F1F0F0F0EEEEEEF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
              F4F4F4F3F3F3F0F0F0EBEBEBEEEEEEF0F0F0EBEBEBE0E0E0DFDFDFE0E0E0E4E4
              E4EFEFEFF4F4F4F8F8F8FAFAFAFAFAFAF9F9F9FFFFFFF6F6F6F6F6F6FFFFFFFF
              FFFFFFFFFFF9F9F9F0F0F0E9E9E9E3E3E3EFEFEFF7F7F7FBFBFBFFFFFFFFFFFF
              FCFCFCFCFCFCFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF0F0
              F000FFFFFFFFFFFFE3E3E3D3D3D3E3E3E3E1E1E1DBDBDBE9E9E9F4F4F4F0F0F0
              E9E9E9F1F1F1FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
              D2C6C6C6EDEDEDF7F7F7EEEEEEF8F8F8F7F7F7E4E4E4FFFFFFFFFFFFFFFFFFFF
              FFFFEFEFEFE7E7E7E3E3E3D5D5D5C6C6C6BFBFBFC3C3C3C9C9C9DCDCDCEFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFDFD
              FDEEEEEEE3E3E3E7E7E7F4F4F4F7F7F7F4F4F4F4F4F4F1F1F1F0F0F0ECECECE9
              E9E9E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6F2F2F2F1F1F1
              F0F0F0F2F2F2EDEDEDE4E4E4D7D7D7D1D1D1CBCBCBD3D3D3E8E8E8FAFAFAE9E9
              E9ECECECF9F9F9F6F6F6F0F0F0F2F2F2F7F7F7FFFFFFF4F4F4F9F9F9FFFFFFFF
              FFFFFBFBFBF6F6F6F1F1F1ECECECE3E3E3EFEFEFFAFAFAFEFEFEFFFFFFFDFDFD
              F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FAFAFAFFFFFFF3F3
              F300FFFFFFF7F7F7D1D1D1D9D9D9E9E9E9DEDEDEDFDFDFEEEEEEF1F1F1EBEBEB
              EEEEEEF8F8F8FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
              CCD0D0D0EEEEEEEEEEEEF8F8F8FFFFFFEEEEEEFFFFFFFFFFFFFFFFFFF9F9F9ED
              EDEDECECECE7E7E7D1D1D1C0C0C0C4C4C4D0D0D0CFCFCFC5C5C5C7C7C7D6D6D6
              E9E9E9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF
              EFDFDFDFDFDFDFEDEDEDFAFAFAFBFBFBF8F8F8F6F6F6F2F2F2F0F0F0EEEEEEED
              EDEDF1F1F1FFFFFFFFFFFFF8F8F8F0F0F0EDEDEDECECECEFEFEFF4F4F4F4F4F4
              F0F0F0EFEFEFE6E6E6DDDDDDD8D8D8D4D4D4D5D5D5DDDDDDE7E7E7F6F6F6FFFF
              FFEBEBEBF2F2F2FFFFFFF4F4F4EBEBEBEFEFEFF8F8F8F7F7F7FCFCFCFFFFFFFF
              FFFFFEFEFEF8F8F8F1F1F1EAEAEAEAEAEAF8F8F8FFFFFFFFFFFFFCFCFCFAFAFA
              F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3F3F3FCFCFCF9F9F9F6F6
              F600F8F8F8DBDBDBCCCCCCE6E6E6EAEAEADBDBDBE5E5E5F1F1F1F0F0F0EEEEEE
              F8F8F8FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
              D2DCDCDCFBFBFBFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFF9F9F9EEEEEEF1
              F1F1EBEBEBD7D7D7C9C9C9CFCFCFDDDDDDE4E4E4E5E5E5E9E9E9E0E0E0D3D3D3
              D1D1D1DDDDDDE9E9E9F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
              F4EBEBEBEDEDEDF2F2F2F8F8F8F8F8F8F2F2F2EFEFEFEEEEEEEEEEEEEEEEEEEE
              EEEEF1F1F1F9F9F9E6E6E6D7D7D7DDDDDDE3E3E3EBEBEBEEEEEEECECECEAEAEA
              EBEBEBEAEAEAEBEBEBEEEEEEEEEEEEEFEFEFF0F0F0F8F8F8FEFEFEF4F4F4F4F4
              F4F2F2F2F1F1F1F8F8F8FFFFFFF3F3F3F2F2F2F8F8F8F6F6F6FAFAFAFFFFFFFF
              FFFFFFFFFFF6F6F6EDEDEDE4E4E4ECECECFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEEEEEEFFFFFFF7F7F7EDEDEDEEEE
              EE00E5E5E5D0D0D0DADADAEEEEEEE7E7E7DCDCDCEBEBEBF3F3F3F1F1F1F7F7F7
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB
              DBE3E3E3FFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFFFFFFFCFCFCF0F0F0EEEEEEE7
              E7E7D4D4D4CCCCCCD9D9D9ECECECF6F6F6F6F6F6FEFEFEFFFFFFFFFFFFFFFFFF
              EFEFEFDDDDDDD6D6D6D7D7D7E8E8E8F2F2F2F1F1F1F3F3F3F9F9F9FEFEFEFAFA
              FAF1F1F1EFEFEFF3F3F3FAFAFAFAFAFAF3F3F3F1F1F1EDEDEDECECECEDEDEDEB
              EBEBE9E9E9E8E8E8D5D5D5C7C7C7CACACAD8D8D8E8E8E8E0E0E0DDDDDDE4E4E4
              ECECECF4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ECEC
              ECEAEAEAE8E8E8F0F0F0FAFAFAFFFFFFF7F7F7F8F8F8F7F7F7F6F6F6FCFCFCFF
              FFFFFCFCFCEBEBEBE1E1E1E5E5E5F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8EDEDEDE7E7E7EEEEEEF3F3
              F300DBDBDBD6D6D6E8E8E8EEEEEEE1E1E1DEDEDEEEEEEEF3F3F3F4F4F4FDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
              F0D8D8D8E8E8E8E5E5E5F0F0F0FFFFFFFFFFFFFFFFFFEFEFEFE3E3E3DADADACF
              CFCFCFCFCFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCF1F1F1E3E3E3DADADADCDCDCE1E1E1E3E3E3E1E1E1E5E5E5F2F2F2F4F4
              F4F0F0F0EEEEEEF1F1F1F6F6F6F4F4F4F3F3F3F3F3F3EFEFEFF0F0F0EEEEEEED
              EDEDEDEDEDF0F0F0EDEDEDEAEAEAF4F4F4FFFFFFFDFDFDF4F4F4FAFAFAFDFDFD
              FEFEFEFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6F2F2F2F9F9F9FAFA
              FAF9F9F9F7F7F7F3F3F3F2F2F2F9F9F9FCFCFCF9F9F9F2F2F2F4F4F4F9F9F9FB
              FBFBF0F0F0E4E4E4E6E6E6F8F8F8FFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DFDFDFC8C8C8C6C6C6D2D2D2E0E0E0F1F1
              F100DEDEDEDFDFDFEFEFEFEBEBEBDCDCDCE5E5E5F4F4F4F9F9F9FCFCFCFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFF
              FFDEDEDED7D7D7ECECECFFFFFFFFFFFFFFFFFFEDEDEDDEDEDED4D4D4D0D0D0D6
              D6D6EDEDEDFFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              FFFFFFFFFFFFFFFFFFFAFAFAEFEFEFF1F1F1F1F1F1F0F0F0F6F6F6F3F3F3F7F7
              F7F2F2F2F0F0F0EEEEEEF0F0F0F0F0F0EFEFEFF1F1F1F0F0F0F2F2F2F0F0F0F0
              F0F0F0F0F0F3F3F3F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7EEEEEEEBEBEBF0F0F0F9F9F9FFFF
              FFFFFFFFFFFFFFFBFBFBF8F8F8F3F3F3F6F6F6F7F7F7F6F6F6F7F7F7F9F9F9F7
              F7F7EFEFEFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFCFCFCECECECD7D7D7C4C4C4CCCCCCDCDCDCE9E9E9EFEFEFE9E9
              E900E6E6E6E8E8E8F1F1F1E7E7E7DEDEDEF0F0F0F9F9F9FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1B8B8B8AAAAAAAAAAAAB2B2B2CFCF
              CFEEEEEED9D9D9DFDFDFFFFFFFFFFFFFF0F0F0E1E1E1D6D6D6D4D4D4DFDFDFEF
              EFEFFFFFFFFFFFFFFBFBFBF6F6F6F3F3F3F3F3F3FDFDFDFFFFFFFFFFFFF1F1F1
              F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FFFFFFFFFFFFFFFF
              FFF2F2F2EFEFEFE7E7E7EAEAEAEBEBEBF2F2F2F4F4F4F3F3F3F3F3F3F2F2F2F3
              F3F3F3F3F3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFEFEFEFEEEEEEEFEFEFEDEDEDEBEBEBEEEEEEF0F0F0F0F0
              F0F1F1F1E9E9E9ECECECEAEAEAEAEAEAF3F3F3F9F9F9F4F4F4F1F1F1F8F8F8FD
              FDFDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F7F7F7E7E7E7D5D5D5CACACAC5C5C5D7D7D7EAEAEAF0F0F0FDFDFDFFFFFFFDFD
              FD00EBEBEBF0F0F0EEEEEEDFDFDFE3E3E3F7F7F7F9F9F9FDFDFDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFECECECB1B1B1AFAFAFCBCBCBD7D7D7D7D7D7C4C4C4AEAE
              AEB1B1B1C2C2C2C7C7C7F9F9F9FAFAFAE5E5E5DEDEDED9D9D9E1E1E1F0F0F0FD
              FDFDFFFFFFFDFDFDF7F7F7F0F0F0F1F1F1FFFFFFFFFFFFFFFFFFFDFDFDE0E0E0
              EDEDEDEFEFEFF3F3F3F9F9F9FFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFF
              FFF6F6F6E8E8E8DFDFDFE5E5E5EAEAEAF3F3F3F7F7F7F9F9F9F7F7F7F6F6F6F6
              F6F6F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7D7D7D7DEDEDEF0F0F0EEEEEEF3F3F3F3F3F3EDEDEDECEC
              ECEDEDEDEAEAEAE3E3E3E8E8E8E9E9E9EEEEEEFAFAFAF9F9F9F3F3F3EDEDEDFA
              FAFAFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFFFFFFFFFFFFFFFFFFFAFAFAE9E9E9
              DEDEDED9D9D9D4D4D4D6D6D6DFDFDFF1F1F1F6F6F6FAFAFAFFFFFFFFFFFFFEFE
              FE00EEEEEEF0F0F0E5E5E5DFDFDFEFEFEFF9F9F9FBFBFBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7BEBEBEBCBCBCE5E5E5F6F6F6F7F7F7F7F7F7F3F3F3E4E4
              E4C3C3C3ADADADB8B8B8E5E5E5E1E1E1D4D4D4DCDCDCE5E5E5ECECECF9F9F9FD
              FDFDFCFCFCFAFAFAF3F3F3F1F1F1FEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D3D3D3
              EAEAEAF4F4F4F4F4F4F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF1F1F1DDDDDDDCDCDCE1E1E1EAEAEAF0F0F0F6F6F6F9F9F9FAFAFAFAFAFAFB
              FBFBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF2F2F2E3E3E3D0D0D0DDDDDDF1F1F1F1F1F1F8F8F8F2F2F2EBEBEBEDED
              EDF1F1F1F7F7F7EBEBEBEAEAEAF1F1F1EEEEEEFCFCFCF9F9F9F6F6F6F8F8F8EF
              EFEFFBFBFBFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFF3F3F3E3E3E3DDDDDD
              DCDCDCDBDBDBDDDDDDE8E8E8F2F2F2F8F8F8FAFAFAFFFFFFFAFAFAF2F2F2EEEE
              EE00EDEDEDE5E5E5DEDEDEE9E9E9F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFCACACAC2C2C2EAEAEAFAFAFAEFEFEFE6E6E6EAEAEAF7F7F7FBFB
              FBF9F9F9EBEBEBE3E3E3E3E3E3E0E0E0E3E3E3EEEEEEEEEEEEEBEBEBF2F2F2F9
              F9F9F7F7F7F8F8F8F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD0D0D0
              EAEAEAF8F8F8F3F3F3F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
              F9E5E5E5D5D5D5DFDFDFE7E7E7EEEEEEF1F1F1F3F3F3F9F9F9FDFDFDFEFEFEFC
              FCFCFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F0F0F0E5E5E5E1E1E1D6D6D6E7E7E7F3F3F3F0F0F0F8F8F8F0F0F0EAEAEAEDED
              EDF4F4F4F9F9F9F8F8F8EDEDEDF3F3F3F6F6F6FCFCFCFDFDFDFAFAFAFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDE0E0E0DFDFDFE4E4E4
              E8E8E8E8E8E8F1F1F1F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFF4F4F4EFEFEFEFEF
              EF00DDDDDDDCDCDCE7E7E7F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFDCDCDCC2C2C2E4E4E4FFFFFFFFFFFFF6F6F6E7E7E7ECECECF0F0F0F7F7
              F7F9F9F9F6F6F6EBEBEBE6E6E6F4F4F4FBFBFBF7F7F7F0F0F0EBEBEBF0F0F0F9
              F9F9F6F6F6F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDCDCDCCDCDCD
              ECECECF7F7F7F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1
              E1D6D6D6DFDFDFF1F1F1ECECECEDEDEDEDEDEDF1F1F1FAFAFAFFFFFFFFFFFFFC
              FCFCF8F8F8F7F7F7F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2F2F2
              E7E7E7E8E8E8E7E7E7D4D4D4EBEBEBF6F6F6F2F2F2F9F9F9EDEDEDEAEAEAEDED
              EDF9F9F9FDFDFDFAFAFAF6F6F6ECECECF6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAE7E7E7E8E8E8EDEDEDF2F2F2
              EFEFEFEDEDEDF3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1F8F8
              F800DDDDDDE9E9E9F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EAEAEAC6C6C6DEDEDEFDFDFDFFFFFFF9F9F9F6F6F6E6E6E6EAEAEAEFEFEFF2F2
              F2F6F6F6F0F0F0E8E8E8F3F3F3FDFDFDFCFCFCF8F8F8F3F3F3ECECECF0F0F0F9
              F9F9F6F6F6F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFCFCFCEAEAEACDCDCDD9D9D9
              F3F3F3F3F3F3F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6D6D6D6C9C9
              C9C1C1C1DBDBDBFCFCFCF2F2F2E5E5E5F0F0F0F7F7F7F8F8F8FCFCFCFCFCFCFA
              FAFAF7F7F7F1F1F1F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2F2F2
              EEEEEEEBEBEBDCDCDCD6D6D6F1F1F1F4F4F4F4F4F4F8F8F8EEEEEEEDEDEDF0F0
              F0F9F9F9FBFBFBFAFAFAF8F8F8F6F6F6EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAEAEAD9D9D9DADADAE4E4E4EBEBEBEEEEEEEEEEEE
              E7E7E7E9E9E9FAFAFAFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8ECECECDEDEDEE8E8
              E800EFEFEFF9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              CDCDCDD7D7D7FBFBFBFFFFFFFAFAFAF9F9F9F9F9F9E0E0E0E3E3E3F3F3F3F4F4
              F4F6F6F6F2F2F2ECECECF1F1F1FFFFFFFFFFFFFAFAFAF6F6F6EEEEEEEEEEEEF6
              F6F6F3F3F3F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFEBEBEBD5D5D5CDCDCDEBEBEB
              F6F6F6F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDBDBDBDADADAD3D3
              D3D0D0D0DDDDDDE8E8E8FAFAFAE5E5E5EEEEEEFAFAFAFDFDFDFBFBFBFBFBFBFA
              FAFAF6F6F6F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFFFFFF
              EEEEEED8D8D8CDCDCDE0E0E0F3F3F3F3F3F3F6F6F6F9F9F9F3F3F3EFEFEFF0F0
              F0F7F7F7FDFDFDFDFDFDFAFAFAF8F8F8F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDFDFDFCACACACACACADADADAEAEAEAF2F2F2F3F3F3F2F2F2
              EDEDEDFAFAFAFFFFFFFFFFFFFEFEFEF9F9F9F0F0F0E7E7E7DBDBDBD9D9D9E5E5
              E500F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7
              D1D1D1F6F6F6FFFFFFFCFCFCF2F2F2F8F8F8EBEBEBD4D4D4E5E5E5F4F4F4FBFB
              FBF9F9F9F6F6F6ECECECEEEEEEFFFFFFFFFFFFFCFCFCF9F9F9F1F1F1ECECECF2
              F2F2F6F6F6F9F9F9FDFDFDFFFFFFFBFBFBE3E3E3CBCBCBCBCBCBE5E5E5FAFAFA
              F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E3E3E3DFDFDFE4E4E4D8D8
              D8E5E5E5FBFBFBFEFEFEF6F6F6EDEDEDE8E8E8F6F6F6FFFFFFFFFFFFFEFEFEF9
              F9F9F6F6F6F6F6F6FCFCFCFEFEFEFFFFFFFEFEFEFCFCFCFCFCFCFFFFFFF2F2F2
              CACACAC0C0C0D6D6D6F0F0F0F3F3F3F4F4F4FAFAFAFDFDFDF9F9F9F2F2F2F6F6
              F6F9F9F9FEFEFEFEFEFEFAFAFAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
              FCFCF7F7F7DEDEDEBFBFBFC4C4C4DCDCDCF1F1F1FCFCFCFCFCFCF9F9F9F9F9F9
              FAFAFAFFFFFFFFFFFFFCFCFCF1F1F1EBEBEBE6E6E6E0E0E0DDDDDDE4E4E4E7E7
              E700FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C7C7C7
              E6E6E6FFFFFFFDFDFDF2F2F2FAFAFAFDFDFDD9D9D9D6D6D6EFEFEFF7F7F7FFFF
              FFFBFBFBF4F4F4EEEEEEF1F1F1FFFFFFFFFFFFFFFFFFFAFAFAF6F6F6EDEDEDEF
              EFEFF6F6F6F8F8F8FAFAFAF6F6F6DADADAC7C7C7CFCFCFE7E7E7F9F9F9F8F8F8
              F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAE7E7E7E5E5E5DCDCDCDFDF
              DFFAFAFAFFFFFFFFFFFFFCFCFCFAFAFAF4F4F4F4F4F4FFFFFFFFFFFFFFFFFFFB
              FBFBF7F7F7F7F7F7FAFAFAFCFCFCFFFFFFFEFEFEFDFDFDFEFEFEEEEEEEC8C8C8
              B6B6B6D2D2D2F0F0F0F7F7F7F9F9F9F9F9F9F9F9F9FCFCFCFBFBFBF6F6F6F6F6
              F6F9F9F9FDFDFDFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
              E8E8D9D9D9CACACAC8C8C8DDDDDDF1F1F1FFFFFFFBFBFBF9F9F9F9F9F9F7F7F7
              F0F0F0F3F3F3F7F7F7F4F4F4EEEEEEEEEEEEF2F2F2F2F2F2F6F6F6FAFAFAFCFC
              FC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7CACACADADADA
              FBFBFBFEFEFEEBEBEBEDEDEDFFFFFFE4E4E4C7C7C7E3E3E3F7F7F7F7F7F7FBFB
              FBFEFEFEF8F8F8F6F6F6F0F0F0FCFCFCFFFFFFFFFFFFFCFCFCF6F6F6EFEFEFEF
              EFEFF6F6F6F3F3F3F3F3F3F4F4F4F1F1F1EDEDEDF6F6F6FAFAFAFAFAFAFAFAFA
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBEAEAEADFDFDFE1E1E1F3F3
              F3FCFCFCF3F3F3F9F9F9FBFBFBF0F0F0F3F3F3F7F7F7F8F8F8FFFFFFFFFFFFFB
              FBFBF4F4F4F4F4F4FAFAFAFAFAFAFDFDFDFEFEFEF3F3F3EEEEEEDADADAC8C8C8
              DADADAF0F0F0F7F7F7F7F7F7F9F9F9FAFAFAFCFCFCFFFFFFFFFFFFFAFAFAFAFA
              FAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D4
              D4D4D0D0D0D5D5D5DDDDDDECECECFAFAFAF7F7F7F0F0F0F6F6F6F6F6F6F0F0F0
              EBEBEBF3F3F3FBFBFBF8F8F8F6F6F6F7F7F7F7F7F7F6F6F6FCFCFCFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6D0D0D0EEEEEE
              FAFAFAF1F1F1E9E9E9FFFFFFFDFDFDC5C5C5D1D1D1F1F1F1F7F7F7F7F7F7F8F8
              F8FFFFFFFFFFFFFAFAFAF1F1F1F9F9F9FFFFFFFFFFFFFDFDFDF6F6F6F6F6F6F1
              F1F1F0F0F0F6F6F6F9F9F9F6F6F6FBFBFBFFFFFFFCFCFCFCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3EDEDEDE7E7E7DFDFDFF1F1F1F6F6
              F6F1F1F1F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFDFDFDF2F2F2FFFFFFFFFFFFF9
              F9F9F0F0F0F0F0F0F3F3F3F6F6F6FBFBFBFAFAFAF2F2F2DEDEDED6D6D6E6E6E6
              F3F3F3F9F9F9FCFCFCFAFAFAF7F7F7F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFBFB
              FBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFDFDFC9
              C9C9D6D6D6E1E1E1EEEEEEFAFAFAFDFDFDF9F9F9FEFEFEFEFEFEF7F7F7EEEEEE
              F0F0F0F9F9F9F9F9F9F4F4F4F7F7F7F3F3F3F0F0F0EEEEEEF3F3F3F8F8F8FEFE
              FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1D0D0D0E5E5E5F7F7F7
              F3F3F3EBEBEBFBFBFBFFFFFFDADADAC6C6C6E8E8E8F9F9F9F7F7F7F4F4F4F8F8
              F8FFFFFFFFFFFFFFFFFFF4F4F4F0F0F0FFFFFFFFFFFFFFFFFFFAFAFAFAFAFAF8
              F8F8F4F4F4FBFBFBFAFAFAFAFAFAFAFAFAF6F6F6F8F8F8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEE5E5E5E1E1E1EBEBEBF7F7F7F0F0
              F0F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8FFFFFFFFFFFFF2
              F2F2E8E8E8EBEBEBEEEEEEF1F1F1F2F2F2F6F6F6F8F8F8F7F7F7F9F9F9FCFCFC
              FDFDFDFCFCFCFCFCFCFAFAFAFAFAFAFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0C9C9C9CA
              CACADCDCDCEEEEEEFCFCFCFFFFFFFDFDFDFFFFFFFFFFFFF3F3F3EEEEEEEEEEEE
              F1F1F1F3F3F3EEEEEEF1F1F1F7F7F7F3F3F3F2F2F2F3F3F3F6F6F6F7F7F7F7F7
              F700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8D2D2D2DEDEDEF6F6F6F6F6F6
              F2F2F2F7F7F7FFFFFFFAFAFAC1C1C1D7D7D7F2F2F2FAFAFAF9F9F9F9F9F9FCFC
              FCFFFFFFFFFFFFFFFFFFF9F9F9F0F0F0FFFFFFFFFFFFFEFEFEF9F9F9F9F9F9FA
              FAFAFBFBFBFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9E8E8E8DFDFDFDEDEDEEBEBEBF9F9F9F7F7F7F2F2
              F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E6
              E6E6E7E7E7F2F2F2F3F3F3EFEFEFEFEFEFF1F1F1F4F4F4FBFBFBFFFFFFFDFDFD
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5C1C1C1C2C2C2D7
              D7D7EBEBEBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0EAEAEAF3F3F3F8F8F8
              FCFCFCF9F9F9F6F6F6F6F6F6F7F7F7F8F8F8F7F7F7F6F6F6F3F3F3F6F6F6F6F6
              F600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8D9D9D9EEEEEEF9F9F9F7F7F7
              FCFCFCFFFFFFFFFFFFDCDCDCC5C5C5EBEBEBF8F8F8F8F8F8F9F9F9F9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFFFFEFEFEF9F9F9F7F7F7F9
              F9F9FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEDFDFDFD4D4D4DEDEDEF1F1F1FDFDFDFFFFFFFFFFFFFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFBFBFBEAEAEAE8
              E8E8F8F8F8FFFFFFFDFDFDF9F9F9F6F6F6F0F0F0F0F0F0F2F2F2F6F6F6F9F9F9
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C3C3C3BFBFBFD7D7D7EB
              EBEBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEBEBEBF7F7F7FFFFFFFFFFFF
              FFFFFFFFFFFFFBFBFBF2F2F2F9F9F9FAFAFAF9F9F9F6F6F6F3F3F3F6F6F6FAFA
              FA00FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7CFCFCFE5E5E5F1F1F1F7F7F7FAFAFA
              FFFFFFFFFFFFFFFFFFC7C7C7D6D6D6FAFAFAFAFAFAF8F8F8FAFAFAFCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFDFDFDE9E9E9F6F6F6FFFFFFFAFAFAF1F1F1F2F2F2F4
              F4F4F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              FFFFFFF6F6F6C8C8C8C0C0C0D8D8D8F0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFBFB
              FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE3E3E3D6D6D6DBDBDBE4E4E4F8
              F8F8FFFFFFFFFFFFFCFCFCFDFDFDFDFDFDFAFAFAF7F7F7F2F2F2F1F1F1F1F1F1
              F4F4F4F6F6F6F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4
              F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCC1C1C1C4C4C4DDDDDDEFEFEFF6
              F6F6FCFCFCF8F8F8FAFAFAFEFEFEFCFCFCF9F9F9F2F2F2FFFFFFFFFFFFFFFFFF
              FFFFFFFCFCFCF6F6F6ECECECF6F6F6FBFBFBF7F7F7F3F3F3F6F6F6F9F9F9FEFE
              FE00FFFFFFFFFFFFFFFFFFF4F4F4CDCDCDCCCCCCE5E5E5EDEDEDF1F1F1F7F7F7
              FFFFFFFFFFFFE1E1E1B9B9B9E7E7E7FAFAFAF9F9F9FCFCFCFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF2F2F2E4E4E4F0F0F0F3F3F3E5E5E5E1E1E1E8E8E8ED
              EDEDF6F6F6FAFAFAFAFAFAFAFAFAFCFCFCFAFAFAFCFCFCFAFAFAF7F7F7F3F3F3
              EFEFEFDFDFDFC6C6C6DADADAF4F4F4F9F9F9F9F9F9F6F6F6F6F6F6FAFAFAF0F0
              F0F6F6F6FFFFFFFFFFFFFFFFFFFBFBFBDCDCDCC0C0C0C1C1C1CCCCCCD8D8D8EA
              EAEAFAFAFAFEFEFEFBFBFBFEFEFEFCFCFCFAFAFAFCFCFCFAFAFAF7F7F7F1F1F1
              F1F1F1F2F2F2F2F2F2F0F0F0EFEFEFECECECF0F0F0F3F3F3F8F8F8FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFEEEEEED4D4D4C2C2C2CBCBCBEAEAEAF9F9F9F7F7F7F9
              F9F9F7F7F7F0F0F0F2F2F2F1F1F1F4F4F4FBFBFBFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F3F0F0F0E5E5E5EEEEEEFCFCFCFAFAFAF6F6F6F7F7F7FCFCFCFFFF
              FF00FFFFFFFFFFFFFFFFFFD4D4D4C1C1C1D0D0D0E1E1E1E4E4E4E4E4E4EAEAEA
              F9F9F9FCFCFCB8B8B8C3C3C3F9F9F9FDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9EFEFEFEAEAEAE3E3E3DBDBDBDEDEDEE6E6E6EA
              EAEAF1F1F1F7F7F7F9F9F9F7F7F7F6F6F6F3F3F3EEEEEEEAEAEAE7E7E7E5E5E5
              E1E1E1DFDFDFE8E8E8F3F3F3F9F9F9F2F2F2F0F0F0ECECECEBEBEBEEEEEEEFEF
              EFFDFDFDFFFFFFFFFFFFFFFFFFE7E7E7C9C9C9CCCCCCECECECF7F7F7F3F3F3F2
              F2F2EEEEEEF3F3F3FFFFFFFFFFFFFEFEFEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFDF0F0F0E1E1E1CFCFCFC6C6C6D1D1D1EBEBEBFBFBFBF7F7F7F2F2F2EE
              EEEEEBEBEBECECECEDEDEDEBEBEBF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAEDEDEDEBEBEBDEDEDEEFEFEFFDFDFDFAFAFAF4F4F4F4F4F4FCFCFCFFFF
              FF00FFFFFFFFFFFFEEEEEEC0C0C0C7C7C7DFDFDFE9E9E9ECECECEAEAEAE9E9E9
              EEEEEEDADADAB6B6B6E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFAFAFAE1E1E1EBEBEBF9F9F9EAEAEAF2F2F2F9F9F9FCFCFCF3F3F3EA
              EAEAE5E5E5E6E6E6EEEEEEF1F1F1F1F1F1F0F0F0E9E9E9E6E6E6E5E5E5E5E5E5
              EAEAEAEFEFEFF7F7F7F4F4F4F0F0F0EBEBEBEBEBEBEDEDEDEDEDEDF8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFF8F8F8E3E3E3E3E3E3FAFAFAFFFFFFFFFFFFFFFFFFF8
              F8F8F0F0F0EEEEEEF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1EEEEEEEAEAEAE8E8
              E8E5E5E5EBEBEBDBDBDBD1D1D1D3D3D3DCDCDCEAEAEAF4F4F4F7F7F7F3F3F3EE
              EEEEF0F0F0F0F0F0F1F1F1F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
              F0F0F0EBEBEBE5E5E5E1E1E1F7F7F7FEFEFEF9F9F9F7F7F7F8F8F8FFFFFFFFFF
              FF00FFFFFFFFFFFFDBDBDBB9B9B9DBDBDBF0F0F0F7F7F7F3F3F3F1F1F1FAFAFA
              FBFBFBD1D1D1D8D8D8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFE5E5E5DFDFDFF8F8F8FEFEFEE8E8E8E6E6E6FBFBFBFFFFFFFDFDFDFAFAFAF6
              F6F6F0F0F0EDEDEDEDEDEDEFEFEFECECECECECECEDEDEDF0F0F0F3F3F3F2F2F2
              F1F1F1EDEDEDEAEAEAE6E6E6E8E8E8ECECECF1F1F1F3F3F3F9F9F9FFFFFFFFFF
              FFFCFCFCEDEDEDDFDFDFD4D4D4D7D7D7E9E9E9F3F3F3F3F3F3EEEEEEEAEAEAE9
              E9E9E9E9E9E9E9E9E9E9E9E6E6E6E7E7E7EAEAEAF7F7F7FCFCFCFBFBFBF4F4F4
              F2F2F2F9F9F9F0F0F0ECECECEFEFEFEDEDEDEBEBEBF0F0F0F7F7F7F8F8F8FDFD
              FDFFFFFFFFFFFFE8E8E8E1E1E1E1E1E1E4E4E4EBEBEBF1F1F1FAFAFAF3F3F3F7
              F7F7F9F9F9F4F4F4F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E8E8
              EBEBEBECECECE8E8E8EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFDADADABFBFBFE8E8E8F6F6F6F2F2F2F0F0F0F9F9F9FFFFFF
              EDEDEDDADADAF3F3F3F9F9F9F4F4F4F6F6F6FCFCFCFFFFFFFFFFFFFFFFFFF9F9
              F9FCFCFCFFFFFFF0F0F0D4D4D4C7C7C7CFCFCFDEDEDEECECECF3F3F3FBFBFBF8
              F8F8F9F9F9FCFCFCFCFCFCFBFBFBF1F1F1E8E8E8E7E7E7EAEAEAEBEBEBE6E6E6
              E6E6E6E5E5E5E8E8E8ECECECF3F3F3F3F3F3F6F6F6F9F9F9FFFFFFFFFFFFEDED
              EDD2D2D2D1D1D1D9D9D9E0E0E0E8E8E8EEEEEEEDEDEDEEEEEEF0F0F0F3F3F3F1
              F1F1EEEEEEF1F1F1F0F0F0EDEDEDEDEDEDF1F1F1F3F3F3F2F2F2FAFAFAFFFFFF
              FFFFFFFAFAFADFDFDFD7D7D7D1D1D1CDCDCDC7C7C7C0C0C0BDBDBDB9B9B9B8B8
              B8C0C0C0D1D1D1EFEFEFF2F2F2EEEEEEEDEDEDF7F7F7F4F4F4F3F3F3F4F4F4FA
              FAFAFFFFFFF6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DEDEDEE1E1E1
              EEEEEEF6F6F6F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFCFCFCDDDDDDC2C2C2E3E3E3EBEBEBE9E9E9F1F1F1FEFEFEF7F7F7
              D9D9D9EAEAEAF8F8F8F6F6F6F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6
              F6EAEAEAC7C7C7AAAAAAB7B7B7CBCBCBD0D0D0CFCFCFDCDCDCF8F8F8F7F7F7F1
              F1F1F2F2F2F8F8F8FFFFFFFEFEFEF0F0F0E8E8E8E8E8E8EBEBEBE6E6E6E3E3E3
              EAEAEAEEEEEEF4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF7F7F7F7F7F7FAFAFAF9F9F9FAFAFAF9F9F9F0F0F0F0F0F0F4F4F4F9F9F9F6
              F6F6F7F7F7FAFAFAF6F6F6F6F6F6FEFEFEFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
              E3E3E3BDBDBDB6B6B6BDBDBDC1C1C1C1C1C1C1C1C1C6C6C6CBCBCBD2D2D2D3D3
              D3CFCFCFCBCBCBD2D2D2EBEBEBF4F4F4F2F2F2F3F3F3FDFDFDF2F2F2F1F1F1F6
              F6F6FFFFFFF7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDEDEDEEBEBEB
              F7F7F7FAFAFAF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
              F900FFFFFFFFFFFFEBEBEBCACACADFDFDFEEEEEEF7F7F7FFFFFFF7F7F7DEDEDE
              E1E1E1F7F7F7F7F7F7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0D7D7
              D7B3B3B3AEAEAECBCBCBE8E8E8ECECECE5E5E5E1E1E1E1E1E1E4E4E4EFEFEFEE
              EEEEE9E9E9EBEBEBFFFFFFFFFFFFEDEDEDE3E3E3EAEAEAF1F1F1E8E8E8ECECEC
              F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFBFBFBF6F6F6FCFCFCFFFFFFFFFFFFF3F3F3F6F6F6F7F7F7F1F1F1F1
              F1F1F7F7F7FCFCFCF9F9F9FFFFFFFFFFFFFFFFFFFAFAFAFEFEFEEBEBEBD4D4D4
              C5C5C5C0C0C0D5D5D5E0E0E0DFDFDFE4E4E4EDEDEDF1F1F1F2F2F2F4F4F4F4F4
              F4F4F4F4F6F6F6EEEEEEF0F0F0F1F1F1F1F1F1F2F2F2F4F4F4FEFEFEF1F1F1F4
              F4F4FBFBFBF9F9F9F8F8F8FEFEFEFFFFFFFFFFFFF6F6F6E4E4E4E8E8E8FCFCFC
              FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
              EE00FFFFFFFEFEFEF3F3F3E0E0E0DEDEDEFBFBFBFFFFFFF8F8F8E7E7E7E7E7E7
              F9F9F9FCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCB9B9
              B9B6B6B6D6D6D6F1F1F1F8F8F8F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFEFEFEF1
              F1F1E8E8E8EBEBEBFFFFFFFFFFFFF0F0F0E3E3E3EEEEEEF3F3F3EDEDEDF4F4F4
              FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFBFBFBECECECF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEFEFEFF1
              F1F1F2F2F2F2F2F2F4F4F4FFFFFFFFFFFFFDFDFDF2F2F2F3F3F3E4E4E4E5E5E5
              DADADADCDCDCF3F3F3EFEFEFEBEBEBF8F8F8FBFBFBFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFBFBFBEDEDEDEDEDEDF0F0F0F0F0F0F8F8F8FAFAFAF3
              F3F3F4F4F4F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFF2F2F2E5E5E5EBEBEBF9F9F9
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDECEC
              EC00FFFFFFFAFAFAF6F6F6F3F3F3EBEBEBF3F3F3F9F9F9F2F2F2F0F0F0F4F4F4
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DBDBDBC4C4C4BEBE
              BEDADADAF0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
              F4F4E5E5E5EFEFEFFFFFFFFFFFFFEDEDEDDFDFDFF0F0F0F3F3F3EEEEEEFAFAFA
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3
              F3E5E5E5DDDDDDEFEFEFFFFFFFFFFFFFFDFDFDF3F3F3F9F9F9F3F3F3DFDFDFEE
              EEEEF0F0F0F0F0F0F4F4F4FFFFFFFFFFFFFDFDFDFEFEFEF7F7F7E8E8E8E8E8E8
              D6D6D6E5E5E5F4F4F4EAEAEAF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDEFEFEFE0E0E0DFDFDFF1F1F1F3F3F3F1F1F1ECECECF9F9F9F6
              F6F6F3F3F3FAFAFAFAFAFAFAFAFAFFFFFFFDFDFDF9F9F9F8F8F8FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E8
              E800FFFFFFEEEEEEEBEBEBEFEFEFF2F2F2ECECECF8F8F8FEFEFEF2F2F2EDEDED
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D9D9D9CCCCCCD0D0D0D9D9
              D9E8E8E8F6F6F6FFFFFFFFFFFFF6F6F6F1F1F1F9F9F9FFFFFFFFFFFFFFFFFFEC
              ECECE1E1E1FCFCFCFFFFFFFFFFFFE8E8E8DFDFDFF2F2F2F3F3F3F2F2F2FBFBFB
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCCCCB7B7
              B7B6B6B6C8C8C8E3E3E3EFEFEFF1F1F1EFEFEFEFEFEFF4F4F4EBEBEBD8D8D8F0
              F0F0F4F4F4F4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEEBEBEBE8E8E8DEDEDE
              D8D8D8EDEDEDF0F0F0F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF1F1F1F8F8F8F8F8F8F1F1F1F0F0F0F8
              F8F8F2F2F2F7F7F7F3F3F3F3F3F3F8F8F8F9F9F9FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9FBFBFBFCFCFCF9F9F9F8F8F8F8F8F8F3F3F3E4E4E4E1E1
              E100EAEAEAE5E5E5DDDDDDE1E1E1EAEAEAEAEAEAF8F8F8FFFFFFDCDCDCD9D9D9
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DBDBDBD5D5D5E0E0E0DEDEDEDEDE
              DEF0F0F0FFFFFFFDFDFDECECECECECECF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFE4
              E4E4E3E3E3FFFFFFFFFFFFFCFCFCE3E3E3DDDDDDF3F3F3F6F6F6F6F6F6FEFEFE
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCBFBFBFBEBEBEB9B9
              B9C5C5C5DBDBDBE9E9E9EDEDEDEDEDEDEFEFEFF6F6F6F3F3F3DFDFDFD9D9D9F1
              F1F1F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E8E8E8E8E8E8DADADA
              E1E1E1F2F2F2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFB
              FBFFFFFFFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF8F8F8F0F0F0F7
              F7F7FAFAFAF3F3F3F3F3F3EFEFEFEFEFEFF1F1F1F6F6F6FAFAFAFDFDFDFDFDFD
              FFFFFFFFFFFFFEFEFEF9F9F9EEEEEEE8E8E8E9E9E9EBEBEBE8E8E8DFDFDFE4E4
              E400E6E6E6EFEFEFEAEAEADFDFDFE1E1E1E8E8E8F7F7F7F0F0F0C2C2C2D1D1D1
              F7F7F7FFFFFFFFFFFFFFFFFFFBFBFBE5E5E5DCDCDCEEEEEEEDEDEDDDDDDDE7E7
              E7FCFCFCFFFFFFEEEEEEEFEFEFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF
              DFDFEDEDEDFFFFFFFCFCFCF3F3F3DADADAE3E3E3FAFAFAF6F6F6F6F6F6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D1D1D1D3D3D3E4E4E4DBDB
              DBE1E1E1F7F7F7F7F7F7F2F2F2F0F0F0F0F0F0F1F1F1E6E6E6D9D9D9E7E7E7F7
              F7F7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAE7E7E7DCDCDC
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFFFFFFFFFF1F1F1EDED
              EDF8F8F8F6F6F6F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F0
              F0F0FFFFFFFCFCFCF4F4F4F1F1F1F2F2F2F3F3F3F7F7F7FCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEF3F3F3EAEAEAE6E6E6E6E6E6E6E6E6E0E0E0DEDEDEE9E9
              E900F0F0F0F1F1F1F3F3F3F0F0F0EAEAEAE8E8E8EAEAEAD0D0D0B3B3B3D9D9D9
              FEFEFEFFFFFFFFFFFFFFFFFFF6F6F6E1E1E1EFEFEFF9F9F9E8E8E8E3E3E3F2F2
              F2FFFFFFF6F6F6EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE6
              E6E6EEEEEEFCFCFCF8F8F8E8E8E8D9D9D9EAEAEAF9F9F9F3F3F3F9F9F9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DBDBDBE3E3E3E7E7E7F2F2F2E5E5
              E5E7E7E7FBFBFBF4F4F4F4F4F4F2F2F2F3F3F3ECECECDFDFDFE0E0E0F0F0F0F7
              F7F7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EBEBEBE7E7E7E5E5E5EDEDED
              FFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDE6E6
              E6F2F2F2F3F3F3F3F3F3F3F3F3F2F2F2F6F6F6FBFBFBFFFFFFFFFFFFFEFEFEFA
              FAFAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2F1F1F1F7F7
              F700F3F3F3F7F7F7F3F3F3EFEFEFE9E9E9E4E4E4D9D9D9B8B8B8BFBFBFEFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFE6E6E6E7E7E7FAFAFAF3F3F3E7E7E7E9E9E9F6F6
              F6F9F9F9F2F2F2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DE
              DEDEEAEAEAF9F9F9F0F0F0DFDFDFDFDFDFEEEEEEF9F9F9F2F2F2FAFAFAFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE4E4E4EDEDEDF0F0F0FAFAFAE5E5
              E5E9E9E9FBFBFBF7F7F7F8F8F8F8F8F8F7F7F7F3F3F3EEEEEEF2F2F2F7F7F7F7
              F7F7FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEFEFEFE7E7E7E3E3E3EBEBEBFDFDFD
              FFFFFFFDFDFDF9F9F9F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFCFCFCEDEDEDE4E4
              E4EDEDEDF7F7F7F6F6F6F1F1F1F2F2F2F7F7F7FFFFFFFFFFFFFAFAFADFDFDFEE
              EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F1F1F1
              F9F9F9F9F9F9F7F7F7F9F9F9FCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFAFAFAFAFA
              FA00F9F9F9FBFBFBF1F1F1ECECECE4E4E4DDDDDDC9C9C9C1C1C1E3E3E3FFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9DDDDDDF1F1F1FCFCFCF3F3F3F1F1F1F4F4F4F8F8
              F8F6F6F6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDC
              DCDCEFEFEFF2F2F2E8E8E8E1E1E1E8E8E8F6F6F6F7F7F7F3F3F3FDFDFDFFFFFF
              FFFFFFFDFDFDFCFCFCFFFFFFFBFBFBE5E5E5E4E4E4E8E8E8F8F8F8F7F7F7DFDF
              DFF3F3F3FDFDFDF9F9F9F9F9F9FAFAFAF9F9F9F7F7F7F7F7F7F8F8F8FCFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5DFDFDFE3E3E3F6F6F6FFFFFF
              FCFCFCFAFAFAFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE8E8E8DDDD
              DDEDEDEDFAFAFAF4F4F4F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F6
              F6F6E6E6E6F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E8E8E8E3E3E3E3E3E3
              DEDEDED9D9D9D8D8D8E0E0E0ECECECEFEFEFF1F1F1FBFBFBFDFDFDFBFBFBFDFD
              FD00FFFFFFFCFCFCEAEAEAE0E0E0D9D9D9DBDBDBDDDDDDEDEDEDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE6E6E6DFDFDFF8F8F8F9F9F9F2F2F2F3F3F3FAFAFAFCFC
              FCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1E3E3E3DF
              DFDFEAEAEAE5E5E5E5E5E5E7E7E7EEEEEEF7F7F7F2F2F2F3F3F3FBFBFBFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAEAEAEAF2F2F2FDFDFDE8E8E8E4E4
              E4FAFAFAFAFAFAF8F8F8F7F7F7F6F6F6F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAFAFAE8E8E8D8D8D8D7D7D7E6E6E6F7F7F7F7F7F7
              F4F4F4FEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E1E1E1DADA
              DAF3F3F3FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEEEEEEF1
              F1F1FFFFFFFFFFFFFDFDFDF0F0F0E9E9E9DADADACFCFCFC4C4C4BEBEBEBCBCBC
              BDBDBDC1C1C1C9C9C9CFCFCFCBCBCBC9C9C9D2D2D2DDDDDDEBEBEBFBFBFBF3F3
              F300FFFFFFF2F2F2DEDEDEDCDCDCE4E4E4EDEDEDFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7DCDCDCE7E7E7F3F3F3F1F1F1F3F3F3F7F7F7FCFCFCFAFA
              FAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E1E1E1DEDEDEE1
              E1E1E3E3E3E8E8E8EBEBEBEBEBEBF0F0F0F0F0F0EFEFEFF7F7F7FEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FDFDFDFFFFFFE7E7E7D8D8D8EAEA
              EAFAFAFAF9F9F9F7F7F7F9F9F9FDFDFDF7F7F7F7F7F7FCFCFCFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFAFAFAE8E8E8D1D1D1CCCCCCDEDEDEF6F6F6F8F8F8F2F2F2
              F1F1F1FBFBFBFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8D9D9D9E5E5
              E5FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEEEEEED8D8D8CBCBCBDC
              DCDCFAFAFAF3F3F3DEDEDED9D9D9D6D6D6D5D5D5D9D9D9D4D4D4D7D7D7E5E5E5
              F1F1F1F8F8F8F8F8F8F1F1F1EFEFEFF1F1F1F2F2F2EBEBEBE4E4E4E9E9E9EFEF
              EF00F7F7F7DCDCDCD2D2D2E1E1E1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEAEAEAD4D4D4DFDFDFE6E6E6E9E9E9F1F1F1F9F9F9FDFDFDFCFC
              FCFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E9E9E9E5E5E5E7E7E7DF
              DFDFE3E3E3EAEAEAE9E9E9EDEDEDF1F1F1F2F2F2F7F7F7FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC3C3C3DCDCDCF4F4
              F4F3F3F3F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFF3F3F3DCDCDCC7C7C7C2C2C2DADADAF8F8F8FDFDFDF8F8F8F8F8F8
              F6F6F6FBFBFBFCFCFCF9F9F9FFFFFFFFFFFFFFFFFFF0F0F0D6D6D6DEDEDEF9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF0F0F0D9D9D9D0D0D0E8E8E8FA
              FAFAF2F2F2E5E5E5E7E7E7ECECECF0F0F0F9F9F9F7F7F7ECECECF0F0F0FFFFFF
              FFFFFFFAFAFAF6F6F6F6F6F6F6F6F6F9F9F9F8F8F8F9F9F9FDFDFDF7F7F7EAEA
              EA00E7E7E7CDCDCDDFDFDFF4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF6F6F6D6D6D6CDCDCDDDDDDDE6E6E6ECECECF3F3F3F1F1F1F7F7F7FAFA
              FAF7F7F7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFF2F2F2EDEDEDDFDFDFDCDCDCDD
              DDDDE7E7E7EBEBEBEAEAEAEFEFEFF1F1F1F3F3F3FBFBFBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFD0D0D0C5C5C5F2F2F2FEFE
              FEFAFAFAFAFAFAF7F7F7F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEDEDEDD3D3D3C2C2C2C4C4C4DBDBDBFBFBFBFFFFFFFFFFFFFEFEFEFAFAFA
              FAFAFAFEFEFEFEFEFEFBFBFBFBFBFBF8F8F8F1F1F1DFDFDFDCDCDCF1F1F1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE9E9E9DCDCDCD7D7D7ECECECFFFFFFFF
              FFFFFBFBFBF3F3F3F3F3F3F6F6F6FBFBFBFDFDFDF6F6F6EEEEEEF4F4F4FCFCFC
              EDEDEDEEEEEEF3F3F3FAFAFAFEFEFEFFFFFFF4F4F4EFEFEFF6F6F6FAFAFAF4F4
              F400D1D1D1D5D5D5F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F9F9F9DFDFDFCDCDCDD9D9D9E5E5E5EDEDEDF1F1F1EFEFEFE8E8E8EAEAEAECEC
              ECF2F2F2F6F6F6FFFFFFFFFFFFF2F2F2F9F9F9F1F1F1DEDEDED4D4D4DADADAE1
              E1E1ECECECECECECEFEFEFF1F1F1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFCFCFCF7F7F7F3F3F3F4F4F4EEEEEECACACACDCDCDEEEEEEFBFB
              FBFCFCFCF9F9F9FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
              E7E7C8C8C8C1C1C1CDCDCDE8E8E8FAFAFAFFFFFFFFFFFFFFFFFFF9F9F9FCFCFC
              FFFFFFFFFFFFFFFFFFFDFDFDF2F2F2EEEEEEE7E7E7E4E4E4F3F3F3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF1F1F1D7D7D7CFCFCFD3D3D3E4E4E4F7F7F7FFFFFFFF
              FFFFFDFDFDFFFFFFEEEEEEF0F0F0F8F8F8FDFDFDF4F4F4EFEFEFEBEBEBEAEAEA
              ECECECF4F4F4F9F9F9FFFFFFFFFFFFFFFFFFF3F3F3F4F4F4F9F9F9FAFAFAF8F8
              F800D2D2D2ECECECFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              E1E1E1D4D4D4E1E1E1F3F3F3F7F7F7F4F4F4EDEDEDE8E8E8EAEAEAEEEEEEF2F2
              F2F6F6F6F4F4F4FAFAFAEAEAEAE0E0E0E3E3E3D6D6D6D1D1D1D8D8D8E4E4E4EB
              EBEBEEEEEEEBEBEBEFEFEFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAF7F7F7EFEFEFE8E8E8E1E1E1C7C7C7CACACAEAEAEAFBFB
              FBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAC3
              C3C3C6C6C6DDDDDDF3F3F3FCFCFCFAFAFAFDFDFDF9F9F9F0F0F0F9F9F9FFFFFF
              FFFFFFFFFFFFFFFFFFFDFDFDF1F1F1F1F1F1F1F1F1F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE3E3E3D3D3D3D4D4D4DBDBDBE8E8E8F3F3F3F8F8F8FFFFFFFF
              FFFFFFFFFFFFFFFFE7E7E7EAEAEAF3F3F3FCFCFCF7F7F7EFEFEFEBEBEBEDEDED
              F4F4F4F7F7F7FAFAFAFFFFFFFFFFFFFCFCFCEBEBEBF4F4F4FBFBFBFEFEFEFCFC
              FC00E9E9E9FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D3D3D3
              BFBFBFC6C6C6DADADAEEEEEEFFFFFFFCFCFCF0F0F0F6F6F6F3F3F3F7F7F7FAFA
              FAFAFAFAF8F8F8F3F3F3EEEEEEEAEAEAE5E5E5DBDBDBDFDFDFE4E4E4EBEBEBEC
              ECECECECECECECECF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEF6F6F6F4F4F4EDEDEDE9E9E9DBDBDBCACACAD9D9D9F2F2F2FBFB
              FBFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2D1D1D1C2C2C2CD
              CDCDEAEAEAFCFCFCFDFDFDF7F7F7F6F6F6FBFBFBF6F6F6F7F7F7FEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE8E8E8D3D3D3D1D1D1EAEAEAF1F1F1F9F9F9F9F9F9FCFCFCFFFFFFFF
              FFFFFFFFFFFCFCFCE1E1E1E6E6E6F3F3F3FCFCFCF7F7F7F2F2F2EEEEEEEEEEEE
              F6F6F6F4F4F4FAFAFAFFFFFFFFFFFFF2F2F2E7E7E7F3F3F3FAFAFAFFFFFFFEFE
              FE00F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BFBFBFB1B1B1
              C0C0C0D4D4D4DADADAD5D5D5DCDCDCFAFAFAF9F9F9EFEFEFFAFAFAFFFFFFFFFF
              FFFFFFFFFDFDFDF6F6F6FAFAFAF2F2F2DFDFDFDCDCDCE3E3E3E9E9E9ECECECEE
              EEEEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAF4F4F4F6F6F6F2F2F2EBEBEBD3D3D3D0D0D0EBEBEBF7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD0D0D0C4C4C4D4D4D4EE
              EEEEFCFCFCFFFFFFF7F7F7F3F3F3F7F7F7FCFCFCFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEF1F1F1EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FDE5E5E5D8D8D8D7D7D7E1E1E1F8F8F8FFFFFFF9F9F9F9F9F9FFFFFFFFFFFFFF
              FFFFFFFFFFF7F7F7E3E3E3E9E9E9F6F6F6FFFFFFFBFBFBF6F6F6F1F1F1ECECEC
              F6F6F6F9F9F9FCFCFCFFFFFFFDFDFDE4E4E4E5E5E5F3F3F3FBFBFBFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B8B8B8BCBCBCD2D2D2
              E7E7E7EFEFEFE9E9E9ECECECF6F6F6F0F0F0F2F2F2EEEEEEFBFBFBFFFFFFFFFF
              FFFFFFFFFEFEFEF3F3F3EFEFEFE3E3E3DADADADFDFDFE8E8E8EFEFEFF4F4F4FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              F8F8F8EFEFEFF2F2F2F7F7F7F3F3F3DBDBDBC0C0C0D4D4D4ECECECF8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBCCCCCCC8C8C8D9D9D9EDEDEDF9
              F9F9FAFAFAFAFAFAF6F6F6F6F6F6F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF0F0F0E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DEDE
              DED2D2D2D8D8D8E3E3E3F3F3F3FFFFFFFCFCFCF9F9F9FAFAFAFFFFFFFFFFFFFD
              FDFDFFFFFFF3F3F3DFDFDFE8E8E8F6F6F6FFFFFFFEFEFEFCFCFCF9F9F9ECECEC
              F3F3F3F6F6F6FAFAFAFFFFFFF2F2F2DEDEDEEBEBEBF6F6F6FAFAFAFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAD5D5D5BDBDBDCCCCCCE5E5E5F2F2F2
              F6F6F6F0F0F0F7F7F7FFFFFFFFFFFFF4F4F4EEEEEEFCFCFCFFFFFFFFFFFFFFFF
              FFFFFFFFFCFCFCF0F0F0E6E6E6E4E4E4E9E9E9E7E7E7F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F3F3F3EEEEEEEBEBEB
              E9E9E9E8E8E8EDEDEDECECECDBDBDBC1C1C1C5C5C5EBEBEBFBFBFBF9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEACDCDCDCACACADFDFDFEEEEEEF4F4F4F4
              F4F4F3F3F3F8F8F8F4F4F4F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F9F9F9E8E8E8EAEAEAFCFCFCFFFFFFFFFFFFFFFFFFFEFEFEEEEEEED9D9D9CFCF
              CFDDDDDDEFEFEFF0F0F0F9F9F9F8F8F8F8F8F8F9F9F9FEFEFEFFFFFFFAFAFAF1
              F1F1F4F4F4ECECECDFDFDFE7E7E7F2F2F2FDFDFDFEFEFEFAFAFAF6F6F6EBEBEB
              EFEFEFF9F9F9FAFAFAF6F6F6E7E7E7E4E4E4F2F2F2F9F9F9FDFDFDFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFF2F2F2D0D0D0C1C1C1DADADAEFEFEFF6F6F6F7F7F7
              F0F0F0F8F8F8FFFFFFFAFAFAF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E3E3
              E3FFFFFFFCFCFCF2F2F2E5E5E5E7E7E7EEEEEEEBEBEBFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5D3D3D3E7E7E7ECECECECECEC
              EAEAEAE3E3E3DEDEDED5D5D5C5C5C5C8C8C8E7E7E7FBFBFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE7E7E7CACACAC3C3C3DEDEDEF7F7F7FAFAFAF7F7F7F3
              F3F3F7F7F7F8F8F8F6F6F6FCFCFCFFFFFFFFFFFFFCFCFCFFFFFFFBFBFBF7F7F7
              EDEDEDE8E8E8F1F1F1FDFDFDFFFFFFFFFFFFFEFEFEEFEFEFDDDDDDD4D4D4E0E0
              E0F6F6F6FDFDFDF7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EF
              EFEFF0F0F0F0F0F0E6E6E6E7E7E7F1F1F1F8F8F8FBFBFBF8F8F8F3F3F3F0F0F0
              ECECECF6F6F6F7F7F7F6F6F6EEEEEEF1F1F1F9F9F9FEFEFEFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFEBEBEBC8C8C8C6C6C6E3E3E3FAFAFAFCFCFCFCFCFCF4F4F4
              F7F7F7FFFFFFF7F7F7F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DEDEDEDADA
              DAFEFEFEFBFBFBF2F2F2E5E5E5E6E6E6EFEFEFF1F1F1FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B7B7B7D3D3D3F1F1F1F2F2F2F0F0F0
              F0F0F0EEEEEEE7E7E7E0E0E0DFDFDFECECECF9F9F9FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE8E8E8C7C7C7C3C3C3D9D9D9F4F4F4FFFFFFFAFAFAF1F1F1F2
              F2F2F8F8F8F8F8F8F8F8F8FEFEFEFFFFFFFAFAFAFCFCFCFCFCFCFAFAFAF4F4F4
              F1F1F1F8F8F8FFFFFFFDFDFDFDFDFDFCFCFCF8F8F8E9E9E9E3E3E3E8E8E8F7F7
              F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
              F6F6F4F4F4FAFAFAEEEEEEE8E8E8EEEEEEF8F8F8FAFAFAFCFCFCF7F7F7F3F3F3
              ECECECF3F3F3F9F9F9F7F7F7F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00F2F2F2EAEAEAC9C9C9C7C7C7EBEBEBFEFEFEFFFFFFFFFFFFFAFAFAF8F8F8
              FEFEFEFAFAFAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DFDFDFE1E1
              E1FFFFFFFFFFFFF0F0F0E3E3E3E7E7E7F0F0F0FCFCFCFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE5E5E5D1D1D1C5C5C5E7E7E7F7F7F7F3F3F3F0F0F0
              F2F2F2F2F2F2F3F3F3F6F6F6F7F7F7FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAEAEAD0D0D0CACACADFDFDFF1F1F1FFFFFFFFFFFFF7F7F7EFEFEFF0
              F0F0F3F3F3F4F4F4F8F8F8FFFFFFFFFFFFF3F3F3F7F7F7F6F6F6F8F8F8F4F4F4
              FAFAFAFFFFFFFFFFFFFAFAFAF9F9F9F6F6F6F1F1F1ECECECF3F3F3F7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3F3F3F3F0F0F0F0F0F0F1F1F1F1F1F1F7
              F7F7F6F6F6FFFFFFF9F9F9EDEDEDEDEDEDF7F7F7F8F8F8F9F9F9F8F8F8F6F6F6
              EFEFEFF0F0F0F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00DFDFDFDCDCDCD9D9D9EAEAEAF6F6F6F7F7F7F9F9F9FDFDFDFCFCFCFFFFFF
              FFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E3E3E3E8E8
              E8FFFFFFFEFEFEF3F3F3E6E6E6E8E8E8F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEBD4D4D4DCDCDCD6D6D6EEEEEEF9F9F9F9F9F9F8F8F8
              F3F3F3F4F4F4F7F7F7FAFAFAFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFEDEDEDD1D1D1CFCFCFDEDEDEEEEEEEFAFAFAFFFFFFFFFFFFF1F1F1E8E8E8EB
              EBEBF2F2F2F6F6F6F9F9F9FFFFFFFFFFFFEDEDEDEDEDEDEFEFEFEFEFEFF0F0F0
              FAFAFAFFFFFFFDFDFDF3F3F3F1F1F1F1F1F1F1F1F1F7F7F7FCFCFCF3F3F3FDFD
              FDFFFFFFFFFFFFF3F3F3DCDCDCD9D9D9DCDCDCDBDBDBD8D8D8DEDEDEDADADADA
              DADAEDEDEDFFFFFFFFFFFFF3F3F3E8E8E8F1F1F1F4F4F4F6F6F6FBFBFBF9F9F9
              F8F8F8F7F7F7FBFBFBFDFDFDFCFCFCFCFCFCF4F4F4F0F0F0FFFFFFFFFFFFFFFF
              FF00}
            BackgroundOptions.GlassColor = 11786751
            BackgroundOptions.GlassTranslucency = 90
            Versoes = 'P,E'
            object btCaracteristicas2: TTS_SpeedButton
              Left = 1
              Top = 1
              Width = 117
              Height = 92
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Caption = '&1 - Caracteristicas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas2Click
              Versoes = 'P,E'
              TagStr = '0'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btCalcPreco2: TTS_SpeedButton
              Left = 1
              Top = 93
              Width = 117
              Height = 92
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&2 - Pre'#231'o de Venda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              OnClick = btCaracteristicas2Click
              Versoes = 'P,E'
              TagStr = '1'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btCustomizados2: TTS_SpeedButton
              Left = 1
              Top = 185
              Width = 117
              Height = 92
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&0 - Customizados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas2Click
              Versoes = 'P,E'
              TagStr = '2'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
          end
        end
        object tsServicos: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'Servi'#231'os'
          ImageIndex = 6
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          DesignSize = (
            821
            443)
          object pcServicos: TTS_PageControl
            Left = 123
            Top = 0
            Width = 668
            Height = 442
            ActivePage = tsCaracteristicas3
            Anchors = [akLeft, akTop, akRight, akBottom]
            OwnerDraw = True
            TabOrder = 0
            ActivePageIndex = 0
            Versoes = 'S,P,E'
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
            object tsCaracteristicas3: TTS_TabSheet
              Hint = 'btCaracteristicas3'
              Caption = 'Caracteristicas2'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'S,P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Shape20: TTS_Shape
                Left = 3
                Top = 134
                Width = 494
                Height = 3
                Brush.Color = 9027548
                Pen.Style = psClear
                Transparent = False
              end
              object TS_Shape1: TTS_Shape
                Left = 3
                Top = 126
                Width = 133
                Height = 18
                Brush.Color = 9027548
                Pen.Style = psClear
                Shape = stRoundRect
                Transparent = False
              end
              object lbComissao3: TTS_Label
                Left = 39
                Top = 35
                Width = 91
                Height = 17
                Caption = 'Comiss'#227'o:'
                FocusControl = dfComissao3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object lbDescMax3: TTS_Label
                Left = 10
                Top = 58
                Width = 120
                Caption = 'Desconto M'#225'ximo:'
                FocusControl = dfDescMax3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Shape4: TTS_Shape
                Left = 24
                Top = 8
                Width = 231
                Height = 22
                Brush.Color = 9552605
                Pen.Style = psClear
                Shape = stRoundRect
                Versoes = 'S,P,E'
                Transparent = False
              end
              object lbPrecoVenda3: TTS_Label
                Left = 25
                Top = 11
                Width = 105
                Cursor = crHandPoint
                Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                Caption = 'Pre'#231'o de Venda:'
                FocusControl = dfPrecoVenda3
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lbPrecoVenda1Click
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label4: TTS_Label
                Left = 151
                Top = 261
                Width = 334
                Height = 28
                Alignment = taLeftJustify
                Caption = 
                  '(Se esta op'#231#227'o n'#227'o estiver marcada, n'#227'o ser'#225' poss'#237'vel usar este ' +
                  'Item para fazer pedidos ou mesmo registrar compras)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Visible = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label9: TTS_Label
                Left = 10
                Top = 81
                Width = 120
                Height = 17
                Cursor = crHandPoint
                Hint = 'Permite entrar no cadastro de unidades'
                Caption = 'Unidade de Venda:'
                FocusControl = TS_DBLookupComboBox2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                FormatoTabela = False
                LinkTo = 'FrmUnidades'
                LinkToResult = 0
              end
              object TS_Label68: TTS_Label
                Left = 0
                Top = 104
                Width = 130
                Height = 16
                Caption = 'Tipo Servi'#231'o:'
                FocusControl = cmbTipoServico
                Versoes = 'S,P,E'
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label69: TTS_Label
                Left = 20
                Top = 127
                Width = 108
                Height = 18
                Alignment = taLeftJustify
                Caption = 'Legisla'#231#227'o Fiscal'
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
              object TS_Label70: TTS_Label
                Left = 25
                Top = 144
                Width = 104
                Cursor = crHandPoint
                Caption = 'Tipo Tributa'#231#227'o:'
                FocusControl = TS_DBLookupComboBox3
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsUnderline]
                ParentFont = False
                FormatoTabela = False
                LinkTo = 'FrmTipoTributacao'
                LinkToResult = 0
              end
              object TS_Label71: TTS_Label
                Left = 50
                Top = 164
                Width = 79
                Caption = 'CST:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label72: TTS_Label
                Left = 23
                Top = 182
                Width = 108
                Caption = 'Mod. Base Calc.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object TS_Label73: TTS_Label
                Left = 26
                Top = 202
                Width = 103
                Caption = 'Aliquota de ICMS:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FormatoTabela = False
                LinkToResult = 0
              end
              object dfComissao3: TTS_DBEditNumber
                Tag = -2
                Left = 134
                Top = 34
                Width = 74
                HelpContext = -2
                PopupMenu = ppmGrupo
                TabOrder = 1
                OnMouseDown = dfDescMax3MouseDown
                DataField = 'icComissao'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfComissao1Change
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object TS_DBCheckBox5: TTS_DBCheckBox
                Left = 131
                Top = 241
                Width = 299
                Style.BorderStyle = xbsNone
                Style.ButtonStyle = btsSimple
                Style.HotTrack = False
                TabOrder = 4
                Visible = False
                Alignment = taLeftJustify
                Caption = 'Este Servi'#231'o '#233' Sub-Contratado (Terceirizado)'
                DataField = 'ISITEMCOMPRA'
                DataSource = DMItens.C_TabelaDS
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnChange = DBEdit11Change
                Versoes = 'S,P,E'
                DisableEdit = False
                Height = 24
                StoredValues = 1
              end
              object pnInfoCompraServ: TTS_Panel
                Left = -1
                Top = 302
                Width = 506
                Height = 71
                BevelOuter = bvNone
                Color = 14019327
                TabOrder = 5
                Visible = False
                Versoes = 'S,P,E'
                object TS_Label14: TTS_Label
                  Left = 13
                  Top = 28
                  Width = 117
                  Height = 17
                  Cursor = crHandPoint
                  Caption = #218'ltimo Fornecedor:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsUnderline]
                  ParentFont = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkTo = 'FrmFornecedores'
                  LinkToResult = 0
                end
                object TS_Label18: TTS_Label
                  Left = 1
                  Top = 55
                  Width = 130
                  Height = 16
                  Caption = 'Descri'#231#227'o para Compra:'
                  FocusControl = TS_DBEdit4
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_Label31: TTS_Label
                  Left = 2
                  Top = 3
                  Width = 128
                  Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
                  Caption = #218'ltimo Pre'#231'o de Compra:'
                  FocusControl = dfUltPrecoCompra3
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Versoes = 'S,P,E'
                  FormatoTabela = False
                  LinkToResult = 0
                end
                object TS_DBEdit4: TTS_DBEdit
                  Tag = -2
                  Left = 133
                  Top = 53
                  Width = 363
                  HelpContext = -2
                  TabOrder = 2
                  DataField = 'DESCRICAOCOMPRA'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
                  DistinctEditOn = False
                  NumericRange = nrAmbos
                  Versoes = 'S,P,E'
                  Height = 19
                end
                object dfUltForn3: TTS_DBEditFavorecido
                  Tag = -2
                  Left = 133
                  Top = 27
                  Width = 241
                  Hint = 
                    'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
                    'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
                    ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
                    ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
                    #227'o'
                  HelpContext = -2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.ButtonStyle = btsFlat
                  TabOrder = 1
                  DataField = 'NOMEULTIMOFORNECEDOR'
                  DataSource = DMItens.C_TabelaDS
                  MaxLength = 0
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
                  Versoes = 'S,P,E'
                  SelecionarVarios = False
                  TipoFavorecido = 2
                  C_Localizar = DMProjeto.C_LocalizarFav
                  ID = 0
                  ChaveEstrangeira = 'ULTIMOFORNECEDOR'
                  Height = 19
                  StoredValues = 2
                  ExistButtons = True
                end
                object dfUltPrecoCompra3: TTS_DBEditNumber
                  Tag = -2
                  Left = 133
                  Top = 1
                  Width = 91
                  HelpContext = -2
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  DataField = 'PrecoCompra'
                  DataSource = DMItens.C_TabelaDS
                  StyleController = DMProjeto.esItens
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
                  Versoes = 'S,P,E'
                  Height = 19
                  StoredValues = 1
                end
              end
              object dfDescMax3: TTS_DBEditNumber
                Tag = -2
                Left = 134
                Top = 56
                Width = 74
                HelpContext = -2
                PopupMenu = ppmGrupo
                TabOrder = 2
                OnMouseDown = dfDescMax3MouseDown
                DataField = 'icDescontoMaximo'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfDescMax1Change
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object dfPrecoVenda3: TTS_DBEditNumber
                Tag = -2
                Left = 133
                Top = 9
                Width = 111
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Style.BorderColor = 1522253
                TabOrder = 0
                DataField = 'PRECO'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
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
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 1
              end
              object TS_DBLookupComboBox2: TTS_DBLookupComboBox
                Tag = -2
                Left = 134
                Top = 79
                Width = 138
                HelpContext = -2
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnEnter = cmbUnidadeEnter
                DataField = 'lkUnidade'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DropDownRows = 25
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                TagStr = 'OffTab'
                Height = 19
              end
              object cmbTipoServico: TTS_DBLookupComboBox
                Left = 134
                Top = 102
                Width = 365
                TabOrder = 6
                DataField = 'lkTipoServico'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                DropDownWidth = 800
                ClearKey = 32
                LookupKeyValue = Null
                Height = 19
              end
              object TS_DBLookupComboBox3: TTS_DBLookupComboBox
                Tag = -2
                Left = 135
                Top = 142
                Width = 365
                HelpContext = -2
                TabOrder = 7
                DataField = 'lkSitECF'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = TS_DBLookupComboBox3Change
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Height = 19
              end
              object TS_DBLookupComboBox4: TTS_DBLookupComboBox
                Tag = -2
                Left = 135
                Top = 161
                Width = 365
                HelpContext = -2
                TabOrder = 8
                DataField = 'lkCST'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                ListFieldName = 'CST;DESCRICAO'
                LookupKeyValue = Null
                Height = 19
              end
              object TS_DBLookupComboBox5: TTS_DBLookupComboBox
                Tag = -2
                Left = 135
                Top = 180
                Width = 365
                HelpContext = -2
                TabOrder = 9
                DataField = 'lkModalidadeICMS'
                DataSource = DMItens.C_TabelaDS
                ReadOnly = False
                StyleController = DMProjeto.esItens
                DropDownRows = 15
                ClearKey = 32
                LookupKeyValue = Null
                Versoes = 'S,P,E'
                Height = 19
                StoredValues = 64
              end
              object TS_DBEditNumber4: TTS_DBEditNumber
                Tag = -2
                Left = 135
                Top = 200
                Width = 77
                HelpContext = -2
                TabOrder = 10
                OnMouseDown = cmbCSTMouseDown
                DataField = 'icAliqICMS'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                OnChange = dfAliqICMSChange
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
            object tsCalcPreco3: TTS_TabSheet
              Hint = 'btCalcPreco3'
              Caption = 'tsCalcPreco3'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
            end
            object tsCustomizados3: TTS_TabSheet
              Hint = 'btCustomizados3'
              Caption = 'Customizados3'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'S,P,E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
            end
            object tsContabilidade3: TTS_TabSheet
              Hint = 'btContabilidade3'
              Caption = 'Contabilidade3'
              ParentShowHint = False
              ShowHint = False
              TabVisible = False
              TabColor = clBtnFace
              TabFontColor = clBlack
              Versoes = 'E'
              BevelInner = bvRaised
              BevelOuter = bvLowered
              object TS_Label22: TTS_Label
                Left = 3
                Top = 16
                Width = 129
                Cursor = crHandPoint
                Caption = 'Conta para Vendas:'
                FocusControl = cmbContaVendas3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object lblContaDespesa3: TTS_Label
                Left = 1
                Top = 44
                Width = 131
                Cursor = crHandPoint
                Caption = 'Conta de Despesa:'
                FocusControl = cmbContaDespesa3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                Visible = False
                Versoes = 'E'
                FormatoTabela = False
                LinkTo = 'FrmContas'
                LinkToResult = 0
              end
              object cmbContaVendas3: TTS_DBPopupEdit
                Tag = -2
                Left = 136
                Top = 16
                Width = 228
                HelpContext = -2
                TabOrder = 0
                DataField = 'lkContaVenda'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaVendas1InitPopup
                Versoes = 'E'
                Height = 19
              end
              object cmbContaDespesa3: TTS_DBPopupEdit
                Tag = -2
                Left = 136
                Top = 43
                Width = 227
                HelpContext = -2
                TabOrder = 1
                Visible = False
                DataField = 'lkContaCusto'
                DataSource = DMItens.C_TabelaDS
                StyleController = DMProjeto.esItens
                PopupControl = DlgPopupContas.pnPopup
                PopupFormBorderStyle = pbsSysPanel
                OnInitPopup = cmbContaVendas2InitPopup
                Versoes = 'E'
                Height = 19
              end
            end
          end
          object pnControl3: TTS_Panel
            Left = 3
            Top = 3
            Width = 119
            Height = 439
            Anchors = [akLeft, akTop, akBottom]
            Color = 16116702
            TabOrder = 1
            BackgroundOptions.Picture.Data = {
              07544269746D617096900000424D969000000000000036000000280000007500
              0000690000000100180000000000609000000000000000000000000000000000
              0000E5E5E5E6E6E6EBEBEBEEEEEEEEEEEED9D9D9C7C7C7D7D7D7E7E7E7E9E9E9
              E7E7E7E9E9E9F3F3F3ECECECF9F9F9FFFFFFF4F4F4E1E1E1DADADADADADADADA
              DAD8D8D8D8D8D8D4D4D4D2D2D2D9D9D9E9E9E9EEEEEEEBEBEBF0F0F0FBFBFBFF
              FFFFFDFDFDFDFDFDFCFCFCFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDBDBDBD8D8D8E5E5E5F7F7F7F9F9F9F4F4F4E7E7E7E3E3E3E6E6
              E6ECECECF1F1F1F0F0F0FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFCFCFCF3F3F3E9E9E9E3E3E3E7E7E7E9E9E9DDDDDDD1D1D1
              C9C9C9D4D4D4E6E6E6EEEEEEF4F4F4F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFED5D5D5CBCBCBF6F6F6FFFFFFFFFFFFF7F7F7FFFFFFFCFCFCF8
              F8F8EFEFEFDFDFDFEBEBEBF1F1F1FCFCFCFBFBFBEEEEEEF3F3F3F9F9F9FAFAFA
              FAFAFAFCFCFCFDFDFDFCFCFCF7F7F7F3F3F3E3E3E3D9D9D9ECECECF3F3F3F3F3
              F300E5E5E5E7E7E7F1F1F1F6F6F6F2F2F2DEDEDECCCCCCE1E1E1F8F8F8FAFAFA
              EEEEEEF1F1F1EFEFEFE8E8E8EDEDEDEBEBEBD9D9D9D4D4D4D9D9D9E1E1E1E8E8
              E8E3E3E3E1E1E1DADADADEDEDEECECECF0F0F0EEEEEEF1F1F1F9F9F9FDFDFDFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F3DCDCDCDCDCDCEAEAEAF8F8F8F9F9F9F9F9F9E7E7E7E7E7E7F1F1
              F1F1F1F1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAE9E9E9E1E1E1DDDDDDDFDFDFE1E1E1E4E4E4ECECECE8E8E8DCDCDCD0D0D0
              D0D0D0E1E1E1ECECECF2F2F2FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD6D6D6D0D0D0F7F7F7FFFFFFFFFFFFF7F7F7FCFCFCFFFFFFFF
              FFFFFFFFFFEBEBEBF3F3F3F9F9F9FDFDFDFFFFFFF3F3F3F9F9F9FCFCFCFAFAFA
              FBFBFBFCFCFCFFFFFFFFFFFFFAFAFAF2F2F2D8D8D8DBDBDBF3F3F3F8F8F8F8F8
              F800F3F3F3F1F1F1F3F3F3FFFFFFFAFAFAE1E1E1D6D6D6F1F1F1FFFFFFFFFFFF
              FAFAFAFFFFFFF7F7F7E0E0E0DFDFDFE0E0E0DFDFDFE4E4E4EBEBEBEEEEEEE8E8
              E8E1E1E1DEDEDEE1E1E1EBEBEBEFEFEFF1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFE9E9E9DCDCDCDFDFDFEEEEEEF8F8F8FBFBFBFDFDFDE8E8E8E9E9E9F9F9
              F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBDADADAD3
              D3D3D1D1D1D6D6D6DEDEDEE4E4E4E6E6E6E9E9E9EBEBEBE3E3E3D7D7D7CCCCCC
              D8D8D8EAEAEAF4F4F4FAFAFAFDFDFDFDFDFDFDFDFDFAFAFAFBFBFBFFFFFFFFFF
              FFFFFFFFFFFFFFD6D6D6D8D8D8FFFFFFFFFFFFFBFBFBF6F6F6F4F4F4FDFDFDFF
              FFFFFFFFFFF6F6F6F1F1F1FCFCFCFDFDFDFFFFFFF3F3F3F8F8F8FAFAFAFAFAFA
              F9F9F9F8F8F8FCFCFCFFFFFFF9F9F9E8E8E8D3D3D3E5E5E5F9F9F9FAFAFAFCFC
              FC00FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFF1F1F1E7E7E7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF8F8F8E3E3E3DADADAE3E3E3ECECECEFEFEFF0F0F0EAEAEADEDE
              DEDADADAE0E0E0EBEBEBF1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCEBEBEBE3E3E3E5E5E5F2F2F2F4F4F4F9F9F9FBFBFBE6E6E6EFEFEFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EFEFEFDBDBDBD0D0D0CFCFCFD9
              D9D9E1E1E1E7E7E7EDEDEDEEEEEEF0F0F0ECECECE4E4E4D9D9D9CDCDCDD2D2D2
              E9E9E9F4F4F4F7F7F7FAFAFAFFFFFFFDFDFDF9F9F9F7F7F7FCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFDADADADCDCDCFDFDFDFFFFFFF3F3F3F2F2F2F4F4F4F1F1F1F9
              F9F9FFFFFFFAFAFAF6F6F6FFFFFFFEFEFEFFFFFFF3F3F3F8F8F8FBFBFBFAFAFA
              FAFAFAFAFAFAFBFBFBFFFFFFF9F9F9DEDEDED9D9D9F0F0F0FAFAFAFAFAFAFDFD
              FD00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FFFFFFFFFFFFFFFFFF
              FCFCFCF3F3F3F3F3F3E5E5E5E5E5E5F0F0F0EFEFEFEBEBEBDFDFDFD8D8D8D5D5
              D5DEDEDEE9E9E9F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFDFDFDF9F9F9FDFDFDFFFFFFFBFBFBFBFBFBFBFBFBFBFBFB
              F9F9F9EEEEEEE6E6E6E8E8E8F2F2F2F0F0F0F8F8F8F4F4F4E7E7E7FCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFECECECF0F0F0EEEEEECCCCCCD8D8D8EDEDEDF9
              F9F9FAFAFAFAFAFAF9F9F9F2F2F2ECECECE4E4E4DBDBDBD4D4D4D6D6D6E8E8E8
              F4F4F4F8F8F8FAFAFAFDFDFDFDFDFDF8F8F8F9F9F9F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDFDFDFDEDEDEFDFDFDFEFEFEEDEDEDEDEDEDF1F1F1E7E7E7F2
              F2F2FCFCFCFAFAFAF9F9F9FFFFFFFEFEFEFFFFFFF3F3F3F6F6F6F9F9F9F9F9F9
              FAFAFAF9F9F9F8F8F8FCFCFCF2F2F2E1E1E1EBEBEBFAFAFAFCFCFCFCFCFCFFFF
              FF00FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE5E5E5EFEFEFF7F7F7F0F0F0
              E3E3E3E7E7E7E8E8E8DBDBDBE3E3E3E5E5E5D8D8D8D2D2D2CFCFCFD3D3D3DCDC
              DCE8E8E8F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E6E6E6E6
              E6E6F6F6F6F9F9F9FAFAFAF3F3F3F6F6F6FBFBFBF8F8F8F7F7F7F6F6F6F8F8F8
              F9F9F9F0F0F0E8E8E8E8E8E8EDEDEDEEEEEEFEFEFEEEEEEEE5E5E5FFFFFFFFFF
              FFFFFFFFFFFFFFF8F8F8F4F4F4F0F0F0FCFCFCEAEAEAD7D7D7F2F2F2FAFAFAFA
              FAFAF7F7F7F2F2F2EFEFEFE9E9E9DDDDDDD3D3D3D4D4D4E4E4E4F2F2F2F7F7F7
              F9F9F9FAFAFAFBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFEE3E3E3E1E1E1FFFFFFFAFAFAE8E8E8F1F1F1F9F9F9E8E8E8ED
              EDEDF3F3F3F3F3F3F6F6F6F6F6F6F9F9F9F8F8F8F6F6F6F4F4F4F9F9F9FAFAFA
              FDFDFDFCFCFCFBFBFBF8F8F8EDEDEDF0F0F0FEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FF00EFEFEFF6F6F6FFFFFFFFFFFFFFFFFFE1E1E1E8E8E8F7F7F7F7F7F7E5E5E5
              DCDCDCE3E3E3D9D9D9C9C9C9D1D1D1D2D2D2D2D2D2D6D6D6DBDBDBE6E6E6F2F2
              F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEC5C5C5CCCCCCDC
              DCDCF7F7F7FEFEFEF9F9F9F7F7F7F7F7F7FCFCFCFEFEFEFBFBFBF7F7F7FCFCFC
              FFFFFFF2F2F2E7E7E7E5E5E5EAEAEAF3F3F3FFFFFFE5E5E5F9F9F9FFFFFFFFFF
              FFF9F9F9F8F8F8FAFAFAF9F9F9FDFDFDF7F7F7D6D6D6DFDFDFF3F3F3F0F0F0E9
              E9E9E3E3E3DFDFDFDCDCDCD4D4D4D2D2D2D9D9D9E9E9E9FCFCFCFFFFFFFAFAFA
              F3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE5E5E5E6E6E6FDFDFDF2F2F2EAEAEAFAFAFAFFFFFFEAEAEAEE
              EEEEF7F7F7F4F4F4F2F2F2F4F4F4F9F9F9F2F2F2F3F3F3F4F4F4F4F4F4FAFAFA
              FCFCFCFEFEFEFDFDFDF7F7F7F3F3F3F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFFFFFFFFFFFF3F3F3DBDBDB
              D4D4D4DADADAD1D1D1D0D0D0DDDDDDDFDFDFE6E6E6ECECECF2F2F2F8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDC4C4C4CACACADCDCDCED
              EDEDFCFCFCFDFDFDFBFBFBFBFBFBF9F9F9FEFEFEFFFFFFFFFFFFFBFBFBFFFFFF
              FFFFFFF3F3F3E6E6E6E5E5E5EAEAEAFBFBFBFEFEFEEEEEEEFFFFFFFFFFFFF9F9
              F9FCFCFCFAFAFAFDFDFDFFFFFFEDEDEDC4C4C4C0C0C0D2D2D2D2D2D2CACACAC8
              C8C8C9C9C9D0D0D0D3D3D3D8D8D8E4E4E4EFEFEFF8F8F8FFFFFFFFFFFFFEFEFE
              EAEAEAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEAEAEAE8E8E8F9F9F9F0F0F0EDEDEDFCFCFCFEFEFEE8E8E8F0
              F0F0F7F7F7F7F7F7F4F4F4F9F9F9F9F9F9F3F3F3F2F2F2F9F9F9F3F3F3FFFFFF
              FFFFFFFDFDFDFAFAFAF4F4F4F4F4F4F4F4F4F8F8F8FBFBFBFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4EBEBEBE8E8E8DCDCDCCACACA
              D2D2D2DDDDDDD9D9D9E0E0E0EBEBEBEBEBEBF6F6F6FAFAFAFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4B9B9B9D4D4D4E6E6E6E7E7E7F3
              F3F3FAFAFAFEFEFEFAFAFAFAFAFAFCFCFCFCFCFCFFFFFFFEFEFEFAFAFAFFFFFF
              FFFFFFF3F3F3E3E3E3E5E5E5F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
              F4F7F7F7F9F9F9FFFFFFDFDFDFB9B9B9B4B4B4CACACAD3D3D3CBCBCBCDCDCDD7
              D7D7E1E1E1E9E9E9EDEDEDF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              ECECECF1F1F1FFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFFFFFFFFFFFFFEFEFEFFFF
              FFFFFFFFFFFFFFF2F2F2E7E7E7F3F3F3EBEBEBEDEDEDFEFEFEFCFCFCE5E5E5F0
              F0F0F7F7F7F4F4F4F8F8F8F4F4F4FDFDFDFAFAFAF7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCFCFCFAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FBFBFBF4F4F4F1F1F1F0F0F0F0F0F0D6D6D6D9D9D9EBEBEBD1D1D1CDCDCD
              E0E0E0E1E1E1DEDEDEEAEAEAEFEFEFF3F3F3FBFBFBFAFAFAFBFBFBFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7B9B9B9CCCCCCEEEEEEF2F2F2EAEAEAF0
              F0F0F7F7F7FCFCFCF8F8F8FBFBFBFBFBFBF9F9F9FDFDFDFAFAFAFCFCFCFFFFFF
              FFFFFFF9F9F9ECECECF7F7F7FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFCFC
              FCFFFFFFFFFFFFDEDEDEBBBBBBC0C0C0D3D3D3E6E6E6E5E5E5E6E6E6F2F2F2F7
              F7F7F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
              F3F3F3EFEFEFF6F6F6FFFFFFFFFFFFFEFEFEFCFCFCFBFBFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF3F3F3E4E4E4EDEDEDEBEBEBF4F4F4FFFFFFF0F0F0E5E5E5F3
              F3F3F7F7F7F4F4F4F9F9F9F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
              E800ECECECEBEBEBEDEDEDFAFAFAFBFBFBDADADAE8E8E8DEDEDEC9C9C9DADADA
              E3E3E3E5E5E5EBEBEBF1F1F1F7F7F7F9F9F9FCFCFCFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4BDBDBDD2D2D2EDEDEDFDFDFDFBFBFBF1F1F1EE
              EEEEF6F6F6F9F9F9F9F9F9FBFBFBFBFBFBFBFBFBFAFAFAFBFBFBFCFCFCFFFFFF
              FFFFFFFCFCFCF7F7F7FFFFFFFFFFFFF4F4F4FFFFFFFFFFFFFAFAFAE9E9E9EDED
              EDF1F1F1E0E0E0C4C4C4C5C5C5D6D6D6E6E6E6EBEBEBE8E8E8F4F4F4FCFCFCFA
              FAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFBFBFBFFFFFFFFFFFF
              F0F0F0ECECECECECECFFFFFFFFFFFFFAFAFAF9F9F9F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF7F7F7E3E3E3E9E9E9F2F2F2FCFCFCFDFDFDEBEBEBEAEAEAF4
              F4F4F7F7F7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFF4F4F4EDEDEDFBFBFBFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2E9E9E9F2F2
              F200EEEEEEF3F3F3FFFFFFFFFFFFFDFDFDD2D2D2D7D7D7D6D6D6DBDBDBDFDFDF
              E4E4E4E9E9E9EFEFEFF8F8F8FCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD8D8D8BEBEBED2D2D2EAEAEAF0F0F0F9F9F9FDFDFDF0F0F0ED
              EDEDF7F7F7F8F8F8F9F9F9FAFAFAFBFBFBFBFBFBF9F9F9FAFAFAFAFAFAFFFFFF
              FFFFFFFFFFFFF9F9F9F3F3F3E8E8E8F6F6F6FFFFFFF9F9F9E9E9E9EDEDEDECEC
              ECE8E8E8D7D7D7C4C4C4D4D4D4E1E1E1ECECECEBEBEBF1F1F1FCFCFCFCFCFCFD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2D3D3D3DDDDDDF9F9F9FBFBFB
              EFEFEFEBEBEBE9E9E9F3F3F3FEFEFEF8F8F8F9F9F9F7F7F7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFBFBFBE3E3E3ECECECF9F9F9FCFCFCF9F9F9E5E5E5EDEDEDF9
              F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEF6F6F6F2F2F2ECECEC
              EAEAEAE4E4E4EBEBEBF8F8F8FBFBFBECECECEAEAEAFAFAFAFFFFFFFFFFFFFFFF
              FF00FAFAFAFFFFFFFFFFFFFFFFFFD4D4D4C4C4C4DDDDDDE8E8E8E4E4E4E5E5E5
              EFEFEFF6F6F6FCFCFCFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF0F0F0C1C1C1D0D0D0EBEBEBF9F9F9F9F9F9F9F9F9FFFFFFF7F7F7ED
              EDEDF4F4F4F4F4F4F8F8F8FFFFFFFFFFFFFBFBFBFAFAFAF9F9F9F8F8F8FFFFFF
              FFFFFFEDEDEDD7D7D7D7D7D7F1F1F1FFFFFFF7F7F7E7E7E7EAEAEAEEEEEEF2F2
              F2EAEAEACDCDCDCACACADEDEDEE9E9E9EEEEEEF1F1F1FBFBFBFDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7C5C5C5C4C4C4DBDBDBFFFFFFFFFFFF
              F4F4F4F0F0F0EBEBEBF0F0F0FEFEFEFAFAFAF9F9F9F8F8F8FEFEFEFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE3E3E3E5E5E5F2F2F2FCFCFCEDEDEDE8E8E8FCFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEFEFEFF6F6F6F1F1F1EBEBEB
              F0F0F0EEEEEEF7F7F7FAFAFAF9F9F9F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFF
              FF00FAFAFAFCFCFCF3F3F3DEDEDECCCCCCE3E3E3FCFCFCF6F6F6E8E8E8F0F0F0
              F9F9F9FCFCFCFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDCDCDCCDCDCDE3E3E3F3F3F3FCFCFCFAFAFAF6F6F6FFFFFFFDFDFDF2
              F2F2F8F8F8F8F8F8FBFBFBFFFFFFFFFFFFFBFBFBF7F7F7EFEFEFEEEEEEEEEEEE
              DEDEDEC9C9C9DBDBDBFFFFFFFFFFFFF7F7F7E9E9E9EBEBEBF2F2F2F6F6F6EEEE
              EED3D3D3C4C4C4D5D5D5E5E5E5ECECECF1F1F1FCFCFCFDFDFDFCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEDEDEDBDBDBDC4C4C4D6D6D6E8E8E8FFFFFFFFFFFF
              FBFBFBF3F3F3EFEFEFEEEEEEF4F4F4F7F7F7F6F6F6F7F7F7F9F9F9FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFE5E5E5E8E8E8FFFFFFF7F7F7E8E8E8FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F3F3F3F9F9F9F4F4F4FAFAFA
              FFFFFFFDFDFDF7F7F7F7F7F7F8F8F8FCFCFCFDFDFDFFFFFFFFFFFFF9F9F9F3F3
              F300F4F4F4F4F4F4F4F4F4F1F1F1FAFAFAFFFFFFFFFFFFEEEEEEDCDCDCF6F6F6
              FCFCFCFDFDFDFFFFFFFFFFFFFAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F6D8D8D8D8D8D8E8E8E8F9F9F9FBFBFBF1F1F1F0F0F0F9F9F9FCFCFCF9
              F9F9F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFF9F9F9EEEEEEE7E7E7ECECECF8F8F8
              FBFBFBFFFFFFFFFFFFFFFFFFF9F9F9EBEBEBF0F0F0F6F6F6F9F9F9EDEDEDD4D4
              D4C3C3C3D2D2D2E4E4E4EBEBEBF1F1F1FBFBFBFCFCFCFAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF9F9F9C6C6C6CCCCCCE0E0E0E8E8E8F8F8F8FFFFFFFFFFFF
              FFFFFFF9F9F9F3F3F3EDEDEDF3F3F3FDFDFDFBFBFBFAFAFAF9F9F9FAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFF3F3F3EFEFEFF2F2F2EBEBEBFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF1F1F1EDEDEDF1F1F1F3F3F3F1F1F1
              EDEDEDE7E7E7E8E8E8EEEEEEF4F4F4F7F7F7F2F2F2F4F4F4F0F0F0EDEDEDEDED
              ED00FFFFFFFBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDC9C9C9EFEFEF
              FAFAFAFCFCFCFCFCFCF8F8F8F4F4F4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FDEFEFEFDEDEDEDFDFDFEEEEEEFEFEFEFCFCFCF1F1F1EEEEEEEEEEEEEFEFEFF8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF0F0F0E7E7E7E7E7E7EBEBEBE9E9E9DDDDDDCCCCCCC5C5
              C5D1D1D1E4E4E4ECECECF3F3F3FCFCFCFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFCACACAC0C0C0DADADAE4E4E4E8E8E8F7F7F7FFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7F0F0F0F1F1F1FFFFFFFFFFFFFDFDFDF9F9F9F6F6F6F4F4
              F4F3F3F3FFFFFFFFFFFFE4E4E4D2D2D2DEDEDEF7F7F7FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDE6E6E6E5E5E5E6E6E6E4E4E4DBDBDB
              D2D2D2C9C9C9C6C6C6CBCBCBD6D6D6D8D8D8D3D3D3CBCBCBC9C9C9D1D1D1E4E4
              E400FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1BEBEBECDCDCDEFEFEF
              FAFAFAF9F9F9F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFF
              FFF8F8F8E8E8E8E6E6E6F2F2F2FBFBFBF9F9F9F2F2F2E7E7E7E7E7E7F9F9F9FF
              FFFFF7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFF
              FFFFFFF1F1F1E5E5E5E4E4E4E7E7E7E7E7E7E4E4E4D7D7D7C8C8C8CACACAD5D5
              D5E3E3E3EFEFEFF7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE5E5E5C6C6C6D9D9D9E9E9E9E5E5E5E8E8E8F2F2F2FBFBFBFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F6F2F2F2FFFFFFFFFFFFFFFFFFF3F3F3EAEAEAEDED
              EDEDEDEDE1E1E1D4D4D4C7C7C7D8D8D8F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFEFEFEF9F9F9EBEBEBE8E8E8ECECECF3F3F3F0F0F0E8E8E8DEDEDE
              DCDCDCDFDFDFE0E0E0E4E4E4E1E1E1DADADADCDCDCDBDBDBDEDEDEE3E3E3E9E9
              E900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9D4D4D4DCDCDCDBDBDBEFEFEF
              FCFCFCFCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFE
              FEFBFBFBEFEFEFE9E9E9F0F0F0F4F4F4F3F3F3F0F0F0DFDFDFEFEFEFFFFFFFFF
              FFFFF0F0F0F8F8F8FFFFFFFFFFFFFCFCFCE5E5E5E4E4E4F1F1F1F1F1F1EBEBEB
              E3E3E3DEDEDEDDDDDDDDDDDDDBDBDBD7D7D7CFCFCFC9C9C9D4D4D4E1E1E1EAEA
              EAF2F2F2F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFD6D6D6D8D8D8EAEAEAEFEFEFE8E8E8ECECECF4F4F4FDFDFDFFFFFF
              FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8E8E8E8EBEB
              EBE6E6E6D9D9D9CACACADEDEDEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFCFAFAFAF3F3F3F2F2F2F3F3F3F9F9F9F3F3F3E8E8E8E1E1E1E3E3E3
              EBEBEBF3F3F3F9F9F9FDFDFDF9F9F9F6F6F6F3F3F3F6F6F6FBFBFBFCFCFCF8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDCDCDCF3F3F3DCDCDCEEEEEE
              FFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBFBFBFFFFFFFEFEFEFFFF
              FFFFFFFFF6F6F6E7E7E7EBEBEBEBEBEBEFEFEFF2F2F2E8E8E8FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEDEDEDCFCFCFB9B9B9C4C4C4D2D2D2D5D5D5D0D0D0
              CBCBCBCCCCCCCACACACACACAC9C9C9C9C9C9CFCFCFD8D8D8E6E6E6EFEFEFF4F4
              F4F7F7F7FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEBEBEBD6D6D6E1E1E1EDEDEDF0F0F0E8E8E8F3F3F3F8F8F8FEFEFEFFFFFF
              FFFFFFFFFFFFEBEBEBF2F2F2FDFDFDFFFFFFFFFFFFF8F8F8F7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFCFCFCF1F1F1EDEDEDEEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFB
              FBFBF7F7F7F7F7F7F6F6F6F6F6F6F3F3F3EFEFEFE5E5E5E5E5E5EAEAEAF6F6F6
              F9F9F9F9F9F9FAFAFAF6F6F6F6F6F6F6F6F6F7F7F7FBFBFBF7F7F7FAFAFAFAFA
              FA00FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D4D4D4ECECECFFFFFFDCDCDCEBEBEB
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF7F7F7E7E7E7E4E4E4EAEAEAFAFAFAFFFFFFFDFDFDFFFFFFFFFFFFFF
              FFFFFAFAFAEFEFEFD3D3D3C6C6C6C2C2C2C1C1C1CFCFCFD3D3D3CCCCCCC8C8C8
              CFCFCFD2D2D2D7D7D7DEDEDEE4E4E4E6E6E6EDEDEDF4F4F4F9F9F9F9F9F9FBFB
              FBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
              FBFBEAEAEADEDEDEE8E8E8F2F2F2F3F3F3E9E9E9F6F6F6FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFF0F0F0FCFCFCF1F1F1F2F2F2FBFBFBEDEDEDF7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8FBFBFBFCFCFCFAFAFAF2F2F2EF
              EFEFEEEEEEEDEDEDEBEBEBEBEBEBE7E7E7E3E3E3E9E9E9F2F2F2F6F6F6F7F7F7
              EFEFEFEBEBEBF0F0F0F0F0F0F3F3F3F3F3F3F4F4F4F7F7F7F2F2F2FAFAFAFCFC
              FC00FFFFFFFFFFFFFFFFFFFFFFFFEAEAEADBDBDBF7F7F7FDFDFDD3D3D3E1E1E1
              F9F9F9FEFEFEFFFFFFFFFFFFFDFDFDFAFAFAF7F7F7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFAFAFAE8E8E8DFDFDFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
              F1F1E4E4E4D6D6D6D8D8D8D9D9D9D4D4D4DCDCDCEAEAEAE8E8E8E0E0E0E6E6E6
              EEEEEEF1F1F1F4F4F4F7F7F7F3F3F3F7F7F7FDFDFDFDFDFDFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAEFEFEFE8E8E8F1F1F1F7F7F7F3F3F3EEEEEEF7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE7E7E7D9D9D9E6E6E6F3F3F3F7F7
              F7F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1E1E1
              E1E1E6E6E6EAEAEAEDEDEDEBEBEBE8E8E8EDEDEDF2F2F2EEEEEEEBEBEBE6E6E6
              E6E6E6EBEBEBF1F1F1F3F3F3F7F7F7F6F6F6F0F0F0ECECECF1F1F1FAFAFAFDFD
              FD00FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E3E3E3F8F8F8F1F1F1CCCCCCDCDCDC
              EDEDEDEDEDEDEEEEEEF1F1F1F8F8F8F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDEBEBEBE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E6
              E6E6E6E6E6E6E6E6E4E4E4D8D8D8D9D9D9E5E5E5EEEEEEE8E8E8EEEEEEF8F8F8
              FBFBFBFAFAFAFAFAFAFAFAFAFCFCFCFDFDFDFCFCFCFFFFFFFDFDFDFCFCFCFCFC
              FCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8FBFBFBF9
              F9F9F3F3F3F0F0F0F2F2F2F3F3F3F6F6F6F3F3F3F9F9F9FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9E7E7E7CCCCCCB5B5B5BBBBBBCCCCCCE3E3E3F0F0F0F4F4
              F4FAFAFAFEFEFEFFFFFFF7F7F7EFEFEFEEEEEEF7F7F7F4F4F4E5E5E5DDDDDDE1
              E1E1E7E7E7EDEDEDEFEFEFEDEDEDEAEAEAEEEEEEEEEEEEEAEAEAE7E7E7E9E9E9
              F4F4F4F9F9F9F9F9F9FAFAFAFCFCFCF6F6F6F2F2F2FCFCFCFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFCFCFCE6E6E6E5E5E5F7F7F7E7E7E7CACACADFDFDF
              EEEEEEEFEFEFE9E9E9E3E3E3E9E9E9EFEFEFF2F2F2FDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF8F8F8F2F2F2FFFFFFFFFFFFFFFFFFFCFCFCEAEAEAE5E5E5EC
              ECECF0F0F0E8E8E8D6D6D6D3D3D3E0E0E0EDEDEDF0F0F0F0F0F0FAFAFAFDFDFD
              FDFDFDFAFAFAF9F9F9FBFBFBFDFDFDFCFCFCFDFDFDFDFDFDF7F7F7F4F4F4F4F4
              F4F4F4F4F7F7F7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFF9F9F9F6F6F6F4F4F4FA
              FAFAF9F9F9F7F7F7F3F3F3F8F8F8FBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEED9D9D9C4C4C4BBBBBBC7C7C7D5D5D5D4D4D4CFCFCFD2D2D2E1E1
              E1F1F1F1FBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFAFAFAE5E5E5E5E5E5EF
              EFEFF4F4F4F6F6F6ECECECE9E9E9EAEAEAF0F0F0EAEAEAE8E8E8EBEBEBF9F9F9
              FFFFFFFDFDFDFDFDFDFDFDFDF9F9F9F2F2F2F9F9F9FFFFFFFFFFFFFDFDFDFEFE
              FE00FFFFFFFFFFFFFFFFFFF9F9F9E6E6E6E9E9E9F2F2F2D6D6D6D1D1D1EEEEEE
              F8F8F8FBFBFBFAFAFAF7F7F7EFEFEFECECECEEEEEEF2F2F2F7F7F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6EAEAEAE8E8E8F1F1F1F1
              F1F1EDEDEDD8D8D8CCCCCCDCDCDCEBEBEBEEEEEEF1F1F1FAFAFAFDFDFDFCFCFC
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF7F7F7F4F4F4FAFAFAFFFF
              FFFFFFFFFFFFFFFFFFFFFCFCFCF7F7F7F8F8F8FDFDFDFAFAFAF4F4F4F6F6F6FA
              FAFAFCFCFCFAFAFAF2F2F2FAFAFAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              EEEEEEDBDBDBC8C8C8C2C2C2D2D2D2E8E8E8EDEDEDE4E4E4DCDCDCD9D9D9D7D7
              D7D6D6D6DBDBDBE1E1E1EDEDEDFFFFFFFDFDFDFDFDFDF0F0F0E5E5E5EEEEEEFA
              FAFAFFFFFFFAFAFAF0F0F0F2F2F2F2F2F2F2F2F2EBEBEBEDEDEDF6F6F6FFFFFF
              FFFFFFFAFAFAF7F7F7F3F3F3F0F0F0F3F3F3FAFAFAFAFAFAF8F8F8F8F8F8F6F6
              F600FBFBFBFFFFFFFFFFFFFDFDFDECECECECECECDBDBDBCCCCCCE9E9E9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF3F3F3F1F1F1F2F2F2F8F8F8FDFD
              FDFFFFFFFFFFFFFFFFFFF2F2F2FAFAFAF3F3F3E5E5E5E6E6E6F2F2F2F7F7F7F0
              F0F0DCDCDCC9C9C9D5D5D5EBEBEBEEEEEEF1F1F1F8F8F8FCFCFCFAFAFAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2F1F1F1EFEFEFF3F3F3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEF8F8F8F2F2F2F2F2F2F7F7F7F3
              F3F3F7F7F7FCFCFCF8F8F8F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFF9F9F9E7E7E7
              DADADAC8C8C8C5C5C5D3D3D3E9E9E9EDEDEDE7E7E7EDEDEDFBFBFBFCFCFCF7F7
              F7F0F0F0E5E5E5DBDBDBD3D3D3D3D3D3E6E6E6F7F7F7E9E9E9EFEFEFF6F6F6F7
              F7F7FDFDFDFAFAFAF7F7F7F2F2F2F2F2F2EDEDEDEBEBEBF0F0F0FFFFFFFFFFFF
              F7F7F7EEEEEEEEEEEEF1F1F1F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFCFCFCF7F7
              F700FEFEFEFFFFFFFFFFFFFEFEFEE9E9E9D1D1D1C1C1C1DBDBDBF4F4F4FFFFFF
              FFFFFFFFFFFFF6F6F6F7F7F7FAFAFAFDFDFDFCFCFCF7F7F7F2F2F2F2F2F2F4F4
              F4F9F9F9FCFCFCEFEFEFDFDFDFE8E8E8E5E5E5E6E6E6F4F4F4FCFCFCF2F2F2DB
              DBDBC7C7C7D3D3D3E8E8E8EDEDEDEEEEEEF8F8F8FCFCFCFCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE6E6E6E8E8E8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1F3F3F3F9F9F9F7
              F7F7F7F7F7FBFBFBF6F6F6F1F1F1FFFFFFFFFFFFFFFFFFEBEBEBDADADAD3D3D3
              CCCCCCCBCBCBD9D9D9EAEAEAE8E8E8EAEAEAFAFAFAFFFFFFFCFCFCFBFBFBFFFF
              FFFFFFFFFFFFFFFDFDFDF4F4F4EBEBEBE7E7E7ECECECEBEBEBF0F0F0F7F7F7F3
              F3F3F7F7F7FDFDFDF9F9F9F3F3F3F2F2F2EDEDEDEDEDEDF6F6F6FFFFFFF3F3F3
              EEEEEEF0F0F0F1F1F1F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFF8F8F8ECECECDDDDDDBFBFBFABABABC5C5C5EDEDEDEFEFEFF7F7F7
              FBFBFBF7F7F7FCFCFCFFFFFFFEFEFEFFFFFFFFFFFFFDFDFDFBFBFBF8F8F8F1F1
              F1F0F0F0EEEEEEE9E9E9E7E7E7EAEAEAEBEBEBF3F3F3F9F9F9EDEDEDD4D4D4C3
              C3C3D1D1D1EBEBEBF0F0F0F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDEDEDEEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F9F9F9FB
              FBFBFEFEFEFFFFFFFAFAFAFCFCFCFFFFFFF7F7F7DEDEDED6D6D6D5D5D5D3D3D3
              D2D2D2DADADAE5E5E5E5E5E5EDEDEDFFFFFFFFFFFFF1F1F1FAFAFAFFFFFFFFFF
              FFFEFEFEFCFCFCFDFDFDFAFAFAFEFEFEFFFFFFFCFCFCF1F1F1F3F3F3F9F9F9F2
              F2F2F2F2F2FEFEFEFCFCFCF7F7F7F2F2F2EBEBEBEBEBEBF7F7F7F7F7F7EDEDED
              F4F4F4F3F3F3F4F4F4FBFBFBFAFAFAFCFCFCFDFDFDFCFCFCFFFFFFFFFFFFFFFF
              FF00FFFFFFF1F1F1DCDCDCBFBFBFA9A9A9BEBEBEE9E9E9F4F4F4F4F4F4FBFBFB
              FCFCFCFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFEFEEEEEEEE7E7E7EAEAEAE6E6E6E0E0E0D1D1D1C9C9C9D8
              D8D8EAEAEAF0F0F0F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEDEDEDE7E7E7EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
              FAFAFAFAFAFAFAF6F6F6FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF4F4F4F0F0F0EDEDEDDFDFDFDADADAE3E3E3E1E1E1DCDCDC
              DBDBDBDFDFDFDDDDDDE5E5E5FFFFFFFFFFFFFCFCFCF6F6F6FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFAFAF7F7F7FBFBFBFFFFFFFFFFFFFFFFFFF2F2F2F3F3F3F2
              F2F2F6F6F6FFFFFFFFFFFFF7F7F7F0F0F0E8E8E8EBEBEBF6F6F6F1F1F1F7F7F7
              FCFCFCF7F7F7FAFAFAFFFFFFFDFDFDFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFDFD
              FD00FFFFFFEAEAEAC7C7C7C4C4C4D4D4D4E8E8E8F4F4F4F9F9F9FAFAFAFFFFFF
              FFFFFFFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFAFAE8E8E8DFDFDFDDDDDDD9D9D9D5D5D5D2D2D2DDDDDDE6
              E6E6EBEBEBF4F4F4F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EEEEEEE5E5E5E8E8E8E7E7E7EBEBEBF6F6F6FAFAFAF9F9F9F0F0F0EAEAEAE9E9
              E9EAEAEAE5E5E5EBEBEBF0F0F0F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF9F9F9F2F2F2F1F1F1E5E5E5DBDBDBE0E0E0DDDDDDD5D5D5CFCFCF
              D3D3D3DDDDDDE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF9F9F9F7F7F7F8F8F8FFFFFFFFFFFFFFFFFFF2F2F2F1F1F1F2
              F2F2F7F7F7FFFFFFFFFFFFF7F7F7F0F0F0E8E8E8EDEDEDF3F3F3F4F4F4FFFFFF
              F9F9F9F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF7F7
              F700F4F4F4C8C8C8C1C1C1E5E5E5F6F6F6F8F8F8FEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAECECECE6E6E6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F4F4
              F4FFFFFFFFFFFFEDEDEDDBDBDBCDCDCDCFCFCFD4D4D4DADADAE0E0E0E6E6E6E9
              E9E9F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8
              E1E1E1EEEEEEF1F1F1EBEBEBEEEEEEF3F3F3F7F7F7F7F7F7EBEBEBE8E8E8ECEC
              ECF2F2F2EEEEEEECECECEFEFEFF6F6F6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFC
              FCFCF4F4F4F3F3F3EEEEEEDFDFDFD8D8D8D8D8D8D6D6D6CCCCCCCBCBCBD1D1D1
              DFDFDFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6F1F1F1FFFFFFFFFF
              FFFFFFFFF6F6F6F2F2F2F7F7F7F8F8F8FCFCFCFFFFFFFFFFFFF6F6F6ECECECF1
              F1F1F9F9F9FFFFFFFDFDFDF9F9F9EDEDEDE5E5E5EBEBEBF4F4F4FFFFFFFFFFFF
              F0F0F0F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F4F4
              F400CACACAC2C2C2E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAF7F7F7F8F8F8FAFAFAF9F9F9FFFFFFFFFFFFF0F0F0E6E6E6E5E5E5EDED
              EDFCFCFCE7E7E7D5D5D5C5C5C5C6C6C6D9D9D9E8E8E8E9E9E9E6E6E6ECECECF8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5E3E3E3
              EFEFEFF9F9F9FCFCFCF6F6F6F3F3F3FAFAFAF6F6F6F7F7F7EBEBEBEDEDEDF6F6
              F6FBFBFBFDFDFDF3F3F3F1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
              F3F3E8E8E8DADADACFCFCFCBCBCBD0D0D0CFCFCFCDCDCDCFCFCFDADADAE7E7E7
              F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F7F7F7FFFFFFFFFF
              FFF9F9F9F0F0F0F3F3F3F9F9F9FAFAFAFCFCFCFFFFFFFFFFFFF9F9F9E7E7E7EC
              ECECFDFDFDFFFFFFFAFAFAF9F9F9EAEAEAE5E5E5F0F0F0F9F9F9FFFFFFFFFFFF
              EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F9F9F9F2F2F2F1F1F1F8F8
              F800E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBF9F9F9FFFFFFE8E8
              E8E5E5E5DDDDDDDCDCDCD8D8D8DFDFDFF2F2F2F7F7F7EDEDEDEDEDEDF8F8F8FF
              FFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBDDDDDDE8E8E8
              F1F1F1F7F7F7FDFDFDF9F9F9F2F2F2FAFAFAF2F2F2F3F3F3F0F0F0F4F4F4F7F7
              F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DEDEDEC7
              C7C7C1C1C1C1C1C1C8C8C8D2D2D2D3D3D3D4D4D4DADADAEBEBEBF3F3F3FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFBFBFFFFFFFFFFFFF9F9
              F9F6F6F6F2F2F2F7F7F7FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFFAFAFAE5E5E5EE
              EEEEFFFFFFFDFDFDF9F9F9F6F6F6E5E5E5E5E5E5F1F1F1FAFAFAFFFFFFFFFFFF
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF2F2F2F3F3F3FEFE
              FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFFAFAFADFDF
              DFE7E7E7EEEEEEEEEEEEDCDCDCE5E5E5F8F8F8F7F7F7EFEFEFF6F6F6FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E6E6EDEDEDF0F0F0
              F4F4F4F4F4F4FDFDFDF7F7F7F0F0F0F9F9F9F0F0F0F7F7F7F7F7F7F7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D4D4D4BEBEBEBE
              BEBECACACAD6D6D6E1E1E1E5E5E5E3E3E3E7E7E7F9F9F9FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7F4F4F4FBFBFBFAFAFAFAFAFAF8F8F8F1F1F1F2F2F2F3F3
              F3F0F0F0F3F3F3F6F6F6FAFAFAFAFAFAFEFEFEFFFFFFFFFFFFF7F7F7EBEBEBFE
              FEFEFFFFFFF4F4F4F7F7F7F2F2F2E3E3E3E8E8E8F7F7F7FFFFFFFFFFFFFFFFFF
              F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEECECECFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCD9D9D9D7D7D7D7D7D7DBDBDB
              E5E5E5F2F2F2F0F0F0F7F7F7FBFBFBFFFFFFFFFFFFF0F0F0F2F2F2EBEBEBE3E3
              E3EBEBEBF0F0F0EAEAEADADADAEBEBEBFBFBFBF3F3F3F0F0F0F9F9F9FDFDFDFB
              FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7EBEBEBF4F4F4F3F3F3
              FAFAFAFAFAFAFDFDFDFAFAFAF7F7F7F4F4F4F0F0F0FAFAFAFAFAFAFCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6C5C5C5CBCBCBD8
              D8D8E5E5E5EFEFEFEEEEEEECECECF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9F7F7F7FBFBFBF7F7F7F9F9F9F9F9F9F3F3F3EEEEEEEBEB
              EBF0F0F0F7F7F7F6F6F6F9F9F9FBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAFF
              FFFFFCFCFCF0F0F0F6F6F6EAEAEADFDFDFEEEEEEFCFCFCFFFFFFFFFFFFFBFBFB
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE3E3E3E8E8E8FFFF
              FF00E3E3E3CACACAB8B8B8ACACACA4A4A4A8A8A8B4B4B4BFBFBFC6C6C6CDCDCD
              D5D5D5D7D7D7DCDCDCE9E9E9F3F3F3FFFFFFFFFFFFF3F3F3F6F6F6EBEBEBDFDF
              DFE8E8E8EEEEEEE8E8E8DEDEDEF1F1F1F7F7F7EEEEEEF3F3F3FAFAFAFDFDFDFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5F1F1F1F4F4F4F3F3F3
              FCFCFCF6F6F6FBFBFBFFFFFFF7F7F7E6E6E6F1F1F1FCFCFCFCFCFCFAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD9D9D9D2D2D2D9D9D9E5E5E5EF
              EFEFF7F7F7F7F7F7F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              FFFFFFFFFFFFFDFDFDF9F9F9FDFDFDFBFBFBF7F7F7F7F7F7F4F4F4F1F1F1EDED
              EDF0F0F0F6F6F6F7F7F7F6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF4F4F4EBEBEBEFEFEFE3E3E3E5E5E5F3F3F3FDFDFDFFFFFFFFFFFFEDEDED
              F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6EBEBEBFFFF
              FF00BDBDBDBDBDBDC5C5C5D3D3D3DADADAE1E1E1E8E8E8EFEFEFF1F1F1F1F1F1
              F4F4F4F4F4F4F7F7F7F2F2F2FAFAFAFFFFFFFFFFFFF9F9F9F0F0F0D7D7D7D9D9
              D9E6E6E6ECECECE3E3E3DFDFDFF3F3F3F1F1F1F0F0F0F8F8F8FDFDFDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8E7E7E7F4F4F4F7F7F7FAFAFA
              FAFAFAF3F3F3FFFFFFFFFFFFE6E6E6DEDEDEFBFBFBFCFCFCF9F9F9F9F9F9FCFC
              FCFFFFFFFFFFFFFFFFFFFDFDFDEAEAEAD7D7D7D8D8D8E3E3E3EAEAEAF0F0F0F7
              F7F7F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3
              F6F6F6FEFEFEF9F9F9F7F7F7F9F9F9F9F9F9F7F7F7F8F8F8F9F9F9F6F6F6F3F3
              F3F6F6F6F7F7F7F3F3F3F0F0F0FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
              FAFAEDEDEDE5E5E5E7E7E7DEDEDEEBEBEBFBFBFBFFFFFFFFFFFFFEFEFEEAEAEA
              EEEEEEF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFAFAFADFDFDFD5D5D5FBFBFBFFFF
              FF00EBEBEBE8E8E8E8E8E8EDEDEDEEEEEEE8E8E8EAEAEAF4F4F4F3F3F3F2F2F2
              F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DBDBDBCDCDCDDFDF
              DFEBEBEBEFEFEFE4E4E4E1E1E1EEEEEEECECECF1F1F1FAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE5E5E5F0F0F0FFFFFFFCFCFCFDFDFD
              FAFAFAF7F7F7FFFFFFFAFAFAD8D8D8E8E8E8FFFFFFF9F9F9F2F2F2F4F4F4FDFD
              FDFFFFFFFFFFFFFBFBFBEBEBEBD9D9D9DDDDDDEBEBEBF0F0F0EFEFEFF0F0F0F3
              F3F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF9F9F9
              F3F3F3FAFAFAF7F7F7F3F3F3F1F1F1F3F3F3F7F7F7F8F8F8F8F8F8F6F6F6FAFA
              FAFCFCFCFBFBFBF8F8F8F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF2
              F2F2E7E7E7DCDCDCDEDEDEE3E3E3F3F3F3FEFEFEFDFDFDFFFFFFFFFFFFF0F0F0
              EEEEEEF3F3F3FBFBFBFEFEFEFFFFFFFDFDFDF2F2F2D8D8D8E6E6E6FFFFFFFFFF
              FF00EAEAEAE7E7E7EAEAEAEFEFEFF6F6F6EEEEEEECECECF3F3F3F6F6F6F7F7F7
              FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCCACACADADADAEAEA
              EAEDEDEDE9E9E9DEDEDEE5E5E5F1F1F1F1F1F1F8F8F8FEFEFEFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEFFFFFFFFFFFFFAFAFAFFFFFF
              FEFEFEF3F3F3F8F8F8ECECECE1E1E1F9F9F9FFFFFFF7F7F7F6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFF1F1F1E5E5E5DFDFDFEEEEEEF7F7F7F3F3F3EEEEEEF2F2F2F7
              F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFCFCFCFDFDFDF8F8F8
              F3F3F3F6F6F6F2F2F2F0F0F0F1F1F1F3F3F3F8F8F8F8F8F8F8F8F8F3F3F3FAFA
              FAFDFDFDFEFEFEFCFCFCF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6ED
              EDEDDCDCDCD4D4D4DCDCDCEAEAEAF9F9F9FEFEFEFAFAFAFFFFFFFFFFFFF2F2F2
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EAEAEADCDCDCF6F6F6FFFFFFFFFF
              FF00E8E8E8EBEBEBF0F0F0F3F3F3FCFCFCF6F6F6EBEBEBF0F0F0F7F7F7F8F8F8
              FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE3E3E3C5C5C5CFCFCFE6E6E6E8E8
              E8E8E8E8E3E3E3E3E3E3EDEDEDF1F1F1F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFDFDFDFCFCFCFFFFFF
              FFFFFFF2F2F2FCFCFCF6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFF9F9F9E7E7E7DFDFDFEAEAEAF7F7F7F9F9F9F0F0F0EBEBEBF3F3F3FD
              FDFDFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF9F9F9F6F6F6F4F4F4F3F3F3
              F3F3F3F2F2F2EDEDEDEDEDEDF0F0F0F4F4F4F8F8F8F8F8F8F7F7F7F3F3F3F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDEDDE
              DEDEC9C9C9D0D0D0E4E4E4F4F4F4F9F9F9F6F6F6F8F8F8FFFFFFFFFFFFF0F0F0
              FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE4E4E4E5E5E5FFFFFFFFFFFFFFFF
              FF00F0F0F0F2F2F2F2F2F2F2F2F2F9F9F9F8F8F8EBEBEBEEEEEEFAFAFAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDECACACACDCDCDE4E4E4EAEAEAE5E5
              E5E3E3E3E5E5E5EEEEEEF0F0F0F4F4F4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFDFDFDFDFDFDF6F6F6FDFDFDFFFFFF
              F3F3F3F2F2F2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
              FCEEEEEEE6E6E6DBDBDBE1E1E1F2F2F2F6F6F6F3F3F3EAEAEAE8E8E8F8F8F8FF
              FFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6F9F9F9FAFAFAF7F7F7F9F9F9FAFAFA
              F3F3F3F2F2F2F0F0F0EEEEEEF3F3F3F7F7F7F7F7F7F8F8F8F3F3F3F3F3F3F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF3F3F3EEEEEEDFDFDFC6
              C6C6C1C1C1DEDEDEF2F2F2F3F3F3ECECECE8E8E8F7F7F7FFFFFFF6F6F6E8E8E8
              F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DEDEDEF4F4F4FFFFFFFFFFFFFFFF
              FF00F6F6F6F3F3F3F3F3F3F6F6F6FAFAFAF9F9F9EBEBEBF0F0F0FCFCFCFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD1D1D1D8D8D8E5E5E5E8E8E8E5E5E5E3E3
              E3E8E8E8EEEEEEF3F3F3F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9F3F3F3F2F2F2F9F9F9F6F6F6
              F3F3F3F6F6F6FAFAFAFFFFFFFFFFFFF3F3F3F6F6F6F4F4F4EEEEEEE6E6E6E4E4
              E4DEDEDEE0E0E0E0E0E0EDEDEDFBFBFBF8F8F8F3F3F3EBEBEBEFEFEFFFFFFFFF
              FFFFFCFCFCF9F9F9FFFFFFFAFAFAF4F4F4F7F7F7F7F7F7F9F9F9F9F9F9F9F9F9
              F7F7F7F4F4F4F3F3F3F1F1F1F7F7F7F7F7F7F8F8F8FAFAFAF7F7F7F6F6F6F9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAEFEFEFFFFFFFE3E3E3C7C7C7B9
              B9B9D5D5D5F2F2F2F0F0F0E9E9E9E8E8E8F2F2F2FFFFFFFFFFFFECECECE5E5E5
              EFEFEFFBFBFBFFFFFFFFFFFFFDFDFDE8E8E8E8E8E8FFFFFFFFFFFFFFFFFFFAFA
              FA00F6F6F6F3F3F3F6F6F6F7F7F7FAFAFAF7F7F7F0F0F0F6F6F6FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE8E8E8DEDEDEDEDEDEE7E7E7ECECECE8E8E8E8E8E8EAEA
              EAEEEEEEF0F0F0F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFBFBFBF7F7F7F4F4F4F2F2F2ECECECF0F0F0F7F7F7F7F7F7
              FAFAFAF9F9F9FDFDFDF6F6F6DFDFDFD2D2D2D9D9D9DFDFDFDEDEDEE5E5E5E9E9
              E9E8E8E8EBEBEBEAEAEAF7F7F7FEFEFEFAFAFAF6F6F6EDEDEDF0F0F0FFFFFFFF
              FFFFFCFCFCFAFAFAFDFDFDF7F7F7F4F4F4F7F7F7F8F8F8F9F9F9F3F3F3F6F6F6
              F6F6F6F8F8F8F3F3F3F6F6F6F6F6F6F7F7F7F9F9F9FAFAFAF7F7F7F3F3F3FCFC
              FCFFFFFFFFFFFFFFFFFFFCFCFCE3E3E3EEEEEEFFFFFFF2F2F2C0C0C0B4B4B4CD
              CDCDF1F1F1F2F2F2ECECECFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEECECEC
              F8F8F8FFFFFFFEFEFEF7F7F7EDEDEDDFDFDFF2F2F2FFFFFFFFFFFFFCFCFCF2F2
              F200F3F3F3F3F3F3F3F3F3F3F3F3F7F7F7EDEDEDF3F3F3FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF3F3F3E8E8E8EAEAEAE3E3E3EAEAEAEEEEEEEAEAEAEAEAEAEDED
              EDF1F1F1F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
              F3F3DFDFDFD9D9D9D5D5D5D6D6D6DCDCDCE8E8E8E8E8E8EFEFEFF7F7F7FAFAFA
              F9F9F9F7F7F7EBEBEBD4D4D4C4C4C4CCCCCCDADADADEDEDEE4E4E4EFEFEFF3F3
              F3F6F6F6F3F3F3F0F0F0FFFFFFFFFFFFFAFAFAF6F6F6EBEBEBF0F0F0FFFFFFFF
              FFFFF9F9F9F9F9F9F9F9F9F7F7F7F9F9F9FCFCFCFEFEFEFBFBFBF2F2F2F3F3F3
              F2F2F2F1F1F1F1F1F1F7F7F7F9F9F9FBFBFBFDFDFDFCFCFCF6F6F6F4F4F4FFFF
              FFFFFFFFFFFFFFFAFAFAF0F0F0FFFFFFFFFFFFFFFFFFBDBDBDB1B1B1CBCBCBEC
              ECECEEEEEEE1E1E1F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFEFEFE
              FFFFFFFFFFFFFAFAFAEEEEEEDBDBDBD9D9D9F7F7F7FFFFFFFFFFFFF2F2F2E5E5
              E500F4F4F4F3F3F3EFEFEFEEEEEEEBEBEBE5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEBEBEBE0E0E0E0E0E0D6D6D6CFCFCFDBDBDBE3E3E3E0E0E0E5E5E5EFEF
              EFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7CCCCCCC7
              C7C7CCCCCCD2D2D2D1D1D1D0D0D0D0D0D0D9D9D9E7E7E7EEEEEEF7F7F7FBFBFB
              F7F7F7EBEBEBD6D6D6CCCCCCD1D1D1E5E5E5EFEFEFECECECEDEDEDEDEDEDF1F1
              F1F4F4F4F2F2F2F7F7F7FFFFFFFFFFFFFAFAFAF6F6F6EAEAEAF2F2F2FFFFFFFF
              FFFFF6F6F6F6F6F6F4F4F4F9F9F9FCFCFCFDFDFDFFFFFFF7F7F7F0F0F0F1F1F1
              F0F0F0F1F1F1F3F3F3F3F3F3F2F2F2FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEEEEEEFDFDFDFFFFFFFFFFFFC1C1C1ABABABC9C9C9EAEAEAEB
              EBEBE3E3E3E4E4E4F3F3F3F4F4F4EFEFEFF2F2F2F3F3F3F7F7F7FCFCFCFFFFFF
              FFFFFFFFFFFFFCFCFCEDEDEDDEDEDEECECECFFFFFFFFFFFFF3F3F3EAEAEAE4E4
              E400F1F1F1EFEFEFEAEAEAE8E8E8E7E7E7F2F2F2FFFFFFFFFFFFFFFFFFF0F0F0
              DFDFDFD9D9D9DCDCDCD7D7D7CACACAD5D5D5E6E6E6EBEBEBEBEBEBF6F6F6FDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5C6C6C6CCCCCCDFDFDFEB
              EBEBE8E8E8E7E7E7EAEAEAE8E8E8E4E4E4D9D9D9DADADAEBEBEBFAFAFAFFFFFF
              EEEEEEDBDBDBD0D0D0D7D7D7EAEAEAF9F9F9FDFDFDF4F4F4EAEAEAECECECF2F2
              F2F4F4F4F2F2F2F9F9F9FFFFFFFFFFFFF9F9F9F6F6F6EAEAEAF2F2F2FFFFFFFF
              FFFFF6F6F6F9F9F9F9F9F9FDFDFDFDFDFDFCFCFCF9F9F9EDEDEDEAEAEAEDEDED
              EEEEEEF0F0F0F2F2F2F6F6F6F2F2F2F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEDEDEDFDFDFDFFFFFFFFFFFFC1C1C1A8A8A8C8C8C8ECECECEAEAEAE0
              E0E0E8E8E8F4F4F4FAFAFAFCFCFCF0F0F0EBEBEBF0F0F0F8F8F8FFFFFFFFFFFF
              FFFFFFFDFDFDF3F3F3E7E7E7E8E8E8FCFCFCFFFFFFFFFFFFF4F4F4E3E3E3DCDC
              DC00EDEDEDEFEFEFECECECECECECF2F2F2FFFFFFFFFFFFFFFFFFF6F6F6DFDFDF
              E5E5E5EEEEEEEAEAEAD9D9D9DBDBDBEBEBEBF4F4F4F2F2F2F7F7F7FEFEFEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAB4B4B4CDCDCDEDEDEDF9F9F9F0
              F0F0ECECECF3F3F3FAFAFAFAFAFAF9F9F9FCFCFCFBFBFBFFFFFFFFFFFFF9F9F9
              DEDEDED5D5D5D9D9D9F8F8F8FFFFFFF3F3F3FBFBFBF0F0F0ECECECF7F7F7F7F7
              F7F4F4F4F1F1F1F7F7F7FBFBFBFDFDFDFAFAFAF6F6F6EAEAEAF0F0F0FFFFFFFF
              FFFFF3F3F3FCFCFCFDFDFDFFFFFFFCFCFCF9F9F9F2F2F2E7E7E7EAEAEAEBEBEB
              EBEBEBF0F0F0F3F3F3F6F6F6F9F9F9F8F8F8F7F7F7F7F7F7FFFFFFFFFFFFFFFF
              FFEEEEEEF7F7F7FFFFFFFFFFFFC2C2C2A6A6A6CACACAECECECEBEBEBE5E5E5EE
              EEEEF9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFF
              F7F7F7EAEAEAECECECEEEEEEF7F7F7FFFFFFFFFFFFFFFFFFF7F7F7DFDFDFE6E6
              E600EDEDEDEFEFEFEEEEEEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDF2F2F2
              F8F8F8EAEAEADBDBDBD6D6D6E8E8E8F6F6F6F3F3F3F4F4F4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C7C7C7D3D3D3E7E7E7EFEFEFEDEDEDEE
              EEEEECECECF7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4
              D6D6D6DCDCDCE1E1E1F4F4F4F2F2F2EBEBEBFAFAFAF2F2F2F3F3F3FAFAFAFBFB
              FBF8F8F8F2F2F2F7F7F7FEFEFEFDFDFDFAFAFAF2F2F2EAEAEAEFEFEFFFFFFFF9
              F9F9F1F1F1FBFBFBFBFBFBFDFDFDFEFEFEF9F9F9EEEEEEE8E8E8F0F0F0F1F1F1
              F4F4F4F6F6F6F4F4F4F8F8F8F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFEDED
              EDF4F4F4FFFFFFFFFFFFC5C5C5A4A4A4C8C8C8ECECECEAEAEAE3E3E3EBEBEBF4
              F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFEF
              E6E6E6EBEBEBF3F3F3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DEDEDEF1F1
              F100F4F4F4F4F4F4F1F1F1FCFCFCFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2F0F0F0
              DEDEDECDCDCDD1D1D1E3E3E3F1F1F1F1F1F1F0F0F0FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF7F7F7CACACADCDCDCEEEEEEE8E8E8EAEAEAE8E8E8E7
              E7E7F0F0F0F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD4D4D4
              DFDFDFEAEAEAE9E9E9EBEBEBEDEDEDF3F3F3F7F7F7F9F9F9F9F9F9FFFFFFFFFF
              FFFFFFFFF8F8F8FEFEFEFFFFFFFDFDFDF9F9F9F2F2F2E9E9E9EFEFEFFEFEFEFB
              FBFBF0F0F0F6F6F6F7F7F7F8F8F8F9F9F9F3F3F3EBEBEBEBEBEBF2F2F2F4F4F4
              F7F7F7F4F4F4F6F6F6F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7ECEC
              ECFFFFFFFFFFFFCFCFCFA1A1A1C4C4C4EDEDEDEFEFEFE3E3E3ECECECF4F4F4FE
              FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DFDFDFDADADA
              E1E1E1EFEFEFF8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E1E1E1F4F4
              F400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBD6D6D6
              C9C9C9CFCFCFE3E3E3F3F3F3F3F3F3F0F0F0F8F8F8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4D1D1D1EFEFEFF4F4F4E5E5E5E5E5E5EAEAEAEB
              EBEBEDEDEDF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D7D7D7DEDEDE
              F1F1F1F2F2F2F0F0F0EDEDEDF7F7F7F3F3F3F3F3F3FCFCFCFCFCFCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7F3F3F3E9E9E9F0F0F0FEFEFEFE
              FEFEF0F0F0F6F6F6F7F7F7EFEFEFEEEEEEEBEBEBE8E8E8EDEDEDF6F6F6F9F9F9
              F7F7F7F8F8F8FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E8E8E8FFFF
              FFFFFFFFDCDCDCA6A6A6BFBFBFECECECF6F6F6E8E8E8EBEBEBF9F9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EDEDEDE8E8E8E6E6E6
              DFDFDFDADADADEDEDEE7E7E7F1F1F1FEFEFEFAFAFAF1F1F1F4F4F4E4E4E4F3F3
              F300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E7E7E7D0D0D0C4C4C4
              D1D1D1E5E5E5F4F4F4F6F6F6F0F0F0F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDADADAC5C5C5DEDEDEF8F8F8FCFCFCE1E1E1DFDFDFEEEEEEF6
              F6F6F4F4F4F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDBDBDBF2F2F2
              F8F8F8F3F3F3F7F7F7F6F6F6FAFAFAFDFDFDF9F9F9FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFCFCFCFDFDFDFCFCFCF6F6F6EBEBEBF1F1F1FAFAFAFA
              FAFAEFEFEFF3F3F3F2F2F2E9E9E9E9E9E9E7E7E7E4E4E4ECECECF8F8F8FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEE1E1E1FFFFFFFFFF
              FFE0E0E0B0B0B0BBBBBBE4E4E4F7F7F7EDEDEDE7E7E7F4F4F4FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0F0F0EEEEEEEFEFEFEFEFEFF0F0F0
              EBEBEBE6E6E6E3E3E3DDDDDDE1E1E1EBEBEBF3F3F3F2F2F2F9F9F9E5E5E5F3F3
              F300FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DEDEDECBCBCBC7C7C7D3D3D3
              E8E8E8F3F3F3F6F6F6EDEDEDF1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE8E8E8B9B9B9CDCDCDEDEDEDFEFEFEF7F7F7D8D8D8E4E4E4F4F4F4F8
              F8F8FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCE8E8E8F0F0F0
              EFEFEFEFEFEFF6F6F6F9F9F9FCFCFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF7F7F7F7F7F7FDFDFDFAFAFAF3F3F3F0F0F0F7F7F7FAFAFAFA
              FAFAF2F2F2F1F1F1F6F6F6F3F3F3F4F4F4F2F2F2F7F7F7FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E3E3E3FFFFFFFFFFFFE5E5
              E5B4B4B4C0C0C0E1E1E1F3F3F3F6F6F6EDEDEDF6F6F6FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAFAFAEDEDEDEBEBEBEBEBEBECECECEEEEEEF6F6F6
              F6F6F6F6F6F6F7F7F7F7F7F7F0F0F0F0F0F0F4F4F4F0F0F0FEFEFEF0F0F0F8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFDFDFD1D1D1D1D1D1D6D6D6E6E6E6
              F7F7F7F9F9F9F0F0F0EEEEEEFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFC4C4C4C4C4C4E9E9E9FBFBFBFCFCFCEBEBEBD4D4D4E8E8E8F7F7F7F8
              F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFDFDFDE3E3E3D7D7D7DFDFDFE5E5E5
              EAEAEAF0F0F0F2F2F2F9F9F9FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFEAEAEAF7F7F7FFFFFFFAFAFAF3F3F3F7F7F7FAFAFAFEFEFEFE
              FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3E6E6E6FCFCFCFFFFFFEBEBEBB9B9
              B9C1C1C1E6E6E6F7F7F7F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFAFAFAE9E9E9E7E7E7E8E8E8E8E8E8EAEAEAECECECF6F6F6
              F6F6F6F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FAFAFAF9F9F9F8F8
              F800FFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0D0D0D4D4D4D9D9D9E1E1E1F4F4F4
              FAFAFAF2F2F2EBEBEBF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDBDBDBBEBEBEDFDFDFFAFAFAFEFEFEF2F2F2E5E5E5D6D6D6ECECECF6F6F6FF
              FFFFFFFFFFFFFFFFFFFFFFE4E4E4EAEAEAEEEEEEDCDCDCCFCFCFDCDCDCE5E5E5
              EBEBEBEDEDEDEDEDEDF2F2F2F1F1F1F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFF
              FFFAFAFAE8E8E8E4E4E4FBFBFBFFFFFFF9F9F9F3F3F3F9F9F9F9F9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCF9F9F9FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDCDCDCE4E4E4F3F3F3FFFFFFF9F9F9C1C1C1BDBD
              BDDBDBDBF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F3F3F9
              F9F9FFFFFFFFFFFFEDEDEDE3E3E3E7E7E7EEEEEEEEEEEEECECECEFEFEFF8F8F8
              F7F7F7F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7
              F700FFFFFFFFFFFFFFFFFFEFEFEFD6D6D6D7D7D7DEDEDEDBDBDBE9E9E9F9F9F9
              F7F7F7EFEFEFF2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFC3C3C3CDCDCDF1F1F1FCFCFCF7F7F7EEEEEEE3E3E3DCDCDCF6F6F6FFFFFFFF
              FFFFFFFFFFFFFFFFE3E3E3F6F6F6FCFCFCF6F6F6ECECECE9E9E9F7F7F7FCFCFC
              F6F6F6EAEAEAE6E6E6EDEDEDEEEEEEF1F1F1F2F2F2F9F9F9FFFFFFFEFEFEF8F8
              F8F0F0F0E7E7E7EBEBEBFDFDFDFAFAFAF3F3F3F3F3F3F7F7F7F9F9F9FAFAFAF9
              F9F9F9F9F9F9F9F9F8F8F8F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF6F6F6F3F3F3FFFFFFFFFFFFFFFFFFDBDBDBC1C1C1D6D6
              D6ECECECF9F9F9FFFFFFFFFFFFFFFFFFFCFCFCFDFDFDF7F7F7F3F3F3FBFBFBFF
              FFFFFFFFFFFCFCFCEFEFEFE8E8E8E5E5E5EDEDEDF1F1F1F8F8F8FBFBFBFCFCFC
              F8F8F8FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF7F7
              F700FFFFFFFFFFFFF3F3F3D6D6D6D4D4D4E1E1E1DCDCDCE3E3E3F2F2F2F8F8F8
              EEEEEEEEEEEEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
              E7C1C1C1E1E1E1FAFAFAF7F7F7EEEEEEF4F4F4DEDEDEEAEAEAFFFFFFFFFFFFFF
              FFFFFFFFFFF6F6F6F9F9F9FFFFFFFCFCFCFCFCFCFEFEFEF6F6F6FFFFFFFEFEFE
              FFFFFFFFFFFFFAFAFAEFEFEFEBEBEBECECECEDEDEDF2F2F2FFFFFFFFFFFFFFFF
              FFF6F6F6EBEBEBEAEAEAF3F3F3F3F3F3F1F1F1F3F3F3F3F3F3F4F4F4F3F3F3F1
              F1F1F0F0F0EEEEEEF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
              F4F4F4F3F3F3F0F0F0EBEBEBEEEEEEF0F0F0EBEBEBE0E0E0DFDFDFE0E0E0E4E4
              E4EFEFEFF4F4F4F8F8F8FAFAFAFAFAFAF9F9F9FFFFFFF6F6F6F6F6F6FFFFFFFF
              FFFFFFFFFFF9F9F9F0F0F0E9E9E9E3E3E3EFEFEFF7F7F7FBFBFBFFFFFFFFFFFF
              FCFCFCFCFCFCFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF0F0
              F000FFFFFFFFFFFFE3E3E3D3D3D3E3E3E3E1E1E1DBDBDBE9E9E9F4F4F4F0F0F0
              E9E9E9F1F1F1FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
              D2C6C6C6EDEDEDF7F7F7EEEEEEF8F8F8F7F7F7E4E4E4FFFFFFFFFFFFFFFFFFFF
              FFFFEFEFEFE7E7E7E3E3E3D5D5D5C6C6C6BFBFBFC3C3C3C9C9C9DCDCDCEFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFDFD
              FDEEEEEEE3E3E3E7E7E7F4F4F4F7F7F7F4F4F4F4F4F4F1F1F1F0F0F0ECECECE9
              E9E9E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6F2F2F2F1F1F1
              F0F0F0F2F2F2EDEDEDE4E4E4D7D7D7D1D1D1CBCBCBD3D3D3E8E8E8FAFAFAE9E9
              E9ECECECF9F9F9F6F6F6F0F0F0F2F2F2F7F7F7FFFFFFF4F4F4F9F9F9FFFFFFFF
              FFFFFBFBFBF6F6F6F1F1F1ECECECE3E3E3EFEFEFFAFAFAFEFEFEFFFFFFFDFDFD
              F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FAFAFAFFFFFFF3F3
              F300FFFFFFF7F7F7D1D1D1D9D9D9E9E9E9DEDEDEDFDFDFEEEEEEF1F1F1EBEBEB
              EEEEEEF8F8F8FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
              CCD0D0D0EEEEEEEEEEEEF8F8F8FFFFFFEEEEEEFFFFFFFFFFFFFFFFFFF9F9F9ED
              EDEDECECECE7E7E7D1D1D1C0C0C0C4C4C4D0D0D0CFCFCFC5C5C5C7C7C7D6D6D6
              E9E9E9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF
              EFDFDFDFDFDFDFEDEDEDFAFAFAFBFBFBF8F8F8F6F6F6F2F2F2F0F0F0EEEEEEED
              EDEDF1F1F1FFFFFFFFFFFFF8F8F8F0F0F0EDEDEDECECECEFEFEFF4F4F4F4F4F4
              F0F0F0EFEFEFE6E6E6DDDDDDD8D8D8D4D4D4D5D5D5DDDDDDE7E7E7F6F6F6FFFF
              FFEBEBEBF2F2F2FFFFFFF4F4F4EBEBEBEFEFEFF8F8F8F7F7F7FCFCFCFFFFFFFF
              FFFFFEFEFEF8F8F8F1F1F1EAEAEAEAEAEAF8F8F8FFFFFFFFFFFFFCFCFCFAFAFA
              F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F3F3F3FCFCFCF9F9F9F6F6
              F600F8F8F8DBDBDBCCCCCCE6E6E6EAEAEADBDBDBE5E5E5F1F1F1F0F0F0EEEEEE
              F8F8F8FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
              D2DCDCDCFBFBFBFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFF9F9F9EEEEEEF1
              F1F1EBEBEBD7D7D7C9C9C9CFCFCFDDDDDDE4E4E4E5E5E5E9E9E9E0E0E0D3D3D3
              D1D1D1DDDDDDE9E9E9F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
              F4EBEBEBEDEDEDF2F2F2F8F8F8F8F8F8F2F2F2EFEFEFEEEEEEEEEEEEEEEEEEEE
              EEEEF1F1F1F9F9F9E6E6E6D7D7D7DDDDDDE3E3E3EBEBEBEEEEEEECECECEAEAEA
              EBEBEBEAEAEAEBEBEBEEEEEEEEEEEEEFEFEFF0F0F0F8F8F8FEFEFEF4F4F4F4F4
              F4F2F2F2F1F1F1F8F8F8FFFFFFF3F3F3F2F2F2F8F8F8F6F6F6FAFAFAFFFFFFFF
              FFFFFFFFFFF6F6F6EDEDEDE4E4E4ECECECFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEEEEEEFFFFFFF7F7F7EDEDEDEEEE
              EE00E5E5E5D0D0D0DADADAEEEEEEE7E7E7DCDCDCEBEBEBF3F3F3F1F1F1F7F7F7
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB
              DBE3E3E3FFFFFFFFFFFFF7F7F7FAFAFAFFFFFFFFFFFFFCFCFCF0F0F0EEEEEEE7
              E7E7D4D4D4CCCCCCD9D9D9ECECECF6F6F6F6F6F6FEFEFEFFFFFFFFFFFFFFFFFF
              EFEFEFDDDDDDD6D6D6D7D7D7E8E8E8F2F2F2F1F1F1F3F3F3F9F9F9FEFEFEFAFA
              FAF1F1F1EFEFEFF3F3F3FAFAFAFAFAFAF3F3F3F1F1F1EDEDEDECECECEDEDEDEB
              EBEBE9E9E9E8E8E8D5D5D5C7C7C7CACACAD8D8D8E8E8E8E0E0E0DDDDDDE4E4E4
              ECECECF4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ECEC
              ECEAEAEAE8E8E8F0F0F0FAFAFAFFFFFFF7F7F7F8F8F8F7F7F7F6F6F6FCFCFCFF
              FFFFFCFCFCEBEBEBE1E1E1E5E5E5F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F8F8F8EDEDEDE7E7E7EEEEEEF3F3
              F300DBDBDBD6D6D6E8E8E8EEEEEEE1E1E1DEDEDEEEEEEEF3F3F3F4F4F4FDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
              F0D8D8D8E8E8E8E5E5E5F0F0F0FFFFFFFFFFFFFFFFFFEFEFEFE3E3E3DADADACF
              CFCFCFCFCFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FCFCFCF1F1F1E3E3E3DADADADCDCDCE1E1E1E3E3E3E1E1E1E5E5E5F2F2F2F4F4
              F4F0F0F0EEEEEEF1F1F1F6F6F6F4F4F4F3F3F3F3F3F3EFEFEFF0F0F0EEEEEEED
              EDEDEDEDEDF0F0F0EDEDEDEAEAEAF4F4F4FFFFFFFDFDFDF4F4F4FAFAFAFDFDFD
              FEFEFEFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFF6F6F6F2F2F2F9F9F9FAFA
              FAF9F9F9F7F7F7F3F3F3F2F2F2F9F9F9FCFCFCF9F9F9F2F2F2F4F4F4F9F9F9FB
              FBFBF0F0F0E4E4E4E6E6E6F8F8F8FFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DFDFDFC8C8C8C6C6C6D2D2D2E0E0E0F1F1
              F100DEDEDEDFDFDFEFEFEFEBEBEBDCDCDCE5E5E5F4F4F4F9F9F9FCFCFCFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFF
              FFDEDEDED7D7D7ECECECFFFFFFFFFFFFFFFFFFEDEDEDDEDEDED4D4D4D0D0D0D6
              D6D6EDEDEDFFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              FFFFFFFFFFFFFFFFFFFAFAFAEFEFEFF1F1F1F1F1F1F0F0F0F6F6F6F3F3F3F7F7
              F7F2F2F2F0F0F0EEEEEEF0F0F0F0F0F0EFEFEFF1F1F1F0F0F0F2F2F2F0F0F0F0
              F0F0F0F0F0F3F3F3F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7EEEEEEEBEBEBF0F0F0F9F9F9FFFF
              FFFFFFFFFFFFFFFBFBFBF8F8F8F3F3F3F6F6F6F7F7F7F6F6F6F7F7F7F9F9F9F7
              F7F7EFEFEFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFCFCFCECECECD7D7D7C4C4C4CCCCCCDCDCDCE9E9E9EFEFEFE9E9
              E900E6E6E6E8E8E8F1F1F1E7E7E7DEDEDEF0F0F0F9F9F9FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1B8B8B8AAAAAAAAAAAAB2B2B2CFCF
              CFEEEEEED9D9D9DFDFDFFFFFFFFFFFFFF0F0F0E1E1E1D6D6D6D4D4D4DFDFDFEF
              EFEFFFFFFFFFFFFFFBFBFBF6F6F6F3F3F3F3F3F3FDFDFDFFFFFFFFFFFFF1F1F1
              F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF7F7F7FFFFFFFFFFFFFFFF
              FFF2F2F2EFEFEFE7E7E7EAEAEAEBEBEBF2F2F2F4F4F4F3F3F3F3F3F3F2F2F2F3
              F3F3F3F3F3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFEFEFEFEEEEEEEFEFEFEDEDEDEBEBEBEEEEEEF0F0F0F0F0
              F0F1F1F1E9E9E9ECECECEAEAEAEAEAEAF3F3F3F9F9F9F4F4F4F1F1F1F8F8F8FD
              FDFDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F7F7F7E7E7E7D5D5D5CACACAC5C5C5D7D7D7EAEAEAF0F0F0FDFDFDFFFFFFFDFD
              FD00EBEBEBF0F0F0EEEEEEDFDFDFE3E3E3F7F7F7F9F9F9FDFDFDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFECECECB1B1B1AFAFAFCBCBCBD7D7D7D7D7D7C4C4C4AEAE
              AEB1B1B1C2C2C2C7C7C7F9F9F9FAFAFAE5E5E5DEDEDED9D9D9E1E1E1F0F0F0FD
              FDFDFFFFFFFDFDFDF7F7F7F0F0F0F1F1F1FFFFFFFFFFFFFFFFFFFDFDFDE0E0E0
              EDEDEDEFEFEFF3F3F3F9F9F9FFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFFFF
              FFF6F6F6E8E8E8DFDFDFE5E5E5EAEAEAF3F3F3F7F7F7F9F9F9F7F7F7F6F6F6F6
              F6F6F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7D7D7D7DEDEDEF0F0F0EEEEEEF3F3F3F3F3F3EDEDEDECEC
              ECEDEDEDEAEAEAE3E3E3E8E8E8E9E9E9EEEEEEFAFAFAF9F9F9F3F3F3EDEDEDFA
              FAFAFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFFFFFFFFFFFFFFFFFFFAFAFAE9E9E9
              DEDEDED9D9D9D4D4D4D6D6D6DFDFDFF1F1F1F6F6F6FAFAFAFFFFFFFFFFFFFEFE
              FE00EEEEEEF0F0F0E5E5E5DFDFDFEFEFEFF9F9F9FBFBFBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7BEBEBEBCBCBCE5E5E5F6F6F6F7F7F7F7F7F7F3F3F3E4E4
              E4C3C3C3ADADADB8B8B8E5E5E5E1E1E1D4D4D4DCDCDCE5E5E5ECECECF9F9F9FD
              FDFDFCFCFCFAFAFAF3F3F3F1F1F1FEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D3D3D3
              EAEAEAF4F4F4F4F4F4F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF1F1F1DDDDDDDCDCDCE1E1E1EAEAEAF0F0F0F6F6F6F9F9F9FAFAFAFAFAFAFB
              FBFBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF2F2F2E3E3E3D0D0D0DDDDDDF1F1F1F1F1F1F8F8F8F2F2F2EBEBEBEDED
              EDF1F1F1F7F7F7EBEBEBEAEAEAF1F1F1EEEEEEFCFCFCF9F9F9F6F6F6F8F8F8EF
              EFEFFBFBFBFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFF3F3F3E3E3E3DDDDDD
              DCDCDCDBDBDBDDDDDDE8E8E8F2F2F2F8F8F8FAFAFAFFFFFFFAFAFAF2F2F2EEEE
              EE00EDEDEDE5E5E5DEDEDEE9E9E9F8F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFCACACAC2C2C2EAEAEAFAFAFAEFEFEFE6E6E6EAEAEAF7F7F7FBFB
              FBF9F9F9EBEBEBE3E3E3E3E3E3E0E0E0E3E3E3EEEEEEEEEEEEEBEBEBF2F2F2F9
              F9F9F7F7F7F8F8F8F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD0D0D0
              EAEAEAF8F8F8F3F3F3F2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
              F9E5E5E5D5D5D5DFDFDFE7E7E7EEEEEEF1F1F1F3F3F3F9F9F9FDFDFDFEFEFEFC
              FCFCFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
              F0F0F0E5E5E5E1E1E1D6D6D6E7E7E7F3F3F3F0F0F0F8F8F8F0F0F0EAEAEAEDED
              EDF4F4F4F9F9F9F8F8F8EDEDEDF3F3F3F6F6F6FCFCFCFDFDFDFAFAFAFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDE0E0E0DFDFDFE4E4E4
              E8E8E8E8E8E8F1F1F1F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFF4F4F4EFEFEFEFEF
              EF00DDDDDDDCDCDCE7E7E7F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFDCDCDCC2C2C2E4E4E4FFFFFFFFFFFFF6F6F6E7E7E7ECECECF0F0F0F7F7
              F7F9F9F9F6F6F6EBEBEBE6E6E6F4F4F4FBFBFBF7F7F7F0F0F0EBEBEBF0F0F0F9
              F9F9F6F6F6F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDCDCDCCDCDCD
              ECECECF7F7F7F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE1E1
              E1D6D6D6DFDFDFF1F1F1ECECECEDEDEDEDEDEDF1F1F1FAFAFAFFFFFFFFFFFFFC
              FCFCF8F8F8F7F7F7F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2F2F2
              E7E7E7E8E8E8E7E7E7D4D4D4EBEBEBF6F6F6F2F2F2F9F9F9EDEDEDEAEAEAEDED
              EDF9F9F9FDFDFDFAFAFAF6F6F6ECECECF6F6F6FBFBFBFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAE7E7E7E8E8E8EDEDEDF2F2F2
              EFEFEFEDEDEDF3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1F8F8
              F800DDDDDDE9E9E9F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EAEAEAC6C6C6DEDEDEFDFDFDFFFFFFF9F9F9F6F6F6E6E6E6EAEAEAEFEFEFF2F2
              F2F6F6F6F0F0F0E8E8E8F3F3F3FDFDFDFCFCFCF8F8F8F3F3F3ECECECF0F0F0F9
              F9F9F6F6F6F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFCFCFCEAEAEACDCDCDD9D9D9
              F3F3F3F3F3F3F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6D6D6D6C9C9
              C9C1C1C1DBDBDBFCFCFCF2F2F2E5E5E5F0F0F0F7F7F7F8F8F8FCFCFCFCFCFCFA
              FAFAF7F7F7F1F1F1F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2F2F2
              EEEEEEEBEBEBDCDCDCD6D6D6F1F1F1F4F4F4F4F4F4F8F8F8EEEEEEEDEDEDF0F0
              F0F9F9F9FBFBFBFAFAFAF8F8F8F6F6F6EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAEAEAD9D9D9DADADAE4E4E4EBEBEBEEEEEEEEEEEE
              E7E7E7E9E9E9FAFAFAFFFFFFFFFFFFFFFFFFFDFDFDF8F8F8ECECECDEDEDEE8E8
              E800EFEFEFF9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              CDCDCDD7D7D7FBFBFBFFFFFFFAFAFAF9F9F9F9F9F9E0E0E0E3E3E3F3F3F3F4F4
              F4F6F6F6F2F2F2ECECECF1F1F1FFFFFFFFFFFFFAFAFAF6F6F6EEEEEEEEEEEEF6
              F6F6F3F3F3F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFEBEBEBD5D5D5CDCDCDEBEBEB
              F6F6F6F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDBDBDBDADADAD3D3
              D3D0D0D0DDDDDDE8E8E8FAFAFAE5E5E5EEEEEEFAFAFAFDFDFDFBFBFBFBFBFBFA
              FAFAF6F6F6F1F1F1FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFEFEFFFFFF
              EEEEEED8D8D8CDCDCDE0E0E0F3F3F3F3F3F3F6F6F6F9F9F9F3F3F3EFEFEFF0F0
              F0F7F7F7FDFDFDFDFDFDFAFAFAF8F8F8F9F9F9F9F9F9FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDFDFDFCACACACACACADADADAEAEAEAF2F2F2F3F3F3F2F2F2
              EDEDEDFAFAFAFFFFFFFFFFFFFEFEFEF9F9F9F0F0F0E7E7E7DBDBDBD9D9D9E5E5
              E500F9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7
              D1D1D1F6F6F6FFFFFFFCFCFCF2F2F2F8F8F8EBEBEBD4D4D4E5E5E5F4F4F4FBFB
              FBF9F9F9F6F6F6ECECECEEEEEEFFFFFFFFFFFFFCFCFCF9F9F9F1F1F1ECECECF2
              F2F2F6F6F6F9F9F9FDFDFDFFFFFFFBFBFBE3E3E3CBCBCBCBCBCBE5E5E5FAFAFA
              F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E3E3E3DFDFDFE4E4E4D8D8
              D8E5E5E5FBFBFBFEFEFEF6F6F6EDEDEDE8E8E8F6F6F6FFFFFFFFFFFFFEFEFEF9
              F9F9F6F6F6F6F6F6FCFCFCFEFEFEFFFFFFFEFEFEFCFCFCFCFCFCFFFFFFF2F2F2
              CACACAC0C0C0D6D6D6F0F0F0F3F3F3F4F4F4FAFAFAFDFDFDF9F9F9F2F2F2F6F6
              F6F9F9F9FEFEFEFEFEFEFAFAFAF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
              FCFCF7F7F7DEDEDEBFBFBFC4C4C4DCDCDCF1F1F1FCFCFCFCFCFCF9F9F9F9F9F9
              FAFAFAFFFFFFFFFFFFFCFCFCF1F1F1EBEBEBE6E6E6E0E0E0DDDDDDE4E4E4E7E7
              E700FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C7C7C7
              E6E6E6FFFFFFFDFDFDF2F2F2FAFAFAFDFDFDD9D9D9D6D6D6EFEFEFF7F7F7FFFF
              FFFBFBFBF4F4F4EEEEEEF1F1F1FFFFFFFFFFFFFFFFFFFAFAFAF6F6F6EDEDEDEF
              EFEFF6F6F6F8F8F8FAFAFAF6F6F6DADADAC7C7C7CFCFCFE7E7E7F9F9F9F8F8F8
              F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEAEAEAE7E7E7E5E5E5DCDCDCDFDF
              DFFAFAFAFFFFFFFFFFFFFCFCFCFAFAFAF4F4F4F4F4F4FFFFFFFFFFFFFFFFFFFB
              FBFBF7F7F7F7F7F7FAFAFAFCFCFCFFFFFFFEFEFEFDFDFDFEFEFEEEEEEEC8C8C8
              B6B6B6D2D2D2F0F0F0F7F7F7F9F9F9F9F9F9F9F9F9FCFCFCFBFBFBF6F6F6F6F6
              F6F9F9F9FDFDFDFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
              E8E8D9D9D9CACACAC8C8C8DDDDDDF1F1F1FFFFFFFBFBFBF9F9F9F9F9F9F7F7F7
              F0F0F0F3F3F3F7F7F7F4F4F4EEEEEEEEEEEEF2F2F2F2F2F2F6F6F6FAFAFAFCFC
              FC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7CACACADADADA
              FBFBFBFEFEFEEBEBEBEDEDEDFFFFFFE4E4E4C7C7C7E3E3E3F7F7F7F7F7F7FBFB
              FBFEFEFEF8F8F8F6F6F6F0F0F0FCFCFCFFFFFFFFFFFFFCFCFCF6F6F6EFEFEFEF
              EFEFF6F6F6F3F3F3F3F3F3F4F4F4F1F1F1EDEDEDF6F6F6FAFAFAFAFAFAFAFAFA
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EBEBEBEAEAEADFDFDFE1E1E1F3F3
              F3FCFCFCF3F3F3F9F9F9FBFBFBF0F0F0F3F3F3F7F7F7F8F8F8FFFFFFFFFFFFFB
              FBFBF4F4F4F4F4F4FAFAFAFAFAFAFDFDFDFEFEFEF3F3F3EEEEEEDADADAC8C8C8
              DADADAF0F0F0F7F7F7F7F7F7F9F9F9FAFAFAFCFCFCFFFFFFFFFFFFFAFAFAFAFA
              FAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D4
              D4D4D0D0D0D5D5D5DDDDDDECECECFAFAFAF7F7F7F0F0F0F6F6F6F6F6F6F0F0F0
              EBEBEBF3F3F3FBFBFBF8F8F8F6F6F6F7F7F7F7F7F7F6F6F6FCFCFCFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6D0D0D0EEEEEE
              FAFAFAF1F1F1E9E9E9FFFFFFFDFDFDC5C5C5D1D1D1F1F1F1F7F7F7F7F7F7F8F8
              F8FFFFFFFFFFFFFAFAFAF1F1F1F9F9F9FFFFFFFFFFFFFDFDFDF6F6F6F6F6F6F1
              F1F1F0F0F0F6F6F6F9F9F9F6F6F6FBFBFBFFFFFFFCFCFCFCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3EDEDEDE7E7E7DFDFDFF1F1F1F6F6
              F6F1F1F1F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFDFDFDF2F2F2FFFFFFFFFFFFF9
              F9F9F0F0F0F0F0F0F3F3F3F6F6F6FBFBFBFAFAFAF2F2F2DEDEDED6D6D6E6E6E6
              F3F3F3F9F9F9FCFCFCFAFAFAF7F7F7F8F8F8FAFAFAFFFFFFFFFFFFFFFFFFFBFB
              FBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFDFDFC9
              C9C9D6D6D6E1E1E1EEEEEEFAFAFAFDFDFDF9F9F9FEFEFEFEFEFEF7F7F7EEEEEE
              F0F0F0F9F9F9F9F9F9F4F4F4F7F7F7F3F3F3F0F0F0EEEEEEF3F3F3F8F8F8FEFE
              FE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1D0D0D0E5E5E5F7F7F7
              F3F3F3EBEBEBFBFBFBFFFFFFDADADAC6C6C6E8E8E8F9F9F9F7F7F7F4F4F4F8F8
              F8FFFFFFFFFFFFFFFFFFF4F4F4F0F0F0FFFFFFFFFFFFFFFFFFFAFAFAFAFAFAF8
              F8F8F4F4F4FBFBFBFAFAFAFAFAFAFAFAFAF6F6F6F8F8F8FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEEE5E5E5E1E1E1EBEBEBF7F7F7F0F0
              F0F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8FFFFFFFFFFFFF2
              F2F2E8E8E8EBEBEBEEEEEEF1F1F1F2F2F2F6F6F6F8F8F8F7F7F7F9F9F9FCFCFC
              FDFDFDFCFCFCFCFCFCFAFAFAFAFAFAFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0C9C9C9CA
              CACADCDCDCEEEEEEFCFCFCFFFFFFFDFDFDFFFFFFFFFFFFF3F3F3EEEEEEEEEEEE
              F1F1F1F3F3F3EEEEEEF1F1F1F7F7F7F3F3F3F2F2F2F3F3F3F6F6F6F7F7F7F7F7
              F700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8D2D2D2DEDEDEF6F6F6F6F6F6
              F2F2F2F7F7F7FFFFFFFAFAFAC1C1C1D7D7D7F2F2F2FAFAFAF9F9F9F9F9F9FCFC
              FCFFFFFFFFFFFFFFFFFFF9F9F9F0F0F0FFFFFFFFFFFFFEFEFEF9F9F9F9F9F9FA
              FAFAFBFBFBFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9E8E8E8DFDFDFDEDEDEEBEBEBF9F9F9F7F7F7F2F2
              F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E6
              E6E6E7E7E7F2F2F2F3F3F3EFEFEFEFEFEFF1F1F1F4F4F4FBFBFBFFFFFFFDFDFD
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5C1C1C1C2C2C2D7
              D7D7EBEBEBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0EAEAEAF3F3F3F8F8F8
              FCFCFCF9F9F9F6F6F6F6F6F6F7F7F7F8F8F8F7F7F7F6F6F6F3F3F3F6F6F6F6F6
              F600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8D9D9D9EEEEEEF9F9F9F7F7F7
              FCFCFCFFFFFFFFFFFFDCDCDCC5C5C5EBEBEBF8F8F8F8F8F8F9F9F9F9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFFFFEFEFEF9F9F9F7F7F7F9
              F9F9FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEDFDFDFD4D4D4DEDEDEF1F1F1FDFDFDFFFFFFFFFFFFFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFBFBFBEAEAEAE8
              E8E8F8F8F8FFFFFFFDFDFDF9F9F9F6F6F6F0F0F0F0F0F0F2F2F2F6F6F6F9F9F9
              FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4C3C3C3BFBFBFD7D7D7EB
              EBEBFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEBEBEBF7F7F7FFFFFFFFFFFF
              FFFFFFFFFFFFFBFBFBF2F2F2F9F9F9FAFAFAF9F9F9F6F6F6F3F3F3F6F6F6FAFA
              FA00FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7CFCFCFE5E5E5F1F1F1F7F7F7FAFAFA
              FFFFFFFFFFFFFFFFFFC7C7C7D6D6D6FAFAFAFAFAFAF8F8F8FAFAFAFCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFDFDFDE9E9E9F6F6F6FFFFFFFAFAFAF1F1F1F2F2F2F4
              F4F4F7F7F7FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              FFFFFFF6F6F6C8C8C8C0C0C0D8D8D8F0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFBFB
              FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE3E3E3D6D6D6DBDBDBE4E4E4F8
              F8F8FFFFFFFFFFFFFCFCFCFDFDFDFDFDFDFAFAFAF7F7F7F2F2F2F1F1F1F1F1F1
              F4F4F4F6F6F6F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F9F9F9F7F7F7F7F7F7F4F4
              F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCC1C1C1C4C4C4DDDDDDEFEFEFF6
              F6F6FCFCFCF8F8F8FAFAFAFEFEFEFCFCFCF9F9F9F2F2F2FFFFFFFFFFFFFFFFFF
              FFFFFFFCFCFCF6F6F6ECECECF6F6F6FBFBFBF7F7F7F3F3F3F6F6F6F9F9F9FEFE
              FE00FFFFFFFFFFFFFFFFFFF4F4F4CDCDCDCCCCCCE5E5E5EDEDEDF1F1F1F7F7F7
              FFFFFFFFFFFFE1E1E1B9B9B9E7E7E7FAFAFAF9F9F9FCFCFCFDFDFDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF2F2F2E4E4E4F0F0F0F3F3F3E5E5E5E1E1E1E8E8E8ED
              EDEDF6F6F6FAFAFAFAFAFAFAFAFAFCFCFCFAFAFAFCFCFCFAFAFAF7F7F7F3F3F3
              EFEFEFDFDFDFC6C6C6DADADAF4F4F4F9F9F9F9F9F9F6F6F6F6F6F6FAFAFAF0F0
              F0F6F6F6FFFFFFFFFFFFFFFFFFFBFBFBDCDCDCC0C0C0C1C1C1CCCCCCD8D8D8EA
              EAEAFAFAFAFEFEFEFBFBFBFEFEFEFCFCFCFAFAFAFCFCFCFAFAFAF7F7F7F1F1F1
              F1F1F1F2F2F2F2F2F2F0F0F0EFEFEFECECECF0F0F0F3F3F3F8F8F8FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFEEEEEED4D4D4C2C2C2CBCBCBEAEAEAF9F9F9F7F7F7F9
              F9F9F7F7F7F0F0F0F2F2F2F1F1F1F4F4F4FBFBFBFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F3F0F0F0E5E5E5EEEEEEFCFCFCFAFAFAF6F6F6F7F7F7FCFCFCFFFF
              FF00FFFFFFFFFFFFFFFFFFD4D4D4C1C1C1D0D0D0E1E1E1E4E4E4E4E4E4EAEAEA
              F9F9F9FCFCFCB8B8B8C3C3C3F9F9F9FDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9F9F9EFEFEFEAEAEAE3E3E3DBDBDBDEDEDEE6E6E6EA
              EAEAF1F1F1F7F7F7F9F9F9F7F7F7F6F6F6F3F3F3EEEEEEEAEAEAE7E7E7E5E5E5
              E1E1E1DFDFDFE8E8E8F3F3F3F9F9F9F2F2F2F0F0F0ECECECEBEBEBEEEEEEEFEF
              EFFDFDFDFFFFFFFFFFFFFFFFFFE7E7E7C9C9C9CCCCCCECECECF7F7F7F3F3F3F2
              F2F2EEEEEEF3F3F3FFFFFFFFFFFFFEFEFEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFDF0F0F0E1E1E1CFCFCFC6C6C6D1D1D1EBEBEBFBFBFBF7F7F7F2F2F2EE
              EEEEEBEBEBECECECEDEDEDEBEBEBF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFAEDEDEDEBEBEBDEDEDEEFEFEFFDFDFDFAFAFAF4F4F4F4F4F4FCFCFCFFFF
              FF00FFFFFFFFFFFFEEEEEEC0C0C0C7C7C7DFDFDFE9E9E9ECECECEAEAEAE9E9E9
              EEEEEEDADADAB6B6B6E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFAFAFAE1E1E1EBEBEBF9F9F9EAEAEAF2F2F2F9F9F9FCFCFCF3F3F3EA
              EAEAE5E5E5E6E6E6EEEEEEF1F1F1F1F1F1F0F0F0E9E9E9E6E6E6E5E5E5E5E5E5
              EAEAEAEFEFEFF7F7F7F4F4F4F0F0F0EBEBEBEBEBEBEDEDEDEDEDEDF8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFF8F8F8E3E3E3E3E3E3FAFAFAFFFFFFFFFFFFFFFFFFF8
              F8F8F0F0F0EEEEEEF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1EEEEEEEAEAEAE8E8
              E8E5E5E5EBEBEBDBDBDBD1D1D1D3D3D3DCDCDCEAEAEAF4F4F4F7F7F7F3F3F3EE
              EEEEF0F0F0F0F0F0F1F1F1F6F6F6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
              F0F0F0EBEBEBE5E5E5E1E1E1F7F7F7FEFEFEF9F9F9F7F7F7F8F8F8FFFFFFFFFF
              FF00FFFFFFFFFFFFDBDBDBB9B9B9DBDBDBF0F0F0F7F7F7F3F3F3F1F1F1FAFAFA
              FBFBFBD1D1D1D8D8D8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFE5E5E5DFDFDFF8F8F8FEFEFEE8E8E8E6E6E6FBFBFBFFFFFFFDFDFDFAFAFAF6
              F6F6F0F0F0EDEDEDEDEDEDEFEFEFECECECECECECEDEDEDF0F0F0F3F3F3F2F2F2
              F1F1F1EDEDEDEAEAEAE6E6E6E8E8E8ECECECF1F1F1F3F3F3F9F9F9FFFFFFFFFF
              FFFCFCFCEDEDEDDFDFDFD4D4D4D7D7D7E9E9E9F3F3F3F3F3F3EEEEEEEAEAEAE9
              E9E9E9E9E9E9E9E9E9E9E9E6E6E6E7E7E7EAEAEAF7F7F7FCFCFCFBFBFBF4F4F4
              F2F2F2F9F9F9F0F0F0ECECECEFEFEFEDEDEDEBEBEBF0F0F0F7F7F7F8F8F8FDFD
              FDFFFFFFFFFFFFE8E8E8E1E1E1E1E1E1E4E4E4EBEBEBF1F1F1FAFAFAF3F3F3F7
              F7F7F9F9F9F4F4F4F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E8E8
              EBEBEBECECECE8E8E8EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFDADADABFBFBFE8E8E8F6F6F6F2F2F2F0F0F0F9F9F9FFFFFF
              EDEDEDDADADAF3F3F3F9F9F9F4F4F4F6F6F6FCFCFCFFFFFFFFFFFFFFFFFFF9F9
              F9FCFCFCFFFFFFF0F0F0D4D4D4C7C7C7CFCFCFDEDEDEECECECF3F3F3FBFBFBF8
              F8F8F9F9F9FCFCFCFCFCFCFBFBFBF1F1F1E8E8E8E7E7E7EAEAEAEBEBEBE6E6E6
              E6E6E6E5E5E5E8E8E8ECECECF3F3F3F3F3F3F6F6F6F9F9F9FFFFFFFFFFFFEDED
              EDD2D2D2D1D1D1D9D9D9E0E0E0E8E8E8EEEEEEEDEDEDEEEEEEF0F0F0F3F3F3F1
              F1F1EEEEEEF1F1F1F0F0F0EDEDEDEDEDEDF1F1F1F3F3F3F2F2F2FAFAFAFFFFFF
              FFFFFFFAFAFADFDFDFD7D7D7D1D1D1CDCDCDC7C7C7C0C0C0BDBDBDB9B9B9B8B8
              B8C0C0C0D1D1D1EFEFEFF2F2F2EEEEEEEDEDEDF7F7F7F4F4F4F3F3F3F4F4F4FA
              FAFAFFFFFFF6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DEDEDEE1E1E1
              EEEEEEF6F6F6F6F6F6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFCFCFCDDDDDDC2C2C2E3E3E3EBEBEBE9E9E9F1F1F1FEFEFEF7F7F7
              D9D9D9EAEAEAF8F8F8F6F6F6F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF6F6
              F6EAEAEAC7C7C7AAAAAAB7B7B7CBCBCBD0D0D0CFCFCFDCDCDCF8F8F8F7F7F7F1
              F1F1F2F2F2F8F8F8FFFFFFFEFEFEF0F0F0E8E8E8E8E8E8EBEBEBE6E6E6E3E3E3
              EAEAEAEEEEEEF4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF7F7F7F7F7F7FAFAFAF9F9F9FAFAFAF9F9F9F0F0F0F0F0F0F4F4F4F9F9F9F6
              F6F6F7F7F7FAFAFAF6F6F6F6F6F6FEFEFEFDFDFDFDFDFDFFFFFFFFFFFFFFFFFF
              E3E3E3BDBDBDB6B6B6BDBDBDC1C1C1C1C1C1C1C1C1C6C6C6CBCBCBD2D2D2D3D3
              D3CFCFCFCBCBCBD2D2D2EBEBEBF4F4F4F2F2F2F3F3F3FDFDFDF2F2F2F1F1F1F6
              F6F6FFFFFFF7F7F7F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDEDEDEEBEBEB
              F7F7F7FAFAFAF7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
              F900FFFFFFFFFFFFEBEBEBCACACADFDFDFEEEEEEF7F7F7FFFFFFF7F7F7DEDEDE
              E1E1E1F7F7F7F7F7F7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0D7D7
              D7B3B3B3AEAEAECBCBCBE8E8E8ECECECE5E5E5E1E1E1E1E1E1E4E4E4EFEFEFEE
              EEEEE9E9E9EBEBEBFFFFFFFFFFFFEDEDEDE3E3E3EAEAEAF1F1F1E8E8E8ECECEC
              F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFBFBFBF6F6F6FCFCFCFFFFFFFFFFFFF3F3F3F6F6F6F7F7F7F1F1F1F1
              F1F1F7F7F7FCFCFCF9F9F9FFFFFFFFFFFFFFFFFFFAFAFAFEFEFEEBEBEBD4D4D4
              C5C5C5C0C0C0D5D5D5E0E0E0DFDFDFE4E4E4EDEDEDF1F1F1F2F2F2F4F4F4F4F4
              F4F4F4F4F6F6F6EEEEEEF0F0F0F1F1F1F1F1F1F2F2F2F4F4F4FEFEFEF1F1F1F4
              F4F4FBFBFBF9F9F9F8F8F8FEFEFEFFFFFFFFFFFFF6F6F6E4E4E4E8E8E8FCFCFC
              FFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
              EE00FFFFFFFEFEFEF3F3F3E0E0E0DEDEDEFBFBFBFFFFFFF8F8F8E7E7E7E7E7E7
              F9F9F9FCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCB9B9
              B9B6B6B6D6D6D6F1F1F1F8F8F8F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFEFEFEF1
              F1F1E8E8E8EBEBEBFFFFFFFFFFFFF0F0F0E3E3E3EEEEEEF3F3F3EDEDEDF4F4F4
              FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFBFBFBECECECF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEFEFEFF1
              F1F1F2F2F2F2F2F2F4F4F4FFFFFFFFFFFFFDFDFDF2F2F2F3F3F3E4E4E4E5E5E5
              DADADADCDCDCF3F3F3EFEFEFEBEBEBF8F8F8FBFBFBFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFBFBFBEDEDEDEDEDEDF0F0F0F0F0F0F8F8F8FAFAFAF3
              F3F3F4F4F4F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFF2F2F2E5E5E5EBEBEBF9F9F9
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDECEC
              EC00FFFFFFFAFAFAF6F6F6F3F3F3EBEBEBF3F3F3F9F9F9F2F2F2F0F0F0F4F4F4
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0DBDBDBC4C4C4BEBE
              BEDADADAF0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
              F4F4E5E5E5EFEFEFFFFFFFFFFFFFEDEDEDDFDFDFF0F0F0F3F3F3EEEEEEFAFAFA
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3
              F3E5E5E5DDDDDDEFEFEFFFFFFFFFFFFFFDFDFDF3F3F3F9F9F9F3F3F3DFDFDFEE
              EEEEF0F0F0F0F0F0F4F4F4FFFFFFFFFFFFFDFDFDFEFEFEF7F7F7E8E8E8E8E8E8
              D6D6D6E5E5E5F4F4F4EAEAEAF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFDFDFDEFEFEFE0E0E0DFDFDFF1F1F1F3F3F3F1F1F1ECECECF9F9F9F6
              F6F6F3F3F3FAFAFAFAFAFAFAFAFAFFFFFFFDFDFDF9F9F9F8F8F8FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E8E8
              E800FFFFFFEEEEEEEBEBEBEFEFEFF2F2F2ECECECF8F8F8FEFEFEF2F2F2EDEDED
              FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D9D9D9CCCCCCD0D0D0D9D9
              D9E8E8E8F6F6F6FFFFFFFFFFFFF6F6F6F1F1F1F9F9F9FFFFFFFFFFFFFFFFFFEC
              ECECE1E1E1FCFCFCFFFFFFFFFFFFE8E8E8DFDFDFF2F2F2F3F3F3F2F2F2FBFBFB
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCCCCB7B7
              B7B6B6B6C8C8C8E3E3E3EFEFEFF1F1F1EFEFEFEFEFEFF4F4F4EBEBEBD8D8D8F0
              F0F0F4F4F4F4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEEBEBEBE8E8E8DEDEDE
              D8D8D8EDEDEDF0F0F0F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF1F1F1F8F8F8F8F8F8F1F1F1F0F0F0F8
              F8F8F2F2F2F7F7F7F3F3F3F3F3F3F8F8F8F9F9F9FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF9F9F9FBFBFBFCFCFCF9F9F9F8F8F8F8F8F8F3F3F3E4E4E4E1E1
              E100EAEAEAE5E5E5DDDDDDE1E1E1EAEAEAEAEAEAF8F8F8FFFFFFDCDCDCD9D9D9
              F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DBDBDBD5D5D5E0E0E0DEDEDEDEDE
              DEF0F0F0FFFFFFFDFDFDECECECECECECF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFE4
              E4E4E3E3E3FFFFFFFFFFFFFCFCFCE3E3E3DDDDDDF3F3F3F6F6F6F6F6F6FEFEFE
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCBFBFBFBEBEBEB9B9
              B9C5C5C5DBDBDBE9E9E9EDEDEDEDEDEDEFEFEFF6F6F6F3F3F3DFDFDFD9D9D9F1
              F1F1F4F4F4F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E8E8E8E8E8E8DADADA
              E1E1E1F2F2F2F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFBFB
              FBFFFFFFFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDF8F8F8F0F0F0F7
              F7F7FAFAFAF3F3F3F3F3F3EFEFEFEFEFEFF1F1F1F6F6F6FAFAFAFDFDFDFDFDFD
              FFFFFFFFFFFFFEFEFEF9F9F9EEEEEEE8E8E8E9E9E9EBEBEBE8E8E8DFDFDFE4E4
              E400E6E6E6EFEFEFEAEAEADFDFDFE1E1E1E8E8E8F7F7F7F0F0F0C2C2C2D1D1D1
              F7F7F7FFFFFFFFFFFFFFFFFFFBFBFBE5E5E5DCDCDCEEEEEEEDEDEDDDDDDDE7E7
              E7FCFCFCFFFFFFEEEEEEEFEFEFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF
              DFDFEDEDEDFFFFFFFCFCFCF3F3F3DADADAE3E3E3FAFAFAF6F6F6F6F6F6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D1D1D1D3D3D3E4E4E4DBDB
              DBE1E1E1F7F7F7F7F7F7F2F2F2F0F0F0F0F0F0F1F1F1E6E6E6D9D9D9E7E7E7F7
              F7F7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EAEAEAE7E7E7DCDCDC
              EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFFFFFFFFFF1F1F1EDED
              EDF8F8F8F6F6F6F9F9F9FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F0
              F0F0FFFFFFFCFCFCF4F4F4F1F1F1F2F2F2F3F3F3F7F7F7FCFCFCFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEF3F3F3EAEAEAE6E6E6E6E6E6E6E6E6E0E0E0DEDEDEE9E9
              E900F0F0F0F1F1F1F3F3F3F0F0F0EAEAEAE8E8E8EAEAEAD0D0D0B3B3B3D9D9D9
              FEFEFEFFFFFFFFFFFFFFFFFFF6F6F6E1E1E1EFEFEFF9F9F9E8E8E8E3E3E3F2F2
              F2FFFFFFF6F6F6EEEEEEF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE6
              E6E6EEEEEEFCFCFCF8F8F8E8E8E8D9D9D9EAEAEAF9F9F9F3F3F3F9F9F9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DBDBDBE3E3E3E7E7E7F2F2F2E5E5
              E5E7E7E7FBFBFBF4F4F4F4F4F4F2F2F2F3F3F3ECECECDFDFDFE0E0E0F0F0F0F7
              F7F7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EBEBEBE7E7E7E5E5E5EDEDED
              FFFFFFFFFFFFFFFFFFF9F9F9F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFEDEDEDE6E6
              E6F2F2F2F3F3F3F3F3F3F3F3F3F2F2F2F6F6F6FBFBFBFFFFFFFFFFFFFEFEFEFA
              FAFAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2F1F1F1F7F7
              F700F3F3F3F7F7F7F3F3F3EFEFEFE9E9E9E4E4E4D9D9D9B8B8B8BFBFBFEFEFEF
              FFFFFFFFFFFFFFFFFFFFFFFFE6E6E6E7E7E7FAFAFAF3F3F3E7E7E7E9E9E9F6F6
              F6F9F9F9F2F2F2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9DE
              DEDEEAEAEAF9F9F9F0F0F0DFDFDFDFDFDFEEEEEEF9F9F9F2F2F2FAFAFAFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE4E4E4EDEDEDF0F0F0FAFAFAE5E5
              E5E9E9E9FBFBFBF7F7F7F8F8F8F8F8F8F7F7F7F3F3F3EEEEEEF2F2F2F7F7F7F7
              F7F7FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEFEFEFE7E7E7E3E3E3EBEBEBFDFDFD
              FFFFFFFDFDFDF9F9F9F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFCFCFCEDEDEDE4E4
              E4EDEDEDF7F7F7F6F6F6F1F1F1F2F2F2F7F7F7FFFFFFFFFFFFFAFAFADFDFDFEE
              EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F1F1F1
              F9F9F9F9F9F9F7F7F7F9F9F9FCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFAFAFAFAFA
              FA00F9F9F9FBFBFBF1F1F1ECECECE4E4E4DDDDDDC9C9C9C1C1C1E3E3E3FFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9DDDDDDF1F1F1FCFCFCF3F3F3F1F1F1F4F4F4F8F8
              F8F6F6F6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDC
              DCDCEFEFEFF2F2F2E8E8E8E1E1E1E8E8E8F6F6F6F7F7F7F3F3F3FDFDFDFFFFFF
              FFFFFFFDFDFDFCFCFCFFFFFFFBFBFBE5E5E5E4E4E4E8E8E8F8F8F8F7F7F7DFDF
              DFF3F3F3FDFDFDF9F9F9F9F9F9FAFAFAF9F9F9F7F7F7F7F7F7F8F8F8FCFCFCFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E5E5E5DFDFDFE3E3E3F6F6F6FFFFFF
              FCFCFCFAFAFAFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE8E8E8DDDD
              DDEDEDEDFAFAFAF4F4F4F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F6
              F6F6E6E6E6F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E8E8E8E3E3E3E3E3E3
              DEDEDED9D9D9D8D8D8E0E0E0ECECECEFEFEFF1F1F1FBFBFBFDFDFDFBFBFBFDFD
              FD00FFFFFFFCFCFCEAEAEAE0E0E0D9D9D9DBDBDBDDDDDDEDEDEDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE6E6E6DFDFDFF8F8F8F9F9F9F2F2F2F3F3F3FAFAFAFCFC
              FCFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1E3E3E3DF
              DFDFEAEAEAE5E5E5E5E5E5E7E7E7EEEEEEF7F7F7F2F2F2F3F3F3FBFBFBFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEAEAEAEAEAEAF2F2F2FDFDFDE8E8E8E4E4
              E4FAFAFAFAFAFAF8F8F8F7F7F7F6F6F6F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFAFAFAE8E8E8D8D8D8D7D7D7E6E6E6F7F7F7F7F7F7
              F4F4F4FEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E1E1E1DADA
              DAF3F3F3FAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEEEEEEF1
              F1F1FFFFFFFFFFFFFDFDFDF0F0F0E9E9E9DADADACFCFCFC4C4C4BEBEBEBCBCBC
              BDBDBDC1C1C1C9C9C9CFCFCFCBCBCBC9C9C9D2D2D2DDDDDDEBEBEBFBFBFBF3F3
              F300FFFFFFF2F2F2DEDEDEDCDCDCE4E4E4EDEDEDFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF7F7F7DCDCDCE7E7E7F3F3F3F1F1F1F3F3F3F7F7F7FCFCFCFAFA
              FAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E1E1E1DEDEDEE1
              E1E1E3E3E3E8E8E8EBEBEBEBEBEBF0F0F0F0F0F0EFEFEFF7F7F7FEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FDFDFDFFFFFFE7E7E7D8D8D8EAEA
              EAFAFAFAF9F9F9F7F7F7F9F9F9FDFDFDF7F7F7F7F7F7FCFCFCFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFAFAFAE8E8E8D1D1D1CCCCCCDEDEDEF6F6F6F8F8F8F2F2F2
              F1F1F1FBFBFBFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8D9D9D9E5E5
              E5FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEEEEEED8D8D8CBCBCBDC
              DCDCFAFAFAF3F3F3DEDEDED9D9D9D6D6D6D5D5D5D9D9D9D4D4D4D7D7D7E5E5E5
              F1F1F1F8F8F8F8F8F8F1F1F1EFEFEFF1F1F1F2F2F2EBEBEBE4E4E4E9E9E9EFEF
              EF00F7F7F7DCDCDCD2D2D2E1E1E1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFEAEAEAD4D4D4DFDFDFE6E6E6E9E9E9F1F1F1F9F9F9FDFDFDFCFC
              FCFAFAFAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E9E9E9E5E5E5E7E7E7DF
              DFDFE3E3E3EAEAEAE9E9E9EDEDEDF1F1F1F2F2F2F7F7F7FAFAFAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC3C3C3DCDCDCF4F4
              F4F3F3F3F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFF
              FFFFFFFFFFF3F3F3DCDCDCC7C7C7C2C2C2DADADAF8F8F8FDFDFDF8F8F8F8F8F8
              F6F6F6FBFBFBFCFCFCF9F9F9FFFFFFFFFFFFFFFFFFF0F0F0D6D6D6DEDEDEF9F9
              F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF0F0F0D9D9D9D0D0D0E8E8E8FA
              FAFAF2F2F2E5E5E5E7E7E7ECECECF0F0F0F9F9F9F7F7F7ECECECF0F0F0FFFFFF
              FFFFFFFAFAFAF6F6F6F6F6F6F6F6F6F9F9F9F8F8F8F9F9F9FDFDFDF7F7F7EAEA
              EA00E7E7E7CDCDCDDFDFDFF4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF6F6F6D6D6D6CDCDCDDDDDDDE6E6E6ECECECF3F3F3F1F1F1F7F7F7FAFA
              FAF7F7F7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFF2F2F2EDEDEDDFDFDFDCDCDCDD
              DDDDE7E7E7EBEBEBEAEAEAEFEFEFF1F1F1F3F3F3FBFBFBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFD0D0D0C5C5C5F2F2F2FEFE
              FEFAFAFAFAFAFAF7F7F7F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFEDEDEDD3D3D3C2C2C2C4C4C4DBDBDBFBFBFBFFFFFFFFFFFFFEFEFEFAFAFA
              FAFAFAFEFEFEFEFEFEFBFBFBFBFBFBF8F8F8F1F1F1DFDFDFDCDCDCF1F1F1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE9E9E9DCDCDCD7D7D7ECECECFFFFFFFF
              FFFFFBFBFBF3F3F3F3F3F3F6F6F6FBFBFBFDFDFDF6F6F6EEEEEEF4F4F4FCFCFC
              EDEDEDEEEEEEF3F3F3FAFAFAFEFEFEFFFFFFF4F4F4EFEFEFF6F6F6FAFAFAF4F4
              F400D1D1D1D5D5D5F3F3F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F9F9F9DFDFDFCDCDCDD9D9D9E5E5E5EDEDEDF1F1F1EFEFEFE8E8E8EAEAEAECEC
              ECF2F2F2F6F6F6FFFFFFFFFFFFF2F2F2F9F9F9F1F1F1DEDEDED4D4D4DADADAE1
              E1E1ECECECECECECEFEFEFF1F1F1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFCFCFCF7F7F7F3F3F3F4F4F4EEEEEECACACACDCDCDEEEEEEFBFB
              FBFCFCFCF9F9F9FBFBFBFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
              E7E7C8C8C8C1C1C1CDCDCDE8E8E8FAFAFAFFFFFFFFFFFFFFFFFFF9F9F9FCFCFC
              FFFFFFFFFFFFFFFFFFFDFDFDF2F2F2EEEEEEE7E7E7E4E4E4F3F3F3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF1F1F1D7D7D7CFCFCFD3D3D3E4E4E4F7F7F7FFFFFFFF
              FFFFFDFDFDFFFFFFEEEEEEF0F0F0F8F8F8FDFDFDF4F4F4EFEFEFEBEBEBEAEAEA
              ECECECF4F4F4F9F9F9FFFFFFFFFFFFFFFFFFF3F3F3F4F4F4F9F9F9FAFAFAF8F8
              F800D2D2D2ECECECFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
              E1E1E1D4D4D4E1E1E1F3F3F3F7F7F7F4F4F4EDEDEDE8E8E8EAEAEAEEEEEEF2F2
              F2F6F6F6F4F4F4FAFAFAEAEAEAE0E0E0E3E3E3D6D6D6D1D1D1D8D8D8E4E4E4EB
              EBEBEEEEEEEBEBEBEFEFEFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFAF7F7F7EFEFEFE8E8E8E1E1E1C7C7C7CACACAEAEAEAFBFB
              FBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAC3
              C3C3C6C6C6DDDDDDF3F3F3FCFCFCFAFAFAFDFDFDF9F9F9F0F0F0F9F9F9FFFFFF
              FFFFFFFFFFFFFFFFFFFDFDFDF1F1F1F1F1F1F1F1F1F9F9F9FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE3E3E3D3D3D3D4D4D4DBDBDBE8E8E8F3F3F3F8F8F8FFFFFFFF
              FFFFFFFFFFFFFFFFE7E7E7EAEAEAF3F3F3FCFCFCF7F7F7EFEFEFEBEBEBEDEDED
              F4F4F4F7F7F7FAFAFAFFFFFFFFFFFFFCFCFCEBEBEBF4F4F4FBFBFBFEFEFEFCFC
              FC00E9E9E9FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3D3D3D3
              BFBFBFC6C6C6DADADAEEEEEEFFFFFFFCFCFCF0F0F0F6F6F6F3F3F3F7F7F7FAFA
              FAFAFAFAF8F8F8F3F3F3EEEEEEEAEAEAE5E5E5DBDBDBDFDFDFE4E4E4EBEBEBEC
              ECECECECECECECECF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEF6F6F6F4F4F4EDEDEDE9E9E9DBDBDBCACACAD9D9D9F2F2F2FBFB
              FBFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2D1D1D1C2C2C2CD
              CDCDEAEAEAFCFCFCFDFDFDF7F7F7F6F6F6FBFBFBF6F6F6F7F7F7FEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F3F0F0F0F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFE8E8E8D3D3D3D1D1D1EAEAEAF1F1F1F9F9F9F9F9F9FCFCFCFFFFFFFF
              FFFFFFFFFFFCFCFCE1E1E1E6E6E6F3F3F3FCFCFCF7F7F7F2F2F2EEEEEEEEEEEE
              F6F6F6F4F4F4FAFAFAFFFFFFFFFFFFF2F2F2E7E7E7F3F3F3FAFAFAFFFFFFFEFE
              FE00F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BFBFBFB1B1B1
              C0C0C0D4D4D4DADADAD5D5D5DCDCDCFAFAFAF9F9F9EFEFEFFAFAFAFFFFFFFFFF
              FFFFFFFFFDFDFDF6F6F6FAFAFAF2F2F2DFDFDFDCDCDCE3E3E3E9E9E9ECECECEE
              EEEEF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFAF4F4F4F6F6F6F2F2F2EBEBEBD3D3D3D0D0D0EBEBEBF7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDD0D0D0C4C4C4D4D4D4EE
              EEEEFCFCFCFFFFFFF7F7F7F3F3F3F7F7F7FCFCFCFAFAFAFFFFFFFFFFFFFFFFFF
              FFFFFFFEFEFEF1F1F1EEEEEEF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FDE5E5E5D8D8D8D7D7D7E1E1E1F8F8F8FFFFFFF9F9F9F9F9F9FFFFFFFFFFFFFF
              FFFFFFFFFFF7F7F7E3E3E3E9E9E9F6F6F6FFFFFFFBFBFBF6F6F6F1F1F1ECECEC
              F6F6F6F9F9F9FCFCFCFFFFFFFDFDFDE4E4E4E5E5E5F3F3F3FBFBFBFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B8B8B8BCBCBCD2D2D2
              E7E7E7EFEFEFE9E9E9ECECECF6F6F6F0F0F0F2F2F2EEEEEEFBFBFBFFFFFFFFFF
              FFFFFFFFFEFEFEF3F3F3EFEFEFE3E3E3DADADADFDFDFE8E8E8EFEFEFF4F4F4FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
              F8F8F8EFEFEFF2F2F2F7F7F7F3F3F3DBDBDBC0C0C0D4D4D4ECECECF8F8F8FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBCCCCCCC8C8C8D9D9D9EDEDEDF9
              F9F9FAFAFAFAFAFAF6F6F6F6F6F6F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF0F0F0E7E7E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6DEDE
              DED2D2D2D8D8D8E3E3E3F3F3F3FFFFFFFCFCFCF9F9F9FAFAFAFFFFFFFFFFFFFD
              FDFDFFFFFFF3F3F3DFDFDFE8E8E8F6F6F6FFFFFFFEFEFEFCFCFCF9F9F9ECECEC
              F3F3F3F6F6F6FAFAFAFFFFFFF2F2F2DEDEDEEBEBEBF6F6F6FAFAFAFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAD5D5D5BDBDBDCCCCCCE5E5E5F2F2F2
              F6F6F6F0F0F0F7F7F7FFFFFFFFFFFFF4F4F4EEEEEEFCFCFCFFFFFFFFFFFFFFFF
              FFFFFFFFFCFCFCF0F0F0E6E6E6E4E4E4E9E9E9E7E7E7F1F1F1FCFCFCFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F3F3F3EEEEEEEBEBEB
              E9E9E9E8E8E8EDEDEDECECECDBDBDBC1C1C1C5C5C5EBEBEBFBFBFBF9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEACDCDCDCACACADFDFDFEEEEEEF4F4F4F4
              F4F4F3F3F3F8F8F8F4F4F4F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F9F9F9E8E8E8EAEAEAFCFCFCFFFFFFFFFFFFFFFFFFFEFEFEEEEEEED9D9D9CFCF
              CFDDDDDDEFEFEFF0F0F0F9F9F9F8F8F8F8F8F8F9F9F9FEFEFEFFFFFFFAFAFAF1
              F1F1F4F4F4ECECECDFDFDFE7E7E7F2F2F2FDFDFDFEFEFEFAFAFAF6F6F6EBEBEB
              EFEFEFF9F9F9FAFAFAF6F6F6E7E7E7E4E4E4F2F2F2F9F9F9FDFDFDFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFF2F2F2D0D0D0C1C1C1DADADAEFEFEFF6F6F6F7F7F7
              F0F0F0F8F8F8FFFFFFFAFAFAF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E3E3
              E3FFFFFFFCFCFCF2F2F2E5E5E5E7E7E7EEEEEEEBEBEBFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5D3D3D3E7E7E7ECECECECECEC
              EAEAEAE3E3E3DEDEDED5D5D5C5C5C5C8C8C8E7E7E7FBFBFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE7E7E7CACACAC3C3C3DEDEDEF7F7F7FAFAFAF7F7F7F3
              F3F3F7F7F7F8F8F8F6F6F6FCFCFCFFFFFFFFFFFFFCFCFCFFFFFFFBFBFBF7F7F7
              EDEDEDE8E8E8F1F1F1FDFDFDFFFFFFFFFFFFFEFEFEEFEFEFDDDDDDD4D4D4E0E0
              E0F6F6F6FDFDFDF7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EF
              EFEFF0F0F0F0F0F0E6E6E6E7E7E7F1F1F1F8F8F8FBFBFBF8F8F8F3F3F3F0F0F0
              ECECECF6F6F6F7F7F7F6F6F6EEEEEEF1F1F1F9F9F9FEFEFEFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFEBEBEBC8C8C8C6C6C6E3E3E3FAFAFAFCFCFCFCFCFCF4F4F4
              F7F7F7FFFFFFF7F7F7F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DEDEDEDADA
              DAFEFEFEFBFBFBF2F2F2E5E5E5E6E6E6EFEFEFF1F1F1FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9B7B7B7D3D3D3F1F1F1F2F2F2F0F0F0
              F0F0F0EEEEEEE7E7E7E0E0E0DFDFDFECECECF9F9F9FAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE8E8E8C7C7C7C3C3C3D9D9D9F4F4F4FFFFFFFAFAFAF1F1F1F2
              F2F2F8F8F8F8F8F8F8F8F8FEFEFEFFFFFFFAFAFAFCFCFCFCFCFCFAFAFAF4F4F4
              F1F1F1F8F8F8FFFFFFFDFDFDFDFDFDFCFCFCF8F8F8E9E9E9E3E3E3E8E8E8F7F7
              F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
              F6F6F4F4F4FAFAFAEEEEEEE8E8E8EEEEEEF8F8F8FAFAFAFCFCFCF7F7F7F3F3F3
              ECECECF3F3F3F9F9F9F7F7F7F7F7F7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00F2F2F2EAEAEAC9C9C9C7C7C7EBEBEBFEFEFEFFFFFFFFFFFFFAFAFAF8F8F8
              FEFEFEFAFAFAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DFDFDFE1E1
              E1FFFFFFFFFFFFF0F0F0E3E3E3E7E7E7F0F0F0FCFCFCFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE5E5E5D1D1D1C5C5C5E7E7E7F7F7F7F3F3F3F0F0F0
              F2F2F2F2F2F2F3F3F3F6F6F6F7F7F7FAFAFAFCFCFCFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFEAEAEAD0D0D0CACACADFDFDFF1F1F1FFFFFFFFFFFFF7F7F7EFEFEFF0
              F0F0F3F3F3F4F4F4F8F8F8FFFFFFFFFFFFF3F3F3F7F7F7F6F6F6F8F8F8F4F4F4
              FAFAFAFFFFFFFFFFFFFAFAFAF9F9F9F6F6F6F1F1F1ECECECF3F3F3F7F7F7FCFC
              FCFFFFFFFFFFFFFFFFFFFBFBFBF3F3F3F3F3F3F0F0F0F0F0F0F1F1F1F1F1F1F7
              F7F7F6F6F6FFFFFFF9F9F9EDEDEDEDEDEDF7F7F7F8F8F8F9F9F9F8F8F8F6F6F6
              EFEFEFF0F0F0F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00DFDFDFDCDCDCD9D9D9EAEAEAF6F6F6F7F7F7F9F9F9FDFDFDFCFCFCFFFFFF
              FFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E3E3E3E8E8
              E8FFFFFFFEFEFEF3F3F3E6E6E6E8E8E8F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEBD4D4D4DCDCDCD6D6D6EEEEEEF9F9F9F9F9F9F8F8F8
              F3F3F3F4F4F4F7F7F7FAFAFAFAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFEDEDEDD1D1D1CFCFCFDEDEDEEEEEEEFAFAFAFFFFFFFFFFFFF1F1F1E8E8E8EB
              EBEBF2F2F2F6F6F6F9F9F9FFFFFFFFFFFFEDEDEDEDEDEDEFEFEFEFEFEFF0F0F0
              FAFAFAFFFFFFFDFDFDF3F3F3F1F1F1F1F1F1F1F1F1F7F7F7FCFCFCF3F3F3FDFD
              FDFFFFFFFFFFFFF3F3F3DCDCDCD9D9D9DCDCDCDBDBDBD8D8D8DEDEDEDADADADA
              DADAEDEDEDFFFFFFFFFFFFF3F3F3E8E8E8F1F1F1F4F4F4F6F6F6FBFBFBF9F9F9
              F8F8F8F7F7F7FBFBFBFDFDFDFCFCFCFCFCFCF4F4F4F0F0F0FFFFFFFFFFFFFFFF
              FF00}
            BackgroundOptions.GlassColor = 11786751
            BackgroundOptions.GlassTranslucency = 90
            Versoes = 'S,P,E'
            object btCaracteristicas3: TTS_SpeedButton
              Left = 1
              Top = 1
              Width = 117
              Height = 92
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Caption = '&1 - Caracteristicas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas3Click
              Versoes = 'S,P,E'
              TagStr = '0'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btCalcPreco3: TTS_SpeedButton
              Left = 1
              Top = 93
              Width = 117
              Height = 92
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&2 - Pre'#231'o de Venda'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              OnClick = btCaracteristicas3Click
              Versoes = 'P,E'
              TagStr = '1'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
            object btCustomizados3: TTS_SpeedButton
              Left = 1
              Top = 185
              Width = 117
              Height = 92
              AllowAllUp = True
              GroupIndex = 1
              Caption = '&0 - Customizados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btCaracteristicas3Click
              Versoes = 'S,P,E'
              TagStr = '2'
              RepeatedClick = False
              Border = True
              Align = alTop
            end
          end
        end
        object tsMensagens: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'Mensagens'
          ImageIndex = 4
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          Versoes = 'S,P,E'
          BevelInner = bvRaised
          BevelOuter = bvLowered
        end
        object tsEncargos: TTS_TabSheet
          HelpContext = -1
          Caption = 'Encargos'
          ImageIndex = 5
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          Versoes = 'P,E'
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Shape7: TTS_Shape
            Left = 20
            Top = 16
            Width = 186
            Height = 66
            Brush.Color = 9552605
            Pen.Style = psClear
            Shape = stRoundRect
            Versoes = 'P,E'
            Transparent = False
          end
          object TS_Shape6: TTS_Shape
            Left = 20
            Top = 6
            Width = 186
            Height = 24
            Brush.Color = 9552605
            Pen.Style = psClear
            Shape = stRoundRect
            Versoes = 'P,E'
            Transparent = False
          end
          object TS_Label8: TTS_Label
            Left = 42
            Top = 10
            Width = 76
            Height = 17
            Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
            Caption = 'Valor:'
            FocusControl = dfPrecoVenda5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblPercent: TTS_Label
            Left = 43
            Top = 57
            Width = 75
            Height = 17
            Caption = 'Percentual:'
            FocusControl = dfPerc5
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCReceita2: TTS_Label
            Left = 2
            Top = 97
            Width = 116
            Cursor = crHandPoint
            Caption = 'Conta de Receita:'
            FocusControl = cmbContaEncargo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Visible = False
            Versoes = 'E'
            FormatoTabela = False
            LinkTo = 'FrmContas'
            LinkToResult = 0
          end
          object TS_Label60: TTS_Label
            Left = 2
            Top = 173
            Width = 116
            Height = 33
            Caption = 'Descri'#231#227'o para compras:'
            FocusControl = TS_DBMemo3
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label62: TTS_Label
            Left = 9
            Top = 212
            Width = 109
            Cursor = crHandPoint
            Caption = 'Conta de Despesa:'
            FocusControl = cmbContaDespesaEnc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Visible = False
            Versoes = 'E'
            FormatoTabela = False
            LinkTo = 'FrmContas'
            LinkToResult = 0
          end
          object TS_Label5: TTS_Label
            Left = 43
            Top = 34
            Width = 68
            Height = 17
            Caption = 'ou'
            FocusControl = dfPerc5
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfPerc5: TTS_DBEditNumber
            Left = 121
            Top = 56
            Width = 72
            HelpContext = -2
            Style.BorderColor = 2382713
            TabOrder = 1
            DataField = 'PERCENTUAL'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
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
            Versoes = 'P,E'
            Height = 19
            StoredValues = 1
          end
          object dfPrecoVenda5: TTS_DBEditNumber
            Left = 121
            Top = 9
            Width = 72
            HelpContext = -2
            Style.BorderColor = 2581379
            TabOrder = 0
            DataField = 'PRECO'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
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
            Versoes = 'P,E'
            Height = 19
            StoredValues = 1
          end
          object cmbContaEncargo: TTS_DBPopupEdit
            Left = 121
            Top = 96
            Width = 215
            HelpContext = -2
            TabOrder = 2
            Visible = False
            DataField = 'lkContaVenda'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
            PopupControl = DlgPopupContas.pnPopup
            PopupFormBorderStyle = pbsSysPanel
            Versoes = 'E'
            Height = 19
          end
          object TS_DBMemo3: TTS_DBMemo
            Tag = -2
            Left = 121
            Top = 171
            Width = 213
            HelpContext = -2
            TabOrder = 3
            DataField = 'DESCRICAOCOMPRA'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
            Versoes = 'P,E'
            Height = 34
          end
          object cmbContaDespesaEnc: TTS_DBPopupEdit
            Tag = -2
            Left = 121
            Top = 211
            Width = 213
            HelpContext = -2
            TabOrder = 4
            Visible = False
            DataField = 'lkContaCusto'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
            PopupControl = DlgPopupContas.pnPopup
            PopupFormBorderStyle = pbsSysPanel
            Versoes = 'E'
            Height = 19
          end
        end
        object tsDescontos: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'Descontos'
          ImageIndex = 6
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          Versoes = 'P,E'
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Shape8: TTS_Shape
            Left = 20
            Top = 9
            Width = 213
            Height = 74
            Brush.Color = 9552605
            Pen.Style = psClear
            Shape = stRoundRect
            Versoes = 'P,E'
            Transparent = False
          end
          object TS_Label11: TTS_Label
            Left = 41
            Top = 14
            Width = 76
            Height = 17
            Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
            Caption = 'Valor:'
            FocusControl = dfPrecoVenda6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblPercent2: TTS_Label
            Left = 43
            Top = 59
            Width = 75
            Height = 17
            Caption = 'Percentual:'
            FocusControl = dfPerc6
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCReceita3: TTS_Label
            Left = 27
            Top = 113
            Width = 90
            Cursor = crHandPoint
            Caption = 'Conta:'
            FocusControl = cmbContaDesconto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Visible = False
            Versoes = 'P,E'
            FormatoTabela = False
            LinkTo = 'FrmContas'
            LinkToResult = 0
          end
          object TS_Label6: TTS_Label
            Left = 32
            Top = 38
            Width = 76
            Height = 17
            Hint = 'Permite manipular v'#225'rias tabelas de pre'#231'o'
            Caption = 'ou'
            FocusControl = dfPrecoVenda6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Versoes = 'P,E'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfPerc6: TTS_DBEditNumber
            Tag = -2
            Left = 120
            Top = 58
            Width = 81
            HelpContext = -2
            Style.BorderColor = 1985894
            TabOrder = 1
            DataField = 'PERCENTUAL'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
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
            Versoes = 'P,E'
            Height = 19
            StoredValues = 1
          end
          object dfPrecoVenda6: TTS_DBEditNumber
            Tag = -2
            Left = 120
            Top = 13
            Width = 81
            HelpContext = -2
            Style.BorderColor = 1985894
            TabOrder = 0
            DataField = 'PRECO'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
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
            Versoes = 'P,E'
            Height = 19
            StoredValues = 1
          end
          object cmbContaDesconto: TTS_DBPopupEdit
            Tag = -2
            Left = 120
            Top = 111
            Width = 242
            HelpContext = -2
            TabOrder = 2
            Visible = False
            DataField = 'lkContaVenda'
            DataSource = DMItens.C_TabelaDS
            StyleController = DMProjeto.esItens
            PopupControl = DlgPopupContas.pnPopup
            PopupFormBorderStyle = pbsSysPanel
            Versoes = 'P,E'
            Height = 19
          end
        end
        object tsSubTotais: TTS_TabSheet
          Tag = -1
          HelpContext = -1
          Caption = 'SubTotais'
          ImageIndex = 7
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          Versoes = 'P,E'
          BevelInner = bvRaised
          BevelOuter = bvLowered
        end
      end
      object DBEdit13: TDBEdit
        Left = 69
        Top = -1
        Width = 12
        Height = 19
        DataField = 'PROMOCAO'
        DataSource = DMItens.C_TabelaDS
        TabOrder = 14
        Visible = False
        OnChange = DBEdit13Change
      end
      object DBEdit12: TDBEdit
        Left = 53
        Top = -1
        Width = 12
        Height = 19
        DataField = 'HASCHILDREN'
        DataSource = DMItens.C_TabelaDS
        TabOrder = 15
        Visible = False
        OnChange = DBEdit12Change
      end
      object DBEdit4: TDBEdit
        Left = 37
        Top = -1
        Width = 12
        Height = 19
        DataField = 'BALANCO'
        DataSource = DMItens.C_TabelaDS
        TabOrder = 16
        Visible = False
        OnChange = DBEdit4Change
      end
      object DBEdit11: TDBEdit
        Left = 20
        Top = -1
        Width = 12
        Height = 19
        DataField = 'ISITEMCOMPRA'
        DataSource = DMItens.C_TabelaDS
        TabOrder = 17
        Visible = False
        OnChange = DBEdit11Change
      end
      object DBEdit2: TDBEdit
        Left = 4
        Top = -1
        Width = 12
        Height = 19
        DataField = 'ITEM'
        DataSource = DMItens.C_TabelaDS
        TabOrder = 18
        Visible = False
        OnChange = DBEdit2Change
      end
      object dfReferencia: TTS_DBEdit
        Tag = -2
        Left = 120
        Top = 84
        Width = 200
        HelpContext = -2
        TabOrder = 8
        DataField = 'REFERENCIA'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
      end
      object cmbGrupo: TTS_DBLookupComboBox
        Tag = -2
        Left = 120
        Top = 66
        Width = 200
        HelpContext = -2
        TabOrder = 5
        DataField = 'lkGrupoItem'
        DataSource = DMItens.C_TabelaDS
        ReadOnly = False
        StyleController = DMProjeto.esItens
        OnChange = cmbGrupoChange
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Versoes = 'S,P,E'
        Height = 19
        StoredValues = 64
      end
      object dfDescricaoVenda: TTS_DBPopupEdit
        Left = 120
        Top = 45
        Width = 379
        TabOrder = 4
        AutoSelect = False
        DataField = 'DESCRICAO'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        PopupControl = pnDescricoes
        PopupFormBorderStyle = pbsSysPanel
        Versoes = 'S,P,E'
        Height = 19
      end
      object dfCodigo: TTS_DBButtonEdit
        Left = 120
        Top = 24
        Width = 153
        Hint = 'gera um novo c'#243'digo automaticamente para o item'
        TabOrder = 2
        OnEnter = dfCodigoEnter
        OnExit = dfCodigoExit
        DataField = 'CODIGO'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000F0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF0087FFFFFFFFFFFF0B3087FFFFFFFFFFF0BB0087FF
              FFFFFFFF0BB3008FFFFFFFFFF0BBB008FFFFFFFFF00BBB007FFFFFFF00BBB007
              FFF0FFFFF00BBB007FF0FFFFFFF00BB007F0FFFFFFFFF00B0070FFFFFFFFFFF0
              00F0FFFFFFFFFFFFFFF0}
            Kind = bkGlyph
          end>
        ClickKey = 13
        OnButtonClick = dfCodigoButtonClick
        Versoes = 'S,P,E'
        Height = 19
        ExistButtons = True
      end
      object cmbTipoItem: TTS_DBLookupComboBox
        Tag = -2
        Left = 120
        Top = 3
        Width = 196
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = 6597328
        TabOrder = 0
        DataField = 'lkTipoItem'
        DataSource = DMItens.C_TabelaDS
        ReadOnly = False
        StyleController = DMProjeto.esItens
        OnChange = cmbTipoItemChange
        DropDownRows = 15
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        LookupKeyValue = Null
        Versoes = 'S,P,E'
        Height = 21
        StoredValues = 64
      end
      object dfDataCadastro: TTS_DBEdit
        Tag = -2
        Left = 418
        Top = 3
        Width = 80
        HelpContext = -2
        Color = 14019327
        TabOrder = 1
        TabStop = False
        DataField = 'DATACADASTRO'
        DataSource = DMItens.C_TabelaDS
        ReadOnly = True
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
        StoredValues = 64
      end
      object dfCodBarras: TTS_DBEdit
        Tag = -2
        Left = 368
        Top = 24
        Width = 130
        HelpContext = -2
        TabOrder = 3
        OnEnter = dfCodBarrasEnter
        OnExit = dfCodBarrasExit
        DataField = 'CODIGOBARRAS'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
      end
      object cbRevenda: TTS_DBCheckBox
        Left = 384
        Top = 66
        Width = 117
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 7
        TabStop = False
        Alignment = taRightJustify
        Caption = 'Item de Revenda'
        DataField = 'REVENDA'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        Versoes = 'P,E'
        DisableEdit = False
        Height = 19
        StoredValues = 1
      end
      object cbLockGrupo: TTS_CheckBox
        Left = 317
        Top = 66
        Width = 23
        Hint = 'Fixa o Grupo para inclus'#245'es em s'#233'rie'
        HelpContext = -2
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 6
        TabStop = False
        OnChange = cbLockGrupoChange
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C40E0000C40E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
          0000000000000000000000000000000000000000000000000000000000000000
          00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
          0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
          000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
          000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00BFBF00
          000000BFBF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00000000
          000000000000FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00BFBF00FFFF00FFFF00
          FFFF00FFFF00FFFF00BFBF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0000000
          808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
          80000000C0C0C0C0C0C0C0C0C000000000BFBF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00BFBF000000C0C0C0C0C0C0C0C0C0808080
          0000000000000000000000000000000000000000000000000000000000000000
          00808080C0C0C0C0C0C0C0C0C080808000000000000000000000000000000000
          0000000000000000000000000000000000808080C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0C0
          C0C0C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0000000808080C0
          C0C0808080000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000C0C0C0000000808080C0C0C0808080000000C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C000000000
          0000000000C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0000000808080C0C0C0000000000000000000C0C0C0808080000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080C0C0C0C0
          C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000808080C0C0C0C0C0C0C0C0C0808080000000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000
          0000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0000000000000000000000000000000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        GlyphCount = 2
        Versoes = 'S,P,E'
        DisableEdit = False
        Height = 19
      end
      object dfABC: TTS_DBImageEdit
        Left = 461
        Top = 84
        Width = 38
        TabOrder = 9
        DataField = 'ABC'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        Descriptions.Strings = (
          'A'
          'B'
          'C')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'A'
          'B'
          'C')
        Height = 19
      end
      object df_Foto: TdxGraphicEdit
        Tag = -2
        Left = 660
        Top = 3
        Width = 128
        Cursor = crHandPoint
        HelpContext = -2
        PopupMenu = ppmFoto
        TabOrder = 19
        TabStop = False
        OnClick = df_FotoClick
        Anchors = [akTop, akRight]
        StyleController = DMProjeto.esItens
        GraphicTransparency = gtTransparent
        Stretch = True
        ToolbarLayout.Buttons = []
        ToolbarLayout.IsPopupMenu = False
        ToolbarLayout.ShowCaptions = False
        ToolbarLayout.Visible = False
        ToolbarPosStored = False
        Height = 96
      end
      object cmbGenero: TTS_DBLookupComboBox
        Left = 120
        Top = 103
        Width = 381
        HelpContext = -2
        TabOrder = 10
        Visible = False
        DataField = 'lkGeneros'
        DataSource = DMItens.C_TabelaDS
        ReadOnly = False
        StyleController = DMProjeto.esItens
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Versoes = 'S,P,E'
        Height = 19
        StoredValues = 64
      end
      object cmbOrigem: TTS_DBLookupComboBox
        Left = 120
        Top = 122
        Width = 381
        HelpContext = -2
        TabOrder = 11
        Visible = False
        DataField = 'lkOrigem'
        DataSource = DMItens.C_TabelaDS
        ReadOnly = False
        StyleController = DMProjeto.esItens
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Versoes = 'S,P,E'
        Height = 19
        StoredValues = 64
      end
      object TS_DBEdit5: TTS_DBEdit
        Tag = -2
        Left = 590
        Top = 100
        Width = 24
        HelpContext = -2
        TabOrder = 20
        DataField = 'IPPT'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
      end
      object TS_DBEdit6: TTS_DBEdit
        Tag = -2
        Left = 590
        Top = 118
        Width = 24
        HelpContext = -2
        TabOrder = 21
        DataField = 'IAT'
        DataSource = DMItens.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
      end
      object pnItensCodigos: TTS_Panel
        Left = 296
        Top = 43
        Width = 201
        Height = 116
        BevelOuter = bvNone
        Color = 9552605
        TabOrder = 22
        Visible = False
        Versoes = 'P,E'
        DesignSize = (
          201
          116)
        object dbgItensCodigos: TTS_QDBGrid
          Tag = -2
          Left = 3
          Top = 2
          Width = 195
          Height = 112
          HelpContext = -2
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODIGO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          AutoSearchColor = 6611199
          AutoSearchTextColor = clBlue
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = DMItens.C_ItensCodigosDS
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnChangeNode = dbgItensCodigosChangeNode
          OnColumnSorting = dbgTabelaPrecoColumnSorting
          OnEditing = dbgItensCodigosEditing
          Anchors = [akLeft, akTop, akRight, akBottom]
          TS_PermitirQuantidade = False
          TS_DescriptionCanChange = False
          TS_GridMenuOptions = []
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
          TS_SelectedColumn = 'CODIGO'
          TS_ID = 0
          TS_TipoDescricao = tdVenda
          TS_SummaryFooterQtdText = 'Codigo:'
          TS_SummaryFooterQtdSelectedText = 'Codigo de Barras:'
          object dbgCodigoCodigoBarras: TdxDBGridCalcColumn
            Caption = 'C'#243'digo de Barras'
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 109
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
          end
          object dbgItensCodigosUnidade: TdxDBGridLookupColumn
            Caption = 'Unidade'
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'lkunidade'
          end
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 792
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 929
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 50
      Caption = 'Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 890
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 595
    Top = 286
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 564
    Top = 35
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 246
    Top = 153
    object FormaodeCusto1: TMenuItem [0]
      Caption = 'Forma'#231#227'o de Custo'
      ShortCut = 16454
      OnClick = TS_SpeedButton1Click
    end
    object EstatsticasdeVenda1: TMenuItem [1]
      Caption = 'Estat'#237'sticas de Venda'
      ShortCut = 16433
      OnClick = btComando1Click
    end
    object ltimasVendas1: TMenuItem [2]
      Caption = #218'ltimas Vendas'
      ShortCut = 16434
      OnClick = btComando2Click
    end
    object ltimosFornecimentos1: TMenuItem [3]
      Caption = #218'ltimos Fornecimentos'
      ShortCut = 16435
      OnClick = btUltimosFornecClick
    end
    object OutrasOpes1: TMenuItem [4]
      Caption = 'Outras Op'#231#245'es'
      ShortCut = 16436
      OnClick = btOutrosClick
    end
    object SubItens1: TMenuItem [5]
      Caption = 'Sub Itens'
      ShortCut = 16437
      OnClick = btSubItensClick
    end
    object N12: TMenuItem [6]
      Caption = '-'
    end
  end
  inherited ImgPadrao: TImageList
    Left = 786
    Top = 389
  end
  inherited FormComponent: TFormComponent
    BeforeSave = FormComponentBeforeSave
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'dfCodigo'
      'dfDescricaoVenda'
      'cmbOrigem;tipoitem=1'
      'dfNCM;tipoitem=1'
      'cmbTipoTributacao;tipoitem=1'
      'cmbCST;tipoitem=1'
      'cmbModBaseCalc;tipoitem=1'
      'cmbConta;tipoitem=1'
      'cmbContaCusto;tipoitem=1'
      'cmbContaInvent;tipoitem=1'
      'cmbCSTPISCOFINS;tipoitem=1'
      'cmbTribFederal;tipoitem=1'
      'cmbCSTIPI;tipoitem=1'
      'cmbCSTPISCOFINSSaida;tipoitem=1'
      'cmbContaSemInvent;tipoitem=2'
      'cmbContaServico;tipoitem=3'
      'cmbContaEncargo;tipoitem=5'
      'cmbContaDesconto;tipoitem=6'
      'cmbContaDespesaEnc;tipoitem=5'
      'cmbContaDespesaSem;tipoitem=2'
      'cmbContaDespesaServ;tipoitem=3'
      ''
      ''
      '')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Itens'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    OnRefresh = FormComponentRefresh
    FirstEditField = dfCodigo
    FirstSearchField = dfDescricaoVenda
    Left = 152
    Top = 90
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 665
    Top = 464
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    OnPopup = ppmGrupoPopup
    Left = 633
    Top = 147
  end
  inherited Beep: TBTBeeper
    Left = 744
    Top = 448
  end
  inherited FormStorage: TFormStorage
    StoredProps.Strings = (
      'FormComponent.FirstEditField'
      'FormComponent.FirstSearchField')
    Left = 738
    Top = 514
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 652
    Top = 536
  end
  object ppmFiscal: TTS_PopupMenu
    Left = 564
    Top = 103
    object ConsiderarFiscaldoGrupo: TMenuItem
      Caption = 'Considerar Valor do Grupo'
      OnClick = ConsiderarFiscaldoGrupoClick
    end
  end
  object ppmIrPara: TTS_PopupMenu
    OnPopup = ppmIrParaPopup
    Left = 511
    Top = 90
    object ltimoGravado1: TMenuItem
      Caption = #218'ltimo Gravado'
      OnClick = ltimoGravado1Click
    end
    object CadastradosHoje1: TMenuItem
      Caption = 'Cadastrados'
      object Hoje1: TMenuItem
        Caption = 'Hoje'
        OnClick = Hoje1Click
      end
      object Ontem1: TMenuItem
        Caption = 'Ontem'
        OnClick = Ontem1Click
      end
      object EstaSemana1: TMenuItem
        Caption = 'Esta Semana'
        OnClick = EstaSemana1Click
      end
      object EstaQuinzena1: TMenuItem
        Caption = 'Esta Quinzena'
        OnClick = EstaQuinzena1Click
      end
      object EsteMs1: TMenuItem
        Caption = 'Este M'#234's'
        OnClick = EsteMs1Click
      end
      object EsteBimestre1: TMenuItem
        Caption = 'Este Bimestre'
        OnClick = EsteBimestre1Click
      end
      object EsteSemestre1: TMenuItem
        Caption = 'Este Semestre'
        OnClick = EsteSemestre1Click
      end
      object EsteAno1: TMenuItem
        Caption = 'Este Ano'
        OnClick = EsteAno1Click
      end
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object ItensPromocao: TMenuItem
      Caption = 'Itens em Promo'#231#227'o'
      OnClick = ItensPromocaoClick
    end
    object ItensCompostos: TMenuItem
      Caption = 'Itens Compostos (com Sub Itens)'
      OnClick = ItensCompostosClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Itenscom1: TMenuItem
      Caption = 'Itens que est'#227'o:'
    end
    object ItensFatorLucroInadequado: TMenuItem
      Caption = '(a). com Fator de Lucro Inadequado'
      OnClick = ItensFatorLucroInadequadoClick
    end
    object ItensComPrecoDandoPrejuizo: TMenuItem
      Caption = '(b). com Pre'#231'os dando Preju'#237'zo'
      OnClick = ItensComPrecoDandoPrejuizoClick
    end
    object ItensComPrecoDiferenteDoCalculado: TMenuItem
      Caption = '(c). com Pre'#231'os diferentes do Pre'#231'o Calculado'
      OnClick = ItensComPrecoDiferenteDoCalculadoClick
    end
    object ItensSemCustoMedioInformado: TMenuItem
      Caption = '(d). sem Custo M'#233'dio Informado'
      OnClick = ItensSemCustoMedioInformadoClick
    end
    object ItensComCompensacao: TMenuItem
      Caption = '(e). com Compensa'#231#227'o de Custo informado'
      OnClick = ItensComCompensacaoClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object EstoqueemPontodePedido1: TMenuItem
      Caption = '(f). com Estoque em Ponto de Pedido'
      OnClick = EstoqueemPontodePedido1Click
    end
    object EstoqueabaixodoMnimo1: TMenuItem
      Caption = '(g). com Estoque abaixo do M'#237'nimo'
      OnClick = EstoqueabaixodoMnimo1Click
    end
    object comEstoqueacimadoMximo1: TMenuItem
      Caption = '(h). com Estoque acima do M'#225'ximo'
      OnClick = comEstoqueacimadoMximo1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object ComissoInformada1: TMenuItem
      Caption = '(i). com Comiss'#227'o Informada'
      OnClick = ComissoInformada1Click
    end
    object DescontoMximoInformado1: TMenuItem
      Caption = '(j). com Desconto M'#225'ximo Informado'
      OnClick = DescontoMximoInformado1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object SemGrupo1: TMenuItem
      Caption = '(L). sem Grupo'
      OnClick = SemGrupo1Click
    end
    object SemFabricante1: TMenuItem
      Caption = '(m). sem Fabricante'
      OnClick = SemFabricante1Click
    end
    object SemFornecedorPreferencial1: TMenuItem
      Caption = '(n). sem Fornecedor Preferencial'
      OnClick = SemFornecedorPreferencial1Click
    end
    object Desativados1: TMenuItem
      Caption = '(o). Desativados'
      OnClick = Desativados1Click
    end
  end
  object ppmOutros: TTS_PopupMenu
    Left = 636
    Top = 107
    object AjustedeItens1: TMenuItem
      Caption = 'Ajuste de Estoque de Itens'
      OnClick = AjustedeItens1Click
    end
    object CalcularEstoqueMnimo1: TMenuItem
      Caption = 'Calcular Estoque M'#237'nimo'
      OnClick = CalcularEstoqueMnimo1Click
    end
    object QuantidadesdosLotesexistentes2: TMenuItem
      Caption = 'Quantidades dos Lotes existentes'
      OnClick = QuantidadesdosLotesexistentes2Click
    end
    object EstoquesporAlmoxarifado1: TMenuItem
      Caption = 'Estoques por Almoxarifado'
      OnClick = EstoquesporAlmoxarifado1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ReajustedePreos1: TMenuItem
      Caption = 'Reajuste de Pre'#231'os'
      OnClick = ReajustedePreos1Click
    end
    object DefinirPromocao1: TMenuItem
      Caption = 'Definir Promo'#231#227'o'
      OnClick = DefinirPromocao1Click
    end
    object AtualizarPreosCalculados1: TMenuItem
      Caption = 'Atualizar Pre'#231'os Calculados'
      OnClick = AtualizarPreosCalculados1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Memorizar1: TMenuItem
      Caption = 'Memorizar'
      OnClick = Memorizar1Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object ExportaoMabel1: TMenuItem
      Caption = '&Exporta'#231#227'o Mabel'
      OnClick = ExportaoMabel1Click
    end
  end
  object imgsPreco: TImageList
    DrawingStyle = dsTransparent
    Height = 32
    Masked = False
    Width = 32
    Left = 726
    Top = 113
    Bitmap = {
      494C010104000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000000000007B7B0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B000000000000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000007B7B0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B000000000000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000007B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00007B7B000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000000000000000007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000007B7B00007B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00007B7B00007B7B000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000007B7B7B0000FF
      FF0000FFFF0000FFFF000000000000000000FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000007B
      7B00007B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00007B
      7B00007B7B00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B0000000000000000000000000000FF
      FF0000FFFF0000FFFF007B7B7B0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000000000007B7B7B0000FF
      FF0000FFFF0000FFFF0000000000000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B00007B7B00007B7B00007B7B00007B7B
      00007B7B000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      00007B7B00007B7B00007B7B00007B7B00007B7B000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000007B7B00007B7B00007B7B00007B7B00007B7B00007B7B000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000007B7B7B0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B000000FFFF0000FFFF0000FFFF0000FFFF007B7B000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B000000FFFF0000FFFF007B0000007B0000007B0000007B00
      000000FFFF0000FFFF007B7B000000FFFF0000FFFF007B7B000000FFFF0000FF
      FF007B0000007B0000007B0000007B00000000FFFF0000FFFF007B7B000000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF007B7B000000FFFF0000FFFF007B000000FFFF0000FFFF0000FFFF0000FFFF
      00007B00000000FFFF0000FFFF0000FFFF007B7B000000FFFF0000FFFF007B00
      0000FFFF0000FFFF0000FFFF0000FFFF00007B00000000FFFF0000FFFF007B7B
      000000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF007B7B
      000000FFFF0000FFFF007B000000FFFF00000000FF00FF00FF000000FF00FF00
      FF00FFFF00007B00000000FFFF007B7B000000FFFF0000FFFF007B000000FFFF
      0000FF00FF000000FF00FF00FF000000FF00FFFF00007B00000000FFFF0000FF
      FF007B7B000000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF007B7B
      000000FFFF007B000000FFFF00000000FF00FF00FF000000FF00FF00FF000000
      FF00FF00FF00FFFF00007B00000000FFFF007B7B00007B000000FFFF0000FF00
      FF000000FF00FF00FF000000FF00FF00FF000000FF00FFFF00007B00000000FF
      FF007B7B000000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000007B7B7B007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000007B7B7B007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF007B7B
      000000FFFF007B000000FFFF0000FF00FF000000FF00FFFF0000FFFF0000FF00
      FF000000FF00FFFF00007B0000007B7B000000FFFF007B000000FFFF00000000
      FF00FF00FF00FFFF0000FFFF00000000FF00FF00FF00FFFF00007B00000000FF
      FF007B7B000000FFFF0000FFFF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF007B7B7B0000FFFF007B7B
      000000FFFF007B000000FFFF00000000FF00FF00FF00FFFF0000FFFF00000000
      FF00FF00FF00FFFF00007B00000000FFFF007B7B00007B000000FFFF0000FF00
      FF000000FF00FFFF0000FFFF0000FF00FF000000FF00FFFF00007B00000000FF
      FF007B7B000000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF007B7B
      000000FFFF007B000000FFFF0000FF00FF000000FF00FF00FF000000FF00FF00
      FF000000FF00FFFF00007B0000007B7B000000FFFF007B000000FFFF00000000
      FF00FF00FF000000FF00FF00FF000000FF00FF00FF00FFFF00007B00000000FF
      FF007B7B000000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF007B7B
      000000FFFF0000FFFF007B000000FFFF0000FF00FF000000FF00FF00FF000000
      FF00FFFF00007B00000000FFFF0000FFFF007B7B000000FFFF007B000000FFFF
      00000000FF00FF00FF000000FF00FF00FF00FFFF00007B00000000FFFF0000FF
      FF007B7B000000FFFF007B7B7B00FF00FF00FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000FF00FF007B7B7B0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF007B7B000000FFFF0000FFFF007B000000FFFF0000FFFF0000FFFF0000FFFF
      00007B00000000FFFF0000FFFF007B7B000000FFFF0000FFFF0000FFFF007B00
      0000FFFF0000FFFF0000FFFF0000FFFF00007B00000000FFFF0000FFFF007B7B
      000000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF007B7B000000FFFF0000FFFF007B0000007B0000007B0000007B00
      000000FFFF0000FFFF007B7B000000FFFF0000FFFF007B7B000000FFFF0000FF
      FF007B0000007B0000007B0000007B00000000FFFF0000FFFF007B7B000000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000000000FF00FF00FF00FF007B7B7B0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
      7B0000FFFF0000FFFF007B7B000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF007B7B000000FFFF0000FFFF0000FFFF0000FFFF007B7B000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B000000FFFF0000FF
      FF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B0000FFFF0000FFFF007B7B00007B7B00007B7B00007B7B00007B7B
      00007B7B000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      00007B7B00007B7B00007B7B00007B7B00007B7B000000FFFF0000FFFF007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007B7B7B0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B7B7B00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF007B7B7B007B7B7B00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B007B7B7B007B7B
      7B0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF007B7B7B007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000FFF80FFF00000000
      0000000000000000FFC001FF000000000000000000000000FF00007F00000000
      0000000000000000FE00003F000000000000000000000000FC00001F00000000
      0000000000000000F800000F000000000000000000000000F000000700000000
      0000000000000000E0000003000000000000000000000000E000000300000000
      0000000000000000C0000001000000000000000000000000C000000100000000
      0000000000000000C00000010000000000000000000000008000000000000000
      0000000000000000800000000000000000000000000000008000000000000000
      0000000000000000800000000000000000000000000000008000000000000000
      0000000000000000800000000000000000000000000000008000000000000000
      000000000000000080000000000000000000000000000000C000000100000000
      0000000000000000C0000001000000000000000000000000C000000100000000
      0000000000000000C0000003000000000000000000000000E000000300000000
      0000000000000000F0000007000000000000000000000000F800000F00000000
      0000000000000000FC00001F000000000000000000000000FE00003F00000000
      0000000000000000FF00007F000000000000000000000000FFC001FF00000000
      0000000000000000FFF80FFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ppmFoto: TTS_PopupMenu
    Left = 723
    Top = 60
    object CarregarFoto1: TMenuItem
      Caption = 'Carregar Foto'
      OnClick = CarregarFoto1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimparFoto1: TMenuItem
      Caption = 'Limpar Foto'
      OnClick = LimparFoto1Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object ExpandirFoto1: TMenuItem
      Caption = '&Expandir Foto'
      OnClick = ExpandirFoto1Click
    end
  end
  object ppmGrupo: TTS_PopupMenu
    OnPopup = ppmGrupoPopup
    Left = 547
    Top = 9
    object ConsiderarPercentualdoGrupo1: TMenuItem
      Caption = 'Considerar Percentual do Grupo'
      OnClick = ConsiderarPercentualdoGrupo1Click
    end
  end
  object pdFoto: TOpenPictureDialog
    DefaultExt = 'bmp'
    Title = 'Escolher Foto'
    Left = 709
    Top = 8
  end
  object ppmUnidades: TTS_PopupMenu
    Left = 657
    Top = 7
    object Adicionar1: TMenuItem
      Caption = 'Incluir'
      OnClick = Adicionar1Click
    end
  end
  object ppmFoco: TTS_PopupMenu
    Left = 424
    Top = 32
    object Cdigo2: TMenuItem
      Caption = 'C'#243'digo'
      OnClick = Cdigo1Click
    end
    object DescriodeVenda2: TMenuItem
      Caption = 'Descri'#231#227'o de Venda'
      OnClick = DescriodeVenda1Click
    end
    object CdigoBarras2: TMenuItem
      Caption = 'C'#243'digo Barras'
      OnClick = CdigoBarras1Click
    end
    object Grupo2: TMenuItem
      Caption = 'Grupo'
      OnClick = Grupo1Click
    end
    object Referncia2: TMenuItem
      Caption = 'Refer'#234'ncia'
      OnClick = Referncia1Click
    end
  end
end

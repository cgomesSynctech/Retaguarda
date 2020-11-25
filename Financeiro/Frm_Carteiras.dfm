inherited FrmCarteiras: TFrmCarteiras
  Left = 398
  Top = 77
  Width = 683
  Height = 542
  Caption = 'Financeiro'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label21: TTS_Label [0]
    Left = 40
    Top = 193
    Width = 65
    Caption = 'Cedente:'
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label22: TTS_Label [1]
    Left = 328
    Top = 192
    Width = 73
    Caption = 'Tipo cedente:'
    FormatoTabela = False
    LinkToResult = 0
  end
  inherited pnNavigator: TTS_Panel
    Left = 552
    Height = 460
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 426
    end
  end
  inherited pnDados: TTS_Panel
    Width = 552
    Height = 460
    inherited Grid: TTS_QDBGrid
      Width = 550
      Height = 458
      KeyField = 'CARTEIRA'
      DataSource = DMCarteiras.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMEROCARTEIRA'
      object GridCARTEIRA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARTEIRA'
      end
      object GridNUMEROCARTEIRA: TdxDBGridMaskColumn
        Caption = 'N'#186' Carteira'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROCARTEIRA'
      end
      object GridDescConta: TdxDBGridLookupColumn
        Caption = 'Conta Banc'#225'ria'
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DescConta'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridDIGITOCODIGO: TdxDBGridMaskColumn
        Caption = 'DV'
        HeaderAlignment = taCenter
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIGITOCODIGO'
      end
      object GridAGENCIA: TdxDBGridMaskColumn
        Caption = 'Ag'#234'ncia'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGENCIA'
      end
      object GridLOCALDEPAGAMENTO: TdxDBGridMaskColumn
        Caption = 'Local de Pagamento'
        HeaderAlignment = taCenter
        Visible = False
        Width = 211
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALDEPAGAMENTO'
      end
      object GridESPECIE: TdxDBGridMaskColumn
        Caption = 'Esp'#233'cie'
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESPECIE'
      end
      object GridESPECIEDOC: TdxDBGridMaskColumn
        Caption = 'Esp'#233'cie Doc.'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESPECIEDOC'
      end
      object GridACEITE: TdxDBGridMaskColumn
        Caption = 'Aceite'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACEITE'
      end
      object GridNOSSONUMERO: TdxDBGridMaskColumn
        Caption = 'Nosso N'#250'mero'
        HeaderAlignment = taCenter
        Visible = False
        Width = 269
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOSSONUMERO'
      end
      object GridQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object GridINSTRUCOES: TdxDBGridMaskColumn
        Caption = 'Instru'#231#245'es'
        HeaderAlignment = taCenter
        Visible = False
        Width = 10598
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSTRUCOES'
      end
      object GridCOBRAREMISSAO: TdxDBGridCheckColumn
        Caption = 'Cobrar Emiss'#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COBRAREMISSAO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GridTARIFAEMISSAO: TdxDBGridCurrencyColumn
        Caption = 'Tarifa Emiss'#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TARIFAEMISSAO'
        DisplayFormat = ',0.00;-,0.00'
        Nullable = False
      end
      object GridPREIMPRESSO: TdxDBGridCheckColumn
        Caption = 'Pr'#233'-Impresso'
        HeaderAlignment = taCenter
        MinWidth = 20
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PREIMPRESSO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 550
      Height = 458
    end
    inherited sbDados: TTS_Panel
      Width = 550
      Height = 458
      Color = 15724519
      object TS_Label1: TTS_Label
        Left = 40
        Top = 22
        Width = 65
        Caption = 'N'#186' Carteira:'
        FocusControl = dfCarteira
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 10
        Top = 66
        Width = 95
        Caption = 'Tipo Carteira:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 40
        Top = 88
        Width = 65
        Caption = 'Esp'#233'cie Doc.:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 40
        Top = 110
        Width = 65
        Caption = 'Aceite:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 40
        Top = 221
        Width = 65
        Caption = 'Ag'#234'ncia:'
        FocusControl = dfAgencia
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 2
        Top = 243
        Width = 103
        Caption = 'C'#243'digo Cedente:'
        FocusControl = dfCodigo
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 8
        Top = 265
        Width = 97
        Caption = 'Nosso N'#250'mero:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label9: TTS_Label
        Left = 8
        Top = 287
        Width = 97
        Caption = 'Quantidade:'
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = -24
        Top = 309
        Width = 129
        Caption = 'Local de Pagamento:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label11: TTS_Label
        Left = 24
        Top = 331
        Width = 81
        Caption = 'Instru'#231#245'es:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label12: TTS_Label
        Left = 24
        Top = 176
        Width = 81
        Cursor = crHandPoint
        Caption = 'Conta Banc'#225'ria:'
        FocusControl = cmbBanco
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmContas'
        LinkToResult = 0
        OnSetParametrosForm = TS_Label12SetParametrosForm
      end
      object TS_Label2: TTS_Label
        Left = 168
        Top = 285
        Width = 154
        Caption = '% de Juros ao dia por atraso:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label13: TTS_Label
        Left = 243
        Top = 241
        Width = 11
        Alignment = taCenter
        Caption = '-'
        FocusControl = dfDigitoCodigo
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label14: TTS_Label
        Left = 214
        Top = 219
        Width = 209
        Alignment = taLeftJustify
        Caption = '(Agencia (4)  e DV)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label15: TTS_Label
        Left = 288
        Top = 242
        Width = 321
        Alignment = taLeftJustify
        Caption = '(Opera'#231#227'o (3) + C/C (8) + DV)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label16: TTS_Label
        Left = 2
        Top = 44
        Width = 103
        Caption = 'Tipo Documento:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label17: TTS_Label
        Left = 100
        Top = 224
        Width = 11
        Alignment = taCenter
        Caption = '-'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label18: TTS_Label
        Left = 2
        Top = 200
        Width = 103
        Caption = 'Conv'#234'nio'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label19: TTS_Label
        Left = 40
        Top = 131
        Width = 65
        Caption = 'Cedente:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label20: TTS_Label
        Left = 328
        Top = 133
        Width = 73
        Caption = 'Tipo cedente:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label23: TTS_Label
        Left = 8
        Top = 154
        Width = 97
        Caption = 'Sacador/Avalista:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label24: TTS_Label
        Left = 328
        Top = 153
        Width = 73
        Caption = 'Tipo sacador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfCarteira: TTS_DBEdit
        Left = 108
        Top = 19
        Width = 57
        TabOrder = 0
        OnExit = dfCarteiraExit
        DataField = 'NUMEROCARTEIRA'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfAgencia: TTS_DBEdit
        Left = 108
        Top = 218
        Width = 57
        TabOrder = 11
        DataField = 'AGENCIA'
        DataSource = DMCarteiras.C_TabelaDS
        MaxLength = 4
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object dfAceite: TTS_DBEdit
        Left = 108
        Top = 107
        Width = 20
        TabOrder = 5
        DataField = 'ACEITE'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfCodigo: TTS_DBEdit
        Left = 108
        Top = 240
        Width = 131
        TabOrder = 13
        DataField = 'CODIGO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfNossoNumero: TTS_DBEdit
        Left = 108
        Top = 262
        Width = 115
        TabOrder = 15
        DataField = 'NOSSONUMERO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfQuantidade: TTS_DBEdit
        Left = 108
        Top = 284
        Width = 59
        TabOrder = 16
        Visible = False
        DataField = 'QUANTIDADE'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfLocalPag: TTS_DBEdit
        Left = 108
        Top = 306
        Width = 313
        TabOrder = 18
        DataField = 'LOCALDEPAGAMENTO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfInstrucoes: TTS_DBMemo
        Left = 108
        Top = 328
        Width = 313
        TabOrder = 19
        DataField = 'INSTRUCOES'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        Height = 78
      end
      object cmbBanco: TTS_DBLookupComboBox
        Left = 108
        Top = 173
        Width = 216
        TabOrder = 8
        DataField = 'DescConta'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object dfJurosInstrucoes: TTS_DBEditNumber
        Left = 326
        Top = 283
        Width = 80
        TabOrder = 17
        DataField = 'JUROSINSTRUCOES'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
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
      object cbCobrarEmissao: TTS_DBCheckBox
        Left = 108
        Top = 409
        Width = 201
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 20
        Caption = 'Cobrar tarifa de emiss'#227'o de carn'#234' de '
        DataField = 'COBRAREMISSAO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnChange = cbCobrarEmissaoChange
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object edTarifaEmissao: TTS_DBEditNumber
        Left = 309
        Top = 410
        Width = 68
        TabOrder = 21
        DataField = 'TARIFAEMISSAO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
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
      object ckbPreImpresso: TTS_DBCheckBox
        Left = 167
        Top = 17
        Width = 110
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 1
        Caption = ' Pr'#233'-Impresso'
        DataField = 'PREIMPRESSO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 21
      end
      object dfDigitoCodigo: TTS_DBEdit
        Left = 255
        Top = 239
        Width = 21
        TabOrder = 14
        DataField = 'DIGITOCODIGO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBMaskEdit1: TTS_DBMaskEdit
        Left = 403
        Top = 173
        Width = 120
        TabOrder = 9
        Visible = False
        EditMask = '9999\.999\.99999999\-9;1;_'
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esFinanceiro
        Height = 19
        StoredValues = 4
      end
      object dfEspecieDoc: TTS_DBImageEdit
        Left = 108
        Top = 85
        Width = 156
        TabOrder = 4
        DataField = 'ESPECIEDOC'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        Descriptions.Strings = (
          'Duplicata Mercantil'
          'Duplicata de Servi'#231'o'
          'Nota Promiss'#243'ria')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'DM'
          'DS'
          'NP')
        Height = 19
      end
      object DfTipoDocumento: TTS_DBImageEdit
        Left = 108
        Top = 41
        Width = 282
        TabOrder = 2
        DataField = 'NUMEROCARTEIRA'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        OnChange = DfTipoDocumentoChange
        Descriptions.Strings = (
          'Caixa (Sem Registro)'
          'Caixa (Cobran'#231'a R'#225'pida)'
          'Banco do Brasil (Conv'#234'nio de 6 , 7 ou 8 D'#237'gitos)'
          'Ita'#250' (Sem Registro) - 175'
          'Ita'#250' (Sem Registro) - 174'
          'Ita'#250' (Sem Registro) - 178'
          'Ita'#250' (Sem Registro) - 104'
          'Ita'#250' (Sem Registro) - 109'
          'Bradesco (Sem Registro) - 06'
          'Bradesco (Sem Registro) - 03'
          'Bradesco (Sem Registro) - 09'
          'Santander 033 (Antigo 353 - Sem Registro)'
          'Santander Banespa 033 (Sem Registro)'
          'Real (Sem Registro)')
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
          '13')
        Values.Strings = (
          '8'
          '1'
          '18'
          '175'
          '174'
          '178'
          '104'
          '109'
          '06'
          '03'
          '09'
          '102'
          'COB'
          '57')
        Height = 19
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 183
        Top = 217
        Width = 21
        TabOrder = 12
        DataField = 'DIGITOAGENCIA'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 108
        Top = 196
        Width = 131
        TabOrder = 10
        DataField = 'CONVENIO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        DistinctEditOn = False
        Height = 19
      end
      object dfFavorecido: TTS_DBEditFavorecido
        Tag = -2
        Left = 108
        Top = 129
        Width = 216
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
        Style.BorderColor = 13223591
        Style.ButtonStyle = btsFlat
        TabOrder = 6
        DataField = 'F_NOME'
        DataSource = DMCarteiras.C_TabelaDS
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
              0707070704FEFC00070207070707070707070704FEFC00070701070707070707
              0707FCFEFC0007070781070707000000000707A4000707070701070700060606
              0600A4A40707070707010707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
              FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
              FEFE06000707070707A007FEFFFFFFFEFEFE000707070707070107A4FFFFFFFE
              FE060707070707070701070707A4A4A400070707070707070701070707070707
              07070707070707070701}
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
              0707070707070701C8010707070707070707070707070701CD01070707070700
              00000707070707000800070707070700FC00070707070701EA01070707070700
              FC000707070707006900070700000000FC000000000707000600070700FCFCFC
              FCFCFCFC000707011B02070700000000FC00000000070700E700070707070700
              FC00070707070701EB01070707070700FC000707070707021B02070707070700
              0000070707070700E70007070707070707070707070707009D00070707070707
              0707070707070700E700}
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
        ChaveEstrangeira = 'IDCEDENTE'
        Height = 19
        ExistButtons = True
      end
      object cmbTipoFav: TTS_DBLookupTipoFav
        Tag = -2
        Left = 403
        Top = 129
        Width = 120
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style.BorderColor = 13223591
        TabOrder = 7
        AutoSize = False
        StyleController = DMProjeto.esClientes
        DropDownRows = 15
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = -1
        Height = 19
      end
      object TS_DBCheckBox1: TTS_DBCheckBox
        Left = 108
        Top = 431
        Width = 270
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 22
        Caption = 'Imagem para boleto de remessa'
        DataField = 'IMGBOLETOIMPRESSO'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 21
      end
      object DFTipoCarteira: TTS_DBImageEdit
        Left = 108
        Top = 63
        Width = 156
        TabOrder = 3
        DataField = 'ESPECIE'
        DataSource = DMCarteiras.C_TabelaDS
        StyleController = DMProjeto.esFinanceiro
        Descriptions.Strings = (
          'Sem Registro'
          'Com Registro')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'SR'
          'SG')
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 550
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 667
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 257
      Caption = 'Carteiras - Boleto Banc'#225'rio'
      Effect3D.ShadowedColor = 13223591
    end
    inherited btHelp: TTS_SpeedButton
      Left = 636
    end
  end
  object dfFavorecidoAvalista: TTS_DBEditFavorecido [5]
    Tag = -2
    Left = 109
    Top = 195
    Width = 216
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
    Style.BorderColor = 13223591
    Style.ButtonStyle = btsFlat
    TabOrder = 3
    DataField = 'FS_NOME'
    DataSource = DMCarteiras.C_TabelaDS
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
          0707070704FEFC00070207070707070707070704FEFC00070701070707070707
          0707FCFEFC0007070781070707000000000707A4000707070701070700060606
          0600A4A40707070707010707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
          FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
          FEFE06000707070707A007FEFFFFFFFEFEFE000707070707070107A4FFFFFFFE
          FE060707070707070701070707A4A4A400070707070707070701070707070707
          07070707070707070701}
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
          0707070707070701C8010707070707070707070707070701CD01070707070700
          00000707070707000800070707070700FC00070707070701EA01070707070700
          FC000707070707006900070700000000FC000000000707000600070700FCFCFC
          FCFCFCFC000707011B02070700000000FC00000000070700E700070707070700
          FC00070707070701EB01070707070700FC000707070707021B02070707070700
          0000070707070700E70007070707070707070707070707009D00070707070707
          0707070707070700E700}
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
    LookupTipoFav = cmbTipoFavAvalista
    SelecionarVarios = False
    C_Localizar = DMProjeto.C_LocalizarFav
    ID = 0
    ChaveEstrangeira = 'IDSACADOR'
    Height = 19
    ExistButtons = True
  end
  object cmbTipoFavAvalista: TTS_DBLookupTipoFav [6]
    Tag = -2
    Left = 404
    Top = 195
    Width = 120
    Hint = 
      'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
      ' de edi'#231#227'o ao lado.'
    HelpContext = -2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Style.BorderColor = 13223591
    TabOrder = 4
    AutoSize = False
    StyleController = DMProjeto.esClientes
    DropDownRows = 15
    ListFieldName = 'DESCRICAO'
    KeyFieldName = 'TIPOFAVORECIDO'
    ListSource = DMProjeto.C_TipoFavDS
    LookupKeyValue = Null
    TipoFavorecido = -1
    Height = 19
  end
  inherited DlgMsg: TDlgMsg
    Left = 412
    Top = 2
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 380
    Top = 34
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 444
    Top = 34
  end
  inherited ImgPadrao: TImageList
    Left = 508
    Top = 2
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msFinanceiro
    CamposObrigatorios.Strings = (
      'dfCarteira'
      'cmbBanco'
      'dfCodigo'
      'dfDigitoCodigo'
      'dfAgencia')
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Carteiras - Boleto Banc'#225'rio'
    FirstEditField = dfCarteira
    Left = 444
    Top = 2
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 476
    Top = 34
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 508
    Top = 34
  end
  inherited Beep: TBTBeeper
    Left = 380
    Top = 2
  end
  inherited FormStorage: TFormStorage
    Left = 476
    Top = 2
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 412
    Top = 34
  end
end

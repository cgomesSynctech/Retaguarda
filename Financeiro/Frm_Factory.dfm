inherited FrmFactory: TFrmFactory
  Left = 449
  Top = 101
  Height = 459
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 378
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 344
    end
  end
  inherited pnDados: TTS_Panel
    Height = 378
    inherited Grid: TTS_QDBGrid
      Height = 376
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOME'
      object GridFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = 'Empresa de Factory'
        Width = 190
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridJUROSFACTORY: TdxDBGridMaskColumn
        Caption = 'Juros'
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSFACTORY'
      end
      object GridTAXASFACTORY: TdxDBGridMaskColumn
        Caption = 'Taxas'
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXASFACTORY'
      end
      object GridISVENDEDOR: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Modo'
        MinWidth = 16
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ISVENDEDOR'
        Descriptions.Strings = (
          'Montante'
          'Dias do Vencimento')
        ImageIndexes.Strings = (
          '0'
          '1')
        ShowDescription = True
        Values.Strings = (
          'M'
          'D')
      end
      object GridFLOATINGFACTORY: TdxDBGridMaskColumn
        Caption = 'Dias Compensamento'
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FLOATINGFACTORY'
      end
      object GridENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        Width = 226
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object GridCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object GridUF: TdxDBGridMaskColumn
        Caption = 'Estado'
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object GridCEP: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object GridFONE1: TdxDBGridMaskColumn
        Caption = 'Fone'
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object GridFAX: TdxDBGridMaskColumn
        Caption = 'Fax'
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object GridCELULAR: TdxDBGridMaskColumn
        Caption = 'Celular'
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object GridCONTATO: TdxDBGridMaskColumn
        Caption = 'Contato'
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object GridEMAIL: TdxDBGridMaskColumn
        Caption = 'Email'
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object GridEIN: TdxDBGridMaskColumn
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EIN'
      end
      object GridSSN: TdxDBGridMaskColumn
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SSN'
      end
      object GridDATACADASTRO: TdxDBGridDateColumn
        Caption = 'Cadastro'
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATACADASTRO'
      end
      object GridSITE: TdxDBGridMaskColumn
        Caption = 'Site'
        Width = 258
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITE'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 376
    end
    inherited sbDados: TTS_Panel
      Height = 376
      Color = 14542583
      object TS_Shape4: TTS_Shape
        Left = 9
        Top = 63
        Width = 391
        Height = 2
        Pen.Color = 9741530
        Transparent = False
      end
      object TS_Shape2: TTS_Shape
        Left = 8
        Top = 148
        Width = 392
        Height = 2
        Pen.Color = 9741530
        Transparent = False
      end
      object TS_Label1: TTS_Label
        Left = 16
        Top = 8
        Width = 82
        Height = 17
        Caption = 'Nome:'
        FocusControl = dfNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lblSSN: TTS_Label
        Left = 24
        Top = 29
        Width = 74
        Height = 17
        Caption = 'SSN:'
        FocusControl = DF_SSN
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label17: TTS_Label
        Left = 33
        Top = 190
        Width = 65
        Height = 17
        Caption = 'Cidade:'
        FocusControl = dfCidade
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label18: TTS_Label
        Left = 49
        Top = 210
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = 'Estado:'
        FocusControl = DF_UF
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmUFS'
        LinkToResult = 0
      end
      object lblCep: TTS_Label
        Left = 53
        Top = 230
        Width = 45
        Height = 17
        Caption = 'Zip:'
        FocusControl = dfCEP
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label20: TTS_Label
        Left = 37
        Top = 250
        Width = 61
        Height = 17
        Caption = 'Fone:'
        FocusControl = dfFone
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label21: TTS_Label
        Left = 37
        Top = 270
        Width = 61
        Height = 17
        Caption = 'Fax:'
        FocusControl = dfFax
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 16
        Top = 169
        Width = 82
        Height = 17
        Caption = 'Rua/Av.:'
        FocusControl = dfRua
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape1: TTS_Shape
        Left = 12
        Top = 139
        Width = 82
        Height = 19
        Brush.Color = 9741530
        Pen.Color = 9741530
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label2: TTS_Label
        Left = 21
        Top = 142
        Width = 65
        Height = 17
        Alignment = taCenter
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape3: TTS_Shape
        Left = 13
        Top = 54
        Width = 93
        Height = 19
        Brush.Color = 9741530
        Pen.Color = 9741530
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label4: TTS_Label
        Left = 15
        Top = 56
        Width = 91
        Height = 17
        Alignment = taCenter
        Caption = 'Caracter'#237'stica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 32
        Top = 90
        Width = 65
        Height = 17
        Caption = 'Modelo:'
        FocusControl = rgModelo
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 253
        Top = 87
        Width = 86
        Height = 17
        Caption = 'Juros ao m'#234's:'
        FocusControl = dfJuros
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 245
        Top = 110
        Width = 93
        Height = 17
        Caption = 'Compensa'#231#227'o:'
        FocusControl = dfComp
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbEmail: TTS_Label
        Left = 34
        Top = 291
        Width = 65
        Height = 17
        Caption = 'EMail:'
        FocusControl = DFEmail
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbSite: TTS_Label
        Left = 34
        Top = 311
        Width = 65
        Height = 17
        Caption = 'Site:'
        FocusControl = DFSite
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = -7
        Top = 331
        Width = 105
        Height = 17
        Caption = 'Conta Despesa:'
        FocusControl = DF_ContaDespesas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfNome: TTS_DBEdit
        Left = 99
        Top = 6
        Width = 302
        TabOrder = 0
        OnExit = dfNomeExit
        DataField = 'NOME'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfRua: TTS_DBEdit
        Left = 99
        Top = 168
        Width = 302
        TabOrder = 5
        DataField = 'ENDERECO'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfCidade: TTS_DBEdit
        Left = 99
        Top = 188
        Width = 210
        TabOrder = 6
        DataField = 'CIDADE'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfCEP: TTS_DBMaskEdit
        Left = 99
        Top = 228
        Width = 77
        TabOrder = 8
        DataField = 'CEP'
        DataSource = DMFactory.C_TabelaDS
        EditMask = '99999\-9999;1; '
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object dfFax: TTS_DBEdit
        Left = 99
        Top = 268
        Width = 126
        TabOrder = 10
        DataField = 'FAX'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfFone: TTS_DBEdit
        Left = 99
        Top = 248
        Width = 126
        TabOrder = 9
        DataField = 'FONE1'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfComp: TTS_DBSpinEdit
        Left = 341
        Top = 107
        Width = 61
        TabOrder = 4
        DataField = 'FLOATINGFACTORY'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 19
      end
      object dfJuros: TTS_DBEditNumber
        Left = 341
        Top = 85
        Width = 61
        TabOrder = 3
        DataField = 'JUROSFACTORY'
        DataSource = DMFactory.C_TabelaDS
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
      object rgModelo: TTS_DBRadioGroup
        Left = 101
        Top = 78
        Width = 147
        Height = 48
        DataField = 'ISVENDEDOR'
        DataSource = DMFactory.C_TabelaDS
        Items.Strings = (
          'N'#250'mero de Dias'
          'Juros sobre o Montante')
        TabOrder = 2
        TabStop = True
        Values.Strings = (
          'D'
          'M')
      end
      object DF_UF: TTS_DBLookupComboBox
        Left = 99
        Top = 208
        Width = 126
        TabOrder = 7
        DataField = 'lkUF'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        DropDownWidth = 185
        ClearKey = 32
        ListFieldName = 'UF;DESCRICAO'
        LookupKeyValue = Null
        Height = 19
      end
      object DF_SSN: TTS_DBMaskEdit
        Left = 99
        Top = 27
        Width = 127
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'SSN'
        DataSource = DMFactory.C_TabelaDS
        EditMask = '999\.99\.9999'
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object DFEmail: TTS_DBButtonEdit
        Left = 99
        Top = 288
        Width = 303
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 11
        DataField = 'EMAIL'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E0000000000000000000000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF0000FF007F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F00000000FF0000FF007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00000000FF0000FF007F7F7F
              007F7FBFBFBFBFBFBFBFBFBF007F7F007F7F007F7FBFBFBFBFBFBFBFBFBF007F
              7F7F7F7F00000000FF0000FF007F7F7F00FFFF007F7FBFBFBF007F7F00000000
              0000000000007F7FBFBFBF007F7FBFBFBF7F7F7F00000000FF0000FF007F7F7F
              FFFFFFFFFFFF007F7F000000FFFFFFFFFFFF00FFFF000000007F7FBFBFBFBFBF
              BF7F7F7F00000000FF0000FF007F7F7F00FFFFBFBFBF000000FFFFFF00FFFFFF
              FFFFFFFFFFFFFFFF000000007F7FBFBFBF7F7F7F00000000FF0000FF007F7F7F
              BFBFBF00000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF000000007F
              7F7F7F7F00000000FF0000FF007F7F7F000000FFFFFFFFFFFFFFFFFF00FFFFFF
              FFFFFFFFFFFFFFFF00FFFFFFFFFF000000007F7F00000000FF0000FF007F7F7F
              FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FF
              FF00000000000000FF0000FF007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
            Kind = bkGlyph
          end>
        OnButtonClick = DFEmailButtonClick
        Height = 19
        ExistButtons = True
      end
      object DFSite: TTS_DBButtonEdit
        Left = 99
        Top = 309
        Width = 303
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 12
        DataField = 'SITE'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000000000000000000000
              00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBF
              BFBF00FF007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000BFBFBFBFBFBF
              BFBFBF0000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF7F7F7F000000BFBFBFBFBFBF000000FF0000FF00007F7F7F00000000
              00000000000000000000000000000000000000007F7F7F000000BFBFBF7F7F7F
              FF0000FF0000FF0000FF00007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBF000000BFBFBFBFBFBF7F7F7FFF0000FF0000FF0000FF00007F7F7FFF
              FFFF0000007F00007F00007F00007F0000BFBFBF000000BFBFBF7F7F7FFF0000
              FF0000FF0000FF0000FF00007F7F7FFFFFFF000000FF0000FF0000FF00007F00
              00BFBFBF000000BFBFBF7F7F7FFF0000FF0000FF0000007F00007F007F7F7FFF
              FFFF000000FFFF00FF0000FF00007F0000BFBFBF000000BFBFBF7F7F7FFF0000
              FF0000007F00007F00007F007F7F7FFFFFFF0000000000000000000000000000
              00BFBFBF000000BFBFBF7F7F7FFF0000FF0000007F00007F00007F007F7F7FFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF7F7F7FFF0000
              FF000000FF00007F00007F00007F007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7FBFBFBFBFBFBF7F7F7FFF0000FF0000BFBFBF00FF00FF0000FF
              0000FF0000FF0000FF0000007F00007F00000000BFBFBFBFBFBFBFBFBF7F7F7F
              FF0000BFBFBF00FF00BFBFBF00FF00007F00007F00007F00007F00007F00007F
              00000000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFF0000FF000000FF00BFBFBF00
              FF00007F00007F00007F00007F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBF7F7F7F7F7F7FFF0000FF0000BFBFBF00FF00007F00000000000000BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
            Kind = bkGlyph
          end>
        OnButtonClick = DFSiteButtonClick
        Height = 20
        ExistButtons = True
      end
      object DF_ContaDespesas: TTS_DBPopupEdit
        Left = 99
        Top = 330
        Width = 305
        TabOrder = 13
        DataField = 'lkpContaDespesa'
        DataSource = DMFactory.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
        PopupControl = DlgPopupContas.pnPopup
        PopupFormBorderStyle = pbsSysPanel
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 71
      Caption = 'Factory'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 359
    Top = 316
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 424
    Top = 283
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 286
    Top = 226
  end
  inherited ImgPadrao: TImageList
    Left = 418
    Top = 317
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'dfNome'
      'dfJuros')
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Factory'
    Left = 308
    Top = 312
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 281
    Top = 284
  end
  inherited FormStorage: TFormStorage
    Left = 146
    Top = 84
  end
end

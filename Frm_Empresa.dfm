inherited FrmEmpresa: TFrmEmpresa
  Left = 124
  Top = 109
  Width = 1179
  Height = 549
  Caption = 'Company'
  Constraints.MinHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel [0]
    Width = 1048
    Height = 468
    inherited Grid: TTS_QDBGrid
      Width = 1046
      Height = 466
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 1046
      Height = 466
    end
    inherited sbDados: TTS_Panel
      Width = 1046
      Height = 466
      Color = 14608375
      Font.Color = clBlack
      ParentFont = False
      object TS_Label17: TTS_Label
        Left = 35
        Top = 178
        Width = 65
        Height = 17
        Caption = 'Cidade:'
        FocusControl = dfCidade
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label18: TTS_Label
        Left = 407
        Top = 178
        Width = 38
        Height = 17
        Cursor = crHandPoint
        Caption = 'Estado:'
        FocusControl = dfEstado
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmUFS'
        LinkToResult = 0
      end
      object TS_Label19: TTS_Label
        Left = 34
        Top = 217
        Width = 66
        Height = 17
        Caption = 'Cep:'
        FocusControl = dfCep
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label20: TTS_Label
        Left = 229
        Top = 217
        Width = 35
        Height = 17
        Caption = 'Fone:'
        FocusControl = dfFone
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label21: TTS_Label
        Left = 420
        Top = 217
        Width = 30
        Height = 17
        Caption = 'Fax:'
        FocusControl = dfFax
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 56
        Top = 138
        Width = 44
        Height = 17
        Caption = 'Rua/Av.:'
        FocusControl = dfRua
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label27: TTS_Label
        Left = 380
        Top = 158
        Width = 65
        Height = 17
        Caption = 'Bairro:'
        FocusControl = dfBairro
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label28: TTS_Label
        Left = 423
        Top = 138
        Width = 22
        Caption = 'N'#186':'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label32: TTS_Label
        Left = 24
        Top = 158
        Width = 76
        Caption = 'Complemento:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label23: TTS_Label
        Left = 35
        Top = 53
        Width = 65
        Height = 17
        Caption = 'CNPJ:'
        FocusControl = dfCNPJ
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label11: TTS_Label
        Left = 225
        Top = 53
        Width = 69
        Height = 17
        Caption = 'Insc. Est.:'
        FocusControl = dfInscricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 8
        Top = 30
        Width = 92
        Height = 17
        Caption = 'Raz'#227'o Social:'
        FocusControl = dfRazao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 30
        Top = 72
        Width = 69
        Height = 17
        Caption = 'Insc. Mun.:'
        FocusControl = dfInscricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 61
        Top = 236
        Width = 40
        Height = 17
        Caption = 'Email:'
        FocusControl = dfEmail
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label9: TTS_Label
        Left = 61
        Top = 256
        Width = 40
        Height = 17
        Caption = 'Site:'
        FocusControl = dfSite
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label37: TTS_Label
        Left = 218
        Top = 73
        Width = 76
        Height = 17
        Caption = 'Insc. Est. Sub:'
        FocusControl = dfInscricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label39: TTS_Label
        Left = 4
        Top = 196
        Width = 98
        Height = 17
        Caption = 'Municipio IBGE:'
        FocusControl = dfCidade
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label38: TTS_Label
        Left = 19
        Top = 95
        Width = 80
        Caption = 'CNAE:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label41: TTS_Label
        Left = 393
        Top = 239
        Width = 58
        Height = 17
        Caption = 'Revenda:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object lblAliquotaCredito: TTS_Label
        Left = 376
        Top = 261
        Width = 75
        Height = 17
        Caption = 'Al'#237'q. Cr'#233'dito:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfRua: TTS_DBEdit
        Left = 101
        Top = 136
        Width = 294
        TabOrder = 4
        DataField = 'ENDERECO'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfCidade: TTS_DBEdit
        Left = 101
        Top = 176
        Width = 196
        TabOrder = 8
        DataField = 'CIDADE'
        DataSource = DMEmpresa.C_TabelaDS
        MaxLength = 0
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object dfFax: TTS_DBEdit
        Left = 450
        Top = 215
        Width = 126
        TabOrder = 12
        DataField = 'FAX'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfFone: TTS_DBEdit
        Left = 267
        Top = 215
        Width = 126
        TabOrder = 11
        DataField = 'FONE1'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object DF_Foto: TdxGraphicEdit
        Left = 499
        Top = 4
        Width = 123
        Hint = 'A altura ideal para o logotipo '#233' de 97 pixels.'
        PopupMenu = ppmFoto
        TabOrder = 14
        TabStop = False
        Caption = 'Logotipo'
        StyleController = DMProjeto.esGeral
        Stretch = True
        ToolbarLayout.Buttons = [ptbCopy, ptbDelete, ptbLoad, ptbSave]
        Height = 90
      end
      object pnEnderecos: TTS_Panel
        Left = 7
        Top = 114
        Width = 488
        Height = 18
        BevelOuter = bvNone
        Color = 14608375
        TabOrder = 13
        object TS_Shape2: TTS_Shape
          Left = 2
          Top = 7
          Width = 487
          Height = 3
          Brush.Color = 11388903
          Pen.Color = 11388903
          Pen.Style = psClear
          Transparent = False
        end
        object TS_Shape1: TTS_Shape
          Left = 1
          Top = -1
          Width = 80
          Height = 19
          Brush.Color = 11388903
          Pen.Style = psClear
          Shape = stRoundRect
          Transparent = False
        end
        object TS_Label7: TTS_Label
          Left = 7
          Top = 1
          Width = 67
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
      end
      object pnNome: TTS_Panel
        Left = 2
        Top = 1
        Width = 395
        Height = 26
        BevelOuter = bvNone
        Color = 14608375
        TabOrder = 0
        object TS_Label1: TTS_Label
          Left = 6
          Top = 6
          Width = 92
          Height = 17
          Caption = 'Nome Fantasia:'
          FocusControl = dfNome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object dfNome: TTS_DBEdit
          Left = 99
          Top = 4
          Width = 294
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DataField = 'NOME'
          DataSource = DMEmpresa.C_TabelaDS
          StyleController = DMProjeto.esGeral
          DistinctEditOn = False
          Height = 19
        end
      end
      object dfEstado: TTS_DBLookupComboBox
        Left = 449
        Top = 176
        Width = 130
        TabOrder = 9
        DataField = 'DescUF'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        OnChange = dfEstadoChange
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object dfCep: TTS_DBMaskEdit
        Left = 101
        Top = 215
        Width = 102
        Style.BorderColor = 9741530
        TabOrder = 10
        DataField = 'CEP'
        DataSource = DMEmpresa.C_TabelaDS
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esCompany
        Height = 19
      end
      object dfBairro: TTS_DBEdit
        Left = 449
        Top = 156
        Width = 165
        TabOrder = 7
        DataField = 'BAIRRO'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfNumero: TTS_DBMaskEdit
        Left = 449
        Top = 136
        Width = 55
        TabOrder = 5
        DataField = 'NUMERO'
        DataSource = DMEmpresa.C_EmpresasDs
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object dfComplemento: TTS_DBMaskEdit
        Left = 101
        Top = 156
        Width = 196
        TabOrder = 6
        DataField = 'COMPLEMENTO'
        DataSource = DMEmpresa.C_EmpresasDs
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object dfCNPJ: TTS_DBMaskEdit
        Left = 101
        Top = 51
        Width = 117
        TabOrder = 2
        OnEnter = dfCNPJEnter
        OnExit = dfCNPJExit
        DataField = 'CPF_CNPJ'
        DataSource = DMEmpresa.C_TabelaDS
        EditMask = '!99.999.999/9999-99;0; '
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object dfInscricao: TTS_DBMaskEdit
        Left = 294
        Top = 51
        Width = 101
        TabOrder = 3
        DataField = 'INSCRICAO_EST'
        DataSource = DMEmpresa.C_TabelaDS
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object dfRazao: TTS_DBEdit
        Left = 101
        Top = 28
        Width = 294
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DataField = 'RAZAO'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBMaskEdit1: TTS_DBMaskEdit
        Left = 101
        Top = 72
        Width = 117
        TabOrder = 15
        DataField = 'INSCRICAO_MUN'
        DataSource = DMEmpresa.C_TabelaDS
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object TS_PageControl1: TTS_PageControl
        Left = 0
        Top = 289
        Width = 1046
        Height = 177
        ActivePage = tsDiversos
        Align = alBottom
        OwnerDraw = True
        TabIndex = 0
        TabOrder = 16
        TabFillGradient = False
        ActivePageIndex = 0
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
        object tsDiversos: TTS_TabSheet
          Caption = '&Diversos'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label31: TTS_Label
            Left = 25
            Top = 7
            Width = 80
            Caption = 'Data Abertura:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label5: TTS_Label
            Left = 1
            Top = 66
            Width = 104
            Caption = 'Forma de Tributa'#231#227'o:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label24: TTS_Label
            Left = 32
            Top = 96
            Width = 73
            Caption = 'N'#186': Esta'#231#245'es:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label34: TTS_Label
            Left = 32
            Top = 119
            Width = 73
            Caption = 'N'#186': Revenda:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label35: TTS_Label
            Left = 164
            Top = 98
            Width = 391
            Alignment = taLeftJustify
            Caption = '(Informe neste local o n'#250'mero de licen'#231'as contratadas)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label36: TTS_Label
            Left = 165
            Top = 119
            Width = 391
            Alignment = taLeftJustify
            Caption = '(Solicite com o seu vendedor este n'#250'mero)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_DBEditDate1: TTS_DBEditDate
            Left = 106
            Top = 5
            Width = 84
            Style.BorderColor = 9741530
            TabOrder = 0
            DataField = 'DATAINICIO'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esCompany
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
          end
          object TS_DBCheckBox1: TTS_DBCheckBox
            Left = 19
            Top = 35
            Width = 105
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 1
            Alignment = taRightJustify
            Caption = 'Contribuinte IPI:'
            DataField = 'CONTRIBIPI'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 19
            StoredValues = 1
          end
          object edTipoEmpresa: TTS_DBImageEdit
            Left = 106
            Top = 64
            Width = 153
            TabOrder = 2
            DataField = 'TIPOEMPRESA'
            DataSource = DMEmpresa.C_TabelaDS
            StyleController = DMProjeto.esGeral
            Descriptions.Strings = (
              'Lucro Presumido'
              'Lucro Real'
              'Lucro Arbitrado'
              'Simples Nacional')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2'
              '3')
            Values.Strings = (
              'P'
              'R'
              'A'
              'N')
            Height = 19
          end
          object dfRevenda: TTS_DBEdit
            Left = 106
            Top = 117
            Width = 47
            TabOrder = 3
            DataField = 'REVENDA'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBMaskEdit2: TTS_DBMaskEdit
            Left = 106
            Top = 94
            Width = 46
            TabOrder = 4
            DataField = 'ESTACOES'
            DataSource = DMEmpresa.C_EmpresasDs
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esGeral
            Height = 19
            StoredValues = 4
          end
        end
        object tsContador: TTS_TabSheet
          Caption = '&Contador'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label10: TTS_Label
            Left = 18
            Top = 6
            Width = 65
            Caption = 'Nome:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 18
            Top = 24
            Width = 65
            Caption = 'CPF/CNPJ:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label13: TTS_Label
            Left = 18
            Top = 42
            Width = 65
            Caption = 'CRC:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 18
            Top = 61
            Width = 65
            Caption = 'Fone:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label15: TTS_Label
            Left = 18
            Top = 77
            Width = 65
            Caption = 'Email:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label40: TTS_Label
            Left = -30
            Top = 95
            Width = 113
            Caption = 'IBGE Contador:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfNomeContador: TTS_DBEdit
            Left = 85
            Top = 4
            Width = 168
            TabOrder = 0
            DataField = 'NOME_CONTADOR'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object dfCPFCNPJContador: TTS_DBMaskEdit
            Left = 85
            Top = 22
            Width = 115
            TabOrder = 1
            DataField = 'CPF_CNPJ_CONTADOR'
            DataSource = DMEmpresa.C_EmpresasDs
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esGeral
            Height = 19
            StoredValues = 4
          end
          object TS_DBEdit2: TTS_DBEdit
            Left = 85
            Top = 40
            Width = 51
            TabOrder = 2
            DataField = 'CRC_CONTADOR'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit3: TTS_DBEdit
            Left = 85
            Top = 58
            Width = 96
            TabOrder = 3
            DataField = 'FONE_CONTADOR'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit4: TTS_DBEdit
            Left = 85
            Top = 76
            Width = 168
            TabOrder = 4
            DataField = 'EMAIL_CONTADOR'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object cmbMunicipios: TTS_DBLookupComboBox
            Left = 85
            Top = 95
            Width = 191
            TabOrder = 5
            DataField = 'lkpContadorIBGE'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
        end
        object tsPagina3: TTS_TabSheet
          Caption = 'Respons'#225'vel'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label2: TTS_Label
            Left = 15
            Top = 5
            Width = 65
            Caption = 'Nome:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label16: TTS_Label
            Left = 15
            Top = 24
            Width = 65
            Caption = 'CPF/CNPJ:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label25: TTS_Label
            Left = 17
            Top = 102
            Width = 65
            Caption = 'Email:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label26: TTS_Label
            Left = 17
            Top = 43
            Width = 63
            Height = 17
            Caption = 'Rua/Av.:'
            FocusControl = TS_DBEdit9
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label29: TTS_Label
            Left = 16
            Top = 62
            Width = 64
            Height = 17
            Caption = 'Cidade:'
            FocusControl = TS_DBEdit10
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label30: TTS_Label
            Left = 17
            Top = 82
            Width = 65
            Height = 17
            Caption = 'Cep:'
            FocusControl = TS_DBMaskEdit4
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label33: TTS_Label
            Left = 290
            Top = 83
            Width = 34
            Height = 17
            Caption = 'Fone:'
            FocusControl = TS_DBEdit11
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label22: TTS_Label
            Left = 282
            Top = 63
            Width = 40
            Height = 17
            Caption = 'Bairro:'
            FocusControl = TS_DBEdit10
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfNomeResponsavel: TTS_DBEdit
            Left = 83
            Top = 3
            Width = 280
            TabOrder = 0
            DataField = 'NOME_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object dfCPFResponsavel: TTS_DBMaskEdit
            Left = 83
            Top = 22
            Width = 114
            TabOrder = 1
            OnEnter = dfCPFResponsavelEnter
            OnExit = dfCPFResponsavelExit
            DataField = 'CPF_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esGeral
            Height = 19
            StoredValues = 4
          end
          object TS_DBEdit9: TTS_DBEdit
            Left = 83
            Top = 41
            Width = 293
            TabOrder = 2
            DataField = 'ENDERECO_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit10: TTS_DBEdit
            Left = 83
            Top = 61
            Width = 195
            TabOrder = 3
            DataField = 'CIDADE_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            MaxLength = 0
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
            StoredValues = 2
          end
          object TS_DBMaskEdit4: TTS_DBMaskEdit
            Left = 83
            Top = 81
            Width = 76
            Style.BorderColor = 9741530
            TabOrder = 4
            DataField = 'CEP_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esCompany
            Height = 19
          end
          object TS_DBEdit11: TTS_DBEdit
            Left = 327
            Top = 82
            Width = 125
            TabOrder = 5
            DataField = 'FONE_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit6: TTS_DBEdit
            Left = 326
            Top = 62
            Width = 125
            TabOrder = 6
            DataField = 'BAIRRO_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
            MaxLength = 0
            StyleController = DMProjeto.esGeral
            DistinctEditOn = False
            Height = 19
            StoredValues = 2
          end
          object TS_DBButtonEdit1: TTS_DBButtonEdit
            Left = 83
            Top = 101
            Width = 268
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderColor = 9741530
            TabOrder = 7
            DataField = 'EMAIL_RESPONSAVEL'
            DataSource = DMEmpresa.C_EmpresasDs
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
            OnButtonClick = dfEmailButtonClick
            Height = 19
            ExistButtons = True
          end
        end
      end
      object dfEmail: TTS_DBButtonEdit
        Left = 101
        Top = 235
        Width = 269
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Style.BorderColor = 9741530
        TabOrder = 17
        DataField = 'EMAIL'
        DataSource = DMEmpresa.C_TabelaDS
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
        OnButtonClick = dfEmailButtonClick
        Height = 19
        ExistButtons = True
      end
      object dfSite: TTS_DBButtonEdit
        Left = 101
        Top = 255
        Width = 269
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Style.BorderColor = 9741530
        TabOrder = 18
        DataField = 'SITE'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esCompany
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
        OnButtonClick = dfSiteButtonClick
        Height = 20
        ExistButtons = True
      end
      object dfInscricaoEstSub: TTS_DBMaskEdit
        Left = 294
        Top = 71
        Width = 101
        TabOrder = 19
        DataField = 'INSCRICAO_EST_SUB'
        DataSource = DMEmpresa.C_EmpresasDs
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
      object lcbMunicipio: TTS_DBLookupComboBox
        Left = 101
        Top = 196
        Width = 292
        TabOrder = 20
        DataField = 'lkpMunicipio'
        DataSource = DMEmpresa.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object lcbCNES: TTS_DBLookupComboBox
        Left = 101
        Top = 92
        Width = 294
        TabOrder = 21
        DataField = 'lkpCNAE'
        DataSource = DMEmpresa.C_EmpresasDs
        StyleController = DMProjeto.esGeral
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 451
        Top = 237
        Width = 126
        TabOrder = 22
        DataField = 'CODIGODAREVENDA'
        DataSource = DMEmpresa.C_EmpresasDs
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfAliquotaCredito: TTS_DBMaskEdit
        Left = 451
        Top = 259
        Width = 87
        TabOrder = 23
        DataField = 'ALIQCREDITOSN'
        DataSource = DMEmpresa.C_EmpresasDs
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 4
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 1046
    end
  end
  inherited pnNavigator: TTS_Panel [1]
    Left = 1048
    Height = 468
    inherited btPesquisar: TTS_SpeedButton
      Visible = False
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btComando1: TTS_SpeedButton
      Caption = '&Imprimir'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Caption = 'Gerar &Registro'
      Visible = True
      OnClick = btComando2Click
    end
    inherited bv2: TTS_Bevel
      Visible = False
    end
    inherited bv3: TTS_Bevel
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 434
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
    object btComando3: TTS_SpeedButton [10]
      Left = 1
      Top = 238
      Width = 113
      Caption = 'Dados Flexdocs'
      OnClick = btComando3Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    inherited pnAvancaRecua: TTS_Panel
      inherited btPrevReg: TTS_SpeedButton
        Visible = False
      end
      inherited btProxReg: TTS_SpeedButton
        Visible = False
      end
      inherited btPrimeiroReg: TTS_SpeedButton
        Visible = False
      end
      inherited btUltimoReg: TTS_SpeedButton
        Visible = False
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1163
    Gradient.ColorStart = 11388903
    inherited lbCaption: TdxfLabel
      Width = 82
      Caption = 'Empresa'
      Effect3D.ShadowedColor = 11388903
    end
    inherited lbEstadoForm: TTS_Label
      Width = 123
      Caption = 'Cadastro da sua Empresa'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1136
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 667
    Top = 3
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 217
    Top = 8
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 341
    Top = 3
    inherited FormatoTabela: TMenuItem
      Visible = False
    end
    inherited N1: TMenuItem
      Visible = False
    end
    inherited GravarDados: TMenuItem
      Default = True
    end
    inherited PesquisarDados: TMenuItem
      Visible = False
    end
    inherited LimparDados: TMenuItem
      Visible = False
    end
    inherited ApagarDados: TMenuItem
      Visible = False
    end
    inherited ConfCampos: TMenuItem
      Visible = False
    end
    inherited Parametros1: TMenuItem
      Visible = False
    end
  end
  inherited ImgPadrao: TImageList
    Left = 389
    Top = 1
  end
  inherited FormComponent: TFormComponent
    AfterFormShow = FormComponentAfterFormShow
    ModuloStyle = DMProjeto.msCompany
    CamposObrigatorios.Strings = (
      'dfNome'
      'dfRazao'
      'dfCNPJ')
    BarEndColor = 11388903
    CaptionShadow = 11388903
    FormColor = 14608375
    Modulo = 'Company'
    Caption = 'Empresa'
    Pesquisar = False
    Incluir = False
    Apagar = False
    CapturarScroll = False
    Left = 456
    Top = 73
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 600
    Top = 65534
    inherited Ajuda1: TMenuItem
      HelpContext = 67
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 296
    Top = 3
  end
  inherited Beep: TBTBeeper
    Left = 635
    Top = 292
  end
  inherited FormStorage: TFormStorage
    Left = 477
    Top = 65527
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 684
    Top = 290
  end
  object ppmFoto: TPopupMenu
    Left = 517
    Top = 67
    object CarregarFoto: TMenuItem
      Caption = 'Carregar Foto...'
      ShortCut = 16454
      OnClick = CarregarFotoClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimparFoto1: TMenuItem
      Caption = 'Limpar Foto'
      OnClick = LimparFoto1Click
    end
  end
  object pdFoto: TOpenPictureDialog
    Filter = 'Imagens (*.bmp,*.jpg)|*.bmp;*.jpg|Todos os arquivos|*.*'
    Title = 'Escolher Foto'
    Left = 574
    Top = 78
  end
end

inherited FrmAgencias: TFrmAgencias
  Left = 53
  Top = 95
  Width = 710
  Height = 367
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 587
    Height = 297
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 263
    end
  end
  inherited pnDados: TTS_Panel
    Width = 587
    Height = 297
    inherited Grid: TTS_QDBGrid
      Width = 585
      Height = 295
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      object GridFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Width = 237
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridSSN: TdxDBGridMaskColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SSN'
      end
      object GridEIN: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EIN'
      end
      object GridENDERECO: TdxDBGridMaskColumn
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object GridCIDADE: TdxDBGridMaskColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object GridlkUF: TdxDBGridLookupColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUF'
      end
      object GridCEP: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object GridCAIXAPOSTAL: TdxDBGridMaskColumn
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object GridlkPais: TdxDBGridLookupColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkPais'
      end
      object GridFONE1: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object GridFONE2: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object GridCONTATO: TdxDBGridMaskColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object GridCELULAR: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object GridFAX: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object GridEMAIL: TdxDBGridMaskColumn
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object GridlkConta: TdxDBGridLookupColumn
        DisableCustomizing = True
        Visible = False
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkConta'
      end
      object GridDATACADASTRO: TdxDBGridDateColumn
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATACADASTRO'
      end
      object GridJUROSFACTORY: TdxDBGridMaskColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSFACTORY'
      end
      object GridTAXASFACTORY: TdxDBGridMaskColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXASFACTORY'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 585
      Height = 295
    end
    inherited sbDados: TTS_Panel
      Width = 585
      Height = 295
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 8
        Top = 35
        Width = 51
        Height = 17
        Caption = 'Nome:'
        FocusControl = DF_Nome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label25: TTS_Label
        Left = 4
        Top = 57
        Width = 55
        Height = 17
        Caption = 'SSN:'
        FocusControl = DF_SSN
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label24: TTS_Label
        Left = 204
        Top = 57
        Width = 65
        Height = 17
        Caption = 'EIN:'
        FocusControl = DF_EIN
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = 269
        Top = 12
        Width = 75
        Height = 17
        Caption = 'Data Cadastro:'
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
      object TS_Label19: TTS_Label
        Left = 1
        Top = 12
        Width = 58
        Height = 17
        Caption = 'C'#243'di&go:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object DF_DataCad: TTS_DBText
        Left = 346
        Top = 12
        Width = 86
        Height = 17
        Cursor = crIBeam
        DataField = 'DATACADASTRO'
        DataSource = DMAgencias.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        StyleControler = DMProjeto.esRemessa
        AllowEditOnClick = True
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'Tahoma'
        EditFont.Style = []
        EditObjectBorder = bsSingle
        EditOffSet.x = 0
        EditOffSet.y = 0
      end
      object pcAbas: TTS_PageControl
        Left = 10
        Top = 79
        Width = 550
        Height = 205
        ActivePage = tsEndereco
        MultiLine = True
        OwnerDraw = True
        TabIndex = 0
        TabOrder = 4
        ActivePageIndex = 0
        Transparent = False
        TabColor = 15456728
        TabColorActive = 14003626
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
        object tsEndereco: TTS_TabSheet
          Caption = 'Endere'#231'o'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 542
            Height = 177
            Align = alClient
            BevelOuter = bvNone
            Color = 15456728
            TabOrder = 0
            object TS_Label2: TTS_Label
              Left = 4
              Top = 14
              Width = 65
              Height = 17
              Caption = 'Endere'#231'o:'
              FocusControl = DF_Endereco
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label6: TTS_Label
              Left = 4
              Top = 59
              Width = 65
              Height = 17
              Caption = 'Caixa Postal:'
              FocusControl = DF_CaixaPostal
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label3: TTS_Label
              Left = 4
              Top = 37
              Width = 65
              Height = 17
              Caption = 'Cidade:'
              FocusControl = DF_Cidade
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label8: TTS_Label
              Left = 4
              Top = 85
              Width = 65
              Height = 17
              Caption = 'Fone 1:'
              FocusControl = DF_Fone1
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label4: TTS_Label
              Left = 272
              Top = 39
              Width = 57
              Cursor = crHandPoint
              Caption = 'UF:'
              FocusControl = DF_UF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              FormatoTabela = False
              LinkTo = 'FrmUFS'
              LinkToResult = 0
            end
            object TS_Label5: TTS_Label
              Left = 429
              Top = 38
              Width = 25
              Caption = 'Zip:'
              FocusControl = DF_CEP
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label13: TTS_Label
              Left = 272
              Top = 85
              Width = 57
              Height = 15
              Caption = 'Fone 2:'
              FocusControl = DF_Fone2
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label12: TTS_Label
              Left = 4
              Top = 106
              Width = 65
              Height = 17
              Caption = 'Contato:'
              FocusControl = DF_Contato
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label11: TTS_Label
              Left = 272
              Top = 107
              Width = 57
              Height = 17
              Caption = 'Celular:'
              FocusControl = DF_Celular
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label14: TTS_Label
              Left = 4
              Top = 154
              Width = 65
              Height = 17
              Caption = 'Site:'
              FocusControl = DF_Site
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label9: TTS_Label
              Left = 4
              Top = 131
              Width = 65
              Height = 17
              Caption = 'E-mail:'
              FocusControl = DF_Email
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label7: TTS_Label
              Left = 270
              Top = 62
              Width = 59
              Height = 17
              Cursor = crHandPoint
              Caption = 'Pa'#237's:'
              FocusControl = DF_Pais
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              FormatoTabela = False
              LinkTo = 'FRMPAISES'
              LinkToResult = 0
            end
            object DF_Endereco: TTS_DBEdit
              Left = 72
              Top = 13
              Width = 460
              TabOrder = 0
              DataField = 'ENDERECO'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_Cidade: TTS_DBEdit
              Left = 72
              Top = 36
              Width = 193
              TabOrder = 1
              DataField = 'CIDADE'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_CaixaPostal: TTS_DBEdit
              Left = 72
              Top = 59
              Width = 193
              TabOrder = 4
              DataField = 'CAIXAPOSTAL'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_Fone1: TTS_DBEdit
              Left = 72
              Top = 83
              Width = 193
              TabOrder = 6
              DataField = 'FONE1'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_Contato: TTS_DBEdit
              Left = 72
              Top = 106
              Width = 193
              TabOrder = 8
              DataField = 'CONTATO'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_UF: TTS_DBLookupComboBox
              Left = 332
              Top = 36
              Width = 92
              TabOrder = 2
              DataField = 'UF'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DropDownRows = 15
              ClearKey = 32
              ListFieldName = 'DESCRICAO;UF'
              KeyFieldName = 'UF'
              ListSource = DMAgencias.C_UFsDS
              LookupKeyValue = Null
              Height = 19
            end
            object DF_CEP: TTS_DBEdit
              Left = 456
              Top = 36
              Width = 75
              TabOrder = 3
              DataField = 'CEP'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_Fone2: TTS_DBEdit
              Left = 332
              Top = 83
              Width = 199
              TabOrder = 7
              DataField = 'FONE2'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_Celular: TTS_DBEdit
              Left = 332
              Top = 106
              Width = 199
              TabOrder = 9
              DataField = 'CELULAR'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 19
            end
            object DF_Email: TTS_DBButtonEdit
              Left = 72
              Top = 128
              Width = 459
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              TabOrder = 10
              DataField = 'EMAIL'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
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
              OnButtonClick = DF_EmailButtonClick
              Height = 19
              ExistButtons = True
            end
            object DF_Site: TTS_DBButtonEdit
              Left = 72
              Top = 152
              Width = 459
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              TabOrder = 11
              DataField = 'SITE'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
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
              OnButtonClick = DF_SiteButtonClick
              Height = 20
              ExistButtons = True
            end
            object DF_Pais: TTS_DBLookupComboBox
              Left = 332
              Top = 60
              Width = 93
              TabOrder = 5
              DataField = 'PAIS'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DropDownRows = 15
              ClearKey = 32
              ListFieldName = 'DESCRICAO'
              KeyFieldName = 'PAIS'
              ListSource = DMAgencias.C_PaisDS
              LookupKeyValue = Null
              Height = 19
            end
          end
        end
        object tsCaracteristicas: TTS_TabSheet
          Caption = 'Caracter'#237'sticas'
          ImageIndex = 1
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 542
            Height = 177
            Align = alClient
            BevelOuter = bvNone
            Color = 15456728
            TabOrder = 0
            object TS_Label15: TTS_Label
              Left = 38
              Top = 47
              Width = 68
              Height = 17
              Caption = 'Observa'#231#227'o:'
              FocusControl = DF_OBS
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label16: TTS_Label
              Left = 41
              Top = 6
              Width = 65
              Caption = 'Taxa($):'
              FocusControl = TS_DBEdTaxa
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label17: TTS_Label
              Left = 41
              Top = 28
              Width = 65
              Caption = 'Perc.(%):'
              FocusControl = TS_DBEdPerc
              FormatoTabela = False
              LinkToResult = 0
            end
            object DF_OBS: TTS_DBMemo
              Left = 110
              Top = 47
              Width = 378
              TabOrder = 2
              DataField = 'OBS'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 64
            end
            object TS_DBEdTaxa: TTS_DBEditNumber
              Left = 110
              Top = 3
              Width = 79
              TabOrder = 0
              DataField = 'TAXASFACTORY'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
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
            object TS_DBEdPerc: TTS_DBEditNumber
              Left = 110
              Top = 25
              Width = 79
              TabOrder = 1
              DataField = 'JUROSFACTORY'
              DataSource = DMAgencias.C_TabelaDS
              StyleController = DMProjeto.esRemessa
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
        object tsPagina3: TTS_TabSheet
          Caption = 'C'#226'mbio'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label18: TTS_Label
            Left = 4
            Top = 27
            Width = 317
            Alignment = taLeftJustify
            Caption = 'Descri'#231#227'o dos valores de C'#226'mbio em rela'#231#227'o a $ 1 Dolar:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label20: TTS_Label
            Left = 1
            Top = 4
            Width = 44
            Caption = 'Data:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_QDBGridCambio: TTS_QDBGrid
            Left = 3
            Top = 42
            Width = 274
            Height = 132
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'INDEXADOR'
            SummaryGroups = <>
            SummarySeparator = ', '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmIndexadores
            TabOrder = 0
            AutoSearchColor = 6611199
            AutoSearchTextColor = clBlue
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMAgencias.dsAgentesCambio
            Filter.Criteria = {00000000}
            HeaderColor = 15461355
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            HideSelection = True
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            OnColumnSorting = TS_QDBGridCambioColumnSorting
            TS_AppendOnEnter = True
            RowFooterNodeFont.Charset = DEFAULT_CHARSET
            RowFooterNodeFont.Color = clWindowText
            RowFooterNodeFont.Height = -11
            RowFooterNodeFont.Name = 'Tahoma'
            RowFooterNodeFont.Style = [fsBold]
            TS_AccountFooterStyle = False
            TS_HideFocusedRect = hfHideAlways
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
            TS_SelectedColumn = 'cbIndexador'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object TS_QDBGridCambiocbIndexador: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              HeaderGlyph.Data = {
                22020000424D2202000000000000B6000000280000000D0000000D0000000100
                1000030000006C01000000000000000000001000000000000000007C0000E003
                00001F000000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF
                0000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
                0000FFFFFF0018C618C618C618C618C618C618C618C618C618C618C618C618C6
                000018C618C618C618C618C618C618C618C618C618C618C618C618C6000018C6
                18C618C618C618C600000000000018C618C618C618C618C6000018C618C618C6
                18C618C600001F00000018C618C618C618C618C6000018C618C618C618C618C6
                00001F00000018C618C618C618C618C6000018C618C600000000000000001F00
                000000000000000018C618C6000018C618C600001F001F001F001F001F001F00
                1F00000018C618C6000018C618C600000000000000001F000000000000000000
                18C618C6000018C618C618C618C618C600001F00000018C618C618C618C618C6
                000018C618C618C618C618C600001F00000018C618C618C618C618C6000018C6
                18C618C618C618C600000000000018C618C618C618C618C6000018C618C618C6
                18C618C618C618C618C618C618C618C618C618C6000018C618C618C618C618C6
                18C618C618C618C618C618C618C618C60000}
              Width = 192
              BandIndex = 0
              RowIndex = 0
              FieldName = 'cbIndexador'
            end
            object TS_QDBGridCambioINDEXADOR: TdxDBGridMaskColumn
              Visible = False
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'INDEXADOR'
            end
            object TS_QDBGridCambioAGENCIA: TdxDBGridMaskColumn
              Visible = False
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'AGENCIA'
            end
            object TS_QDBGridCambioCAMBIO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 107
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CAMBIO'
            end
            object TS_QDBGridCambioFAVORECIDO: TdxDBGridMaskColumn
              Visible = False
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FAVORECIDO'
            end
          end
          object edData: TTS_DateTimePicker
            Left = 45
            Top = 2
            Width = 80
            TabOrder = 1
            AutoSize = False
            StyleController = DMProjeto.esRemessa
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
            Date = -700000
            UseEditMask = True
            OnDateChange = edDataDateChange
            Height = 19
            StoredValues = 4
          end
        end
      end
      object DF_SSN: TTS_DBEdit
        Left = 61
        Top = 55
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DataField = 'SSN'
        DataSource = DMAgencias.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
      object DF_Nome: TTS_DBEdit
        Left = 61
        Top = 32
        Width = 372
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'NOME'
        DataSource = DMAgencias.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
      object DF_EIN: TTS_DBEdit
        Left = 270
        Top = 55
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        DataField = 'EIN'
        DataSource = DMAgencias.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
      object DF_Codigo: TTS_DBButtonEdit
        Left = 61
        Top = 10
        Width = 121
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMAgencias.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000F0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFF0FFFFFFFFFFFFFFF0FF0078FFFFFFFFF0FF0B3078FFFFFFF0FFF0BB0078FF
              FFF0FFFF0BB3007FFFF0FFFFF0BBB007FFF0FFFFF00BBB008FF0FFFF00BBB008
              FFF0FFFFF00BBB008FF0FFFFFFF00BB008F0FFFFFFFFF00B0080FFFFFFFFFFF0
              00F0FFFFFFFFFFFFFFF0}
            Kind = bkGlyph
          end>
        OnButtonClick = DF_CodigoButtonClick
        Height = 19
        ExistButtons = True
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 702
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 77
      Caption = 'Agentes'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 666
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 398
    Top = 123
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 510
    Top = 41
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 489
    Top = 107
  end
  inherited ImgPadrao: TImageList
    Left = 427
    Top = 107
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Agentes'
    Left = 449
    Top = 26
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 463
    Top = 11
    inherited Ajuda1: TMenuItem
      HelpContext = 392
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 498
    Top = 5
  end
  object ppmIndexadores: TTS_PopupMenu
    Left = 355
    Top = 6
    object Indexadores1: TMenuItem
      Caption = 'Incluir'
      OnClick = Indexadores1Click
    end
    object Apagar1: TMenuItem
      Caption = 'Apagar'
      OnClick = Apagar1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CadastrarIndexador1: TMenuItem
      Caption = 'Cadastrar Indexador'
      OnClick = CadastrarIndexador1Click
    end
  end
end

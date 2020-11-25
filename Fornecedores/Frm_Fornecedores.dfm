inherited FrmFornecedores: TFrmFornecedores
  Left = 276
  Top = 150
  Width = 720
  Height = 425
  ActiveControl = DF_Nome
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Fornecedores / Compras'
  Constraints.MaxHeight = 425
  Constraints.MaxWidth = 720
  Constraints.MinHeight = 425
  Constraints.MinWidth = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel [0]
    Width = 589
    Height = 344
    inherited Grid: TTS_QDBGrid
      Width = 587
      Height = 342
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object GridCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridFONE1: TdxDBGridMaskColumn
        Caption = 'Telefone'
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object GridCONTATO: TdxDBGridMaskColumn
        Caption = 'Contato'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object GridcfSALDO: TdxDBGridColumn
        Caption = 'Saldo'
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cfSALDO'
      end
      object GridcfCREDITO: TdxDBGridMaskColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cfCREDITO'
      end
      object GridENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object GridCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object GridUF: TdxDBGridMaskColumn
        Caption = 'Estado'
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object GridCEP: TdxDBGridMaskColumn
        Caption = 'Zip'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object GridPAIS: TdxDBGridMaskColumn
        Caption = 'Pa'#237's'
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAIS'
      end
      object GridFAX: TdxDBGridMaskColumn
        Caption = 'Fax'
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object GridEMAIL: TdxDBGridMaskColumn
        Caption = 'Email'
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 587
      Height = 342
    end
    inherited sbDados: TTS_Panel
      Width = 587
      Height = 342
      Color = 15196656
      object TS_Label1: TTS_Label
        Left = 26
        Top = 22
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
      object TS_Label10: TTS_Label
        Left = 285
        Top = 2
        Width = 75
        Height = 17
        Caption = 'Data Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label19: TTS_Label
        Left = 19
        Top = 3
        Width = 58
        Height = 17
        Caption = 'C'#243'di&go:'
        FocusControl = DF_Codigo
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
        Left = 362
        Top = 2
        Width = 96
        Height = 19
        DataField = 'DATACADASTRO'
        DataSource = DMFornecedores.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        StyleControler = DMProjeto.esFornecedores
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'Tahoma'
        EditFont.Style = []
        EditObjectStyle = esDBDateTimePicker
        EditObjectBorder = bsSingle
        NextControl = DF_Nome
        EditOffSet.x = 0
        EditOffSet.y = 2
      end
      object TS_Label17: TTS_Label
        Left = 424
        Top = 42
        Width = 56
        Height = 13
        Caption = 'Saldo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label27: TTS_Label
        Left = 423
        Top = 22
        Width = 57
        Height = 13
        Caption = 'Cr'#233'dito:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape3: TTS_Shape
        Left = 484
        Top = 40
        Width = 79
        Height = 18
        Brush.Style = bsClear
        Pen.Color = 11775972
        Transparent = False
      end
      object TS_DBTextEffect3: TTS_DBTextEffect
        Left = 487
        Top = 43
        Width = 72
        Height = 14
        Cursor = crHandPoint
        Hint = 
          'Este valor se refere aos cheques pr'#233'-datados que o cliente pagou' +
          ' que ainda n'#227'o foram compensado.'
        Alignment = taRightJustify
        DataField = 'cfSALDO'
        DataSource = DMFornecedores.C_TabelaDS
        Effects.Style = tsRaised
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = TS_DBTextEffect3Click
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'Tahoma'
        EditFont.Style = []
      end
      object TS_Shape1: TTS_Shape
        Left = 484
        Top = 20
        Width = 79
        Height = 18
        Brush.Style = bsClear
        Pen.Color = 11775972
        Transparent = False
      end
      object TS_DBTextEffect1: TTS_DBTextEffect
        Left = 487
        Top = 23
        Width = 72
        Height = 14
        Cursor = crHandPoint
        Hint = 
          'Este valor se refere aos cheques pr'#233'-datados que o cliente pagou' +
          ' que ainda n'#227'o foram compensado.'
        Alignment = taRightJustify
        DataField = 'CREDITO'
        DataSource = DMFornecedores.C_TabelaDS
        Effects.Style = tsRaised
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = TS_DBTextEffect1Click
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'Tahoma'
        EditFont.Style = []
      end
      object TS_Label25: TTS_Label
        Left = 21
        Top = 60
        Width = 55
        Height = 17
        Caption = 'CPF/CNPJ:'
        FocusControl = dfCNPJ
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
        Left = 232
        Top = 60
        Width = 103
        Height = 17
        Caption = 'Insc. Est.:'
        FocusControl = TS_DBMaskEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 2
        Top = 41
        Width = 75
        Height = 17
        Caption = 'Raz'#227'o Social:'
        FocusControl = TS_DBEdit2
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
        Left = 11
        Top = 79
        Width = 65
        Caption = 'Pessoa:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object pcAbas: TTS_PageControl
        Left = 2
        Top = 94
        Width = 590
        Height = 250
        ActivePage = tsEndereco
        OwnerDraw = True
        TabIndex = 0
        TabOrder = 6
        ActivePageIndex = 0
        Transparent = False
        TabColor = 15196656
        TabColorActive = 11775972
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        TabFontActive.Charset = DEFAULT_CHARSET
        TabFontActive.Color = clWindowText
        TabFontActive.Height = -11
        TabFontActive.Name = 'Tahoma'
        TabFontActive.Style = []
        object tsEndereco: TTS_TabSheet
          Caption = '&1- Endere'#231'o'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label2: TTS_Label
            Left = 7
            Top = 21
            Width = 65
            Height = 17
            Caption = 'Rua/Av.:'
            FocusControl = DF_Endereco
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label3: TTS_Label
            Left = 7
            Top = 61
            Width = 65
            Height = 17
            Caption = 'Cidade:'
            FocusControl = DF_Cidade
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label8: TTS_Label
            Left = 8
            Top = 102
            Width = 64
            Height = 17
            Caption = 'Fone 1:'
            FocusControl = DF_Fone1
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label4: TTS_Label
            Left = 20
            Top = 81
            Width = 52
            Cursor = crHandPoint
            Caption = 'Estado:'
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
            Left = 358
            Top = 81
            Width = 25
            Caption = 'Cep:'
            FocusControl = DF_CEP
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label13: TTS_Label
            Left = 331
            Top = 102
            Width = 52
            Height = 15
            Caption = 'Fone 2:'
            FocusControl = DF_Fone2
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 7
            Top = 142
            Width = 65
            Height = 17
            Caption = 'Contato:'
            FocusControl = DF_Contato
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label11: TTS_Label
            Left = 338
            Top = 122
            Width = 45
            Height = 15
            Caption = 'Celular:'
            FocusControl = DF_Celular
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label9: TTS_Label
            Left = 7
            Top = 162
            Width = 65
            Height = 17
            Caption = 'E-mail:'
            FocusControl = DF_Email
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 7
            Top = 182
            Width = 65
            Height = 17
            Caption = 'Site:'
            FocusControl = DF_Site
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label28: TTS_Label
            Left = 7
            Top = 41
            Width = 65
            Height = 17
            Caption = 'Bairro:'
            FocusControl = TS_DBEdit1
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label29: TTS_Label
            Left = 7
            Top = 201
            Width = 65
            Caption = 'Tipo Forn.:'
            FocusControl = TS_DBImageEdit1
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label30: TTS_Label
            Left = 27
            Top = 122
            Width = 45
            Height = 15
            Caption = 'Fax:'
            FocusControl = dfFax
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label157: TTS_Label
            Left = 354
            Top = 62
            Width = 29
            Caption = 'IBGE:'
            FocusControl = DF_CEP
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label32: TTS_Label
            Left = 331
            Top = 21
            Width = 52
            Height = 17
            Caption = 'N'#250'mero:'
            FocusControl = TS_DBEdit1
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label161: TTS_Label
            Left = 20
            Top = 4
            Width = 52
            Cursor = crHandPoint
            Caption = 'Pais:'
            FocusControl = dblPais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            FormatoTabela = False
            LinkTo = 'FrmPaises'
            LinkToResult = 0
          end
          object DF_Endereco: TTS_DBEdit
            Left = 72
            Top = 20
            Width = 265
            TabOrder = 0
            DataField = 'ENDERECO'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object DF_Cidade: TTS_DBEdit
            Left = 72
            Top = 60
            Width = 193
            TabOrder = 2
            DataField = 'CIDADE'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object DF_Fone1: TTS_DBEdit
            Left = 72
            Top = 100
            Width = 105
            TabOrder = 5
            DataField = 'FONE1'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object DF_Contato: TTS_DBEdit
            Left = 72
            Top = 140
            Width = 195
            TabOrder = 9
            DataField = 'CONTATO'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object DF_UF: TTS_DBLookupComboBox
            Left = 72
            Top = 80
            Width = 105
            TabOrder = 3
            DataField = 'lkUF'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DropDownRows = 15
            DropDownWidth = 185
            ClearKey = 32
            ListFieldName = 'UF;DESCRICAO'
            LookupKeyValue = Null
            Height = 19
          end
          object DF_CEP: TTS_DBMaskEdit
            Left = 383
            Top = 80
            Width = 108
            TabOrder = 4
            DataField = 'CEP'
            DataSource = DMFornecedores.C_TabelaDS
            EditMask = '99999\-9999;1;_'
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esFornecedores
            Height = 19
            StoredValues = 4
          end
          object DF_Fone2: TTS_DBEdit
            Left = 383
            Top = 100
            Width = 108
            TabOrder = 6
            DataField = 'FONE2'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object DF_Celular: TTS_DBEdit
            Left = 383
            Top = 120
            Width = 108
            TabOrder = 8
            DataField = 'CELULAR'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object DF_Email: TTS_DBButtonEdit
            Left = 72
            Top = 160
            Width = 265
            Hint = 
              'Clicando no bot'#227'o voc'#234' poder'#225' entrar no programa de correio elet' +
              'r'#244'nico padr'#227'o para enviar um email.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 10
            DataField = 'EMAIL'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
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
            Top = 180
            Width = 265
            Hint = 
              'Clicando no bot'#227'o voc'#234' poder'#225' entrar no programa de navegador da' +
              ' internet padr'#227'o para acessar um site.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 11
            DataField = 'SITE'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
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
          object TS_DBEdit1: TTS_DBEdit
            Left = 72
            Top = 40
            Width = 193
            TabOrder = 1
            DataField = 'BAIRRO'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBImageEdit1: TTS_DBImageEdit
            Left = 72
            Top = 200
            Width = 105
            TabOrder = 12
            DataField = 'TIPOEMPRESA'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Descriptions.Strings = (
              'Produtos'
              'Servi'#231'os'
              'Transportes')
            ImageIndexes.Strings = (
              '0'
              '1'
              '2')
            Values.Strings = (
              'P'
              'S'
              'T')
            Height = 19
          end
          object dfFax: TTS_DBEdit
            Left = 72
            Top = 120
            Width = 105
            TabOrder = 7
            DataField = 'FAX'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object cmbMunicipios: TTS_DBLookupComboBox
            Left = 383
            Top = 60
            Width = 179
            TabOrder = 13
            DataField = 'lkMunicipio'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
          object TS_DBMaskEdit2: TTS_DBMaskEdit
            Left = 383
            Top = 20
            Width = 53
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            DataField = 'NRO'
            DataSource = DMFornecedores.C_TabelaDS
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esFornecedores
            Height = 19
            StoredValues = 4
          end
          object dblPais: TTS_DBLookupComboBox
            Left = 71
            Top = 1
            Width = 265
            TabOrder = 15
            DataField = 'lkPais'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DropDownRows = 15
            DropDownWidth = 185
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
        end
        object tsCaracteristicas: TTS_TabSheet
          Caption = '&2- Caracter'#237'sticas'
          ImageIndex = 1
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label16: TTS_Label
            Left = -1
            Top = 25
            Width = 97
            Height = 17
            Cursor = crHandPoint
            Caption = 'Atividade:'
            FocusControl = DF_TipoAtividade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            FormatoTabela = False
            LinkTo = 'FrmTiposAtividade'
            LinkToResult = 0
            OnSetParametrosForm = TS_Label16SetParametrosForm
          end
          object TS_Label21: TTS_Label
            Left = -1
            Top = 45
            Width = 97
            Height = 17
            Cursor = crHandPoint
            Caption = 'Plano Pagamento:'
            FocusControl = DF_PlanoPagto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            FormatoTabela = False
            LinkTo = 'FrmPlanos_Pagamento'
            LinkToResult = 0
            OnSetParametrosForm = TS_Label21SetParametrosForm
          end
          object TS_Label22: TTS_Label
            Left = 17
            Top = 5
            Width = 79
            Height = 17
            Caption = 'Limite Cr'#233'dito:'
            FocusControl = DF_LimiteCredito
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label26: TTS_Label
            Left = -1
            Top = 85
            Width = 97
            Height = 17
            Cursor = crHandPoint
            Caption = 'Tipo Entrega:'
            FocusControl = DF_TipoEntrega
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            FormatoTabela = False
            LinkTo = 'FrmTiposEntrega'
            LinkToResult = 0
          end
          object TS_Label15: TTS_Label
            Left = 18
            Top = 105
            Width = 78
            Height = 17
            Caption = 'Observa'#231#227'o:'
            FocusControl = DF_OBS
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label31: TTS_Label
            Left = -10
            Top = 174
            Width = 105
            Height = 17
            Caption = 'Conta:'
            FocusControl = DF_Conta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
            WordWrap = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label18: TTS_Label
            Left = -12
            Top = 65
            Width = 108
            Height = 17
            Caption = 'Conta Pagamento:'
            FocusControl = DF_ContaPgto
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
          object TS_Label20: TTS_Label
            Left = -9
            Top = 155
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
          object TS_Label23: TTS_Label
            Left = 211
            Top = 6
            Width = 176
            Caption = 'Tempo M'#233'dio para Entrega (dias):'
            FocusControl = dfDiasEntrega
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object DF_TipoAtividade: TTS_DBLookupComboBox
            Left = 98
            Top = 23
            Width = 331
            TabOrder = 2
            DataField = 'lkTipoAtividade'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
          object DF_LimiteCredito: TTS_DBEditNumber
            Left = 98
            Top = 3
            Width = 93
            TabOrder = 0
            DataField = 'LIMITECREDITO'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
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
          object DF_TipoEntrega: TTS_DBLookupComboBox
            Left = 98
            Top = 83
            Width = 331
            TabOrder = 7
            DataField = 'lkTipoEntrega'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
          object DF_PlanoPagto: TTS_DBLookupComboBox
            Left = 98
            Top = 43
            Width = 331
            TabOrder = 3
            DataField = 'lkPlanoPagamento'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DropDownRows = 15
            ClearKey = 32
            LookupKeyValue = Null
            Height = 19
          end
          object DF_OBS: TTS_DBMemo
            Left = 98
            Top = 103
            Width = 330
            TabOrder = 8
            DataField = 'OBS'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 51
          end
          object DF_Conta: TTS_DBPopupEdit
            Left = 97
            Top = 173
            Width = 331
            TabOrder = 4
            Visible = False
            DataField = 'lkConta'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupControl = DlgPopupContas.pnPopup
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = DF_ContaInitPopup
            Height = 19
          end
          object DF_ContaPgto: TTS_DBPopupEdit
            Left = 98
            Top = 63
            Width = 331
            TabOrder = 5
            DataField = 'lkContaPagto'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupControl = DlgPopupContas.pnPopup
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = DF_ContaPgtoInitPopup
            Height = 19
          end
          object DF_ContaDespesas: TTS_DBPopupEdit
            Left = 98
            Top = 154
            Width = 331
            TabOrder = 6
            DataField = 'lkContaDespesas'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            PopupControl = DlgPopupContas.pnPopup
            PopupFormBorderStyle = pbsSysPanel
            OnInitPopup = DF_ContaDespesasInitPopup
            Height = 19
          end
          object dfDiasEntrega: TTS_DBMaskEdit
            Left = 391
            Top = 3
            Width = 38
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DataField = 'DIASPERIODO'
            DataSource = DMFornecedores.C_TabelaDS
            IgnoreMaskBlank = False
            StyleController = DMProjeto.esFornecedores
            Height = 19
            StoredValues = 4
          end
          object TS_DBCheckBox1: TTS_DBCheckBox
            Left = 523
            Top = 8
            Width = 56
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 9
            Caption = 'Fonte'
            DataField = 'FONTE'
            DataSource = DMFornecedores.C_TabelaDS
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 19
          end
        end
        object tsCustomizados: TTS_TabSheet
          Caption = '&3- Campos Customizados'
          ImageIndex = 2
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object lblCampo1: TTS_Label
            Left = 48
            Top = 2
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo2: TTS_Label
            Left = 48
            Top = 25
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo3: TTS_Label
            Left = 48
            Top = 48
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo4: TTS_Label
            Left = 48
            Top = 70
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo5: TTS_Label
            Left = 49
            Top = 92
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo6: TTS_Label
            Left = 48
            Top = 115
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo7: TTS_Label
            Left = 48
            Top = 138
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo8: TTS_Label
            Left = 48
            Top = 160
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo9: TTS_Label
            Left = 48
            Top = 183
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object lblCampo10: TTS_Label
            Left = 48
            Top = 205
            Width = 125
            Caption = 'lblCampo1'
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_BitBtn1: TTS_SpeedButton
            Left = 453
            Top = 12
            Width = 104
            Height = 29
            Caption = 'Definir Campos'
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
            OnClick = TS_BitBtn1Click
            RepeatedClick = False
            Border = True
          end
          object dfCampo1: TTS_DBEdit
            Left = 174
            Top = 1
            Width = 251
            TabOrder = 0
            Visible = False
            DataField = 'CAMPO01'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo2: TTS_DBEdit
            Left = 174
            Top = 23
            Width = 251
            TabOrder = 1
            Visible = False
            DataField = 'CAMPO02'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo3: TTS_DBEdit
            Left = 174
            Top = 46
            Width = 251
            TabOrder = 2
            Visible = False
            DataField = 'CAMPO03'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo4: TTS_DBEdit
            Left = 174
            Top = 68
            Width = 251
            TabOrder = 3
            Visible = False
            DataField = 'CAMPO04'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo5: TTS_DBEdit
            Left = 174
            Top = 91
            Width = 251
            TabOrder = 4
            Visible = False
            DataField = 'CAMPO05'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo6: TTS_DBEdit
            Left = 174
            Top = 113
            Width = 251
            TabOrder = 5
            Visible = False
            DataField = 'CAMPO06'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo7: TTS_DBEdit
            Left = 174
            Top = 136
            Width = 251
            TabOrder = 6
            Visible = False
            DataField = 'CAMPO07'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo8: TTS_DBEdit
            Left = 174
            Top = 158
            Width = 251
            TabOrder = 7
            Visible = False
            DataField = 'CAMPO08'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo9: TTS_DBEdit
            Left = 174
            Top = 181
            Width = 251
            TabOrder = 8
            Visible = False
            DataField = 'CAMPO09'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object dfCampo10: TTS_DBEdit
            Left = 174
            Top = 204
            Width = 251
            TabOrder = 9
            Visible = False
            DataField = 'CAMPO10'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            DistinctEditOn = False
            Height = 19
          end
          object cbCampo1: TTS_DBCheckBox
            Left = 174
            Top = 0
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 10
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO01'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo2: TTS_DBCheckBox
            Left = 174
            Top = 22
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 11
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO02'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo3: TTS_DBCheckBox
            Left = 174
            Top = 45
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 12
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO03'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo4: TTS_DBCheckBox
            Left = 174
            Top = 67
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 13
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO04'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo5: TTS_DBCheckBox
            Left = 174
            Top = 90
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 14
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO05'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo6: TTS_DBCheckBox
            Left = 174
            Top = 112
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 15
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO06'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo7: TTS_DBCheckBox
            Left = 174
            Top = 135
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 16
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO07'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo8: TTS_DBCheckBox
            Left = 174
            Top = 157
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 17
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO08'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo9: TTS_DBCheckBox
            Left = 174
            Top = 180
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 18
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO09'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cbCampo10: TTS_DBCheckBox
            Left = 174
            Top = 203
            Width = 251
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            Style.HotTrack = False
            TabOrder = 19
            Visible = False
            Caption = 'cbCampo1'
            DataField = 'CAMPO10'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            DisableEdit = False
            Height = 17
          end
          object cmbCampo1: TTS_DBComboBox
            Left = 173
            Top = -1
            Width = 253
            TabOrder = 20
            DataField = 'CAMPO01'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo2: TTS_DBComboBox
            Left = 173
            Top = 22
            Width = 253
            TabOrder = 21
            DataField = 'CAMPO02'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo3: TTS_DBComboBox
            Left = 173
            Top = 45
            Width = 253
            TabOrder = 22
            DataField = 'CAMPO03'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo4: TTS_DBComboBox
            Left = 173
            Top = 67
            Width = 253
            TabOrder = 23
            DataField = 'CAMPO04'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo5: TTS_DBComboBox
            Left = 173
            Top = 90
            Width = 253
            TabOrder = 24
            DataField = 'CAMPO05'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo6: TTS_DBComboBox
            Left = 173
            Top = 112
            Width = 253
            TabOrder = 25
            DataField = 'CAMPO06'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo7: TTS_DBComboBox
            Left = 173
            Top = 135
            Width = 253
            TabOrder = 26
            DataField = 'CAMPO07'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo8: TTS_DBComboBox
            Left = 173
            Top = 157
            Width = 253
            TabOrder = 27
            DataField = 'CAMPO08'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo9: TTS_DBComboBox
            Left = 173
            Top = 180
            Width = 253
            TabOrder = 28
            DataField = 'CAMPO09'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
          object cmbCampo10: TTS_DBComboBox
            Left = 173
            Top = 202
            Width = 253
            TabOrder = 29
            DataField = 'CAMPO10'
            DataSource = DMFornecedores.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 21
          end
        end
      end
      object DF_Nome: TTS_DBEdit
        Left = 78
        Top = 20
        Width = 355
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'NOME'
        DataSource = DMFornecedores.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
        DistinctEditOn = False
        Height = 19
      end
      object DF_Codigo: TTS_DBButtonEdit
        Left = 78
        Top = 1
        Width = 125
        Style.BorderColor = 11775972
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        CharCase = ecUpperCase
        DataField = 'CODIGO'
        DataSource = DMFornecedores.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
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
        OnButtonClick = DF_CodigoButtonClick
        Height = 19
        ExistButtons = True
      end
      object dfCNPJ: TTS_DBMaskEdit
        Left = 78
        Top = 58
        Width = 121
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = 11775972
        TabOrder = 3
        OnEnter = dfCNPJEnter
        OnExit = dfCNPJExit
        DataField = 'CPF_CNPJ'
        DataSource = DMFornecedores.C_TabelaDS
        IgnoreMaskBlank = True
        StyleController = DMProjeto.esFornecedores
        Height = 19
        StoredValues = 4
      end
      object TS_DBMaskEdit1: TTS_DBMaskEdit
        Left = 336
        Top = 58
        Width = 97
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        DataField = 'INSCRICAO_EST'
        DataSource = DMFornecedores.C_TabelaDS
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esFornecedores
        Height = 19
        StoredValues = 4
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 78
        Top = 39
        Width = 355
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DataField = 'RAZAO'
        DataSource = DMFornecedores.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBImageEdit2: TTS_DBImageEdit
        Left = 78
        Top = 77
        Width = 89
        TabOrder = 5
        DataField = 'PESSOA_FJ'
        DataSource = DMFornecedores.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
        Descriptions.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'F'
          'J')
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 587
    end
  end
  inherited pnNavigator: TTS_Panel [1]
    Left = 589
    Height = 344
    inherited btComando1: TTS_SpeedButton
      Height = 30
      Hint = 
        'Permite visualizar v'#225'rias informa'#231#245'es pertinentes ao fornecedor ' +
        'selecionado e ver seu hist'#243'ricos de compras'
      Caption = 'Informa'#231#245'es Gerais'
      OnClick = TS_SpeedButton1Click
    end
    inherited btComando2: TTS_SpeedButton
      Top = 232
      Height = 30
      Hint = 
        'Permite visualizar as '#250'ltimas compras efetuadas pelo fornecedor ' +
        'selecionado'
      Caption = #218'ltimas Compras'
      Visible = True
      OnClick = TS_SpeedButton3Click
    end
    inherited bv2: TTS_Bevel
      Top = 168
    end
    inherited bv3: TTS_Bevel
      Top = 35
    end
    inherited bv1: TTS_Bevel
      Top = 105
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 310
    end
    object TS_SpeedButton4: TTS_SpeedButton [9]
      Left = 1
      Top = 202
      Width = 113
      Height = 30
      Hint = 
        'Permite visualizar a situa'#231#227'o financeira das parcelas a pagar do' +
        ' fornecedor selecionado'
      Caption = 'Extrato de Parcelas'
      OnClick = TS_SpeedButton4Click
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object btOutros: TTS_SpeedButton [10]
      Left = 1
      Top = 262
      Width = 113
      Height = 30
      Caption = 'Outros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      Spacing = 8
      OnMouseUp = btOutrosMouseUp
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    inherited pnInicioFim: TTS_Panel
      Top = 292
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 704
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 128
      Caption = 'Fornecedores'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 679
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 439
    Top = 363
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 419
    Top = 363
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 514
    Top = 333
    inherited ApagarDados: TMenuItem
      Caption = 'Apagar Fornecedor'
    end
  end
  inherited ImgPadrao: TImageList
    Left = 461
    Top = 364
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    RefreshList.Strings = (
      'C_ContasPagto=Contas'
      'C_ContaDespesa=Contas')
    CamposObrigatorios.Strings = (
      'DF_Codigo'
      'DF_Nome'
      'cmbMunicipios')
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Fornecedores'
    OnEstado_Inicial = FormComponentEstado_Inicial
    FirstEditField = DF_Codigo
    FirstSearchField = DF_Nome
    Left = 462
    Top = 109
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 627
    Top = 65535
    inherited PassoaPasso1: TMenuItem
      Hint = 'Ajuda_FrmFornecedores.htm'
    end
    inherited Ajuda1: TMenuItem
      HelpContext = 434
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 531
    Top = 199
  end
  inherited FormStorage: TFormStorage
    Left = 540
    Top = 106
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 420
    Top = 336
  end
  object ppmOutros: TTS_PopupMenu
    OnPopup = ppmOutrosPopup
    Left = 483
    Top = 249
    object ppmPagarConta: TMenuItem
      Caption = 'Pagar Conta...'
      OnClick = ppmPagarContaClick
    end
    object FazerOperacao: TMenuItem
      Caption = 'Fazer Opera'#231#227'o'
      object PedidosdeCompra1: TMenuItem
        Caption = 'Pedidos de Compra'
        OnClick = PedidosdeCompra1Click
      end
      object EntradadeItens1: TMenuItem
        Caption = 'Entrada de Itens'
        OnClick = EntradadeItens1Click
      end
      object DevoluesdeItens1: TMenuItem
        Caption = 'Devolu'#231#245'es de Itens'
        OnClick = DevoluesdeItens1Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Compromissos1: TMenuItem
      Caption = 'Compromissos'
      OnClick = btCompromissosClick
    end
    object Lembretes1: TMenuItem
      Caption = 'Lembrete'
      OnClick = btLembClick
    end
    object Ocorrencias1: TMenuItem
      Caption = 'Ocorr'#234'ncias'
      OnClick = btOcorrClick
    end
    object Memorizar1: TMenuItem
      Caption = 'Memorizar'
      OnClick = btMemClick
    end
    object Alertas1: TMenuItem
      Caption = 'Alertas'
      OnClick = btAlertClick
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
  end
  object ppFornecedor: TppReport
    AutoStop = False
    DataPipeline = ppDBFornecedor
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 121
    DeviceType = 'Screen'
    Left = 474
    Top = 1
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFornecedor'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 24077
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Identifica'#231#227'o do Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5122
        mmLeft = 69227
        mmTop = 27252
        mmWidth = 59732
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79640
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'RAZAO'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 6350
        mmWidth = 166159
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CPF_CNPJ'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 11642
        mmWidth = 43392
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ENDERECO'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 27517
        mmWidth = 135732
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'NRO'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 27517
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 6350
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Nome Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 50800
        mmTop = 1588
        mmWidth = 26204
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'CPF / CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 11642
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 27517
        mmWidth = 20955
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 160073
        mmTop = 27517
        mmWidth = 14478
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 19579
        mmWidth = 192088
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 77788
        mmTop = 1588
        mmWidth = 115623
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4699
        mmLeft = 1323
        mmTop = 21960
        mmWidth = 18203
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 32279
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'BAIRRO'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 32279
        mmWidth = 75142
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 37042
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CIDADE'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 37042
        mmWidth = 75142
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 99484
        mmTop = 37042
        mmWidth = 12912
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'lkUF'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 113506
        mmTop = 37042
        mmWidth = 79375
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 99484
        mmTop = 32279
        mmWidth = 8382
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CEP'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 108479
        mmTop = 32279
        mmWidth = 50536
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Inscri'#231#227'o Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 79111
        mmTop = 11642
        mmWidth = 32216
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'INSCRICAO_EST'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 11642
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CODIGO'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 1588
        mmWidth = 21167
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 1323
        mmTop = 44450
        mmWidth = 192088
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Informa'#231#245'es Complementares'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4699
        mmLeft = 1323
        mmTop = 47096
        mmWidth = 59140
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Telefone 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 52917
        mmWidth = 18373
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FONE1'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 20373
        mmTop = 52917
        mmWidth = 47890
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Telefone 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 91546
        mmTop = 52917
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FONE2'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 52917
        mmWidth = 47890
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 57944
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FAX'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 20373
        mmTop = 57944
        mmWidth = 47890
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91546
        mmTop = 57944
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CELULAR'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 57944
        mmWidth = 47890
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 62971
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CONTATO'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 62971
        mmWidth = 69056
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'E-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91546
        mmTop = 62971
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'EMAIL'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 62971
        mmWidth = 81227
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Site:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 67998
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'SITE'
        DataPipeline = ppDBFornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFornecedor'
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 67998
        mmWidth = 92340
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppDBFornecedor: TppDBPipeline
    DataSource = DMFornecedores.C_TabelaDS
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBFornecedor'
    Left = 351
    object ppDBFornecedorppField1: TppField
      Alignment = taRightJustify
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBFornecedorppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'FAVORECIDO'
      FieldName = 'FAVORECIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBFornecedorppField3: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBFornecedorppField4: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppDBFornecedorppField5: TppField
      FieldAlias = 'RAZAO'
      FieldName = 'RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppDBFornecedorppField6: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBFornecedorppField7: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppDBFornecedorppField8: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppDBFornecedorppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppDBFornecedorppField10: TppField
      FieldAlias = 'CAIXAPOSTAL'
      FieldName = 'CAIXAPOSTAL'
      FieldLength = 25
      DisplayWidth = 25
      Position = 9
    end
    object ppDBFornecedorppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAIS'
      FieldName = 'PAIS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBFornecedorppField12: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppDBFornecedorppField13: TppField
      FieldAlias = 'FONE2'
      FieldName = 'FONE2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBFornecedorppField14: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppDBFornecedorppField15: TppField
      FieldAlias = 'CELULAR'
      FieldName = 'CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppDBFornecedorppField16: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object ppDBFornecedorppField17: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object ppDBFornecedorppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOFAVORECIDO'
      FieldName = 'TIPOFAVORECIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBFornecedorppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOATIVIDADE'
      FieldName = 'TIPOATIVIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppDBFornecedorppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'PLANOPAGAMENTO'
      FieldName = 'PLANOPAGAMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppDBFornecedorppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBFornecedorppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'LIMITECREDITO'
      FieldName = 'LIMITECREDITO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object ppDBFornecedorppField23: TppField
      FieldAlias = 'TAXAVEL'
      FieldName = 'TAXAVEL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object ppDBFornecedorppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAX'
      FieldName = 'TAX'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBFornecedorppField25: TppField
      FieldAlias = 'EIN'
      FieldName = 'EIN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 24
    end
    object ppDBFornecedorppField26: TppField
      FieldAlias = 'SSN'
      FieldName = 'SSN'
      FieldLength = 11
      DisplayWidth = 11
      Position = 25
    end
    object ppDBFornecedorppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'TABELAPRECO'
      FieldName = 'TABELAPRECO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppDBFornecedorppField28: TppField
      FieldAlias = 'DESATIVADO'
      FieldName = 'DESATIVADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 27
    end
    object ppDBFornecedorppField29: TppField
      FieldAlias = 'EXIGIVEL1099'
      FieldName = 'EXIGIVEL1099'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppDBFornecedorppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPOENTREGA'
      FieldName = 'TIPOENTREGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppDBFornecedorppField31: TppField
      FieldAlias = 'DATACADASTRO'
      FieldName = 'DATACADASTRO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 30
    end
    object ppDBFornecedorppField32: TppField
      FieldAlias = 'SITE'
      FieldName = 'SITE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 31
    end
    object ppDBFornecedorppField33: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 255
      DisplayWidth = 255
      Position = 32
    end
    object ppDBFornecedorppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPORTACAO'
      FieldName = 'IMPORTACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppDBFornecedorppField35: TppField
      FieldAlias = 'SITUACAO'
      FieldName = 'SITUACAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object ppDBFornecedorppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARGO'
      FieldName = 'CARGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppDBFornecedorppField37: TppField
      FieldAlias = 'LOGOTIPO'
      FieldName = 'LOGOTIPO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppDBFornecedorppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROSFACTORY'
      FieldName = 'JUROSFACTORY'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 37
    end
    object ppDBFornecedorppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAXASFACTORY'
      FieldName = 'TAXASFACTORY'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 38
    end
    object ppDBFornecedorppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'FLOATINGFACTORY'
      FieldName = 'FLOATINGFACTORY'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 39
    end
    object ppDBFornecedorppField41: TppField
      FieldAlias = 'MEMO_CHECK'
      FieldName = 'MEMO_CHECK'
      FieldLength = 255
      DisplayWidth = 255
      Position = 40
    end
    object ppDBFornecedorppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDITO'
      FieldName = 'CREDITO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 41
    end
    object ppDBFornecedorppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 42
    end
    object ppDBFornecedorppField44: TppField
      FieldAlias = 'NUMERO_REVENDA'
      FieldName = 'NUMERO_REVENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 43
    end
    object ppDBFornecedorppField45: TppField
      FieldAlias = 'TIPO_FUNC'
      FieldName = 'TIPO_FUNC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 44
    end
    object ppDBFornecedorppField46: TppField
      FieldAlias = 'DATANASC'
      FieldName = 'DATANASC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 45
    end
    object ppDBFornecedorppField47: TppField
      FieldAlias = 'CAMPO01'
      FieldName = 'CAMPO01'
      FieldLength = 255
      DisplayWidth = 255
      Position = 46
    end
    object ppDBFornecedorppField48: TppField
      FieldAlias = 'CAMPO02'
      FieldName = 'CAMPO02'
      FieldLength = 255
      DisplayWidth = 255
      Position = 47
    end
    object ppDBFornecedorppField49: TppField
      FieldAlias = 'CAMPO03'
      FieldName = 'CAMPO03'
      FieldLength = 255
      DisplayWidth = 255
      Position = 48
    end
    object ppDBFornecedorppField50: TppField
      FieldAlias = 'CAMPO04'
      FieldName = 'CAMPO04'
      FieldLength = 255
      DisplayWidth = 255
      Position = 49
    end
    object ppDBFornecedorppField51: TppField
      FieldAlias = 'CAMPO05'
      FieldName = 'CAMPO05'
      FieldLength = 255
      DisplayWidth = 255
      Position = 50
    end
    object ppDBFornecedorppField52: TppField
      FieldAlias = 'CAMPO06'
      FieldName = 'CAMPO06'
      FieldLength = 255
      DisplayWidth = 255
      Position = 51
    end
    object ppDBFornecedorppField53: TppField
      FieldAlias = 'CAMPO07'
      FieldName = 'CAMPO07'
      FieldLength = 255
      DisplayWidth = 255
      Position = 52
    end
    object ppDBFornecedorppField54: TppField
      FieldAlias = 'CAMPO08'
      FieldName = 'CAMPO08'
      FieldLength = 255
      DisplayWidth = 255
      Position = 53
    end
    object ppDBFornecedorppField55: TppField
      FieldAlias = 'CAMPO09'
      FieldName = 'CAMPO09'
      FieldLength = 255
      DisplayWidth = 255
      Position = 54
    end
    object ppDBFornecedorppField56: TppField
      FieldAlias = 'CAMPO10'
      FieldName = 'CAMPO10'
      FieldLength = 255
      DisplayWidth = 255
      Position = 55
    end
    object ppDBFornecedorppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO'
      FieldName = 'COMISSAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 56
    end
    object ppDBFornecedorppField58: TppField
      FieldAlias = 'ISVENDEDOR'
      FieldName = 'ISVENDEDOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 57
    end
    object ppDBFornecedorppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONTAPAGAMENTO'
      FieldName = 'CONTAPAGAMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppDBFornecedorppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONTADESPESAS'
      FieldName = 'CONTADESPESAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppDBFornecedorppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 60
    end
    object ppDBFornecedorppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'cfSALDO'
      FieldName = 'cfSALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object ppDBFornecedorppField63: TppField
      FieldAlias = 'lkUF'
      FieldName = 'lkUF'
      FieldLength = 50
      DisplayWidth = 15
      Position = 62
    end
    object ppDBFornecedorppField64: TppField
      FieldAlias = 'lkPais'
      FieldName = 'lkPais'
      FieldLength = 30
      DisplayWidth = 30
      Position = 63
    end
    object ppDBFornecedorppField65: TppField
      FieldAlias = 'lkTipoEntrega'
      FieldName = 'lkTipoEntrega'
      FieldLength = 30
      DisplayWidth = 30
      Position = 64
    end
    object ppDBFornecedorppField66: TppField
      FieldAlias = 'lkPlanoPagamento'
      FieldName = 'lkPlanoPagamento'
      FieldLength = 30
      DisplayWidth = 30
      Position = 65
    end
    object ppDBFornecedorppField67: TppField
      FieldAlias = 'lkTipoAtividade'
      FieldName = 'lkTipoAtividade'
      FieldLength = 30
      DisplayWidth = 30
      Position = 66
    end
    object ppDBFornecedorppField68: TppField
      FieldAlias = 'lkConta'
      FieldName = 'lkConta'
      FieldLength = 30
      DisplayWidth = 30
      Position = 67
    end
    object ppDBFornecedorppField69: TppField
      FieldAlias = 'lkContaPagto'
      FieldName = 'lkContaPagto'
      FieldLength = 30
      DisplayWidth = 30
      Position = 68
    end
    object ppDBFornecedorppField70: TppField
      FieldAlias = 'lkContaDespesas'
      FieldName = 'lkContaDespesas'
      FieldLength = 30
      DisplayWidth = 30
      Position = 69
    end
    object ppDBFornecedorppField71: TppField
      FieldAlias = 'ULTCOMPRA'
      FieldName = 'ULTCOMPRA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 70
    end
    object ppDBFornecedorppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'ULTVALORCOMPRA'
      FieldName = 'ULTVALORCOMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 71
    end
    object ppDBFornecedorppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIASPERIODO'
      FieldName = 'DIASPERIODO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object ppDBFornecedorppField74: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 73
    end
    object ppDBFornecedorppField75: TppField
      FieldAlias = 'INSCRICAO_EST'
      FieldName = 'INSCRICAO_EST'
      FieldLength = 14
      DisplayWidth = 14
      Position = 74
    end
    object ppDBFornecedorppField76: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 75
    end
    object ppDBFornecedorppField77: TppField
      FieldAlias = 'TIPOEMPRESA'
      FieldName = 'TIPOEMPRESA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 76
    end
    object ppDBFornecedorppField78: TppField
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 1
      DisplayWidth = 1
      Position = 77
    end
    object ppDBFornecedorppField79: TppField
      FieldAlias = 'FONTE'
      FieldName = 'FONTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object ppDBFornecedorppField80: TppField
      FieldAlias = 'OLDNOME'
      FieldName = 'OLDNOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 79
    end
    object ppDBFornecedorppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'MUNICIPIO'
      FieldName = 'MUNICIPIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 80
    end
    object ppDBFornecedorppField82: TppField
      FieldAlias = 'lkMunicipio'
      FieldName = 'lkMunicipio'
      FieldLength = 50
      DisplayWidth = 50
      Position = 81
    end
    object ppDBFornecedorppField83: TppField
      FieldAlias = 'NRO'
      FieldName = 'NRO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 82
    end
    object ppDBFornecedorppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
  end
end

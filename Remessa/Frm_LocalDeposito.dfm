inherited FrmLocalDeposito: TFrmLocalDeposito
  Left = 82
  Top = 115
  Width = 694
  Height = 431
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 571
    Height = 354
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 320
    end
  end
  inherited pnDados: TTS_Panel
    Width = 571
    Height = 354
    inherited Grid: TTS_QDBGrid
      Width = 569
      Height = 352
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOME_CLIENTE'
      object GridNOME_CLIENTE: TdxDBGridMaskColumn
        Caption = 'Nome do Cliente'
        Width = 165
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_CLIENTE'
      end
      object GridFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
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
      object GridUF: TdxDBGridMaskColumn
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object GridCEP: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object GridEIN: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EIN'
      end
      object GridCAIXAPOSTAL: TdxDBGridMaskColumn
        Width = 154
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object GridPAIS: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAIS'
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
      object GridFAX: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object GridCELULAR: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object GridCONTATO: TdxDBGridMaskColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object GridEMAIL: TdxDBGridMaskColumn
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object GridTAX: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAX'
      end
      object GridSSN: TdxDBGridMaskColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SSN'
      end
      object GridlkUF: TdxDBGridLookupColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUF'
      end
      object GridlkPais: TdxDBGridLookupColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkPais'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 569
      Height = 352
    end
    inherited sbDados: TTS_Panel
      Width = 569
      Height = 352
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 45
        Top = 51
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
        Left = 41
        Top = 73
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
        Left = 240
        Top = 74
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
        Left = 239
        Top = 29
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
        Left = 38
        Top = 29
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
        Left = 317
        Top = 29
        Width = 86
        Height = 17
        Cursor = crIBeam
        DataField = 'DATACADASTRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
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
      object TS_Label16: TTS_Label
        Left = 409
        Top = 7
        Width = 143
        Height = 28
        Alignment = taLeftJustify
        Caption = 'Este campo informa quem '#233' o cliente deste receptor.'
        FormatoTabela = False
        LinkToResult = 0
      end
      object pcAbas: TTS_PageControl
        Left = 4
        Top = 97
        Width = 562
        Height = 258
        ActivePage = tsPagina2
        OwnerDraw = True
        TabIndex = 0
        TabOrder = 6
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
        object tsPagina2: TTS_TabSheet
          Caption = '  Locais de Entrega  '
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_QDBGridDep: TTS_QDBGrid
            Left = 0
            Top = 0
            Width = 554
            Height = 230
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'RECEPTORDEPOSITO'
            SummaryGroups = <>
            SummarySeparator = '|'
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = ppmContas
            TabOrder = 0
            AutoSearchColor = clYellow
            AutoSearchTextColor = clNavy
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = DMLocalDeposito.dsDeposito
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
            OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            OnColumnSorting = TS_QDBGridDepColumnSorting
            TS_PermitirQuantidade = False
            TS_DescriptionCanChange = False
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
            TS_SelectedColumn = 'DESCRICAO'
            TS_ID = 0
            TS_TipoDescricao = tdVenda
            TS_SummaryFooterQtdText = 'Qtd. Geral:'
            TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
            object TS_QDBGridDepRECEPTORDEPOSITO: TdxDBGridMaskColumn
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 31
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RECEPTORDEPOSITO'
            end
            object TS_QDBGridDepRECEPTOR: TdxDBGridMaskColumn
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RECEPTOR'
            end
            object TS_QDBGridDepDESCRICAO: TdxDBGridMaskColumn
              Caption = 'Descri'#231#227'o do Local de Entrega'
              HeaderAlignment = taCenter
              Width = 223
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DESCRICAO'
            end
            object TS_QDBGridDepColumn10: TdxDBGridCheckColumn
              Caption = 'Padr'#227'o'
              HeaderAlignment = taCenter
              Width = 41
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PADRAO'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object TS_QDBGridDepAGENCIA: TdxDBGridMaskColumn
              Caption = 'N'#186' Ag'#234'ncia'
              HeaderAlignment = taCenter
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'AGENCIA'
            end
            object TS_QDBGridDepCONTA: TdxDBGridMaskColumn
              Caption = 'N'#186' Conta'
              HeaderAlignment = taCenter
              Width = 83
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONTA'
            end
            object TS_QDBGridDepBANCO: TdxDBGridMaskColumn
              DisableCustomizing = True
              HeaderAlignment = taCenter
              Visible = False
              Width = 20
              BandIndex = 0
              RowIndex = 0
              FieldName = 'BANCO'
            end
            object TS_QDBGridDepcbBanco: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              HeaderGlyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000000000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                700077777777777770007777700077777000777770C077777000777770C07777
                7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
                7000777770C07777700077777000777770007777777777777000777777777777
                7000}
              Width = 131
              BandIndex = 0
              RowIndex = 0
              FieldName = 'cbBanco'
            end
            object TS_QDBGridDepOBS: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 600
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBS'
            end
          end
        end
        object tsEndereco: TTS_TabSheet
          Caption = '     Endere'#231'o      '
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 554
            Height = 230
            Align = alClient
            BevelOuter = bvNone
            Color = 15456728
            TabOrder = 0
            object TS_Label2: TTS_Label
              Left = 4
              Top = 8
              Width = 65
              Height = 17
              Caption = 'Endere'#231'o:'
              FocusControl = DF_Endereco
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label6: TTS_Label
              Left = 4
              Top = 53
              Width = 65
              Height = 17
              Caption = 'Caixa Postal:'
              FocusControl = DF_CaixaPostal
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label3: TTS_Label
              Left = 4
              Top = 31
              Width = 65
              Height = 17
              Caption = 'Cidade:'
              FocusControl = DF_Cidade
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label8: TTS_Label
              Left = 4
              Top = 79
              Width = 65
              Height = 17
              Caption = 'Fone 1:'
              FocusControl = DF_Fone1
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label4: TTS_Label
              Left = 277
              Top = 32
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
              Left = 435
              Top = 31
              Width = 25
              Caption = 'Zip:'
              FocusControl = DF_CEP
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label13: TTS_Label
              Left = 277
              Top = 78
              Width = 57
              Height = 15
              Caption = 'Fone 2:'
              FocusControl = DF_Fone2
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label7: TTS_Label
              Left = 277
              Top = 54
              Width = 57
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
              LinkTo = 'FrmPaises'
              LinkToResult = 0
            end
            object TS_Label12: TTS_Label
              Left = 4
              Top = 100
              Width = 65
              Height = 17
              Caption = 'Contato:'
              FocusControl = DF_Contato
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label11: TTS_Label
              Left = 277
              Top = 100
              Width = 57
              Height = 17
              Caption = 'Celular:'
              FocusControl = DF_Celular
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label15: TTS_Label
              Left = 7
              Top = 170
              Width = 68
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Observa'#231#227'o:'
              FocusControl = DF_OBS
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label9: TTS_Label
              Left = 4
              Top = 125
              Width = 65
              Height = 17
              Caption = 'E-mail:'
              FocusControl = DF_Email
              FormatoTabela = False
              LinkToResult = 0
            end
            object TS_Label14: TTS_Label
              Left = 4
              Top = 148
              Width = 65
              Height = 17
              Caption = 'Site:'
              FocusControl = DF_Site
              FormatoTabela = False
              LinkToResult = 0
            end
            object DF_Endereco: TTS_DBEdit
              Left = 72
              Top = 7
              Width = 452
              TabOrder = 0
              DataField = 'ENDERECO'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_Cidade: TTS_DBEdit
              Left = 72
              Top = 30
              Width = 193
              TabOrder = 1
              DataField = 'CIDADE'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_CaixaPostal: TTS_DBEdit
              Left = 72
              Top = 53
              Width = 193
              TabOrder = 4
              DataField = 'CAIXAPOSTAL'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_Fone1: TTS_DBEdit
              Left = 72
              Top = 77
              Width = 193
              TabOrder = 6
              DataField = 'FONE1'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_Contato: TTS_DBEdit
              Left = 72
              Top = 100
              Width = 193
              TabOrder = 8
              DataField = 'CONTATO'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_UF: TTS_DBLookupComboBox
              Left = 341
              Top = 29
              Width = 89
              TabOrder = 2
              DataField = 'UF'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DropDownRows = 15
              ClearKey = 32
              ListFieldName = 'UF;DESCRICAO'
              KeyFieldName = 'UF'
              ListSource = DMLocalDeposito.C_UFsDS
              LookupKeyValue = Null
              Height = 19
            end
            object DF_CEP: TTS_DBEdit
              Left = 465
              Top = 30
              Width = 58
              TabOrder = 3
              DataField = 'CEP'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_Fone2: TTS_DBEdit
              Left = 341
              Top = 77
              Width = 183
              TabOrder = 7
              DataField = 'FONE2'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_Pais: TTS_DBLookupComboBox
              Left = 341
              Top = 52
              Width = 183
              TabOrder = 5
              DataField = 'PAIS'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DropDownRows = 15
              ClearKey = 32
              ListFieldName = 'DESCRICAO'
              KeyFieldName = 'PAIS'
              ListSource = DMLocalDeposito.C_PaisDS
              LookupKeyValue = Null
              Height = 19
            end
            object DF_Celular: TTS_DBEdit
              Left = 341
              Top = 100
              Width = 183
              TabOrder = 9
              DataField = 'CELULAR'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              DistinctEditOn = False
              Height = 19
            end
            object DF_OBS: TTS_DBMemo
              Left = 73
              Top = 171
              Width = 451
              TabOrder = 12
              DataField = 'OBS'
              DataSource = DMLocalDeposito.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 40
            end
            object DF_Email: TTS_DBButtonEdit
              Left = 72
              Top = 122
              Width = 452
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              TabOrder = 10
              DataField = 'EMAIL'
              DataSource = DMLocalDeposito.C_TabelaDS
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
              Top = 146
              Width = 452
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              TabOrder = 11
              DataField = 'SITE'
              DataSource = DMLocalDeposito.C_TabelaDS
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
          end
        end
      end
      object DF_SSN: TTS_DBEdit
        Left = 98
        Top = 72
        Width = 163
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        DataField = 'SSN'
        DataSource = DMLocalDeposito.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
      object DF_Nome: TTS_DBEdit
        Left = 98
        Top = 49
        Width = 372
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        DataField = 'NOME'
        DataSource = DMLocalDeposito.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
      object DF_EIN: TTS_DBEdit
        Left = 308
        Top = 72
        Width = 162
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        DataField = 'EIN'
        DataSource = DMLocalDeposito.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 20
      end
      object TS_DBLookupTipoFav: TTS_DBLookupTipoFav
        Left = 3
        Top = 4
        Width = 93
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        StyleController = DMProjeto.esRemessa
        DropDownRows = 15
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = 0
        TipoFavorecido = 1
      end
      object TS_DBEditFavReceptor: TTS_DBEditFavorecido
        Left = 98
        Top = 5
        Width = 304
        Hint = 'Este campo informa quem '#233' o cliente deste receptor.'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        DataField = 'NOME_CLIENTE'
        DataSource = DMLocalDeposito.C_TabelaDS
        StyleController = DMProjeto.esRemessa
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
        LookupTipoFav = TS_DBLookupTipoFav
        SelecionarVarios = False
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        ChaveEstrangeira = 'VENDEDOR'
        Height = 19
        ExistButtons = True
      end
      object DF_Codigo: TTS_DBButtonEdit
        Left = 98
        Top = 28
        Width = 121
        TabOrder = 2
        DataField = 'CODIGO'
        DataSource = DMLocalDeposito.C_TabelaDS
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
    inherited dxF9Bar: TdxfProgressBar
      Width = 569
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 686
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 107
      Caption = 'Receptores'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 650
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 253
    Top = 307
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 193
    Top = 307
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 313
    Top = 307
  end
  inherited ImgPadrao: TImageList
    Left = 283
    Top = 307
  end
  inherited FormComponent: TFormComponent
    BeforeLoadKey = FormComponentBeforeLoadKey
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Receptores'
    Left = 223
    Top = 307
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 394
    end
  end
  object ppmContas: TTS_PopupMenu
    Left = 176
    Top = 207
    object Indexadores1: TMenuItem
      Caption = '&Incluir'
      ShortCut = 45
      OnClick = Indexadores1Click
    end
  end
end

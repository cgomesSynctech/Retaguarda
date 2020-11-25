inherited DlgItensAlmox: TDlgItensAlmox
  Left = 286
  Top = 205
  Width = 506
  Height = 230
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 372
    Height = 151
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 117
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Limpar'
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Transfer'#234'ncias'
      Glyph.Data = {
        B2030000424DB203000000000000720100002800000018000000180000000100
        08000000000040020000C30E0000C30E00004F0000004F0000001C6A1C001C73
        1C0016841C001C841C001C981C001C732300237323001C7B2300237B23001C84
        23001C8F23001CA1230023732A00237B2A002A7B2A0023842A001C8F2A00238F
        2A001CA12A0023A12A002A7B3100317B310023843100238F31002A8F31002398
        310023AB31002A843800388438002A8F38002A98380023AB38002AAB3800408F
        4000319840002AA1400031A140002AB64000408F4800488F480031A1480031AB
        48002AB6480031B64800488F500038AB500038B6500031C05000508F580038B6
        580031C0580038C0580040C058005898600060A1600038C0600040C0600038CA
        600040CA600060986A0038CA6A0040CA6A0048CA6A0040D46A006AA1730040D4
        730048D4730048E0730050E0730050E07B0058E07B0050EA7B0058EA840058F4
        840058F48F0060F48F0060FF8F00FF00FF00FFFFFF004D4D4D4D4D4D4D4D4D4D
        4D0D0F264D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D1C341D1C4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D302D4B22264D4D4D4D4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D40224B48223B4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D
        4D3528494B46054D4D4D4D4D4D4D4D4D361B4D4D4D4D4D4D4D153448494B281C
        4D4D4D4D4D4D4D4D360D274D4D4D4D4D4D0D44484849440D4D4D4D4D4D4D4D4D
        363316274D4D4D4D262245484848490D4D4D4D4D4D4D4D4D363737052C4D4D40
        0D4245454848481D4D4D4D4D4D4D4D4D36333733164D4D0D3843454545484818
        4D4D4D4D4D4D4D4D363333373100052E424243454545450F4D4D4D4D4D4D4D4D
        362F33333737313D4242424345453E0C4D4D4D4D4D4D4D4D362B2F3333373D3D
        3D424242424522274D4D4D4D4D4D4D4D362B2B2F3333373D3D3D3F4242380D4D
        4D4D4D4D4D4D4D4D36252B2B2F3333373C3D3D3F42164D4D4D4D4D4D4D4D4D4D
        3620252B2B2F333337393D3D22144D4D4D4D4D4D4D4D4D4D362020252B2B2F33
        33373928054D4D4D4D4D4D4D4D4D4D4D361A2020252B2B2F333337280D4D4D4D
        4D4D4D4D4D4D4D4D36131A2020252B2B2F2F333723054D4D4D4D4D4D4D4D4D4D
        3613131A2020252B2B2F2F33371E144D4D4D4D4D4D4D4D4D360B13131A202025
        2B2B2F2F33371E0C4D4D4D4D4D4D4D4D36040B13131A2020252B2B2F2F333316
        144D4D4D4D4D4D4D3603030309090F11111117171D1E1E1E0D0C4D4D4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 490
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 29
      Caption = 'Item: '
    end
    inherited btHelp: TTS_SpeedButton
      Left = 462
    end
    inherited lbCaption: TdxfLabel
      Width = 258
      AutoSize = True
      Caption = 'Estoques por Almoxarifado'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 372
    Height = 151
    Color = 14019327
    object Grid: TTS_QDBGrid
      Left = 6
      Top = 5
      Width = 369
      Height = 143
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ITEMALMOX'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'icEstoqueAlmox'
              SummaryFormat = '>icEstoqueAlmox=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DMItens.C_ItensAlmoxDS
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
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      GroupNodeFont.Style = [fsBold]
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clRed
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
      TS_ChaveEstrangeira = 'SUBITEM'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'Codigo;Descricao'
      TS_TipoDescricao = tdVenda
      TS_WhereAdicional = ' and i.HasChildren = '#39'N'#39' '
      TS_SummaryFields.Strings = (
        'icEstoqueAlmox;Sum;')
      TS_SummaryFooterText = 'Custo M'#233'dio dos SubItens:'
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Almoxarifado'
        DisableCustomizing = True
        DisableEditor = True
        Width = 257
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridESTOQUEALMOX: TdxDBGridMaskColumn
        Caption = 'Estoque'
        DisableCustomizing = True
        DisableEditor = True
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEALMOX'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 185
    Top = 343
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 268
    Top = 345
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 92
    Top = 104
  end
  inherited FormStorage: TFormStorage
    Left = 399
    Top = 341
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Estoques por Almoxarifado'
    Left = 441
    Top = 65534
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 302
    Top = 342
  end
  object ppmGrid: TTS_PopupMenu
    Left = 373
    Top = 158
  end
end

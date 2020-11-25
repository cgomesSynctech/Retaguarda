inherited DlgSitFuncionario: TDlgSitFuncionario
  Left = 111
  Top = 118
  Width = 613
  Height = 424
  Caption = 'Cadastros Gerais'
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel [0]
    Left = 605
    Width = 0
    Height = 354
    Visible = False
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 320
      Width = 10
    end
    inherited btComando2: TTS_SpeedButton
      Width = 10
    end
    inherited btComando1: TTS_SpeedButton
      Width = 10
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 10
    end
    inherited btGravar: TTS_SpeedButton
      Width = 10
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 10
    end
  end
  inherited pnTitulo: TTS_MaxPanel [1]
    Width = 605
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 186
      Caption = 'Informa'#231#245'es Gerais'
      Effect3D.ShadowedColor = 9741530
    end
    inherited lbUpperHint: TTS_Label
      Left = 440
      Width = 165
      Caption = 'Situa'#231#227'o atual '#13#10'e hist'#243'rica dos '#13#10'pagamentos realizados'
    end
  end
  inherited pnDados: TTS_Panel [2]
    Width = 605
    Height = 354
    Color = 13359603
    object pnPesquisaFavorecido: TTS_Panel
      Left = 1
      Top = 1
      Width = 603
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = 13359603
      TabOrder = 0
      object dfTipoFav: TTS_DBLookupTipoFav
        Left = 4
        Top = 6
        Width = 100
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esGeral
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 3
        Height = 21
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 106
        Top = 6
        Width = 305
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        OnKeyPress = edFavorecidoKeyPress
        StyleController = DMProjeto.esGeral
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
        TipoFavorecido = 3
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        Height = 21
        ExistButtons = True
      end
    end
    object TS_PageControl1: TTS_PageControl
      Left = 1
      Top = 33
      Width = 603
      Height = 320
      ActivePage = tsPagina1
      Align = alClient
      OwnerDraw = True
      TabOrder = 1
      ActivePageIndex = 1
      Transparent = False
      TabColor = 9741530
      TabColorActive = 13359603
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
        Caption = 'Dados Gerais'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
      end
      object tsPagina1: TTS_TabSheet
        Caption = 'Pagamentos'
        TabVisible = False
        TabColor = clBtnFace
        TabFontColor = clBlack
        BevelInner = bvRaised
        BevelOuter = bvLowered
        object mvSitFuncionario: TdxMasterView
          Left = 0
          Top = 0
          Width = 595
          Height = 310
          Align = alClient
          TabOrder = 0
          OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movHideSelection, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
          object stVerdeEscuro: TdxMasterViewStyle
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object stVerde: TdxMasterViewStyle
            Color = 13034438
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 3947520
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object stCinzaAndre: TdxMasterViewStyle
            AnotherColor = 15461355
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svAnotherColor, svColor, svFont]
          end
          object stVerdeClaro: TdxMasterViewStyle
            AnotherColor = 15200231
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svAnotherColor, svColor, svFont]
          end
          object stVerdeRodape: TdxMasterViewStyle
            Color = 13034438
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            AssignedValues = [svColor, svFont]
          end
          object stCabecalho: TdxMasterViewStyle
            Color = 15461355
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Pitch = fpFixed
            Font.Style = []
            AssignedValues = [svColor, svFont]
          end
          object stTotal: TdxMasterViewStyle
            AnotherColor = 15200231
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            AssignedValues = [svAnotherColor, svColor, svFont]
          end
          object mvHistPagCab: TdxMasterViewLevel
            Caption = 'Hist'#243'rico de Pagamentos'
            CaptionStyle = stVerdeEscuro
            ContentStyle = stVerdeClaro
            DataSource = C_HistPagCabDS
            GroupStyle = stVerde
            HeaderStyle = stVerdeRodape
            ID = 'ID'
            OptionsCustomize = [locColumnHorSizing, locColumnVerSizing, locShowColumnOnUngrouping]
            OptionsCustomizeBox = []
            OptionsDB = [lodConfirmDelete, lodSmartReload]
            OptionsView = [lovCaption, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
            object mvHistPagCabCAB: TdxMasterViewColumn
              FieldName = 'CAB'
              RowIndex = 0
              ColIndex = 0
              Width = 240
            end
            object mvHistPagCabTOTVALOR: TdxMasterViewColumn
              ContentStyle = stTotal
              FieldName = 'TOTVALOR'
              RowIndex = 0
              ColIndex = 1
              Width = 108
            end
            object mvHistPag: TdxMasterViewLevel
              ContentStyle = stCinzaAndre
              DataSource = C_HistPagDS
              DetailKey = 'ID'
              HeaderStyle = stCabecalho
              ID = 'IDDOC'
              MasterKey = 'ID'
              OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locShowColumnOnUngrouping]
              OptionsCustomizeBox = [loxColumns]
              OptionsHeader = [lohForFirstNode, lohForFirstVisibleNode]
              object mvHistPagANOMES: TdxMasterViewColumn
                FieldName = 'ANOMES'
                RowIndex = 0
                ColIndex = 0
                Visible = False
                Width = 60
              end
              object mvHistPagDATA: TdxMasterViewColumn
                FieldName = 'DATA'
                RowIndex = 0
                ColIndex = 0
                SortIndex = 0
                SortOrder = soDescending
                Width = 72
              end
              object mvHistPagVALOR: TdxMasterViewColumn
                FieldName = 'VALOR'
                RowIndex = 0
                ColIndex = 3
                Width = 77
              end
              object mvHistPagNUMCHEQUE: TdxMasterViewColumn
                FieldName = 'NUMCHEQUE'
                RowIndex = 0
                ColIndex = 2
                Width = 77
              end
              object mvHistPagVENCIMENTO: TdxMasterViewColumn
                FieldName = 'VENCIMENTO'
                RowIndex = 0
                ColIndex = 1
                Width = 80
              end
              object mvHistPagCONTA: TdxMasterViewColumn
                FieldName = 'CONTA'
                RowIndex = 0
                ColIndex = 4
                Width = 79
              end
            end
          end
        end
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 165
    Top = 337
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 135
    Top = 337
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 43
    Top = 337
  end
  inherited FormsComponent: TFormsComponent
    BeforeLoadKey = FormsComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Informa'#231#245'es Gerais'
    FormHeight = 424
    FirstEditField = edFavorecido
    Left = 90
    Top = 218
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 652
    end
  end
  object C_InforGeraisDS: TDataSource
    DataSet = C_InforGerais
    Left = 374
    Top = 9
  end
  object C_InforGerais: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'Q_InforGeraisProvider'
    Left = 406
    Top = 9
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
    Left = 438
    Top = 9
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
    Left = 470
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptInput
        Value = '1'
      end>
  end
  object Img_Panels: TImageList
    Left = 10
    Top = 337
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009C739C739C739C739C739C73
      9C739C739C739C739C739C73000000009C730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E4A2E4A2E4A2E4A2E4A2E4A2E4A
      2E4A2E4A2E4A2E4A2E4A9C7300002E4A2E4A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000002E4A9C7300000000000000000000
      000000009C739C732E4A9C732E4A2E4A2E4A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000002E4A9C7300000000000000000000
      00002E4A2E4A2E4A2E4A2E4A2E4A2E4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000104218631863104200000000000000002E4A9C7300000000000000000000
      2E4A2E4A2E4A2E4A2E4A2E4A2E4A9C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000
      104218631863FF031042FF7F0000000000002E4A9C7300000000000000002E4A
      2E4A2E4A2E4A2E4A2E4A9C732E4A9C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000
      1863186318631863104218630000000000002E4A9C7300000000000000002E4A
      2E4A2E4A2E4A2E4A2E4A2E4A2E4A9C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000
      1863FF0318631863104218630000000000002E4A9C7300000000000000002E4A
      2E4A2E4A2E4A2E4A2E4A2E4A2E4A9C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F0000
      1042FF03FF0318631042FF7F0000000000002E4A9C7300000000000000002E4A
      2E4A2E4A2E4A2E4A2E4A9C732E4A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000104218631863104200000000000000002E4A9C7300000000000000000000
      2E4A2E4A2E4A2E4A2E4A2E4A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000002E4A9C7300000000000000000000
      00002E4A2E4A2E4A2E4A9C730000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000002E4A9C7300000000000000000000
      000000009C739C732E4A9C730000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000002E4A9C7300000000000000000000
      00002E4A2E4A2E4A2E4A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000018630000000000000000000000002E4A9C7300000000000000000000
      00002E4A2E4A2E4A000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000002E4A9C739C739C739C739C739C73
      9C732E4A2E4A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E4A2E4A2E4A2E4A2E4A2E4A2E4A
      2E4A2E4A00000000000000000000000000000000000000000000000000000000
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
  object C_HistPagDS: TDataSource
    DataSet = C_HistPag
    Left = 286
    Top = 241
  end
  object C_HistPag: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANOMES'
        Attributes = [faRequired]
        DataType = ftString
        Size = 266
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'NUMCHEQUE'
        DataType = ftInteger
      end
      item
        Name = 'VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'IDDOC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CONTA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 23
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'Q_HistPagProvider'
    StoreDefs = True
    Left = 320
    Top = 241
    object C_HistPagANOMES: TStringField
      DisplayLabel = 'Ano/M'#234's'
      FieldName = 'ANOMES'
      Required = True
      Size = 266
    end
    object C_HistPagDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_HistPagVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '#0.00,'
      Precision = 18
      Size = 2
    end
    object C_HistPagNUMCHEQUE: TIntegerField
      DisplayLabel = 'CH #'
      FieldName = 'NUMCHEQUE'
    end
    object C_HistPagVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_HistPagIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_HistPagCONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Size = 50
    end
    object C_HistPagID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 23
    end
  end
  object Q_HistPag: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) as ' +
        'AnoMes,'
      '       r.Data, rd.Valor, rd.NumCheque, rd.Vencimento, rd.IDDOC,'
      '       c.Descricao as Conta,'
      '       f_year(r.Data)||'#39'/'#39'||f_month(r.Data) As ID'
      '        '
      
        'From (RetiradasDoc rd INNER JOIN Retiradas r ON rd.Retirada = r.' +
        'Retirada)'
      '     LEFT JOIN Contas c ON c.Conta = rd.Conta'
      ''
      'Where rd.Favorecidodoc = :Favorecido'
      'And rd.Status < 70'
      
        'And f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) >= CAS' +
        'T(:AnoAnterior as varchar(254))'
      
        'And f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) <= CAS' +
        'T(:AnoAtual as varchar(254))'
      ''
      'Order By 1 Desc')
    Left = 382
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AnoAnterior'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AnoAtual'
        ParamType = ptUnknown
      end>
  end
  object Q_SQLTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DMProjeto.DB_Projeto
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 144
    Top = 256
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = Q_SQLTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) as ' +
        'AnoMes,'
      '       r.Data, rd.Valor, rd.NumCheque, rd.Vencimento, rd.IDDOC,'
      '       c.Descricao,'
      '       (Select sum(drd.Valor) '
      
        '        from Retiradasdoc drd inner join retiradas dr on drd.ret' +
        'irada = dr.retirada'
      '        where  drd.Status < 70 and dr.Data  <=  r.Data and '
      
        '                  f_year(dr.Data) = f_year(r.Data) ) as Acumulad' +
        'o_Ano,'
      ''
      '       (Select sum(drd.Valor) '
      
        '        from Retiradasdoc drd inner join retiradas dr on drd.ret' +
        'irada = dr.retirada'
      
        '        where drd.Status < 70 and dr.Data <= r.Data ) as Acumula' +
        'do_Total'
      '        '
      ''
      
        'From  (RetiradasDoc rd INNER JOIN Retiradas r ON rd.Retirada = r' +
        '.Retirada)'
      '      LEFT JOIN Contas c ON c.Conta = rd.Conta'
      'where rd.Favorecidodoc = 10 and rd.Status < 70 and '
      
        '      f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) > '#39'2' +
        '000/06'#39)
    Left = 176
    Top = 256
  end
  object Q_HistPagProvider: TDataSetProvider
    DataSet = Q_HistPag
    Constraints = True
    Options = [poAllowCommandText]
    Left = 352
    Top = 241
  end
  object C_HistPagCabDS: TDataSource
    DataSet = C_HistPagCab
    Left = 286
    Top = 209
  end
  object C_HistPagCab: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CAB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 266
      end
      item
        Name = 'TOTVALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ACUMULADO_ANO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ACUMULADO_TOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 23
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'Q_HistPagCabProvider'
    StoreDefs = True
    Left = 320
    Top = 209
    object C_HistPagCabCAB: TStringField
      DisplayLabel = 'Ano/M'#234's'
      FieldName = 'CAB'
      Required = True
      Size = 266
    end
    object C_HistPagCabTOTVALOR: TBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 19
      FieldName = 'TOTVALOR'
      DisplayFormat = '#0.00,'
      Precision = 18
      Size = 2
    end
    object C_HistPagCabID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 23
    end
  end
  object Q_HistPagCabProvider: TDataSetProvider
    DataSet = Q_HistPagCab
    Constraints = True
    Options = [poAllowCommandText]
    Left = 352
    Top = 209
  end
  object Q_HistPagCab: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select a.ano||'#39'/'#39'||F_padleft(m.mes,'#39'0'#39',2) as Cab,'
      '       sum(rd.Valor) as TotValor,'
      '       a.ano||'#39'/'#39'||m.mes As ID'
      ''
      'From anos a Join meses m On 1=1'
      
        'Join Retiradas r On f_year(r.Data)=a.ano and m.mes=f_month(r.Dat' +
        'a)'
      'Join Retiradasdoc rd On rd.Retirada = r.Retirada'
      ''
      'Where rd.Favorecidodoc = :Favorecido'
      'And rd.Status < 70'
      
        'And f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) >= CAS' +
        'T(:AnoAnterior as varchar(254))'
      
        'And f_year(r.Data)||'#39'/'#39'||F_padleft(f_month(r.Data),'#39'0'#39',2) <= CAS' +
        'T(:AnoAtual as varchar(254))'
      ''
      'Group By a.ano, m.mes'
      ''
      'Order By a.ano Desc, m.mes Desc')
    Left = 382
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AnoAnterior'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AnoAtual'
        ParamType = ptUnknown
      end>
  end
end

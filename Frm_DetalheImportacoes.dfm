inherited frmDetalheImportacoes: TfrmDetalheImportacoes
  Left = 223
  Top = 46
  Width = 649
  Height = 650
  Caption = 'Contabilidade'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label5: TTS_Label [0]
    Left = -4
    Top = 86
    Width = 95
    Height = 17
    Caption = 'Dt Desemb.:'
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
  inherited pnNavigator: TTS_Panel
    Left = 526
    Height = 580
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 546
    end
  end
  inherited pnDados: TTS_Panel
    Width = 526
    Height = 580
    inherited Grid: TTS_QDBGrid
      Width = 524
      Height = 578
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 524
      Height = 578
    end
    inherited sbDados: TTS_Panel
      Width = 524
      Height = 578
      Color = 14733792
      object TS_Label19: TTS_Label
        Left = 22
        Top = 21
        Width = 67
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
      object TS_Label1: TTS_Label
        Left = -7
        Top = 77
        Width = 96
        Height = 17
        Caption = 'Local Desemb.:'
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
      object TS_Label4: TTS_Label
        Left = -1
        Top = 105
        Width = 90
        Cursor = crHandPoint
        Caption = 'UF Desemb.:'
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
      object TS_Label2: TTS_Label
        Left = -7
        Top = 133
        Width = 96
        Height = 17
        Caption = 'Dt Desemb.:'
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
      object TS_Label3: TTS_Label
        Left = 22
        Top = 161
        Width = 67
        Height = 17
        Caption = 'C'#243'di&go Exp.:'
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
        Left = 18
        Top = 49
        Width = 71
        Height = 17
        Caption = 'Data:'
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
      object TS_Label7: TTS_Label
        Left = 5
        Top = 189
        Width = 84
        Height = 17
        Caption = 'Via Transporte :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 216
        Top = 191
        Width = 225
        Height = 17
        Caption = 'Via Transporte Internacional Informada na DI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label9: TTS_Label
        Left = 5
        Top = 217
        Width = 84
        Height = 17
        Caption = 'AFRMM :'
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
        Left = 5
        Top = 245
        Width = 84
        Height = 17
        Caption = 'Intermediario :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label11: TTS_Label
        Left = 5
        Top = 273
        Width = 84
        Height = 17
        Caption = 'CNPJ Adq.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label12: TTS_Label
        Left = 5
        Top = 301
        Width = 84
        Height = 17
        Caption = 'UF Adiq. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label13: TTS_Label
        Left = 5
        Top = 329
        Width = 84
        Height = 17
        Caption = 'Adi'#231#227'o DI :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label14: TTS_Label
        Left = 5
        Top = 357
        Width = 84
        Height = 17
        Caption = 'Sequencial DI :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label15: TTS_Label
        Left = 5
        Top = 385
        Width = 84
        Height = 17
        Caption = 'Fabricante DI :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label16: TTS_Label
        Left = 5
        Top = 413
        Width = 84
        Height = 17
        Caption = 'Desconto DI :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label17: TTS_Label
        Left = 5
        Top = 441
        Width = 84
        Height = 17
        Caption = 'Draw_OPC DI :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label18: TTS_Label
        Left = 5
        Top = 469
        Width = 84
        Height = 17
        Caption = 'Vl BC (II) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label20: TTS_Label
        Left = -24
        Top = 497
        Width = 113
        Height = 17
        Caption = 'Vl Desp. Aduan (II) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label21: TTS_Label
        Left = 5
        Top = 525
        Width = 84
        Height = 17
        Caption = 'Vl I.I. (II) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label22: TTS_Label
        Left = 5
        Top = 554
        Width = 84
        Height = 17
        Caption = 'Vl IOF (II) :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label23: TTS_Label
        Left = 217
        Top = 220
        Width = 280
        Height = 17
        Caption = 'Adicional ao Frete para Renova'#231#227'o da Marinha Mercante '
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
        Left = 113
        Top = 244
        Width = 321
        Height = 17
        Caption = 
          '1 -  Por conta Pr'#243'pria ; 2 - por Conta e Ordem; 3 - Por encomend' +
          'a'
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
        Left = 188
        Top = 272
        Width = 189
        Height = 17
        Caption = 'CNPJ do adquirente ou encomendante '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label26: TTS_Label
        Left = 121
        Top = 302
        Width = 248
        Height = 17
        Caption = 'Sigla UF do CNPJ do adquirente ou encomendante '
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
        Left = 167
        Top = 330
        Width = 123
        Height = 17
        Caption = 'Numero da Adi'#231#227'o da DI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label28: TTS_Label
        Left = 152
        Top = 359
        Width = 193
        Height = 17
        Caption = 'Numero sequencial do item dentro da DI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label29: TTS_Label
        Left = 221
        Top = 387
        Width = 297
        Height = 17
        Caption = 'Codigo do Fabricante estrageiro usado nos sistemas internos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label30: TTS_Label
        Left = 210
        Top = 415
        Width = 164
        Height = 17
        Caption = 'Desconto do Item da DI - Adi'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label31: TTS_Label
        Left = 213
        Top = 442
        Width = 283
        Height = 17
        Caption = 'Numero do ato concess'#243'rio de Drawback quando aplicavel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label32: TTS_Label
        Left = 216
        Top = 471
        Width = 249
        Height = 17
        Caption = 'Valor da Base de Calculo do Imposto de Importa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label33: TTS_Label
        Left = 214
        Top = 500
        Width = 156
        Height = 17
        Caption = 'Valor das despesas aduaneiras '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label34: TTS_Label
        Left = 216
        Top = 527
        Width = 156
        Height = 17
        Caption = 'Valor do Imposto de Importa'#231#227'o'
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
        Left = 216
        Top = 554
        Width = 64
        Height = 17
        Caption = 'Valor do IOF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object DF_Nome: TTS_DBEdit
        Left = 92
        Top = 77
        Width = 376
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'LOCALDESEMBARACO'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DistinctEditOn = False
        Height = 19
      end
      object DF_Codigo: TTS_DBButtonEdit
        Left = 92
        Top = 20
        Width = 121
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        CharCase = ecUpperCase
        DataField = 'CODIGO'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
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
        Height = 19
        ExistButtons = True
      end
      object DF_UF: TTS_DBLookupComboBox
        Left = 92
        Top = 105
        Width = 104
        TabOrder = 2
        DataField = 'UF'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DropDownRows = 15
        DropDownWidth = 185
        ClearKey = 32
        ListFieldName = 'UF;DESCRICAO'
        KeyFieldName = 'UF'
        ListSource = DMDetalheImportacoes.C_UFsDS
        LookupKeyValue = Null
        Height = 19
      end
      object TS_DBCurrencyEdit1: TTS_DBCurrencyEdit
        Left = 92
        Top = 217
        Width = 121
        TabOrder = 3
        DataField = 'VAFRMMOPC'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Nullable = False
        Height = 19
      end
      object TS_DBEdit3: TTS_DBEdit
        Left = 92
        Top = 301
        Width = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        DataField = 'UFTERCEIROOPC'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit4: TTS_DBEdit
        Left = 92
        Top = 270
        Width = 93
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        DataField = 'CNPJOPC'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit7: TTS_DBEdit
        Left = 92
        Top = 385
        Width = 128
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        DataField = 'CFABRICANTE'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBCurrencyEdit2: TTS_DBCurrencyEdit
        Left = 92
        Top = 413
        Width = 121
        TabOrder = 7
        DataField = 'VDESCDI'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Nullable = False
        Height = 19
      end
      object TS_DBCurrencyEdit3: TTS_DBCurrencyEdit
        Left = 92
        Top = 469
        Width = 121
        TabOrder = 8
        DataField = 'VDESCDI'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Nullable = False
        Height = 19
      end
      object TS_DBCurrencyEdit4: TTS_DBCurrencyEdit
        Left = 92
        Top = 497
        Width = 121
        TabOrder = 9
        DataField = 'VDESPADU'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Nullable = False
        Height = 19
      end
      object TS_DBCurrencyEdit5: TTS_DBCurrencyEdit
        Left = 92
        Top = 525
        Width = 121
        TabOrder = 10
        DataField = 'VII'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Nullable = False
        Height = 19
      end
      object TS_DBCurrencyEdit6: TTS_DBCurrencyEdit
        Left = 92
        Top = 552
        Width = 121
        TabOrder = 11
        DataField = 'VIOF'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Nullable = False
        Height = 19
      end
      object TS_DBCurrencyEdit7: TTS_DBCurrencyEdit
        Left = 96
        Top = 187
        Width = 93
        TabOrder = 12
        DataField = 'TPVIATRANSP'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DecimalPlaces = 0
        Nullable = False
        Height = 19
        StoredValues = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 95
        Top = 159
        Width = 130
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        DataField = 'CODIGOEXPORT'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit5: TTS_DBEdit
        Left = 95
        Top = 242
        Width = 18
        TabOrder = 14
        DataField = 'TPINTERMEDIARIO'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit6: TTS_DBEdit
        Left = 95
        Top = 330
        Width = 74
        TabOrder = 15
        DataField = 'NADICAO'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit8: TTS_DBEdit
        Left = 96
        Top = 356
        Width = 53
        TabOrder = 16
        DataField = 'NSEQADIC'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 92
        Top = 441
        Width = 121
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        DataField = 'NDRAWOPC'
        DataSource = DMDetalheImportacoes.C_TabelaDS
        StyleController = DMProjeto.esContabil
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 524
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 641
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Width = 219
      Caption = 'Detalhe de Importa'#231#227'o'
      Effect3D.ShadowedColor = 12689345
    end
    inherited btHelp: TTS_SpeedButton
      Left = 602
    end
  end
  object TS_DBEditDate1: TTS_DBEditDate [4]
    Left = 96
    Top = 90
    Width = 96
    TabOrder = 3
    DataField = 'DATA'
    DataSource = DMDetalheImportacoes.C_TabelaDS
    StyleController = DMProjeto.esContabil
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
    UseEditMask = True
    Height = 19
    StoredValues = 4
  end
  object TS_DBEditDate2: TTS_DBEditDate [5]
    Left = 94
    Top = 176
    Width = 96
    TabOrder = 4
    DataField = 'DATADESEMBARACO'
    DataSource = DMDetalheImportacoes.C_TabelaDS
    StyleController = DMProjeto.esContabil
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
    UseEditMask = True
    Height = 19
    StoredValues = 4
  end
  inherited DlgMsg: TDlgMsg
    Left = 463
    Top = 60
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 482
    Top = 119
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 490
    Top = 299
  end
  inherited ImgPadrao: TImageList
    Left = 418
    Top = 125
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Detalhe de Importa'#231#227'o'
    Left = 324
    Top = 60
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 523
    Top = 212
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 491
    Top = 165
  end
  inherited Beep: TBTBeeper
    Left = 396
    Top = 62
  end
  inherited FormStorage: TFormStorage
    Left = 366
    Top = 128
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 490
    Top = 356
  end
end

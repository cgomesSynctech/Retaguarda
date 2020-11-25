inherited DlgImpressaoDoc: TDlgImpressaoDoc
  Left = 241
  Top = 180
  Width = 512
  Height = 335
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 386
    Height = 262
    Color = 16116702
    object TS_Shape1: TTS_Shape
      Left = 101
      Top = 42
      Width = 75
      Height = 1
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 162
      Top = 89
      Width = 14
      Height = 1
      Transparent = False
    end
    object TS_Label1: TTS_Label
      Left = 124
      Top = 55
      Width = 37
      Alignment = taLeftJustify
      Caption = 'Modelo'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 125
      Top = 103
      Width = 35
      Alignment = taLeftJustify
      Caption = 'Modelo'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape3: TTS_Shape
      Left = 162
      Top = 110
      Width = 14
      Height = 1
      Transparent = False
    end
    object TS_Shape4: TTS_Shape
      Left = 161
      Top = 62
      Width = 14
      Height = 1
      Transparent = False
    end
    object TS_Label29: TTS_Label
      Left = 12
      Top = 10
      Width = 50
      Caption = 'Enviar:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object ckbNotaFiscal: TTS_CheckBox
      Left = 8
      Top = 32
      Width = 89
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 0
      Caption = '1. Nota Fiscal'
      DisableEdit = False
      Height = 19
    end
    object ckbDocumento: TTS_CheckBox
      Left = 8
      Top = 78
      Width = 155
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 1
      Caption = '2. Documento da Opera'#231#227'o'
      DisableEdit = False
      Height = 21
    end
    object ckbDuplicata: TTS_CheckBox
      Left = 8
      Top = 117
      Width = 81
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 2
      Caption = '3. Duplicata'
      DisableEdit = False
      Height = 19
    end
    object ckbBoleto: TTS_CheckBox
      Left = 8
      Top = 135
      Width = 113
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = '4. Boleto Banc'#225'rio'
      DisableEdit = False
      Height = 19
    end
    object ckbCarne: TTS_CheckBox
      Left = 8
      Top = 153
      Width = 73
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 4
      Caption = '5. Carn'#234
      DisableEdit = False
      Height = 19
    end
    object ckbRecibo: TTS_CheckBox
      Left = 8
      Top = 171
      Width = 73
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 5
      Caption = '6. Recibo'
      DisableEdit = False
      Height = 19
    end
    object ckbFichaCliente: TTS_CheckBox
      Left = 8
      Top = 189
      Width = 121
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 6
      Caption = '7. Ficha do Cliente'
      DisableEdit = False
      Height = 19
    end
    object cmbTemplateNF: TTS_LookupComboBox
      Left = 184
      Top = 54
      Width = 177
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 7
      StyleController = DMProjeto.esClientes
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'TEMPLATE'
      ListSource = C_TemplatesNFDS
      LookupKeyValue = Null
      Height = 19
    end
    object cmbTemplate: TTS_LookupComboBox
      Left = 184
      Top = 100
      Width = 177
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 8
      StyleController = DMProjeto.esClientes
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'TEMPLATE'
      ListSource = C_TemplatesDS
      LookupKeyValue = Null
      Height = 19
    end
    object cmbEnviarPara: TTS_ImageEdit
      Left = 65
      Top = 8
      Width = 296
      TabOrder = 9
      StyleController = DMProjeto.esClientes
      Descriptions.Strings = (
        'para o V'#237'deo'
        'para a Impressora'
        'para a Impressora c/ Confirma'#231#227'o'
        'Por Email')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3')
      Values.Strings = (
        'N'
        'S'
        'C'
        'E')
      Height = 19
    end
    object cmbTipoNotaFiscal: TTS_ImageEdit
      Left = 184
      Top = 34
      Width = 177
      TabOrder = 10
      StyleController = DMProjeto.esClientes
      Descriptions.Strings = (
        'Produtos'
        'Produtos e Servi'#231'os')
      ImageIndexes.Strings = (
        '0'
        '1')
      Values.Strings = (
        'NF'
        'NS')
      Height = 19
    end
    object cmbTipoDoc: TTS_LookupComboBox
      Left = 184
      Top = 80
      Width = 177
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 11
      StyleController = DMProjeto.esClientes
      ClearKey = 32
      ListFieldName = 'TITULO'
      KeyFieldName = 'TIPO'
      ListSource = C_TiposImpressaoDS
      LookupKeyValue = Null
      Height = 19
    end
    object ckbPadrao: TTS_CheckBox
      Left = 8
      Top = 220
      Width = 241
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Caption = 'Definir estas configura'#231#245'es como padr'#227'o'
      DisableEdit = False
      Height = 19
    end
    object ckbProximaVez: TTS_CheckBox
      Left = 8
      Top = 238
      Width = 268
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Caption = 'N'#227'o mostrar esta tela na pr'#243'xima vez'
      DisableEdit = False
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 386
    Height = 262
    Color = 14737632
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 228
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Imprimir'
      Glyph.Data = {
        CA030000424DCA030000000000008A0100002800000018000000180000000100
        08000000000040020000210B0000210B00005500000055000000111111001111
        16001616160016161C001C1C1C00232323002A2A2A0031313100383838004040
        4000484048004848480050505000606060006A6A6A00736A6A006AB66A007373
        7300847B8400848484008F8484008F848F008F8F8F00988F8F00F4A18F00FFAB
        8F00988F980098989800A198980098A19800E0A19800FFB69800A198A100A1A1
        A100ABA1A100D4A1A100E0ABA100F4ABA100FFB6A100FFC0A100ABA1AB00ABAB
        AB00B6ABAB00E0ABAB00E0B6AB00FFC0AB00FFCAAB00B6ABB600B6B6B600C0B6
        B600E0B6B600E0C0B600FFCAB600B6B6C000C0B6C000C0C0C000CAC0C000EAC0
        C000EACAC000FFD4C000CAC0CA00CACACA00D4CACA00F4D4CA00FFD4CA00FFE0
        CA00CAF4CA00CACAD400CAD4D400D4D4D400E0D4D400EAD4D400D4E0D400E0E0
        D400FFE0D400FFEAD400E0E0E000EAE0E000FFEAE000EAEAEA00FFF4EA00F4F4
        F400FFF4F400FF00FF00FFFFFF00535353535353535353535353535353535353
        53535353535353535353535353531B361B1353531B3D3E291B53535353535353
        535353531B305151291B090B0E1B31464C3D21535353535353531B224C54544F
        221C070004060B0E1B374C4517535353531B45545251524F2121120C07040204
        060B11165353531637515151514C301B13161B211C130D090502061453535316
        4F514F452917213D2116141314172121160E0C14535353164C3E2216223D454C
        4C3D30221B161413161B2116535353161C16293D453D3D4D51514F4C3D372921
        1716141353535316293D3D3D3D3D4C51302F37454C4C453D3730291653535316
        3D3D3D3D3D4551291D10211B1B29303D45453D1B5353535329453D3D4C4C2129
        4F424F4C25291C171B292921535353535321303D301B315151514F4C4C4C453D
        3717165353535353535353142945371B30454C4C4C4C4C453022535353535353
        5353531B5151452929303D3D3D3D301B225353535353535353535353474A4140
        3F3F3F47464530535353535353535353535353532C4A403B342D26261F395353
        5353535353535353535353532C4A403B342D261F185353535353535353535353
        53535353334A403B342D261F18535353535353535353535353535353334A403B
        342D261F25535353535353535353535353535353334A403B342D262525535353
        5353535353535353535353324E4A403B342D2725535353535353535353535353
        53535333504A413B3434252553535353535353535353535353532333322C2C24
        241E255353535353535353535353}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 504
    Gradient.ColorStart = 14859922
    inherited imgModulo: TTS_Image
      Width = 52
      Height = 39
    end
    inherited lbEstadoForm: TTS_Label
      Width = 239
      Caption = 'Selecione os documentos que deseja ser impresso'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 468
    end
    inherited lbCaption: TdxfLabel
      Left = 56
      Width = 255
      AutoSize = True
      Caption = 'Impress'#227'o de Documentos'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 62
    Top = 222
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 256
    Top = 242
    object N1NotaFiscal1: TMenuItem [0]
      Caption = '1. Nota Fiscal'
      ShortCut = 16433
    end
    object N2DocumentodaOperao1: TMenuItem [1]
      Caption = '2. Documento da Opera'#231#227'o'
      ShortCut = 16434
    end
    object N3Duplicata1: TMenuItem [2]
      Caption = '3. Duplicata'
      ShortCut = 16435
    end
    object N4BoletoBancrio1: TMenuItem [3]
      Caption = '4. Boleto Banc'#225'rio'
      ShortCut = 16436
    end
    object N5Carn1: TMenuItem [4]
      Caption = '5. Carn'#234
      ShortCut = 16437
    end
    object N6Recibo1: TMenuItem [5]
      Caption = '6. Recibo'
      ShortCut = 16438
    end
    object N7FichadoCliente1: TMenuItem [6]
      Caption = '7. Ficha do Cliente'
      ShortCut = 16439
    end
  end
  inherited Beep: TBTBeeper
    Left = 91
    Top = 119
  end
  inherited FormStorage: TFormStorage
    Left = 256
    Top = 192
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Impress'#227'o de Documentos'
    Left = 130
    Top = 210
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 255
    Top = 298
  end
  object C_TemplatesNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TemplatesNF'
    Left = 400
    Top = 123
    object C_TemplatesNFTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Required = True
    end
    object C_TemplatesNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TemplatesNFARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 50
    end
    object C_TemplatesNFTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
  end
  object P_TemplatesNF: TDataSetProvider
    DataSet = Q_TemplatesNF
    Constraints = True
    Left = 396
    Top = 214
  end
  object C_TemplatesNFDS: TDataSource
    DataSet = C_TemplatesNF
    Left = 398
    Top = 260
  end
  object Q_TemplatesNF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo = '#39'NF'#39' or tipo = '#39'NS'#39' or tipo is null')
    Left = 398
    Top = 168
  end
  object Q_Templates: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo <> '#39'NF'#39' or tipo <> '#39'NS'#39' or tipo is null')
    Left = 304
    Top = 168
  end
  object C_Templates: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Templates'
    Left = 283
    Top = 99
    object C_TemplatesTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Required = True
    end
    object C_TemplatesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TemplatesARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 50
    end
    object C_TemplatesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
  end
  object P_Templates: TDataSetProvider
    DataSet = Q_Templates
    Constraints = True
    Left = 303
    Top = 214
  end
  object C_TemplatesDS: TDataSource
    DataSet = C_Templates
    Left = 304
    Top = 260
  end
  object Q_TiposImpressao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tiposimpressao')
    Left = 184
    Top = 176
  end
  object C_TiposImpressao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposImpressao'
    Left = 189
    Top = 114
    object C_TiposImpressaoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 3
    end
    object C_TiposImpressaoTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_TiposImpressaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object C_TiposImpressaoIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Size = 30
    end
  end
  object P_TiposImpressao: TDataSetProvider
    DataSet = Q_TiposImpressao
    Constraints = True
    Left = 184
    Top = 216
  end
  object C_TiposImpressaoDS: TDataSource
    DataSet = C_TiposImpressao
    Left = 184
    Top = 250
  end
end

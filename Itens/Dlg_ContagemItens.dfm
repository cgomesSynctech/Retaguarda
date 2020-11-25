inherited DlgContagemItens: TDlgContagemItens
  Left = 54
  Top = 135
  BorderStyle = bsDialog
  Caption = 
    'Digitação das Contagens das Fichas de Balanço de Itens de Invent' +
    'ário'
  ClientHeight = 389
  ClientWidth = 528
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel [0]
    Left = 4
    Top = 2
    Width = 521
    Height = 18
  end
  object TS_Label1: TTS_Label [1]
    Left = 8
    Top = 5
    Width = 352
    Alignment = taLeftJustify
    Caption = 'Fichas de Balanço em Aberto...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    LinkToResult = 0
  end
  object lblItensContagem: TTS_Label [2]
    Left = 6
    Top = 120
    Width = 148
    Alignment = taLeftJustify
    Caption = 'Itens da Contagem...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    LinkToResult = 0
  end
  object TS_Label3: TTS_Label [3]
    Left = 369
    Top = 5
    Width = 216
    Alignment = taLeftJustify
    Caption = 'Contagens Realizadas...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    LinkToResult = 0
  end
  object TS_Label2: TTS_Label [4]
    Left = 365
    Top = 100
    Width = 157
    Alignment = taLeftJustify
    Caption = 'Responsável pela Contagem:'
    LinkToResult = 0
  end
  object Bevel1: TBevel [5]
    Left = 3
    Top = 115
    Width = 155
    Height = 21
  end
  object Bevel3: TBevel [6]
    Left = 363
    Top = 3
    Width = 4
    Height = 19
    Shape = bsLeftLine
  end
  inherited btFechar: TTS_BitBtn
    Left = 309
    Top = 351
  end
  inherited TS_BitBtn1: TTS_BitBtn
    Left = 132
    Top = 351
    ModalResult = 0
    OnClick = TS_BitBtn1Click
  end
  object TS_CDBGrid1: TTS_CDBGrid [9]
    Left = 4
    Top = 20
    Width = 353
    Height = 91
    DataSource = C_FichasDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    GridDataSet = C_Fichas
    TitleOrder = True
    ManualSettings = False
    LikeString = False
    SolidColLine = True
    SelectionColor = clYellow
    SelectionFont.Charset = DEFAULT_CHARSET
    SelectionFont.Color = clWindowText
    SelectionFont.Height = -11
    SelectionFont.Name = 'MS Sans Serif'
    SelectionFont.Style = []
    SelectedColumn = 'DATA'
    OnlyMarkWhenSelected = False
    AutoAlingTotals = False
    AllowDelete = False
    DisableFunctionMenu = False
    ID = 0
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGINNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Estoquista'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescAlmox'
        Title.Alignment = taCenter
        Title.Caption = 'Almoxarifado'
        Width = 126
        Visible = True
      end>
  end
  object dbgItens: TTS_CDBGrid [10]
    Left = 5
    Top = 136
    Width = 520
    Height = 211
    DataSource = C_ContagensItensDS
    PopupMenu = ppmItens
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = dbgItensKeyPress
    GridDataSet = C_ContagensItens
    TitleOrder = True
    DataKeys = 'item'
    ManualSettings = False
    LikeString = False
    SolidColLine = True
    SelectionColor = clYellow
    SelectionFont.Charset = DEFAULT_CHARSET
    SelectionFont.Color = clWindowText
    SelectionFont.Height = -11
    SelectionFont.Name = 'MS Sans Serif'
    SelectionFont.Style = []
    SelectedColumn = 'CODIGO'
    OnlyMarkWhenSelected = False
    AutoAlingTotals = False
    AllowDelete = False
    DisableFunctionMenu = False
    ID = 0
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Descrição'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
  object TS_BitBtn2: TTS_BitBtn [11]
    Left = 364
    Top = 73
    Width = 161
    Height = 25
    Caption = 'Nova Contagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = TS_BitBtn2Click
    Transparent = False
  end
  object lbContagens: TTS_ListBox [12]
    Left = 363
    Top = 20
    Width = 162
    Height = 53
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 5
    OnClick = lbContagensClick
  end
  object cmbUsuario: TTS_DBLookupComboBox [13]
    Left = 365
    Top = 113
    Width = 160
    Height = 19
    DropDownRows = 15
    KeyField = 'USUARIO'
    ListField = 'LOGINNAME'
    ListSource = C_UsuariosDS
    TabOrder = 6
    OnClick = cmbUsuarioClick
    SecondButton = False
    SecondButtonType = bfAccept
    Transparent = False
  end
  object btItem: TTS_BitBtn [14]
    Left = 274
    Top = 115
    Width = 83
    Height = 21
    Caption = 'Item'
    TabOrder = 7
    OnClick = btItemClick
    Glyph.Data = {
      EE000000424DEE000000000000007600000028000000100000000F0000000100
      04000000000078000000130B0000130B00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888800000888880000080F000888880F00080F000888880F0008000000080000
      000800F000000F00000800F000800F00000800F000800F000008800000000000
      0088880F00080F000888880000080000088888800088800088888880F08880F0
      888888800088800088888888888888888888}
    Transparent = False
  end
  object btDigitacao: TTS_BitBtn [15]
    Left = 158
    Top = 115
    Width = 116
    Height = 21
    Caption = 'Digitação'
    TabOrder = 8
    OnClick = btDigitacaoClick
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000007777777777777777700000007777777774F77777700000007777
      7777444F77777000000077777774444F777770000000700000444F44F7777000
      000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
      74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
      8777F07777774000000070FFFF00007777777000000070F88707077777777000
      000070FFFF007777777770000000700000077777777770000000777777777777
      777770000000}
    Transparent = False
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 65534
    Top = 355
  end
  inherited DlgMsg: TDlgMsg
    Left = 36
    Top = 336
  end
  object C_FichasDS: TDataSource
    DataSet = C_Fichas
    Left = 41
    Top = 283
  end
  object Q_Fichas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select bf.* , u.loginname'
      
        'from balancofichas bf left join usuarios u on bf.usuario = u.usu' +
        'ario'
      'where status = 1')
    Left = 47
    Top = 135
  end
  object Q_FichasProvider: TDataSetProvider
    DataSet = Q_Fichas
    Constraints = True
    Left = 45
    Top = 187
  end
  object C_Fichas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_FichasProvider'
    AfterScroll = C_FichasAfterScroll
    OnCalcFields = C_FichasCalcFields
    Left = 44
    Top = 235
    object C_FichasBALANCOFICHA: TIntegerField
      FieldName = 'BALANCOFICHA'
      Required = True
    end
    object C_FichasDATA: TDateField
      FieldName = 'DATA'
    end
    object C_FichasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_FichasALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
    object C_FichasSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_FichasDescAlmox: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescAlmox'
      Calculated = True
    end
    object C_FichasLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Size = 30
    end
  end
  object Q_ContagensItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select i.item, i.codigo, i.descricao, i.unidade, bci.quantidade,'
      
        'bfi.balancoficha, bci.contagem, bci.balancofichaitem, bci.usuari' +
        'o'
      'from balancofichasitens bfi, balancocontagemitens bci, itens i'
      
        'where bfi.balancofichaitem = bci.balancofichaitem and bfi.item =' +
        ' i.item'
      'and bfi.balancoficha = :balanco')
    UpdateObject = U_ContagensItens
    Left = 249
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'balanco'
        ParamType = ptUnknown
      end>
  end
  object C_ContagensItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ContagensProvider'
    OnNewRecord = C_ContagensItensNewRecord
    Left = 248
    Top = 176
    object C_ContagensItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = []
      Required = True
    end
    object C_ContagensItensCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 13
    end
    object C_ContagensItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object C_ContagensItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 6
    end
    object C_ContagensItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,##0.0##'
    end
    object C_ContagensItensBALANCOFICHA: TIntegerField
      FieldName = 'BALANCOFICHA'
      ProviderFlags = []
    end
    object C_ContagensItensCONTAGEM: TIntegerField
      FieldName = 'CONTAGEM'
      Required = True
    end
    object C_ContagensItensBALANCOFICHAITEM: TIntegerField
      FieldName = 'BALANCOFICHAITEM'
      Required = True
    end
    object C_ContagensItensUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
  end
  object Q_ContagensProvider: TDataSetProvider
    DataSet = Q_ContagensItens
    Constraints = True
    Left = 187
    Top = 196
  end
  object C_ContagensItensDS: TDataSource
    DataSet = C_ContagensItens
    Left = 253
    Top = 233
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 304
    Top = 266
  end
  object U_ContagensItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from balancocontagemitens '
      'where'
      '  BALANCOFICHAITEM = :BALANCOFICHAITEM and'
      '  CONTAGEM = :CONTAGEM')
    ModifySQL.Strings = (
      'update balancocontagemitens'
      'set'
      '  QUANTIDADE = :QUANTIDADE,'
      '  USUARIO = :USUARIO'
      'where'
      '  BALANCOFICHAITEM = :OLD_BALANCOFICHAITEM and'
      '  CONTAGEM = :OLD_CONTAGEM')
    InsertSQL.Strings = (
      'insert into balancocontagemitens'
      '  (BALANCOFICHAITEM, CONTAGEM, QUANTIDADE, USUARIO)'
      'values'
      '  (:BALANCOFICHAITEM, :CONTAGEM, :QUANTIDADE, :USUARIO)')
    DeleteSQL.Strings = (
      'delete from balancocontagemitens'
      'where'
      '  BALANCOFICHAITEM = :OLD_BALANCOFICHAITEM and'
      '  CONTAGEM = :OLD_CONTAGEM')
    Left = 301
    Top = 60
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from usuarios')
    Left = 404
    Top = 136
  end
  object Q_UsuariosProvider: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 403
    Top = 181
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UsuariosProvider'
    Left = 406
    Top = 238
  end
  object C_UsuariosDS: TDataSource
    DataSet = C_Usuarios
    Left = 406
    Top = 291
  end
  object ppmItens: TTS_PopupMenu
    Left = 175
    Top = 209
    object LocalizarpeloItem1: TMenuItem
      Caption = 'Digitação de Itens...'
      ShortCut = 122
      OnClick = btDigitacaoClick
    end
    object LocalizarpelaDescrio1: TMenuItem
      Caption = 'Localizar de Item...'
      ShortCut = 123
      OnClick = btItemClick
    end
  end
  object ppmFichas: TTS_PopupMenu
    Left = 316
    Top = 171
    object CancelarFichadeBalano1: TMenuItem
      Caption = 'Cancelar Ficha de Balanço'
      ShortCut = 115
      OnClick = CancelarFichadeBalano1Click
    end
  end
  object U_Fichas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from balancofichas '
      'where'
      '  BALANCOFICHA = :BALANCOFICHA')
    ModifySQL.Strings = (
      'update balancofichas'
      'set'
      '  STATUS = :STATUS'
      'where'
      '  BALANCOFICHA = :OLD_BALANCOFICHA')
    InsertSQL.Strings = (
      '')
    Left = 50
    Top = 82
  end
end

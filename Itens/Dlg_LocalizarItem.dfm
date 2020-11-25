inherited DlgLocalizarItem: TDlgLocalizarItem
  Top = 209
  BorderStyle = bsDialog
  Caption = 'Localizar Item de Inventário'
  ClientHeight = 144
  ClientWidth = 363
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label1: TTS_Label [0]
    Left = 10
    Top = 17
    Width = 65
    Caption = 'Item:'
    LinkToResult = 0
  end
  object TS_Label2: TTS_Label [1]
    Left = 11
    Top = 46
    Width = 65
    Caption = 'Descrição:'
    LinkToResult = 0
  end
  object Bevel1: TBevel [2]
    Left = 7
    Top = 7
    Width = 348
    Height = 65
  end
  inherited btFechar: TTS_BitBtn
    Left = 199
    Top = 106
    TabOrder = 3
  end
  inherited TS_BitBtn1: TTS_BitBtn
    Left = 77
    Top = 106
    TabOrder = 2
    OnClick = TS_BitBtn1Click
  end
  object dfItem: TTS_DBEditItem [5]
    Left = 82
    Top = 16
    Width = 121
    DataField = 'CODIGO'
    DataSource = C_LocalizaItensDS
    TabOrder = 0
    Transparent = False
    TipoDescricao = 'O'
    ChaveEstrangeira = 'item'
    TipoItem = '1'
    C_Localizar = DMProjeto.C_Itens
    ID = 0
  end
  object dfDescricao: TTS_DBEditItem [6]
    Left = 82
    Top = 45
    Width = 263
    DataField = 'DESCRICAO'
    DataSource = C_LocalizaItensDS
    TabOrder = 1
    Transparent = False
    TipoDescricao = 'V'
    ChaveEstrangeira = 'item'
    TipoItem = '1'
    C_Localizar = DMProjeto.C_Itens
    ID = 0
  end
  object Q_LocalizaItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from itens where item is null')
    Left = 65522
    Top = 122
  end
  object C_LocalizaItensDS: TDataSource
    DataSet = C_LocalizaItens
    Left = 30
    Top = 105
  end
  object Q_LocalizaItensProvider: TDataSetProvider
    DataSet = Q_LocalizaItens
    Constraints = True
    Left = 32
    Top = 59
  end
  object C_LocalizaItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_LocalizaItensProvider'
    Left = 109
    Top = 57
    object C_LocalizaItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_LocalizaItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_LocalizaItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
  end
end

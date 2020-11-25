inherited DlgSelecionarItens: TDlgSelecionarItens
  Left = 54
  Top = 139
  BorderStyle = bsDialog
  Caption = 'Selecionar Itens'
  ClientHeight = 393
  ClientWidth = 581
  PixelsPerInch = 96
  TextHeight = 13
  inherited TS_BitBtn1: TTS_BitBtn
    Left = 152
    Top = 358
    TabOrder = 1
    OnClick = TS_BitBtn1Click
  end
  object TS_GroupBox1: TTS_GroupBox [1]
    Left = 4
    Top = 1
    Width = 455
    Height = 86
    Caption = 'Filtros para Seleção dos Itens'
    TabOrder = 0
    object TS_Label2: TTS_Label
      Left = 14
      Top = 20
      Width = 45
      Caption = 'Grupo:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label5: TTS_Label
      Left = 3
      Top = 42
      Width = 56
      Caption = 'Fabricante:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 9
      Top = 65
      Width = 50
      Caption = 'Item:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label1: TTS_Label
      Left = 147
      Top = 65
      Width = 64
      Caption = 'Descrição:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object cmbGrupo: TTS_DBLookupComboBox
      Left = 65
      Top = 18
      Width = 245
      TabOrder = 0
      OnClick = cmbGrupoClick
      DropDownRows = 15
      ClearKey = 32
      LookupKeyValue = Null
      Height = 19
    end
    object cmbFabricante: TTS_DBLookupComboBox
      Left = 65
      Top = 41
      Width = 245
      TabOrder = 1
      OnClick = cmbFabricanteClick
      DropDownRows = 15
      ClearKey = 32
      LookupKeyValue = Null
      Height = 19
    end
    object TS_DBEditItem1: TTS_DBEditItem
      Left = 65
      Top = 64
      Width = 77
      Style.ButtonStyle = btsFlat
      TabOrder = 2
      OnKeyPress = TS_DBEditItem1KeyPress
      DataField = 'CODIGO'
      DataSource = Q_ItensDS
      Buttons = <>
      TipoItem = '1'
      ID = 0
      OnSelecionou = TS_DBEditItem1Selecionou
      ChaveEstrangeira = 'item'
      Height = 19
    end
    object dfDescricao: TTS_DBEditItem
      Left = 217
      Top = 64
      Width = 231
      Style.ButtonStyle = btsFlat
      TabOrder = 3
      OnKeyPress = TS_DBEditItem1KeyPress
      DataField = 'DESCRICAO'
      DataSource = Q_ItensDS
      Buttons = <>
      TipoItem = '1'
      ID = 0
      OnSelecionou = TS_DBEditItem1Selecionou
      ChaveEstrangeira = 'item'
      Height = 19
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 419
    Top = 216
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 417
    Top = 287
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 295
    Top = 321
  end
  object Q_ItensDS: TDataSource
    DataSet = C_Itens
    Left = 38
    Top = 255
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select i.item,i.codigo, i.descricao, i.unidade'
      'from itens i'
      'where i.item is null')
    Left = 77
    Top = 130
  end
  object Q_ItensProvider: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Left = 39
    Top = 147
  end
  object C_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ItensProvider'
    BeforePost = C_ItensBeforePost
    Left = 38
    Top = 199
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object Q_GruposProvider: TDataSetProvider
    DataSet = Q_Grupos
    Constraints = True
    Left = 198
    Top = 182
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOS where tipoitem = 1'
      'order by descricaogrupo')
    Left = 205
    Top = 121
    object Q_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object Q_GruposCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object Q_GruposDESCRICAOGRUPO: TIBStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object Q_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_GruposProvider'
    Left = 196
    Top = 241
    object C_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object C_GruposCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object C_GruposDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object C_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
  end
  object C_GruposDS: TDataSource
    DataSet = C_Grupos
    Left = 187
    Top = 299
  end
  object ppmPrecos: TPopupMenu
    Left = 352
    Top = 323
    object Tabelas1: TMenuItem
      Caption = 'Excluir Item...'
      OnClick = Tabelas1Click
    end
    object NovoItem1: TMenuItem
      Caption = 'Novo Item...'
      OnClick = NovoItem1Click
    end
  end
  object C_FabricantesDS: TDataSource
    DataSet = C_Fabricantes
    Left = 452
    Top = 290
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_FabricantesProvider'
    Left = 451
    Top = 238
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_FabricantesProvider: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 450
    Top = 185
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes')
    Left = 449
    Top = 133
  end
end

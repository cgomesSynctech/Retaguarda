inherited DlgPesquisaLocalizacao: TDlgPesquisaLocalizacao
  Left = 439
  Top = 104
  Width = 498
  Height = 193
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 364
    Height = 112
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 78
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Visualizar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 482
    inherited btHelp: TTS_SpeedButton
      Left = 454
    end
    inherited lbCaption: TdxfLabel
      Width = 238
      AutoSize = True
      Caption = 'Pesquisa por Localiza'#231#227'o'
    end
  end
  inherited pnDados: TTS_Panel
    Width = 364
    Height = 112
    object TS_Label1: TTS_Label
      Left = 1
      Top = 41
      Width = 62
      Height = 13
      Caption = 'Localiza'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 1
      Top = 66
      Width = 62
      Height = 13
      Caption = 'Marcas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object cmbLocalizacao: TTS_LookupComboBox
      Left = 73
      Top = 38
      Width = 224
      TabOrder = 0
      StyleController = DMProjeto.esRemessa
      OnChange = cmbLocalizacaoChange
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'STATUSSERVICO'
      ListSource = C_LocalizacaoDS
      LookupKeyValue = Null
      Height = 19
    end
    object cmbMarcas: TTS_LookupComboBox
      Left = 73
      Top = 63
      Width = 224
      Enabled = False
      TabOrder = 1
      StyleController = DMProjeto.esRemessa
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'MARCA'
      ListSource = C_MarcasDS
      LookupKeyValue = Null
      Height = 19
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 80
    Top = 322
  end
  inherited Beep: TBTBeeper
    Left = 24
    Top = 328
  end
  inherited FormStorage: TFormStorage
    Left = 8
    Top = 208
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Caption = 'Pesquisa por Localiza'#231#227'o'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 7
    Top = 250
  end
  object C_LocalizacaoDS: TDataSource
    Tag = 100
    DataSet = C_Localizacao
    Left = 292
    Top = 263
  end
  object C_Localizacao: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Localizacao'
    Left = 293
    Top = 326
    object C_LocalizacaoSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Required = True
    end
    object C_LocalizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_LocalizacaoORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object P_Localizacao: TDataSetProvider
    DataSet = Q_Localizacao
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 148
    Top = 319
  end
  object Q_Localizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'select ss.* from statusservicos ss where ss.statusservico <60 or' +
        'der by ss.statusservico')
    Left = 216
    Top = 321
  end
  object Q_Marcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select * from marcas')
    Left = 400
    Top = 121
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 404
    Top = 183
  end
  object C_Marcas: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marcas'
    Left = 405
    Top = 230
    object C_MarcasMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
    object C_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_MarcasDS: TDataSource
    Tag = 100
    DataSet = C_Marcas
    Left = 404
    Top = 279
  end
end

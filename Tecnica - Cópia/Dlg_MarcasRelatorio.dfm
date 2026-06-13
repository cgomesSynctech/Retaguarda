inherited DlgMarcasRelatorio: TDlgMarcasRelatorio
  Height = 171
  Caption = 'DlgMarcasRelatorio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 90
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 56
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'visualizar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    inherited lbCaption: TdxfLabel
      Width = 196
      AutoSize = True
      Caption = 'Pesquisa por marcas'
    end
  end
  inherited pnDados: TTS_Panel
    Height = 90
    object TS_Label1: TTS_Label
      Left = 1
      Top = 41
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
    object cmbMarcas: TTS_LookupComboBox
      Left = 73
      Top = 38
      Width = 224
      TabOrder = 0
      StyleController = DMProjeto.esRemessa
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'MARCA'
      ListSource = C_MarcasDS
      LookupKeyValue = Null
      Height = 19
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 54
    Top = 270
  end
  inherited LastDataObject: TTS_LastDataObject
    Top = 271
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 8
    Top = 218
  end
  inherited Beep: TBTBeeper
    Left = 8
    Top = 264
  end
  inherited FormStorage: TFormStorage
    Left = 8
    Top = 176
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Caption = 'Pesquisa por marcas'
    Left = 114
    Top = 266
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 263
    Top = 266
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
    Left = 288
    Top = 49
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 292
    Top = 111
  end
  object C_Marcas: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marcas'
    Left = 293
    Top = 158
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
    Left = 292
    Top = 207
  end
end

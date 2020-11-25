inherited DlgAlterarLocalizacao: TDlgAlterarLocalizacao
  Left = 440
  Top = 179
  Width = 571
  Height = 198
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 437
    Height = 117
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 83
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Alterar'
      Glyph.Data = {
        4E030000424D4E030000000000007600000028000000340000001A0000000100
        040000000000D802000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDDDDDDDD88
        8888888888888888888888880000DDDDDDDDDD000000DDDDDDDDDD8888888888
        77777788888888880000DDDDDDDD0002222200DDDDDDDD888888887777777777
        888888880000DDDDDD00200222222200DDDDDD88888877777777777777888888
        0000DDDDD06620F0666666620DDDDD8888878877F7888888877888880000DDDD
        00760FF0277777770DDDDD888877887FF7888888887888880000DDDD0772FFFF
        2777777770DDDD88887887FFFF888888888788880000DDD0770FFFFF07777777
        70DDDD8887887FFFFF788888888788880000DDD070FFFFFFF2777777770DDD88
        8787FFFFFFF78888888878880000DDD070FFFFFFF0777777770DDD888787FFFF
        FFF78888888878880000DDD070FFF0FFFF077777770DDD888787FFF7FFFF7888
        888878880000DDD070FF070FFFF07777770DDD888787FF787FFFF78888887888
        0000DDD073703770FFFF0777770DDD888787878887FFFF78888878880000DDD0
        770777770FFFF077770DDD8887F87888887FFFF7888878880000DDDD07777777
        70FFFF0770DDDD888878FFFFF887FFFF7FF788880000DDDD077777777700FFF0
        70DDDD88887FFFFFFFFF77FFF7F788880000DDDDD0777777777700070DDDDD88
        8887FFFFFFFFFF777F7888880000DDDDD0777F88888F77770DDDDD888887FFFF
        FFFFFFFF887888880000DDDDDD00778FFF877700DDDDDD88888877FFFFFFFFFF
        778888880000DDDDDDDD0078887700DDDDDDDD8888888877FFFFFF7788888888
        0000DDDDDDDDDD000000DDDDDDDDDD888888888877777788888888880000DDDD
        DDDDDDDDDDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000}
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 555
    Gradient.ColorStart = 14003626
    inherited lbEstadoForm: TTS_Label
      Width = 234
      Caption = 'Escolha o local onde se encontra o equipamento.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 527
    end
    inherited lbCaption: TdxfLabel
      Width = 181
      AutoSize = True
      Caption = 'Alterar Localiza'#231#227'o'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnDados: TTS_Panel
    Width = 437
    Height = 117
    Color = 15456728
    object TS_Label1: TTS_Label
      Left = 9
      Top = 37
      Width = 150
      Height = 13
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object cmbLocal: TTS_LookupComboBox
      Left = 161
      Top = 34
      Width = 222
      TabOrder = 0
      StyleController = DMProjeto.esRemessa
      ClearKey = 32
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'LOCALIZACAOEQUIPAMENTO'
      ListSource = C_LocalDS
      LookupKeyValue = Null
      Height = 19
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 68
    Top = 210
  end
  inherited FormStorage: TFormStorage
    Left = 88
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Alterar Localiza'#231#227'o'
    FirstEditField = cmbLocal
    Left = 22
    Top = 70
  end
  inherited ppmHelp: TTS_PopupMenu
    Top = 118
  end
  object Q_Local: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select * from LOCALIZACAOEQUIPAMENTO'
      '')
    Left = 124
    Top = 57
  end
  object P_Local: TDataSetProvider
    DataSet = Q_Local
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 188
    Top = 51
  end
  object C_Local: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Local'
    Left = 213
    Top = 110
    object C_LocalLOCALIZACAOEQUIPAMENTO: TIntegerField
      FieldName = 'LOCALIZACAOEQUIPAMENTO'
      Required = True
    end
    object C_LocalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_LocalDS: TDataSource
    Tag = 100
    DataSet = C_Local
    Left = 228
    Top = 243
  end
  object Q_Abertura: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Update servicos set LOCALIZACAO = :LOCAL'
      'WHERE SERVICO = :SERVICO')
    Left = 328
    Top = 93
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOCAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERVICO'
        ParamType = ptUnknown
      end>
  end
end

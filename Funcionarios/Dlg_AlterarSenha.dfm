inherited DlgAlterarSenha: TDlgAlterarSenha
  Left = 305
  Top = 194
  Height = 219
  Caption = 'Cadastros Gerais'
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 140
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 106
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 172
      AutoSize = True
      Caption = 'Alter'#231#227'o de Senha'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Height = 140
    Color = 14542583
    object TS_Label1: TTS_Label
      Left = 50
      Top = 42
      Width = 65
      Caption = 'Senha Atual:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 50
      Top = 67
      Width = 65
      Caption = 'Nova Senha:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 50
      Top = 91
      Width = 65
      Caption = 'Confirmar:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dfAtual: TTS_Edit
      Left = 120
      Top = 42
      Width = 121
      TabOrder = 0
      PasswordChar = '*'
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfNovo: TTS_Edit
      Left = 120
      Top = 65
      Width = 121
      TabOrder = 1
      PasswordChar = '*'
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object dfConfirmar: TTS_Edit
      Left = 120
      Top = 88
      Width = 121
      TabOrder = 2
      PasswordChar = '*'
      StyleController = DMProjeto.esGeral
      Height = 19
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 344
    Top = 76
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 270
    Top = 65
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 240
    Top = 20
  end
  inherited Beep: TBTBeeper
    Left = 188
    Top = 10
  end
  inherited FormStorage: TFormStorage
    Left = 256
    Top = 4
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Alter'#231#227'o de Senha'
    Left = 356
    Top = 6
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 305
    Top = 2
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 119
    Top = 42
  end
end

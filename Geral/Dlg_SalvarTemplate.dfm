inherited DlgSalvarTemplate: TDlgSalvarTemplate
  Left = 262
  Top = 205
  Width = 455
  Height = 191
  Caption = 'Gravar'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 329
    Height = 114
    Color = 15724527
    object Label1: TLabel
      Left = 10
      Top = 38
      Width = 93
      Height = 13
      Caption = 'Nome do Template:'
    end
    object edTemplate: TTS_Edit
      Left = 104
      Top = 36
      Width = 209
      Style.BorderColor = clGray
      Style.BorderStyle = xbsSingle
      TabOrder = 0
      Height = 19
    end
    object ckbPadrao: TTS_CheckBox
      Left = 101
      Top = 58
      Width = 198
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Caption = 'Definir este template como padr'#227'o'
      State = cbsChecked
      DisableEdit = False
      Height = 22
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 329
    Height = 114
    Color = 15724527
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 80
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 447
    inherited lbCaption: TdxfLabel
      Width = 154
      Caption = 'Salvar Template'
    end
    inherited lbEstadoForm: TTS_Label
      Width = 152
      Caption = 'Grava configura'#231#227'o do relat'#243'rio'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 411
    end
  end
  inherited FormsComponent: TFormsComponent
    Caption = 'Salvar Template'
    Top = 116
  end
end

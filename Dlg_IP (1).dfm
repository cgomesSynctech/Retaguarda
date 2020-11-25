inherited DlgIP: TDlgIP
  Left = 566
  Top = 157
  Width = 562
  Height = 251
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 428
    Height = 170
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 136
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Atualizar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 546
    Gradient.ColorStart = 11911142
    inherited lbEstadoForm: TTS_Label
      Left = 57
      Top = 28
      Width = 98
      Caption = 'Informa seu IP atual'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 518
    end
    inherited lbCaption: TdxfLabel
      Left = 0
      Top = 0
      Width = 546
      Align = alTop
      AutoSize = True
      Caption = 'IP'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 428
    Height = 170
    Color = 14542583
    object WebBrowser: TWebBrowser
      Left = 16
      Top = 17
      Width = 393
      Height = 136
      TabOrder = 0
      ControlData = {
        4C0000009E2800000E0E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnIP: TPanel
      Left = 16
      Top = 16
      Width = 393
      Height = 137
      BevelOuter = bvNone
      Caption = 'IP'
      Color = 14542583
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 104
    Top = 56
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 312
    Top = 59
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 238
    Top = 56
  end
  inherited Beep: TBTBeeper
    Left = 62
    Top = 54
  end
  inherited FormStorage: TFormStorage
    Left = 284
    Top = 52
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'IP'
    Top = 58
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 193
    Top = 54
  end
end

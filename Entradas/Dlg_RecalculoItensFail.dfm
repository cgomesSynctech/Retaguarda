inherited DlgRecalculoItensFail: TDlgRecalculoItensFail
  Left = 231
  Top = 166
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Fornecedores / Compras'
  ClientHeight = 155
  ClientWidth = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 350
    Height = 112
    Color = 15196656
    object TS_Label1: TTS_Label
      Left = 11
      Top = 7
      Width = 321
      Height = 42
      Alignment = taLeftJustify
      Caption = 
        'O Sistema está agora recompondo os custos de Itens que tiveram s' +
        'uas operações de entrada modificadas e que por algum motivo não ' +
        'concluiu este recálculo com sucesso.'
      FormatoTabela = False
      LinkToResult = 0
    end
    object pBar: TdxfProgressBar
      Left = 11
      Top = 68
      Width = 319
      Height = 16
      BarBevelOuter = bvNone
      BevelOuter = bvLowered
      Orientation = orHorizontal
      Max = 100
      Min = 0
      Position = 0
      ShowText = True
      ShowTextStyle = stsPercent
      BeginColor = 8454143
      EndColor = 4227327
      Style = sExSolid
      Step = 10
      TransparentGlyph = True
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 350
    Height = 112
    inherited btComando1: TTS_SpeedButton [0]
    end
    inherited btFecharCadastro: TTS_SpeedButton [1]
      Top = 78
    end
    inherited btComando2: TTS_SpeedButton [2]
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 468
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 267
      Caption = 'Recálculo de Custo de Itens'
      Effect3D.ShadowedColor = 11775972
    end
    inherited lbEstadoForm: TTS_Label
      Width = 248
      Caption = 'Para Itens que não foram recalculados com sucesso'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 432
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Recálculo de Custo de Itens'
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTimer
    Left = 279
    Top = 52
  end
end

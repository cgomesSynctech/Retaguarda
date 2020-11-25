inherited DlgConfiguraRelatorio: TDlgConfiguraRelatorio
  Left = 246
  Top = 201
  Width = 512
  Height = 315
  Caption = 'Company'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 386
    Height = 238
    Color = 14608375
    object TS_Label1: TTS_Label
      Left = 37
      Top = 63
      Width = 97
      Caption = 'Estilo do Cabe'#231'alho:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 37
      Top = 40
      Width = 97
      Caption = 'T'#237'tulo do Relat'#243'rio:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 37
      Top = 84
      Width = 97
      Caption = 'N'#186' de c'#243'pias:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 37
      Top = 105
      Width = 97
      Caption = 'Impressora:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object cmbImpressora: TTS_ImageEdit
      Left = 136
      Top = 103
      Width = 217
      TabOrder = 0
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object edTitulo: TTS_Edit
      Left = 136
      Top = 37
      Width = 217
      TabOrder = 1
      StyleController = DMProjeto.esGeral
      Height = 19
    end
    object edCopias: TTS_SpinEdit
      Left = 136
      Top = 81
      Width = 65
      TabOrder = 2
      StyleController = DMProjeto.esGeral
      MaxValue = 9999999
      MinValue = 1
      Value = 1
      Height = 19
      StoredValues = 48
    end
    object cmbCabecalho: TTS_ImageEdit
      Left = 136
      Top = 59
      Width = 137
      TabOrder = 3
      StyleController = DMProjeto.esGeral
      Descriptions.Strings = (
        'Com Cabe'#231'alho'
        'Papel Timbrado'
        'Sem Cabe'#231'alho'
        'Cabe'#231'alho Imagem')
      ImageIndexes.Strings = (
        '0'
        '1'
        '2'
        '3')
      Values.Strings = (
        'CC'
        'PT'
        'SC'
        'TB')
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 386
    Height = 238
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 204
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 504
    Gradient.ColorStart = 11388903
    inherited lbCaption: TdxfLabel
      Width = 250
      Caption = 'Configura'#231#227'o do Relat'#243'rio'
      Effect3D.ShadowedColor = 11388903
    end
    inherited lbEstadoForm: TTS_Label
      Width = 164
      Caption = 'Op'#231#245'es de impress'#227'o do relat'#243'rio.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 468
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 312
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msCompany
    BarEndColor = 11388903
    CaptionShadow = 11388903
    FormColor = 14608375
    Modulo = 'Company'
    Caption = 'Configura'#231#227'o do Relat'#243'rio'
  end
  inherited FormStorage: TFormStorage
    Left = 312
    Top = 64
  end
end

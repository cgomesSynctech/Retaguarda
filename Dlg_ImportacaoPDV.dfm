inherited DlgImportacaoPDV: TDlgImportacaoPDV
  Left = 184
  Top = 78
  Width = 556
  Height = 257
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 422
    Height = 176
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 142
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Automatizar'
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Importar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 540
    Gradient.ColorStart = 11911142
    inherited btHelp: TTS_SpeedButton
      Left = 512
    end
    inherited lbCaption: TdxfLabel
      Width = 385
      AutoSize = True
      Caption = 'Importa'#231#227'o da Movimenta'#231#227'o dos PDV'#39's'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 422
    Height = 176
    Color = 14542583
    object lbxPDVs: TdxfLabel
      Left = 1
      Top = 39
      Width = 420
      Height = 28
      Align = alTop
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfLeftTop
      Effect3D.Depth = 0
      Effect3D.ShadowedColor = 9741530
      PenWidth = 1
    end
    object lbxArquivos: TdxfLabel
      Left = 1
      Top = 83
      Width = 420
      Height = 28
      Align = alTop
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Style = dxfRaised
      Angle = 0
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfLeftTop
      Effect3D.Depth = 0
      Effect3D.ShadowedColor = 9741530
      PenWidth = 1
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 420
      Height = 38
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 14542583
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Versoes = 'S,P,E'
      object TS_Label3: TTS_Label
        Left = 5
        Top = 11
        Width = 55
        Caption = 'PDV'#39's:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object clbPDVS: TTS_CheckListBox
        Left = 187
        Top = 18
        Width = 294
        Height = 100
        BorderStyle = bsNone
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
        KeyField = 'PDV'
        ListField = 'DESCRICAO'
        Transparent = True
      end
      object pdPDVS: TTS_PopupEdit
        Left = 61
        Top = 9
        Width = 218
        TabOrder = 0
        AutoSelect = False
        StyleController = DMProjeto.esGeral
        Text = 'Selecionar PDV'#39's'
        HideEditCursor = True
        PopupControl = clbPDVS
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = pdPDVSCloseUp
        LookupKeyValue = 0
        Height = 19
      end
    end
    object bPDV: TProgressBar
      Left = 1
      Top = 67
      Width = 420
      Height = 16
      Cursor = crHourGlass
      Align = alTop
      Min = 0
      Max = 10
      Smooth = True
      Step = 1
      TabOrder = 1
    end
    object bArquivos: TProgressBar
      Left = 1
      Top = 111
      Width = 420
      Height = 16
      Cursor = crHourGlass
      Align = alTop
      Min = 0
      Max = 0
      Smooth = True
      Step = 1
      TabOrder = 2
    end
    object rgAutomatico: TTS_RadioGroup
      Left = 1
      Top = 119
      Width = 420
      Height = 56
      Align = alBottom
      Caption = 'Verifica'#231#227'o de Dados a Cada:'
      Columns = 5
      Ctl3D = True
      Items.Strings = (
        '05 minutos'
        '10 minutos'
        '15 minutos'
        '30 minutos'
        '60 minutos')
      ParentCtl3D = False
      TabOrder = 3
      Transparent = True
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 30
    Top = 268
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 130
  end
  inherited ppmPadrao: TTS_PopupMenu
    Top = 100
  end
  inherited Beep: TBTBeeper
    Left = 30
    Top = 112
  end
  inherited FormStorage: TFormStorage
    Left = 88
    Top = 100
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Importa'#231#227'o da Movimenta'#231#227'o dos PDV'#39's'
    Left = 344
    Top = 42
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 129
    Top = 136
  end
  object Q_PDVS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select pdv, coalesce(NUMEROECF,numeroserieecf)||'#39' - '#39'||coalesce(' +
        'maquina,'#39#39') AS DESCRICAO, LOCALARQUIVOS from PDVS P'
      'order by DESCRICAO')
    Left = 304
    Top = 132
    object Q_PDVSPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'PDVS.PDV'
      Required = True
    end
    object Q_PDVSDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 58
    end
    object Q_PDVSLOCALARQUIVOS: TIBStringField
      FieldName = 'LOCALARQUIVOS'
      Origin = 'PDVS.LOCALARQUIVOS'
      Size = 1000
    end
  end
  object Q_PDVSDs: TDataSource
    DataSet = Q_PDVS
    Left = 362
    Top = 128
  end
  object C_PDVSelecionados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PDVSelecionados'
    Left = 215
    Top = 135
    object C_PDVSelecionadosPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
    object C_PDVSelecionadosLOCALARQUIVOS: TStringField
      FieldName = 'LOCALARQUIVOS'
      Size = 1000
    end
    object C_PDVSelecionadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 58
    end
  end
  object Q_PDVSelecionados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select pdv, LOCALARQUIVOS, '
      
        'coalesce(NUMEROECF,numeroserieecf)||'#39' - '#39'||coalesce(maquina,'#39#39') ' +
        'AS DESCRICAO'
      ''
      ' from PDVS ')
    Left = 224
    Top = 98
  end
  object P_PDVSelecionados: TDataSetProvider
    DataSet = Q_PDVSelecionados
    Constraints = True
    Options = [poAllowCommandText]
    Left = 238
    Top = 134
  end
  object tAutomatico: TTimer
    Enabled = False
    Interval = 0
    OnTimer = tAutomaticoTimer
    Left = 362
    Top = 76
  end
end

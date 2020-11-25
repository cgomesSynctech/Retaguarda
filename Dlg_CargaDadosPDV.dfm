inherited DlgCargaDadosPDV: TDlgCargaDadosPDV
  Left = 401
  Top = 241
  Width = 571
  Height = 181
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 437
    Height = 100
    Color = 14542583
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 66
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Automatizar'
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Importar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 555
    Gradient.ColorStart = 11911142
    inherited btHelp: TTS_SpeedButton
      Left = 527
    end
    inherited lbCaption: TdxfLabel
      Width = 341
      AutoSize = True
      Caption = 'Importa'#231#227'o dos Arquivos dos PDV'#39's'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 437
    Height = 100
    Color = 14542583
    object lbxArquivos: TdxfLabel
      Left = 1
      Top = 39
      Width = 435
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = 'Carga do Sistema'
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
      Width = 435
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
      object TS_Label1: TTS_Label
        Left = 10
        Top = 14
        Width = 89
        Caption = '&Local Arquivos:'
        FocusControl = dfLocalArquivos
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfLocalArquivos: TTS_Edit
        Left = 100
        Top = 12
        Width = 309
        TabOrder = 0
        StyleController = DMProjeto.esFornecedores
        Height = 19
      end
    end
    object bArquivos: TProgressBar
      Left = 1
      Top = 61
      Width = 435
      Height = 14
      Cursor = crHourGlass
      Align = alTop
      Min = 0
      Max = 0
      Smooth = True
      Step = 1
      TabOrder = 1
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 370
    Top = 24
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 194
    Top = 79
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
    Caption = 'Importa'#231#227'o dos Arquivos dos PDV'#39's'
    Left = 54
    Top = 42
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 111
    Top = 198
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
    Left = 306
    Top = 72
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
    Left = 279
    Top = 113
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
    Left = 214
    Top = 36
  end
  object P_PDVSelecionados: TDataSetProvider
    DataSet = Q_PDVSelecionados
    Constraints = True
    Options = [poAllowCommandText]
    Left = 274
    Top = 74
  end
  object tAutomatico: TTimer
    Enabled = False
    Interval = 0
    Left = 362
    Top = 76
  end
end

object FrmStart: TFrmStart
  Left = 191
  Top = 136
  Width = 469
  Height = 391
  Caption = 'Iniciando MaxShop'
  Color = 16050393
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TS_PCStart: TTS_PageControl
    Left = 16
    Top = 11
    Width = 430
    Height = 317
    ActivePage = tsPagina2
    OwnerDraw = True
    TabIndex = 1
    TabOrder = 0
    Transparent = False
    TabColor = 15918032
    TabColorActive = 14859922
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabFontActive.Charset = DEFAULT_CHARSET
    TabFontActive.Color = clWindowText
    TabFontActive.Height = -11
    TabFontActive.Name = 'MS Sans Serif'
    TabFontActive.Style = []
    object tsPagina1: TTS_TabSheet
      Caption = 'Localizando o Servidor'
      TabColor = clBtnFace
      TabFontColor = clBlack
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16050393
      ParentColor = False
      object TS_Label1: TLabel
        Left = 0
        Top = 85
        Width = 168
        Height = 13
        Caption = 'Local Instala'#231#227'o do Servidor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbServidor: TLabel
        Left = 7
        Top = 133
        Width = 106
        Height = 13
        Caption = 'Nome do Servidor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 216
        Top = 133
        Width = 101
        Height = 13
        Caption = 'Compartilhamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btEdCompartilhamento: TTS_ButtonEdit
        Left = 168
        Top = 82
        Width = 251
        TabOrder = 0
        StyleController = esStart
        Text = 'MaxShop\'
        Buttons = <
          item
            Default = True
          end>
        ViewStyle = vsHideCursor
        OnButtonClick = btEdCompartilhamentoButtonClick
        Height = 21
        ExistButtons = True
      end
      object edNomeServidor: TTS_Edit
        Left = 5
        Top = 147
        Width = 204
        TabOrder = 1
        ReadOnly = True
        StyleController = esStart
        Height = 19
        StoredValues = 64
      end
      object edNomeDiretorio: TTS_Edit
        Left = 216
        Top = 147
        Width = 204
        TabOrder = 2
        ReadOnly = True
        StyleController = esStart
        Height = 19
        StoredValues = 64
      end
    end
    object tsPagina2: TTS_TabSheet
      Caption = 'Escolhendo a Empresa'
      TabColor = clBtnFace
      TabFontColor = clBlack
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16050393
      ParentColor = False
      object TS_Image1: TTS_Image
        Left = 22
        Top = 1
        Width = 37
        Height = 30
      end
      object lbCriarEmpresa: TdxfLabel
        Left = 69
        Top = 43
        Width = 161
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Criar Nova Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbCriarEmpresaClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image2: TTS_Image
        Left = 23
        Top = 37
        Width = 37
        Height = 30
      end
      object lbRegistrarEmpresa: TdxfLabel
        Left = 69
        Top = 79
        Width = 213
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Registar Empresa Externa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbRegistrarEmpresaClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image3: TTS_Image
        Left = 23
        Top = 73
        Width = 37
        Height = 30
      end
      object lbBackup: TdxfLabel
        Left = 69
        Top = 187
        Width = 59
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Backup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbBackupClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image4: TTS_Image
        Left = 24
        Top = 181
        Width = 37
        Height = 30
      end
      object lbRestaurar: TdxfLabel
        Left = 69
        Top = 223
        Width = 145
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Restaurar Backup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbRestaurarClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image5: TTS_Image
        Left = 24
        Top = 217
        Width = 37
        Height = 30
      end
      object lbTutoriais: TdxfLabel
        Left = 69
        Top = 260
        Width = 73
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Tutoriais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image6: TTS_Image
        Left = 25
        Top = 254
        Width = 37
        Height = 30
      end
      object lbAbrirModelo: TdxfLabel
        Left = 69
        Top = 151
        Width = 180
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Abrir Empresa Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbAbrirModeloClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image8: TTS_Image
        Left = 24
        Top = 145
        Width = 37
        Height = 30
      end
      object lbAbrirEmpresa: TdxfLabel
        Left = 69
        Top = 7
        Width = 116
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Abrir Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbAbrirEmpresaClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object lbMudarServidor: TdxfLabel
        Left = 69
        Top = 115
        Width = 153
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Mudar de Servidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbMudarServidorClick
        Style = dxfRaised
        Angle = 0
        Effect3D.Style = dxfCool
        Effect3D.Orientation = dxfRightBottom
        Effect3D.Depth = 0
        Effect3D.ShadowedColor = clGray
        PenWidth = 1
      end
      object TS_Image9: TTS_Image
        Left = 24
        Top = 109
        Width = 37
        Height = 30
      end
    end
  end
  object pnStatus: TPanel
    Left = 17
    Top = 334
    Width = 424
    Height = 30
    BevelOuter = bvNone
    Caption = 'pnStatus'
    Color = 16050393
    TabOrder = 1
    Visible = False
    object Gauge: TGauge
      Left = 122
      Top = 7
      Width = 295
      Height = 18
      BackColor = 16050393
      ForeColor = 13290186
      Progress = 0
    end
    object lbStatus: TLabel
      Left = 9
      Top = 9
      Width = 110
      Height = 14
      Caption = 'Atualizando o Sistema:'
      Font.Charset = ANSI_CHARSET
      Font.Color = 16494903
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ShapeAtualiza: TTS_Shape
      Left = 121
      Top = 6
      Width = 296
      Height = 20
      Brush.Style = bsClear
      Pen.Color = 14859922
      Pen.Width = 2
      Transparent = False
    end
  end
  object esStart: TdxEditStyleController
    BorderColor = 14859922
    BorderStyle = xbsSingle
    ButtonStyle = btsFlat
    Left = 40
    Top = 140
  end
end

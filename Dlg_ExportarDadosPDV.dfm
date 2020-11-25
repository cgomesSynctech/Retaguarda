inherited DlgExportarDadosPDV: TDlgExportarDadosPDV
  Left = 357
  Top = 119
  Width = 491
  Height = 419
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 357
    Height = 338
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 304
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 475
    Gradient.ColorStart = 9027548
    inherited btHelp: TTS_SpeedButton
      Left = 447
    end
    inherited lbCaption: TdxfLabel
      Width = 312
      AutoSize = True
      Caption = 'Exporta'#231#227'o de Dados Para o PDV'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 357
    Height = 338
    Color = 14019327
    object lbxTabelas: TdxfLabel
      Left = 1
      Top = 318
      Width = 355
      Height = 19
      Align = alBottom
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
    object TTS_Panel
      Left = 1
      Top = 1
      Width = 355
      Height = 128
      Align = alTop
      BevelInner = bvLowered
      Color = 13359603
      TabOrder = 0
      object TS_Label1: TTS_Label
        Left = 6
        Top = 3
        Width = 188
        Alignment = taLeftJustify
        Caption = 'Localiza'#231#227'o dos Arquivos Para Carga:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfLocalArquivos: TDirectoryListBox
        Left = 2
        Top = 45
        Width = 351
        Height = 81
        Align = alBottom
        BevelEdges = []
        BevelOuter = bvRaised
        Ctl3D = False
        ItemHeight = 16
        ParentCtl3D = False
        TabOrder = 0
      end
      object dfDrive: TDriveComboBox
        Left = 2
        Top = 20
        Width = 151
        Height = 19
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Ctl3D = False
        DirList = dfLocalArquivos
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object clbArquivos: TTS_CheckListBox
      Left = 1
      Top = 129
      Width = 355
      Height = 179
      Align = alTop
      Ctl3D = False
      ItemHeight = 16
      Items.Strings = (
        'Favorecidos;'
        'Itens;'
        'Itensunidades;'
        'Produtospreco;'
        'Unidades;'
        'Contas;'
        'Usuarios;'
        'Pdvs.')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 1
      Transparent = False
    end
    object pBar: TProgressBar
      Left = 1
      Top = 308
      Width = 355
      Height = 16
      Cursor = crHourGlass
      Align = alTop
      Min = 0
      Max = 10
      Smooth = True
      Step = 1
      TabOrder = 2
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 148
    Top = 184
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 148
    Top = 275
  end
  inherited FormStorage: TFormStorage
    Left = 188
    Top = 76
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Exporta'#231#227'o de Dados Para o PDV'
    Left = 148
    Top = 228
  end
  object sdSalvar: TSaveDialog
    Options = [ofHideReadOnly, ofNoValidate, ofCreatePrompt, ofEnableSizing]
    Left = 226
    Top = 108
  end
end

inherited DlgExportarMovimentos: TDlgExportarMovimentos
  Left = 349
  Top = 81
  Width = 491
  Height = 536
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 357
    Height = 455
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 421
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
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
    Height = 455
    Color = 14019327
    object lbxTabelas: TdxfLabel
      Left = 1
      Top = 435
      Width = 355
      Height = 19
      Align = alBottom
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
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
      Height = 36
      Align = alTop
      BevelInner = bvLowered
      Color = 13359603
      TabOrder = 0
      object TS_Label1: TTS_Label
        Left = 10
        Top = 11
        Width = 33
        Alignment = taLeftJustify
        Caption = 'Local:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfLocalArquivos: TTS_Edit
        Left = 42
        Top = 10
        Width = 301
        TabOrder = 0
        StyleController = DMProjeto.esFornecedores
        Height = 19
      end
    end
    object clbArquivos: TTS_CheckListBox
      Left = 1
      Top = 37
      Width = 355
      Height = 372
      Align = alTop
      Ctl3D = False
      ItemHeight = 16
      Items.Strings = (
        'entradas;'
        'entradasitens;'
        'entradasitensfilhos;'
        'entradasitensidents;'
        'entradasitensmescla;'
        'saidas;'
        'saidasitens;'
        'saidasitensfilhos;'
        'saidasitensidents;'
        'saidasitensmescla;'
        'titulosareceber;'
        'duplicatasapagar;'
        'transacoes;'
        'depositos;'
        'depositosdoc;'
        'depositostitulos;'
        'retiradas;'
        'retiradaschequescaixa;'
        'retiradasdoc;'
        'retiradasduplicatas;'
        'operacoesdoc;'
        'operacoesfinanceiras;'
        'operacoesfinanceirasdet;')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 1
      Transparent = False
    end
    object pBar: TProgressBar
      Left = 1
      Top = 409
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
  inherited ppmPadrao: TTS_PopupMenu
    Left = 152
    Top = 84
  end
  inherited Beep: TBTBeeper
    Left = 200
    Top = 160
  end
  inherited FormStorage: TFormStorage
    Left = 188
    Top = 76
  end
  inherited FormsComponent: TFormsComponent
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
end

inherited FrmIndexadores: TFrmIndexadores
  Left = 253
  Top = 256
  Width = 540
  Height = 277
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 417
    Height = 207
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 173
    end
  end
  inherited pnDados: TTS_Panel
    Width = 417
    Height = 207
    inherited Grid: TTS_QDBGrid
      Width = 415
      Height = 205
      KeyField = 'INDEXADOR'
      DataSource = DMIndexadores.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridCIFRAO: TdxDBGridMaskColumn
        Caption = 'S'#237'mbolo $'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIFRAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 415
      Height = 205
    end
    inherited sbDados: TTS_Panel
      Width = 415
      Height = 205
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 18
        Top = 58
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = edDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 18
        Top = 89
        Width = 65
        Caption = 'S'#237'mbolo $:'
        FocusControl = edCifrao
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDescricao: TTS_DBEdit
        Left = 84
        Top = 56
        Width = 257
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMIndexadores.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object edCifrao: TTS_DBEdit
        Left = 84
        Top = 87
        Width = 43
        TabOrder = 1
        DataField = 'CIFRAO'
        DataSource = DMIndexadores.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 415
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 532
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 119
      Caption = 'Indexadores'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 498
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 287
    Top = 12
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 398
    Top = 12
  end
  inherited ImgPadrao: TImageList
    Left = 338
    Top = 13
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'edDescricao'
      'edCifrao')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Indexadores'
    Left = 249
    Top = 65532
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 395
    end
  end
end

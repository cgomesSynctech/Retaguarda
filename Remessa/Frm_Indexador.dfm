inherited FrmIndexador: TFrmIndexador
  Left = 110
  Top = 167
  Width = 540
  Height = 248
  Caption = 'Módulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 417
    Height = 178
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 144
    end
  end
  inherited pnDados: TTS_Panel
    Width = 417
    Height = 178
    inherited Grid: TTS_QDBGrid
      Width = 415
      Height = 176
      KeyField = 'INDEXADOR'
      Filter.Criteria = {00000000}
      object GridINDEXADOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDEXADOR'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridCIFRAO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIFRAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 415
      Height = 176
    end
    inherited sbDados: TTS_Panel
      Width = 415
      Height = 176
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 18
        Top = 21
        Width = 65
        Caption = 'Descrição:'
        FocusControl = TS_DBEdDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 18
        Top = 52
        Width = 65
        Caption = 'Símbolo $:'
        FocusControl = TS_DBEdCifrao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdDescricao: TTS_DBEdit
        Left = 84
        Top = 19
        Width = 257
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMIndexador.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
      object TS_DBEdCifrao: TTS_DBEdit
        Left = 84
        Top = 50
        Width = 43
        TabOrder = 1
        DataField = 'CIFRAO'
        DataSource = DMIndexador.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 532
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 73
      Caption = 'Moedas'
      Effect3D.ShadowedColor = 14003626
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
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'Módulo de Remessa'
    Caption = 'Moedas'
    OnGravou = FormComponentGravou
    Left = 225
    Top = 12
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 395
    end
  end
end

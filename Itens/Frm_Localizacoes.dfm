inherited FrmLocalizacoes: TFrmLocalizacoes
  Left = 260
  Top = 175
  Width = 422
  Height = 277
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 299
    Height = 207
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 173
    end
  end
  inherited pnDados: TTS_Panel
    Width = 299
    Height = 207
    inherited Grid: TTS_QDBGrid
      Width = 297
      Height = 205
      KeyField = 'LOCALIZACAO'
      DataSource = DMLocalizacoes.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 283
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 297
      Height = 205
    end
    inherited sbDados: TTS_Panel
      Width = 297
      Height = 205
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 24
        Top = 75
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = edDesc
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDesc: TTS_DBEdit
        Left = 92
        Top = 73
        Width = 151
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMLocalizacoes.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 297
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 414
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 120
      Caption = 'Localiza'#231#245'es'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 375
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'edDesc')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Localiza'#231#245'es'
    FirstEditField = edDesc
    FirstSearchField = edDesc
  end
  inherited Beep: TBTBeeper
    Left = 104
    Top = 208
  end
  inherited FormStorage: TFormStorage
    Left = 184
    Top = 200
  end
end

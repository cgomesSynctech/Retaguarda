inherited FrmTecnologias: TFrmTecnologias
  Left = 170
  Top = 147
  Width = 500
  Height = 289
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 377
    Height = 219
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 185
    end
  end
  inherited pnDados: TTS_Panel
    Width = 377
    Height = 219
    inherited Grid: TTS_QDBGrid
      Width = 375
      Height = 217
      DataSource = DMTecnologias.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 258
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 375
      Height = 217
    end
    inherited sbDados: TTS_Panel
      Width = 375
      Height = 217
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 30
        Top = 48
        Width = 89
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 124
        Top = 45
        Width = 221
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTecnologias.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 375
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 492
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 114
      Caption = 'Tecnologias'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 453
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msRemessa
    CamposObrigatorios.Strings = (
      'dfDescricao')
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Tecnologias'
  end
end

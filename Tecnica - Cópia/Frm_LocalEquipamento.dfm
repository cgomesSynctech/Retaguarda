inherited FrmLocalEquipamento: TFrmLocalEquipamento
  Left = 133
  Top = 121
  Height = 312
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 242
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 208
    end
  end
  inherited pnDados: TTS_Panel
    Height = 242
    inherited Grid: TTS_QDBGrid
      Height = 240
      DataSource = DMLocalEquipamento.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Localiza'#231#227'o'
        HeaderAlignment = taCenter
        Width = 415
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 240
    end
    inherited sbDados: TTS_Panel
      Height = 240
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 70
        Top = 40
        Width = 65
        Caption = 'Localiza'#231#227'o:'
        FocusControl = dfLocal
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfLocal: TTS_DBEdit
        Left = 142
        Top = 38
        Width = 211
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMLocalEquipamento.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 302
      Caption = 'Localiza'#231#245'es dos Equipamentos'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    CamposObrigatorios.Strings = (
      'dfLocal')
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Localiza'#231#245'es dos Equipamentos'
    FirstEditField = dfLocal
  end
end

inherited FrmMarcas: TFrmMarcas
  Left = 121
  Top = 117
  Height = 306
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 236
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 202
    end
  end
  inherited pnDados: TTS_Panel
    Height = 236
    inherited Grid: TTS_QDBGrid
      Height = 234
      DataSource = DMMarcas.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridMARCA: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MARCA'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o da Marca'
        HeaderAlignment = taCenter
        Width = 420
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 234
    end
    inherited sbDados: TTS_Panel
      Height = 234
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 14
        Top = 39
        Width = 121
        Caption = 'Descri'#231#227'o da Marca:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 140
        Top = 36
        Width = 235
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMMarcas.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 238
      Caption = 'Marcas de Equipamentos'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    CamposObrigatorios.Strings = (
      'dfDescricao')
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Marcas de Equipamentos'
    FirstEditField = dfDescricao
  end
end

inherited FrmTiposServicos: TFrmTiposServicos
  Left = 131
  Top = 167
  Height = 309
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 239
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 205
    end
  end
  inherited pnDados: TTS_Panel
    Height = 239
    inherited Grid: TTS_QDBGrid
      Height = 237
      DataSource = DMTiposServicos.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 394
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 237
    end
    inherited sbDados: TTS_Panel
      Height = 237
      Color = 15456728
      object TS_Label7: TTS_Label
        Left = 2
        Top = 33
        Width = 124
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Tag = -2
        Left = 130
        Top = 31
        Width = 235
        HelpContext = -2
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTiposServicos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 167
      Caption = 'Tipos de Servi'#231'os'
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
    Caption = 'Tipos de Servi'#231'os'
    FirstEditField = dfDescricao
  end
end

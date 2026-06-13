inherited FRMTIPOEQUIPAMENTOS: TFRMTIPOEQUIPAMENTOS
  Height = 276
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Height = 206
    inherited Grid: TTS_QDBGrid
      Height = 204
      DataSource = DMTIPOEQUIPAMENTOS.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridTIPOEQUIPAMENTO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 227
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOEQUIPAMENTO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tipo de Equipamento'
        HeaderAlignment = taCenter
        Width = 405
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Height = 204
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 15
        Top = 39
        Width = 121
        Caption = 'Tipo de Equipamento:'
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
        DataSource = DMTIPOEQUIPAMENTOS.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 223
      Caption = 'Tipos de Equipamentos'
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
    Caption = 'Tipos de Equipamentos'
  end
end

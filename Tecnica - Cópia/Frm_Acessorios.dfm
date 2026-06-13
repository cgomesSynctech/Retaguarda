inherited FrmAcessorios: TFrmAcessorios
  Left = 269
  Top = 283
  Height = 278
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 208
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 174
    end
  end
  inherited pnDados: TTS_Panel
    Height = 208
    inherited Grid: TTS_QDBGrid
      Height = 206
      KeyField = 'ACESSORIO'
      DataSource = DMAcessorios.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 433
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 206
    end
    inherited sbDados: TTS_Panel
      Height = 206
      Color = 15456728
      object lbDesc: TTS_Label
        Left = 31
        Top = 45
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDesc
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDesc: TTS_DBEdit
        Left = 99
        Top = 42
        Width = 301
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMAcessorios.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 102
      Caption = 'Acess'#243'rios'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msRemessa
    CamposObrigatorios.Strings = (
      'dfDesc')
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Acess'#243'rios'
  end
end

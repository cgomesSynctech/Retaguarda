inherited FrmStatusServicos: TFrmStatusServicos
  Left = 121
  Top = 99
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
      DataSource = DmStatusServicos.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 277
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridORDEM: TdxDBGridMaskColumn
        Caption = 'Ordem'
        HeaderAlignment = taCenter
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDEM'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 237
    end
    inherited sbDados: TTS_Panel
      Height = 237
      Color = 15456728
      object lbDescricao: TTS_Label
        Left = 2
        Top = 33
        Width = 124
        Caption = 'Descri'#231#227'o do Status:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbOrdem: TTS_Label
        Left = 61
        Top = 64
        Width = 65
        Caption = 'Ordem:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Tag = -2
        Left = 130
        Top = 31
        Width = 187
        HelpContext = -2
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DmStatusServicos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Versoes = 'S,P,E'
        Height = 19
      end
      object edOrdem: TTS_DBEdit
        Left = 130
        Top = 62
        Width = 33
        Enabled = False
        TabOrder = 1
        DataField = 'ORDEM'
        DataSource = DmStatusServicos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 187
      Caption = 'Status dos Servi'#231'os'
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
    Caption = 'Status dos Servi'#231'os'
    Incluir = False
    Apagar = False
    FirstEditField = dfDescricao
    Left = 60
    Top = 184
  end
  inherited Beep: TBTBeeper
    Left = 304
    Top = 168
  end
  inherited FormStorage: TFormStorage
    Left = 352
    Top = 48
  end
end

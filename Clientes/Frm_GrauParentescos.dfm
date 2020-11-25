inherited FrmGrauParentescos: TFrmGrauParentescos
  Width = 513
  Height = 269
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 390
    Height = 192
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 158
    end
  end
  inherited pnDados: TTS_Panel
    Width = 390
    Height = 192
    inherited Grid: TTS_QDBGrid
      Width = 388
      Height = 190
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object GridGRAUPARENTESCO: TdxDBGridMaskColumn
        Visible = False
        Width = 208
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRAUPARENTESCO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Grau Parentesco'
        Width = 339
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 388
      Height = 190
    end
    inherited sbDados: TTS_Panel
      Width = 388
      Height = 190
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = 12
        Top = 26
        Width = 97
        Caption = 'Grau Parentesco:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 112
        Top = 24
        Width = 217
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMGrauParentescos.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 505
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 166
      Caption = 'Grau Parentescos'
      Effect3D.ShadowedColor = 9741530
    end
    inherited btHelp: TTS_SpeedButton
      Left = 470
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'dfDescricao')
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Grau Parentescos'
  end
end

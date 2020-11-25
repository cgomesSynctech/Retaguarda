inherited FrmCores: TFrmCores
  Width = 436
  Height = 283
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 313
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Width = 313
    Height = 206
    inherited Grid: TTS_QDBGrid
      Width = 311
      Height = 204
      KeyField = 'COR'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridCOR: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COR'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o da Cor'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 311
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Width = 311
      Height = 204
      Color = 14542583
      object TS_Label1: TTS_Label
        Left = 8
        Top = 14
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 76
        Top = 12
        Width = 202
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMCores.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 311
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 428
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 54
      Caption = 'Cores'
      Effect3D.ShadowedColor = 11911142
    end
    inherited btHelp: TTS_SpeedButton
      Left = 393
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Cores'
  end
end

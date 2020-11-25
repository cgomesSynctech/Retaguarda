inherited FrmHistoricos: TFrmHistoricos
  Width = 501
  Height = 292
  Caption = 'Contabilidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 378
    Height = 215
    inherited btGravar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 181
    end
  end
  inherited pnDados: TTS_Panel
    Width = 378
    Height = 215
    inherited Grid: TTS_QDBGrid
      Width = 376
      Height = 213
      KeyField = 'HISTORICO'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridHISTORICO: TdxDBGridMaskColumn
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Hist'#243'rico'
        HeaderAlignment = taCenter
        Width = 271
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 376
      Height = 213
    end
    inherited sbDados: TTS_Panel
      Width = 376
      Height = 213
      Color = 14733792
      object TS_Label1: TTS_Label
        Left = 16
        Top = 19
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBMemo1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBMemo1: TTS_DBMemo
        Left = 82
        Top = 18
        Width = 273
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMHistoricos.C_TabelaDS
        StyleController = DMProjeto.esContabil
        Height = 66
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 493
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Width = 97
      Caption = 'Hist'#243'ricos'
      Effect3D.ShadowedColor = 12689345
    end
    inherited btHelp: TTS_SpeedButton
      Left = 458
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Hist'#243'ricos'
  end
end

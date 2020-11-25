inherited FrmZonas: TFrmZonas
  Left = 106
  Top = 164
  Width = 461
  Height = 283
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 338
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Width = 338
    Height = 206
    inherited Grid: TTS_QDBGrid
      Width = 336
      Height = 204
      KeyField = 'ZONA'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridZONA: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ZONA'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o da Zona'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 336
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Width = 336
      Height = 204
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 3
        Top = 57
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 72
        Top = 55
        Width = 231
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMZonas.C_TabelaDS
        StyleController = DMProjeto.esClientes
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 453
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 160
      Caption = 'Zonas do Cliente'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 418
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Zonas do Cliente'
  end
end

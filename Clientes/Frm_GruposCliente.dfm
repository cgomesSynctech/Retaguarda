inherited FrmGruposCliente: TFrmGruposCliente
  Left = 154
  Top = 163
  Width = 460
  Height = 283
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 337
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Width = 337
    Height = 206
    inherited Grid: TTS_QDBGrid
      Width = 335
      Height = 204
      KeyField = 'GRUPOCLIENTE'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridGRUPOCLIENTE: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPOCLIENTE'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Grupo'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 335
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Width = 335
      Height = 204
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 3
        Top = 25
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 72
        Top = 23
        Width = 231
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMGruposCliente.C_TabelaDS
        StyleController = DMProjeto.esClientes
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 452
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 170
      Caption = 'Grupos de Cliente'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 417
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Grupos de Cliente'
  end
end

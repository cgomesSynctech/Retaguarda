inherited FrmMarcas: TFrmMarcas
  Left = 175
  Top = 138
  Height = 299
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 222
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 188
    end
  end
  inherited pnDados: TTS_Panel
    Height = 222
    inherited Grid: TTS_QDBGrid
      Height = 220
      DataSource = DMMarcas.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 289
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 220
    end
    inherited sbDados: TTS_Panel
      Height = 220
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 4
        Top = 29
        Width = 89
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 98
        Top = 26
        Width = 221
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMMarcas.C_TabelaDS
        StyleController = DMProjeto.esClientes
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 67
      Caption = 'Marcas'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Marcas'
  end
end

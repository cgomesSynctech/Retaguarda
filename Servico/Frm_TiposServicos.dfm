inherited FrmTiposServicos: TFrmTiposServicos
  Left = 223
  Top = 224
  Width = 510
  Height = 297
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 387
    Height = 220
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 186
    end
  end
  inherited pnDados: TTS_Panel
    Width = 387
    Height = 220
    inherited Grid: TTS_QDBGrid
      Width = 385
      Height = 218
      KeyField = 'TIPOSERVICO'
      DataSource = DMTiposServicos.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 329
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 385
      Height = 218
    end
    inherited sbDados: TTS_Panel
      Width = 385
      Height = 218
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = 8
        Top = 38
        Width = 92
        Height = 17
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfNome: TTS_DBEdit
        Left = 105
        Top = 37
        Width = 254
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTiposServicos.C_TabelaDS
        StyleController = DMProjeto.esClientes
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 385
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 502
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 167
      Caption = 'Tipos de Servi'#231'os'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 463
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Tipos de Servi'#231'os'
  end
end

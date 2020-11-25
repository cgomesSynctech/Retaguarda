inherited FrmStatusAtendimentos: TFrmStatusAtendimentos
  Left = 163
  Top = 170
  Height = 290
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 213
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 179
    end
  end
  inherited pnDados: TTS_Panel
    Height = 213
    inherited Grid: TTS_QDBGrid
      Height = 211
      KeyField = 'STATUSATENDIMENTO'
      DataSource = DMStatusAtendimentos.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 254
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 211
    end
    inherited sbDados: TTS_Panel
      Height = 211
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
        DataSource = DMStatusAtendimentos.C_TabelaDS
        StyleController = DMProjeto.esClientes
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 220
      Caption = 'Status do Atendimento'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Status do Atendimento'
  end
end

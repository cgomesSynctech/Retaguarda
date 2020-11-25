inherited FrmPrincipioAtivo: TFrmPrincipioAtivo
  Left = 210
  Top = 198
  Height = 309
  Caption = 'M'#243'dulo de Itens'
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
      DataSource = DMPRincipioAtivo.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridPRINCIPIOATIVO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRINCIPIOATIVO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Principio Ativo'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 237
    end
    inherited sbDados: TTS_Panel
      Height = 237
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 6
        Top = 52
        Width = 95
        Caption = 'Principio Ativo:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 104
        Top = 50
        Width = 293
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMPRincipioAtivo.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 160
      Caption = 'Principios Ativos'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Principios Ativos'
  end
  inherited Beep: TBTBeeper
    Left = 76
    Top = 154
  end
end

inherited FrmPaises: TFrmPaises
  Width = 484
  Height = 284
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 361
    Height = 207
    inherited btGravar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 173
    end
  end
  inherited pnDados: TTS_Panel
    Width = 361
    Height = 207
    inherited Grid: TTS_QDBGrid
      Width = 359
      Height = 205
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridPAIS: TdxDBGridMaskColumn
        Visible = False
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAIS'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 309
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 359
      Height = 205
    end
    inherited sbDados: TTS_Panel
      Width = 359
      Height = 205
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = 1
        Top = 26
        Width = 90
        Height = 17
        Caption = 'Nome do Pa'#237's:'
        FocusControl = TS_DBEdDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdDescricao: TTS_DBEdit
        Left = 96
        Top = 23
        Width = 242
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMPaises.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 476
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 145
      Caption = 'Nacionalidades'
      Effect3D.ShadowedColor = 9741530
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 23
    Top = 172
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 184
    Top = 147
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Nacionalidades'
    Left = 76
    Top = 169
  end
end

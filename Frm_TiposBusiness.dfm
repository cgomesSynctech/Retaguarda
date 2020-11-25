inherited FrmTiposBusiness: TFrmTiposBusiness
  Left = 170
  Width = 466
  Height = 282
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 343
    Height = 205
    inherited btGravar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 171
    end
  end
  inherited pnDados: TTS_Panel
    Width = 343
    Height = 205
    inherited Grid: TTS_QDBGrid
      Width = 341
      Height = 203
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridTIPOBUSINESS: TdxDBGridMaskColumn
        Visible = False
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOBUSINESS'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 294
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 341
      Height = 203
    end
    inherited sbDados: TTS_Panel
      Width = 341
      Height = 203
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = 5
        Top = 22
        Width = 65
        Height = 17
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 76
        Top = 21
        Width = 247
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTiposBusiness.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 458
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 171
      Caption = 'Tipos de Business'
      Effect3D.ShadowedColor = 9741530
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 137
    Top = 206
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 48
    Top = 152
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Tipos de Business'
    Left = 48
    Top = 224
  end
end

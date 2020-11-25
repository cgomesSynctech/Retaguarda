inherited FrmTiposEntrega: TFrmTiposEntrega
  Left = 313
  Top = 351
  Width = 447
  Height = 283
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 324
    Height = 206
    inherited btGravar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Width = 324
    Height = 206
    inherited Grid: TTS_QDBGrid
      Width = 322
      Height = 204
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridTIPOENTREGA: TdxDBGridMaskColumn
        Visible = False
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOENTREGA'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 275
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 322
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Width = 322
      Height = 204
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = 10
        Top = 48
        Width = 75
        Height = 17
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 89
        Top = 47
        Width = 208
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTiposEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 439
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 161
      Caption = 'Tipos de Entrega'
      Effect3D.ShadowedColor = 9741530
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 120
    Top = 156
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 48
    Top = 114
  end
  inherited ImgPadrao: TImageList
    Left = 120
    Top = 110
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Tipos de Entrega'
    Left = 47
    Top = 158
  end
end

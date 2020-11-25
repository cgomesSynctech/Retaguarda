inherited FrmIdiomas: TFrmIdiomas
  Left = 167
  Top = 138
  Width = 459
  Height = 281
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 336
    Height = 211
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 177
    end
  end
  inherited pnDados: TTS_Panel
    Width = 336
    Height = 211
    inherited Grid: TTS_QDBGrid
      Width = 334
      Height = 209
      Filter.Criteria = {00000000}
      object GridIDIOMA: TdxDBGridMaskColumn
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDIOMA'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descrição'
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 334
      Height = 209
    end
    inherited sbDados: TTS_Panel
      Width = 334
      Height = 209
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = 10
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Idioma:'
        FocusControl = TS_DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 79
        Top = 23
        Width = 228
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMIdiomas.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 451
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 78
      Caption = 'Idiomas'
      Effect3D.ShadowedColor = 9741530
    end
  end
  inherited DlgMsg: TDlgMsg
    Top = 148
  end
  inherited ppmPadrao: TTS_PopupMenu
    Top = 148
  end
  inherited ImgPadrao: TImageList
    Top = 149
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Idiomas'
    Top = 148
  end
end

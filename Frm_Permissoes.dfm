inherited FrmPermissoes: TFrmPermissoes
  Left = 250
  Top = 171
  Width = 518
  Height = 283
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 395
    Height = 213
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 179
    end
  end
  inherited pnDados: TTS_Panel
    Width = 395
    Height = 213
    inherited Grid: TTS_QDBGrid
      Width = 393
      Height = 211
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 393
      Height = 211
    end
    inherited sbDados: TTS_Panel
      Width = 393
      Height = 211
      Color = 14542583
      object TS_Label1: TTS_Label
        Left = 20
        Top = 27
        Width = 65
        Caption = 'Sigla:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 20
        Top = 56
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 92
        Top = 25
        Width = 84
        TabOrder = 0
        DataField = 'SIGLA'
        DataSource = DMPermissoes.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 92
        Top = 55
        Width = 276
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMPermissoes.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 393
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 510
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 108
      Caption = 'Permiss'#245'es'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Permiss'#245'es'
  end
end

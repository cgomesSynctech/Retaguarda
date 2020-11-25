inherited FrmOperadores: TFrmOperadores
  Left = 106
  Top = 116
  Width = 511
  Height = 283
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 388
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Width = 388
    Height = 206
    inherited Grid: TTS_QDBGrid
      Width = 386
      Height = 204
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 386
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Width = 386
      Height = 204
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 2
        Top = 19
        Width = 98
        Caption = 'Nome Operador:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 103
        Top = 17
        Width = 238
        TabOrder = 0
        DataField = 'NOME'
        DataSource = DMOperadores.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 503
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 110
      Caption = 'Operadores'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 468
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'TS_DBEdit1')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Operadores'
    Left = 49
    Top = 199
  end
end

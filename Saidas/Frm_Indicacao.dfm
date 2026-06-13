inherited FrmIndicacao: TFrmIndicacao
  Left = 374
  Top = 156
  Width = 469
  Height = 274
  Caption = 'Profissionais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 346
    Height = 204
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 170
    end
  end
  inherited pnDados: TTS_Panel
    Width = 346
    Height = 204
    inherited Grid: TTS_QDBGrid
      Width = 344
      Height = 202
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 344
      Height = 202
    end
    inherited sbDados: TTS_Panel
      Width = 344
      Height = 202
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = 29
        Top = 35
        Width = 65
        Caption = 'Nome : '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 29
        Top = 67
        Width = 65
        Caption = 'Profiss'#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 29
        Top = 99
        Width = 65
        Caption = 'E-mail :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 29
        Top = 131
        Width = 65
        Caption = 'Fone : '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 96
        Top = 32
        Width = 209
        TabOrder = 0
        DataField = 'NOME'
        DataSource = DMIndicacao.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 96
        Top = 64
        Width = 209
        TabOrder = 1
        DataField = 'PROFISSAO'
        DataSource = DMIndicacao.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit3: TTS_DBEdit
        Left = 96
        Top = 96
        Width = 209
        TabOrder = 2
        DataField = 'E-MAIL'
        DataSource = DMIndicacao.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit4: TTS_DBEdit
        Left = 96
        Top = 128
        Width = 209
        TabOrder = 3
        DataField = 'FONE'
        DataSource = DMIndicacao.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 344
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 461
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 248
      Caption = 'Cadastro de Profissionais '
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 422
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Cadastro de Profissionais '
    FirstEditField = TS_DBEdit1
  end
  inherited Beep: TBTBeeper
    Left = 368
    Top = 112
  end
  inherited FormStorage: TFormStorage
    Left = 360
    Top = 48
  end
end

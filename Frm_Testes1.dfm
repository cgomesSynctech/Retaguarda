inherited FrmTestes1: TFrmTestes1
  Left = 370
  Top = 203
  Width = 413
  Caption = 'Cadastro Teste'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 282
  end
  inherited pnDados: TTS_Panel
    Width = 282
    inherited Grid: TTS_QDBGrid
      Width = 280
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 280
    end
    inherited sbDados: TTS_Panel
      Width = 280
      Color = 14542583
      object TS_Label1: TTS_Label
        Left = 8
        Top = 15
        Width = 65
        Height = 17
        Caption = 'Nome:'
        FocusControl = TS_DBEdNome
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 8
        Top = 42
        Width = 65
        Height = 17
        Caption = 'Telefone:'
        FocusControl = TS_DBEdTelefone
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdNome: TTS_DBEdit
        Left = 77
        Top = 13
        Width = 173
        TabOrder = 0
        DataField = 'NOME'
        DataSource = DMTeste1.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdTelefone: TTS_DBEdit
        Left = 77
        Top = 39
        Width = 173
        TabOrder = 1
        DataField = 'TELEFONE'
        DataSource = DMTeste1.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 280
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 397
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 62
      Caption = 'Testes'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 366
    end
  end
end

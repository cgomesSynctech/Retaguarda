inherited FrmConsultas: TFrmConsultas
  Left = 114
  Top = 90
  Height = 335
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 258
    inherited btComando1: TTS_SpeedButton
      Caption = 'Testar SQL'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 224
    end
  end
  inherited pnDados: TTS_Panel
    Height = 258
    inherited Grid: TTS_QDBGrid
      Height = 256
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 256
    end
    inherited sbDados: TTS_Panel
      Height = 256
      Color = 14542583
      object TS_Label1: TTS_Label
        Left = 10
        Top = 16
        Width = 97
        Caption = 'Nome da Consulta:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 14
        Top = 43
        Width = 55
        Caption = 'Texto SQL:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 112
        Top = 15
        Width = 313
        TabOrder = 0
        DataField = 'TITULO'
        DataSource = DMConsultas.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object mSQL: TTS_DBMemo
        Left = 15
        Top = 56
        Width = 410
        TabOrder = 1
        DataField = 'QUERY'
        DataSource = DMConsultas.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 193
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 94
      Caption = 'Consultas'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Consultas'
  end
  object Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 259
    Top = 195
  end
  object Q_ConsultaDS: TDataSource
    DataSet = Q_Consulta
    Left = 323
    Top = 195
  end
end

inherited FrmCidadesBristol: TFrmCidadesBristol
  Left = 519
  Top = 207
  Height = 274
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 193
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 159
    end
  end
  inherited pnDados: TTS_Panel
    Height = 193
    inherited Grid: TTS_QDBGrid
      Height = 191
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 191
    end
    inherited sbDados: TTS_Panel
      Height = 191
      Color = 14542583
      object TS_Label1: TTS_Label
        Left = 11
        Top = 20
        Width = 71
        Height = 17
        Caption = '&Cidade:'
        FocusControl = DfDescricao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 11
        Top = 43
        Width = 71
        Height = 17
        Caption = 'UF:'
        FocusControl = DfDescricao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object DfDescricao: TTS_DBEdit
        Left = 86
        Top = 19
        Width = 302
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMCidadesBristol.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object DfUF: TTS_DBEdit
        Left = 86
        Top = 41
        Width = 33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'UF'
        DataSource = DMCidadesBristol.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 195
      Caption = 'Cadastro de Cidades'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Cadastro de Cidades'
    FirstEditField = DfDescricao
  end
end

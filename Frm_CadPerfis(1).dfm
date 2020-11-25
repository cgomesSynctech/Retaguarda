inherited FrmCadPerfis: TFrmCadPerfis
  Width = 467
  Height = 282
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 344
    Height = 205
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 171
    end
  end
  inherited pnDados: TTS_Panel
    Width = 344
    Height = 205
    inherited Grid: TTS_QDBGrid
      Width = 342
      Height = 203
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridPERFIL: TdxDBGridMaskColumn
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERFIL'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 269
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridINICIALIZACAO: TdxDBGridMaskColumn
        Visible = False
        Width = 433
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INICIALIZACAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 342
      Height = 203
    end
    inherited sbDados: TTS_Panel
      Width = 342
      Height = 203
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = 23
        Top = 29
        Width = 74
        Height = 17
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = -20
        Top = 55
        Width = 117
        Height = 17
        Caption = 'Aproveitar Perfil:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 99
        Top = 27
        Width = 216
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMCadPerfis.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfPerfil: TTS_DBLookupComboBox
        Left = 99
        Top = 53
        Width = 116
        TabOrder = 1
        DataField = 'AproveitarPerfil'
        DataSource = DMCadPerfis.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'PERFIL'
        ListSource = DMCadPerfis.C_PerfisDS
        LookupKeyValue = Null
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 459
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 54
      Caption = 'Perfis'
      Effect3D.ShadowedColor = 9741530
    end
    inherited btHelp: TTS_SpeedButton
      Left = 550
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 170
    Top = 153
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'dfDescricao')
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Perfis'
    OnEstado_Inicial = FormComponentEstado_Inicial
    Top = 159
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 258
    Top = 135
    inherited Ajuda1: TMenuItem
      HelpContext = 555
    end
  end
end

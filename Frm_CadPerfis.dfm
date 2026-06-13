inherited FrmCadPerfis: TFrmCadPerfis
  Width = 467
  Height = 274
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 344
    Height = 204
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 170
    end
  end
  inherited pnDados: TTS_Panel
    Width = 344
    Height = 204
    inherited Grid: TTS_QDBGrid
      Width = 342
      Height = 202
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
      Height = 202
    end
    inherited sbDados: TTS_Panel
      Width = 342
      Height = 202
      Color = 14542583
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
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 0
        Top = 72
        Width = 305
        Height = 17
        Caption = 'O novo Perfil ser'#225' criado com as mesmas configura'#231#245'es'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 76
        Top = 87
        Width = 173
        Height = 17
        Caption = 'utilizadas hoje, pelo Perfil Vendedor'
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
        Visible = False
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
    inherited dxF9Bar: TdxfProgressBar
      Width = 342
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 459
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 54
      Caption = 'Perfis'
      Effect3D.ShadowedColor = 11911142
    end
    inherited btHelp: TTS_SpeedButton
      Left = 550
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 122
    Top = 217
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'dfDescricao')
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Perfis'
    OnEstado_Inicial = FormComponentEstado_Inicial
    Left = 266
    Top = 223
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 226
    Top = 223
    inherited Ajuda1: TMenuItem
      HelpContext = 555
    end
  end
  inherited Beep: TBTBeeper
    Left = 8
    Top = 208
  end
  inherited FormStorage: TFormStorage
    Left = 80
    Top = 216
  end
end

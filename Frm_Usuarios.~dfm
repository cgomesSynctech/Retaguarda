inherited FrmUsuarios: TFrmUsuarios
  Left = 362
  Top = 115
  Width = 579
  Height = 457
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 448
    Height = 376
    inherited btPesquisar: TTS_SpeedButton [0]
    end
    inherited btGravar: TTS_SpeedButton [1]
    end
    inherited btComando1: TTS_SpeedButton
      Top = 168
      Height = 0
    end
    inherited btComando2: TTS_SpeedButton
      Top = 168
      Height = 0
    end
    inherited bv3: TTS_Bevel
      Top = 35
    end
    inherited bv1: TTS_Bevel
      Top = 109
      Height = 0
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 342
    end
    inherited pnInicioFim: TTS_Panel
      Top = 168
    end
  end
  inherited pnDados: TTS_Panel
    Width = 448
    Height = 376
    inherited Grid: TTS_QDBGrid
      Width = 446
      Height = 374
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'LOGINNAME'
      object GridUSUARIO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUARIO'
      end
      object GridPERFIL: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERFIL'
      end
      object GridLOGINNAME: TdxDBGridMaskColumn
        Caption = 'Usu'#225'rio'
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOGINNAME'
      end
      object GridLOGINPASS: TdxDBGridMaskColumn
        Caption = 'Senha'
        DisableCustomizing = True
        Visible = False
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOGINPASS'
      end
      object GridIDIOMA: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDIOMA'
      end
      object GridEMAIL: TdxDBGridMaskColumn
        Caption = 'E-mail'
        Width = 311
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object GridlkPerfil: TdxDBGridLookupColumn
        Caption = 'Perfil'
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkPerfil'
      end
      object GridlkIdioma: TdxDBGridLookupColumn
        Caption = 'Idioma'
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkIdioma'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 446
      Height = 374
    end
    inherited sbDados: TTS_Panel
      Width = 446
      Height = 374
      Color = 14542583
      object TS_Label5: TTS_Label
        Left = 23
        Top = 209
        Width = 108
        Height = 17
        Caption = 'Email:'
        FocusControl = DF_Email
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Bevel1: TTS_Bevel
        Left = 28
        Top = 266
        Width = 409
        Height = 103
      end
      object TS_Label1: TTS_Label
        Left = 23
        Top = 10
        Width = 108
        Height = 17
        Caption = 'Usu'#225'rio:'
        FocusControl = DF_Usuario
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label2: TTS_Label
        Left = 23
        Top = 38
        Width = 108
        Height = 17
        Caption = 'Senha:'
        FocusControl = DF_Senha
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label3: TTS_Label
        Left = 23
        Top = 66
        Width = 108
        Height = 17
        Cursor = crHandPoint
        Caption = 'Perfil:'
        FocusControl = DF_Perfil
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmCadPerfis'
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 24
        Top = 304
        Width = 94
        Height = 17
        Caption = 'Intervalo (min.):'
        FocusControl = DF_IntHorario
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label7: TTS_Label
        Left = 24
        Top = 333
        Width = 94
        Caption = 'Hor'#225'rio:'
        FocusControl = DF_HoraIni
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label8: TTS_Label
        Left = 202
        Top = 333
        Width = 28
        Alignment = taCenter
        Caption = #224
        FocusControl = DF_HoraFim
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label9: TTS_Label
        Left = 24
        Top = 275
        Width = 94
        Caption = 'Formato da Hora:'
        FocusControl = DF_FormatoHora
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = 32
        Top = 253
        Width = 134
        Height = 13
        Alignment = taLeftJustify
        AutoSize = True
        Caption = 'Informa'#231#245'es para a Agenda'
        Transparent = False
        WordWrap = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label11: TTS_Label
        Left = 1
        Top = 151
        Width = 130
        Height = 17
        Caption = 'Funcion'#225'rio Associado:'
        FocusControl = TS_DBLookupComboBox1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label12: TTS_Label
        Left = 13
        Top = 123
        Width = 118
        Height = 17
        Caption = 'Desconto M'#225'ximo:'
        FocusControl = dfDesconto
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label4: TTS_Label
        Left = 1
        Top = 95
        Width = 130
        Height = 17
        Caption = 'Tabela de Pre'#231'o Padr'#227'o:'
        FocusControl = dfDesconto
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label13: TTS_Label
        Left = 1
        Top = 179
        Width = 130
        Height = 15
        Caption = 'Opera'#231#227'o R'#225'pida Padr'#227'o:'
        FocusControl = dfDesconto
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object TS_Label14: TTS_Label
        Left = 23
        Top = 233
        Width = 108
        Height = 17
        Caption = 'Empresa:'
        Color = 14542583
        FocusControl = DF_Email
        ParentColor = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object DF_Email: TTS_DBEdit
        Left = 133
        Top = 205
        Width = 242
        TabOrder = 7
        DataField = 'EMAIL'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 21
      end
      object DF_Usuario: TTS_DBEdit
        Left = 133
        Top = 8
        Width = 131
        TabOrder = 0
        CharCase = ecUpperCase
        DataField = 'LOGINNAME'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 21
      end
      object DF_Senha: TTS_DBEdit
        Left = 133
        Top = 36
        Width = 131
        TabOrder = 1
        CharCase = ecUpperCase
        DataField = 'LOGINPASS'
        DataSource = DMUsuarios.C_TabelaDS
        PasswordChar = '*'
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 21
      end
      object DF_Perfil: TTS_DBLookupComboBox
        Left = 133
        Top = 64
        Width = 131
        TabOrder = 2
        DataField = 'lkPerfil'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 21
      end
      object cmbTabelaPadrao: TTS_DBLookupComboBox
        Left = 133
        Top = 92
        Width = 131
        TabOrder = 3
        DataField = 'lkTabelaPadrao'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 21
      end
      object DF_IntHorario: TTS_DBMaskEdit
        Left = 123
        Top = 300
        Width = 41
        TabOrder = 9
        CharCase = ecUpperCase
        DataField = 'INTERVALO_MINUTOS'
        DataSource = DMUsuarios.C_TabelaDS
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esGeral
        OnChange = DF_FormatoHoraChange
        Height = 21
        StoredValues = 4
      end
      object DF_FormatoHora: TTS_DBImageEdit
        Left = 123
        Top = 272
        Width = 121
        TabOrder = 8
        DataField = 'FORMATO_HORA'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        OnChange = DF_FormatoHoraChange
        PopupBorder = pbSingle
        DefaultImages = False
        Descriptions.Strings = (
          'hh:mm AM/PM'
          'hh:mm (24h)')
        ImageIndexes.Strings = (
          '-1'
          '-1')
        Values.Strings = (
          'US'
          'BR')
        Height = 21
      end
      object DF_HoraIni: TTS_DBImageEdit
        Left = 123
        Top = 329
        Width = 78
        TabOrder = 10
        DataField = 'HORA_INI'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 21
      end
      object DF_HoraFim: TTS_DBImageEdit
        Left = 231
        Top = 329
        Width = 78
        TabOrder = 11
        DataField = 'HORA_FIM'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 21
      end
      object DF_Foto: TdxGraphicEdit
        Left = 286
        Top = 7
        Width = 129
        PopupMenu = ppmFoto
        TabOrder = 12
        TabStop = False
        Caption = 'Foto'
        StyleController = DMProjeto.esGeral
        Center = False
        GraphicTransparency = gtTransparent
        Stretch = True
        ToolbarLayout.Buttons = [ptbCopy, ptbDelete, ptbLoad, ptbSave]
        Height = 97
      end
      object TS_DBLookupComboBox1: TTS_DBLookupComboBox
        Left = 133
        Top = 148
        Width = 242
        TabOrder = 5
        DataField = 'lkVendedor'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 21
      end
      object dfDesconto: TTS_DBEdit
        Left = 133
        Top = 120
        Width = 74
        TabOrder = 4
        CharCase = ecUpperCase
        DataField = 'DESCONTOMAXIMO'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 21
      end
      object cmbOperacaoPR: TTS_DBLookupComboBox
        Left = 133
        Top = 176
        Width = 242
        TabOrder = 6
        DataField = 'lkTipoMovPR'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 21
      end
      object TS_DBLookupComboBox2: TTS_DBLookupComboBox
        Left = 133
        Top = 230
        Width = 242
        TabOrder = 13
        DataField = 'lkEmpresa'
        DataSource = DMUsuarios.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 21
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 446
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 563
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 83
      Caption = 'Usu'#225'rios'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 501
    Top = 188
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 536
    Top = 188
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 501
    Top = 222
  end
  inherited ImgPadrao: TImageList
    Left = 465
    Top = 222
  end
  inherited FormComponent: TFormComponent
    AfterFormShow = FormComponentAfterFormShow
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'DF_Usuario'
      'DF_Senha'
      'DF_Perfil'
      'DF_Idioma'
      'DF_IntHorario'
      'DF_FormatoHora'
      'DF_HoraIni'
      'DF_HoraFim')
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Usu'#225'rios'
    FirstEditField = DF_Usuario
    Left = 465
    Top = 188
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 536
    Top = 222
    inherited Ajuda1: TMenuItem
      HelpContext = 436
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 465
    Top = 255
  end
  object ppmFoto: TTS_PopupMenu
    Left = 304
    Top = 72
    object CarregarFoto1: TMenuItem
      Caption = 'Carregar Foto'
      OnClick = CarregarFoto1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimparFoto1: TMenuItem
      Caption = 'Limpar Foto'
      OnClick = LimparFoto1Click
    end
  end
  object pdFoto: TOpenPictureDialog
    DefaultExt = 'bmp'
    Title = 'Escolher Foto'
    Left = 353
    Top = 72
  end
end

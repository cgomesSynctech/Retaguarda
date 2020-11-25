inherited FrmLocaisEntrega: TFrmLocaisEntrega
  Left = 56
  Top = 120
  Width = 650
  Height = 271
  Caption = 'Cadastros Gerais'
  Constraints.MinHeight = 271
  Constraints.MinWidth = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 527
    Height = 201
    inherited btComando1: TTS_SpeedButton
      Caption = 'Escolher'
    end
    inherited btComando2: TTS_SpeedButton
      Height = 0
    end
    inherited bv3: TTS_Bevel
      Top = 35
    end
    inherited bv1: TTS_Bevel
      Top = 168
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 167
    end
    inherited pnInicioFim: TTS_Panel
      Top = 205
    end
  end
  inherited pnDados: TTS_Panel
    Width = 527
    Height = 201
    inherited Grid: TTS_QDBGrid
      Width = 525
      Height = 199
      KeyField = 'ENTREGA'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridENDERECOENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 192
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECOENTREGA'
      end
      object GridCIDADEENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 156
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADEENTREGA'
      end
      object GridlkUF: TdxDBGridLookupColumn
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkUF'
      end
      object GridlkPais: TdxDBGridLookupColumn
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkPais'
      end
      object GridCEPENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEPENTREGA'
      end
      object GridFONEENTREGA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONEENTREGA'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 525
      Height = 199
    end
    inherited sbDados: TTS_Panel
      Width = 525
      Height = 199
      Color = 14542583
      object TS_Label1: TTS_Label
        Left = 7
        Top = 47
        Width = 65
        Caption = 'Endere'#231'o:'
        FocusControl = dfEnd
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 7
        Top = 72
        Width = 65
        Caption = 'Cidade:'
        FocusControl = dfCid
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 241
        Top = 71
        Width = 46
        Cursor = crHandPoint
        Caption = 'Estado:'
        FocusControl = cmbUF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmUFS'
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 381
        Top = 71
        Width = 41
        Cursor = crHandPoint
        Caption = 'Pa'#237's:'
        FocusControl = cmbPais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Visible = False
        FormatoTabela = False
        LinkTo = 'FrmUFS'
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 7
        Top = 97
        Width = 65
        Caption = 'CEP:'
        FocusControl = dfCEP
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 222
        Top = 97
        Width = 65
        Caption = 'Fone:'
        FocusControl = dfFone
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 7
        Top = 22
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDesc
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfEnd: TTS_DBEdit
        Left = 74
        Top = 44
        Width = 442
        TabOrder = 1
        DataField = 'ENDERECOENTREGA'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfCid: TTS_DBEdit
        Left = 74
        Top = 69
        Width = 162
        TabOrder = 2
        DataField = 'CIDADEENTREGA'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfCEP: TTS_DBEdit
        Left = 74
        Top = 94
        Width = 83
        TabOrder = 5
        DataField = 'CEPENTREGA'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object cmbUF: TTS_DBLookupComboBox
        Left = 292
        Top = 69
        Width = 89
        TabOrder = 3
        DataField = 'lkUF'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object cmbPais: TTS_DBLookupComboBox
        Left = 427
        Top = 69
        Width = 89
        TabOrder = 4
        Visible = False
        DataField = 'lkPais'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object dfFone: TTS_DBEdit
        Left = 292
        Top = 94
        Width = 124
        TabOrder = 6
        DataField = 'FONEENTREGA'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfDesc: TTS_DBEdit
        Left = 74
        Top = 19
        Width = 162
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMLocaisEntrega.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 525
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 642
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 169
      Caption = 'Locais de Entrega'
      Effect3D.ShadowedColor = 11911142
    end
    inherited btHelp: TTS_SpeedButton
      Left = 612
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 246
    Top = 180
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 361
    Top = 180
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 390
    Top = 180
  end
  inherited ImgPadrao: TImageList
    Left = 304
    Top = 180
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'dfDesc'
      'dfEnd')
    AbrirFormatoTabela = True
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Locais de Entrega'
    FirstEditField = dfDesc
    Left = 185
    Top = 180
  end
  inherited Beep: TBTBeeper
    Left = 96
    Top = 98
  end
end

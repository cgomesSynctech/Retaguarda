inherited FrmTiposAtividade: TFrmTiposAtividade
  Left = 133
  Top = 194
  Width = 496
  Height = 282
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 373
    Height = 205
    inherited btGravar: TTS_SpeedButton
      ActiveControlNil = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 171
    end
  end
  inherited pnDados: TTS_Panel
    Width = 373
    Height = 205
    inherited Grid: TTS_QDBGrid
      Width = 371
      Height = 203
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridTIPOATIVIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOATIVIDADE'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 325
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 371
      Height = 203
    end
    inherited sbDados: TTS_Panel
      Width = 371
      Height = 203
      Color = 14542583
      object Label1: TLabel
        Left = 17
        Top = 32
        Width = 87
        Height = 13
        Caption = 'Tipo da Atividade:'
        FocusControl = TS_DBEdit1
      end
      object TS_Label1: TTS_Label
        Left = 17
        Top = 51
        Width = 87
        Caption = 'Tipo:'
        FocusControl = dfTipoFav
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 105
        Top = 29
        Width = 249
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTiposAtividade.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfTipoFav: TTS_DBLookupComboBox
        Left = 105
        Top = 50
        Width = 121
        TabOrder = 1
        DataField = 'DescTipoFav'
        DataSource = DMTiposAtividade.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 371
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 488
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 187
      Caption = 'Tipos de Atividades'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 74
    Top = 149
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 167
    Top = 149
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 213
    Top = 149
  end
  inherited ImgPadrao: TImageList
    Left = 120
    Top = 149
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Tipos de Atividades'
    OnInclusao = FormComponentInclusao
    Left = 28
    Top = 149
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 305
    Top = 149
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 259
    Top = 149
  end
end

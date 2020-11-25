inherited FrmUnidades: TFrmUnidades
  Left = 188
  Top = 156
  Width = 469
  Height = 282
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 346
    Height = 205
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 171
    end
  end
  inherited pnDados: TTS_Panel
    Width = 346
    Height = 205
    inherited Grid: TTS_QDBGrid
      Width = 344
      Height = 203
      KeyField = 'UNIDADE'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridUNIDADE: TdxDBGridMaskColumn
        Caption = 'Sigla'
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o da Unidade'
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridINTEIRA: TdxDBGridMaskColumn
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTEIRA'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 344
      Height = 203
    end
    inherited sbDados: TTS_Panel
      Width = 344
      Height = 203
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 13
        Top = 53
        Width = 65
        Height = 17
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 14
        Top = 32
        Width = 65
        Height = 17
        Caption = 'Sigla:'
        FocusControl = TS_DBEdSigla
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdDescricao: TTS_DBEdit
        Left = 80
        Top = 52
        Width = 239
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMUnidades.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdSigla: TTS_DBEdit
        Left = 80
        Top = 30
        Width = 68
        TabOrder = 0
        DataField = 'UNIDADE'
        DataSource = DMUnidades.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBCheckBox1: TTS_DBCheckBox
        Left = 77
        Top = 76
        Width = 237
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        Caption = 'Unidade inteira n'#227'o podendo ser fracionada'
        DataField = 'INTEIRA'
        DataSource = DMUnidades.C_TabelaDS
        StyleController = DMProjeto.esItens
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        DisableEdit = False
        Height = 20
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 461
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 173
      Caption = 'Unidades de Itens'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 121
    Top = 174
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 49
    Top = 171
  end
  inherited ImgPadrao: TImageList
    Left = 118
    Top = 225
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'TS_DBEdSigla'
      'TS_DBEdDescricao')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Unidades de Itens'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    Left = 49
    Top = 218
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 57
    end
  end
end

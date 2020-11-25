inherited FrmTipoTributacao: TFrmTipoTributacao
  Left = 305
  Top = 141
  Height = 283
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 213
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 179
    end
  end
  inherited pnDados: TTS_Panel
    Height = 213
    inherited Grid: TTS_QDBGrid
      Height = 211
      DataSource = DMTipoTributacao.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridSITUACAOECF: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Tipo Tributa'#231#227'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridDECRETO: TdxDBGridMaskColumn
        Caption = 'Decreto'
        HeaderAlignment = taCenter
        Width = 282
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DECRETO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 211
    end
    inherited sbDados: TTS_Panel
      Height = 211
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 40
        Top = 24
        Width = 79
        Caption = 'Tipo Tributa'#231#227'o:'
        FocusControl = edTipoTrib
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 54
        Top = 51
        Width = 65
        Caption = 'Decreto:'
        FocusControl = memoDecreto
        FormatoTabela = False
        LinkToResult = 0
      end
      object edTipoTrib: TTS_DBEdit
        Left = 122
        Top = 22
        Width = 196
        Color = 14019327
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTipoTributacao.C_TabelaDS
        ReadOnly = True
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
        StoredValues = 64
      end
      object memoDecreto: TTS_DBMemo
        Left = 122
        Top = 48
        Width = 281
        TabOrder = 1
        DataField = 'DECRETO'
        DataSource = DMTipoTributacao.C_TabelaDS
        MaxLength = 255
        StyleController = DMProjeto.esItens
        Height = 65
        StoredValues = 2
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 160
      Caption = 'Tipos Tributa'#231#227'o'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Tipos Tributa'#231#227'o'
    Incluir = False
  end
  inherited Beep: TBTBeeper
    Left = 272
    Top = 240
  end
  inherited FormStorage: TFormStorage
    Left = 200
    Top = 208
  end
end

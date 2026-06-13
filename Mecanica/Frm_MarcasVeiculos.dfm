inherited FrmMarcasVeiculos: TFrmMarcasVeiculos
  Left = 418
  Top = 97
  Width = 395
  Height = 245
  Caption = 'Agenda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 272
    Height = 175
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 141
    end
    inherited btIR_Para: TTS_SpeedButton
      Top = 142
      Visible = False
    end
    inherited pnAvancaRecua: TTS_Panel
      Top = 109
    end
  end
  inherited pnDados: TTS_Panel
    Width = 272
    Height = 175
    inherited Grid: TTS_QDBGrid
      Width = 270
      Height = 173
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 270
      Height = 173
    end
    inherited sbDados: TTS_Panel
      Width = 270
      Height = 173
      Color = 14936298
      object TS_Label1: TTS_Label
        Left = 12
        Top = 42
        Width = 49
        Caption = 'ID :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 16
        Top = 74
        Width = 49
        Caption = 'Marca :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 73
        Top = 41
        Width = 73
        Enabled = False
        TabOrder = 0
        DataField = 'MARCA'
        DataSource = DMMarcasVeiculos.C_TabelaDS
        StyleController = DMProjeto.esAgenda
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 72
        Top = 72
        Width = 161
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMMarcasVeiculos.C_TabelaDS
        StyleController = DMProjeto.esAgenda
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 270
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 387
    Gradient.ColorStart = 11122108
    inherited lbCaption: TdxfLabel
      Width = 182
      Caption = 'Marcas de Ve'#237'culos'
      Effect3D.ShadowedColor = 11122108
    end
    inherited btHelp: TTS_SpeedButton
      Left = 348
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msAgenda
    BarEndColor = 11122108
    CaptionShadow = 11122108
    FormColor = 14936298
    Modulo = 'Agenda'
    Caption = 'Marcas de Ve'#237'culos'
  end
  inherited Beep: TBTBeeper
    Left = 224
    Top = 200
  end
  inherited FormStorage: TFormStorage
    Left = 112
    Top = 200
  end
end

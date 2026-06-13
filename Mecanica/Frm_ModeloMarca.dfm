inherited FrmModeloMarca: TFrmModeloMarca
  Left = 449
  Top = 159
  Width = 375
  Height = 250
  Caption = 'Agenda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 252
    Height = 180
    inherited btComando1: TTS_SpeedButton
      Top = 146
    end
    inherited btComando2: TTS_SpeedButton
      Top = 179
    end
    inherited bv3: TTS_Bevel
      Top = 142
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 146
    end
    inherited btIR_Para: TTS_SpeedButton
      Top = 212
      Visible = False
    end
    inherited pnAvancaRecua: TTS_Panel
      Top = 109
    end
  end
  inherited pnDados: TTS_Panel
    Width = 252
    Height = 180
    inherited Grid: TTS_QDBGrid
      Width = 250
      Height = 178
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 250
      Height = 178
    end
    inherited sbDados: TTS_Panel
      Width = 250
      Height = 178
      Color = 14936298
      object TS_Label1: TTS_Label
        Left = 3
        Top = 40
        Width = 65
        Caption = 'ID :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 4
        Top = 69
        Width = 65
        Caption = 'Marca :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 3
        Top = 98
        Width = 65
        Caption = 'Modelo :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 75
        Top = 39
        Width = 49
        Enabled = False
        TabOrder = 2
        DataField = 'ID'
        DataSource = DMModeloMarca.C_TabelaDS
        StyleController = DMProjeto.esAgenda
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 75
        Top = 96
        Width = 153
        TabOrder = 1
        DataField = 'MODELO'
        DataSource = DMModeloMarca.C_TabelaDS
        StyleController = DMProjeto.esAgenda
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBLookupComboBox4: TTS_DBLookupComboBox
        Left = 75
        Top = 67
        Width = 153
        TabOrder = 0
        DataField = 'lkMarca'
        DataSource = DMModeloMarca.C_TabelaDS
        StyleController = DMProjeto.esAgenda
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 250
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 367
    Gradient.ColorStart = 11122108
    inherited lbCaption: TdxfLabel
      Width = 172
      Caption = 'Modelos Ve'#237'culos '
      Effect3D.ShadowedColor = 11122108
    end
    inherited btHelp: TTS_SpeedButton
      Left = 328
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msAgenda
    BarEndColor = 11122108
    CaptionShadow = 11122108
    FormColor = 14936298
    Modulo = 'Agenda'
    Caption = 'Modelos Ve'#237'culos '
  end
  inherited Beep: TBTBeeper
    Left = 128
    Top = 328
  end
  inherited FormStorage: TFormStorage
    Left = 112
    Top = 256
  end
end

inherited FrmMarcaModelo: TFrmMarcaModelo
  Left = 367
  Top = 188
  Height = 276
  Caption = 'FrmMarcaModelo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Height = 206
    inherited Grid: TTS_QDBGrid
      Height = 204
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Height = 204
      object lbDesc: TTS_Label
        Left = 31
        Top = 45
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDesc
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDesc: TTS_DBEdit
        Left = 99
        Top = 42
        Width = 301
        TabOrder = 0
        DataField = 'MODELO'
        DataSource = DMMarcaModelo.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    inherited lbCaption: TdxfLabel
      Width = 284
      Caption = 'Modelos e marcas de veiculos'
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 215
    Top = 124
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 354
    Top = 95
  end
  inherited FormComponent: TFormComponent
    Caption = 'Modelos e marcas de veiculos'
    Left = 218
    Top = 68
  end
end

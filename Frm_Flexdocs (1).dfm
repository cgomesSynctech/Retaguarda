inherited FrmFlexdocs: TFrmFlexdocs
  Left = 446
  Top = 197
  Width = 511
  Height = 445
  Caption = 'Company'
  Visible = True
  WindowMenu = UltimoGravado1
  OnShow = btPesquisarClick
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 388
    Height = 375
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 341
    end
  end
  inherited pnDados: TTS_Panel
    Width = 388
    Height = 375
    inherited Grid: TTS_QDBGrid
      Width = 386
      Height = 373
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 386
      Height = 373
    end
    inherited sbDados: TTS_Panel
      Width = 386
      Height = 373
      Color = 14608375
      object lblCSC: TTS_Label
        Left = 40
        Top = 7
        Width = 33
        Caption = 'CSC:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lblFlexDocs: TTS_Label
        Left = 16
        Top = 29
        Width = 57
        Caption = 'Flex Docs:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 24
        Top = 99
        Width = 49
        Caption = 'IDTokem :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_dbCSC: TTS_DBMaskEdit
        Left = 78
        Top = 5
        Width = 260
        TabOrder = 0
        DataField = 'CSC'
        DataSource = DMFlexdocs.C_TabelaDS
        IgnoreMaskBlank = False
        MaxLength = 100
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 6
      end
      object TTs_DBChaveFlexDocs: TTS_DBMemo
        Left = 78
        Top = 26
        Width = 261
        TabOrder = 1
        DataField = 'FLEXDOCS'
        DataSource = DMFlexdocs.C_TabelaDS
        MaxLength = 255
        StyleController = DMProjeto.esGeral
        ScrollBars = ssBoth
        Height = 68
        StoredValues = 2
      end
      object TS_DBMaskEdit1: TTS_DBMaskEdit
        Left = 78
        Top = 96
        Width = 83
        TabOrder = 2
        DataField = 'IDTOKEN'
        DataSource = DMFlexdocs.C_TabelaDS
        IgnoreMaskBlank = False
        MaxLength = 100
        StyleController = DMProjeto.esGeral
        Height = 19
        StoredValues = 6
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 386
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 503
    Gradient.ColorStart = 11388903
    inherited lbCaption: TdxfLabel
      Width = 148
      Caption = 'Dados Flexdocs'
      Effect3D.ShadowedColor = 11388903
    end
    inherited btHelp: TTS_SpeedButton
      Left = 464
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 210
    Top = 207
  end
  inherited FormComponent: TFormComponent
    AfterFormShow = FormComponentAfterFormShow
    ModuloStyle = DMProjeto.msCompany
    RefreshList.Strings = (
      'TS_dbCSC;'
      'TTs_DBChaveFlexDocs;'
      'TS_DBMaskEdit1;')
    BarEndColor = 11388903
    CaptionShadow = 11388903
    FormColor = 14608375
    Modulo = 'Company'
    Caption = 'Dados Flexdocs'
    Left = 58
    Top = 180
  end
  inherited Beep: TBTBeeper
    Left = 352
    Top = 152
  end
  inherited FormStorage: TFormStorage
    Left = 272
    Top = 152
  end
end

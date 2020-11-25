inherited DlgCamposCustomizaveis: TDlgCamposCustomizaveis
  Left = 39
  Top = 187
  Width = 521
  Height = 312
  HelpContext = 0
  Caption = 'M'#243'dulo de Itens'
  FormStyle = fsStayOnTop
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 395
    Height = 242
    Color = 14019327
    object lblCampo1: TTS_Label
      Left = 2
      Top = 8
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo2: TTS_Label
      Left = 2
      Top = 30
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo3: TTS_Label
      Left = 2
      Top = 53
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo4: TTS_Label
      Left = 2
      Top = 75
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo5: TTS_Label
      Left = 3
      Top = 97
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo6: TTS_Label
      Left = 2
      Top = 120
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo7: TTS_Label
      Left = 2
      Top = 143
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo8: TTS_Label
      Left = 2
      Top = 165
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo9: TTS_Label
      Left = 2
      Top = 188
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblCampo10: TTS_Label
      Left = 2
      Top = 210
      Width = 125
      Caption = 'lblCampo1'
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object dfCampo1: TTS_DBEdit
      Left = 134
      Top = 6
      Width = 251
      TabOrder = 0
      Visible = False
      DataField = 'CAMPO01'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo2: TTS_DBEdit
      Left = 134
      Top = 28
      Width = 251
      TabOrder = 1
      Visible = False
      DataField = 'CAMPO02'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo3: TTS_DBEdit
      Left = 134
      Top = 50
      Width = 251
      TabOrder = 2
      Visible = False
      DataField = 'CAMPO03'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo4: TTS_DBEdit
      Left = 134
      Top = 73
      Width = 251
      TabOrder = 3
      Visible = False
      DataField = 'CAMPO04'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo5: TTS_DBEdit
      Left = 134
      Top = 95
      Width = 251
      TabOrder = 4
      Visible = False
      DataField = 'CAMPO05'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo6: TTS_DBEdit
      Left = 134
      Top = 118
      Width = 251
      TabOrder = 5
      Visible = False
      DataField = 'CAMPO06'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo7: TTS_DBEdit
      Left = 134
      Top = 141
      Width = 251
      TabOrder = 6
      Visible = False
      DataField = 'CAMPO07'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo8: TTS_DBEdit
      Left = 134
      Top = 163
      Width = 251
      TabOrder = 7
      Visible = False
      DataField = 'CAMPO08'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo9: TTS_DBEdit
      Left = 134
      Top = 186
      Width = 251
      TabOrder = 8
      Visible = False
      DataField = 'CAMPO09'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object dfCampo10: TTS_DBEdit
      Left = 134
      Top = 209
      Width = 251
      TabOrder = 9
      Visible = False
      DataField = 'CAMPO10'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cbCampo1: TTS_DBCheckBox
      Left = 134
      Top = 6
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO01'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo2: TTS_DBCheckBox
      Left = 134
      Top = 30
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO02'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo3: TTS_DBCheckBox
      Left = 134
      Top = 51
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO03'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo4: TTS_DBCheckBox
      Left = 135
      Top = 73
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO04'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo5: TTS_DBCheckBox
      Left = 134
      Top = 96
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO05'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo6: TTS_DBCheckBox
      Left = 134
      Top = 118
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO06'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo7: TTS_DBCheckBox
      Left = 134
      Top = 141
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO07'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo8: TTS_DBCheckBox
      Left = 134
      Top = 163
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO08'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo9: TTS_DBCheckBox
      Left = 134
      Top = 186
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO09'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cbCampo10: TTS_DBCheckBox
      Left = 134
      Top = 209
      Width = 251
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Caption = 'cbCampo1'
      DataField = 'CAMPO10'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      DisableEdit = False
      Height = 17
    end
    object cmbCampo1: TTS_DBComboBox
      Left = 134
      Top = 6
      Width = 251
      TabOrder = 20
      DataField = 'CAMPO01'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo2: TTS_DBComboBox
      Left = 134
      Top = 28
      Width = 251
      TabOrder = 21
      DataField = 'CAMPO02'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo3: TTS_DBComboBox
      Left = 134
      Top = 50
      Width = 252
      TabOrder = 22
      DataField = 'CAMPO03'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo4: TTS_DBComboBox
      Left = 134
      Top = 73
      Width = 251
      TabOrder = 23
      DataField = 'CAMPO04'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo5: TTS_DBComboBox
      Left = 134
      Top = 95
      Width = 251
      TabOrder = 24
      DataField = 'CAMPO05'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo6: TTS_DBComboBox
      Left = 134
      Top = 118
      Width = 251
      TabOrder = 25
      DataField = 'CAMPO06'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo7: TTS_DBComboBox
      Left = 134
      Top = 141
      Width = 251
      TabOrder = 26
      DataField = 'CAMPO07'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo8: TTS_DBComboBox
      Left = 134
      Top = 163
      Width = 251
      TabOrder = 27
      DataField = 'CAMPO08'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo9: TTS_DBComboBox
      Left = 134
      Top = 186
      Width = 251
      TabOrder = 28
      DataField = 'CAMPO09'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
    object cmbCampo10: TTS_DBComboBox
      Left = 134
      Top = 209
      Width = 251
      TabOrder = 29
      DataField = 'CAMPO10'
      DataSource = DMItens.C_TabelaDS
      StyleController = DMProjeto.esItens
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 395
    Height = 242
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 208
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Definir Campos'
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777000077777777777777777777000077777771171177777777000078FF
        FFFFF1FFFFFFFFF70000780000000100000000F70000780FFFFFF1FFFFFFF0F7
        0000780FFFFFF1FFFFFFF0F70000780FCCCCF1FCCCCFF0F70000780FCFCCF1FC
        CFCCF0F70000780FCCCCF1FCCFCCF0F70000780FFFCCF1FCCFCCF0F70000780F
        CCCFF1FCCCCFF0F70000780FFFFFF1FCCFFFF0F70000780FFFFFF1FCCFFFF0F7
        0000780FFFFFF1FFFFFFF0F70000780000000100000000F70000788888888188
        8888888700007777777117117777777700007777777777777777777700007777
        77777777777777770000}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 513
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 220
      Caption = 'Campos Customizav'#233'is'
      Effect3D.ShadowedColor = 9027548
    end
    inherited lbUpperHint: TTS_Label
      Left = 505
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 54
    Top = 233
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 64
    Top = 126
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Campos Customizav'#233'is'
    Left = 29
    Top = 181
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 587
    end
  end
end

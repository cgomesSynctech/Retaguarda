inherited FrmEmbalagem3: TFrmEmbalagem3
  Left = 407
  Top = 142
  Width = 531
  Height = 450
  Anchors = []
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 408
    Top = 28
    Height = 395
    inherited bv2: TTS_Bevel
      Visible = False
    end
    inherited bv3: TTS_Bevel
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 361
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
    inherited pnAvancaRecua: TTS_Panel
      inherited btPrevReg: TTS_SpeedButton
        Visible = False
      end
      inherited btProxReg: TTS_SpeedButton
        Visible = False
      end
      inherited btPrimeiroReg: TTS_SpeedButton
        Visible = False
      end
      inherited btUltimoReg: TTS_SpeedButton
        Visible = False
      end
    end
  end
  inherited pnDados: TTS_Panel
    Top = 28
    Width = 408
    Height = 395
    Anchors = []
    inherited Grid: TTS_QDBGrid
      Width = 406
      Height = 393
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 406
      Height = 393
    end
    inherited sbDados: TTS_Panel
      Width = 406
      Height = 393
      Anchors = []
      Color = 15456728
      object Label1: TLabel
        Left = 4
        Top = 10
        Width = 37
        Height = 13
        Caption = 'Venda :'
      end
      object Label2: TLabel
        Left = 4
        Top = 48
        Width = 30
        Height = 13
        Caption = 'Data :'
      end
      object Label3: TLabel
        Left = 115
        Top = 49
        Width = 34
        Height = 13
        Caption = 'Nome :'
      end
      object Label4: TLabel
        Left = 186
        Top = 11
        Width = 48
        Height = 13
        Caption = 'Qtd Emb :'
      end
      object dbVenda: TTS_DBEdit
        Left = 40
        Top = 8
        Width = 85
        TabOrder = 0
        OnKeyPress = dbVendaKeyPress
        DataField = 'NUMERO'
        DataSource = DMEmbalagem3.C_TabelaDS
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 40
        Top = 48
        Width = 65
        Color = cl3DLight
        TabOrder = 1
        DataField = 'DATA'
        DataSource = DMEmbalagem3.C_TabelaDS
        ReadOnly = True
        DistinctEditOn = False
        Height = 19
        StoredValues = 64
      end
      object TS_DBEdit3: TTS_DBEdit
        Left = 152
        Top = 48
        Width = 249
        Color = cl3DLight
        TabOrder = 2
        DataField = 'RAZAO'
        DataSource = DMEmbalagem3.C_TabelaDS
        ReadOnly = True
        DistinctEditOn = False
        Height = 19
        StoredValues = 64
      end
      object TS_DBEdit4: TTS_DBEdit
        Left = 272
        Top = 96
        Width = 121
        TabOrder = 3
        Visible = False
        DataField = 'SAIDA'
        DataSource = DMEmbalagem3.C_TabelaDS
        ReadOnly = True
        DistinctEditOn = False
        Height = 19
        StoredValues = 64
      end
      object TS_DBEdit5: TTS_DBEdit
        Left = 240
        Top = 9
        Width = 93
        TabOrder = 4
        OnKeyPress = TS_DBEdit5KeyPress
        DataField = 'EMBALAGENS'
        DataSource = DMEmbalagem3.C_TabelaDS
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 406
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 523
    Height = 28
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 238
      Caption = 'Separa'#231#227'o / Embalagem '
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 484
      Top = 0
      Visible = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 143
    Top = 12
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 306
    Top = 23
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 210
    Top = 83
  end
  inherited ImgPadrao: TImageList
    Left = 178
    Top = 13
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Separa'#231#227'o / Embalagem '
    Apagar = False
    Left = 98
    Top = 20
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 339
    Top = 20
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 107
    Top = 85
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 266
    Top = 20
  end
  object ppEmbalagem: TppReport
    AutoStop = False
    DataPipeline = ppDBEtiquetas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Screen'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 29000
    PrinterSetup.mmPaperWidth = 110000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Printer'
    Left = 247
    Top = 79
    Version = '6.02'
    mmColumnWidth = 116000
    DataPipelineName = 'ppDBEtiquetas'
    object ppDetailBand21: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 28000
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Nome : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 2910
        mmTop = 1323
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'RAZAO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10848
        mmLeft = 14023
        mmTop = 1058
        mmWidth = 70908
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CIDADE'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4233
        mmLeft = 6350
        mmTop = 12171
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UF'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 4233
        mmLeft = 38629
        mmTop = 12171
        mmWidth = 7673
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Volumes '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 64029
        mmTop = 11906
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SEQUENCIA'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10848
        mmLeft = 60854
        mmTop = 17463
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = ' /'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8731
        mmLeft = 70115
        mmTop = 18256
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'TOTEMBALAGEM'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 10848
        mmLeft = 74348
        mmTop = 17727
        mmWidth = 10319
        BandType = 4
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 6615
        mmTop = 23019
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NUMERO'
        DataPipeline = ppDBEtiquetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBEtiquetas'
        mmHeight = 6085
        mmLeft = 19844
        mmTop = 16404
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Pedido :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 7144
        mmTop = 16933
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 36777
        mmTop = 12435
        mmWidth = 1323
        BandType = 4
      end
    end
  end
  object ppDBEtiquetas: TppDBPipeline
    DataSource = DMEmbalagem3.C_PrintDS
    UserName = 'DBEtiquetas'
    Left = 167
    Top = 79
    object ppDBEtiquetasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBEtiquetasppField2: TppField
      FieldAlias = 'MAQUINA'
      FieldName = 'MAQUINA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBEtiquetasppField3: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 2
    end
    object ppDBEtiquetasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTEMBALAGEM'
      FieldName = 'TOTEMBALAGEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBEtiquetasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBEtiquetasppField6: TppField
      FieldAlias = 'RAZAO'
      FieldName = 'RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBEtiquetasppField7: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppDBEtiquetasppField8: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
  end
end

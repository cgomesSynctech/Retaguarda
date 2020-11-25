inherited FrmMontagensProduto: TFrmMontagensProduto
  Left = 130
  Top = 176
  Width = 1133
  Height = 501
  Caption = 'Montagem de Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 1002
    Top = 73
    Height = 390
    inherited btPesquisar: TTS_SpeedButton
      Visible = False
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Imprimir'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 356
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel
    Top = 73
    Width = 1002
    Height = 390
    inherited Grid: TTS_QDBGrid
      Width = 1000
      Height = 388
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 1000
      Height = 388
    end
    inherited sbDados: TTS_Panel
      Width = 1000
      Height = 388
      object dbgSubItens: TTS_QDBGrid
        Left = 0
        Top = 0
        Width = 1000
        Height = 388
        Hint = 
          'Coluna Qtd. Total  = Quantidade * Quantidade Solicitada'#13#10'Coluna ' +
          'Total          = Pre'#231'o * Qtd. Total'
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'MONTAGEMFILHO'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'CODIGO'
                SummaryFormat = '>CODIGO=###0'
                SummaryType = cstCount
              end>
            Name = 'Default'
          end>
        SummarySeparator = '|'
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = ppmMontagensProduto
        TabOrder = 0
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMMontagensProduto.C_ItensFilhosDS
        Filter.Criteria = {00000000}
        GroupPanelColor = 15461355
        HeaderColor = 15461355
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideFocusRect = True
        HideSelection = True
        OptionsBehavior = [edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFieldName = 'CODIGO'
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        OnCustomDrawCell = dbgSubItensCustomDrawCell
        TS_PermitirQuantidade = False
        TS_DescriptionCanChange = False
        TS_AppendOnEnter = True
        RowFooterNodeFont.Charset = DEFAULT_CHARSET
        RowFooterNodeFont.Color = clWindowText
        RowFooterNodeFont.Height = -11
        RowFooterNodeFont.Name = 'Tahoma'
        RowFooterNodeFont.Style = [fsBold]
        TS_AccountFooterStyle = False
        TS_HideGroupHeader = False
        TS_AnotherColor = clWindow
        TS_ReportHeaderStyle = False
        GroupNodeFont.Charset = DEFAULT_CHARSET
        GroupNodeFont.Color = clWindowText
        GroupNodeFont.Height = -11
        GroupNodeFont.Name = 'Tahoma'
        GroupNodeFont.Style = [fsBold]
        TS_BeforeLocalizar = dbgSubItensTS_BeforeLocalizar
        TS_AposLocalizar = dbgSubItensTS_AposLocalizar
        TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
        TS_SummaryFooterFont.Color = clBlack
        TS_SummaryFooterFont.Height = -11
        TS_SummaryFooterFont.Name = 'Tahoma'
        TS_SummaryFooterFont.Style = [fsBold]
        TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
        TS_SummaryFooterSelFont.Color = clWindowText
        TS_SummaryFooterSelFont.Height = -11
        TS_SummaryFooterSelFont.Name = 'Tahoma'
        TS_SummaryFooterSelFont.Style = [fsBold]
        TS_AfterNewRecord = dbgSubItensTS_AfterNewRecord
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'CODIGO'
        TS_ID = 0
        TS_ChaveEstrangeira = 'ITEM'
        TS_TipoItem = '1'
        TS_C_Localizar = DMProjeto.C_LocalizarItens
        TS_ItemColumns = 'Codigo;Descricao'
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'CODIGO;COUNT')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgSubItensCODIGO: TdxDBGridButtonColumn
          Caption = 'C'#243'digo'
          HeaderAlignment = taCenter
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '###0'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgSubItensDESCRICAO: TdxDBGridButtonColumn
          Caption = 'Descri'#231#227'o'
          HeaderAlignment = taCenter
          Width = 296
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAO'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgSubItensUNIDADE: TdxDBGridMaskColumn
          Caption = 'Unidade'
          HeaderAlignment = taCenter
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNIDADE'
        end
        object dbgSubItensQUANTIDADE: TdxDBGridCurrencyColumn
          Caption = 'Quantidade'
          HeaderAlignment = taCenter
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QUANTIDADE'
          SummaryFooterType = cstSum
          DisplayFormat = '0.00'
          Nullable = False
        end
        object dbgSubItensCUSTOCONTABIL: TdxDBGridMaskColumn
          Caption = 'Custo Cont'#225'bil'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 95
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CUSTOCONTABIL'
        end
        object dbgSubItensPRECO: TdxDBGridMaskColumn
          Caption = 'Pre'#231'o'
          DisableCustomizing = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRECO'
        end
        object dbgSubItensORIGEMREPLIC: TdxDBGridMaskColumn
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          Width = 448
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORIGEMREPLIC'
        end
        object dbgSubItensQTDTOTAL: TdxDBGridMaskColumn
          Caption = 'Qtd. Total'
          DisableCustomizing = True
          HeaderAlignment = taCenter
          Width = 120
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QUANTIDADETOTAL'
          SummaryFooterType = cstSum
        end
        object dbgSubItensQTDE: TdxDBGridMaskColumn
          Caption = 'Qtd. Solicitada'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDE'
        end
        object dbgSubItensSubTotal: TdxDBGridMaskColumn
          Caption = 'Total'
          DisableCustomizing = True
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 169
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icSubTotalPreco'
          SummaryFooterType = cstSum
        end
        object dbgSubItensFABRICANTE: TdxDBGridMaskColumn
          Caption = 'Fabricante'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 158
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FABRICANTE'
        end
        object dbgSubItensCUSTOMEDIO: TdxDBGridMaskColumn
          Caption = 'Custo M'#233'dio'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CUSTOMEDIO'
          SummaryFooterType = cstSum
        end
        object dbgSubItensFATOR: TdxDBGridMaskColumn
          Caption = 'Fator'
          DisableEditor = True
          HeaderAlignment = taCenter
          Visible = False
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FATOR'
        end
        object dbgSubItensMONTAGEMFILHO: TdxDBGridMaskColumn
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          Width = 530
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MONTAGEMFILHO'
        end
        object dbgSubItensMONTAGEM: TdxDBGridMaskColumn
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          Width = 377
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MONTAGEM'
        end
        object dbgSubItensITEM: TdxDBGridMaskColumn
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          Width = 377
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
        end
        object dbgSubItensEMPRESA: TdxDBGridMaskColumn
          DisableCustomizing = True
          DisableEditor = True
          Visible = False
          Width = 377
          BandIndex = 0
          RowIndex = 0
          FieldName = 'EMPRESA'
        end
        object dbgSubItensQTDSOLICITAR: TdxDBGridMaskColumn
          Caption = 'Qtd. Solicitar'
          HeaderAlignment = taCenter
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QTDSOLICITAR'
          SummaryFooterType = cstSum
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 1000
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1117
    Height = 73
    inherited lbCaption: TdxfLabel
      Width = 222
      Caption = 'Montagem de Produtos'
    end
    inherited lbDesativado: TdxfLabel
      Left = 890
      Top = 11
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1086
    end
    object lblCancelado: TTS_Label
      Left = 499
      Top = 8
      Width = 123
      Height = 29
      Align = alCustom
      Alignment = taCenter
      AutoSize = True
      Caption = 'Cancelado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      WordWrap = False
      Versoes = 'S,P,E'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblQtdSolicitada: TTS_Label
      Left = 449
      Top = 48
      Width = 129
      Height = 16
      Alignment = taLeftJustify
      AutoSize = True
      Caption = 'Quantidade Solicitada:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = False
      Versoes = 'S,P,E'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblItemProduzido: TTS_Label
      Left = 11
      Top = 48
      Width = 91
      Height = 16
      Alignment = taLeftJustify
      AutoSize = True
      Caption = 'Item Produzido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = False
      Versoes = 'S,P,E'
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblNumero: TTS_Label
      Left = 700
      Top = 48
      Width = 50
      Height = 16
      Alignment = taLeftJustify
      AutoSize = True
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = False
      Versoes = 'S,P,E'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dfQtdSolicitada: TTS_DBEdit
      Tag = -2
      Left = 582
      Top = 46
      Width = 91
      HelpContext = -2
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DataField = 'QTDESOLIC'
      DataSource = DMMontagensProduto.C_TabelaDS
      ReadOnly = True
      StyleController = DMProjeto.esFinanceiro
      DistinctEditOn = False
      Versoes = 'S,P,E'
      Height = 22
      StoredValues = 64
    end
    object dfNumero: TTS_DBEdit
      Tag = -2
      Left = 754
      Top = 46
      Width = 103
      HelpContext = -2
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DataField = 'NUMERO'
      DataSource = DMMontagensProduto.C_TabelaDS
      ReadOnly = True
      StyleController = DMProjeto.esFinanceiro
      DistinctEditOn = False
      Versoes = 'S,P,E'
      Height = 22
      StoredValues = 64
    end
    object dfItemProduzido: TTS_Edit
      Left = 105
      Top = 46
      Width = 321
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      CharCase = ecUpperCase
      ReadOnly = True
      StyleController = DMProjeto.esFinanceiro
      Height = 22
      StoredValues = 64
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 383
    Top = 332
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 286
    Top = 187
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 936
    Top = 329
    inherited IrPara1: TMenuItem
      Visible = False
    end
    inherited FormatoTabela: TMenuItem
      Visible = False
    end
    inherited GravarDados: TMenuItem
      Visible = False
    end
    inherited PesquisarDados: TMenuItem
      Visible = False
    end
    inherited LimparDados: TMenuItem
      Visible = False
    end
    inherited ApagarDados: TMenuItem
      Visible = False
    end
  end
  inherited ImgPadrao: TImageList
    Left = 186
    Top = 317
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    Caption = 'Montagem de Produtos'
    Left = 466
    Top = 124
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 1057
    Top = 330
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 1001
    Top = 331
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 1112
    Top = 330
  end
  object ppmMontagensProduto: TTS_PopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 180
    Top = 261
    object ExcluirProduto1: TMenuItem
      Caption = 'Excluir Produto'
      ShortCut = 8238
    end
  end
  object ppMontagens: TppReport
    AutoStop = False
    DataPipeline = ppDBMontagens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    Left = 546
    Top = 193
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBMontagens'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33602
      mmPrintPosition = 0
      object regCab: TppRegion
        UserName = 'regCab'
        Caption = 'regCab'
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 24077
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Ordem de Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 78052
        mmTop = 27252
        mmWidth = 42069
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 46831
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMERO'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 24871
        mmTop = 1588
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DATACONCLUSAO'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 116417
        mmTop = 1588
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DATA'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 65088
        mmTop = 1588
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DATAENTREGA'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 157957
        mmTop = 1588
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'COD_ITEM'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 14023
        mmTop = 32015
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'DESCRICAO'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 38365
        mmTop = 32015
        mmWidth = 70908
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'UNIDADE'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 115359
        mmTop = 32015
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MONTADOR'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 24871
        mmTop = 6615
        mmWidth = 39952
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'PREVISAOCONCLUSAO'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 116417
        mmTop = 6615
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'lkStatus'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 158221
        mmTop = 6615
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'QTDESOLIC'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 24606
        mmTop = 11906
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'QTDEPRODUZIDO'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3979
        mmLeft = 65088
        mmTop = 11906
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        CharWrap = True
        DataField = 'OBS'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 8467
        mmLeft = 24606
        mmTop = 17198
        mmWidth = 168805
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Montagem N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Data Solicit.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 1588
        mmWidth = 20108
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Data Conclus'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 89959
        mmTop = 1588
        mmWidth = 25950
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Data Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 135467
        mmTop = 1588
        mmWidth = 21844
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cod. Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 14023
        mmTop = 26723
        mmWidth = 15610
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 26723
        mmWidth = 16669
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Unidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 115359
        mmTop = 26723
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Montador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 8202
        mmTop = 6615
        mmWidth = 15875
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Previs'#227'o T'#233'rmino:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 88371
        mmTop = 6615
        mmWidth = 27517
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 146315
        mmTop = 6615
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Qtd. Solic.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 11906
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Qtd. Prod.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 47361
        mmTop = 11906
        mmWidth = 17198
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataPipeline = ppDBMontagens
        DataField = 'URGENTE'
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 5027
        mmLeft = 157957
        mmTop = 11642
        mmWidth = 4763
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Urgente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 143934
        mmTop = 11906
        mmWidth = 13462
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'ppDBMontagensFilho'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 39952
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBMontagensFilho
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '6.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBMontagensFilho'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'Sub Itens Para Produ'#231#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 2910
              mmTop = 794
              mmWidth = 54504
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'Codigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3810
              mmLeft = 1852
              mmTop = 8467
              mmWidth = 9567
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3810
              mmLeft = 19844
              mmTop = 8467
              mmWidth = 13420
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = 'Qtd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3810
              mmLeft = 102923
              mmTop = 8467
              mmWidth = 5038
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Caption = 'Fabricante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 75671
              mmTop = 8467
              mmWidth = 14520
              BandType = 1
            end
            object lblTabelaPreco: TppLabel
              UserName = 'lblTabelaPreco'
              Caption = 'Tab. Padr'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3429
              mmLeft = 130704
              mmTop = 8467
              mmWidth = 16933
              BandType = 1
            end
            object lblTabela1: TppLabel
              UserName = 'lblTabela1'
              Caption = 'Tabela 1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              mmHeight = 3440
              mmLeft = 148961
              mmTop = 8467
              mmWidth = 16934
              BandType = 1
            end
            object lblTabela2: TppLabel
              UserName = 'lblTabela2'
              Caption = 'Tabela 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              mmHeight = 3429
              mmLeft = 167482
              mmTop = 8467
              mmWidth = 16934
              BandType = 1
            end
            object lblTabela3: TppLabel
              UserName = 'lblTabela3'
              Caption = 'Tabela 3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              mmHeight = 3429
              mmLeft = 185473
              mmTop = 8467
              mmWidth = 16934
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'lblTabelaPreco1'
              Caption = 'Cont'#225'bil'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3429
              mmLeft = 113772
              mmTop = 8467
              mmWidth = 15875
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'FABRICANTE'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 75406
              mmTop = 265
              mmWidth = 26723
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'CODIGO'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 1852
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'DESCRICAO'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 19844
              mmTop = 265
              mmWidth = 55298
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'QUANTIDADETOTAL'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 102659
              mmTop = 265
              mmWidth = 10319
              BandType = 4
            end
            object dbTabelaPadrao: TppDBText
              UserName = 'dbTabelaPadrao'
              OnGetText = dbTabelaPadraoGetText
              DataField = 'PRECO'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 130704
              mmTop = 265
              mmWidth = 16934
              BandType = 4
            end
            object dbTabelaPreco1: TppDBText
              UserName = 'dbTabelaPreco1'
              OnGetText = dbTabelaPreco1GetText
              DataField = 'TABELAPRECO1'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 148961
              mmTop = 265
              mmWidth = 16934
              BandType = 4
            end
            object dbTabelaPreco2: TppDBText
              UserName = 'dbTabelaPreco2'
              OnGetText = dbTabelaPreco2GetText
              DataField = 'TABELAPRECO2'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 167217
              mmTop = 265
              mmWidth = 16934
              BandType = 4
            end
            object dbTabelaPreco3: TppDBText
              UserName = 'dbTabelaPreco3'
              OnGetText = dbTabelaPreco3GetText
              DataField = 'TABELAPRECO3'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 185473
              mmTop = 265
              mmWidth = 16934
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'CUSTOCONTABIL'
              DataPipeline = ppDBMontagensFilho
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3979
              mmLeft = 113772
              mmTop = 265
              mmWidth = 15875
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 0
              mmTop = 529
              mmWidth = 194205
              BandType = 7
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1852
              mmTop = 1323
              mmWidth = 8086
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'DESCRICAO'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 24077
              mmTop = 1323
              mmWidth = 15610
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'QUANTIDADETOTAL'
              DataPipeline = ppDBMontagensFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 98425
              mmTop = 1323
              mmWidth = 12435
              BandType = 7
            end
            object dbCalcTabelaPreco: TppDBCalc
              UserName = 'dbCalcTabelaPreco'
              DataField = 'icSubTotalPreco'
              DataPipeline = ppDBMontagensFilho
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 130704
              mmTop = 1323
              mmWidth = 16669
              BandType = 7
            end
            object dbCalcTabela1: TppDBCalc
              UserName = 'dbCalcTabela1'
              DataField = 'icSubTotalTabela1'
              DataPipeline = ppDBMontagensFilho
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 148961
              mmTop = 1323
              mmWidth = 16669
              BandType = 7
            end
            object dbCalcTabela2: TppDBCalc
              UserName = 'dbCalcTabela2'
              DataField = 'icSubTotalTabela2'
              DataPipeline = ppDBMontagensFilho
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 167217
              mmTop = 1323
              mmWidth = 16669
              BandType = 7
            end
            object dbCalcTabela3: TppDBCalc
              UserName = 'dbCalcTabela3'
              DataField = 'icSubTotalTabela3'
              DataPipeline = ppDBMontagensFilho
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 185473
              mmTop = 1323
              mmWidth = 16669
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'dbCalcTabelaPreco1'
              DataField = 'icSubTotalContabil'
              DataPipeline = ppDBMontagensFilho
              DisplayFormat = '#,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBMontagensFilho'
              mmHeight = 3429
              mmLeft = 113772
              mmTop = 1323
              mmWidth = 15875
              BandType = 7
            end
          end
        end
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 16933
        mmWidth = 20108
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 13758
        mmTop = 31221
        mmWidth = 160867
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Custo Cont'#225'bil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 150019
        mmTop = 26723
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CUSTOCONTABILITEM'
        DataPipeline = ppDBMontagens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBMontagens'
        mmHeight = 3969
        mmLeft = 146844
        mmTop = 32015
        mmWidth = 27781
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 25400
        mmTop = 265
        mmWidth = 58420
        BandType = 8
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 113506
        mmTop = 265
        mmWidth = 58420
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Conferente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 44715
        mmTop = 794
        mmWidth = 15790
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Gerente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 135732
        mmTop = 794
        mmWidth = 11515
        BandType = 8
      end
    end
  end
  object ppDBMontagens: TppDBPipeline
    DataSource = DMMontagensProduto.C_TabelaDS
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBMontagens'
    Left = 671
    Top = 216
    object ppDBMontagensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBMontagensppField2: TppField
      FieldAlias = 'Q_ItensFilhos'
      FieldName = 'Q_ItensFilhos'
      FieldLength = 0
      DisplayWidth = 10
      Position = 1
    end
    object ppDBMontagensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTAGEM'
      FieldName = 'MONTAGEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBMontagensppField4: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBMontagensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTADOR'
      FieldName = 'MONTADOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBMontagensppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBMontagensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDESOLIC'
      FieldName = 'QTDESOLIC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppDBMontagensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDEPRODUZIDO'
      FieldName = 'QTDEPRODUZIDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppDBMontagensppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBMontagensppField10: TppField
      FieldAlias = 'OBS'
      FieldName = 'OBS'
      FieldLength = 255
      DisplayWidth = 255
      Position = 9
    end
    object ppDBMontagensppField11: TppField
      FieldAlias = 'DATACONCLUSAO'
      FieldName = 'DATACONCLUSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppDBMontagensppField12: TppField
      FieldAlias = 'HORACONCLUSAO'
      FieldName = 'HORACONCLUSAO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 11
    end
    object ppDBMontagensppField13: TppField
      FieldAlias = 'PREVISAOCONCLUSAO'
      FieldName = 'PREVISAOCONCLUSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 12
    end
    object ppDBMontagensppField14: TppField
      FieldAlias = 'DATAENTREGA'
      FieldName = 'DATAENTREGA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 13
    end
    object ppDBMontagensppField15: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDBMontagensppField16: TppField
      FieldAlias = 'URGENTE'
      FieldName = 'URGENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object ppDBMontagensppField17: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppDBMontagensppField18: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 17
    end
    object ppDBMontagensppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATOR'
      FieldName = 'FATOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBMontagensppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SAIDAITEM'
      FieldName = 'SAIDAITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppDBMontagensppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBMontagensppField22: TppField
      FieldAlias = 'ORIGEMREPLIC'
      FieldName = 'ORIGEMREPLIC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppDBMontagensppField23: TppField
      FieldAlias = 'COD_ITEM'
      FieldName = 'COD_ITEM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 22
    end
    object ppDBMontagensppField24: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppDBMontagensppField25: TppField
      FieldAlias = 'CUSTOCONTABILITEM'
      FieldName = 'CUSTOCONTABILITEM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 24
    end
  end
  object ppDBMontagensFilho: TppDBPipeline
    DataSource = DMMontagensProduto.C_ItensFilhosDS
    UserName = 'ppDBMontagensFilho'
    Left = 763
    Top = 234
    object ppDBMontagensFilhoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = '_icSelecionado'
      FieldName = '_icSelecionado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBMontagensFilhoppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTAGEMFILHO'
      FieldName = 'MONTAGEMFILHO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBMontagensFilhoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTAGEM'
      FieldName = 'MONTAGEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBMontagensFilhoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITEM'
      FieldName = 'ITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBMontagensFilhoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppDBMontagensFilhoppField6: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 5
    end
    object ppDBMontagensFilhoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATOR'
      FieldName = 'FATOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBMontagensFilhoppField8: TppField
      FieldAlias = 'FABRICANTE'
      FieldName = 'FABRICANTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object ppDBMontagensFilhoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppDBMontagensFilhoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBMontagensFilhoppField11: TppField
      FieldAlias = 'ORIGEMREPLIC'
      FieldName = 'ORIGEMREPLIC'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBMontagensFilhoppField12: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object ppDBMontagensFilhoppField13: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppDBMontagensFilhoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOMEDIO'
      FieldName = 'CUSTOMEDIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppDBMontagensFilhoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTOCONTABIL'
      FieldName = 'CUSTOCONTABIL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDBMontagensFilhoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppDBMontagensFilhoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADETOTAL'
      FieldName = 'QUANTIDADETOTAL'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppDBMontagensFilhoppField18: TppField
      FieldAlias = 'icSubTotalPreco'
      FieldName = 'icSubTotalPreco'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object ppDBMontagensFilhoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TABELAPRECO1'
      FieldName = 'TABELAPRECO1'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppDBMontagensFilhoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TABELAPRECO2'
      FieldName = 'TABELAPRECO2'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppDBMontagensFilhoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TABELAPRECO3'
      FieldName = 'TABELAPRECO3'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppDBMontagensFilhoppField22: TppField
      FieldAlias = 'icSubTotalTabela1'
      FieldName = 'icSubTotalTabela1'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object ppDBMontagensFilhoppField23: TppField
      FieldAlias = 'icSubTotalTabela2'
      FieldName = 'icSubTotalTabela2'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object ppDBMontagensFilhoppField24: TppField
      FieldAlias = 'icSubTotalTabela3'
      FieldName = 'icSubTotalTabela3'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object ppDBMontagensFilhoppField25: TppField
      FieldAlias = 'icSubTotalContabil'
      FieldName = 'icSubTotalContabil'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object ppDBMontagensFilhoppField26: TppField
      FieldAlias = 'QTDSOLICITAR'
      FieldName = 'QTDSOLICITAR'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object ppDBMontagensFilhoppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTOQUEATUAL'
      FieldName = 'ESTOQUEATUAL'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
  end
end

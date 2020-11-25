inherited DlgMontagensProduto: TDlgMontagensProduto
  Left = 355
  Top = 215
  Width = 968
  Height = 427
  Caption = 'Modulo de Montagem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 834
    Height = 346
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 312
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 952
    inherited btHelp: TTS_SpeedButton
      Left = 924
    end
    inherited lbCaption: TdxfLabel
      Caption = 'Montagem de Produto'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Width = 834
    Height = 346
    Color = 14019327
    object dbgMontagemProduto: TTS_QDBGrid
      Left = 7
      Top = 5
      Width = 818
      Height = 210
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
              SummaryField = 'icSubTotal'
              SummaryFormat = '>icSubTotal=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icSubTotalPreco'
              SummaryFormat = '>icSubTotalPreco=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_MontagensProdutoDS
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clRed
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = [fsBold]
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = [fsBold]
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'CODIGO'
      TS_ID = 0
      TS_ChaveEstrangeira = 'MONTAGEM'
      TS_C_Localizar = DMProjeto.C_LocalizarItens
      TS_ItemColumns = 'Codigo;Descricao'
      TS_TipoDescricao = tdVenda
      TS_WhereAdicional = ' and i.HasChildren = '#39'N'#39' '
      TS_SummaryFields.Strings = (
        'icSubTotal;Sum;'
        'icSubTotalPreco;Sum;')
      TS_SummaryFooterText = 'Custo M'#233'dio dos SubItens:'
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgMontagemProdutoITEM: TdxDBGridMaskColumn
        Caption = 'Item'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgMontagemProdutoCODIGO: TdxDBGridButtonColumn
        Caption = 'C'#243'digo'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgMontagemProdutoDESCRICAO: TdxDBGridButtonColumn
        Caption = 'Descri'#231#227'o'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 381
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        Buttons = <
          item
            Default = True
          end>
      end
      object dbgMontagemProdutoQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Qtd.'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object dbgMontagemProdutoUNIDADE: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 179
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgMontagemProdutoFATOR: TdxDBGridMaskColumn
        Caption = 'Fator'
        HeaderAlignment = taCenter
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATOR'
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 206
    Top = 334
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 370
    Top = 335
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 544
    Top = 306
  end
  inherited Beep: TBTBeeper
    Left = 464
    Top = 312
  end
  inherited FormStorage: TFormStorage
    Left = 624
    Top = 304
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'Modulo de Montagem'
    Left = 282
    Top = 338
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 687
    Top = 306
  end
  object Q_MontagensProduto: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MF.*, II.CODIGO, II.DESCRICAO '
      'FROM MONTAGENSFILHOS MF '
      'INNER JOIN ITENS II ON MF.ITEM = II.ITEM'
      'WHERE MONTAGEM = :MONTAGEM')
    UpdateObject = U_MontagensProduto
    Left = 152
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MONTAGEM'
        ParamType = ptUnknown
      end>
  end
  object P_MontagensProduto: TDataSetProvider
    DataSet = Q_MontagensProduto
    Constraints = True
    Left = 149
    Top = 138
  end
  object C_MontagensProdutoDS: TDataSource
    DataSet = C_MontagensProduto
    Left = 149
    Top = 187
  end
  object U_MontagensProduto: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MONTAGEMFILHO,'
      '  MONTAGEM,'
      '  ITEM,'
      '  QUANTIDADE,'
      '  UNIDADE,'
      '  FATOR,'
      '  QTDE,'
      '  EMPRESA,'
      '  ORIGEMREPLIC'
      'from MONTAGENSFILHOS '
      'where'
      '  MONTAGEMFILHO = :MONTAGEMFILHO')
    ModifySQL.Strings = (
      'update MONTAGENSFILHOS'
      'set'
      '  MONTAGEM = :MONTAGEM,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  QTDE = :QTDE,'
      '  EMPRESA = :EMPRESA,'
      '  ORIGEMREPLIC = :ORIGEMREPLIC,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  MONTAGEMFILHO = :OLD_MONTAGEMFILHO')
    InsertSQL.Strings = (
      'insert into MONTAGENSFILHOS'
      '  (MONTAGEM, ITEM, QUANTIDADE, UNIDADE, FATOR, QTDE, EMPRESA, '
      'ORIGEMREPLIC, '
      '   CODIGO, DESCRICAO)'
      'values'
      
        '  (:MONTAGEM, :ITEM, :QUANTIDADE, :UNIDADE, :FATOR, :QTDE, :EMPR' +
        'ESA, '
      ':ORIGEMREPLIC, '
      '   :CODIGO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from MONTAGENSFILHOS'
      'where'
      '  MONTAGEMFILHO = :OLD_MONTAGEMFILHO')
    Left = 148
    Top = 240
  end
  object C_MontagensProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MontagensProduto'
    OnNewRecord = C_MontagensProdutoNewRecord
    Left = 143
    Top = 298
    object C_MontagensProdutoMONTAGEMFILHO: TIntegerField
      FieldName = 'MONTAGEMFILHO'
      Required = True
    end
    object C_MontagensProdutoMONTAGEM: TIntegerField
      FieldName = 'MONTAGEM'
    end
    object C_MontagensProdutoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_MontagensProdutoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object C_MontagensProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_MontagensProdutoFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_MontagensProdutoQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object C_MontagensProdutoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_MontagensProdutoORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
    object C_MontagensProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_MontagensProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
end

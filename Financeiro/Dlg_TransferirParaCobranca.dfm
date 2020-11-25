inherited DlgTransferirParaCobranca: TDlgTransferirParaCobranca
  Left = 161
  Top = 143
  Width = 708
  Height = 432
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 582
    Height = 355
    Color = 15724519
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 580
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      Color = 15724519
      TabOrder = 0
      object TS_Label1: TTS_Label
        Left = 3
        Top = 3
        Width = 225
        Caption = 'T'#237'tulos a receber que est'#227'o at'#233'                 dias de atraso.'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDias: TTS_SpinEdit
        Left = 161
        Top = 0
        Width = 44
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Alignment = taRightJustify
        StyleController = DMProjeto.esFinanceiro
        Value = 5
        Height = 19
        StoredValues = 1
      end
    end
    object DBTitulos: TTS_QDBGrid
      Left = 1
      Top = 22
      Width = 580
      Height = 332
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_TitulosDS
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
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_AppendOnEnter = False
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
      TS_SummaryFooterFont.Color = clWindowText
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = [fsBold]
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = [fsBold]
      TS_ShowSelectionColumn = True
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = '_icSelecionado'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object DBTitulosID: TdxDBGridMaskColumn
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object DBTitulosCPF_CNPJ: TdxDBGridColumn
        Caption = 'CPF/CNPJ'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object DBTitulosNOME: TdxDBGridMaskColumn
        Caption = 'Nome do Cliente'
        HeaderAlignment = taCenter
        Width = 240
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object DBTitulosVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object DBTitulosFALTARECEBER: TdxDBGridMaskColumn
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FALTARECEBER'
      end
      object DBTitulosDiasAtraso: TdxDBGridColumn
        Alignment = taCenter
        Caption = 'Dias de Atraso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DiasAtraso'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 582
    Height = 355
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 321
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Transferir'
      Glyph.Data = {
        3E030000424D3E03000000000000FE0000002800000018000000180000000100
        08000000000040020000D10E0000D10E00003200000032000000C0480000CA50
        0000CA580000D460000000840000CA58030006840300C0580600CA5806000684
        0600C0600B00CA600B00D46A0B00AB6A1100D46A1100D46A16001C981600CA6A
        1C00588F1C002A981C002AA12300D4732A00CA84400058AB48006AB6500073B6
        5800D4AB7B0098CA7B00EAB68400ABCA8F00FFCA8F00FFCA9800FFD4A100EAD4
        AB00FFD4AB00D4E0AB00FFD4B600FFE0B600FFE0C000D4D4CA00FFEACA00FFEA
        D400FFEAE000EAF4E000FFF4E000EAF4EA00FFF4EA00FFFFF400FF00FF00FFFF
        FF00303030303030303030303030303030303030303030303030303030303030
        3030303030303030303030303030303030303000000000000000000000000000
        00000000000000000000300031312828282828282826262525222220201F1F1E
        1E00300031111111111111111111112525222220201F1F1E1F0030003111312F
        2E2A2825221F0B262525222220201F1F1F0030003115312F2E2A2825221F0F26
        262525222220201F20003000311531312F2E2A2819130D282626252522222020
        2000300031153131312F2E2A2309041828262625252222202200300031153131
        31312F2E2A1B0404101D26262125252222003000311531313131312F2E2A1204
        040417251025252225003000310E03030303030303030E140404040404252525
        26003000311C02020202020202021C2B09040404042626252600300031313131
        313131313131312F2F040404042828262800300031313131313131313131312D
        10040404042828282800300031313131313131313131313131312F2E2E2A2928
        2900300031313131313131313131313131312F2E2E2A2A292A00300131313131
        3131313131313131312F2F2E2E2A292A2A003001030303030303030303030303
        0303030303030303030030000000000000000000000000000000000000000000
        0016303007070707070707070707070707070707070707070A30303030303030
        3030303030303030303030303030303030303030303030303030303030303030
        3030303030303030303030303030303030303030303030303030303030303030
        3030}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 700
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 409
      Caption = 'Transferir T'#237'tulos em atraso para Cobran'#231'a'
      Effect3D.ShadowedColor = 13223591
    end
    inherited lbEstadoForm: TTS_Label
      Width = 252
      Caption = 'Selecione os t'#237'tulos que deseja enviar para cobran'#231'a'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 664
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Transferir T'#237'tulos em atraso para Cobran'#231'a'
  end
  object Q_Titulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT t.id, f.cpf_cnpj, f.nome, t.vencimento, t.faltareceber, t' +
        '.cliente'
      'FROM titulosareceber t'
      'inner join favorecidos f on t.cliente = f.favorecido'
      'where t.vencimento >= :data and t.status = 3'
      'order by t.vencimento')
    Left = 376
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
  object C_Titulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Titulos'
    OnCalcFields = C_TitulosCalcFields
    Left = 376
    Top = 136
    object C_TitulosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TitulosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_TitulosFALTARECEBER: TBCDField
      FieldName = 'FALTARECEBER'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TitulosDiasAtraso: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DiasAtraso'
    end
    object C_TitulosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_TitulosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object P_Titulos: TDataSetProvider
    DataSet = Q_Titulos
    Constraints = True
    Left = 376
    Top = 232
  end
  object C_TitulosDS: TDataSource
    DataSet = C_Titulos
    Left = 376
    Top = 280
  end
end

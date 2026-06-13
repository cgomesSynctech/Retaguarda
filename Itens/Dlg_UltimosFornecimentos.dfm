inherited DlgUltimosFornecimentos: TDlgUltimosFornecimentos
  Left = 224
  Top = 126
  HelpContext = 0
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'M'#243'dulo de Itens'
  ClientHeight = 366
  ClientWidth = 752
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label1: TTS_Label [0]
    Left = 349
    Top = 246
    Width = 65
    Caption = 'TOTAIS:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object dbtQtde: TTS_DBText [1]
    Left = 426
    Top = 246
    Width = 61
    Height = 14
    Alignment = taRightJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    AllowEditOnClick = False
    EditFont.Charset = DEFAULT_CHARSET
    EditFont.Color = clWindowText
    EditFont.Height = -11
    EditFont.Name = 'MS Sans Serif'
    EditFont.Style = []
    EditOffSet.x = 0
    EditOffSet.y = 0
  end
  object dbtValor: TTS_DBText [2]
    Left = 490
    Top = 246
    Width = 60
    Height = 14
    Alignment = taRightJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    AllowEditOnClick = False
    EditFont.Charset = DEFAULT_CHARSET
    EditFont.Color = clWindowText
    EditFont.Height = -11
    EditFont.Name = 'MS Sans Serif'
    EditFont.Style = []
    EditOffSet.x = 0
    EditOffSet.y = 0
  end
  inherited pnNavigator: TTS_Panel
    Left = 656
    Width = 96
    Height = 323
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 289
      Width = 94
    end
    inherited btComando2: TTS_SpeedButton
      Width = 94
    end
    inherited btComando1: TTS_SpeedButton
      Width = 94
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 94
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 94
      Caption = 'Abrir Link'
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        0800000000009001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2F8008ED4DF006BC9D10048B8C30025AABD0000AAC5000092
        AF00007A930000626200004A4A0000323200D4E3FF00B1C7FF008EABFF006B8F
        FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
        5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
        5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
        01010101010101010101010101010101E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E70101E7EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE7E7EA0000000000000000
        000000000000000000EDE7ED0011111111111111111111111111111300EDEA00
        120E0E0E0E0E0E0E0E0E0E0E0E0E111200EDED000F0E0E0E0E0E0E0E0E0E0E0E
        0E0E121200ED00120E0E0E0E0E0E0E0E0E0E0E0E0E0E121200ED000F0E0E0E0E
        0E0E0E0E0E0E0E0E0E11121200ED000A0A0A0A0A0E0E0E0E0E0E0E0E0E121112
        00EDED0000121212120A0A0A0A0A0A0A0A120D1100EDEAED000A0E00E6121212
        1212121212120D1100EDE7ED000A0E008F198F8F8F8F8F8F8F000D1100EDE7ED
        000A0E00E723E5E3E2FFFFFFE2000D1100EDE7ED000A0D0090238F8F8F8F8F8F
        8F00000000EDE7ED000D0A00E723E5E3E2EDEDEDED00EDEDEDE7E7EBED000000
        90238F8F8FF1FFFFE400EDE7E70101E7EBEDED00E723E5E3E2F1FFE4ED00EDE7
        01010101E7E7ED0090238F8F8FF1E4EDF1EDE701010101010101E70000000000
        00000000EDE701010101}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 94
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 752
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 42
      Caption = 'Consulta'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 487
    end
    inherited lbUpperHint: TTS_Label
      Left = 685
    end
    inherited lbCaption: TdxfLabel
      Width = 221
      AutoSize = True
      Caption = #218'ltimos Fornecimentos'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited pnDados: TTS_Panel
    Tag = -1
    Width = 656
    Height = 323
    HelpContext = -1
    Color = 14019327
    object dbgFornec: TTS_QDBGrid
      Tag = -2
      Left = 1
      Top = 28
      Width = 654
      Height = 294
      HelpContext = -2
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'NUMERO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'numero'
              SummaryFormat = '>numero=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'quantidade'
              SummaryFormat = '>quantidade=###,##0.0##'
              SummaryType = cstSum
            end
            item
              SummaryField = 'subtotal'
              SummaryFormat = '>subtotal=###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = ', '
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 1
      OnDblClick = dbgFornecDblClick
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = Q_FornecDS
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
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
      GroupNodeFont.Style = []
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clWindowText
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = []
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = []
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'NUMERO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'numero;count'
        'quantidade;sum'
        'subtotal;sum')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dbgFornecNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgFornecDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Sorted = csDown
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgFornecNOME: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgFornecColumn10: TdxDBGridColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgFornecQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Qtde.'
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.0##'
      end
      object dbgFornecicDesconto: TdxDBGridColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgFornecPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgFornecDesconto: TdxDBGridColumn
        Caption = 'Desconto'
        HeaderAlignment = taCenter
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Desco'
      end
      object dbgFornecDescontoItem: TdxDBGridColumn
        Caption = 'Desc. Item'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO1'
      end
      object dbgFornecCUSTOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Custo Compra'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCOMPRA'
      end
      object dbgFornecSubTotal: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SubTotal'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
      end
      object dbgFornecDESCRICAO: TdxDBGridColumn
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
      object dbgFornecEntrada: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgFornecFavorecido: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgFornecColumn15: TdxDBGridDateColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgFornecColumn16: TdxDBGridMaskColumn
        Visible = False
        Width = 308
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgFornecTAXAVEL: TdxDBGridMaskColumn
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXAVEL'
      end
      object dbgFornecColumn18: TdxDBGridMaskColumn
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgFornecColumn19: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgFornecColumn20: TdxDBGridMaskColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgFornecUNIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgFornecColumn22: TdxDBGridColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icDesconto'
      end
      object dbgFornecColumn23: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgFornecTIPOMOVIMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 308
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
      object dbgFornecEMPRESA: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object dbgFornecPDV: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDV'
      end
      object dbgFornecOBS: TdxDBGridMaskColumn
        Visible = False
        Width = 3045
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgFornecTAX: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAX'
      end
      object dbgFornecPERCENTUALTAX: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALTAX'
        Nullable = False
      end
      object dbgFornecColumn30: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
        Nullable = False
      end
      object dbgFornecPLANOPAGAMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLANOPAGAMENTO'
      end
      object dbgFornecFRETE: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETE'
        Nullable = False
      end
      object dbgFornecTOTAL: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
      end
      object dbgFornecTIPOENTREGA: TdxDBGridMaskColumn
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOENTREGA'
      end
      object dbgFornecDATAENTREGA: TdxDBGridDateColumn
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAENTREGA'
      end
      object dbgFornecIMPORTACAO: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPORTACAO'
      end
      object dbgFornecSITUACAO: TdxDBGridMaskColumn
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAO'
      end
      object dbgFornecPREVISAOENTREGA: TdxDBGridDateColumn
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PREVISAOENTREGA'
      end
      object dbgFornecTIPOMOVIMENTO1: TdxDBGridMaskColumn
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO1'
      end
      object dbgFornecTIPOPADRAO: TdxDBGridMaskColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOPADRAO'
      end
      object dbgFornecDATACANCELAMENTO: TdxDBGridDateColumn
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATACANCELAMENTO'
      end
      object dbgFornecFUNCCANCELAMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCCANCELAMENTO'
      end
      object dbgFornecMOTIVOCANCELAMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 491
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MOTIVOCANCELAMENTO'
      end
      object dbgFornecBAIXAESTOQUE: TdxDBGridMaskColumn
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIXAESTOQUE'
      end
      object dbgFornecSTATUS: TdxDBGridMaskColumn
        Visible = False
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
      end
      object dbgFornecIMPOSTO: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPOSTO'
      end
      object dbgFornecTOTALITENS: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALITENS'
      end
      object dbgFornecOUTRASDESPESAS: TdxDBGridMaskColumn
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUTRASDESPESAS'
      end
      object dbgFornecJUROS: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS'
      end
      object dbgFornecCAMPO01: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO01'
      end
      object dbgFornecCAMPO02: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO02'
      end
      object dbgFornecCAMPO03: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO03'
      end
      object dbgFornecCAMPO04: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAMPO04'
      end
      object dbgFornecPJUROS: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PJUROS'
      end
      object dbgFornecPOSSUITAX: TdxDBGridMaskColumn
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POSSUITAX'
      end
      object dbgFornecCALCCOMISSAO: TdxDBGridMaskColumn
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CALCCOMISSAO'
      end
      object dbgFornecPOSSUIENTREGA: TdxDBGridMaskColumn
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POSSUIENTREGA'
      end
      object dbgFornecTOTALITENS123: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALITENS123'
      end
      object dbgFornecDESCONTOITENS: TdxDBGridMaskColumn
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOITENS'
      end
      object dbgFornecLOCALENTREGA: TdxDBGridMaskColumn
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALENTREGA'
      end
      object dbgFornecLOCALCLIENTE: TdxDBGridMaskColumn
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALCLIENTE'
      end
      object dbgFornecINCLUIDESCONTO: TdxDBGridMaskColumn
        Visible = False
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INCLUIDESCONTO'
      end
      object dbgFornecATUALIZACUSTO: TdxDBGridMaskColumn
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUALIZACUSTO'
      end
      object dbgFornecATUALIZAPRECO: TdxDBGridMaskColumn
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUALIZAPRECO'
      end
      object dbgFornecATUALIZAPRECOMANUAL: TdxDBGridMaskColumn
        Visible = False
        Width = 132
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUALIZAPRECOMANUAL'
      end
      object dbgFornecSTATUSANTERIOR: TdxDBGridMaskColumn
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUSANTERIOR'
      end
      object dbgFornecUSUARIO: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUARIO'
      end
      object dbgFornecTOTALPGTOS: TdxDBGridMaskColumn
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALPGTOS'
      end
      object dbgFornecBASEIMPOSTO: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEIMPOSTO'
      end
      object dbgFornecBASEINCLUSO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEINCLUSO'
      end
      object dbgFornecIMPOSTO_INCLUSO: TdxDBGridMaskColumn
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPOSTO_INCLUSO'
      end
      object dbgFornecREDUCOESBASE: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCOESBASE'
      end
      object dbgFornecACRESCIMOSBASE: TdxDBGridMaskColumn
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACRESCIMOSBASE'
      end
      object dbgFornecVOLUMES: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VOLUMES'
      end
      object dbgFornecALMOXPADRAO: TdxDBGridMaskColumn
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALMOXPADRAO'
      end
      object dbgFornecUFORIGEM: TdxDBGridMaskColumn
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UFORIGEM'
      end
      object dbgFornecCFOPNOTA: TdxDBGridMaskColumn
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPNOTA'
      end
      object dbgFornecCFOPENTRADA: TdxDBGridMaskColumn
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPENTRADA'
      end
      object dbgFornecSERIENOTA: TdxDBGridMaskColumn
        Visible = False
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERIENOTA'
      end
      object dbgFornecVALORSEGURO: TdxDBGridMaskColumn
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORSEGURO'
      end
      object dbgFornecBASECALCICMS: TdxDBGridMaskColumn
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCICMS'
      end
      object dbgFornecVALORICMS: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMS'
      end
      object dbgFornecBASECALCSUBST: TdxDBGridMaskColumn
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCSUBST'
      end
      object dbgFornecVALORICMSSUBST: TdxDBGridMaskColumn
        Visible = False
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMSSUBST'
      end
      object dbgFornecVALORIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORIPI'
      end
      object dbgFornecPESOBRUTO: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOBRUTO'
      end
      object dbgFornecPESOLIQUIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOLIQUIDO'
      end
      object dbgFornecALIQICMSCOMPRA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMSCOMPRA'
        Nullable = False
      end
      object dbgFornecFRETEINCLUSO: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETEINCLUSO'
      end
      object dbgFornecVALORISENTAS: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORISENTAS'
      end
      object dbgFornecCONSIDERARDESCONTO: TdxDBGridMaskColumn
        Visible = False
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONSIDERARDESCONTO'
      end
      object dbgFornecMODELO: TdxDBGridMaskColumn
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object dbgFornecVALOROUTRASICMS: TdxDBGridMaskColumn
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOROUTRASICMS'
      end
      object dbgFornecVALORISENTASIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORISENTASIPI'
      end
      object dbgFornecVALOROUTRASIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOROUTRASIPI'
      end
      object dbgFornecPOSSUIICMS: TdxDBGridMaskColumn
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POSSUIICMS'
      end
      object dbgFornecCONTABILIZAICMS: TdxDBGridMaskColumn
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTABILIZAICMS'
      end
      object dbgFornecCIF_FOB: TdxDBGridMaskColumn
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIF_FOB'
      end
      object dbgFornecPOSSUIIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'POSSUIIPI'
      end
      object dbgFornecDATANOTA: TdxDBGridDateColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATANOTA'
      end
      object dbgFornecIMPRESSO: TdxDBGridMaskColumn
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPRESSO'
      end
      object dbgFornecNOTAORIGEM: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAORIGEM'
      end
      object dbgFornecTRANSPORTADORA: TdxDBGridMaskColumn
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRANSPORTADORA'
      end
      object dbgFornecPLACAVEIC: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLACAVEIC'
      end
      object dbgFornecVENDEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgFornecDESCESPECIE: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCESPECIE'
      end
      object dbgFornecDESCMARCA: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCMARCA'
      end
      object dbgFornecDESCNUMERO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCNUMERO'
      end
      object dbgFornecFRETEEXTERNO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETEEXTERNO'
        Nullable = False
      end
      object dbgFornecINDEXADOR: TdxDBGridMaskColumn
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDEXADOR'
      end
      object dbgFornecFONTE: TdxDBGridMaskColumn
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONTE'
      end
      object dbgFornecBAIXAESTOQUEFISCAL: TdxDBGridMaskColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIXAESTOQUEFISCAL'
      end
      object dbgFornecESPECIE: TdxDBGridMaskColumn
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESPECIE'
      end
      object dbgFornecHORA: TdxDBGridTimeColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HORA'
      end
      object dbgFornecDETALHEIMPORTACAO: TdxDBGridMaskColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DETALHEIMPORTACAO'
      end
      object dbgFornecCHAVENFE: TdxDBGridMaskColumn
        Visible = False
        Width = 308
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHAVENFE'
      end
      object dbgFornecRATEAROUTRASDESPESAS: TdxDBGridMaskColumn
        Visible = False
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEAROUTRASDESPESAS'
      end
      object dbgFornecORIGEMREPLIC: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGEMREPLIC'
      end
      object dbgFornecEMPRESA1: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA1'
      end
      object dbgFornecENTRADA1: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA1'
      end
      object dbgFornecENTRADAITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADAITEM'
      end
      object dbgFornecPDV1: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDV1'
      end
      object dbgFornecSEQUENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEQUENCIA'
      end
      object dbgFornecITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgFornecDESCRICAO1: TdxDBGridMaskColumn
        Visible = False
        Width = 1555
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO1'
      end
      object dbgFornecColumn126: TdxDBGridMaskColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object dbgFornecColumn127: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgFornecIMPORTACAO1: TdxDBGridMaskColumn
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPORTACAO1'
      end
      object dbgFornecUSOTIPOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USOTIPOITEM'
      end
      object dbgFornecCUSTOMEDIO: TdxDBGridMaskColumn
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgFornecSITUACAO1: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAO1'
      end
      object dbgFornecSUBTOTALITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
      end
      object dbgFornecQTDRECEBIDA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDRECEBIDA'
        Nullable = False
      end
      object dbgFornecHASCHILDREN: TdxDBGridMaskColumn
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HASCHILDREN'
      end
      object dbgFornecORDEM: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDEM'
      end
      object dbgFornecCOLUNA1: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA1'
      end
      object dbgFornecCOLUNA2: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA2'
      end
      object dbgFornecCOLUNA3: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA3'
      end
      object dbgFornecCOLUNA4: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COLUNA4'
      end
      object dbgFornecCLIENTEREF: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTEREF'
      end
      object dbgFornecREFERENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgFornecSAIDAITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEM'
      end
      object dbgFornecNAOCOBRAR: TdxDBGridMaskColumn
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NAOCOBRAR'
      end
      object dbgFornecCUSTOCONTABIL: TdxDBGridMaskColumn
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgFornecRATEIODESCONTO: TdxDBGridMaskColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEIODESCONTO'
      end
      object dbgFornecCUSTOMEDIO_ANT: TdxDBGridMaskColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO_ANT'
      end
      object dbgFornecCUSTOCONTABIL_ANT: TdxDBGridMaskColumn
        Visible = False
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL_ANT'
      end
      object dbgFornecSEMLUCRO: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEMLUCRO'
      end
      object dbgFornecLUCRO: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LUCRO'
      end
      object dbgFornecINDICELUCRO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDICELUCRO'
      end
      object dbgFornecNOVOPRECO: TdxDBGridMaskColumn
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOVOPRECO'
      end
      object dbgFornecANALISADO: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ANALISADO'
      end
      object dbgFornecATUALIZOUCUSTO: TdxDBGridMaskColumn
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUALIZOUCUSTO'
      end
      object dbgFornecATUALIZOUPRECO: TdxDBGridMaskColumn
        Visible = False
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATUALIZOUPRECO'
      end
      object dbgFornecFRETEPROPORCIONAL: TdxDBGridMaskColumn
        Visible = False
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETEPROPORCIONAL'
      end
      object dbgFornecMESCLADO: TdxDBGridMaskColumn
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MESCLADO'
      end
      object dbgFornecSTATUS1: TdxDBGridMaskColumn
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS1'
      end
      object dbgFornecCODIGOFORN: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOFORN'
      end
      object dbgFornecNUMEROLOTE: TdxDBGridMaskColumn
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROLOTE'
      end
      object dbgFornecVALIDADE: TdxDBGridDateColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALIDADE'
      end
      object dbgFornecVENDEDOR1: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR1'
      end
      object dbgFornecFATOR: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATOR'
      end
      object dbgFornecESTOQUE_ANT: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE_ANT'
        Nullable = False
      end
      object dbgFornecBAIXAESTOQUE1: TdxDBGridMaskColumn
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIXAESTOQUE1'
      end
      object dbgFornecALMOXARIFADO: TdxDBGridMaskColumn
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALMOXARIFADO'
      end
      object dbgFornecBASECALCICMSPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCICMSPROD'
      end
      object dbgFornecIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPI'
      end
      object dbgFornecALIQICMS: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
      end
      object dbgFornecCST: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CST'
      end
      object dbgFornecREDUCAOCST: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCAOCST'
      end
      object dbgFornecCFOPENTRADA1: TdxDBGridMaskColumn
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPENTRADA1'
      end
      object dbgFornecDESCONTO1: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO1'
      end
      object dbgFornecBASECALCSUBSTPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCSUBSTPROD'
      end
      object dbgFornecVALORIPIPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORIPIPROD'
      end
      object dbgFornecTVA: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
      end
      object dbgFornecSITUACAOECF: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object dbgFornecVALORICMSPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMSPROD'
      end
      object dbgFornecVALORISENTASPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORISENTASPROD'
      end
      object dbgFornecVALORICMSSUBSTPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMSSUBSTPROD'
      end
      object dbgFornecQTDDEVOLVIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDDEVOLVIDO'
      end
      object dbgFornecQTDACERTADO: TdxDBGridMaskColumn
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDACERTADO'
      end
      object dbgFornecPDESCONTO: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDESCONTO'
      end
      object dbgFornecCOMPENSACAOCUSTO: TdxDBGridMaskColumn
        Visible = False
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPENSACAOCUSTO'
      end
      object dbgFornecCFOPCST: TdxDBGridMaskColumn
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOPCST'
      end
      object dbgFornecFATORPRECO: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORPRECO'
      end
      object dbgFornecPRECOVENDA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOVENDA'
        Nullable = False
      end
      object dbgFornecBAIXAESTOQUEFISCAL1: TdxDBGridMaskColumn
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIXAESTOQUEFISCAL1'
      end
      object dbgFornecIDTRIBFEDERAL: TdxDBGridMaskColumn
        Visible = False
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDTRIBFEDERAL'
      end
      object dbgFornecQUANTIDADEVOLUME: TdxDBGridMaskColumn
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADEVOLUME'
      end
      object dbgFornecCSTPISCOFINS: TdxDBGridMaskColumn
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CSTPISCOFINS'
      end
      object dbgFornecALIQPIS: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQPIS'
      end
      object dbgFornecALIQCOFINS: TdxDBGridMaskColumn
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQCOFINS'
      end
      object dbgFornecVALORPISPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPISPROD'
      end
      object dbgFornecVALORCOFINSPROD: TdxDBGridMaskColumn
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORCOFINSPROD'
      end
      object dbgFornecCSTIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CSTIPI'
      end
      object dbgFornecALIQIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQIPI'
      end
      object dbgFornecFABRICACAO: TdxDBGridDateColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICACAO'
      end
      object dbgFornecV_BCII: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'V_BCII'
      end
      object dbgFornecV_DESPADUII: TdxDBGridMaskColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'V_DESPADUII'
      end
      object dbgFornecV_II: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'V_II'
      end
      object dbgFornecV_IOFII: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'V_IOFII'
      end
      object dbgFornecRATEIODESPESAS: TdxDBGridMaskColumn
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEIODESPESAS'
      end
      object dbgFornecRATEIOFRETE: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEIOFRETE'
      end
      object dbgFornecFRETE1: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETE1'
      end
      object dbgFornecSEGURO: TdxDBGridMaskColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEGURO'
      end
      object dbgFornecOUTRASDESPESAS1: TdxDBGridMaskColumn
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUTRASDESPESAS1'
      end
      object dbgFornecRATEIOSEGURO: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RATEIOSEGURO'
      end
      object dbgFornecORIGEMREPLIC1: TdxDBGridMaskColumn
        Visible = False
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGEMREPLIC1'
      end
      object dbgFornecColumn209: TdxDBGridColumn
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SubTotal'
      end
      object dbgFornecCUSTOMANUAL: TdxDBGridCurrencyColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMANUAL'
        Nullable = False
      end
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 654
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      BackgroundOptions.Opaque = False
      object Label8: TTS_Label
        Left = 11
        Top = 6
        Width = 49
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfItem: TTS_EditItem
        Left = 63
        Top = 4
        Width = 294
        Hint = 
          '#C'#243'digo => Pesquisa pelo C'#243'digo. Ex: #123'#13'&Referencia => Pesquis' +
          'a pela Refer'#234'ncia. Ex: &PVDD-44456'
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        StyleController = DMProjeto.esItens
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              EE000000424DEE0000000000000076000000280000000F0000000F0000000100
              0400000000007800000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777077777777777CC07077777777774EC0707777777774EC077077777777CEC0
              77707770000778077770770666608877777077EEEFF6077777708FEEEFFF6077
              77708FEEEFFF607777708EFFFEEE607777707EFFFEEE0777777078FFFEE67777
              777077788807777777707777777777777770}
            Kind = bkGlyph
          end
          item
            Default = False
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              700077777777777770007777700077777000777770C077777000777770C07777
              7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
              7000777770C07777700077777000777770007777777777777000777777777777
              7000}
            Kind = bkGlyph
          end>
        PermitirQuantidade = False
        SelecionarVariosItens = False
        C_Localizar = DMProjeto.C_LocalizarItens
        ID = 0
        OnSelecionou = dfItemSelecionou
        Height = 19
        ExistButtons = True
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 406
    Top = 247
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 554
    Top = 247
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 496
    Top = 154
  end
  inherited Beep: TBTBeeper
    Left = 560
    Top = 96
  end
  inherited FormStorage: TFormStorage
    Left = 560
    Top = 152
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = #218'ltimos Fornecimentos'
    Left = 469
    Top = 247
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 495
    Top = 98
    inherited Ajuda1: TMenuItem
      HelpContext = 147
    end
  end
  object Q_Fornec: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select tm.descricao as tipomovimento, tp.descricao ,e.*,ei.*, f.' +
        'nome, (ei.preco - ei.desconto - ei.rateiodesconto) as custocompr' +
        'a  from'
      
        '(Entradas e inner join EntradasItens ei on e.entrada = ei.entrad' +
        'a)'
      'left join favorecidos f on e.favorecido = f.favorecido'
      'inner join tipospadrao tp on tp.tipopadrao = e.tipopadrao'
      
        'inner join tiposmovimento tm on e.tipomovimento = tm.tipomovimen' +
        'to'
      'where ei.item = :item and e.situacao = '#39'N'#39' and tp.tipo = '#39'E'#39
      'and tp.tipopadrao <> 102'
      'order by e.entrada desc')
    Left = 30
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'item'
        ParamType = ptUnknown
      end>
  end
  object C_Fornec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_FornecProvider'
    OnCalcFields = C_FornecCalcFields
    Left = 24
    Top = 255
    object C_FornecDATA: TDateField
      FieldName = 'DATA'
    end
    object C_FornecNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_FornecTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_FornecNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_FornecENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Required = True
    end
    object C_FornecFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_FornecUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_FornecicDesconto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDesconto'
    end
    object C_FornecDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object C_FornecTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 50
    end
    object C_FornecEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_FornecPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
    object C_FornecOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object C_FornecTAX: TIntegerField
      FieldName = 'TAX'
    end
    object C_FornecPERCENTUALTAX: TBCDField
      FieldName = 'PERCENTUALTAX'
      Precision = 18
      Size = 2
    end
    object C_FornecDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object C_FornecPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
    end
    object C_FornecFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object C_FornecTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_FornecTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
    end
    object C_FornecDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object C_FornecIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_FornecSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_FornecPREVISAOENTREGA: TDateField
      FieldName = 'PREVISAOENTREGA'
    end
    object C_FornecTIPOMOVIMENTO1: TIntegerField
      FieldName = 'TIPOMOVIMENTO1'
    end
    object C_FornecTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_FornecDATACANCELAMENTO: TDateField
      FieldName = 'DATACANCELAMENTO'
    end
    object C_FornecFUNCCANCELAMENTO: TIntegerField
      FieldName = 'FUNCCANCELAMENTO'
    end
    object C_FornecMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Size = 80
    end
    object C_FornecBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      Size = 1
    end
    object C_FornecSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_FornecIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object C_FornecTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object C_FornecOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
    end
    object C_FornecJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object C_FornecCAMPO01: TStringField
      FieldName = 'CAMPO01'
    end
    object C_FornecCAMPO02: TStringField
      FieldName = 'CAMPO02'
    end
    object C_FornecCAMPO03: TStringField
      FieldName = 'CAMPO03'
    end
    object C_FornecCAMPO04: TStringField
      FieldName = 'CAMPO04'
    end
    object C_FornecPJUROS: TFloatField
      FieldName = 'PJUROS'
    end
    object C_FornecPOSSUITAX: TStringField
      FieldName = 'POSSUITAX'
      Size = 1
    end
    object C_FornecCALCCOMISSAO: TStringField
      FieldName = 'CALCCOMISSAO'
      Size = 1
    end
    object C_FornecPOSSUIENTREGA: TStringField
      FieldName = 'POSSUIENTREGA'
      Size = 1
    end
    object C_FornecTOTALITENS123: TFloatField
      FieldName = 'TOTALITENS123'
    end
    object C_FornecDESCONTOITENS: TFloatField
      FieldName = 'DESCONTOITENS'
    end
    object C_FornecLOCALENTREGA: TIntegerField
      FieldName = 'LOCALENTREGA'
    end
    object C_FornecLOCALCLIENTE: TIntegerField
      FieldName = 'LOCALCLIENTE'
    end
    object C_FornecINCLUIDESCONTO: TStringField
      FieldName = 'INCLUIDESCONTO'
      Size = 1
    end
    object C_FornecATUALIZACUSTO: TStringField
      FieldName = 'ATUALIZACUSTO'
      Size = 3
    end
    object C_FornecATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      Size = 3
    end
    object C_FornecATUALIZAPRECOMANUAL: TStringField
      FieldName = 'ATUALIZAPRECOMANUAL'
      Size = 1
    end
    object C_FornecSTATUSANTERIOR: TStringField
      FieldName = 'STATUSANTERIOR'
      Size = 1
    end
    object C_FornecUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object C_FornecTOTALPGTOS: TFloatField
      FieldName = 'TOTALPGTOS'
    end
    object C_FornecBASEIMPOSTO: TFloatField
      FieldName = 'BASEIMPOSTO'
    end
    object C_FornecBASEINCLUSO: TFloatField
      FieldName = 'BASEINCLUSO'
    end
    object C_FornecIMPOSTO_INCLUSO: TFloatField
      FieldName = 'IMPOSTO_INCLUSO'
    end
    object C_FornecREDUCOESBASE: TFloatField
      FieldName = 'REDUCOESBASE'
    end
    object C_FornecACRESCIMOSBASE: TFloatField
      FieldName = 'ACRESCIMOSBASE'
    end
    object C_FornecVOLUMES: TFloatField
      FieldName = 'VOLUMES'
    end
    object C_FornecALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
    end
    object C_FornecUFORIGEM: TStringField
      FieldName = 'UFORIGEM'
      Size = 2
    end
    object C_FornecCFOPNOTA: TStringField
      FieldName = 'CFOPNOTA'
      Size = 4
    end
    object C_FornecCFOPENTRADA: TStringField
      FieldName = 'CFOPENTRADA'
      Size = 4
    end
    object C_FornecSERIENOTA: TStringField
      FieldName = 'SERIENOTA'
      Size = 3
    end
    object C_FornecVALORSEGURO: TFloatField
      FieldName = 'VALORSEGURO'
    end
    object C_FornecBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
    end
    object C_FornecVALORICMS: TFloatField
      FieldName = 'VALORICMS'
    end
    object C_FornecBASECALCSUBST: TFloatField
      FieldName = 'BASECALCSUBST'
    end
    object C_FornecVALORICMSSUBST: TFloatField
      FieldName = 'VALORICMSSUBST'
    end
    object C_FornecVALORIPI: TFloatField
      FieldName = 'VALORIPI'
    end
    object C_FornecPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object C_FornecPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object C_FornecALIQICMSCOMPRA: TBCDField
      FieldName = 'ALIQICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_FornecFRETEINCLUSO: TStringField
      FieldName = 'FRETEINCLUSO'
      Size = 1
    end
    object C_FornecVALORISENTAS: TFloatField
      FieldName = 'VALORISENTAS'
    end
    object C_FornecCONSIDERARDESCONTO: TStringField
      FieldName = 'CONSIDERARDESCONTO'
      Size = 1
    end
    object C_FornecMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object C_FornecVALOROUTRASICMS: TFloatField
      FieldName = 'VALOROUTRASICMS'
    end
    object C_FornecVALORISENTASIPI: TFloatField
      FieldName = 'VALORISENTASIPI'
    end
    object C_FornecVALOROUTRASIPI: TFloatField
      FieldName = 'VALOROUTRASIPI'
    end
    object C_FornecPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Size = 1
    end
    object C_FornecCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Size = 1
    end
    object C_FornecCIF_FOB: TStringField
      FieldName = 'CIF_FOB'
      Size = 1
    end
    object C_FornecPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Size = 1
    end
    object C_FornecDATANOTA: TDateField
      FieldName = 'DATANOTA'
    end
    object C_FornecIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 1
    end
    object C_FornecNOTAORIGEM: TIntegerField
      FieldName = 'NOTAORIGEM'
    end
    object C_FornecTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object C_FornecPLACAVEIC: TStringField
      FieldName = 'PLACAVEIC'
      Size = 10
    end
    object C_FornecVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_FornecDESCESPECIE: TStringField
      FieldName = 'DESCESPECIE'
      Size = 15
    end
    object C_FornecDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 15
    end
    object C_FornecDESCNUMERO: TStringField
      FieldName = 'DESCNUMERO'
      Size = 10
    end
    object C_FornecFRETEEXTERNO: TBCDField
      FieldName = 'FRETEEXTERNO'
      Precision = 18
      Size = 2
    end
    object C_FornecINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_FornecFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1
    end
    object C_FornecBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_FornecESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 3
    end
    object C_FornecHORA: TTimeField
      FieldName = 'HORA'
    end
    object C_FornecDETALHEIMPORTACAO: TIntegerField
      FieldName = 'DETALHEIMPORTACAO'
    end
    object C_FornecCHAVENFE: TStringField
      FieldName = 'CHAVENFE'
      Size = 50
    end
    object C_FornecRATEAROUTRASDESPESAS: TStringField
      FieldName = 'RATEAROUTRASDESPESAS'
      FixedChar = True
      Size = 1
    end
    object C_FornecORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
    object C_FornecEMPRESA1: TIntegerField
      FieldName = 'EMPRESA1'
      Required = True
    end
    object C_FornecENTRADA1: TIntegerField
      FieldName = 'ENTRADA1'
      Required = True
    end
    object C_FornecENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
      Required = True
    end
    object C_FornecPDV1: TIntegerField
      FieldName = 'PDV1'
      Required = True
    end
    object C_FornecSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object C_FornecITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_FornecDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 255
    end
    object C_FornecQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_FornecPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_FornecIMPORTACAO1: TIntegerField
      FieldName = 'IMPORTACAO1'
    end
    object C_FornecUSOTIPOITEM: TStringField
      FieldName = 'USOTIPOITEM'
      Size = 10
    end
    object C_FornecCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_FornecSITUACAO1: TStringField
      FieldName = 'SITUACAO1'
      Size = 1
    end
    object C_FornecSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_FornecQTDRECEBIDA: TBCDField
      FieldName = 'QTDRECEBIDA'
      Precision = 18
      Size = 3
    end
    object C_FornecHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_FornecORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object C_FornecCOLUNA1: TStringField
      FieldName = 'COLUNA1'
    end
    object C_FornecCOLUNA2: TStringField
      FieldName = 'COLUNA2'
    end
    object C_FornecCOLUNA3: TStringField
      FieldName = 'COLUNA3'
    end
    object C_FornecCOLUNA4: TStringField
      FieldName = 'COLUNA4'
    end
    object C_FornecCLIENTEREF: TIntegerField
      FieldName = 'CLIENTEREF'
    end
    object C_FornecREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_FornecSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
    end
    object C_FornecNAOCOBRAR: TStringField
      FieldName = 'NAOCOBRAR'
      Size = 1
    end
    object C_FornecCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_FornecRATEIODESCONTO: TFloatField
      FieldName = 'RATEIODESCONTO'
    end
    object C_FornecCUSTOMEDIO_ANT: TFloatField
      FieldName = 'CUSTOMEDIO_ANT'
    end
    object C_FornecCUSTOCONTABIL_ANT: TFloatField
      FieldName = 'CUSTOCONTABIL_ANT'
    end
    object C_FornecSEMLUCRO: TFloatField
      FieldName = 'SEMLUCRO'
    end
    object C_FornecLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object C_FornecINDICELUCRO: TFloatField
      FieldName = 'INDICELUCRO'
    end
    object C_FornecNOVOPRECO: TFloatField
      FieldName = 'NOVOPRECO'
    end
    object C_FornecANALISADO: TStringField
      FieldName = 'ANALISADO'
      Size = 1
    end
    object C_FornecATUALIZOUCUSTO: TStringField
      FieldName = 'ATUALIZOUCUSTO'
      Size = 1
    end
    object C_FornecATUALIZOUPRECO: TStringField
      FieldName = 'ATUALIZOUPRECO'
      Size = 1
    end
    object C_FornecFRETEPROPORCIONAL: TFloatField
      FieldName = 'FRETEPROPORCIONAL'
    end
    object C_FornecMESCLADO: TStringField
      FieldName = 'MESCLADO'
      Size = 1
    end
    object C_FornecSTATUS1: TStringField
      FieldName = 'STATUS1'
      Size = 1
    end
    object C_FornecCODIGOFORN: TStringField
      FieldName = 'CODIGOFORN'
    end
    object C_FornecNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Size = 12
    end
    object C_FornecVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_FornecVENDEDOR1: TIntegerField
      FieldName = 'VENDEDOR1'
    end
    object C_FornecFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_FornecESTOQUE_ANT: TBCDField
      FieldName = 'ESTOQUE_ANT'
      Precision = 18
      Size = 3
    end
    object C_FornecBAIXAESTOQUE1: TStringField
      FieldName = 'BAIXAESTOQUE1'
      Size = 1
    end
    object C_FornecALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
    object C_FornecBASECALCICMSPROD: TFloatField
      FieldName = 'BASECALCICMSPROD'
    end
    object C_FornecIPI: TFloatField
      FieldName = 'IPI'
    end
    object C_FornecALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object C_FornecCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object C_FornecREDUCAOCST: TFloatField
      FieldName = 'REDUCAOCST'
    end
    object C_FornecCFOPENTRADA1: TStringField
      FieldName = 'CFOPENTRADA1'
      Size = 4
    end
    object C_FornecDESCONTO1: TFloatField
      FieldName = 'DESCONTO1'
    end
    object C_FornecBASECALCSUBSTPROD: TFloatField
      FieldName = 'BASECALCSUBSTPROD'
    end
    object C_FornecVALORIPIPROD: TFloatField
      FieldName = 'VALORIPIPROD'
    end
    object C_FornecTVA: TFloatField
      FieldName = 'TVA'
    end
    object C_FornecSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Size = 1
    end
    object C_FornecVALORICMSPROD: TFloatField
      FieldName = 'VALORICMSPROD'
    end
    object C_FornecVALORISENTASPROD: TFloatField
      FieldName = 'VALORISENTASPROD'
    end
    object C_FornecVALORICMSSUBSTPROD: TFloatField
      FieldName = 'VALORICMSSUBSTPROD'
    end
    object C_FornecQTDDEVOLVIDO: TFloatField
      FieldName = 'QTDDEVOLVIDO'
    end
    object C_FornecQTDACERTADO: TFloatField
      FieldName = 'QTDACERTADO'
    end
    object C_FornecPDESCONTO: TFloatField
      FieldName = 'PDESCONTO'
    end
    object C_FornecCOMPENSACAOCUSTO: TFloatField
      FieldName = 'COMPENSACAOCUSTO'
    end
    object C_FornecCFOPCST: TStringField
      FieldName = 'CFOPCST'
      Size = 4
    end
    object C_FornecFATORPRECO: TFloatField
      FieldName = 'FATORPRECO'
    end
    object C_FornecPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Precision = 18
      Size = 3
    end
    object C_FornecBAIXAESTOQUEFISCAL1: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL1'
      FixedChar = True
      Size = 1
    end
    object C_FornecIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
    end
    object C_FornecQUANTIDADEVOLUME: TFloatField
      FieldName = 'QUANTIDADEVOLUME'
    end
    object C_FornecCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Size = 2
    end
    object C_FornecALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
    end
    object C_FornecALIQCOFINS: TFloatField
      FieldName = 'ALIQCOFINS'
    end
    object C_FornecVALORPISPROD: TFloatField
      FieldName = 'VALORPISPROD'
    end
    object C_FornecVALORCOFINSPROD: TFloatField
      FieldName = 'VALORCOFINSPROD'
    end
    object C_FornecCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object C_FornecALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object C_FornecFABRICACAO: TDateField
      FieldName = 'FABRICACAO'
    end
    object C_FornecV_BCII: TFloatField
      FieldName = 'V_BCII'
    end
    object C_FornecV_DESPADUII: TFloatField
      FieldName = 'V_DESPADUII'
    end
    object C_FornecV_II: TFloatField
      FieldName = 'V_II'
    end
    object C_FornecV_IOFII: TFloatField
      FieldName = 'V_IOFII'
    end
    object C_FornecRATEIODESPESAS: TFloatField
      FieldName = 'RATEIODESPESAS'
    end
    object C_FornecRATEIOFRETE: TFloatField
      FieldName = 'RATEIOFRETE'
    end
    object C_FornecFRETE1: TFloatField
      FieldName = 'FRETE1'
    end
    object C_FornecSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object C_FornecOUTRASDESPESAS1: TFloatField
      FieldName = 'OUTRASDESPESAS1'
    end
    object C_FornecRATEIOSEGURO: TFloatField
      FieldName = 'RATEIOSEGURO'
    end
    object C_FornecORIGEMREPLIC1: TStringField
      FieldName = 'ORIGEMREPLIC1'
      FixedChar = True
      Size = 1
    end
    object C_FornecSubTotal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SubTotal'
    end
    object C_FornecCUSTOMANUAL: TBCDField
      FieldName = 'CUSTOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_FornecCUSTOCOMPRA: TFloatField
      FieldName = 'CUSTOCOMPRA'
    end
  end
  object Q_FornecProvider: TDataSetProvider
    DataSet = Q_Fornec
    Constraints = True
    Left = 28
    Top = 151
  end
  object Q_FornecDS: TDataSource
    DataSet = C_Fornec
    Left = 26
    Top = 201
  end
end

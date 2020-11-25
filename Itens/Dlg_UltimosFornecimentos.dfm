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
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgFornecDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgFornecNOME: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgFornecColumn10: TdxDBGridColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgFornecQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Qtde.'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.0##'
      end
      object dbgFornecicDesconto: TdxDBGridColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgFornecPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgFornecDesconto: TdxDBGridColumn
        Caption = 'Desconto'
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Desco'
      end
      object dbgFornecDescontoItem: TdxDBGridColumn
        Caption = 'Desc. Item'
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO1'
      end
      object dbgFornecSubTotal: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 42
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
        Width = 185
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
      object dbgFornecEntrada: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgFornecFavorecido: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
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
        'nome  from'
      
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

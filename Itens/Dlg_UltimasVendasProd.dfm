inherited DlgUltimasVendasProd: TDlgUltimasVendasProd
  Left = 5
  Top = 111
  HelpContext = 0
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'M'#243'dulo de Itens'
  ClientHeight = 331
  ClientWidth = 714
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
    Left = 614
    Width = 100
    Height = 288
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 254
      Width = 98
    end
    inherited btComando2: TTS_SpeedButton
      Width = 98
    end
    inherited btComando1: TTS_SpeedButton
      Width = 98
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 98
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 98
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
      Width = 98
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel [4]
    Tag = -1
    Width = 614
    Height = 288
    HelpContext = -1
    Color = 14019327
    object dbgConsulta: TTS_QDBGrid
      Tag = -2
      Left = 1
      Top = 28
      Width = 612
      Height = 259
      Cursor = crHandPoint
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
      OnDblClick = dbgConsultaDblClick
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = Q_VendasDS
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
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Width = 254
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Qtde.'
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.0##'
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
      end
      object dbgConsultaColumn8: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SubTotal'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,##0.00'
      end
      object dbgConsultaTipoFavorecido: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaFavorecido: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaSaida: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
    end
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 612
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      BackgroundOptions.Opaque = False
      BackgroundOptions.GlassColor = 14019327
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
  inherited pnTitulo: TTS_MaxPanel [5]
    Width = 714
    Gradient.ColorStart = 9027548
    inherited lbEstadoForm: TTS_Label
      Width = 42
      Caption = 'Consulta'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 450
    end
    inherited lbUpperHint: TTS_Label
      Left = 684
    end
    inherited lbCaption: TdxfLabel
      Width = 148
      AutoSize = True
      Caption = #218'ltimas Vendas'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = #218'ltimas Vendas'
    Top = 233
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 272
    inherited Ajuda1: TMenuItem
      HelpContext = 148
    end
  end
  object Q_Vendas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select s.*,si.*, f.nome, f.favorecido, f.tipofavorecido'
      'from (Saidas s inner join SaidasItens si on s.saida = si.saida)'
      'left join favorecidos f on s.favorecido = f.favorecido'
      
        'where si.item = :item and s.tipopadrao in (1,2) and s.situacao =' +
        ' '#39'N'#39
      'order by s.saida desc')
    Left = 85
    Top = 150
    ParamData = <
      item
        DataType = ftInteger
        Name = 'item'
        ParamType = ptUnknown
      end>
  end
  object C_Vendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_VendasProvider'
    OnCalcFields = C_VendasCalcFields
    Left = 216
    Top = 172
    object C_VendasDATA: TDateField
      FieldName = 'DATA'
    end
    object C_VendasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_VendasTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_VendasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_VendasSubTotal: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'SubTotal'
      DisplayFormat = '###,##0.00'
    end
    object C_VendasTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_VendasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_VendasSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_VendasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_VendasPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
    object C_VendasOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object C_VendasTAX: TIntegerField
      FieldName = 'TAX'
    end
    object C_VendasPERCENTUALTAX: TFloatField
      FieldName = 'PERCENTUALTAX'
    end
    object C_VendasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object C_VendasPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
    end
    object C_VendasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_VendasFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object C_VendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_VendasTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
    end
    object C_VendasDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object C_VendasIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_VendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_VendasTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_VendasPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
      Size = 12
    end
    object C_VendasOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
    end
    object C_VendasJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object C_VendasPOSSUITAX: TStringField
      FieldName = 'POSSUITAX'
      Size = 1
    end
    object C_VendasBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      Size = 1
    end
    object C_VendasCALCCOMISSAO: TStringField
      FieldName = 'CALCCOMISSAO'
      Size = 1
    end
    object C_VendasPOSSUIENTREGA: TStringField
      FieldName = 'POSSUIENTREGA'
      Size = 1
    end
    object C_VendasCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 50
    end
    object C_VendasCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 50
    end
    object C_VendasCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 50
    end
    object C_VendasCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 50
    end
    object C_VendasIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 1
    end
    object C_VendasIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object C_VendasIMPOSTO_INCLUSO: TFloatField
      FieldName = 'IMPOSTO_INCLUSO'
    end
    object C_VendasPCOMISSAO: TFloatField
      FieldName = 'PCOMISSAO'
    end
    object C_VendasCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object C_VendasLOCALENTREGA: TIntegerField
      FieldName = 'LOCALENTREGA'
    end
    object C_VendasTABELAPADRAO: TIntegerField
      FieldName = 'TABELAPADRAO'
    end
    object C_VendasTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_VendasDATACANCELAMENTO: TDateField
      FieldName = 'DATACANCELAMENTO'
    end
    object C_VendasFUNCCANCELAMENTO: TIntegerField
      FieldName = 'FUNCCANCELAMENTO'
    end
    object C_VendasMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Size = 80
    end
    object C_VendasPJUROS: TFloatField
      FieldName = 'PJUROS'
    end
    object C_VendasVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
    end
    object C_VendasTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object C_VendasVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_VendasCONDICOESPGTO: TStringField
      FieldName = 'CONDICOESPGTO'
      Size = 255
    end
    object C_VendasDATAENTREGUE: TDateField
      FieldName = 'DATAENTREGUE'
    end
    object C_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_VendasTOTALITENS123: TFloatField
      FieldName = 'TOTALITENS123'
    end
    object C_VendasBASEIMPOSTO: TFloatField
      FieldName = 'BASEIMPOSTO'
    end
    object C_VendasBASEINCLUSO: TFloatField
      FieldName = 'BASEINCLUSO'
    end
    object C_VendasDESCONTOITENS: TFloatField
      FieldName = 'DESCONTOITENS'
    end
    object C_VendasTIPOIMPRESSAO: TStringField
      FieldName = 'TIPOIMPRESSAO'
      Size = 3
    end
    object C_VendasTOTALPGTOS: TFloatField
      FieldName = 'TOTALPGTOS'
    end
    object C_VendasSTATUSANTERIOR: TStringField
      FieldName = 'STATUSANTERIOR'
      Size = 1
    end
    object C_VendasREDUCOESBASE: TFloatField
      FieldName = 'REDUCOESBASE'
    end
    object C_VendasACRESCIMOSBASE: TFloatField
      FieldName = 'ACRESCIMOSBASE'
    end
    object C_VendasDTMODIFICACAO: TDateTimeField
      FieldName = 'DTMODIFICACAO'
    end
    object C_VendasVOLUMES: TFloatField
      FieldName = 'VOLUMES'
    end
    object C_VendasTERMOCONTRATO: TStringField
      FieldName = 'TERMOCONTRATO'
      Size = 500
    end
    object C_VendasALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
    end
    object C_VendasCFOPNOTA: TStringField
      FieldName = 'CFOPNOTA'
      Size = 4
    end
    object C_VendasSERIENOTA: TStringField
      FieldName = 'SERIENOTA'
      Size = 3
    end
    object C_VendasUFDESTINO: TStringField
      FieldName = 'UFDESTINO'
      Size = 2
    end
    object C_VendasBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
    end
    object C_VendasVALORICMS: TFloatField
      FieldName = 'VALORICMS'
    end
    object C_VendasVALORISS: TFloatField
      FieldName = 'VALORISS'
    end
    object C_VendasVALORIPI: TFloatField
      FieldName = 'VALORIPI'
    end
    object C_VendasBASECALCSUBST: TFloatField
      FieldName = 'BASECALCSUBST'
    end
    object C_VendasVALORICMSSUBST: TFloatField
      FieldName = 'VALORICMSSUBST'
    end
    object C_VendasVALORSEGURO: TFloatField
      FieldName = 'VALORSEGURO'
    end
    object C_VendasTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      Size = 1
    end
    object C_VendasTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
    end
    object C_VendasPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object C_VendasPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object C_VendasALIQICMSVENDA: TFloatField
      FieldName = 'ALIQICMSVENDA'
    end
    object C_VendasVALORISENTAS: TFloatField
      FieldName = 'VALORISENTAS'
    end
    object C_VendasTOTALSERVICOS: TFloatField
      FieldName = 'TOTALSERVICOS'
    end
    object C_VendasDESCESPECIE: TStringField
      FieldName = 'DESCESPECIE'
      Size = 15
    end
    object C_VendasDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 15
    end
    object C_VendasDESCNUMERO: TStringField
      FieldName = 'DESCNUMERO'
      Size = 10
    end
    object C_VendasINDICADOPELOFAV: TIntegerField
      FieldName = 'INDICADOPELOFAV'
    end
    object C_VendasPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Size = 1
    end
    object C_VendasPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Size = 1
    end
    object C_VendasPOSSUIISS: TStringField
      FieldName = 'POSSUIISS'
      Size = 1
    end
    object C_VendasCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Size = 1
    end
    object C_VendasMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object C_VendasVALOROUTRASICMS: TFloatField
      FieldName = 'VALOROUTRASICMS'
    end
    object C_VendasVALORISENTASIPI: TFloatField
      FieldName = 'VALORISENTASIPI'
    end
    object C_VendasVALOROUTRASIPI: TFloatField
      FieldName = 'VALOROUTRASIPI'
    end
    object C_VendasFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1
    end
    object C_VendasPLACAVEIC: TStringField
      FieldName = 'PLACAVEIC'
      Size = 10
    end
    object C_VendasATRATAR: TStringField
      FieldName = 'ATRATAR'
      Size = 255
    end
    object C_VendasINTRODUCAO: TStringField
      FieldName = 'INTRODUCAO'
      Size = 255
    end
    object C_VendasPRAZOENTREGA: TStringField
      FieldName = 'PRAZOENTREGA'
      Size = 40
    end
    object C_VendasGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 50
    end
    object C_VendasSEESTOQUE: TStringField
      FieldName = 'SEESTOQUE'
      Size = 1
    end
    object C_VendasPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Size = 30
    end
    object C_VendasCARTACONVITE: TStringField
      FieldName = 'CARTACONVITE'
      Size = 30
    end
    object C_VendasTOMADAPRECOS: TStringField
      FieldName = 'TOMADAPRECOS'
      Size = 30
    end
    object C_VendasDATAABERTURA: TStringField
      FieldName = 'DATAABERTURA'
      Size = 30
    end
    object C_VendasEXPLICACOES: TStringField
      FieldName = 'EXPLICACOES'
      Size = 4000
    end
    object C_VendasLICITACAOICMS: TFloatField
      FieldName = 'LICITACAOICMS'
    end
    object C_VendasSUBSTTRIB: TStringField
      FieldName = 'SUBSTTRIB'
      Size = 1
    end
    object C_VendasPJUROSNEGOCIADO: TFloatField
      FieldName = 'PJUROSNEGOCIADO'
    end
    object C_VendasCONDICOESPAGTO: TStringField
      FieldName = 'CONDICOESPAGTO'
      Size = 255
    end
    object C_VendasTOTALPRODUTOS: TFloatField
      FieldName = 'TOTALPRODUTOS'
    end
    object C_VendasVALORIPIITENS: TFloatField
      FieldName = 'VALORIPIITENS'
    end
    object C_VendasBASECALCICMSITENS: TFloatField
      FieldName = 'BASECALCICMSITENS'
    end
    object C_VendasVALORICMSITENS: TFloatField
      FieldName = 'VALORICMSITENS'
    end
    object C_VendasBASECALCSUBSTITENS: TFloatField
      FieldName = 'BASECALCSUBSTITENS'
    end
    object C_VendasCOBRANCA: TIntegerField
      FieldName = 'COBRANCA'
    end
    object C_VendasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object C_VendasMEDICO: TIntegerField
      FieldName = 'MEDICO'
    end
    object C_VendasNF_CUPOM: TStringField
      FieldName = 'NF_CUPOM'
      Size = 12
    end
    object C_VendasDEVOLUCAO: TFloatField
      FieldName = 'DEVOLUCAO'
    end
    object C_VendasBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_VendasHORA: TTimeField
      FieldName = 'HORA'
    end
    object C_VendasMENSAGEMITEM: TStringField
      FieldName = 'MENSAGEMITEM'
      Size = 2000
    end
    object C_VendasNUMEROSERIEECF: TStringField
      FieldName = 'NUMEROSERIEECF'
    end
    object C_VendasNUMEROECF: TStringField
      FieldName = 'NUMEROECF'
      Size = 3
    end
    object C_VendasCCF: TStringField
      FieldName = 'CCF'
      Size = 6
    end
    object C_VendasCRZ: TStringField
      FieldName = 'CRZ'
      Size = 4
    end
    object C_VendasDETALHEIMPORTACAO: TIntegerField
      FieldName = 'DETALHEIMPORTACAO'
    end
    object C_VendasMD5: TStringField
      FieldName = 'MD5'
      Size = 32
    end
    object C_VendasORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
    object C_VendasEMPRESA1: TIntegerField
      FieldName = 'EMPRESA1'
      Required = True
    end
    object C_VendasSAIDA1: TIntegerField
      FieldName = 'SAIDA1'
      Required = True
    end
    object C_VendasSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Required = True
    end
    object C_VendasPDV1: TIntegerField
      FieldName = 'PDV1'
      Required = True
    end
    object C_VendasSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object C_VendasITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_VendasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_VendasQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_VendasPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_VendasIMPORTACAO1: TIntegerField
      FieldName = 'IMPORTACAO1'
    end
    object C_VendasCONTAVENDA: TIntegerField
      FieldName = 'CONTAVENDA'
    end
    object C_VendasTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_VendasPRECOTABELA: TFloatField
      FieldName = 'PRECOTABELA'
    end
    object C_VendasUSOTIPOITEM: TStringField
      FieldName = 'USOTIPOITEM'
      Size = 15
    end
    object C_VendasSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_VendasORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object C_VendasCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_VendasCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_VendasRATEIODESCONTO: TFloatField
      FieldName = 'RATEIODESCONTO'
    end
    object C_VendasHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_VendasPRODUCAO: TIntegerField
      FieldName = 'PRODUCAO'
    end
    object C_VendasFUNCPRODUCAO: TIntegerField
      FieldName = 'FUNCPRODUCAO'
    end
    object C_VendasCOLUNA1: TStringField
      FieldName = 'COLUNA1'
    end
    object C_VendasCOLUNA2: TStringField
      FieldName = 'COLUNA2'
    end
    object C_VendasCOLUNA3: TStringField
      FieldName = 'COLUNA3'
    end
    object C_VendasCOLUNA4: TStringField
      FieldName = 'COLUNA4'
    end
    object C_VendasMAXDESCONTO: TFloatField
      FieldName = 'MAXDESCONTO'
    end
    object C_VendasDESPESA: TIntegerField
      FieldName = 'DESPESA'
    end
    object C_VendasENTRADAITEM: TIntegerField
      FieldName = 'ENTRADAITEM'
    end
    object C_VendasCONTRATOREF: TIntegerField
      FieldName = 'CONTRATOREF'
    end
    object C_VendasQTDFATURADA: TFloatField
      FieldName = 'QTDFATURADA'
    end
    object C_VendasMESCLADO: TStringField
      FieldName = 'MESCLADO'
      Size = 1
    end
    object C_VendasSTATUS1: TStringField
      FieldName = 'STATUS1'
      Size = 1
    end
    object C_VendasQTDMONTAGEM: TFloatField
      FieldName = 'QTDMONTAGEM'
    end
    object C_VendasNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Size = 12
    end
    object C_VendasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_VendasFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_VendasN_USOTIPOITEM: TFloatField
      FieldName = 'N_USOTIPOITEM'
    end
    object C_VendasDESCONTO1: TFloatField
      FieldName = 'DESCONTO1'
    end
    object C_VendasDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Size = 255
    end
    object C_VendasPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object C_VendasPRECOSEMPROMOCAO: TFloatField
      FieldName = 'PRECOSEMPROMOCAO'
    end
    object C_VendasBAIXAESTOQUE1: TStringField
      FieldName = 'BAIXAESTOQUE1'
      Size = 1
    end
    object C_VendasALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
    object C_VendasORDEMMONTAGEM: TStringField
      FieldName = 'ORDEMMONTAGEM'
      Size = 1
    end
    object C_VendasBASECALCICMSPROD: TFloatField
      FieldName = 'BASECALCICMSPROD'
    end
    object C_VendasIPI: TFloatField
      FieldName = 'IPI'
    end
    object C_VendasALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object C_VendasCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object C_VendasREDUCAOCST: TFloatField
      FieldName = 'REDUCAOCST'
    end
    object C_VendasSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Size = 1
    end
    object C_VendasCFOPNOTA1: TStringField
      FieldName = 'CFOPNOTA1'
      Size = 4
    end
    object C_VendasBASECALCSUBSTPROD: TFloatField
      FieldName = 'BASECALCSUBSTPROD'
    end
    object C_VendasVALORIPIPROD: TFloatField
      FieldName = 'VALORIPIPROD'
    end
    object C_VendasTVA: TFloatField
      FieldName = 'TVA'
    end
    object C_VendasNUMEROITEM: TStringField
      FieldName = 'NUMEROITEM'
      Size = 5
    end
    object C_VendasREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Size = 15
    end
    object C_VendasVALORICMSPROD: TFloatField
      FieldName = 'VALORICMSPROD'
    end
    object C_VendasVALORISENTASPROD: TFloatField
      FieldName = 'VALORISENTASPROD'
    end
    object C_VendasVALORICMSSUBSTPROD: TFloatField
      FieldName = 'VALORICMSSUBSTPROD'
    end
    object C_VendasPDESCONTO: TFloatField
      FieldName = 'PDESCONTO'
    end
    object C_VendasQTDDEVOLVIDO: TFloatField
      FieldName = 'QTDDEVOLVIDO'
    end
    object C_VendasQTDACERTADO: TFloatField
      FieldName = 'QTDACERTADO'
    end
    object C_VendasDATACONTATO: TDateField
      FieldName = 'DATACONTATO'
    end
    object C_VendasCFOPCST: TStringField
      FieldName = 'CFOPCST'
      Size = 4
    end
    object C_VendasIDCFOPCST: TStringField
      FieldName = 'IDCFOPCST'
      Size = 7
    end
    object C_VendasBAIXAESTOQUEFISCAL1: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL1'
      FixedChar = True
      Size = 1
    end
    object C_VendasIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
    end
    object C_VendasQUANTIDADEVOLUME: TFloatField
      FieldName = 'QUANTIDADEVOLUME'
    end
    object C_VendasCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Size = 2
    end
    object C_VendasALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
    end
    object C_VendasALIQCOFINS: TFloatField
      FieldName = 'ALIQCOFINS'
    end
    object C_VendasCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object C_VendasALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object C_VendasVALORPISPROD: TFloatField
      FieldName = 'VALORPISPROD'
    end
    object C_VendasVALORCOFINSPROD: TFloatField
      FieldName = 'VALORCOFINSPROD'
    end
    object C_VendasULTIMOPRECOCOMPRA: TFloatField
      FieldName = 'ULTIMOPRECOCOMPRA'
    end
    object C_VendasV_BCII: TFloatField
      FieldName = 'V_BCII'
    end
    object C_VendasV_DESPADUII: TFloatField
      FieldName = 'V_DESPADUII'
    end
    object C_VendasV_II: TFloatField
      FieldName = 'V_II'
    end
    object C_VendasV_IOFII: TFloatField
      FieldName = 'V_IOFII'
    end
    object C_VendasPCOMISSAO1: TFloatField
      FieldName = 'PCOMISSAO1'
    end
    object C_VendasSITUACAO1: TStringField
      FieldName = 'SITUACAO1'
      Required = True
      FixedChar = True
      Size = 1
    end
    object C_VendasMD51: TStringField
      FieldName = 'MD51'
      Size = 32
    end
    object C_VendasACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object C_VendasRATEIODESPESAS: TFloatField
      FieldName = 'RATEIODESPESAS'
    end
    object C_VendasRATEIOFRETE: TFloatField
      FieldName = 'RATEIOFRETE'
    end
    object C_VendasRATEIOSEGURO: TFloatField
      FieldName = 'RATEIOSEGURO'
    end
    object C_VendasORIGEMREPLIC1: TStringField
      FieldName = 'ORIGEMREPLIC1'
      FixedChar = True
      Size = 1
    end
    object C_VendasPRECOCUSTOLICITACAO: TFloatField
      FieldName = 'PRECOCUSTOLICITACAO'
    end
    object C_VendasFAVORECIDO1: TIntegerField
      FieldName = 'FAVORECIDO1'
    end
  end
  object Q_VendasProvider: TDataSetProvider
    DataSet = Q_Vendas
    Constraints = True
    Left = 62
    Top = 85
  end
  object Q_VendasDS: TDataSource
    DataSet = C_Vendas
    Left = 114
    Top = 176
  end
end

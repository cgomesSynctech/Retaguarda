object FrmFiltroFavorecidos: TFrmFiltroFavorecidos
  Left = 178
  Top = 275
  Width = 628
  Height = 323
  Caption = 'Filtragem de Favorecidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TTS_Panel
    Left = 0
    Top = 0
    Width = 620
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    Color = 16116702
    TabOrder = 0
    DesignSize = (
      620
      296)
    object TS_Label1: TTS_Label
      Left = 3
      Top = 8
      Width = 86
      Caption = 'Escolher Cliente:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 306
      Top = 28
      Width = 82
      Caption = 'Tabela de Pre'#231'o:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 333
      Top = 48
      Width = 56
      Caption = 'Atividade:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 330
      Top = 69
      Width = 59
      Caption = 'Qualidade:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object btAplicarFiltro: TTS_SpeedButton
      Left = 165
      Top = 261
      Width = 92
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = '&Aplicar Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        D2020000424DD202000000000000920000002800000018000000180000000100
        08000000000040020000D10E0000D10E00001700000017000000063106000673
        0B0023C023002A732A002AB62A002AC02A002ACA2A0031CA310040CA400040D4
        40004898480048D4480058D4580050E0580058E0580058D4600058E060006AEA
        73007BF484008FF48F00ABFFAB00FF00FF00FFFFFF0015151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        1515151515151515151515151515150000000015151515151515151515151515
        151515151515000102020A031515151515151515151515151515151515010102
        02020A01151515151515151515151515151515151501020505020A0115151515
        15151515151515151515151501020C0B0807040A011515151515151515151515
        15151503010C0C0C0C0B0802011515151515151515151515151503010C0F0C0C
        020C0C0C0201151515151515151515151501031212110C0201020C0C0C011515
        1515151515151515010C12121212020115010C0C0C0C01151515151515151515
        0A0C12120C0103151503020F110C020315151515151515150A020C0201151515
        1515010C12120C0A1515151515151515150A0A0A15151515151515011212120C
        01151515151515151515151515151515151515150A1212120C03151515151515
        151515151515151515151515150A121211020A15151515151515151515151515
        15151515151502121312020A1515151515151515151515151515151515151502
        141412020A15151515151515151515151515151515151515021414120A151515
        151515151515151515151515151515151502140C0A1515151515151515151515
        15151515151515151515020A1515151515151515151515151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        15151515151515151515151515151515151515151515}
      ParentFont = False
      OnClick = btAplicarFiltroClick
      RepeatedClick = False
      Border = True
    end
    object btFechar: TTS_SpeedButton
      Left = 356
      Top = 261
      Width = 90
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        0800000000009001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
        DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
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
        01010101010101010101010101010101010000000101010101010101F0000001
        010101010000370000010101010101F000370000010101000037353700000101
        0101F0003735370000010100353535353700000101F000373535353500010100
        00313535353700EEEE0037353535310000010101000031353535370000373535
        3531000001010101010000313535353737353535310000010101010101010000
        31353535353535310000010101010101010101EE0031353535353100EE010101
        01010101010101EE0037353535353700EE010101010101010101000037353535
        3535353700000101010101010100003735353531313535353700000101010101
        000037353535310000313535353700000101010000373535353100EEEE003135
        3535370000010100313535353100000101F00031353535370001010000313531
        000001010101F00031353100000101010000310000010101010101F000310000
        01010101010000000101010101010101F0000001010101010101010101010101
        01010101010101010101}
      ParentFont = False
      OnClick = btFecharClick
      RepeatedClick = False
      Border = True
    end
    object TS_Label5: TTS_Label
      Left = 320
      Top = 9
      Width = 69
      Caption = 'Vendedor:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Shape1: TTS_Shape
      Left = 2
      Top = 29
      Width = 295
      Height = 226
      Anchors = [akLeft, akTop, akBottom]
      Brush.Style = bsClear
      Pen.Color = 10015486
      Transparent = False
    end
    object btRetirarFiltro: TTS_SpeedButton
      Left = 261
      Top = 261
      Width = 93
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = '&Retirar Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        B2030000424DB203000000000000720100002800000018000000180000000100
        08000000000040020000E50E0000E50E00004F0000004F000000030303000B0B
        0B0016161100161616002A2A23002A2A2A002A2A3100312A3100382A31003131
        3100313831001C23380038383800404838004040400040484000484840005048
        4000383848004038480040404800484048004048480048484800504848005050
        4800484050004848500050505000505850004850580058505800505858005858
        5800605858006A585800586058004048600058586000605860006A5860006060
        6000736A60006A6A6A00736A73006A73730073737300737B73007B7B7B00848F
        7B00848484008F8F8F00233198006A739800989898007B7BA1009898A10098A1
        A100A1A1A1003850AB00ABABAB00848FB600B6B6B6003148C000C0C0C000586A
        CA00CACACA00E0D4CA00607BD400848FD400D4D4D4000016E0003150E0005873
        EA007B8FEA00FF00FF005073FF0084A1FF00FFFFFF004B4B4B4B4B4B4B4B4B4B
        4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
        4B4B4B4B4B4B4B4B4B4B4B4B2B301C170E0E0E171C2930332B4B4B4B4B4B4B4B
        4B4B2B1732210E17212E363A3C3C332E2B2B2B4B4B4B4B4B4B4B091C462B1717
        2930333C40423E3C36323A4B4B4B4B4B4B4B091C462E17172130333A40423E3A
        36323A4B4B4B4B4B4B4B051C422B1717212E333A3E423E3A36323A4B4B4B4B4B
        4B4B091C462B17172930333A40423E3A33303A4B4B4B4B4B4B4B091C3E210E0C
        0E0E0E171C0218181818184B4B4B4B4B4B4B090E33210E0E212E333A3C014343
        4734184B4B4B4B4B4B4B051C422B1717212E333A400341474347184B4B4B4B4B
        4B4B0719432C1015282F333A40013743433F474B4B4B4B4B4B4B0520422C0F1B
        222E333A40050505040647494B4B4B4B4B4B051E462C1617292E333A40423E3A
        36323A4747454B4B4B4B08184023120E0C0E0E0E1C2B2E3032303A4B4A474B4B
        4B4B081833210D17212E333A3E1818181818184B4B4B4B4B4B4B0818432C1018
        212E33363E002E393525184B4B4B4B4B4B4B0818432C0F10212D323A3E014343
        473B184B4B4B4B4B4B4B0818432C14101D2D32363E0344474347184B4B4B4B4B
        4B4B08183321111A1D2D30363C013D434348474B4B4B4B4B4B4B051B3324130C
        171517171C030505050B474D4B4B4B4B4B4B0A1D382E30313336333336363332
        2E293247474B4B4B4B4B4B4B2A27211F261D2121212129292B4B4B4B4C474B4B
        4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B}
      ParentFont = False
      OnClick = btRetirarFiltroClick
      RepeatedClick = False
      Border = True
    end
    object TS_Label6: TTS_Label
      Left = 333
      Top = 90
      Width = 56
      Caption = 'Grupo:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label7: TTS_Label
      Left = 300
      Top = 111
      Width = 89
      Caption = 'Tipo Entrega:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label8: TTS_Label
      Left = 333
      Top = 132
      Width = 56
      Caption = 'Zona:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label9: TTS_Label
      Left = 300
      Top = 153
      Width = 89
      Caption = 'Plano Pagamento:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object Grid: TTS_QDBGrid
      Left = 6
      Top = 31
      Width = 292
      Height = 223
      TabStop = False
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = '|'
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyDown = GridKeyDown
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_FavorecidosDS
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEnterThrough, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowHeader = False
      Anchors = [akLeft, akTop, akBottom]
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_AppendOnEnter = False
      RowFooterNodeFont.Charset = DEFAULT_CHARSET
      RowFooterNodeFont.Color = clWindowText
      RowFooterNodeFont.Height = -11
      RowFooterNodeFont.Name = 'Tahoma'
      RowFooterNodeFont.Style = [fsBold]
      TS_AccountFooterStyle = False
      TS_TipoLocalizar = tlFavorecidos
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
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'Nome'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridID: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object GridNome: TdxDBGridMaskColumn
        Caption = 'Cliente'
        Width = 292
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nome'
      end
      object GridCargo: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Cargo'
      end
      object GridCliente: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Cliente'
      end
      object GridPayrollItem: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PayrollItem'
      end
      object GridImagem: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Imagem'
      end
      object GridIDPayrollItem: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDPayrollItem'
      end
    end
    object ckbLimiteCredito: TTS_CheckBox
      Left = 303
      Top = 177
      Width = 104
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 2
      Caption = 'Limite de Cr'#233'dito'
      DisableEdit = False
      Height = 22
    end
    object cmbLimite: TTS_ComboBox
      Left = 409
      Top = 177
      Width = 81
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 4
      Text = 'maior que'
      DropDownListStyle = True
      Items.Strings = (
        'maior que'
        'menor que'
        'igual a'
        'diferente de')
      Height = 19
    end
    object edLimite: TTS_CurrencyEdit
      Left = 490
      Top = 177
      Width = 44
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 5
      Alignment = taRightJustify
      DisplayFormat = '##0'
      Height = 24
      StoredValues = 1
    end
    object PopUpTPreco: TTS_PopupEdit
      Left = 390
      Top = 26
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 0
      PopupControl = cmbTabelaPreco
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpTPrecoCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object PopUpAtividade: TTS_PopupEdit
      Left = 390
      Top = 46
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 1
      PopupControl = cmbAtividade
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpAtividadeCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object ckbDescontoPadrao: TTS_CheckBox
      Left = 303
      Top = 196
      Width = 106
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = 'Desconto padr'#227'o'
      DisableEdit = False
      Height = 22
    end
    object cmbGrupos: TTS_CheckListBox
      Left = 534
      Top = 214
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 6
      Visible = False
      DataSet = C_Grupos
      KeyField = 'GRUPOCLIENTE'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object PopUpQualidade: TTS_PopupEdit
      Left = 390
      Top = 67
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 8
      PopupControl = cmbQualidade
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpQualidadeCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object PopUpGrupo: TTS_PopupEdit
      Left = 390
      Top = 88
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 9
      PopupControl = cmbGrupos
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpGrupoCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object PopUpTipoEntrega: TTS_PopupEdit
      Left = 390
      Top = 109
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 10
      PopupControl = cmbTipoEntrega
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpTipoEntregaCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object PopUpZona: TTS_PopupEdit
      Left = 390
      Top = 130
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 11
      PopupControl = cmbZona
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpZonaCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object PopUpPlanoPagamento: TTS_PopupEdit
      Left = 390
      Top = 151
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 12
      PopupControl = cmbPlanoPagamento
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpPlanoPagamentoCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object cmbDesconto: TTS_ComboBox
      Left = 409
      Top = 196
      Width = 81
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 13
      Text = 'maior que'
      DropDownListStyle = True
      Items.Strings = (
        'maior que'
        'menor que'
        'igual a'
        'diferente de')
      Height = 19
    end
    object edDesconto: TTS_CurrencyEdit
      Left = 490
      Top = 196
      Width = 44
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 14
      Alignment = taRightJustify
      DisplayFormat = '##0'
      Height = 19
      StoredValues = 1
    end
    object edFavorecido: TTS_EditFavorecido
      Left = 90
      Top = 6
      Width = 208
      Hint = 
        '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
        '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
        'a pelo EIN. Ex: EIN:6719034663'
      Style.BorderColor = 14859922
      Style.ButtonStyle = btsFlat
      TabOrder = 15
      StyleController = DMProjeto.esGeral
      Buttons = <
        item
          Default = True
          Glyph.Data = {
            26050000424D260500000000000036040000280000000F0000000F0000000100
            080000000000F000000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            070707070707070707000707070707070707070707FCFC000700070707070707
            0707070704FEFC00070007070707070707070704FEFC00070700070707070707
            0707FCFEFC0007070700070707000000000707A4000707070700070700060606
            0600A4A40707070707000707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
            FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
            FEFE060007070707070007FEFFFFFFFEFEFE000707070707070007A4FFFFFFFE
            FE060707070707070700070707A4A4A400070707070707070700070707070707
            07070707070707070700}
          Kind = bkGlyph
          Width = 18
        end
        item
          Default = False
          Glyph.Data = {
            06050000424D060500000000000036040000280000000D0000000D0000000100
            080000000000D000000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            0707070707070700000007070707070707070707070707000000070707070700
            00000707070707000000070707070700FC000707070707000000070707070700
            FC000707070707000000070700000000FC000000000707000000070700FCFCFC
            FCFCFCFC000707000000070700000000FC000000000707000000070707070700
            FC000707070707000000070707070700FC000707070707000000070707070700
            0000070707070700000007070707070707070707070707000000070707070707
            07070707070707000000}
          Kind = bkGlyph
          Width = 17
        end>
      SelecionarVarios = True
      C_Localizar = DMProjeto.C_LocalizarFav
      ID = 0
      OnSelecionou = edFavorecidoSelecionou
      Height = 19
      ExistButtons = True
    end
    object PopUpVendedor: TTS_PopupEdit
      Left = 390
      Top = 6
      Width = 202
      Style.BorderColor = 14859922
      Style.BorderStyle = xbsSingle
      TabOrder = 16
      PopupControl = cmbVendedor
      PopupFormBorderStyle = pbsSysPanel
      PopupClientEdge = True
      OnCloseUp = PopUpVendedorCloseUp
      LookupKeyValue = 0
      Height = 19
    end
    object cmbVendedor: TTS_CheckListBox
      Left = 600
      Top = 128
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 17
      Visible = False
      DataSet = C_Vendedor
      KeyField = 'FAVORECIDO'
      ListField = 'VENDEDOR'
      Transparent = False
    end
    object cmbTabelaPreco: TTS_CheckListBox
      Left = 588
      Top = 160
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 18
      Visible = False
      DataSet = C_TabelaPreco
      KeyField = 'TABELAPRECO'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object cmbAtividade: TTS_CheckListBox
      Left = 574
      Top = 180
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 19
      Visible = False
      DataSet = C_Atividade
      KeyField = 'TIPOATIVIDADE'
      ListField = 'ATIVIDADE'
      Transparent = False
    end
    object cmbQualidade: TTS_CheckListBox
      Left = 554
      Top = 200
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 20
      Visible = False
      DataSet = C_Qualidade
      KeyField = 'QUALIDADE'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object cmbTipoEntrega: TTS_CheckListBox
      Left = 516
      Top = 228
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 21
      Visible = False
      DataSet = C_TipoEntrega
      KeyField = 'TIPOENTREGA'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object cmbZona: TTS_CheckListBox
      Left = 494
      Top = 240
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 22
      Visible = False
      DataSet = C_Zona
      KeyField = 'ZONA'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object cmbPlanoPagamento: TTS_CheckListBox
      Left = 452
      Top = 254
      Width = 198
      Height = 97
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 23
      Visible = False
      DataSet = C_PlanoPagamento
      KeyField = 'PLANOPAGAMENTO'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  object C_Favorecidos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 19
    Top = 23
    object C_FavorecidosID: TIntegerField
      FieldName = 'ID'
    end
    object C_FavorecidosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object C_FavorecidosCargo: TStringField
      FieldName = 'Cargo'
    end
    object C_FavorecidosCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object C_FavorecidosPayrollItem: TStringField
      FieldName = 'PayrollItem'
      Size = 50
    end
    object C_FavorecidosImagem: TIntegerField
      FieldName = 'Imagem'
    end
    object C_FavorecidosIDPayrollItem: TIntegerField
      FieldName = 'IDPayrollItem'
    end
  end
  object C_FavorecidosDS: TDataSource
    DataSet = C_Favorecidos
    Left = 23
    Top = 65
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select '
      '  GRUPOCLIENTE, DESCRICAO'
      'from GRUPOSCLIENTE'
      'order by DESCRICAO')
    Left = 84
    Top = 23
  end
  object P_Grupos: TDataSetProvider
    DataSet = Q_Grupos
    Constraints = True
    Left = 84
    Top = 68
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Grupos'
    Left = 84
    Top = 110
    object C_Grupos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_GruposGRUPOCLIENTE: TIntegerField
      FieldName = 'GRUPOCLIENTE'
      Required = True
    end
    object C_GruposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_Vendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select FAVORECIDO, NOME As VENDEDOR'
      'From FAVORECIDOS'
      'Where tipofavorecido = 3'
      'And IsVendedor='#39'S'#39' And Desativado='#39'N'#39
      'Order By NOME')
    Left = 160
    Top = 23
  end
  object P_Vendedor: TDataSetProvider
    DataSet = Q_Vendedor
    Constraints = True
    Left = 160
    Top = 68
  end
  object C_Vendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedor'
    Left = 160
    Top = 116
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_VendedorFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_VendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
  end
  object Q_TabelaPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TABELAPRECO From TabelasPreco')
    Left = 238
    Top = 23
  end
  object P_TabelaPreco: TDataSetProvider
    DataSet = Q_TabelaPreco
    Constraints = True
    Left = 238
    Top = 68
  end
  object C_TabelaPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelaPreco'
    Left = 238
    Top = 116
    object IntegerField2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TabelaPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelaPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
    end
  end
  object Q_Atividade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOATIVIDADE, DESCRICAO As ATIVIDADE'
      'From TIPOSATIVIDADE')
    Left = 14
    Top = 150
  end
  object P_Atividade: TDataSetProvider
    DataSet = Q_Atividade
    Constraints = True
    Left = 14
    Top = 195
  end
  object C_Atividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Atividade'
    Left = 14
    Top = 243
    object IntegerField3: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_AtividadeTIPOATIVIDADE: TIntegerField
      FieldName = 'TIPOATIVIDADE'
      Required = True
    end
    object C_AtividadeATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 30
    end
  end
  object Q_Qualidade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select descricao, qualidade From Qualidades')
    Left = 76
    Top = 155
  end
  object P_Qualidade: TDataSetProvider
    DataSet = Q_Qualidade
    Constraints = True
    Left = 76
    Top = 200
  end
  object C_Qualidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Qualidade'
    Left = 76
    Top = 244
    object IntegerField4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_QualidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_QualidadeQUALIDADE: TIntegerField
      FieldName = 'QUALIDADE'
      Required = True
    end
  end
  object Q_TipoEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select DESCRICAO, TIPOENTREGA From TIPOSENTREGA')
    Left = 140
    Top = 161
  end
  object P_TipoEntrega: TDataSetProvider
    DataSet = Q_TipoEntrega
    Constraints = True
    Left = 140
    Top = 204
  end
  object C_TipoEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TipoEntrega'
    Left = 144
    Top = 246
    object IntegerField5: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TipoEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TipoEntregaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Required = True
    end
  end
  object Q_Zona: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select zona, descricao From Zonas order by descricao')
    Left = 195
    Top = 163
  end
  object P_Zona: TDataSetProvider
    DataSet = Q_Zona
    Constraints = True
    Left = 197
    Top = 208
  end
  object C_Zona: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Zona'
    Left = 203
    Top = 242
    object IntegerField6: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ZonaZONA: TIntegerField
      FieldName = 'ZONA'
      Required = True
    end
    object C_ZonaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_PlanoPagamento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select  DESCRICAO, PLANOPAGAMENTO'
      'From PLANOSPAGAMENTO'
      'Where Tipo in ('#39'S'#39', '#39'A'#39')')
    Left = 263
    Top = 161
  end
  object P_PlanoPagamento: TDataSetProvider
    DataSet = Q_PlanoPagamento
    Constraints = True
    Left = 265
    Top = 206
  end
  object C_PlanoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanoPagamento'
    Left = 267
    Top = 246
    object IntegerField7: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_PlanoPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_PlanoPagamentoPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Required = True
    end
  end
  object C_FavorecidosIni: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 309
    Top = 47
    object IntegerField8: TIntegerField
      FieldName = 'ID'
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'Cargo'
    end
    object StringField3: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'PayrollItem'
      Size = 50
    end
    object IntegerField9: TIntegerField
      FieldName = 'Imagem'
    end
    object IntegerField10: TIntegerField
      FieldName = 'IDPayrollItem'
    end
  end
end

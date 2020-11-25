inherited FrmPlanos_Pagamento: TFrmPlanos_Pagamento
  Left = 447
  Top = 178
  Width = 728
  Height = 460
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 597
    Height = 379
    inherited btComando1: TTS_SpeedButton
      Hint = 'Visualizar o Exemplo de Plano de Pagamento'
      Caption = 'Visualizar Exemplo'
      Visible = True
      OnClick = TS_SpeedButton1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 345
    end
  end
  inherited pnDados: TTS_Panel
    Width = 597
    Height = 379
    inherited Grid: TTS_QDBGrid
      Width = 595
      Height = 377
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridTIPO: TdxDBGridMaskColumn
        Caption = 'Tipo'
        HeaderAlignment = taCenter
        Width = 30
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
      end
      object GridPDESCONTO: TdxDBGridMaskColumn
        Caption = 'Desconto'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDESCONTO'
      end
      object GridJUROS: TdxDBGridMaskColumn
        Caption = 'Juros'
        HeaderAlignment = taCenter
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS'
      end
      object GridQTDPARCELAS: TdxDBGridMaskColumn
        Caption = 'Parcelas'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDPARCELAS'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 595
      Height = 377
    end
    inherited sbDados: TTS_Panel
      Tag = -1
      Width = 595
      Height = 377
      HelpContext = -1
      Color = 14542583
      object ImgZero: TTS_Image
        Left = 16
        Top = 216
        Width = 21
        Height = 21
        Picture.Data = {
          07544269746D6170C6050000424DC60500000000000036040000280000001400
          0000140000000100080000000000900100000000000000000000000100000001
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AA
          FF0000AAFF000092DC00007AB90000629600004A730000325000D4E3FF00B1C7
          FF008EABFF006B8FFF004873FF002557FF000055FF000049DC00003DB9000031
          96000025730000195000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525
          FF000000FE000000DC000000B900000096000000730000005000E3D4FF00C7B1
          FF00AB8EFF008F6BFF007348FF005725FF005500FF004900DC003D00B9003100
          96002500730019005000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25
          FF00AA00FF009200DC007A00B900620096004A00730032005000FFD4FF00FFB1
          FF00FF8EFF00FF6BFF00FF48FF00FF25FF00FE00FE00DC00DC00B900B9009600
          96007300730050005000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25
          AA00FF00AA00DC009200B9007A009600620073004A0050003200FFD4E300FFB1
          C700FF8EAB00FF6B8F00FF487300FF255700FF005500DC004900B9003D009600
          31007300250050001900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF25
          2500FE000000DC000000B9000000960000007300000050000000FFE3D400FFC7
          B100FFAB8E00FF8F6B00FF734800FF572500FF550000DC490000B93D00009631
          00007325000050190000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA
          2500FFAA0000DC920000B97A000096620000734A000050320000FFFFD400FFFF
          B100FFFF8E00FFFF6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B900009696
          00007373000050500000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF
          2500AAFF000092DC00007AB90000629600004A73000032500000E3FFD400C7FF
          B100ABFF8E008FFF6B0073FF480057FF250055FF000049DC00003DB900003196
          00002573000019500000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF
          250000FE000000DC000000B90000009600000073000000500000D4FFE300B1FF
          C7008EFFAB006BFF8F0048FF730025FF570000FF550000DC490000B93D000096
          31000073250000501900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FF
          AA0000FFAA0000DC920000B97A000096620000734A0000503200D4FFFF00B1FF
          FF008EFFFF006BFFFF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B9000096
          96000073730000505000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6
          B600AAAAAA009E9E9E0092929200868686007A7A7A006E6E6E00626262005656
          56004A4A4A003E3E3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF000101010101E7E7E8EBEDEDEBE8E7E7010101010101010101E7EBF0F200E1
          E100F2F0EBE701010101010101E7EF00E0DEDDDDDDDDDEE000EFE70101010101
          E7EF00DDDBDCD9D9D9D9DCDBDD00EFE7010101E7EF00DDDBD9D9D9D9D9D9D9D9
          DBDD00EFE701E7EB00DDDBD9D9E00000E0D9D9D9D9DBDD00EBE7E7F0E0DBD9D9
          E000000000E0D9D9D9D9DBE0F0E7E8F2DEDBD9D90000DEDE0000D9D9D9D9DBDE
          F2E8EB00DDD9D9D90000D9D9E000E0D9D9D9D9DD00EBEDE1DDD9D9D90000D9D9
          DE0000D9D9D9D9DDE1EDEDE1DDD9D9D90000DED9D90000D9D9D9D9DDE1EDEB00
          DDD9D9D9E000E0D9D90000D9D9D9D9DD00EBE8F2DEDBD9D9D90000DEDE0000D9
          D9D9DBDEF2E8E7F0E0DBD9D9D9E000000000E0D9D9D9DBE0F0E7E7EB00DDDBD9
          D9D9E00000E0D9D9D9DBDD00EBE701E7EF00DDDBD9D9D9D9D9D9D9D9DBDD00EF
          E7010101E7EF00DDDBDBD9D9D9D9DBDBDD00EFE70101010101E7EF00E0DEDDDD
          DDDDDEE000EFE701010101010101E7EBF0F200E1E100F2F0EBE7010101010101
          010101E7E7E8EBEDEDEBE8E7E70101010101}
        Transparent = True
      end
      object TS_Shape4: TTS_Shape
        Left = 24
        Top = 234
        Width = 3
        Height = 95
        Brush.Color = 11648484
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape5: TTS_Shape
        Left = 337
        Top = 58
        Width = 255
        Height = 316
        Brush.Color = 14542583
        Pen.Color = 11911142
        Pen.Width = 2
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label1: TTS_Label
        Left = 9
        Top = 8
        Width = 61
        Height = 13
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdDescricao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 357
        Top = 144
        Width = 209
        Height = 15
        Alignment = taLeftJustify
        Caption = 'Para cada Parcela, ceder um desconto'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 443
        Top = 182
        Width = 118
        Height = 13
        Alignment = taLeftJustify
        Caption = 'dias de anteced'#234'ncia.'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 355
        Top = 75
        Width = 41
        Height = 13
        Alignment = taLeftJustify
        Caption = 'P.Juros:'
        FocusControl = TS_DBEdJuros
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 339
        Top = 9
        Width = 60
        Height = 13
        Caption = 'Tipo:'
        FocusControl = dxDBTipo
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label9: TTS_Label
        Left = 461
        Top = 68
        Width = 120
        Height = 27
        Alignment = taLeftJustify
        Caption = 'Conforme intervalo de dias das parcelas ao lado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 355
        Top = 211
        Width = 212
        Height = 27
        Alignment = taLeftJustify
        Caption = 'Informe para cada Parcela a quantidade de dias para pagamento:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = 357
        Top = 162
        Width = 22
        Height = 15
        Alignment = taLeftJustify
        Caption = 'de:'
        FocusControl = TS_DBEdPercDesconto
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label11: TTS_Label
        Left = 443
        Top = 162
        Width = 133
        Height = 15
        Alignment = taLeftJustify
        Caption = 'quando ela for paga com'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label13: TTS_Label
        Left = 357
        Top = 182
        Width = 22
        Height = 15
        Alignment = taLeftJustify
        Caption = 'at'#233
        FocusControl = TS_DBEdDias
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 346
        Top = 115
        Width = 75
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Periodicidade:'
        FocusControl = edPeriodicidade
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label14: TTS_Label
        Left = 448
        Top = 116
        Width = 22
        Alignment = taLeftJustify
        Caption = 'dias.'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape1: TTS_Shape
        Left = 12
        Top = 58
        Width = 315
        Height = 3
        Brush.Color = 11911142
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape3: TTS_Shape
        Left = 20
        Top = 50
        Width = 124
        Height = 19
        Brush.Color = 11911142
        Pen.Style = psClear
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label15: TTS_Label
        Left = 20
        Top = 52
        Width = 120
        Height = 17
        Alignment = taCenter
        Caption = 'N'#186' de Parcelas'
        Color = 9027548
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object imgUm: TTS_Image
        Left = 16
        Top = 216
        Width = 21
        Height = 21
        Picture.Data = {
          07544269746D6170C6050000424DC60500000000000036040000280000001400
          0000140000000100080000000000900100000000000000000000000100000001
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AA
          FF0000AAFF000092DC00007AB90000629600004A730000325000D4E3FF00B1C7
          FF008EABFF006B8FFF004873FF002557FF000055FF000049DC00003DB9000031
          96000025730000195000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525
          FF000000FE000000DC000000B900000096000000730000005000E3D4FF00C7B1
          FF00AB8EFF008F6BFF007348FF005725FF005500FF004900DC003D00B9003100
          96002500730019005000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25
          FF00AA00FF009200DC007A00B900620096004A00730032005000FFD4FF00FFB1
          FF00FF8EFF00FF6BFF00FF48FF00FF25FF00FE00FE00DC00DC00B900B9009600
          96007300730050005000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25
          AA00FF00AA00DC009200B9007A009600620073004A0050003200FFD4E300FFB1
          C700FF8EAB00FF6B8F00FF487300FF255700FF005500DC004900B9003D009600
          31007300250050001900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF25
          2500FE000000DC000000B9000000960000007300000050000000FFE3D400FFC7
          B100FFAB8E00FF8F6B00FF734800FF572500FF550000DC490000B93D00009631
          00007325000050190000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA
          2500FFAA0000DC920000B97A000096620000734A000050320000FFFFD400FFFF
          B100FFFF8E00FFFF6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B900009696
          00007373000050500000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF
          2500AAFF000092DC00007AB90000629600004A73000032500000E3FFD400C7FF
          B100ABFF8E008FFF6B0073FF480057FF250055FF000049DC00003DB900003196
          00002573000019500000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF
          250000FE000000DC000000B90000009600000073000000500000D4FFE300B1FF
          C7008EFFAB006BFF8F0048FF730025FF570000FF550000DC490000B93D000096
          31000073250000501900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FF
          AA0000FFAA0000DC920000B97A000096620000734A0000503200D4FFFF00B1FF
          FF008EFFFF006BFFFF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B9000096
          96000073730000505000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6
          B600AAAAAA009E9E9E0092929200868686007A7A7A006E6E6E00626262005656
          56004A4A4A003E3E3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF000101010101E7E7E8EBEDEDEBE8E7E7010101010101010101E7EBF0F200E1
          E100F2F0EBE701010101010101E7EF00E0DEDDDDDDDDDEE000EFE70101010101
          E7EF00DDDBDCD9D9D9D9DCDBDD00EFE7010101E7EF00DDDBD9D9D9D9D9D9D9D9
          DBDD00EFE701E7EB00DDDBD9D9D90000DDD9D9D9D9DBDD00EBE7E7F0E0DBD9D9
          D9D9E100DFD9D9D9D9D9DBE0F0E7E8F2DEDBD9D9D9D9E100E1D9D9D9D9D9DBDE
          F2E8EB00DDD9D9D9D9D9DF0000D9D9D9D9D9D9DD00EBEDE1DDD9D9D9D9D9DD00
          00DDD9D9D9D9D9DDE1EDEDE1DDD9D9D9D9D9DD0000DFD9D9D9D9D9DDE1EDEB00
          DDD9D9D9D900000000E1D9D9D9D9D9DD00EBE8F2DEDBD9D9D900000000E1D9D9
          D9D9DBDEF2E8E7F0E0DBD9D9D9D9DF000000DDD9D9D9DBE0F0E7E7EB00DDDBD9
          D9D9D9D9E100DDD9D9DBDD00EBE701E7EF00DDDBD9D9D9D9D9D9D9D9DBDD00EF
          E7010101E7EF00DDDBDBD9D9D9D9DBDBDD00EFE70101010101E7EF00E0DEDDDD
          DDDDDEE000EFE701010101010101E7EBF0F200E1E100F2F0EBE7010101010101
          010101E7E7E8EBEDEDEBE8E7E70101010101}
        Transparent = True
      end
      object dxfLabel1: TdxfLabel
        Left = 94
        Top = 213
        Width = 25
        Height = 23
        AutoSize = False
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Style = dxfOutLine
        Angle = 0
        Effect3D.Style = dxfFun
        Effect3D.Orientation = dxfLeftTop
        Effect3D.Depth = 4
        Effect3D.ShadowedColor = 11775972
        PenWidth = 1
      end
      object TS_Shape2: TTS_Shape
        Left = 207
        Top = 227
        Width = 133
        Height = 3
        Brush.Color = 11648484
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape6: TTS_Shape
        Left = 24
        Top = 261
        Width = 290
        Height = 113
        Brush.Color = 13359603
        Pen.Color = 11648484
        Pen.Width = 2
        Shape = stRoundRect
        Transparent = False
      end
      object TS_Label6: TTS_Label
        Left = 49
        Top = 279
        Width = 89
        Caption = 'Tipo da Entrada:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbPercentual: TTS_Label
        Left = 30
        Top = 309
        Width = 108
        Caption = 'Percentual M'#237'nimo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbCarencia: TTS_Label
        Left = 31
        Top = 337
        Width = 107
        Caption = 'Car'#234'ncia para Pgto.:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label12: TTS_Label
        Left = 339
        Top = 32
        Width = 60
        Height = 13
        Caption = 'V'#225'lido at'#233':'
        FocusControl = dfValidade
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label16: TTS_Label
        Left = 3
        Top = 204
        Width = 52
        Height = 12
        Alignment = taCenter
        Caption = '(Entrada)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label18: TTS_Label
        Left = 170
        Top = 204
        Width = 52
        Height = 12
        Alignment = taCenter
        Caption = '(Parcelas)'
        FocusControl = dfParcelas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label20: TTS_Label
        Left = 484
        Top = 116
        Width = 51
        Alignment = taLeftJustify
        Caption = 'Comiss'#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdDescricao: TTS_DBEdit
        Tag = -2
        Left = 74
        Top = 5
        Width = 250
        HelpContext = -2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 21
      end
      object TS_DBEdPercDesconto: TTS_DBEdit
        Tag = -2
        Left = 381
        Top = 160
        Width = 56
        HelpContext = -2
        TabOrder = 16
        DataField = 'PDESCONTO'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdDias: TTS_DBEdit
        Tag = -2
        Left = 381
        Top = 179
        Width = 56
        HelpContext = -2
        TabOrder = 17
        DataField = 'DIAS_ANTECIPACAO'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdJuros: TTS_DBEdit
        Tag = -2
        Left = 399
        Top = 72
        Width = 55
        HelpContext = -2
        TabOrder = 12
        DataField = 'JUROS'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfParcelas: TTS_DBEdit
        Tag = -2
        Left = 179
        Top = 215
        Width = 34
        HelpContext = -2
        Color = 13359603
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.Shadow = False
        TabOrder = 8
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'QTDPARCELAS'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        ReadOnly = True
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        StoredValues = 65
      end
      object dxDBTipo: TdxDBImageEdit
        Tag = -2
        Left = 402
        Top = 5
        Width = 190
        HelpContext = -2
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        DataField = 'TIPO'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Descriptions.Strings = (
          'Para Vendas a Clientes'
          'Para Compras a Fornecedores'
          'Para Vendas e para Compras'
          'Reparcelamento')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3')
        Values.Strings = (
          'S'
          'E'
          'A'
          'R')
      end
      object dbgIntervalos: TTS_QDBGrid
        Tag = -2
        Left = 354
        Top = 242
        Width = 223
        Height = 120
        HelpContext = -2
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Color = 14542583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = ppmGrid
        TabOrder = 18
        AutoSearchColor = 6611199
        AutoSearchTextColor = clBlue
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMPlanos_Pagamento.C_IntervaloDS
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
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoSmartRefresh, edgoSmartReload, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        TS_PermitirQuantidade = False
        TS_DescriptionCanChange = False
        TS_GridMenuOptions = []
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
        TS_SelectedColumn = 'Parcela'
        TS_ID = 0
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgIntervalosColumn1: TdxDBGridColumn
          Caption = 'N'#186' da Parcela'
          HeaderAlignment = taCenter
          ReadOnly = True
          TabStop = False
          Width = 73
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Parcela'
        end
        object dbgIntervalosColumn2: TdxDBGridColumn
          Alignment = taCenter
          Caption = 'Qtd. de Dias'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Dias'
        end
        object dbgIntervalosColumn3: TdxDBGridDateColumn
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Data'
        end
      end
      object edPeriodicidade: TTS_DBEdit
        Tag = -2
        Left = 413
        Top = 114
        Width = 32
        HelpContext = -2
        TabOrder = 14
        DataField = 'PERIODICIDADE'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object cbUma: TdxfCheckBox
        Left = 19
        Top = 100
        Width = 214
        Height = 21
        Cursor = crHandPoint
        Hint = 'U'
        Checked = True
        AutoSize = False
        GroupIndex = 1
        AllowAllUp = False
        Style = 8
        Caption = 'Apenas uma Parcela '
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
        OnClick = cbUmaClick
      end
      object cbCom: TdxfCheckBox
        Left = 18
        Top = 124
        Width = 215
        Height = 21
        Cursor = crHandPoint
        Hint = 'C'
        Checked = False
        AutoSize = False
        GroupIndex = 1
        AllowAllUp = False
        Style = 8
        Caption = 'V'#225'rias Parcelas COM Entrada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        OnClick = cbUmaClick
      end
      object cbSem: TdxfCheckBox
        Left = 18
        Top = 148
        Width = 214
        Height = 21
        Cursor = crHandPoint
        Hint = 'S'
        Checked = False
        AutoSize = False
        GroupIndex = 1
        AllowAllUp = False
        Style = 8
        Caption = 'V'#225'rias Parcelas SEM Entrada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
        OnClick = cbUmaClick
      end
      object dfTipoEntrada: TTS_DBImageEdit
        Left = 142
        Top = 277
        Width = 158
        Style.BorderColor = 9741530
        TabOrder = 9
        DataField = 'TIPOENTRADA'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Descriptions.Strings = (
          'Divis'#227'o proporcional'
          'Percentual M'#237'nimo')
        ImageIndexes.Strings = (
          '0'
          '1')
        Values.Strings = (
          'D'
          'P')
        Height = 21
      end
      object dfPercentual: TTS_DBEdit
        Tag = -2
        Left = 141
        Top = 307
        Width = 68
        HelpContext = -2
        Style.BorderColor = 9741530
        TabOrder = 10
        DataField = 'PERCENTUALENTRADA'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        ReadOnly = False
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
        StoredValues = 64
      end
      object dfCarencia: TTS_DBEdit
        Tag = -2
        Left = 141
        Top = 334
        Width = 68
        HelpContext = -2
        Style.BorderColor = 9741530
        TabOrder = 11
        DataField = 'CARENCIAENTRADA'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object DBEdit1: TDBEdit
        Left = 277
        Top = 117
        Width = 15
        Height = 19
        DataField = 'EsquemaParcelas'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        TabOrder = 19
        Visible = False
        OnChange = DBEdit1Change
      end
      object DBEdit2: TDBEdit
        Left = 287
        Top = 142
        Width = 15
        Height = 19
        DataField = 'TIPOENTRADA'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        TabOrder = 20
        Visible = False
      end
      object dfValidade: TTS_DBEditDate
        Left = 402
        Top = 28
        Width = 99
        TabOrder = 2
        DataField = 'VALIDADE'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ButtonGlyph.Data = {
          AE040000424DAE0400000000000036040000280000000A0000000A0000000100
          0800000000007800000000000000000000000001000000000000000000000000
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Height = 21
      end
      object TS_DBCheckBox1: TTS_DBCheckBox
        Left = 396
        Top = 89
        Width = 184
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 13
        Caption = 'Negoci'#225'veis durante a Venda.'
        DataField = 'JUROSNEGOCIAVEIS'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        DisableEdit = False
        Height = 21
      end
      object cbVar: TdxfCheckBox
        Left = 19
        Top = 76
        Width = 282
        Height = 18
        Cursor = crHandPoint
        Hint = 'V'
        Checked = False
        GroupIndex = 1
        AllowAllUp = False
        Style = 8
        Caption = 'N'#250'mero de Parcelas Vari'#225'veis ( Calc. por Valor M'#237'nimo)'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        OnClick = cbUmaClick
      end
      object cbFixo: TdxfCheckBox
        Left = 19
        Top = 173
        Width = 214
        Height = 21
        Cursor = crHandPoint
        Hint = 'F'
        Checked = False
        AutoSize = False
        GroupIndex = 1
        AllowAllUp = False
        Style = 8
        Caption = 'V'#225'rias Parcelas Com Vencimentos Fixos'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 21
        OnClick = cbUmaClick
      end
      object pnValorMinimo: TTS_Panel
        Left = 2
        Top = 200
        Width = 335
        Height = 176
        BevelOuter = bvNone
        Color = 14542583
        TabOrder = 7
        Visible = False
        object TS_Label17: TTS_Label
          Left = 21
          Top = 11
          Width = 289
          Height = 69
          Alignment = taLeftJustify
          Caption = 
            'Para este tipo de calculo de parcelas '#233' preciso que seja informa' +
            'do o Menor Valor da Parcela. A partir deste valor, a quantidade ' +
            'de parcelas ser'#225' determinada. No quadro ao lado voc'#234' dever'#225' info' +
            'rmar a periodicidade e os juros (se houver).'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label19: TTS_Label
          Left = 21
          Top = 99
          Width = 128
          Height = 15
          Alignment = taLeftJustify
          Caption = 'Menor Valor das Parcelas:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object dfValorMinimo: TTS_DBMaskEdit
          Left = 149
          Top = 97
          Width = 91
          TabOrder = 0
          DataField = 'MENORVALOR'
          DataSource = DMPlanos_Pagamento.C_TabelaDS
          IgnoreMaskBlank = False
          StyleController = DMProjeto.esGeral
          Height = 19
        end
      end
      object edComissao: TTS_DBEdit
        Left = 534
        Top = 114
        Width = 54
        TabOrder = 15
        DataField = 'COMISSAO'
        DataSource = DMPlanos_Pagamento.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 595
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 712
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 215
      Caption = 'Planos de Pagamentos'
      Effect3D.ShadowedColor = 11911142
    end
    inherited btHelp: TTS_SpeedButton
      Left = 689
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 524
    Top = 493
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 530
    Top = 483
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 529
    Top = 491
  end
  inherited ImgPadrao: TImageList
    Left = 523
    Top = 490
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Planos de Pagamentos'
    Left = 651
    Top = 298
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 529
    Top = 480
    inherited Ajuda1: TMenuItem
      HelpContext = 343
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 546
    Top = 485
  end
  inherited Beep: TBTBeeper
    Left = 392
    Top = 352
  end
  inherited FormStorage: TFormStorage
    Left = 353
    Top = 65535
  end
  object ppmGrid: TTS_PopupMenu
    Left = 459
    Top = 336
    object Aplicarperiodicidadeapartirdaparcelacorrente2: TMenuItem
      Caption = 'Aplicar periodicidade a partir da parcela corrente'
      OnClick = Aplicarperiodicidadeapartirdaparcelacorrente2Click
    end
  end
end

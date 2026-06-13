inherited DlgGraficoFatComparativo: TDlgGraficoFatComparativo
  Left = 29
  Top = 28
  Width = 1138
  Height = 591
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label3: TTS_Label [0]
    Left = 743
    Top = 64
    Width = 58
    Caption = 'Vl Meta R$:'
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_Label4: TTS_Label [1]
    Left = 807
    Top = 64
    Width = 90
    Caption = 'Vl Meta R$:'
    FormatoTabela = False
    LinkToResult = 0
  end
  inherited pnNavigator: TTS_Panel
    Left = 1017
    Width = 113
    Height = 521
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 487
      Width = 111
    end
    inherited btComando2: TTS_SpeedButton
      Width = 111
      Caption = 'Imprimir Gr'#225'fico'
      Glyph.Data = {
        CA030000424DCA030000000000008A0100002800000018000000180000000100
        08000000000040020000210B0000210B00005500000055000000111111001111
        16001616160016161C001C1C1C00232323002A2A2A0031313100383838004040
        4000484048004848480050505000606060006A6A6A00736A6A006AB66A007373
        7300847B8400848484008F8484008F848F008F8F8F00988F8F00F4A18F00FFAB
        8F00988F980098989800A198980098A19800E0A19800FFB69800A198A100A1A1
        A100ABA1A100D4A1A100E0ABA100F4ABA100FFB6A100FFC0A100ABA1AB00ABAB
        AB00B6ABAB00E0ABAB00E0B6AB00FFC0AB00FFCAAB00B6ABB600B6B6B600C0B6
        B600E0B6B600E0C0B600FFCAB600B6B6C000C0B6C000C0C0C000CAC0C000EAC0
        C000EACAC000FFD4C000CAC0CA00CACACA00D4CACA00F4D4CA00FFD4CA00FFE0
        CA00CAF4CA00CACAD400CAD4D400D4D4D400E0D4D400EAD4D400D4E0D400E0E0
        D400FFE0D400FFEAD400E0E0E000EAE0E000FFEAE000EAEAEA00FFF4EA00F4F4
        F400FFF4F400FF00FF00FFFFFF00535353535353535353535353535353535353
        53535353535353535353535353531B361B1353531B3D3E291B53535353535353
        535353531B305151291B090B0E1B31464C3D21535353535353531B224C54544F
        221C070004060B0E1B374C4517535353531B45545251524F2121120C07040204
        060B11165353531637515151514C301B13161B211C130D090502061453535316
        4F514F452917213D2116141314172121160E0C14535353164C3E2216223D454C
        4C3D30221B161413161B2116535353161C16293D453D3D4D51514F4C3D372921
        1716141353535316293D3D3D3D3D4C51302F37454C4C453D3730291653535316
        3D3D3D3D3D4551291D10211B1B29303D45453D1B5353535329453D3D4C4C2129
        4F424F4C25291C171B292921535353535321303D301B315151514F4C4C4C453D
        3717165353535353535353142945371B30454C4C4C4C4C453022535353535353
        5353531B5151452929303D3D3D3D301B225353535353535353535353474A4140
        3F3F3F47464530535353535353535353535353532C4A403B342D26261F395353
        5353535353535353535353532C4A403B342D261F185353535353535353535353
        53535353334A403B342D261F18535353535353535353535353535353334A403B
        342D261F25535353535353535353535353535353334A403B342D262525535353
        5353535353535353535353324E4A403B342D2725535353535353535353535353
        53535333504A413B3434252553535353535353535353535353532333322C2C24
        241E255353535353535353535353}
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Width = 111
      Caption = 'Atualizar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
        33333333777777733333333330CCC03333333333F7777733F3333330330C0330
        33333337337773373333333333303333333333F33337333333F3303333333333
        3033373333333333373333333333333333333F3333333333333F033333333333
        3303733333333333337333333333333333333F3333333333333F033333333333
        3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
        B70377777F333377777F09990333330BBB0377777F333377777F099903333307
        B70377777F3333777773099903333330003377777F3333377733000003333330
        3333777773F3F3F7333333333030303333333333373737333333}
      NumGlyphs = 2
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 111
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 111
      Visible = False
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 111
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1130
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 141
      Caption = 'Escolha a Meta Cadastrada : '
      Visible = False
      WordWrap = True
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1187
    end
    inherited lbCaption: TdxfLabel
      Width = 377
      AutoSize = True
      Caption = 'GraficoFatComparativo de Faturamento'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 1017
    Height = 521
    Color = 15724519
    object vlFaturamento: TTS_Label
      Left = 806
      Top = 82
      Width = 90
      FormatoTabela = False
      LinkToResult = 0
    end
    object vlProporcao: TTS_Label
      Left = 807
      Top = 117
      Width = 90
      FormatoTabela = False
      LinkToResult = 0
    end
    object lb_Periodo: TTS_Label
      Left = 740
      Top = 46
      Width = 161
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object Chart1: TChart
      Left = 1
      Top = 2
      Width = 1016
      Height = 519
      Legend.Alignment = laTop
      Legend.TextStyle = ltsPlain
      Legend.Visible = False
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 0
      PrintProportional = False
      Title.CustomPosition = True
      Title.Left = 90
      Title.Text.Strings = (
        'Grafico de Vendas ( Faturamento em R$ )')
      Title.Top = 9
      BottomAxis.Title.Caption = 'Mes / Ano'
      LeftAxis.Title.Caption = 'Montante em R$ '
      View3D = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      TabOrder = 0
      PrintMargins = (
        14
        35
        16
        39)
      object Series1: TBarSeries
        Marks.Angle = 90
        Marks.Arrow.SmallDots = True
        Marks.Arrow.Visible = False
        Marks.ArrowLength = -21
        Marks.Frame.SmallDots = True
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = True
        SeriesColor = clRed
        BarStyle = bsRectGradient
        Gradient.Direction = gdTopBottom
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
      object Series2: TBarSeries
        Marks.Angle = 90
        Marks.ArrowLength = -22
        Marks.Style = smsValue
        Marks.Visible = True
        SeriesColor = 16744576
        VertAxis = aBothVertAxis
        BarStyle = bsRectGradient
        Gradient.Direction = gdTopBottom
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Order = loNone
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 134
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'GraficoFatComparativo de Faturamento'
    Left = 209
    Top = 178
  end
  object Q_GraficoFatComparativo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT mesano, total FROM faturamentosimples F'
      'ORDER BY  ano, mes')
    Left = 332
    Top = 232
  end
  object C_GraficoFatComparativo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GraficoFatComparativo'
    Left = 272
    Top = 273
    object C_GraficoFatComparativoMESANO: TStringField
      FieldName = 'MESANO'
      Size = 10
    end
    object C_GraficoFatComparativoTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object P_GraficoFatComparativo: TDataSetProvider
    DataSet = Q_GraficoFatComparativo
    Constraints = True
    Left = 336
    Top = 293
  end
  object C_GraficoFatComparativoDS: TDataSource
    DataSet = C_GraficoFatComparativo
    Left = 324
    Top = 365
  end
  object ppmGrid: TTS_PopupMenu
    Left = 87
    Top = 376
  end
  object ChartPreviewer1: TChartPreviewer
    Chart = Chart1
    Left = 31
    Top = 229
  end
  object Q_Atualiza: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 246
    Top = 358
  end
  object TSeriesTextSource
    Fields = <>
    FieldSeparator = ','
  end
  object IBQuery1: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT M.id,  M.titulo'
      'FROM metasfaturamento M')
    Left = 468
    Top = 232
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = IBQuery1
    Constraints = True
    Left = 456
    Top = 277
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 452
    Top = 333
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 456
    Top = 385
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ClientDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
  end
  object Q_Detalhe: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select md.vendedor, f.nome, md.metaperiodo, mf.id, mf.datafinal,' +
        ' mf.datainicial,  sum(sd.total) as fatperiodo'
      'from metasdetalhe md'
      'inner join metasfaturamento mf on md.id = mf.id'
      
        'left join saidas sd on md.vendedor = sd.vendedor and sd.data bet' +
        'ween mf.datainicial and mf.datafinal and sd.situacao = '#39'N'#39' and s' +
        'd.tipopadrao = 1'
      'left join favorecidos f on md.vendedor = f.favorecido'
      'where mf.id = :id'
      
        'group by md.vendedor, f.nome, md.metaperiodo, mf.id, mf.datafina' +
        'l, mf.datainicial')
    Left = 604
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object P_Detalhe: TDataSetProvider
    DataSet = Q_Detalhe
    Constraints = True
    Left = 584
    Top = 277
  end
  object C_DetalheDS: TDataSource
    DataSet = C_Detalhe
    Left = 596
    Top = 333
  end
  object C_Detalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Detalhe'
    Left = 552
    Top = 385
    object C_DetalheVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object C_DetalheNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_DetalheMETAPERIODO: TBCDField
      FieldName = 'METAPERIODO'
      Precision = 18
      Size = 3
    end
    object C_DetalheID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_DetalheDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
    end
    object C_DetalheDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
    end
    object C_DetalheFATPERIODO: TFloatField
      FieldName = 'FATPERIODO'
    end
  end
end

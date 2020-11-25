inherited DlgEmailsNaoCadastrados: TDlgEmailsNaoCadastrados
  Left = 229
  Top = 149
  Width = 622
  Height = 372
  Caption = 'DlgEmailsNaoCadastrados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 496
    Height = 295
    object dbgEmail: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 494
      Height = 293
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_EmailDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
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
      object dbgEmailFavorecido: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        Visible = False
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Favorecido'
      end
      object dbgEmailNome: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 193
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nome'
      end
      object dbgEmailTelefone: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Telefone'
      end
      object dbgEmailEmail: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 215
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Email'
      end
      object dbgEmailTelefone2: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Telefone2'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 496
    Height = 295
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 261
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Ok'
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
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 614
    inherited lbCaption: TdxfLabel
      Width = 418
      Caption = 'Pessoas/Empresas que n'#227'o possuem e-mail'
    end
    inherited lbEstadoForm: TTS_Label
      Width = 370
      Caption = 
        'Estas pessoas/empresas que n'#227'o tem e-mail cadastrado n'#227'o ser'#227'o e' +
        'nviados.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 578
    end
  end
  inherited FormsComponent: TFormsComponent
    Caption = 'Pessoas/Empresas que n'#227'o possuem e-mail'
  end
  object C_Email: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 72
    object C_EmailFavorecido: TIntegerField
      FieldName = 'Favorecido'
    end
    object C_EmailNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object C_EmailEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object C_EmailTelefone: TStringField
      FieldName = 'Telefone'
    end
    object C_EmailTelefone2: TStringField
      FieldName = 'Telefone2'
    end
  end
  object C_EmailDS: TDataSource
    DataSet = C_Email
    Left = 56
    Top = 128
  end
end

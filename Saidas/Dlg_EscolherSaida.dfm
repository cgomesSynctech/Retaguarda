inherited DlgEscolherSaida: TDlgEscolherSaida
  Left = 55
  Top = 124
  Width = 684
  Height = 303
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 558
    Height = 233
    Color = 16116702
    object Grid: TTS_QDBGrid
      Left = 1
      Top = 1
      Width = 556
      Height = 231
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SAIDA'
      SummaryGroups = <>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmGrid
      TabOrder = 1
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_SaidasDS
      Filter.Criteria = {00000000}
      GroupNodeColor = 16773849
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      TS_DescriptionCanChange = False
      TS_GridMenuOptions = [gmLayout, gmDados, gmAgrupar, gmImprimir, gmExportar]
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
      TS_SelectedColumn = 'NUMERO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object GridNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object GridDATA: TdxDBGridDateColumn
        Caption = 'Data'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object GridFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object GridTOTAL: TdxDBGridMaskColumn
        Caption = 'Total'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
      end
      object GridPEDIDO_CLIENTE: TdxDBGridMaskColumn
        Caption = 'P.O. Cliente'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PEDIDO_CLIENTE'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Opera'#231#227'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridOBS: TdxDBGridMaskColumn
        Caption = 'Mensagem ao Cliente'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 134
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object GridDESCONTO: TdxDBGridMaskColumn
        Caption = 'Desconto'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
      object GridFRETE: TdxDBGridMaskColumn
        Caption = 'Frete'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETE'
      end
      object GridTIPOMOVIMENTO: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMOVIMENTO'
      end
      object GridOUTRASDESPESAS: TdxDBGridMaskColumn
        Caption = 'Outras Despesas'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUTRASDESPESAS'
      end
      object GridJUROS: TdxDBGridMaskColumn
        Caption = 'Juros'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS'
      end
      object GridIMPOSTO: TdxDBGridMaskColumn
        Caption = 'Valor Tax'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPOSTO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 244
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        GroupIndex = 0
      end
    end
    object dfNumero: TTS_Edit
      Left = 121
      Top = 11
      Width = 113
      TabOrder = 0
      Visible = False
      StyleController = DMProjeto.esClientes
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 558
    Height = 233
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 199
    end
    inherited btComando2: TTS_SpeedButton
      AllowAllUp = True
      GroupIndex = 2
      Caption = 'Todas as Opera'#231#245'es'
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Todos os Clientes'
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Escolher'
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF000000000000000000000000000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555555555
        555555555555555555555555DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF27390D000000232F0F3D73003D73003D73003D73003D73000000001C1C14
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD7A7A7A55555576767692929292929292
        92929292929292925555556E6E6EDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF02FF0000000000003D73
        0024380B1615133156053D73003D73003D73003D73003D73003D7300283B0D00
        0000FF02FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDEDEDE5555555555559292927878786A6A6A8585859292929292929292
        929292929292929292927B7B7B555555DEDEDEDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FFFF00FFFF00FF000000417C2A417C2A325922333230
        FFFFFF23351A417C2A417C2A417C2A417C2A417C2A417C2A417C2A2B481E0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD55
        5555AEAEAEAEAEAE969696898989FFFFFF7E7E7EAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAE8B8B8B555555DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00
        FFFF00FFFF00FFFF00FF000000000000438242407A3E161513FFFFFFFFFFFF1D
        1C1A3E763D468845468845468845468845468845468845468845000000FF00FF
        FF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD555555555555BEBE
        BEB7B7B76A6A6AFFFFFFFFFFFF717171B4B4B4C2C2C2C2C2C2C2C2C2C2C2C2C2
        C2C2C2C2C2C2C2C2555555DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FF1E1E1D4382424382422E5236FFFFFFFFFFFFFFFFFFFFFFFF3460
        3D4A965C4A965C4A965C4A965C4A965C4A965C4A965C4B995F000000FF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD747474BEBEBEBEBEBE999999
        FFFFFFFFFFFFFFFFFFFFFFFFA4A4A4CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
        CDCDCDCDCFCFCF555555DDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF00
        0000438242438242000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16151348925B
        4B995F4B995F4B995F4B995F4B995F4B995F4B995F000000FF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDD555555BEBEBEBEBEBE555555FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF6A6A6AC9C9C9CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
        CFCFCF555555DDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0000004FAC
        7A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B4B344C9C654C
        9C654C9C654C9C654C9C654C9C654C9C654DA06B000000FF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDD555555DBDBDB555555FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF949494D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D3
        D3D3555555DDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0000004FAC7A21201E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31302E4081574DA06B4DA0
        6B4DA06B4DA06B4DA06B4DA06B4DA06B000000FF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDD555555DBDBDB767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF878787BBBBBBD3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D35555
        55DDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0000004FAC7A21201EFFFFFFFF
        FFFFFFFFFF1C1B19FFFFFFFFFFFFFFFFFFFFFFFF3C3B394EA4704EA4704EA470
        4EA4704EA4704EA4704EA470000000FF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DD555555DBDBDB767676FFFFFFFFFFFFFFFFFF707070FFFFFFFFFFFFFFFFFFFF
        FFFF939393D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6555555DDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FF0000004FAC7A21201EFFFFFFFFFFFF201F
        1E458460161513FFFFFFFFFFFFFFFFFFFFFFFF3C3B394FA8764FA8764FA8764F
        A8764FA8764FA876000000FF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD555555
        DBDBDB767676FFFFFFFFFFFF767676C0C0C06A6A6AFFFFFFFFFFFFFFFFFFFFFF
        FF939393D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8555555DDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FF0000004FAC7A305B425B5A59252422366B4D4FAC7A
        448F66161513FFFFFFFFFFFFFFFFFFFFFFFF3C3B39499E704FAC7A4FAC7A4FAC
        7A4FAC7A000000FF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD555555DBDBDB9F
        9F9FB5B5B57A7A7AAAAAAADBDBDBC5C5C56A6A6AFFFFFFFFFFFFFFFFFFFFFFFF
        939393D0D0D0DBDBDBDBDBDBDBDBDBDBDBDB555555DDDDDDDDDDDDDDDDDDFF00
        FFFF00FFFF00FF00000053C49747976C22362A448F6751B07E51B07E51B07E47
        976D3C3B39FFFFFFFFFFFFFFFFFFFFFFFF3C3B3951B07E51B07E51B07E4FAC7A
        000000FF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD555555EAEAEACCCCCC8484
        84C5C5C5DEDEDEDEDEDEDEDEDECCCCCC939393FFFFFFFFFFFFFFFFFFFFFFFF93
        9393DEDEDEDEDEDEDEDEDEDBDBDB555555DDDDDDDDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FF0000004DAB7E51B58551B58551B58551B58551B5854CA97C4EAC
        7F252422FFFFFFFFFFFFFFFFFFFFFFFF3C3B3951B58551B585232827FF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD555555D9D9D9E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1D7D7D7DBDBDB7A7A7AFFFFFFFFFFFFFFFFFFFFFFFF9393
        93E1E1E1E1E1E17C7C7CDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FF00000053C49752BB8B52BB8B52BB8B52BB8B52BB8B52BB8B52BB8B51B98A
        161513161513FFFFFFFFFFFFFFFFFF00000051B585232827FF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD555555EAEAEAE4E4E4E4E4E4E4E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E3E3E36A6A6A6A6A6AFFFFFFFFFFFFFFFFFF555555
        E1E1E17C7C7CDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00
        FF00000052C09252C09252C09255C19452C09252C09252C09252C09252C09252
        C09216151316151300000053C497232827FF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555E7E7E7E7E7E7E7E7E7EAEAEAE7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E76A6A6A6A6A6A555555EAEAEA7C7C7CDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FF000000
        53C49753C49753C497D6F0E6C7ECDDBBE7D6B1E4CFB5E5D2C7ECDDD6F1E653C4
        9753C4974CB2894CB289232827FF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDD555555EAEAEAEAEAEAEAEAEAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEAEAEAEAEAEADDDDDDDDDDDD7C7C7CDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF02FF00000000
        000053C49754C99DB0E6D2FFFFFFFFFFFFFFFFFFB2E6D356C99E54C99D53C497
        000000232827FF02FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDEDEDE555555555555EAEAEAEDEDEDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEEEEEEEDEDEDEAEAEA5555557C7C7CDEDEDEDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF232A
        2900000053C4976FD1AC81D7B76ED1AC54C99D56C99E000000000000FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDD7D7D7D555555EAEAEAFFFFFFFFFFFFFFFFFFEDED
        EDEEEEEE555555555555DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDD555555555555555555555555555555555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 676
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 158
      Caption = 'Escolher Invoice'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbEstadoForm: TTS_Label
      Width = 143
      Caption = 'Localize a Opera'#231#227'o desejada'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 640
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 275
    Top = 388
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 248
    Top = 373
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 365
    Top = 351
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Escolher Invoice'
    FirstEditField = dfNumero
    Left = 116
    Top = 159
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 420
    Top = 352
  end
  object Q_Saidas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_SaidasBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select s.*, F.Nome, t.Descricao'
      
        'from (Saidas s INNER JOIN Favorecidos f ON s.Favorecido = f.Favo' +
        'recido)'
      
        '        INNER JOIN TiposMovimento t ON t.TipoMovimento = s.TipoM' +
        'ovimento'
      'Where s.Data >= :DI and  s.Situacao = '#39'N'#39' ')
    UniDirectional = True
    Left = 212
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DI'
        ParamType = ptUnknown
      end>
  end
  object ppmGrid: TTS_PopupMenu
    Left = 510
    Top = 207
  end
  object P_Saidas: TDataSetProvider
    DataSet = Q_Saidas
    Constraints = True
    Left = 212
    Top = 205
  end
  object C_Saidas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Saidas'
    AfterScroll = C_SaidasAfterScroll
    Left = 263
    Top = 158
    object C_SaidasSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_SaidasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_SaidasDATA: TDateField
      FieldName = 'DATA'
    end
    object C_SaidasFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_SaidasOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_SaidasDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object C_SaidasFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object C_SaidasTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object C_SaidasTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_SaidasPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
      Size = 12
    end
    object C_SaidasOUTRASDESPESAS: TBCDField
      FieldName = 'OUTRASDESPESAS'
      Precision = 18
      Size = 2
    end
    object C_SaidasJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object C_SaidasIMPOSTO: TBCDField
      FieldName = 'IMPOSTO'
      Precision = 18
      Size = 2
    end
    object C_SaidasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_SaidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_SaidasDS: TDataSource
    DataSet = C_Saidas
    Left = 262
    Top = 205
  end
end

inherited FrmComissoesGerente: TFrmComissoesGerente
  Left = 190
  Top = 215
  Width = 414
  Height = 292
  Caption = 'Funcionários / Payroll'
  Constraints.MinHeight = 230
  Constraints.MinWidth = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Top = 40
    Width = 288
    Height = 225
    Color = 15396297
    object TS_DBText1: TTS_DBText
      Left = 66
      Top = 45
      Width = 211
      Height = 14
      DataField = 'NOME'
      DataSource = DMFuncionarios.C_TabelaDS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
      EditOffSet.x = 0
      EditOffSet.y = 0
    end
    object Label1: TLabel
      Left = 5
      Top = 45
      Width = 43
      Height = 13
      Caption = 'Gerente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TS_Label1: TTS_Label
      Left = 5
      Top = 4
      Width = 270
      Height = 30
      Alignment = taLeftJustify
      Caption = 
        'Percentual de Comissão que o gerente irá receber sobre as vendas' +
        ' de outros Vendedores.'
      FormatoTabela = False
      LinkToResult = 0
    end
    object dxDBGrid1: TTS_QDBGrid
      Left = 4
      Top = 63
      Width = 278
      Height = 156
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      AutoSearchColor = 6611199
      AutoSearchTextColor = clBlue
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DMFuncionarios.C_ComissaoGerenteDS
      Filter.Criteria = {00000000}
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
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
      TS_SelectedColumn = 'lkVendedor'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object dxDBGrid1FUNCIONARIO: TdxDBGridLookupColumn
        Caption = 'Vendedor'
        HeaderAlignment = taCenter
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkVendedor'
      end
      object dxDBGrid1COMISSAO: TdxDBGridCalcColumn
        Caption = '% Comissão'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 288
    Top = 40
    Height = 225
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 191
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 406
    Height = 40
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 183
      Caption = 'Comissões Gerente'
      Effect3D.ShadowedColor = 12240214
    end
    inherited imgModulo: TTS_Image
      Top = 0
    end
    inherited lbEstadoForm: TTS_Label
      Width = 183
      Caption = 'Informe os Funcionários e Percentuais'
    end
    inherited lbUpperHint: TTS_Label
      Left = 398
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 94
    Top = 120
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcionários / Payroll'
    Caption = 'Comissões Gerente'
    Left = 136
    Top = 184
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 653
    end
  end
end

inherited RptClienteAniversariantes: TRptClienteAniversariantes
  Left = 120
  Top = 80
  Width = 799
  Height = 462
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 783
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 354
      Caption = 'Relat'#243'rio de Clientes Aniversariantes'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 757
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 730
    end
  end
  inherited pnGrid: TPanel
    Width = 730
    Height = 385
    inherited pnDados: TTS_Panel
      Width = 730
      Color = 16116702
      object lbAniv: TTS_Label
        Left = 6
        Top = 5
        Width = 84
        Caption = 'Aniversariantes:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbPeriodo: TTS_ComboBox
        Left = 92
        Top = 2
        Width = 213
        TabOrder = 0
        StyleController = DMProjeto.esClientes
        OnChange = cmbPeriodoChange
        DropDownListStyle = True
        Items.Strings = (
          'de hoje'
          'da Semana'
          'do M'#234's'
          'do Pr'#243'ximo M'#234's'
          'do dia 1 de <mes>'
          'do dia 2 de <mes>'
          'do dia 3 de <mes>'
          'do dia 4 de <mes>'
          'do dia 5 de <mes>'
          'do dia 6 de <mes>'
          'do dia 7 de <mes>'
          'do dia 8 de <mes>'
          'do dia 9 de <mes>'
          'do dia 10 de <mes>'
          'do dia 11 de <mes>'
          'do dia 12 de <mes>'
          'do dia 13 de <mes>'
          'do dia 14 de <mes>'
          'do dia 15 de <mes>'
          'do dia 16 de <mes>'
          'do dia 17 de <mes>'
          'do dia 18 de <mes>'
          'do dia 19 de <mes>'
          'do dia 20 de <mes>'
          'do dia 21 de <mes>'
          'do dia 22 de <mes>'
          'do dia 23 de <mes>'
          'do dia 24 de <mes>'
          'do dia 25 de <mes>'
          'do dia 26 de <mes>'
          'do dia 27 de <mes>'
          'do dia 28 de <mes>'
          'do dia 29 de <mes>'
          'do dia 30 de <mes>'
          'do dia 31 de <mes>')
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 730
      Height = 344
      Bands = <
        item
          Caption = 'Dados Cadastrais'
          Width = 435
        end
        item
          Caption = #218'ltima Compra'
          Width = 138
        end
        item
          Caption = 'Vendas'
          Width = 87
        end>
      KeyField = 'FAVORECIDO'
      Font.Name = 'Times New Roman'
      BandColor = clWindow
      BandFont.Name = 'Times New Roman'
      Filter.Criteria = {00000000}
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      PreviewFieldName = 'PreviewEnd'
      ShowBands = True
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone'
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridColumn
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaCelular: TdxDBGridColumn
        Caption = 'Celular'
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaDATANASC: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Nascimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DiaMes'
        UseEditMask = True
      end
      object dbgConsultaULTCOMPRA: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Ult. Compra'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 1
        RowIndex = 0
        FieldName = 'icUltimaCompra'
      end
      object dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn
        Width = 67
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTVALORCOMPRA'
      end
      object dbgConsultaMEDIACOMPRA: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Width = 87
        BandIndex = 2
        RowIndex = 0
        FieldName = 'MEDIACOMPRA'
      end
      object dbgConsultaConjNasc: TdxDBGridColumn
        Caption = 'Conj. Nasc.'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DiaMesConj'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 366
      Width = 730
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 385
    inherited btSair: TTS_SpeedButton
      Top = 340
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    object Endereo1: TMenuItem [0]
      Caption = 'Endere'#231'o'
      OnClick = Endereo1Click
    end
    object N9: TMenuItem [1]
      Caption = '-'
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select f.*, p.descricao as desc_pais,'
      '(select avg(s.total) from saidas s '
      'where s.tipopadrao=1 and s.situacao='#39'N'#39' '
      
        'and s.favorecido=f.favorecido) as mediacompra, c.conjugue_datana' +
        'sc'
      'from favorecidos f'
      'left join paises p on f.pais=p.pais'
      'left join clientes c on c.favorecido = f.favorecido'
      'where f.tipofavorecido=1 '
      'and  f.desativado = '#39'N'#39)
  end
  inherited C_ConsultaDS: TDataSource
    Left = 417
    Top = 239
  end
  inherited P_Consulta: TDataSetProvider
    Top = 155
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 414
    Top = 198
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ConsultaCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      FieldName = 'CAIXAPOSTAL'
      Origin = 'FAVORECIDOS.CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ConsultaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pais'
      FieldName = 'DESC_PAIS'
      Origin = 'PAISES.DESC_PAIS'
      Size = 25
    end
    object C_ConsultaPreviewEnd: TStringField
      DisplayWidth = 8
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAVORECIDOS.FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'FAVORECIDOS.CONTATO'
      Size = 30
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'FAVORECIDOS.EMAIL'
      Size = 40
    end
    object C_ConsultaDATANASC: TDateField
      DisplayLabel = 'Nasc.'
      FieldName = 'DATANASC'
      Origin = 'FAVORECIDOS.DATANASC'
    end
    object C_ConsultaDiaMes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DiaMes'
      Size = 5
    end
    object C_ConsultaCONJUGUE_DATANASC: TDateField
      FieldName = 'CONJUGUE_DATANASC'
    end
    object C_ConsultaDiaMesConj: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DiaMesConj'
      Size = 8
    end
    object C_ConsultaicUltimaCompra: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'icUltimaCompra'
    end
    object C_ConsultaULTCOMPRA: TDateField
      FieldName = 'ULTCOMPRA'
    end
    object C_ConsultaULTVALORCOMPRA: TBCDField
      FieldName = 'ULTVALORCOMPRA'
      Precision = 18
      Size = 2
    end
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 227
    Top = 169
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 551
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 39181.4783090972
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.RightTextAlignY = taCenterY
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BandColor = clSilver
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Name = 'Times New Roman'
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Name = 'Times New Roman'
      Font.Charset = DEFAULT_CHARSET
      Font.Name = 'Times New Roman'
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Name = 'Times New Roman'
      GridLineColor = clBlack
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeColor = clSilver
      HeaderColor = clSilver
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Name = 'Times New Roman'
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Name = 'Times New Roman'
      Options = [tlpoBands, tlpoHeaders, tlpoFooters, tlpoRowFooters, tlpoPreview, tlpoPreviewGrid, tlpoGrid, tlpoFlatCheckMarks, tlpoSoft3D, tlpoRowFooterGrid]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Name = 'Times New Roman'
      RowFooterColor = clSilver
      RowFooterFont.Charset = DEFAULT_CHARSET
      RowFooterFont.Name = 'Times New Roman'
      RowFooterFont.Style = []
      SupportedCustomDraw = False
      Transparent = True
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 624
    Top = 144
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de Clientes Aniversariantes'
    OnRefresh = FormsComponentRefresh
    FirstEditField = cmbPeriodo
    Left = 153
    Top = 106
  end
  object Q_ULTCompra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select saida from saidas'
      'where data=:data'
      'and favorecido=:fav')
    Left = 613
    Top = 166
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'fav'
        ParamType = ptUnknown
      end>
  end
end

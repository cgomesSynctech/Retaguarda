inherited RptClienteOrcamentoAberto: TRptClienteOrcamentoAberto
  Height = 461
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 462
      Caption = 'Relat'#243'rio de Clientes com Or'#231'amento em Aberto'
      Effect3D.ShadowedColor = 14859922
    end
  end
  inherited pnGrid: TPanel
    Height = 384
    inherited pnDados: TTS_Panel
      Height = 25
      Color = 16116702
      object btGravar: TTS_SpeedButton
        Left = 486
        Top = 1
        Width = 127
        Height = 23
        Hint = 'Salva os dados digitados no Cadastro'
        Caption = 'Salvar altera'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          5E020000424D5E020000000000005E0100002800000010000000100000000100
          08000000000000010000210B0000210B00004A0000004A0000007B1616007B1C
          1C00841C1C00842323008F232300842A2A00843131008F313100A13131009838
          3100A13831008F38380098383800A1383800A14038009838400098404000A140
          4000AB404000B6404000C0404000C0484800C0505000CA505000A1585800AB60
          580084606000846A6A00986A6A00A16A6A00B66A6A0098737300A1737300B67B
          7300987B7B00B67B7B008F848400A1848400CA848400AB8F8F00CA8F8F00CA98
          8F00C0989800CA989800D4989800C0A1A100CAA1A100C0ABAB00D4ABAB00E0AB
          AB00E0B6B600B6C0B600C0C0B600B6C0C000C0C0C000CAC0C000E0C0C000E0CA
          C000CACACA00D4CACA00EACACA00D4D4CA00CAD4D400D4D4D400E0D4D400E0E0
          E000EAEAEA00F4EAEA00F4F4EA00F4F4F400FFF4F400FFFFF400FF00FF00FFFF
          FF004848100C072233343433332505050B4848191516111B27384647452D0002
          131048191515111A05184046492E0102121048191515111C03032F4249320001
          12104819151511200601243A493200011210481915151221231D1F27322C0404
          13104819151515151515151313151515160F48190D111E282B292B2828292B26
          150C4819093845444545454545454530130F48190A3C46434343434343434530
          130F48190A3C423A3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230
          130F48190A3C44404040404040404230130F48190A3C423A3A3A3A3A3A3A4230
          130F48190A3946434343434343434630130F4848092D3A363636363636363A2A
          0748}
        ParentFont = False
        OnClick = btGravarClick3
        RepeatedClick = False
        Border = True
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 25
      Height = 340
      Bands = <
        item
          Caption = 'Dados Cadastrais'
          Width = 629
        end>
      KeyField = 'SAIDA'
      BandColor = 15461355
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      PreviewFieldName = 'PreviewEnd'
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        Visible = False
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        Sorted = csUp
        Width = 212
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taCenter
        DisableEditor = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaTOTAL: TdxDBGridMaskColumn
        Alignment = taRightJustify
        DisableEditor = True
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
      end
      object dbgConsultaCANCELAR: TdxDBGridCheckColumn
        Caption = 'Cancelar'
        MinWidth = 20
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CANCELAR'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 365
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 384
    inherited btSair: TTS_SpeedButton
      Top = 339
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
      
        'Select f.*, p.descricao as desc_pais, s.numero, '#39'N'#39' as Cancelar,' +
        ' s.saida,'
      's.data, s.total, s.situacao'
      'from saidas s'
      'join favorecidos f on s.favorecido=f.favorecido'
      'left join paises p on f.pais=p.pais'
      'where f.tipofavorecido=1'
      'and s.tipopadrao=3 and s.situacao = '#39'N'#39
      'and  f.desativado = '#39'N'#39)
    UpdateObject = upSQL
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_ConsultaCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      DisplayLabel = 'Caixa Postal'
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FONE1'
    end
    object C_ConsultaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FONE2'
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pais'
      FieldName = 'DESC_PAIS'
      Size = 25
    end
    object C_ConsultaPreviewEnd: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ConsultaNUMERO: TStringField
      DisplayLabel = 'Or'#231'amento #'
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_ConsultaSITUACAO1: TStringField
      DisplayLabel = 'Situacao Orc.'
      FieldName = 'SITUACAO1'
      Size = 1
    end
    object C_ConsultaCANCELAR: TStringField
      FieldName = 'CANCELAR'
      Required = True
      Size = 1
    end
    object C_ConsultaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_ConsultaDATANASC: TDateField
      DisplayLabel = 'Anivers'#225'rio'
      FieldName = 'DATANASC'
    end
    object C_ConsultaULTIMOPGTO: TDateField
      FieldName = 'ULTIMOPGTO'
    end
    object C_ConsultaULTIMOVALORPAGO: TBCDField
      FieldName = 'ULTIMOVALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 553
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6257314583
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de Clientes com Or'#231'amento em Aberto'
    OnRefresh = FormsComponentRefresh
  end
  object upSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidas '
      'where'
      '  SAIDA = :SAIDA')
    ModifySQL.Strings = (
      'update saidas'
      'set'
      '  SITUACAO = '#39'C'#39
      'where'
      '  SAIDA = :OLD_SAIDA')
    InsertSQL.Strings = (
      'insert into saidas'
      '  (CANCELAR)'
      'values'
      '  (:CANCELAR)')
    DeleteSQL.Strings = (
      'delete from saidas'
      'where'
      '  SAIDA = :OLD_SAIDA')
    Left = 493
    Top = 111
  end
end

inherited RptAnaliseClientes: TRptAnaliseClientes
  Left = 169
  Top = 65
  Width = 799
  Height = 477
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 783
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 399
      Caption = 'Relat'#243'rio de An'#225'lise de Cr'#233'dito de Cliente'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 749
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 722
    end
  end
  inherited pnGrid: TPanel
    Width = 730
    Height = 401
    inherited pnDados: TTS_Panel
      Width = 730
      Height = 26
      Color = 16116702
      object btGravar: TTS_SpeedButton
        Left = 543
        Top = 1
        Width = 123
        Height = 24
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
        OnClick = btGravarClick
        RepeatedClick = False
        Border = True
      end
      object TS_Label1: TTS_Label
        Left = 0
        Top = 6
        Width = 118
        Caption = 'Calcular a m'#233'dia para '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 149
        Top = 6
        Width = 49
        Alignment = taLeftJustify
        Caption = 'meses'
        FormatoTabela = False
        LinkToResult = 0
      end
      object spCliente: TTS_SpeedButton
        Left = 414
        Top = 1
        Width = 125
        Height = 24
        Caption = 'Escolher Cliente(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          52050000424D5205000000000000120300002800000018000000180000000100
          08000000000040020000D10E0000D10E0000B7000000B7000000030303000306
          0B000B0B0B00731C0B00B62A0B0011111100B62A1100C03111007B4811004060
          1100116A11001616160073311600B6311600C0311600CA31160006111C001C1C
          1C00B6401C00B6481C00A1501C001C841C000006230023232300E04023001C6A
          2300607323000B162A001C1C2A002A2A2A0073382A00EA402A008F482A00CA50
          2A00D4502A002A982A002AC02A0003113100313131008F383100EA483100F448
          3100CA503100D4603100318F310038383800A158380038603800E06038004084
          380038A13800061140002A11400048384000404040004058400048584000EA60
          4000D4734000E0734000408F4000409840004898400040A1400040CA40004848
          4800FF604800CA6A48006098480048AB4800505050006A585000FF7350002A1C
          5800405858006AAB580058CA580073D458002A5060000B60600060606000608F
          600031406A0040486A00D4846A00EAA16A00061C73003850730058607300D48F
          7300FFAB730084D4730016167B00061C7B0006237B00586A7B0073AB7B00EAB6
          7B0006238400065084000658840084848400FFCA84000B318F0011588F001658
          8F00487B8F008F8F8F008FC08F00FFCA8F00A1E08F000B2A980006319800FFD4
          98000B60A1001C73A1002A73A1003173A1007B98A100B6D4A1000B38AB000B40
          AB00116AAB00166AAB001C73AB000B48B6001150B600237BB6003884B600CAE0
          B6001148C0001150C0001673C0001C7BC0002A84C0003184C0003884C000116A
          CA00388FCA00408FCA0058A1CA006AA1CA0073ABCA001660D4001173D4001C7B
          D4002A84D4002A8FD4003898D40050A1D4007BB6D40084B6D400F4EAD4001660
          E000166AE0001673E0002A8FE000318FE00060ABE00073B6E0007BB6E000EAF4
          E000FFF4E0002A73EA00167BEA0098CAEA001673F4001C7BF4003198F40031A1
          F400FF00FF002384FF002A84FF00238FFF002A8FFF00388FFF002A98FF003198
          FF004098FF0038A1FF0050ABFF0050B6FF00FFFFFF00AAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2E
          0D0406070E0D0D0D1E47AAAAAAAAAAAAAAAAAAAAAAAAAA0D0F29294242281318
          1F0D0C382F0A0A151515444437AAAA07292942424821612148290F09230A155B
          5B4040243CAAAA07294242482255712B4848181A324B3E6E5B4D40403CAAAA43
          284248303A666D3A484818403277812C6E5B4D403CAAAAAA2A39392154595A3B
          3948144C3DA1B66C3F6E5B5B3CAAAAAAAA2003345C5C492712084C4C3CA2A298
          445B5B3CAAAAAAAA261100165D5D5D5C35512C45317675746A193CAAAAAAAA50
          1100255E6F6F6F625CAAAA604F89909089644AAAAAAAAA260201677879797978
          5658AAAA9BA7A7A7A7A468AAAAAAAA1105107983838383827053AA88ABAFAFAD
          ABABA44EAAAAAA0B11057E8F999A998F7D52AA92AEB0B0B0AEAEAD69AAAAAA11
          170B79A6B2B2ACA68357AA9CB1B4B4B4B4B1AE80AAAAAA111D261B798FA3ACA7
          7E5FAA9DB4B5B5B5B5B3B191AAAAAA262626362D1C335C5C26AAAA94B49393A9
          B4B4A87AAAAAAAAA173646656B65261126AAAA80727F878685847B63AAAAAAAA
          501D505065653617AAAAAAAA7C8B95A0A58C7380AAAAAAAAAAAA41261D2650AA
          AAAAAAAA8E8B9FA09E8A80AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA978E96
          8D8EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
        ParentFont = False
        OnClick = spClienteClick
        RepeatedClick = False
        Border = True
      end
      object EdMedia: TTS_CurrencyEdit
        Left = 121
        Top = 4
        Width = 27
        TabOrder = 0
        OnExit = EdMediaExit
        StyleController = DMProjeto.esClientes
        DisplayFormat = '0'
        Value = 3
        Height = 19
        StoredValues = 0
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 26
      Width = 730
      Height = 356
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      PreviewFieldName = 'PreviewEnd'
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 204
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaDESC_PAIS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_PAIS'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 165
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaLIMITECREDITO: TdxDBGridMaskColumn
        Caption = 'Limite Cr'#233'dito'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LIMITECREDITO'
      end
      object dbgConsultaSALDOEMABERTO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDOEMABERTO'
      end
      object dbgConsultaMEDIACOMPRAMES: TdxDBGridMaskColumn
        Caption = 'M'#233'dia Compra M'#234's'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MEDIACOMPRAMES'
      end
      object dbgConsultaMEDIACOMPRA: TdxDBGridMaskColumn
        Caption = 'M'#233'dia Compra'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MEDIACOMPRA'
      end
      object dbgConsultaNOVOLIMITE: TdxDBGridMaskColumn
        Caption = 'Novo Limite'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOVOLIMITE'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 382
      Width = 730
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 401
    inherited btSair: TTS_SpeedButton
      Top = 356
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
      'select f.*, p.descricao as Desc_pais, 0 as NovoLimite, '
      '(Select sum(valor-valorpago-creditoutilizado-descontos) '
      ' From Titulosareceber tar where tar.cliente = f.favorecido'
      ' And Status>0 And Status<50)  '
      '  As SaldoEmAberto,'
      '  ( select sum(s.total)/3'
      '    from saidas s'
      '    where s.tipopadrao = 1 and s.situacao = '#39'N'#39
      '    and s.data between :dataimedia and :datafmedia'
      '    and s.favorecido = f.favorecido)'
      '    as MediaCompraMes,'
      '  ( select avg(s.total)'
      '    from saidas s'
      '    where s.tipopadrao = 1 and s.situacao = '#39'N'#39
      '    and s.favorecido = f.favorecido)'
      '    as MediaCompra'
      'from favorecidos f'
      'left join paises p on f.pais = p.pais'
      'where f.tipofavorecido = 1'
      'and  f.desativado = '#39'N'#39)
    UpdateObject = upConsulta
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dataimedia'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datafmedia'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Params = <
      item
        DataType = ftDateTime
        Name = 'dataimedia'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datafmedia'
        ParamType = ptUnknown
      end>
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
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
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
    object C_ConsultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
    end
    object C_ConsultaEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaLIMITECREDITO: TBCDField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'LIMITECREDITO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSALDOEMABERTO: TBCDField
      DisplayLabel = 'Saldo em Aberto'
      FieldName = 'SALDOEMABERTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaNOVOLIMITE: TIntegerField
      FieldName = 'NOVOLIMITE'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'DESC_PAIS'
      Size = 25
    end
    object C_ConsultaMEDIACOMPRAMES: TFloatField
      FieldName = 'MEDIACOMPRAMES'
    end
    object C_ConsultaMEDIACOMPRA: TFloatField
      FieldName = 'MEDIACOMPRA'
    end
    object C_ConsultaPreviewEnd: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 508
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6253670486
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 664
    Top = 176
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Relat'#243'rio de An'#225'lise de Cr'#233'dito de Cliente'
    OnRefresh = FormsComponentRefresh
  end
  object upConsulta: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from favorecidos '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update favorecidos'
      'set'
      '  LIMITECREDITO = :NOVOLIMITE'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into favorecidos'
      '  (FAVORECIDO, CODIGO, NOME, RAZAO, ENDERECO, CIDADE, UF, CEP, '
      'CAIXAPOSTAL, '
      
        '   PAIS, FONE1, FONE2, FAX, CELULAR, CONTATO, EMAIL, TIPOFAVOREC' +
        'IDO, '
      'TIPOATIVIDADE, '
      
        '   PLANOPAGAMENTO, VENDEDOR, LIMITECREDITO, TAXAVEL, TAX, EIN, S' +
        'SN, '
      'TABELAPRECO, '
      
        '   DESATIVADO, EXIGIVEL1099, TIPOENTREGA, DATACADASTRO, SITE, OB' +
        'S, '
      'IMPORTACAO, '
      '   SITUACAO, CARGO, LOGOTIPO, JUROSFACTORY, TAXASFACTORY, '
      'FLOATINGFACTORY, '
      '   MEMO_CHECK, CREDITO, CONTA, NUMERO_REVENDA, TIPO_FUNC, '
      'DATANASC, CAMPO01, '
      
        '   CAMPO02, CAMPO03, CAMPO04, CAMPO05, CAMPO06, CAMPO07, CAMPO08' +
        ', '
      'CAMPO09, '
      '   CAMPO10, COMISSAO, ISVENDEDOR, CONTAPAGAMENTO, '
      'CONTADESPESAS, ULTCOMPRA, '
      '   SALDOEMABERTO, MEDIACOMPRA)'
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP, '
      
        '   :CAIXAPOSTAL, :PAIS, :FONE1, :FONE2, :FAX, :CELULAR, :CONTATO' +
        ', :EMAIL, '
      '   :TIPOFAVORECIDO, :TIPOATIVIDADE, :PLANOPAGAMENTO, :VENDEDOR, '
      ':LIMITECREDITO, '
      
        '   :TAXAVEL, :TAX, :EIN, :SSN, :TABELAPRECO, :DESATIVADO, :EXIGI' +
        'VEL1099, '
      
        '   :TIPOENTREGA, :DATACADASTRO, :SITE, :OBS, :IMPORTACAO, :SITUA' +
        'CAO, '
      ':CARGO, '
      '   :LOGOTIPO, :JUROSFACTORY, :TAXASFACTORY, :FLOATINGFACTORY, '
      ':MEMO_CHECK, '
      '   :CREDITO, :CONTA, :NUMERO_REVENDA, :TIPO_FUNC, :DATANASC, '
      ':CAMPO01, '
      '   :CAMPO02, :CAMPO03, :CAMPO04, :CAMPO05, :CAMPO06, :CAMPO07, '
      ':CAMPO08, '
      '   :CAMPO09, :CAMPO10, :COMISSAO, :ISVENDEDOR, :CONTAPAGAMENTO, '
      ':CONTADESPESAS, '
      '   :ULTCOMPRA, :SALDOEMABERTO, :MEDIACOMPRA)')
    DeleteSQL.Strings = (
      'delete from favorecidos'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 501
    Top = 108
  end
end

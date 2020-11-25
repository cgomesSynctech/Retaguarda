inherited RptFornecedores: TRptFornecedores
  Left = 264
  Top = 158
  Width = 908
  Height = 503
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 892
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 250
      Caption = 'Listagem de Fornecedores'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 866
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 839
    end
  end
  inherited pnGrid: TPanel
    Width = 839
    Height = 427
    inherited pnDados: TTS_Panel
      Width = 839
      Height = 3
      Color = 15196656
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 3
      Width = 839
      Height = 405
      KeyField = 'FAVORECIDO'
      Filter.Criteria = {00000000}
      PreviewFieldName = 'PreviewEnd'
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 232
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        Caption = 'CPF/CNPJ'
        HeaderAlignment = taCenter
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaINSC_EST: TdxDBGridMaskColumn
        Caption = 'Inscri'#231#227'o Est.'
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSCRICAO_EST'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Visible = False
        Width = 241
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        Caption = 'Raz'#227'o Social'
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCONTATO: TdxDBGridMaskColumn
        Visible = False
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Visible = False
        Width = 193
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        Caption = 'Bairro'
        Visible = False
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaULTCOMPRA: TdxDBGridColumn
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTCOMPRA'
      end
      object dbgConsultaTIPOEMPRESA: TdxDBGridMaskColumn
        Caption = 'Tipo Fornecedor'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFORNECEDOR'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 408
      Width = 839
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 427
    inherited btSair: TTS_SpeedButton
      Top = 382
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
      'Select '
      
        'F.FAVORECIDO, F.EMPRESA, F.CODIGO, F.NOME, F.RAZAO, F.ENDERECO, ' +
        'F.CIDADE, F.UF, F.CEP, F.CAIXAPOSTAL, F.PAIS, F.FONE1, F.FONE2, ' +
        'F.FAX, F.CELULAR, F.CONTATO, F.EMAIL, F.TIPOFAVORECIDO, F.TIPOAT' +
        'IVIDADE, F.PLANOPAGAMENTO, F.VENDEDOR, F.LIMITECREDITO, F.TAXAVE' +
        'L, F.TAX, F.EIN, F.SSN, F.TABELAPRECO, F.DESATIVADO, F.EXIGIVEL1' +
        '099, F.TIPOENTREGA, F.DATACADASTRO, F.SITE, F.OBS, F.IMPORTACAO,' +
        ' F.SITUACAO, F.CARGO, F.LOGOTIPO, F.JUROSFACTORY, F.TAXASFACTORY' +
        ', F.FLOATINGFACTORY, F.MEMO_CHECK, F.CREDITO, F.CONTA, F.NUMERO_' +
        'REVENDA, F.TIPO_FUNC, F.DATANASC, F.CAMPO01, F.CAMPO02, F.CAMPO0' +
        '3, F.CAMPO04, F.CAMPO05, F.CAMPO06, F.CAMPO07, F.CAMPO08, F.CAMP' +
        'O09, F.CAMPO10, F.COMISSAO, F.ISVENDEDOR, F.CONTAPAGAMENTO, F.CO' +
        'NTADESPESAS, F.ULTCOMPRA, F.ULTVALORCOMPRA, F.PERIODICIDADE, F.D' +
        'ATAADIMISSAO, F.DATADEMISSAO, F.DATAAUMENTO, F.AGRUPARPORITEM, F' +
        '.RELACIONAMENTO, F.DESCRICAORELAC, F.INICIOSEMANA, F.DIASPERIODO' +
        ', F.QUALIDADE, F.ZONA, F.GRUPOCLIENTE, F.GRAURELAC, F.ULTIMOPGTO' +
        ', F.ULTIMOVALORPAGO, F.SEXO, F.CARTMOTOR, F.CPF_CNPJ, F.INSCRICA' +
        'O_EST, F.BAIRRO, F. RG, F.PESSOA_FJ, F.FONTE, F.INDICADOPELOFAV,' +
        ' F.TIPOEMPRESA, F.RESTRICOES, F.DTMODIFICACAO, F.SUBSTITUTOTRIB,' +
        ' F.CIDADE_CH, F.STATUSIMS, F.STATUSITX, F.CRM, F.EXPORTACAO, F.P' +
        'ERCDESCONTO, F.NUMCONTRATO, F.EDIFICIO, F.LOCALMAPA, F.TIPOCONTR' +
        'ATO, F.HORAMODIFICACAO, F.INSCRICAO_MUN, F.TIPOCOBRANCA, F.CONSU' +
        'MIDORFINAL, F.MUNICIPIO, F.SUFRAMA, F.NRO, F.SENHA, F.DECRETO247' +
        '55, F.ADDDIASPRAZO, F.EMATRASO, F.LIMITEUTILIZADO, F.ORIGEMREPLI' +
        'C, P.DESCRICAO AS DESC_PAIS,'
      
        'case upper(F.TIPOEMPRESA) when '#39'P'#39' then '#39'Produtos'#39' when '#39'T'#39' then' +
        ' '#39'Transportes'#39' when '#39'S'#39' then '#39'Servi'#231'os'#39' else '#39'N'#227'o Definido'#39' end ' +
        'as TIPOFORNECEDOR'
      'from FAVORECIDOS f'
      'left join PAISES P ON F.PAIS=P.PAIS'
      'WHERE TIPOFAVORECIDO= 2'
      'and  f.desativado = '#39'N'#39
      'order by f.nome')
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
    object C_ConsultaRAZAO: TStringField
      FieldName = 'RAZAO'
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
    object C_ConsultaPAIS: TIntegerField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS'
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
      FieldName = 'Celular'
    end
    object C_ConsultaPreviewEnd: TStringField
      DisplayWidth = 100
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 30
    end
    object C_ConsultaEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaTAXAVEL: TStringField
      DisplayLabel = 'Tax'#225'vel'
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_ConsultaEIN: TStringField
      FieldName = 'EIN'
      Size = 10
    end
    object C_ConsultaSSN: TStringField
      FieldName = 'SSN'
      Size = 11
    end
    object C_ConsultaULTCOMPRA: TDateField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'ULTCOMPRA'
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'DESC_PAIS'
      Size = 25
    end
    object C_ConsultaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_ConsultaINSCRICAO_EST: TStringField
      FieldName = 'INSCRICAO_EST'
      Size = 14
    end
    object C_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_ConsultaRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object C_ConsultaTIPOEMPRESA: TStringField
      FieldName = 'TIPOEMPRESA'
      FixedChar = True
      Size = 12
    end
    object C_ConsultaTIPOFORNECEDOR: TStringField
      FieldName = 'TIPOFORNECEDOR'
      FixedChar = True
      Size = 12
    end
  end
  inherited ppmSumarizacao: TTS_PopupMenu
    Left = 253
    Top = 264
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 509
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6267165394
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Listagem de Fornecedores'
    OnRefresh = FormsComponentRefresh
  end
  object Q_ULTCompra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select entrada from entradas'
      'where data=:data'
      'and favorecido=:fav')
    Left = 555
    Top = 260
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

inherited RptClientes: TRptClientes
  Left = 40
  Top = 72
  Width = 772
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 764
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 199
      Caption = 'Listagem de Clientes'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 730
      Top = 0
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 703
    end
  end
  inherited pnGrid: TPanel
    Width = 711
    inherited pnDados: TTS_Panel
      Width = 711
      Height = 2
      Color = 16116702
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 2
      Width = 711
      Height = 387
      Bands = <
        item
          Caption = 'Dados Cadastrais'
          Width = 592
        end
        item
          Caption = 'Compra'
          Width = 135
        end>
      KeyField = 'FAVORECIDO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'codigo'
              SummaryFormat = '>codigo=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      BandColor = 15461355
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords]
      PreviewFieldName = 'PreviewEnd'
      ShowBands = True
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'codigo;count')
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 208
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        Caption = 'CPF/CNPJ'
        HeaderAlignment = taCenter
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaINSCRICAO_EST: TdxDBGridMaskColumn
        Caption = 'Inscri'#231#227'o Est.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INSCRICAO_EST'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 24
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        Caption = 'Raz'#227'o Social'
        HeaderAlignment = taCenter
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaRG: TdxDBGridMaskColumn
        Caption = 'N'#186' RG'
        HeaderAlignment = taCenter
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RG'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCONTATO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        Caption = 'Bairro'
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaULTCOMPRA: TdxDBGridColumn
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTCOMPRA'
      end
      object dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 1
        RowIndex = 0
        FieldName = 'ULTVALORCOMPRA'
      end
      object dbgConsultaSEXO: TdxDBGridColumn
        Caption = 'Sexo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEXO'
      end
      object dbgConsultaLIMITECREDITO: TdxDBGridCurrencyColumn
        Caption = 'Limite Cr'#233'dito'
        HeaderAlignment = taCenter
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LIMITECREDITO'
        Nullable = False
      end
      object dbgConsultaTABELAPRECO: TdxDBGridMaskColumn
        Caption = 'Tabela de Pre'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTABELAPRECO'
      end
      object dbgConsultaDATACADASTRO: TdxDBGridDateColumn
        Caption = 'Data Cadastro'
        HeaderAlignment = taCenter
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATACADASTRO'
      end
      object dbgConsultaSITE: TdxDBGridMaskColumn
        Caption = 'Site'
        HeaderAlignment = taCenter
        Visible = False
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITE'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#245'es'
        HeaderAlignment = taCenter
        Visible = False
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaCREDITO: TdxDBGridCurrencyColumn
        Caption = 'Cr'#233'dito'
        HeaderAlignment = taCenter
        Visible = False
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITO'
        Nullable = False
      end
      object dbgConsultaDESCGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCGRUPO'
      end
      object dbgConsultaDATANASC: TdxDBGridDateColumn
        Caption = 'Data Nascimento'
        HeaderAlignment = taCenter
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATANASC'
      end
      object dbgConsultaPESSOA_FJ: TdxDBGridColumn
        Caption = 'Pessoa F/J'
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESSOA_FJ'
      end
      object dbgConsultaNomeVendedor: TdxDBGridColumn
        Alignment = taLeftJustify
        Caption = 'Vendedor'
        HeaderAlignment = taCenter
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NOMEVENDEDOR'
      end
      object dbgConsultaCPFCNPJINVALIDO: TdxDBGridColumn
        Caption = 'CPF/CGC Invalido'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPFCNPJINVALIDO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 711
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 194
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
    AutoCalcFields = False
    SQL.Strings = (
      'Select F.*, P.DESCRICAO AS DESC_PAIS, g.descricao as descgrupo,'
      '            tp.descricao as desctabelapreco,'
      '            V.NOME AS NomeVENDEDOR'
      'FROM FAVORECIDOS F'
      'LEFT JOIN FAVORECIDOS V ON V.FAVORECIDO = F.VENDEDOR'
      'LEFT JOIN PAISES P ON F.PAIS=P.PAIS'
      'left join GRUPOSCLIENTE g on f.grupocliente = g.grupocliente'
      'left join TABELASPRECO tp on f.tabelapreco = tp.tabelapreco'
      'WHERE f.TIPOFAVORECIDO= 1 and  f.desativado = '#39'N'#39
      'order by f.nome')
    UniDirectional = True
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
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaCEP: TStringField
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
      FieldName = 'Celular'
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
      DisplayLabel = 'Data'
      FieldName = 'ULTCOMPRA'
    end
    object C_ConsultaDESC_PAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'DESC_PAIS'
      Size = 25
    end
    object C_ConsultaPreviewEnd: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
      Size = 80
    end
    object C_ConsultaULTVALORCOMPRA: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'ULTVALORCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object C_ConsultaCARTMOTOR: TStringField
      FieldName = 'CARTMOTOR'
      Size = 25
    end
    object C_ConsultaLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object C_ConsultaSITE: TStringField
      FieldName = 'SITE'
      Size = 80
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_ConsultaCREDITO: TBCDField
      FieldName = 'CREDITO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object C_ConsultaDESCGRUPO: TStringField
      FieldName = 'DESCGRUPO'
      Size = 30
    end
    object C_ConsultaDESCTABELAPRECO: TStringField
      FieldName = 'DESCTABELAPRECO'
      Size = 25
    end
    object C_ConsultaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
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
    object C_ConsultaPESSOA_FJ: TStringField
      FieldName = 'PESSOA_FJ'
      Size = 1
    end
    object C_ConsultaNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 50
    end
    object C_ConsultaCPFCNPJINVALIDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CPFCNPJINVALIDO'
      Size = 1
    end
  end
  inherited ppmSumarizacao: TTS_PopupMenu
    Left = 229
    Top = 208
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 507
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 39181.4179700116
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 648
    Top = 152
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Listagem de Clientes'
    OnRefresh = FormsComponentRefresh
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

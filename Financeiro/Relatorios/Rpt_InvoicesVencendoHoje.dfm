inherited RptInvoicesVencendoHoje: TRptInvoicesVencendoHoje
  Left = 42
  Top = 54
  Width = 740
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 724
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 229
      Caption = 'Parcelas Vencendo Hoje'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 698
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 671
    end
  end
  inherited pnGrid: TPanel
    Width = 671
    inherited pnDados: TTS_Panel
      Width = 671
      Height = 2
      Color = 16116702
      Visible = False
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 2
      Width = 671
      Height = 376
      KeyField = 'ID'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Saldo'
              SummaryFormat = '>Saldo=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TITULO'
              SummaryFormat = '>TITULO=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      PreviewFieldName = 'Preview'
      TS_SelectedColumn = 'TITULO'
      TS_SummaryFields.Strings = (
        'Valor;Sum'
        'Saldo;Sum'
        'TITULO;COUNT')
      object dbgConsultaID: TdxDBGridMaskColumn
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaTITULO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 203
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaVALORPAGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
      end
      object dbgConsultaDESCONTOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
      end
      object dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSRECEBIDOS'
      end
      object dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOGERADO'
      end
      object dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOUTILIZADO'
      end
      object dbgConsultaDESCSTATUS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUS'
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaSALDO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 1135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaPreview: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 890
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Preview'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOCOBRANCA'
      end
      object dbgConsultaDATAPRORROGACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPRORROGACAO'
      end
      object dbgConsultaEMPRESA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMULTA'
      end
      object dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMORA'
      end
      object dbgConsultaVALORJUROSMORA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORJUROSMORA'
      end
      object dbgConsultaVALORMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORMULTA'
      end
      object dbgConsultaDATAATRASADO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAATRASADO'
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAANTECIPACAO'
      end
      object dbgConsultaVALORDESCANTECIPADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORDESCANTECIPADO'
      end
      object dbgConsultaNUMBOLETO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMBOLETO'
      end
      object dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_GARANTIA'
      end
      object dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 225
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCARTEIRA'
      end
      object dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROCARTEIRA'
      end
      object dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn
        Caption = 'Compet'#234'ncia'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIADIASEMANA'
      end
      object dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODIASEMANA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 671
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
    object N2: TMenuItem
      Caption = '-'
    end
    object MostrarEndereco: TMenuItem
      Caption = 'Mostrar Endere'#231'o'
      OnClick = MostrarEnderecoClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select t.ID, t.notafiscal, t.competencia, t.vencimento, t.valor,' +
        ' t.valorpago, t.datapago, t.descontos, t.jurosrecebidos, t.credi' +
        'togerado, t.creditoutilizado, s.Descricao as DescStatus, t.titul' +
        'o, (t.faltareceber) as Saldo, t.obs, tc.descricao as tipocobranc' +
        'a, t.percentualmulta, t.percentualmora,'
      't.valorjurosmora, t.valormulta, t.dataatrasado, t.parcela, '
      
        'f.cpf_cnpj, f.codigo, f.nome, f.razao, f.Endereco, f.bairro, f.C' +
        'idade, f.UF, f.fone1, f.fone2, f.fax, f.celular, f.cep,  f.email' +
        ',  t.Cliente as Favorecido, f.tipofavorecido, (t.vencimento-curr' +
        'ent_date) as faltadias, t.dataprorrogacao, e.nome as empresa, v.' +
        'nome as vendedor, t.dataantecipacao, t.valordescantecipado, t.or' +
        'igem_areceber, t.idgerador_areceber, t.numboleto, t.doc_garantia' +
        ', c.descricao as desccarteira, c.numerocarteira, sd.TIPOPADRAO'
      'from titulosareceber t '
      '        left join saidas sd on t.venda = sd.saida'
      '        left join favorecidos f on t.cliente = f.favorecido'
      '        left join favorecidos e on t.empresa = e.favorecido'
      '        left join favorecidos v on t.vendedor = v.favorecido'
      '        left join statustitulos s on t.status = s.status'
      
        '        left join tiposcobranca tc on t.tipocobranca = tc.tipoco' +
        'branca'
      '        left join carteiras c on t.carteira = c.carteira'
      'where t.status > 0 and t.status < 50')
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 416
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaNOTAFISCAL: TStringField
      DisplayLabel = '# Nota Fiscal'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaCOMPETENCIA: TDateField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORPAGO: TBCDField
      DisplayLabel = 'Vlr. Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOS: TBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSRECEBIDOS: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROSRECEBIDOS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOGERADO: TBCDField
      DisplayLabel = 'Cr'#233'dito Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOUTILIZADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object C_ConsultaSALDO: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAPAGO: TDateField
      DisplayLabel = 'Data Pgto'
      FieldName = 'DATAPAGO'
    end
    object C_ConsultaOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBS'
      Size = 255
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
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaPreview: TStringField
      DisplayLabel = 'Endere'#231'o Completo'
      FieldKind = fkInternalCalc
      FieldName = 'Preview'
      Size = 200
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaVENDA: TIntegerField
      FieldName = 'VENDA'
    end
    object C_ConsultaTITULO: TStringField
      DisplayLabel = '# T'#237'tulo'
      FieldName = 'TITULO'
      Size = 10
    end
    object C_ConsultaFALTADIAS: TIntegerField
      DisplayLabel = 'Falta Dias'
      FieldName = 'FALTADIAS'
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_ConsultaRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_ConsultaCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      OnGetText = C_ConsultaCPF_CNPJGetText
      Size = 14
    end
    object C_ConsultaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_ConsultaTIPOCOBRANCA: TStringField
      DisplayLabel = 'Tipo Cobran'#231'a'
      FieldName = 'TIPOCOBRANCA'
      Size = 50
    end
    object C_ConsultaDATAPRORROGACAO: TDateField
      DisplayLabel = 'Prorroga'#231#227'o'
      FieldName = 'DATAPRORROGACAO'
    end
    object C_ConsultaEMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Size = 50
    end
    object C_ConsultaPERCENTUALMULTA: TBCDField
      DisplayLabel = '% Multa'
      FieldName = 'PERCENTUALMULTA'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPERCENTUALMORA: TBCDField
      DisplayLabel = '% Juros'
      FieldName = 'PERCENTUALMORA'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORJUROSMORA: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'VALORJUROSMORA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'VALORMULTA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAATRASADO: TDateField
      DisplayLabel = 'Data Atrasado'
      FieldName = 'DATAATRASADO'
    end
    object C_ConsultaPARCELA: TIntegerField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'PARCELA'
    end
    object C_ConsultaVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object C_ConsultaDATAANTECIPACAO: TDateField
      DisplayLabel = 'Data Antecip.'
      FieldName = 'DATAANTECIPACAO'
    end
    object C_ConsultaVALORDESCANTECIPADO: TBCDField
      DisplayLabel = 'Desc. Antecip.'
      FieldName = 'VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaORIGEM_ARECEBER: TIntegerField
      FieldName = 'ORIGEM_ARECEBER'
    end
    object C_ConsultaIDGERADOR_ARECEBER: TIntegerField
      FieldName = 'IDGERADOR_ARECEBER'
    end
    object C_ConsultaNUMBOLETO: TStringField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
    end
    object C_ConsultaDOC_GARANTIA: TStringField
      DisplayLabel = 'c/ Doc.Garantia'
      FieldName = 'DOC_GARANTIA'
    end
    object C_ConsultaDESCCARTEIRA: TStringField
      DisplayLabel = 'Desc. Carteira'
      FieldName = 'DESCCARTEIRA'
      Size = 50
    end
    object C_ConsultaNUMEROCARTEIRA: TStringField
      DisplayLabel = 'Carteira'
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
    end
    object C_ConsultaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_ConsultaCOMPETENCIADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'COMPETENCIADIASEMANA'
      Size = 50
    end
    object C_ConsultaVENCIMENTODIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODIASEMANA'
      Size = 50
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 496
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6274337731
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Parcelas Vencendo Hoje'
  end
end

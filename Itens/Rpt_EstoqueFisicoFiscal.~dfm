inherited RptEstoqueFisicoFiscal: TRptEstoqueFisicoFiscal
  Left = 269
  Top = 130
  Width = 1452
  Height = 744
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1444
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 285
      Caption = 'Relat'#243'rio de Estoque de Itens'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1670
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 1620
    end
  end
  inherited pnGrid: TPanel
    Width = 1391
    Height = 679
    inherited pnDados: TTS_Panel
      Width = 1391
      Height = 24
      Color = 14019327
      object lblAlmox: TTS_Label
        Left = 969
        Top = 5
        Width = 79
        Caption = 'Almoxarifado:'
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 546
        Top = 5
        Width = 53
        Caption = 'Indexador:'
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 152
        Top = 4
        Width = 113
        Caption = 'Estoque Para o Dia : '
        FormatoTabela = False
        LinkToResult = 0
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 13
        Top = 3
        Width = 121
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        AutoSelect = False
        StyleController = DMProjeto.esItens
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
        TS_TipoEstoque = 0
        TS_FornecedorSelecionado = 0
        TS_FornPrefSelecionado = 0
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_PossuiEstoque = False
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        TS_ItemAlterado = False
        OnSelecionou = PopupFiltroItensSelecionou
        Height = 19
      end
      object cmbAlmox: TTS_LookupComboBox
        Left = 1050
        Top = 3
        Width = 126
        TabOrder = 1
        Visible = False
        StyleController = DMProjeto.esItens
        OnChange = cmbAlmoxChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'ALMOXARIFADO'
        ListSource = C_AlmoxarifadosDS
        LookupKeyValue = Null
        Height = 19
      end
      object cmbIndex: TTS_LookupComboBox
        Left = 603
        Top = 3
        Width = 100
        TabOrder = 2
        Visible = False
        StyleController = DMProjeto.esItens
        OnSelectionChange = cmbIndexSelectionChange
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'INDEXADOR'
        ListSource = C_IndexadoresDS
        LookupKeyValue = Null
        Height = 19
      end
      object cbServicos: TTS_CheckBox
        Left = 398
        Top = 2
        Width = 121
        TabOrder = 3
        Visible = False
        Caption = 'Com Servicos'
        StyleController = DMProjeto.esItens
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_BitBtn1: TTS_BitBtn
        Left = 768
        Top = 0
        Width = 185
        Height = 25
        Caption = 'Atualizar Custo Itens de Montagem'
        TabOrder = 4
        Visible = False
        OnClick = TS_BitBtn1Click
        Transparent = False
      end
      object edData: TTS_DateTimePicker
        Left = 271
        Top = 2
        Width = 79
        TabOrder = 5
        AutoSize = False
        StyleController = DMProjeto.esItens
        ButtonGlyph.Data = {
          AE040000424DAE0400000000000036040000280000000A0000000A0000000100
          0800000000007800000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
          A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
          FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
          0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
          FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
        Date = -700000
        DateOnError = deToday
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 1391
      Height = 636
      KeyField = 'ITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'CODIGO'
              SummaryFormat = '>CODIGO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'estFisico'
              SummaryFormat = '>estFisico=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'estFiscal'
              SummaryFormat = '>estFiscal=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Total_Fisico'
              SummaryFormat = '>Total_Fisico=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Total_Fiscal'
              SummaryFormat = '>Total_Fiscal=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT'
        'estFisico;SUM;U'
        'estFiscal;SUM;U'
        'Total_Fisico;SUM;U'
        'Total_Fiscal;SUM;U'
        '')
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaColumn54: TdxDBGridColumn
        Caption = 'Descri'#231#227'o'
        Width = 268
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid'
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Ult. Pre'#231'o Compra'
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaESTFISICO: TdxDBGridCurrencyColumn
        Caption = 'Est. Fisico'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTFISICO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = ' ,0.00; ,0.00'
        Nullable = False
      end
      object dbgConsultaESTFISCAL: TdxDBGridCurrencyColumn
        Caption = 'Est. Fiscal'
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTFISCAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisplayFormat = '0.00; 0.00'
        Nullable = False
      end
      object dbgConsultaColumn56: TdxDBGridCurrencyColumn
        Caption = 'Tot Custo Fisico'
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL_FISICO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaColumn55: TdxDBGridCurrencyColumn
        Caption = 'Tot Custo Fiscal'
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL_FISCAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgConsultaCST: TdxDBGridMaskColumn
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CST'
      end
      object dbgConsultaREDUCAOCST: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REDUCAOCST'
        Nullable = False
      end
      object dbgConsultaIPICOMPRA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPICOMPRA'
        Nullable = False
      end
      object dbgConsultaIPIVENDA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IPIVENDA'
        Nullable = False
      end
      object dbgConsultaPESOBRUTO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOBRUTO'
        Nullable = False
      end
      object dbgConsultaPESOLIQUIDO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESOLIQUIDO'
        Nullable = False
      end
      object dbgConsultaALIQICMS: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALIQICMS'
        Nullable = False
      end
      object dbgConsultaSITUACAOECF: TdxDBGridMaskColumn
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAOECF'
      end
      object dbgConsultaTVA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVA'
        Nullable = False
      end
      object dbgConsultaTVAFONTE: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TVAFONTE'
        Nullable = False
      end
      object dbgConsultaCLASFISCAL: TdxDBGridMaskColumn
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLASFISCAL'
      end
      object dbgConsultaESTOQUECONSIGENTRADA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGENTRADA'
        Nullable = False
      end
      object dbgConsultaESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUECONSIGSAIDA'
        Nullable = False
      end
      object dbgConsultaPRCVENDA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRCVENDA'
        Nullable = False
      end
      object dbgConsultaINDEXADOR: TdxDBGridMaskColumn
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INDEXADOR'
      end
      object dbgConsultaCUSTOMANUAL: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMANUAL'
        Nullable = False
      end
      object dbgConsultaLOCALIZACAO: TdxDBGridMaskColumn
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALIZACAO'
      end
      object dbgConsultaTRIBUTACAOFEDERAL: TdxDBGridMaskColumn
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TRIBUTACAOFEDERAL'
      end
      object dbgConsultaESTOQUEVOLUME: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUEVOLUME'
        Nullable = False
      end
      object dbgConsultaDESCGRUPOPAI: TdxDBGridMaskColumn
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCGRUPOPAI'
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgConsultaCSTPISCOFINS: TdxDBGridMaskColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CSTPISCOFINS'
      end
      object dbgConsultaCSTIPI: TdxDBGridMaskColumn
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CSTIPI'
      end
      object dbgConsultaCSTPISCOFINSSAIDA: TdxDBGridMaskColumn
        Visible = False
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CSTPISCOFINSSAIDA'
      end
      object dbgConsultaTAXINCLUSO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TAXINCLUSO'
      end
      object dbgConsultaCONTA_VEN: TdxDBGridMaskColumn
        Visible = False
        Width = 302
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_VEN'
      end
      object dbgConsultaCONTA_CUS: TdxDBGridMaskColumn
        Visible = False
        Width = 302
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_CUS'
      end
      object dbgConsultaCONTA_INV: TdxDBGridMaskColumn
        Visible = False
        Width = 302
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA_INV'
      end
      object dbgConsultaCOMISSAO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
        Nullable = False
      end
      object dbgConsultaDESCONTOMAXIMO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOMAXIMO'
        Nullable = False
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDULTFORNECEDOR'
      end
      object dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 302
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTFORNECEDOR'
      end
      object dbgConsultaTIPOITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaULTQTDECOMPRA: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTQTDECOMPRA'
        Nullable = False
      end
      object dbgConsultaULTIMACOMPRA: TdxDBGridDateColumn
        Visible = False
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMACOMPRA'
      end
      object dbgConsultaULTIMAVENDA: TdxDBGridDateColumn
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMAVENDA'
      end
      object dbgConsultaQTDEMINIMO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMINIMO'
        Nullable = False
      end
      object dbgConsultaQTDEMAXIMO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMAXIMO'
        Nullable = False
      end
      object dbgConsultaPONTOPEDIDO: TdxDBGridCurrencyColumn
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PONTOPEDIDO'
        Nullable = False
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 660
      Width = 1391
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 679
    inherited btSair: TTS_SpeedButton
      Top = 634
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 431
    Top = 314
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 520
    Top = 315
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 398
    Top = 315
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      
        'i.item,  i.codigo,i.descricao, i.item, i.unidade, i.precocompra,' +
        ' ( i.estoque + coalesce(( select sum(t.quantidade ) from transac' +
        'oesestoque t where t.item = i.item and t.data > :data ),0) ) as ' +
        'estFisico, ( i.estoquefiscal + coalesce(( select sum(t.quantidad' +
        'e ) from transacoesestoquefiscal t where t.item = i.item and t.d' +
        'ata > :data ),0)) as estFiscal, ( i.precocompra *( i.estoque + c' +
        'oalesce(( select sum(t.quantidade ) from transacoesestoque t whe' +
        're t.item = i.item and t.data > :data ),0))) as Total_Fisico, ( ' +
        'i.precocompra * ( i.estoquefiscal + coalesce(( select sum(t.quan' +
        'tidade ) from transacoesestoquefiscal t where t.item = i.item an' +
        'd t.data > :data ),0))) as Total_Fiscal, G.DESCRICAOGRUPO AS GRU' +
        'PO, I.REFERENCIA,  F.DESCRICAO AS FABRICANTE,I.CUSTOMEDIO AS CUS' +
        'TOMEDIO,i.cst, i.reducaocst, i.ipicompra, i.ipivenda, i.pesobrut' +
        'o, i.pesoliquido,i.aliqicms, i.situacaoecf,i.tva, i.tvafonte, i.' +
        'clasfiscal, i.estoqueconsigentrada, i.estoqueconsigsaida,pp.prec' +
        'o as PrcVenda, i.indexador,I.CUSTOMANUAL, l.descricao as Localiz' +
        'acao, tf.descricao as TributacaoFederal, I.ESTOQUEVOLUME,  gp.de' +
        'scricaogrupo as DescGrupoPai, i.custocontabil, i.cstpiscofins, i' +
        '.cstipi, i.cstpiscofinssaida, I.TAXINCLUSO,CON_VEN.DESCRICAO AS ' +
        'CONTA_VEN,  CON_CUS.DESCRICAO AS CONTA_CUS, CON_INV.DESCRICAO AS' +
        ' CONTA_INV,I.COMISSAO, I.DESCONTOMAXIMO, I.ULTIMOFORNECEDOR AS I' +
        'DULTFORNECEDOR, FORN.NOME AS ULTFORNECEDOR, TI.DESCRICAO AS TIPO' +
        'ITEM, FORN.TIPOFAVORECIDO, I.ULTQTDECOMPRA AS ULTQTDECOMPRA, I.U' +
        'LTIMACOMPRA, i.ultimavenda, i.qtdeminimo as qtdeminimo,  i.qtdem' +
        'aximo as qtdemaximo, i.pontopedido as pontopedido'
      ''
      'from'
      'ITENS I'
      'LEFT JOIN CONTAS CON_VEN ON CON_VEN.CONTA=I.CONTA_VENDA'
      'LEFT JOIN CONTAS CON_CUS ON CON_CUS.CONTA=I.CONTA_CUSTO'
      'LEFT JOIN CONTAS CON_INV ON CON_INV.CONTA=I.CONTA_VENDA'
      'LEFT JOIN TIPOSITENS TI ON I.TIPOITEM=TI.TIPOITEM'
      'LEFT JOIN GRUPOS G ON I.GRUPO=G.GRUPO'
      'LEFT JOIN GRUPOS GP ON GP.GRUPO = G.grupopai'
      'LEFT JOIN FABRICANTES F ON I.FABRICANTE=F.FABRICANTE'
      
        'LEFT JOIN FAVORECIDOS FORN ON I.ULTIMOFORNECEDOR = FORN.FAVORECI' +
        'DO'
      'LEFT JOIN ItensAlmox ia on i.item = ia.item and 1 = :num'
      
        'LEFT JOIN Produtospreco pp on pp.item = i.item and (pp.unidade =' +
        ' i.unidade)  and pp.tabelapreco = 0'
      'LEFT JOIN localizacoes l on i.localizacao = L.localizacao'
      
        'Left Join tipotributacaofederal tf on tf.idtribfederal = i.idtri' +
        'bfederal')
    Left = 402
    Top = 138
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num'
        ParamType = ptUnknown
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Left = 467
    Top = 248
  end
  inherited P_Consulta: TDataSetProvider
    Left = 398
    Top = 248
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 401
    Top = 192
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_ConsultaITEM1: TIntegerField
      FieldName = 'ITEM1'
      Required = True
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_ConsultaESTFISICO: TBCDField
      FieldName = 'ESTFISICO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTFISCAL: TBCDField
      FieldName = 'ESTFISCAL'
      Precision = 18
      Size = 3
    end
    object C_ConsultaTOTAL_FISICO: TFloatField
      FieldName = 'TOTAL_FISICO'
    end
    object C_ConsultaTOTAL_FISCAL: TFloatField
      FieldName = 'TOTAL_FISCAL'
    end
    object C_ConsultaGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_ConsultaCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object C_ConsultaREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Size = 1
    end
    object C_ConsultaTVA: TBCDField
      FieldName = 'TVA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 15
    end
    object C_ConsultaESTOQUECONSIGENTRADA: TBCDField
      FieldName = 'ESTOQUECONSIGENTRADA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaESTOQUECONSIGSAIDA: TBCDField
      FieldName = 'ESTOQUECONSIGSAIDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRCVENDA: TBCDField
      FieldName = 'PRCVENDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaCUSTOMANUAL: TBCDField
      FieldName = 'CUSTOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_ConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 15
    end
    object C_ConsultaTRIBUTACAOFEDERAL: TStringField
      FieldName = 'TRIBUTACAOFEDERAL'
      Size = 30
    end
    object C_ConsultaESTOQUEVOLUME: TBCDField
      FieldName = 'ESTOQUEVOLUME'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCGRUPOPAI: TStringField
      FieldName = 'DESCGRUPOPAI'
      Size = 30
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ConsultaCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Size = 2
    end
    object C_ConsultaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Size = 2
    end
    object C_ConsultaCSTPISCOFINSSAIDA: TStringField
      FieldName = 'CSTPISCOFINSSAIDA'
      Size = 2
    end
    object C_ConsultaTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Size = 1
    end
    object C_ConsultaCONTA_VEN: TStringField
      FieldName = 'CONTA_VEN'
      Size = 50
    end
    object C_ConsultaCONTA_CUS: TStringField
      FieldName = 'CONTA_CUS'
      Size = 50
    end
    object C_ConsultaCONTA_INV: TStringField
      FieldName = 'CONTA_INV'
      Size = 50
    end
    object C_ConsultaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaIDULTFORNECEDOR: TIntegerField
      FieldName = 'IDULTFORNECEDOR'
      Required = True
    end
    object C_ConsultaULTFORNECEDOR: TStringField
      FieldName = 'ULTFORNECEDOR'
      Size = 50
    end
    object C_ConsultaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Size = 30
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaULTQTDECOMPRA: TBCDField
      FieldName = 'ULTQTDECOMPRA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object C_ConsultaULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
    end
    object C_ConsultaQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 299
  end
  inherited ppmExportacao: TTS_PopupMenu
    object LayoutEstoque1: TMenuItem
      Caption = 'Layout Estoque'
      OnClick = LayoutEstoque1Click
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 567
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3662064699
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 608
    Top = 136
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Estoque de Itens'
    Left = 517
    Top = 404
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 592
    Top = 271
  end
  object Q_Almoxarifados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from almoxarifados')
    Left = 728
    Top = 114
  end
  object C_Almoxarifados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifados'
    Left = 729
    Top = 169
    object C_AlmoxarifadosALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Required = True
    end
    object C_AlmoxarifadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_Almoxarifados: TDataSetProvider
    DataSet = Q_Almoxarifados
    Constraints = True
    Left = 730
    Top = 228
  end
  object C_AlmoxarifadosDS: TDataSource
    DataSet = C_Almoxarifados
    Left = 734
    Top = 284
  end
  object C_IndexadoresDS: TDataSource
    DataSet = C_Indexadores
    Left = 624
    Top = 65524
  end
  object Q_Indexadores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores '
      'order by descricao')
    Left = 480
    Top = 88
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 480
    Top = 136
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 480
    Top = 184
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end

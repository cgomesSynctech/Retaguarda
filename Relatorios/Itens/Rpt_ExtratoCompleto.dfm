inherited RptExtratoCompleto: TRptExtratoCompleto
  Left = 346
  Top = 174
  Width = 883
  Height = 468
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 867
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 168
      Caption = 'Extrato Completo'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 841
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 791
    end
    inherited lbTemplate: TTS_Label
      Left = 416
    end
  end
  inherited pnGrid: TPanel
    Width = 814
    Height = 392
    inherited pnDados: TTS_Panel
      Width = 814
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 8
        Top = 4
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 133
        Top = 4
        Width = 16
        Alignment = taCenter
        Caption = #224
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataIni: TTS_DateTimePicker
        Left = 55
        Top = 2
        Width = 79
        TabOrder = 0
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
      object edDataFim: TTS_DateTimePicker
        Left = 150
        Top = 2
        Width = 79
        TabOrder = 1
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
      object popupFiltroItens: TTS_PopupFiltrarItens
        Left = 238
        Top = 2
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
        TabOrder = 2
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
        OnSelecionou = popupFiltroItensSelecionou
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 814
      Height = 351
      KeyField = 'TRANSACAOESTOQUE'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Quantidade'
              SummaryFormat = '>Quantidade=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'PrecoCompra'
              SummaryFormat = '>PrecoCompra=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Preco'
              SummaryFormat = '>Preco=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'SUBTOTALITEM'
              SummaryFormat = '>SUBTOTALITEM=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'SubTotalpc'
              SummaryFormat = '>SubTotalpc=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      OnMouseDown = dbgConsultaMouseDown
      Filter.Criteria = {00000000}
      HighlightColor = clWindow
      HighlightTextColor = clWindowText
      OptionsBehavior = [edgoAutoSearch, edgoCaseInsensitive, edgoDragScroll, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OnCustomDrawCell = dbgConsultaCustomDrawCell
      OnCustomDrawFooterNode = dbgConsultaCustomDrawFooterNode
      RowFooterNodeFont.Style = []
      OnGetSummaryTopText = dbgConsultaGetSummaryTopText
      TS_SelectedColumn = 'DESCORIGEM'
      TS_SummaryFields.Strings = (
        'Quantidade;Sum;U'
        'PrecoCompra;Sum;U'
        'Preco;Sum;U'
        'SUBTOTALITEM;Sum;U'
        'SubTotalpc;Sum;U')
      object dbgConsultaDesc_Item: TdxDBGridColumn
        Caption = 'Item'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 396
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        GroupIndex = 0
      end
      object dbgConsultaDESCORIGEM: TdxDBGridColumn
        Caption = 'Tipo'
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCORIGEM'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaMesAno: TdxDBGridColumn
        Caption = 'Mes/Ano'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MESANO'
      end
      object dbgConsultaNumero: TdxDBGridColumn
        Caption = 'Numero'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaFORNEC_CLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente/Fornecedor'
        HeaderAlignment = taCenter
        Width = 143
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaUNIDADE: TdxDBGridColumn
        Caption = 'Unid.'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultacfESTOQUE: TdxDBGridColumn
        Caption = 'Estoque'
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cfESTOQUE'
        SummaryFooterFormat = '##,###,##0.###'
      end
      object dbgConsultaUnidVenda: TdxDBGridColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UnidVenda'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridColumn
        Caption = 'Pre'#231'o Compra'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o Venda'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Caption = 'SubTotal'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
      end
      object dbgConsultaSUBTOTALCC: TdxDBGridMaskColumn
        Caption = 'SubTotal Custo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCC'
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaSUBTOTALPC: TdxDBGridColumn
        Caption = 'SubTotal PC'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALPC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaFABRICANTE: TdxDBGridColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFABRIC'
      end
      object dbgConsultaID: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDGERADOR'
      end
      object dbgConsultaIDFORNEC_CLIENTE: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridColumn
        Caption = 'Custo Cont'#225'bil'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgConsultaSUBTOTALCM: TdxDBGridColumn
        Caption = 'SubTotal CM'
        HeaderAlignment = taCenter
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCM'
        SummaryFooterFormat = '#,##0.0##'
      end
      object dbgConsultaFATOR: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATOR'
      end
      object dbgConsultaFATORESTOQUE: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORESTOQUE'
      end
      object dbgConsultaTIPOORIGEM: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOORIGEM'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 373
      Width = 814
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 392
    inherited btSair: TTS_SpeedButton
      Top = 347
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 190
  end
  inherited FormStorage: TFormStorage
    Left = 162
    Top = 140
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      ''
      
        'T.TRANSACAOESTOQUE,T.IDGERADOR, T.TIPOORIGEM, T.ITEM, I.GRUPO, T' +
        '.DATA, I.DESCRICAO, T.PRECO*T.FATOR AS PRECO, T.CUSTOMEDIO*T.FAT' +
        'OR AS CUSTOMEDIO, T.CUSTOCONTABIL*T.FATOR AS CUSTOCONTABIL, T.PR' +
        'ECOCOMPRA*T.FATOR AS PRECOCOMPRA, T.UNIDADE, I.REFERENCIA, T.QUA' +
        'NTIDADE,  I.UNIDADE AS UnidVenda, T.NUMERO, T.FAVORECIDO, F.NOME' +
        ', F.TIPOFAVORECIDO, FAB.DESCRICAO AS DESCFABRIC,  G.DESCRICAOGRU' +
        'PO, TPO.DESCRICAO AS DESCORIGEM, T.FATOR,   IU.FATOR AS FATOREST' +
        'OQUE,  (T.QUANTIDADE * T.PRECO * T.FATOR) AS SUBTOTALITEM,  (T.Q' +
        'UANTIDADE * T.CUSTOMEDIO * T.FATOR) AS SUBTOTALCM,  (T.QUANTIDAD' +
        'E * T.PRECOCOMPRA * T.FATOR) AS SUBTOTALPC,  (T.QUANTIDADE * T.C' +
        'USTOCONTABIL * T.FATOR) AS SUBTOTALCC,  Extract(year from t.data' +
        ')||'#39#39'/'#39#39'||Extract(month from t.data) as MesAno'
      ''
      'FROM TRANSACOESESTOQUE T '
      'LEFT JOIN ITENS I ON T.ITEM=I.ITEM '
      'LEFT JOIN GRUPOS G ON I.GRUPO=G.GRUPO '
      'LEFT JOIN FAVORECIDOS F ON T.FAVORECIDO=F.FAVORECIDO '
      
        'LEFT JOIN ITENSUNIDADES IU ON T.ITEM = IU.ITEM AND IU.UNIDADE = ' +
        'I.UNIDADE '
      'LEFT JOIN TIPOSORIGENS TPO ON T.TIPOORIGEM = TPO.ORIGEM '
      'LEFT JOIN FABRICANTES FAB ON I.FABRICANTE=FAB.FABRICANTE'
      'where t.data >= :dDataI and t.data <= :dDataF')
    Left = 700
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dDataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dDataF'
        ParamType = ptUnknown
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Left = 700
    Top = 263
  end
  inherited P_Consulta: TDataSetProvider
    Left = 700
  end
  inherited C_Consulta: TClientDataSet
    Left = 700
    Top = 210
    object C_ConsultaTRANSACAOESTOQUE: TIntegerField
      FieldName = 'TRANSACAOESTOQUE'
      Origin = 'TRANSACOESESTOQUE.TRANSACAOESTOQUE'
      Required = True
    end
    object C_ConsultaIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
      Origin = 'TRANSACOESESTOQUE.IDGERADOR'
    end
    object C_ConsultaTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
      Origin = 'TRANSACOESESTOQUE.TIPOORIGEM'
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'TRANSACOESESTOQUE.ITEM'
    end
    object C_ConsultaGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'ITENS.GRUPO'
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'TRANSACOESESTOQUE.DATA'
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'TRANSACOESESTOQUE.UNIDADE'
      Size = 6
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ConsultaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'TRANSACOESESTOQUE.QUANTIDADE'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 3
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'TRANSACOESESTOQUE.NUMERO'
      Size = 15
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'TRANSACOESESTOQUE.FAVORECIDO'
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaDESCFABRIC: TStringField
      FieldName = 'DESCFABRIC'
      Origin = 'FABRICANTES.DESCFABRIC'
      Size = 30
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaSUBTOTALPC: TFloatField
      FieldName = 'SUBTOTALPC'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultacfEstoque: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'cfEstoque'
    end
    object C_ConsultaDESCORIGEM: TStringField
      FieldName = 'DESCORIGEM'
      Origin = 'TIPOSORIGENS.DESCORIGEM'
      Size = 40
    end
    object C_ConsultaFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'TRANSACOESESTOQUE.FATOR'
    end
    object C_ConsultaFATORESTOQUE: TFloatField
      FieldName = 'FATORESTOQUE'
      Origin = 'ITENSUNIDADES.FATORESTOQUE'
    end
    object C_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'TRANSACOESESTOQUE.PRECO'
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'TRANSACOESESTOQUE.PRECOCOMPRA'
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      DisplayFormat = '#,##0.0##'
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      DisplayFormat = '#,##0.0##'
    end
    object C_ConsultaSUBTOTALCM: TFloatField
      FieldName = 'SUBTOTALCM'
      DisplayFormat = '#,##0.0##'
    end
    object C_ConsultaSUBTOTALCC: TFloatField
      FieldName = 'SUBTOTALCC'
      DisplayFormat = '#,##0.0##'
    end
    object C_ConsultaUnidVenda: TStringField
      FieldName = 'UnidVenda'
      Size = 6
    end
    object C_ConsultaMESANO: TStringField
      FieldName = 'MESANO'
      Size = 13
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 571
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    Left = 179
    Top = 196
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3676438426
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 631
    Top = 85
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Extrato Completo'
    FirstEditField = edDataIni
    Left = 605
    Top = 151
  end
end

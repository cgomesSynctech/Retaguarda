inherited RptExtratoEntradas: TRptExtratoEntradas
  Left = 31
  Top = 73
  Width = 767
  Height = 462
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 759
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 272
      Caption = 'Entradas de Itens Detalhado'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 725
    end
  end
  inherited pnGrid: TPanel
    Width = 706
    Height = 397
    inherited pnDados: TTS_Panel
      Width = 706
      Color = 15196656
      object TS_Label1: TTS_Label
        Left = 2
        Top = 4
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 131
        Top = 4
        Width = 16
        Alignment = taCenter
        Caption = #224
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataIni: TTS_DateTimePicker
        Left = 47
        Top = 2
        Width = 84
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFornecedores
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
        Left = 149
        Top = 2
        Width = 85
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFornecedores
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
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 248
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
        StyleController = DMProjeto.esFornecedores
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
        TS_FornecedorSelecionado = 0
        TS_PossuiEstoque = False
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        OnSelecionou = PopupFiltroItensSelecionou
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 706
      Height = 356
      KeyField = 'TRANSACAOESTOQUE'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'dbgConsultaDATA'
              SummaryField = 'DATA'
              SummaryFormat = '###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'QUANTIDADE'
              SummaryFormat = '>QUANTIDADE=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'SUBTOTALPC'
              SummaryFormat = '>SUBTOTALPC=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      HighlightColor = clWindow
      HighlightTextColor = clWindowText
      ShowRowFooter = True
      RowFooterNodeFont.Height = -9
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'DATA;count;D'
        'QUANTIDADE;sum;U'
        'SUBTOTALPC;sum;U')
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaMesano: TdxDBGridColumn
        Caption = 'MesAno'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MESANO'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaREFERENCIA: TdxDBGridColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Item'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 207
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        GroupIndex = 0
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Unid.'
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridMaskColumn
        Caption = 'Quantidade'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        OnSummaryFooter = dbgConsultaQUANTIDADESummaryFooter
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o Venda'
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        SummaryFooterFormat = '##0.00,###'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn
        Caption = 'SubTotal PV'
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridColumn
        Caption = 'Pre'#231'o Compra'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
      end
      object dbgConsultaSUBTOTALPC: TdxDBGridColumn
        Caption = 'SubTotal'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALPC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaDESCORIGEM: TdxDBGridColumn
        Caption = 'Tipo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCORIGEM'
      end
      object dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn
        Caption = 'SubTotal CM'
        HeaderAlignment = taCenter
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCM'
        EditMask = '###,###,##0.00'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFABRIC'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaID: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDGERADOR'
      end
      object dbgConsultaIDCLIENTE: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaTIPOFAVORECIDOCLIENTE: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ULTIMOFORNECEDOR'
      end
      object dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDOFORN'
      end
      object dbgConsultaIDITEM: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaSAIDA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOORIGEM'
      end
      object dbgConsultaSUBTOTALCC: TdxDBGridColumn
        Caption = 'SubTotal CC'
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALCC'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 378
      Width = 706
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 397
    inherited btSair: TTS_SpeedButton
      Top = 352
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 629
    Top = 367
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 667
    Top = 367
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 225
    Top = 130
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select t.transacaoestoque,t.idgerador, t.tipoorigem, t.item, i.g' +
        'rupo, t.data, i.descricao, t.preco, t.customedio*t.fator as cust' +
        'omedio, i.codigo, t.custocontabil*t.fator as custocontabil, t.un' +
        'idade, i.referencia, t.quantidade, t.numero, t.favorecido, f.nom' +
        'e, f.tipofavorecido, fab.descricao as DescFabric, t.precocompra,' +
        ' i.fatorundcompra, t.fator,'
      'g.descricaogrupo, tpo.descricao as descorigem,'
      '(t.quantidade * t.preco) as SubTotalItem,'
      '(t.quantidade * t.precocompra) as SubTotalPC,'
      '(t.quantidade * t.customedio * t.fator) as SubTotalCM,'
      '(t.quantidade * t.custocontabil * t.fator) as SubTotalCC,'
      
        'Extract(month from t.data)||'#39'/'#39'||Extract(year from t.data) as Me' +
        'sAno'
      'From transacoesestoque t'
      'inner Join itens i On t.item=i.item'
      'inner join tiposorigens tpo on t.tipoorigem = tpo.origem'
      'Left Join favorecidos f On t.favorecido=f.favorecido'
      'Left Join fabricantes fab On i.fabricante=fab.fabricante'
      'Left Join grupos g On i.grupo=g.grupo'
      'where t.quantidade > 0')
    Left = 647
    Top = 148
  end
  inherited C_ConsultaDS: TDataSource
    Left = 652
    Top = 271
  end
  inherited P_Consulta: TDataSetProvider
    Left = 652
    Top = 195
  end
  inherited C_Consulta: TClientDataSet
    Left = 652
    Top = 234
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
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ConsultaTRANSACAOESTOQUE: TIntegerField
      FieldName = 'TRANSACAOESTOQUE'
      Origin = 'TRANSACOESESTOQUE.TRANSACAOESTOQUE'
      Required = True
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaSUBTOTALCM: TFloatField
      FieldName = 'SUBTOTALCM'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaSUBTOTALCC: TFloatField
      FieldName = 'SUBTOTALCC'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaSUBTOTALPC: TFloatField
      FieldName = 'SUBTOTALPC'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaDESCORIGEM: TStringField
      FieldName = 'DESCORIGEM'
      Origin = 'TIPOSORIGENS.DESCORIGEM'
      Size = 40
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
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      DisplayFormat = '#,###,##0.00'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaFATORUNDCOMPRA: TFloatField
      FieldName = 'FATORUNDCOMPRA'
    end
    object C_ConsultaFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_ConsultaMESANO: TStringField
      FieldName = 'MESANO'
      Size = 13
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Entradas de Itens Detalhado'
    FirstEditField = edDataIni
    Left = 547
    Top = 143
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 425
    Top = 119
    inherited Ajuda1: TMenuItem
      HelpContext = 569
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3673143171
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

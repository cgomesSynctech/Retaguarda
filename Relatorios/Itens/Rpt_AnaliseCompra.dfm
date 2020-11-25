inherited RptAnaliseCompra: TRptAnaliseCompra
  Left = -8
  Top = -8
  Width = 1292
  Height = 786
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1276
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 282
      Caption = 'An'#225'lise de Itens para Compra'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1254
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 1181
    end
  end
  inherited pnGrid: TPanel
    Width = 1223
    Height = 712
    object Label1: TLabel [0]
      Left = 600
      Top = 160
      Width = 49
      Height = 13
      Caption = 'AP_MES2'
    end
    inherited RichEdit: TRichEdit
      Left = 28
      Top = 215
      Width = 603
    end
    inherited pnDados: TTS_Panel
      Width = 1223
      Height = 23
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = -27
        Top = 5
        Width = 56
        Caption = 'Itens:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 520
        Top = 4
        Width = 117
        Caption = 'Margem Seguran'#231'a %:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 690
        Top = 5
        Width = 73
        Caption = 'Nro. Dias:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfEstoqueItens: TTS_ImageEdit
        Left = 31
        Top = 2
        Width = 202
        Style.BorderColor = 7976663
        TabOrder = 0
        Text = 'M'
        StyleController = DMProjeto.esItens
        OnChange = dfEstoqueItensChange
        Descriptions.Strings = (
          'Todos os Itens'
          'Itens que est'#227'o no Estoque M'#237'nimo'
          'Itens que est'#227'o com Estoque'
          'Itens que est'#227'o sem Estoque'
          'Itens que est'#227'o com Estoque Negativo'
          'Itens que est'#227'o no Ponto de Pedido')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
        Values.Strings = (
          'T'
          'M'
          'E'
          'Z'
          'N'
          'P')
        Height = 19
      end
      object dfRevenda: TTS_ImageEdit
        Left = 234
        Top = 2
        Width = 68
        Style.BorderColor = 7976663
        TabOrder = 1
        Text = 'R'
        StyleController = DMProjeto.esItens
        OnChange = dfEstoqueItensChange
        Descriptions.Strings = (
          'Itens de Revenda'
          'Os que n'#227'o s'#227'o de Revenda'
          'Todos os Itens')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'R'
          'C'
          'T')
        Height = 19
      end
      object dfDesativado: TTS_ImageEdit
        Left = 305
        Top = 2
        Width = 74
        Style.BorderColor = 7976663
        TabOrder = 2
        Text = 'N'
        StyleController = DMProjeto.esItens
        OnChange = dfEstoqueItensChange
        Descriptions.Strings = (
          'Somente os Ativos'
          'Somente os Desativados'
          'Ativos e Inativos')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'N'
          'S'
          'T')
        Height = 19
      end
      object EstoqueSeguranca: TTS_CalcEdit
        Left = 638
        Top = 2
        Width = 50
        TabOrder = 3
        StyleController = DMProjeto.esItens
        Text = '30'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
          000000FD000006060404040404040400000006FF0606060606060400000006FE
          0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
          000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
          FEFF06000000FD0606060606060606FD0000}
        Value = 30
        Height = 19
        StoredValues = 1
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 388
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
        TabOrder = 4
        AutoSelect = False
        StyleController = DMProjeto.esItens
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
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
      object dfDias: TTS_CalcEdit
        Left = 766
        Top = 2
        Width = 50
        TabOrder = 5
        StyleController = DMProjeto.esItens
        Text = '30'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
          000000FD000006060404040404040400000006FF0606060606060400000006FE
          0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
          000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
          FEFF06000000FD0606060606060606FD0000}
        Value = 30
        Height = 19
        StoredValues = 1
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 23
      Width = 1223
      Height = 670
      Bands = <
        item
          Caption = 'Configura'#231#227'o do Item'
          Width = 442
        end
        item
          Caption = 'Sugest'#227'o'
        end
        item
          Caption = 'Ultima Compra do Item'
          Width = 256
        end
        item
          Caption = 'Sa'#237'das nos '#218'ltimos Meses'
          Width = 220
        end>
      KeyField = 'ITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'dbgConsultaDESCRICAO'
              SummaryField = 'Descricao'
              SummaryFormat = '###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      BandColor = 14408667
      BandFont.Color = clMaroon
      BandFont.Style = [fsBold]
      Filter.Criteria = {00000000}
      FixedBandLineColor = 14211288
      FixedBandLineWidth = 1
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoMultiSelect, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      ShowBands = True
      TS_ShowSelectionColumn = True
      TS_OnSelection = dbgConsultaTS_OnSelection
      TS_SelectedColumn = '_icSelecionado'
      TS_SummaryFields.Strings = (
        'Descricao;Count;D')
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        VertAlignment = tlCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Caption = 'Und.'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
        StoredRowIndex = 1
      end
      object dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn
        Caption = 'Minimo'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMINIMO'
        StoredRowIndex = 1
      end
      object dbgConsultaPONTOPEDIDO: TdxDBGridMaskColumn
        Caption = 'Ponto Pedido'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PONTOPEDIDO'
        StoredRowIndex = 1
      end
      object dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Ult. Custo'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 56
        BandIndex = 2
        RowIndex = 0
        FieldName = 'PRECOCOMPRA'
        StoredRowIndex = 1
      end
      object dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn
        Caption = 'C. Cont'#225'bil'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 33805
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOCONTABIL'
      end
      object dbgConsultaDESCRICAOCOMPRA: TdxDBGridMaskColumn
        Caption = 'Desc. Compra'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 86568
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOCOMPRA'
      end
      object dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn
        Caption = 'M'#225'ximo'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 33805
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMAXIMO'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Caption = 'Estoque'
        DisableEditor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
        StoredRowIndex = 1
      end
      object dbgConsultaPED_COMPRA_EM_ABERTO: TdxDBGridColumn
        Caption = 'Ped. Aberto'
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PED_COMPRA_EM_ABERTO'
      end
      object dbgConsultaSEMLUCRO: TdxDBGridMaskColumn
        Caption = '% Custos'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 33805
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEMLUCRO'
      end
      object dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn
        Caption = 'Custo M'#233'dio'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CUSTOMEDIO'
        StoredRowIndex = 1
      end
      object dbgConsultaFATORLUCRO: TdxDBGridMaskColumn
        Caption = '% Lucro'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 22910
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATORLUCRO'
      end
      object dbgConsultaDESCULTFORNEC: TdxDBGridMaskColumn
        Caption = 'Ult. Fornecedor'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 87
        BandIndex = 2
        RowIndex = 0
        FieldName = 'DESCULTFORNEC'
      end
      object dbgConsultaDESCPREFFORNEC: TdxDBGridMaskColumn
        Caption = 'Fornec. Preferencial'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Visible = False
        Width = 86568
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCPREFFORNEC'
      end
      object dbgConsultaDESCRICAOGRUPO: TdxDBGridColumn
        Caption = 'Grupo'
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaDESCFABRICANTE: TdxDBGridColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFABRICANTE'
      end
      object dbgConsultaSAIDASEsteMes: TdxDBGridMaskColumn
        Caption = 'Este M'#234's'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 55
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icSAIDASEsteMes'
      end
      object dbgConsultaSAIDASMP1: TdxDBGridMaskColumn
        Caption = 'MESP1'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 55
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icSaidasMP1'
      end
      object dbgConsultaSAIDASMP2: TdxDBGridMaskColumn
        Caption = 'MESP2'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 55
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icSAIDASMP2'
        StoredRowIndex = 1
      end
      object dbgConsultaSAIDASMP3: TdxDBGridMaskColumn
        Caption = 'MESP3'
        DisableEditor = True
        HeaderAlignment = taCenter
        VertAlignment = tlCenter
        Width = 55
        BandIndex = 3
        RowIndex = 0
        FieldName = 'icSAIDASMP3'
        StoredRowIndex = 1
      end
      object dbgConsultaData: TdxDBGridDateColumn
        Caption = 'Data'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 2
        RowIndex = 0
        FieldName = 'ULTIMACOMPRA'
        StoredRowIndex = 1
      end
      object dbgConsultaMes1AP: TdxDBGridMaskColumn
        Caption = 'MES1'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = -1
        RowIndex = 0
        FieldName = 'icAP_MesCorrente'
      end
      object dbgConsultaUltQtdeCompra: TdxDBGridColumn
        Caption = 'Ult. Qtde'
        Width = 54
        BandIndex = 2
        RowIndex = 0
        FieldName = 'ULTQTDECOMPRA'
      end
      object dbgConsultaMes2AP: TdxDBGridMaskColumn
        Caption = 'MES2'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = -1
        RowIndex = 0
        FieldName = 'icAP_Mes2'
      end
      object dbgConsultaMes3AP: TdxDBGridMaskColumn
        Caption = 'MES3'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = -1
        RowIndex = 0
        FieldName = 'icAP_Mes3'
        StoredRowIndex = 1
      end
      object dbgConsultaMes4AP: TdxDBGridMaskColumn
        Caption = 'MES4'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 46
        BandIndex = -1
        RowIndex = 0
        FieldName = 'icAP_Mes4'
        StoredRowIndex = 1
      end
      object dbgConsultaicSugestao: TdxDBGridColumn
        Caption = 'Sugest'#227'o Compra'
        BandIndex = 1
        RowIndex = 0
        FieldName = 'icSugestao'
      end
      object dbgConsultaQtdPedido: TdxDBGridColumn
        Caption = 'Qtd. Pedido'
        BandIndex = 1
        RowIndex = 0
        FieldName = 'icQtdPedido'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 693
      Width = 1223
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 712
    inherited btSair: TTS_SpeedButton
      Top = 667
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 691
    Top = 294
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select   i.PED_COMPRA_EM_ABERTO, i.Item, i.Codigo, i.Descricao, ' +
        'i.Referencia, i.CustoMedio, i.PrecoCompra,  i.CustoContabil, i.U' +
        'ltimoFornecedor, i.Grupo, i.Fabricante,    i.DescricaoCompra, i.' +
        'QtdeMinimo, i.PontoPedido, i.QtdeMaximo,  i.Unidade, i.Estoque, ' +
        'i.SemLucro, i.FatorLucro,  ult.Nome as DescUltFornec, pref.Nome ' +
        'as DescPrefFornec,    g.DescricaoGrupo, f.Descricao as DescFabri' +
        'cante, i.UltimaCompra, i.UltQtdeCompra,'
      
        ' (Select Avg(Quantidade * -1)  from TransacoesEstoque  t  where ' +
        'Item = i.Item and  (t.TipoOrigem not in (18,38,39,45,46,55)) and' +
        '  Quantidade < 0 and t.Data >= :Ulimos3Meses) as Media3Meses, '
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data < :Hoje and t' +
        '.Data >= :FMDC ) as SaidasEsteMes,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data < :FMDC and t' +
        '.Data >= :FMD30 ) as SaidasMP1,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data < :FMD30 and ' +
        't.Data >= :FMD60 ) as SaidasMP2,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data < :FMD60 and ' +
        't.Data >= :FMD90 ) as SaidasMP3,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data >= :M1I_AP an' +
        'd t.Data <= :M1F_AP ) as AP_MesCorrente,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data > :M1F_AP and' +
        ' t.Data <= :M2F_AP ) as AP_Mes2,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data > :M2F_AP and' +
        ' t.Data <= :M3F_AP ) as AP_Mes3,'
      
        '(Select Sum(Quantidade)  from TransacoesEstoque  t inner join Sa' +
        'idas s on s.saida = t.idgerador    where Item = i.Item and  s.ti' +
        'popadrao in (1,6,7) and  Quantidade < 0 and t.Data > :M3F_AP and' +
        ' t.Data <= :M4F_AP ) as AP_Mes4'
      'From     Itens i LEFT JOIN Grupos g ON g.Grupo = i.Grupo'
      '    LEFT JOIN Fabricantes f ON f.Fabricante = i.Fabricante '
      
        '    LEFT JOIN Favorecidos ult ON ult.Favorecido = i.UltimoFornec' +
        'edor'
      
        '    LEFT JOIN Favorecidos pref ON pref.Favorecido = i.FornecPref' +
        'erencia'
      ''
      '')
    UpdateObject = U_Consulta
    Left = 413
    Top = 138
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Ulimos3Meses'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hoje'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMDC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMDC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMD30'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMD30'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMD60'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMD60'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FMD90'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M1I_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M1F_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M1F_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M2F_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M2F_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M3F_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M3F_AP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'M4F_AP'
        ParamType = ptUnknown
      end>
  end
  inherited C_ConsultaDS: TDataSource
    Left = 412
    Top = 278
  end
  inherited P_Consulta: TDataSetProvider
    Left = 414
    Top = 185
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 413
    Top = 232
    object C_ConsultaicAP_MesCorrente: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icAP_MesCorrente'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicAP_Mes2: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icAP_Mes2'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicAP_Mes3: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icAP_Mes3'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicAP_Mes4: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icAP_Mes4'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicSAIDASEsteMes: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSAIDASEsteMes'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicSaidasMP1: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSaidasMP1'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicSAIDASMP2: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSAIDASMP2'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicSAIDASMP3: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSAIDASMP3'
      DisplayFormat = '#,##0.###'
    end
    object C_ConsultaicMaiorVenda: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icMaiorVenda'
    end
    object C_ConsultaicSugestao: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icSugestao'
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_ConsultaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_ConsultaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ConsultaULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
    end
    object C_ConsultaGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_ConsultaFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_ConsultaDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Size = 50
    end
    object C_ConsultaQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSEMLUCRO: TFloatField
      FieldName = 'SEMLUCRO'
    end
    object C_ConsultaFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
    end
    object C_ConsultaDESCULTFORNEC: TStringField
      FieldName = 'DESCULTFORNEC'
      Size = 50
    end
    object C_ConsultaDESCPREFFORNEC: TStringField
      FieldName = 'DESCPREFFORNEC'
      Size = 50
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Size = 30
    end
    object C_ConsultaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object C_ConsultaULTQTDECOMPRA: TBCDField
      FieldName = 'ULTQTDECOMPRA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSAIDASESTEMES: TBCDField
      FieldName = 'SAIDASESTEMES'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSAIDASMP1: TBCDField
      FieldName = 'SAIDASMP1'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSAIDASMP2: TBCDField
      FieldName = 'SAIDASMP2'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSAIDASMP3: TBCDField
      FieldName = 'SAIDASMP3'
      Precision = 18
      Size = 3
    end
    object C_ConsultaAP_MESCORRENTE: TBCDField
      FieldName = 'AP_MESCORRENTE'
      Precision = 18
      Size = 3
    end
    object C_ConsultaAP_MES2: TBCDField
      FieldName = 'AP_MES2'
      Precision = 18
      Size = 3
    end
    object C_ConsultaAP_MES3: TBCDField
      FieldName = 'AP_MES3'
      Precision = 18
      Size = 3
    end
    object C_ConsultaAP_MES4: TBCDField
      FieldName = 'AP_MES4'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPED_COMPRA_EM_ABERTO: TBCDField
      FieldName = 'PED_COMPRA_EM_ABERTO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaicQtdPedido: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icQtdPedido'
    end
    object C_Consulta_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ConsultaMEDIA3MESES: TBCDField
      FieldName = 'MEDIA3MESES'
      Precision = 18
      Size = 3
    end
  end
  inherited ppmDados: TTS_PopupMenu
    Left = 239
    Top = 192
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 239
    Top = 147
  end
  inherited ppmExportacao: TTS_PopupMenu
    object N2: TMenuItem
      Caption = '-'
    end
    object GerarPedido1: TMenuItem
      Caption = 'Gerar Pedido'
      ShortCut = 16469
      OnClick = GerarPedido1Click
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 535
    Top = 155
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37282.4707886227
      PrinterPage.Footer = 2970
      PrinterPage.Header = 2970
      PrinterPage.Margins.Bottom = 6350
      PrinterPage.Margins.Left = 10000
      PrinterPage.Margins.Right = 10400
      PrinterPage.Margins.Top = 30000
      PrinterPage.Orientation = poLandscape
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      Options = [tlpoBands, tlpoHeaders, tlpoFooters, tlpoRowFooters, tlpoPreview, tlpoFlatCheckMarks, tlpoSoft3D]
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 543
    Top = 100
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'An'#225'lise de Itens para Compra'
  end
  object U_Consulta: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TransacoesEstoque '
      'where'
      '  PED_COMPRA_EM_ABERTO = :PED_COMPRA_EM_ABERTO and'
      '  ITEM = :ITEM and'
      '  CODIGO = :CODIGO and'
      '  DESCRICAO = :DESCRICAO and'
      '  REFERENCIA = :REFERENCIA and'
      '  CUSTOMEDIO = :CUSTOMEDIO and'
      '  PRECOCOMPRA = :PRECOCOMPRA and'
      '  CUSTOCONTABIL = :CUSTOCONTABIL and'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR and'
      '  GRUPO = :GRUPO and'
      '  FABRICANTE = :FABRICANTE and'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA and'
      '  QTDEMINIMO = :QTDEMINIMO and'
      '  PONTOPEDIDO = :PONTOPEDIDO and'
      '  QTDEMAXIMO = :QTDEMAXIMO and'
      '  UNIDADE = :UNIDADE and'
      '  ESTOQUE = :ESTOQUE and'
      '  SEMLUCRO = :SEMLUCRO and'
      '  FATORLUCRO = :FATORLUCRO and'
      '  DESCULTFORNEC = :DESCULTFORNEC and'
      '  DESCPREFFORNEC = :DESCPREFFORNEC and'
      '  DESCRICAOGRUPO = :DESCRICAOGRUPO and'
      '  DESCFABRICANTE = :DESCFABRICANTE and'
      '  ULTIMACOMPRA = :ULTIMACOMPRA and'
      '  ULTQTDECOMPRA = :ULTQTDECOMPRA and'
      '  SAIDASESTEMES = :SAIDASESTEMES and'
      '  SAIDASMP1 = :SAIDASMP1 and'
      '  SAIDASMP2 = :SAIDASMP2 and'
      '  SAIDASMP3 = :SAIDASMP3 and'
      '  AP_MESCORRENTE = :AP_MESCORRENTE and'
      '  AP_MES2 = :AP_MES2 and'
      '  AP_MES3 = :AP_MES3 and'
      '  AP_MES4 = :AP_MES4')
    ModifySQL.Strings = (
      'update TransacoesEstoque'
      'set'
      '  PED_COMPRA_EM_ABERTO = :PED_COMPRA_EM_ABERTO,'
      '  ITEM = :ITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  REFERENCIA = :REFERENCIA,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  GRUPO = :GRUPO,'
      '  FABRICANTE = :FABRICANTE,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  UNIDADE = :UNIDADE,'
      '  ESTOQUE = :ESTOQUE,'
      '  SEMLUCRO = :SEMLUCRO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  DESCULTFORNEC = :DESCULTFORNEC,'
      '  DESCPREFFORNEC = :DESCPREFFORNEC,'
      '  DESCRICAOGRUPO = :DESCRICAOGRUPO,'
      '  DESCFABRICANTE = :DESCFABRICANTE,'
      '  ULTIMACOMPRA = :ULTIMACOMPRA,'
      '  ULTQTDECOMPRA = :ULTQTDECOMPRA,'
      '  SAIDASESTEMES = :SAIDASESTEMES,'
      '  SAIDASMP1 = :SAIDASMP1,'
      '  SAIDASMP2 = :SAIDASMP2,'
      '  SAIDASMP3 = :SAIDASMP3,'
      '  AP_MESCORRENTE = :AP_MESCORRENTE,'
      '  AP_MES2 = :AP_MES2,'
      '  AP_MES3 = :AP_MES3,'
      '  AP_MES4 = :AP_MES4'
      'where'
      '  PED_COMPRA_EM_ABERTO = :OLD_PED_COMPRA_EM_ABERTO and'
      '  ITEM = :OLD_ITEM and'
      '  CODIGO = :OLD_CODIGO and'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  REFERENCIA = :OLD_REFERENCIA and'
      '  CUSTOMEDIO = :OLD_CUSTOMEDIO and'
      '  PRECOCOMPRA = :OLD_PRECOCOMPRA and'
      '  CUSTOCONTABIL = :OLD_CUSTOCONTABIL and'
      '  ULTIMOFORNECEDOR = :OLD_ULTIMOFORNECEDOR and'
      '  GRUPO = :OLD_GRUPO and'
      '  FABRICANTE = :OLD_FABRICANTE and'
      '  DESCRICAOCOMPRA = :OLD_DESCRICAOCOMPRA and'
      '  QTDEMINIMO = :OLD_QTDEMINIMO and'
      '  PONTOPEDIDO = :OLD_PONTOPEDIDO and'
      '  QTDEMAXIMO = :OLD_QTDEMAXIMO and'
      '  UNIDADE = :OLD_UNIDADE and'
      '  ESTOQUE = :OLD_ESTOQUE and'
      '  SEMLUCRO = :OLD_SEMLUCRO and'
      '  FATORLUCRO = :OLD_FATORLUCRO and'
      '  DESCULTFORNEC = :OLD_DESCULTFORNEC and'
      '  DESCPREFFORNEC = :OLD_DESCPREFFORNEC and'
      '  DESCRICAOGRUPO = :OLD_DESCRICAOGRUPO and'
      '  DESCFABRICANTE = :OLD_DESCFABRICANTE and'
      '  ULTIMACOMPRA = :OLD_ULTIMACOMPRA and'
      '  ULTQTDECOMPRA = :OLD_ULTQTDECOMPRA and'
      '  SAIDASESTEMES = :OLD_SAIDASESTEMES and'
      '  SAIDASMP1 = :OLD_SAIDASMP1 and'
      '  SAIDASMP2 = :OLD_SAIDASMP2 and'
      '  SAIDASMP3 = :OLD_SAIDASMP3 and'
      '  AP_MESCORRENTE = :OLD_AP_MESCORRENTE and'
      '  AP_MES2 = :OLD_AP_MES2 and'
      '  AP_MES3 = :OLD_AP_MES3 and'
      '  AP_MES4 = :OLD_AP_MES4')
    InsertSQL.Strings = (
      'insert into TransacoesEstoque'
      '  (PED_COMPRA_EM_ABERTO, ITEM, CODIGO, DESCRICAO, REFERENCIA, '
      'CUSTOMEDIO, '
      '   PRECOCOMPRA, CUSTOCONTABIL, ULTIMOFORNECEDOR, GRUPO, '
      'FABRICANTE, DESCRICAOCOMPRA, '
      '   QTDEMINIMO, PONTOPEDIDO, QTDEMAXIMO, UNIDADE, ESTOQUE, '
      'SEMLUCRO, FATORLUCRO, '
      '   DESCULTFORNEC, DESCPREFFORNEC, DESCRICAOGRUPO, '
      'DESCFABRICANTE, ULTIMACOMPRA, '
      
        '   ULTQTDECOMPRA, SAIDASESTEMES, SAIDASMP1, SAIDASMP2, SAIDASMP3' +
        ', '
      'AP_MESCORRENTE, '
      '   AP_MES2, AP_MES3, AP_MES4)'
      'values'
      
        '  (:PED_COMPRA_EM_ABERTO, :ITEM, :CODIGO, :DESCRICAO, :REFERENCI' +
        'A, '
      ':CUSTOMEDIO, '
      '   :PRECOCOMPRA, :CUSTOCONTABIL, :ULTIMOFORNECEDOR, :GRUPO, '
      ':FABRICANTE, '
      '   :DESCRICAOCOMPRA, :QTDEMINIMO, :PONTOPEDIDO, :QTDEMAXIMO, '
      ':UNIDADE, '
      '   :ESTOQUE, :SEMLUCRO, :FATORLUCRO, :DESCULTFORNEC, '
      ':DESCPREFFORNEC, :DESCRICAOGRUPO, '
      '   :DESCFABRICANTE, :ULTIMACOMPRA, :ULTQTDECOMPRA, '
      ':SAIDASESTEMES, :SAIDASMP1, '
      '   :SAIDASMP2, :SAIDASMP3, :AP_MESCORRENTE, :AP_MES2, :AP_MES3, '
      ':AP_MES4)')
    DeleteSQL.Strings = (
      'delete from TransacoesEstoque'
      'where'
      '  PED_COMPRA_EM_ABERTO = :OLD_PED_COMPRA_EM_ABERTO and'
      '  ITEM = :OLD_ITEM and'
      '  CODIGO = :OLD_CODIGO and'
      '  DESCRICAO = :OLD_DESCRICAO and'
      '  REFERENCIA = :OLD_REFERENCIA and'
      '  CUSTOMEDIO = :OLD_CUSTOMEDIO and'
      '  PRECOCOMPRA = :OLD_PRECOCOMPRA and'
      '  CUSTOCONTABIL = :OLD_CUSTOCONTABIL and'
      '  ULTIMOFORNECEDOR = :OLD_ULTIMOFORNECEDOR and'
      '  GRUPO = :OLD_GRUPO and'
      '  FABRICANTE = :OLD_FABRICANTE and'
      '  DESCRICAOCOMPRA = :OLD_DESCRICAOCOMPRA and'
      '  QTDEMINIMO = :OLD_QTDEMINIMO and'
      '  PONTOPEDIDO = :OLD_PONTOPEDIDO and'
      '  QTDEMAXIMO = :OLD_QTDEMAXIMO and'
      '  UNIDADE = :OLD_UNIDADE and'
      '  ESTOQUE = :OLD_ESTOQUE and'
      '  SEMLUCRO = :OLD_SEMLUCRO and'
      '  FATORLUCRO = :OLD_FATORLUCRO and'
      '  DESCULTFORNEC = :OLD_DESCULTFORNEC and'
      '  DESCPREFFORNEC = :OLD_DESCPREFFORNEC and'
      '  DESCRICAOGRUPO = :OLD_DESCRICAOGRUPO and'
      '  DESCFABRICANTE = :OLD_DESCFABRICANTE and'
      '  ULTIMACOMPRA = :OLD_ULTIMACOMPRA and'
      '  ULTQTDECOMPRA = :OLD_ULTQTDECOMPRA and'
      '  SAIDASESTEMES = :OLD_SAIDASESTEMES and'
      '  SAIDASMP1 = :OLD_SAIDASMP1 and'
      '  SAIDASMP2 = :OLD_SAIDASMP2 and'
      '  SAIDASMP3 = :OLD_SAIDASMP3 and'
      '  AP_MESCORRENTE = :OLD_AP_MESCORRENTE and'
      '  AP_MES2 = :OLD_AP_MES2 and'
      '  AP_MES3 = :OLD_AP_MES3 and'
      '  AP_MES4 = :OLD_AP_MES4')
    Left = 412
    Top = 332
  end
end

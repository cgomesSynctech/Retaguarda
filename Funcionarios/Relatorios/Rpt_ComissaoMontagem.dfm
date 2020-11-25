inherited RptComissaoMontagem: TRptComissaoMontagem
  Left = 194
  Top = 145
  Width = 938
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 922
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 199
      Caption = 'Comiss'#227'o Montagem'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 896
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 869
    end
  end
  inherited pnGrid: TPanel
    Width = 869
    inherited pnDados: TTS_Panel
      Width = 869
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = 8
        Top = 4
        Width = 44
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 132
        Top = 4
        Width = 15
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 240
        Top = 4
        Width = 76
        Alignment = taLeftJustify
        Caption = 'Tipo Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edDataI: TTS_DateTimePicker
        Left = 53
        Top = 2
        Width = 78
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
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
      object edDataF: TTS_DateTimePicker
        Left = 149
        Top = 2
        Width = 81
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFuncionarios
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
      object ppeTipoOperacao: TTS_PopupEdit
        Left = 319
        Top = 2
        Width = 154
        TabOrder = 2
        AutoSelect = False
        StyleController = DMProjeto.esFuncionarios
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = ppeTipoOperacaoCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object FiltroItens: TTS_PopupFiltrarItens
        Left = 496
        Top = 2
        Width = 153
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        AutoSelect = False
        StyleController = DMProjeto.esClientes
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
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 869
      KeyField = 'SAIDAITEM'
      ShowGroupPanel = True
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
              SummaryField = 'subtotalitem'
              SummaryFormat = '>subtotalitem=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ComissaoPrcTabela'
              SummaryFormat = '>ComissaoPrcTabela=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ComissaoPrcVenda'
              SummaryFormat = '>ComissaoPrcVenda=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'CODIGO;COUNT'
        'subtotalitem;SUM'
        'ComissaoPrcTabela;SUM'
        'ComissaoPrcVenda;SUM'
        '')
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaTipoItem: TdxDBGridColumn
        Caption = 'Tipo Item'
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'Item C'#243'digo'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Item Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        Caption = 'Nome Cliente'
        HeaderAlignment = taCenter
        Visible = False
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object dbgConsultaPRECO: TdxDBGridMaskColumn
        Caption = 'Pre'#231'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        EditMask = 'R$ ,0.00;-R$ ,0.00'
      end
      object dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn
        Caption = 'Qtd.'
        HeaderAlignment = taCenter
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        DisplayFormat = '0'
        Nullable = False
      end
      object dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn
        Caption = 'SubTotal'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALITEM'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaQTDFATURADA: TdxDBGridCurrencyColumn
        Caption = 'Qtd Faturada'
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDFATURADA'
        Nullable = False
      end
      object dbgConsultaFUNCVENDA: TdxDBGridMaskColumn
        Caption = 'Montador'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 129
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCVENDA'
        GroupIndex = 0
      end
      object dbgConsultaCOMISSAO: TdxDBGridColumn
        Caption = '%'
        HeaderAlignment = taCenter
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAO'
      end
      object dbgConsultaCOMISSAOPECATABELA: TdxDBGridMaskColumn
        Caption = 'Comiss'#227'o Tabela'
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAOPRCTABELA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCOMISSAOPECAVENDA: TdxDBGridMaskColumn
        Caption = 'Comiss'#227'o Venda'
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMISSAOPRCVENDA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaSAIDAITEM: TdxDBGridColumn
        Caption = 'Id'
        HeaderAlignment = taCenter
        Visible = False
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAITEM'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 869
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 303
      Top = 81
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      KeyField = 'TIPOMOVIMENTO'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select   '
      '       si.saidaitem,'
      '       i.codigo,'
      '       i.comissao,'
      '       ti.descricao as TipoItem,'
      '       s.numero,'
      '       s.data,'
      '       f.nome as Cliente,'
      '       si.preco,'
      '       si.descricao,'
      '       si.subtotalitem,'
      '       si.quantidade,'
      '       si.qtdfaturada,'
      '       v.nome as FuncVenda,'
      
        '       --((si.precotabela * si.quantidade)* i.comissao/100) as C' +
        'omissaoPrcTabela,'
      ''
      
        '       cast(((si.precotabela * si.quantidade)* case when i.comis' +
        'sao < 0 then 0 else i.comissao /100 end) as numeric (15, 3)) as ' +
        'ComissaoPrcTabela,'
      ''
      
        '       --((si.preco * si.quantidade)* i.comissao/100) as Comissa' +
        'oPrcVenda '
      ''
      
        '       cast(((si.preco * si.quantidade)* case when i.comissao < ' +
        '0 then 0 else i.comissao /100 end) as numeric (15, 3)) as Comiss' +
        'aoPrcVenda'
      'from saidas s '
      
        'inner join SaidasItens si on ((s.saida = si.saida) and (s.pdv = ' +
        'si.pdv))'
      'inner join Itens i on i.item = si.item'
      'inner Join tipositens ti on ti.tipoitem = i.tipoitem'
      
        'inner join favorecidos f on ((s.favorecido = f.favorecido) and (' +
        'f.tipofavorecido = 1))'
      
        'inner JOIN FAVORECIDOS v ON ((v.favorecido = si.funcproducao) an' +
        'd (f.tipofavorecido = 3))'
      'where s.data between :idata and :fdata')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idata'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fdata'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaTIPOITEM: TStringField
      FieldName = 'TIPOITEM'
      Size = 30
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object C_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object C_ConsultaFUNCVENDA: TStringField
      FieldName = 'FUNCVENDA'
      Size = 50
    end
    object C_ConsultaCOMISSAOPRCTABELA: TBCDField
      FieldName = 'COMISSAOPRCTABELA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaCOMISSAOPRCVENDA: TBCDField
      FieldName = 'COMISSAOPRCVENDA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Required = True
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_ConsultaSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
    end
    object C_ConsultaQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object C_ConsultaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaQTDFATURADA: TFloatField
      FieldName = 'QTDFATURADA'
    end
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 304
    Top = 111
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 40058.3469093519
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 612
    Top = 102
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Comiss'#227'o Montagem'
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMOVIMENTO, DESCRICAO '
      'From TIPOSMOVIMENTO '
      'Where   TIPO = '#39'S'#39
      'order by DESCRICAO')
    Left = 660
    Top = 122
    object Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object Q_TiposMovimentosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object P_TiposMovimentos: TDataSetProvider
    DataSet = Q_TiposMovimentos
    Constraints = True
    Left = 660
    Top = 178
  end
  object C_TiposMovimentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOMOVIMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'P_TiposMovimentos'
    StoreDefs = True
    Left = 660
    Top = 234
    object C_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_TipoMovimentoDS: TDataSource
    DataSet = C_TiposMovimentos
    Left = 660
    Top = 290
  end
end

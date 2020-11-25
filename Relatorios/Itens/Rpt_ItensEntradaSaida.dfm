inherited RptItensEntradaSaida: TRptItensEntradaSaida
  Left = 631
  Top = 253
  Width = 746
  Height = 462
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 730
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 477
      Caption = 'Relat'#243'rio de Resuprimento de Itens de Invent'#225'rio'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 708
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 677
    end
  end
  inherited pnGrid: TPanel
    Width = 677
    Height = 386
    object Label1: TLabel [0]
      Left = 232
      Top = 120
      Width = 87
      Height = 13
      Caption = 'Pedido de Vendas'
    end
    inherited pnDados: TTS_Panel
      Width = 677
      Height = 24
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = -8
        Top = 5
        Width = 65
        Caption = 'Per'#237'odo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 131
        Top = 6
        Width = 28
        Alignment = taCenter
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 60
        Top = 3
        Width = 80
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 152
        Top = 3
        Width = 80
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object PopupFiltroItens: TTS_PopupFiltrarItens
        Left = 241
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
        OnSelecionou = PopupFiltroItensSelecionou
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 24
      Width = 677
      Height = 343
      KeyField = 'ITEM'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_AnotherColor = 15461355
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Visible = False
        Width = 25
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaNOMEULTFORNE: TdxDBGridMaskColumn
        Visible = False
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEULTFORNE'
      end
      object dbgConsultaESTOQUE: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Estoque'
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ESTOQUE'
      end
      object dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'M'#237'nimo'
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDEMINIMO'
      end
      object dbgConsultaPONTOPEDIDO: TdxDBGridColumn
        Alignment = taRightJustify
        Caption = 'Ponto Ped.'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PONTOPEDIDO'
      end
      object dbgConsultaQTDPEDIDOCOMPRA: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Qtd. Order'
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDPEDIDOCOMPRA'
      end
      object dbgConsultaQTDCOMPRA: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Receipt'
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDCOMPRA'
      end
      object dbgConsultaQTDVENDAS: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Qtd.Vendas'
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDVENDAS'
      end
      object dbgConsultaAVGVENDAS: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'M'#233'dia Vendas'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AVGVENDAS'
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 367
      Width = 677
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 386
    inherited btSair: TTS_SpeedButton
      Top = 341
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select i.item,i.codigo, i.descricao, i.unidade,'
      
        'i.estoque/i.fatorundvenda as estoque, i.qtdeminimo/i.fatorundven' +
        'da as qtdeminimo, i.pontopedido/i.fatorundvenda as pontopedido,'
      'f.descricao as fabricante, forn.nome as NomeUltForne,'
      
        '(select sum((entitens.quantidade*entitens.fator)/i.fatorundvenda' +
        ') from entradas e'
      'join entradasitens entitens'
      'on e.entrada = entitens.entrada'
      'where entitens.item = i.item and e.tipopadrao = 101'
      'and e.data between :datai and :dataf)'
      'as qtdCompra,'
      
        '(select sum((entitens.quantidade*entitens.fator)/i.fatorundvenda' +
        ') from entradas e'
      'join entradasitens entitens'
      'on e.entrada = entitens.entrada'
      'where entitens.item = i.item and e.tipopadrao = 101'
      'and e.data between :datai and :dataf)'
      'as qtdPedidoCompra,'
      
        '(select sum((sitens.quantidade*sitens.fator)/i.fatorundvenda) fr' +
        'om saidas s'
      'join saidasitens sitens on s.saida = sitens.saida'
      'where sitens.item=i.item and s.tipopadrao in (1,2)'
      'and s.data between :datai and :dataf)'
      'as  qtdvendas,'
      
        '(select avg((sitens.quantidade*sitens.fator)/i.fatorundvenda) fr' +
        'om saidas s'
      'join saidasitens sitens on s.saida = sitens.saida'
      'where sitens.item=i.item and s.tipopadrao in (1,2)'
      'and s.data between :datai and :dataf)'
      'as  Avgvendas'
      ', g.descricaogrupo as Grupo'
      'From itens i'
      'Left Join fabricantes f On i.fabricante=f.fabricante'
      'left join favorecidos forn on i.ultimofornecedor=forn.favorecido'
      'left join grupos g on i.grupo = g.grupo'
      'where i.tipoitem = 1')
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    FieldDefs = <
      item
        Name = 'ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ESTOQUE'
        DataType = ftFloat
      end
      item
        Name = 'QTDEMINIMO'
        DataType = ftFloat
      end
      item
        Name = 'PONTOPEDIDO'
        DataType = ftFloat
      end
      item
        Name = 'FABRICANTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMEULTFORNE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTDCOMPRA'
        DataType = ftFloat
      end
      item
        Name = 'QTDPEDIDOCOMPRA'
        DataType = ftFloat
      end
      item
        Name = 'QTDVENDAS'
        DataType = ftFloat
      end
      item
        Name = 'AVGVENDAS'
        DataType = ftFloat
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        Size = 30
      end>
    Params = <
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dataf'
        ParamType = ptUnknown
      end>
    StoreDefs = True
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ConsultaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaFABRICANTE: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'FABRICANTE'
      Size = 30
    end
    object C_ConsultaNOMEULTFORNE: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOMEULTFORNE'
      Size = 50
    end
    object C_ConsultaESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaQTDEMINIMO: TFloatField
      FieldName = 'QTDEMINIMO'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaPONTOPEDIDO: TFloatField
      FieldName = 'PONTOPEDIDO'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaQTDCOMPRA: TFloatField
      FieldName = 'QTDCOMPRA'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaQTDPEDIDOCOMPRA: TFloatField
      FieldName = 'QTDPEDIDOCOMPRA'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaQTDVENDAS: TFloatField
      FieldName = 'QTDVENDAS'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaAVGVENDAS: TFloatField
      FieldName = 'AVGVENDAS'
      DisplayFormat = '#,###,##0.###'
    end
    object C_ConsultaGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 572
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37232.3668576389
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 638
    Top = 118
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Relat'#243'rio de Resuprimento de Itens de Invent'#225'rio'
  end
end

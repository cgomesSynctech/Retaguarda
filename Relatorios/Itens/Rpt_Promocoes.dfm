inherited RptPromocoes: TRptPromocoes
  Left = 164
  Top = 117
  Width = 760
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 752
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 222
      Caption = 'Produtos em Promo'#231#227'o'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 718
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 691
    end
    inherited lbDescricaoRelatorio: TTS_Label
      Width = 253
      Caption = 'Lista de itens que est'#227'o com descontos promocionais'
    end
  end
  inherited pnGrid: TPanel
    Width = 699
    object Image1: TImage [0]
      Left = 424
      Top = 72
      Width = 105
      Height = 105
    end
    inherited pnDados: TTS_Panel
      Width = 699
      Color = 14019327
      object lbPeriodo: TTS_Label
        Left = 220
        Top = 5
        Width = 73
        Caption = 'No per'#237'odo de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 0
        Top = 4
        Width = 65
        Caption = 'Situa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 386
        Top = 5
        Width = 13
        Caption = '  a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 296
        Top = 2
        Width = 87
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
      object cmbSituacao: TTS_ImageEdit
        Left = 67
        Top = 2
        Width = 131
        TabOrder = 1
        StyleController = DMProjeto.esItens
        OnChange = cmbSituacaoChange
        Descriptions.Strings = (
          'Em Promo'#231#227'o'
          'Promo'#231#227'o Encerrada'
          'Ambos')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        Values.Strings = (
          'N'
          'S'
          'A')
        Height = 19
      end
      object DataF: TTS_DateTimePicker
        Left = 409
        Top = 2
        Width = 87
        TabOrder = 2
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 699
      KeyField = 'PROMOCAOITEM'
      Filter.Criteria = {00000000}
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing, edgoRowSizing]
      OnShowColumn = dbgConsultaShowColumn
      OnHideColumn = dbgConsultaHideColumn
      TS_SelectedColumn = 'DESCRICAO'
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 134
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaDATA_INICIAL: TdxDBGridDateColumn
        Caption = 'In'#237'cio'
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_INICIAL'
      end
      object dbgConsultaDATA_FINAL: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_FINAL'
      end
      object dbgConsultaDESCITEM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCITEM'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaPRECOPROMOCAO: TdxDBGridMaskColumn
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOPROMOCAO'
      end
      object dbgConsultaPRECOTABELA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECOTABELA'
      end
      object dbgConsultaDESCTABELAPRECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTABELAPRECO'
      end
      object dbgConsultaFECHADA: TdxDBGridCheckColumn
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECHADA'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object dbgConsultaColumn11: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaColumn12: TdxDBGridColumn
        Caption = 'Refer'#234'ncia'
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaColumn13: TdxDBGridColumn
        Caption = 'Grupo'
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaColumn14: TdxDBGridColumn
        Caption = 'Fabricante'
        Visible = False
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object dbgConsultaColumn15: TdxDBGridGraphicColumn
        Caption = 'Imagem'
        HeaderAlignment = taCenter
        Visible = False
        Width = 155
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = dbgConsultaColumn15CustomDrawCell
      end
      object dbgConsultaColumn16: TdxDBGridColumn
        DisableCustomizing = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FOTO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 699
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
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select pi.promocaoitem, p.item, i.descricao as descitem, pi.unid' +
        'ade, pi.precopromocao, pi.precotabela, p.data_inicial, p.data_fi' +
        'nal, p.fechada, tp.descricao as desctabelapreco, p.descricao, p.' +
        'promocao,'
      
        'i.codigo, i.referencia, g.descricaogrupo, fab.descricao as fabri' +
        'cante, i.foto'
      'from promocoes p'
      'inner join promocoesitens pi on p.promocao = pi.promocao'
      'inner join itens i on i.item = p.item'
      'inner join tabelaspreco tp on tp.tabelapreco = pi.tabelapreco'
      'left join grupos g on g.grupo = i.grupo'
      'left join fabricantes fab on fab.fabricante = i.fabricante')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaPROMOCAOITEM: TIntegerField
      FieldName = 'PROMOCAOITEM'
      Origin = 'PROMOCOESITENS.PROMOCAOITEM'
      Required = True
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PROMOCOES.ITEM'
    end
    object C_ConsultaDESCITEM: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'DESCITEM'
      Origin = 'ITENS.DESCITEM'
      Size = 50
    end
    object C_ConsultaUNIDADE: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UNIDADE'
      Origin = 'PROMOCOESITENS.UNIDADE'
      Size = 6
    end
    object C_ConsultaPRECOPROMOCAO: TBCDField
      DisplayLabel = 'Pre'#231'o Promo'#231#227'o'
      FieldName = 'PRECOPROMOCAO'
      Origin = 'PROMOCOESITENS.PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_ConsultaPRECOTABELA: TBCDField
      DisplayLabel = 'Pre'#231'o Normal'
      FieldName = 'PRECOTABELA'
      Origin = 'PROMOCOESITENS.PRECOTABELA'
      Precision = 18
      Size = 3
    end
    object C_ConsultaDATA_INICIAL: TDateField
      DisplayLabel = 'Inic'#237'o'
      FieldName = 'DATA_INICIAL'
      Origin = 'PROMOCOES.DATA_INICIAL'
    end
    object C_ConsultaDATA_FINAL: TDateField
      DisplayLabel = 'Final'
      FieldName = 'DATA_FINAL'
      Origin = 'PROMOCOES.DATA_FINAL'
    end
    object C_ConsultaFECHADA: TStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADA'
      Origin = 'PROMOCOES.FECHADA'
      Size = 1
    end
    object C_ConsultaDESCTABELAPRECO: TStringField
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'DESCTABELAPRECO'
      Origin = 'TABELASPRECO.DESCTABELAPRECO'
      Size = 25
    end
    object C_ConsultaDESCRICAO: TStringField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'PROMOCOES.DESCRICAO'
      Size = 50
    end
    object C_ConsultaPROMOCAO: TIntegerField
      FieldName = 'PROMOCAO'
      Origin = 'PROMOCOES.PROMOCAO'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
    object C_ConsultaFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'ITENS.FOTO'
      Size = 255
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Produtos em Promo'#231#227'o'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37498.7408768171
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 664
    Top = 168
  end
end

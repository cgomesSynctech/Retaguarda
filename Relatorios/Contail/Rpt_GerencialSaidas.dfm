inherited RptGerencialSaidas: TRptGerencialSaidas
  Left = 68
  Top = 100
  Width = 1198
  Caption = 'Contabilidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1190
    Gradient.ColorStart = 12689345
    inherited lbCaption: TdxfLabel
      Width = 157
      Caption = 'Gerencial Saidas'
      Effect3D.ShadowedColor = 12689345
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1148
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 1121
    end
  end
  inherited pnGrid: TPanel
    Width = 1137
    inherited pnDados: TTS_Panel
      Width = 1137
      Color = 14733792
      object lbPeriodo: TTS_Label
        Left = -2
        Top = 4
        Width = 85
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 182
        Top = 4
        Width = 17
        Alignment = taLeftJustify
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 319
        Top = 6
        Width = 81
        Height = 15
        Caption = 'Tipo Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 90
        Top = 1
        Width = 86
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
        UseEditMask = True
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 199
        Top = 1
        Width = 92
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
        UseEditMask = True
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object ppeTipoOperacao: TTS_PopupEdit
        Left = 402
        Top = 2
        Width = 170
        TabOrder = 2
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = ppeTipoOperacaoCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object TS_DBComboBox1: TTS_DBComboBox
        Left = 576
        Top = 0
        Width = 121
        TabOrder = 3
        DataField = 'DESCRICAO'
        DataSource = C_TipoMovimentoDS
        Height = 19
      end
      object TS_LookupComboBox1: TTS_LookupComboBox
        Left = 736
        Top = 0
        Width = 121
        TabOrder = 4
        ClearKey = 32
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOMOVIMENTO'
        ListSource = C_TipoMovimentoDS
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 1137
      KeyField = 'NUMERO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Total'
              SummaryFormat = '>Total=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'BasecalcICMS'
              SummaryFormat = '>BasecalcICMS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorICMS'
              SummaryFormat = '>ValorICMS=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Numero'
              SummaryFormat = '>Numero=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'Total;Sum'
        'BasecalcICMS;Sum'
        'ValorICMS;Sum'
        'Numero;COUNT')
      TS_SummaryFooterSelectedText = 'Qtd. Geral:'
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'Numero'
        Sorted = csUp
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Movimento'
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaDESCRICAO1: TdxDBGridMaskColumn
        Caption = 'Status'
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO1'
      end
      object dbgConsultaMODELO: TdxDBGridMaskColumn
        Caption = 'Mod.'
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object dbgConsultaSERIENOTA: TdxDBGridMaskColumn
        Caption = 'Serie'
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERIENOTA'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        Caption = 'CPF/CNPJ'
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        Caption = 'Raz'#227'o'
        Width = 243
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaTOTAL: TdxDBGridMaskColumn
        Caption = 'Total'
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaBASECALCICMS: TdxDBGridMaskColumn
        Caption = 'Base ICMS'
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCICMS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaVALORICMS: TdxDBGridMaskColumn
        Caption = 'Valor ICMS'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaBASECALCSUBST: TdxDBGridMaskColumn
        Caption = 'Base Subst'
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASECALCSUBST'
      end
      object dbgConsultaVALORICMSSUBST: TdxDBGridMaskColumn
        Caption = 'Valor Subst.'
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORICMSSUBST'
      end
      object dbgConsultaTOTALITENS: TdxDBGridMaskColumn
        Caption = 'Total Prod.'
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALITENS'
      end
      object dbgConsultaFRETE: TdxDBGridMaskColumn
        Caption = 'Frete'
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRETE'
      end
      object dbgConsultaOUTRASDESPESAS: TdxDBGridMaskColumn
        Caption = 'Outras Desp.'
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OUTRASDESPESAS'
      end
      object dbgConsultaVALORIPI: TdxDBGridMaskColumn
        Caption = 'Valor IPI'
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORIPI'
      end
      object dbgConsultaDESCONTO: TdxDBGridMaskColumn
        Caption = 'Desconto'
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 1137
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 64
      Top = 64
      Width = 400
      Height = 123
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      DataSet = C_TiposMovimentos
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
      
        'select t.descricao, s.numero, s.data, sns.descricao, s.modelo, s' +
        '.serienota, f.cpf_cnpj, f.razao, s.total, s.basecalcicms,'
      
        's.valoricms, s.basecalcsubst, s.valoricmssubst, s.totalitens, s.' +
        'frete, s.outrasdespesas, s.valoripi, s.desconto, cast(r.xml as V' +
        'archar(32000)) as XML, r.tpag'
      ''
      'from saidas s inner join recibosnfe r on s.saida = r.idmestre'
      
        'inner join saidasnfestatus sns on sns.saidanfestatus = r.statusn' +
        'fe'
      'inner join favorecidos f on f.favorecido = s.favorecido'
      'inner join tiposmovimento t on t.tipomovimento = s.tipomovimento')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaDESCRICAO1: TStringField
      FieldName = 'DESCRICAO1'
      Size = 100
    end
    object C_ConsultaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object C_ConsultaSERIENOTA: TStringField
      FieldName = 'SERIENOTA'
      Size = 3
    end
    object C_ConsultaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_ConsultaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_ConsultaBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
    end
    object C_ConsultaVALORICMS: TFloatField
      FieldName = 'VALORICMS'
    end
    object C_ConsultaBASECALCSUBST: TFloatField
      FieldName = 'BASECALCSUBST'
    end
    object C_ConsultaVALORICMSSUBST: TFloatField
      FieldName = 'VALORICMSSUBST'
    end
    object C_ConsultaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object C_ConsultaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object C_ConsultaOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
    end
    object C_ConsultaVALORIPI: TFloatField
      FieldName = 'VALORIPI'
    end
    object C_ConsultaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object C_ConsultaTPAG: TStringField
      FieldName = 'TPAG'
      Size = 10
    end
    object C_ConsultaXML: TStringField
      FieldName = 'XML'
      Size = 32000
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 45467.4047260764
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msContabil
    BarEndColor = 12689345
    CaptionShadow = 12689345
    FormColor = 14733792
    Modulo = 'Contabilidade'
    Caption = 'Gerencial Saidas'
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMOVIMENTO, DESCRICAO'
      
        'from TIPOSMOVIMENTO where LivroFiscal = '#39'S'#39' and tipo = '#39'S'#39' order' +
        ' by TIPOPADRAO ,DESCRICAO')
    Left = 808
    Top = 127
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
    Left = 808
    Top = 184
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
    Left = 808
    Top = 240
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
    Left = 808
    Top = 296
  end
end

inherited RptVendasCartoes: TRptVendasCartoes
  Left = 283
  Top = 120
  Width = 1058
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1050
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 258
      Caption = 'Vendas por Forma de Pgto.'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1014
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 989
    end
  end
  inherited pnGrid: TPanel
    Width = 997
    inherited pnDados: TTS_Panel
      Width = 997
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = -2
        Top = 4
        Width = 78
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 151
        Top = 5
        Width = 18
        Caption = ' '#224' '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 275
        Top = 4
        Width = 62
        Caption = 'Forma Pgto.'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 535
        Top = 3
        Width = 81
        Height = 15
        Caption = 'Tipo Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 78
        Top = 2
        Width = 81
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 169
        Top = 2
        Width = 81
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        Height = 19
        StoredValues = 4
      end
      object ppe_FormaPagamento: TTS_PopupEdit
        Left = 346
        Top = 2
        Width = 183
        TabOrder = 2
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupControl = clbFormaPagamento
        PopupFormBorderStyle = pbsSysPanel
        LookupKeyValue = 0
        Height = 19
      end
      object cbCobranca: TTS_CheckBox
        Left = 834
        Top = 3
        Width = 151
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 3
        Caption = 'Com tipos de cobran'#231'as'
        StyleController = DMProjeto.esClientes
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object ppeTipoOperacao: TTS_PopupEdit
        Left = 618
        Top = 2
        Width = 170
        TabOrder = 4
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = ppeTipoOperacaoCloseUp
        LookupKeyValue = 0
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 997
      KeyField = 'NUMERO'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'NUMERO'
              SummaryFormat = '>NUMERO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'TOTALFORMA'
              SummaryFormat = '>TOTALFORMA=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorForma'
              SummaryFormat = '>ValorForma=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'NUMERO;COUNT;U'
        'TOTALFORMA;SUM;U'
        'ValorForma;SUM;')
      object dbgConsultaicSubTotal: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSubTotal'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaVALORFORMA: TdxDBGridCurrencyColumn
        Caption = 'Valor'
        HeaderAlignment = taRightJustify
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORFORMA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaPARCELAS: TdxDBGridMaskColumn
        Caption = 'Parcela'
        HeaderAlignment = taRightJustify
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELAS'
      end
      object dbgConsultaTOTAL: TdxDBGridMaskColumn
        Caption = 'Total'
        HeaderAlignment = taRightJustify
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOTALFORMA: TdxDBGridColumn
        Caption = 'Valor Forma'
        HeaderAlignment = taRightJustify
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALFORMA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaFORMAPGTO: TdxDBGridMaskColumn
        Caption = 'Forma Pgto.'
        Sorted = csUp
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMAPGTO'
        GroupIndex = 0
      end
      object dbgConsultaDESCCONTA: TdxDBGridMaskColumn
        Caption = 'Conta'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
      end
      object dbgConsultaCLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        Caption = 'Vendedor'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 997
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbFormaPagamento: TTS_CheckListBox
      Left = 137
      Top = 73
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      DataSet = C_FormaPgto
      KeyField = 'ESPECIE'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  object clbTipoOperacao: TTS_CheckListBox [3]
    Left = 672
    Top = 134
    Width = 150
    Height = 123
    BorderStyle = bsNone
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    KeyField = 'TIPOMOVIMENTO'
    ListField = 'DESCRICAO'
    Transparent = False
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 442
    Top = 150
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      
        'Distinct s.numero,s.data,s.total,fp.Descricao as FormaPgto,count' +
        '(*) as Parcelas,Sum(dd.valor) as ValorForma,Sum(dd.valor) * coun' +
        't(*) as TotalForma,c.Descricao as DescConta,v.nome as Vendedor'
      'FROM'
      
        ' Depositos d inner join DepositosDoc dd on d.empresa = dd.empres' +
        'a  and d.pdv = dd.pdv and d.deposito = dd.deposito inner join de' +
        'positostitulos dt on  d.empresa = dt.empresa and d.pdv = dt.pdv ' +
        'and d.deposito = dt.deposito inner join titulosareceber tr on dt' +
        '.titulo = tr.id and dt.empresa = tr.empresa and dt.pdv = tr.pdv ' +
        'inner join saidas s on  s.empresa = tr.empresa and s.pdv = tr.pd' +
        'v and s.saida = tr.venda inner join FormasPagamento fp on dd.for' +
        'mapagamento = fp.formapagamento inner join Contas c on d.Conta =' +
        ' c.Conta left join favorecidos f on f.favorecido = d.favorecido ' +
        'left join favorecidos v on v.favorecido = s.vendedor'
      
        'group by s.numero, s.data, s.total, fp.Descricao, c.Descricao, f' +
        '.nome, v.nome')
    Left = 410
    Top = 118
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Top = 214
    object C_ConsultaicSubTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'icSubTotal'
      Calculated = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_ConsultaFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Required = True
      Size = 50
    end
    object C_ConsultaPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Required = True
    end
    object C_ConsultaVALORFORMA: TBCDField
      FieldName = 'VALORFORMA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCCONTA: TStringField
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_ConsultaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object C_ConsultaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object C_ConsultaTOTALFORMA: TBCDField
      FieldName = 'TOTALFORMA'
      Precision = 18
      Size = 2
    end
  end
  inherited ppmDados: TTS_PopupMenu
    Left = 152
    Top = 129
  end
  inherited ppmAgrupamento: TTS_PopupMenu
    Left = 348
    Top = 141
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 738
    Top = 163
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38553.6492364699
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 714
    Top = 20
  end
  inherited Q_FullSelect: TIBQuery
    Left = 507
    Top = 349
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Vendas por Forma de Pgto.'
  end
  object Q_FormaPgto: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT ESPECIE ,    DESCRICAO '
      ' FROM ESPECIEsTITULOS'
      '')
    Left = 628
    Top = 132
  end
  object P_FormaPgto: TDataSetProvider
    DataSet = Q_FormaPgto
    Constraints = True
    Left = 630
    Top = 180
  end
  object C_FormaPgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_FormaPgto'
    Left = 628
    Top = 234
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMOVIMENTO, DESCRICAO'
      
        'from TIPOSMOVIMENTO where   TIPOPADRAO in (1,4,5,8,40) order by ' +
        'TIPOPADRAO ,DESCRICAO')
    Left = 812
    Top = 125
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
    Left = 812
    Top = 182
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
    Left = 812
    Top = 238
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
    Left = 812
    Top = 294
  end
end

inherited RptEntradasItensIdentificados: TRptEntradasItensIdentificados
  Left = 183
  Top = 126
  Width = 1063
  Height = 606
  Caption = 'Entradas no Per'#237'odo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1047
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 193
      Caption = 'Entradas no Per'#237'odo'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1021
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 994
    end
    inherited lbDescricaoRelatorio: TTS_Label
      Width = 200
      Caption = 'Entrada de Itens Identificados no per'#237'odo'
    end
  end
  inherited pnGrid: TPanel
    Width = 994
    Height = 530
    inherited pnDados: TTS_Panel
      Width = 994
      Height = 33
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 8
        Top = 8
        Width = 96
        Height = 20
        Caption = 'No per'#237'odo de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 181
        Top = 8
        Width = 22
        Height = 15
        Caption = ' '#224' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 351
        Top = 8
        Width = 89
        Height = 15
        Caption = 'Tipo Opera'#231#227'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object btFornecedores: TTS_SpeedButton
        Left = 720
        Top = 5
        Width = 170
        Height = 21
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '&Escolher Fornecedores...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btFornecedoresClick
        RepeatedClick = False
        Border = True
      end
      object DataI: TTS_DateTimePicker
        Left = 106
        Top = 6
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 205
        Top = 6
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
      object ppeTipoOperacao: TTS_PopupEdit
        Left = 446
        Top = 5
        Width = 170
        TabOrder = 2
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        LookupKeyValue = 0
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 33
      Width = 994
      Height = 478
      KeyField = 'ENTRADA'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
        SummaryFooterType = cstCount
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Data'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        DateButtons = []
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        Caption = 'Fornecedor'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFAVORECIDO'
      end
      object dbgConsultaTOTALITENS: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Total Itens'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALITENS'
        SummaryFooterType = cstSum
      end
      object dbgConsultaDESCONTO: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Desconto'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
        SummaryFooterType = cstSum
      end
      object dbgConsultaTOTAL: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Total'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
        SummaryFooterType = cstSum
      end
      object dbgConsultaOPERACAO: TdxDBGridMaskColumn
        Caption = 'Opera'#231#227'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OPERACAO'
      end
      object dbgConsultaUSUARIO: TdxDBGridMaskColumn
        Caption = 'Usu'#225'rio'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUARIO'
      end
      object dbgConsultaPLANOPAGAMENTO: TdxDBGridMaskColumn
        Caption = 'Plano Pagamento'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLANOPAGAMENTO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 511
      Width = 994
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 781
      Top = 50
      Width = 174
      Height = 147
      BorderStyle = bsNone
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
    Height = 530
    inherited btSair: TTS_SpeedButton
      Top = 485
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select distinct e.entrada, e.numero, e.data, e.favorecido, coale' +
        'sce(fa.nome, '#39'ND'#39') as nomefavorecido,'
      'fa.tipofavorecido, e.totalitens, (e.desconto * -1) as desconto,'
      
        'e.total, tm.tipomovimento, tm.descricao as operacao, e.usuario, ' +
        'e.tipopadrao,'
      'coalesce(p.descricao, '#39'N'#227'o Definido'#39') as planopagamento'
      
        'from entradas e inner join transacoesitensident ti on e.entrada ' +
        '= ti.entrada'
      'left join favorecidos fa on e.favorecido = fa.favorecido'
      
        'left join planospagamento p on e.planopagamento = p.planopagamen' +
        'to'
      
        'inner join tiposmovimento tm on e.tipomovimento = tm.tipomovimen' +
        'to'
      'where e.data >= :datai and e.data <= :dataf')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaNOMEFAVORECIDO: TStringField
      FieldName = 'NOMEFAVORECIDO'
      Size = 50
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Required = True
    end
    object C_ConsultaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 30
    end
    object C_ConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object C_ConsultaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_ConsultaPLANOPAGAMENTO: TStringField
      FieldName = 'PLANOPAGAMENTO'
      Size = 30
    end
    object C_ConsultaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object C_ConsultaDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 41837.7097571875
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Caption = 'Entradas no Per'#237'odo'
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOMOVIMENTO, DESCRICAO'
      
        'from TIPOSMOVIMENTO where   TIPOPADRAO in (101, 105, 106, 150) o' +
        'rder by TIPOPADRAO ,DESCRICAO')
    Left = 736
    Top = 119
    object Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object Q_TiposMovimentosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 30
    end
  end
  object P_TiposMovimentos: TDataSetProvider
    DataSet = Q_TiposMovimentos
    Constraints = True
    Left = 736
    Top = 176
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
    Left = 736
    Top = 232
    object C_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 30
    end
  end
  object C_TipoMovimentoDS: TDataSource
    DataSet = C_TiposMovimentos
    Left = 736
    Top = 288
  end
end

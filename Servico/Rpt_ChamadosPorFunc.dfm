inherited RptChamadosPorFunc: TRptChamadosPorFunc
  Left = 157
  Top = 134
  Width = 778
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 770
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 255
      Caption = 'Chamados por Funcion'#225'rio'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 736
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 709
    end
  end
  inherited pnGrid: TPanel
    Width = 717
    inherited pnDados: TTS_Panel
      Width = 717
      Height = 46
      Color = 15456728
      object lbDataI: TTS_Label
        Left = 22
        Top = 5
        Width = 122
        Caption = 'Com data de aviso entre:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbDataF: TTS_Label
        Left = 223
        Top = 5
        Width = 9
        Caption = 'a'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbServico: TTS_Label
        Left = 318
        Top = 4
        Width = 47
        Height = 15
        Caption = 'Servi'#231'os:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbHora1: TTS_Label
        Left = 22
        Top = 26
        Width = 122
        Caption = 'Com hora de aviso entre:'
        Enabled = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbHora2: TTS_Label
        Left = 223
        Top = 26
        Width = 9
        Caption = 'a'
        Enabled = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object ckbPeriodo: TTS_CheckBox
        Left = 5
        Top = 2
        Width = 23
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 0
        OnChange = ckbPeriodoChange
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
      object edDataI: TTS_DateTimePicker
        Left = 146
        Top = 2
        Width = 77
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esRemessa
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
        OnDateChange = edDataIDateChange
        Height = 19
        StoredValues = 4
      end
      object edDataF: TTS_DateTimePicker
        Left = 238
        Top = 2
        Width = 77
        TabOrder = 2
        AutoSize = False
        StyleController = DMProjeto.esRemessa
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
      object edServicos: TTS_PopupEdit
        Left = 367
        Top = 2
        Width = 161
        TabOrder = 3
        StyleController = DMProjeto.esRemessa
        Text = 'Chamado,Corretiva'
        PopupControl = clbServicos
        PopupFormBorderStyle = pbsSimple
        OnCloseUp = edServicosCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object ckbHora: TTS_CheckBox
        Left = 5
        Top = 24
        Width = 23
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 4
        OnChange = ckbHoraChange
        DisableEdit = False
        Height = 19
      end
      object edHora1: TTS_TimeEdit
        Left = 146
        Top = 24
        Width = 77
        Enabled = False
        TabOrder = 5
        StyleController = DMProjeto.esRemessa
        OnChange = edHora1Change
        FormatoAMPM = False
        Height = 19
        StoredValues = 4
      end
      object edHora2: TTS_TimeEdit
        Left = 239
        Top = 24
        Width = 77
        Enabled = False
        TabOrder = 6
        StyleController = DMProjeto.esRemessa
        OnChange = edHora1Change
        FormatoAMPM = False
        Height = 19
        StoredValues = 4
      end
      object ckbPassou: TTS_CheckBox
        Left = 319
        Top = 20
        Width = 189
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 7
        Caption = 'Chamados que passaram de dia'
        OnChange = ckbPassouChange
        DisableEdit = False
        Height = 23
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 46
      Width = 717
      Height = 343
      KeyField = 'ORDEMSERVICO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'HORACHEGADA'
              SummaryFormat = '>HORACHEGADA=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMERO'
      TS_SummaryFields.Strings = (
        'HORACHEGADA;COUNT')
      object dbgConsultaORDEMSERVICO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDEMSERVICO'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Caption = 'N'#250'mero'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaRota: TdxDBGridColumn
        Caption = 'Rota'
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ROTA'
      end
      object dbgConsultaDESCCLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCLIENTE'
      end
      object dbgConsultaEQUIPAMENTO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EQUIPAMENTO'
      end
      object dbgConsultaFUNCIONARIO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCIONARIO'
      end
      object dbgConsultaDTAVISO: TdxDBGridDateColumn
        Caption = 'Dt. Aviso'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DTAVISO'
      end
      object dbgConsultaHORAAVISO: TdxDBGridTimeColumn
        Caption = 'Hora Aviso'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HORAAVISO'
      end
      object dbgConsultaDTCHEGADA: TdxDBGridDateColumn
        Caption = 'Dt. Chegada'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DTCHEGADA'
      end
      object dbgConsultaHORACHEGADA: TdxDBGridTimeColumn
        Caption = 'Hora Chegada'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HORACHEGADA'
        SummaryFooterType = cstCount
        SummaryFooterField = 'ORDEMSERVICO'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDtATENDDecorrido: TdxDBGridColumn
        Caption = 'Temp. Atend.'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DtATENDDecorrido'
      end
      object dbgConsultaDTTERMINO: TdxDBGridDateColumn
        Caption = 'Dt. T'#233'rmino'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DTTERMINO'
      end
      object dbgConsultaHORATERMINO: TdxDBGridTimeColumn
        Caption = 'Hora T'#233'rmino'
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HORATERMINO'
      end
      object dbgConsultaDtDecorrido: TdxDBGridColumn
        Caption = 'Tmp.Dec.'
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DtDecorrido'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 231
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone'
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaDESCFUNCIONARIO: TdxDBGridMaskColumn
        Caption = 'Funcion'#225'rio'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFUNCIONARIO'
        GroupIndex = 0
      end
      object dbgConsultaDESCCARGO: TdxDBGridMaskColumn
        Caption = 'Cargo'
        HeaderAlignment = taCenter
        Visible = False
        Width = 140
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCARGO'
      end
      object dbgConsultaTIPOSERVICO: TdxDBGridImageColumn
        Alignment = taRightJustify
        Caption = 'Servi'#231'o'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOSERVICO'
        Descriptions.Strings = (
          'Chamado'
          'Vistoria'
          'Preventiva'
          'Corretiva'
          'Outros')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        ShowDescription = True
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object dbgConsultaNUMMAQUINA: TdxDBGridMaskColumn
        Caption = 'M'#225'quina'
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMMAQUINA'
      end
      object dbgConsultaDESCRICAOSERVICO: TdxDBGridMaskColumn
        Caption = 'Observa'#231#227'o'
        Visible = False
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOSERVICO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 717
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbServicos: TTS_CheckListBox
      Left = 24
      Top = 264
      Width = 161
      Height = 65
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ItemHeight = 13
      Items.Strings = (
        'Chamado'
        'Vistoria'
        'Preventiva'
        'Corretiva'
        'Outros')
      TabOrder = 4
      Visible = False
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
      
        'select os.ordemservico, os.numero, os.equipamento, os.funcionari' +
        'o,'
      
        'os.dtaviso, os.horaaviso, os.dtchegada, os.horachegada, os.dtter' +
        'mino,'
      
        'os.horatermino, os.tiposervico, cli.nome as desccliente, cli.end' +
        'ereco, cli.cidade, cli.uf, cli.fone1, func.nome as descfuncionar' +
        'io, cg.descricao as desccargo, eq.nummaquina, os.descricaoservic' +
        'o, r.descricao as Rota'
      'from ordensservicos os'
      'left join favorecidos CLI on os.cliente = CLI.FAVORECIDO'
      'left join favorecidos FUNC on os.funcionario = FUNC.FAVORECIDO'
      'left join cargos cg on func.cargo = cg.cargo'
      'left join equipamentos eq on os.equipamento = eq.equipamento'
      'left join rotas r on r.rota = os.rota'
      '')
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaORDEMSERVICO: TIntegerField
      FieldName = 'ORDEMSERVICO'
      Required = True
    end
    object C_ConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
    end
    object C_ConsultaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object C_ConsultaDTAVISO: TDateField
      FieldName = 'DTAVISO'
    end
    object C_ConsultaHORAAVISO: TTimeField
      FieldName = 'HORAAVISO'
    end
    object C_ConsultaDTCHEGADA: TDateField
      FieldName = 'DTCHEGADA'
    end
    object C_ConsultaHORACHEGADA: TTimeField
      FieldName = 'HORACHEGADA'
    end
    object C_ConsultaDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
    end
    object C_ConsultaHORATERMINO: TTimeField
      FieldName = 'HORATERMINO'
    end
    object C_ConsultaDESCCLIENTE: TStringField
      FieldName = 'DESCCLIENTE'
      Size = 50
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_ConsultaDESCFUNCIONARIO: TStringField
      FieldName = 'DESCFUNCIONARIO'
      Size = 50
    end
    object C_ConsultaDESCCARGO: TStringField
      FieldName = 'DESCCARGO'
      Size = 30
    end
    object C_ConsultaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
    end
    object C_ConsultaNUMMAQUINA: TStringField
      FieldName = 'NUMMAQUINA'
      Size = 25
    end
    object C_ConsultaDESCRICAOSERVICO: TStringField
      FieldName = 'DESCRICAOSERVICO'
      Size = 255
    end
    object C_ConsultaROTA: TStringField
      FieldName = 'ROTA'
      Size = 25
    end
    object C_ConsultaDtDecorrido: TTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DtDecorrido'
    end
    object C_ConsultaDtATENDDecorrido: TTimeField
      FieldKind = fkInternalCalc
      FieldName = 'DtATENDDecorrido'
    end
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 336
    Top = 97
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38509.3570281713
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 536
    Top = 96
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Chamados por Funcion'#225'rio'
    Top = 213
  end
end

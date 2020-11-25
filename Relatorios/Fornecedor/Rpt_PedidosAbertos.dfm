inherited RptPedidosAbertos: TRptPedidosAbertos
  Left = 53
  Top = 72
  Height = 461
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 180
      Caption = 'Pedidos em Aberto'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    Height = 384
    inherited pnDados: TTS_Panel
      Height = 38
      Color = 15196656
      object TS_Label2: TTS_Label
        Left = 205
        Top = 4
        Width = 41
        Alignment = taLeftJustify
        Caption = 'dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbData2: TTS_Label
        Left = 229
        Top = 20
        Width = 22
        Alignment = taCenter
        Caption = 'e'
        Visible = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object RBPedidosAtrasados: TTS_RadioButton
        Left = 18
        Top = 3
        Width = 157
        Height = 17
        Caption = 'Pedidos atrasados a mais de '
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RBPedidosAtrasadosClick
        Transparent = False
      end
      object edDias: TTS_CurrencyEdit
        Left = 174
        Top = 1
        Width = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = edDiasExit
        Alignment = taRightJustify
        StyleController = DMProjeto.esFornecedores
        DisplayFormat = '0'
        Value = 30
        Height = 19
        StoredValues = 1
      end
      object rbPeriodo: TTS_RadioButton
        Left = 18
        Top = 21
        Width = 151
        Height = 17
        Caption = 'Todos os Pedidos entre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = RBPedidosAtrasadosClick
        Transparent = False
      end
      object DataI: TTS_DateTimePicker
        Left = 152
        Top = 19
        Width = 80
        TabOrder = 3
        Visible = False
        OnExit = DataIExit
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
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 250
        Top = 18
        Width = 80
        TabOrder = 4
        Visible = False
        OnExit = DataIExit
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
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 38
      Height = 327
      Bands = <
        item
          Caption = 'Dados Cadastriais'
          Width = 404
        end
        item
          Caption = 'Pedido'
          Width = 335
        end>
      KeyField = 'ENTRADA'
      BandColor = 15461355
      Filter.Criteria = {00000000}
      PreviewFieldName = 'PreviewEnd'
      ShowBands = True
      OnCustomDrawCell = dbgConsultaCustomDrawCell
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 194
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaNUMERO: TdxDBGridMaskColumn
        Width = 61
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 1
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaTOTAL: TdxDBGridMaskColumn
        Alignment = taRightJustify
        HeaderAlignment = taRightJustify
        Width = 54
        BandIndex = 1
        RowIndex = 0
        FieldName = 'TOTAL'
      end
      object dbgConsultaPREVISAOENTREGA: TdxDBGridDateColumn
        Caption = 'Previs'#227'o'
        Width = 60
        BandIndex = 1
        RowIndex = 0
        FieldName = 'PREVISAOENTREGA'
      end
      object dbgConsultadesc_Situacao: TdxDBGridColumn
        Width = 79
        BandIndex = 1
        RowIndex = 0
        FieldName = 'desc_Situacao'
      end
      object dbgConsultaSIT_ENTRADA: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SIT_ENTRADA'
      end
      object dbgConsultaENTRADA: TdxDBGridMaskColumn
        DisableEditor = True
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object dbgConsultaSTATUS: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 365
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 384
    inherited btSair: TTS_SpeedButton
      Top = 339
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    object Endereo1: TMenuItem [0]
      Caption = 'Endere'#231'o'
      OnClick = Endereo1Click
    end
    object N9: TMenuItem [1]
      Caption = '-'
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select f.*, e.entrada, e.data, e.total, e.numero, '
      'e.previsaoentrega, e.status  from entradas e'
      'join favorecidos f'
      'on f.favorecido = e.favorecido'
      'where f.tipofavorecido = 2'
      'and e.tipopadrao = 101 '
      'and e.situacao = '#39'N'#39)
    Left = 404
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaFONE1: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE1'
    end
    object C_ConsultaNUMERO: TStringField
      DisplayLabel = 'P.O. #'
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ConsultaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Required = True
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object C_ConsultaPREVISAOENTREGA: TDateField
      DisplayLabel = 'Prev. Entrega'
      FieldName = 'PREVISAOENTREGA'
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
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaPAIS: TIntegerField
      FieldName = 'PAIS'
    end
    object C_ConsultaFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaPreviewEnd: TStringField
      DisplayWidth = 80
      FieldKind = fkInternalCalc
      FieldName = 'PreviewEnd'
    end
    object C_ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_Consultadesc_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'desc_Situacao'
    end
    object C_ConsultaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 211
    Top = 201
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 581
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6293061227
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 632
    Top = 192
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Pedidos em Aberto'
    OnRefresh = FormsComponentRefresh
  end
end

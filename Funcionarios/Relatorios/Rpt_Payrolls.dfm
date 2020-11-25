inherited RptPayrolls: TRptPayrolls
  Left = -6
  Top = 48
  Width = 757
  Caption = 'Funcion'#225'rios / Payroll'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 749
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 76
      Caption = 'Payrolls'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 715
    end
  end
  inherited pnGrid: TPanel
    Width = 696
    inherited pnDados: TTS_Panel
      Width = 696
      Height = 27
      Color = 15396297
      object lbPeriodo: TTS_Label
        Left = 111
        Top = 8
        Width = 83
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
      object TS_Label2: TTS_Label
        Left = 277
        Top = 7
        Width = 18
        Caption = 'a  '
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbFunc: TTS_Label
        Left = 378
        Top = 8
        Width = 65
        Caption = 'Funcion'#225'rio:'
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
        Left = 197
        Top = 5
        Width = 79
        TabOrder = 2
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 296
        Top = 5
        Width = 80
        TabOrder = 3
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
        UseEditMask = True
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 445
        Top = 5
        Width = 163
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 4
        StyleController = DMProjeto.esFuncionarios
        OnChange = edFavorecidoChange
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              26050000424D260500000000000036040000280000000F0000000F0000000100
              080000000000F000000000000000000000000001000000000000000000000000
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
              070707070707070707000707070707070707070707FCFC000700070707070707
              0707070704FEFC00070007070707070707070704FEFC00070700070707070707
              0707FCFEFC0007070700070707000000000707A4000707070700070700060606
              0600A4A40707070707000707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
              FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
              FEFE060007070707070007FEFFFFFFFEFEFE000707070707070007A4FFFFFFFE
              FE060707070707070700070707A4A4A400070707070707070700070707070707
              07070707070707070700}
            Kind = bkGlyph
            Width = 18
          end
          item
            Default = False
            Glyph.Data = {
              06050000424D060500000000000036040000280000000D0000000D0000000100
              080000000000D000000000000000000000000001000000000000000000000000
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
              0707070707070700000007070707070707070707070707000000070707070700
              00000707070707000000070707070700FC000707070707000000070707070700
              FC000707070707000000070700000000FC000000000707000000070700FCFCFC
              FCFCFCFC000707000000070700000000FC000000000707000000070707070700
              FC000707070707000000070707070700FC000707070707000000070707070700
              0000070707070700000007070707070707070707070707000000070707070707
              07070707070707000000}
            Kind = bkGlyph
            Width = 17
          end>
        SelecionarVarios = False
        TipoFavorecido = 3
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
      object rgPorPayroll: TTS_RadioButton
        Left = 12
        Top = 1
        Width = 76
        Height = 13
        Caption = 'Por Payroll'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rgPorPayrollClick
        Transparent = False
      end
      object rgPorFuncionario: TTS_RadioButton
        Left = 12
        Top = 12
        Width = 103
        Height = 17
        Caption = 'Por Funcion'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rgPorPayrollClick
        Transparent = False
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 27
      Width = 696
      Height = 362
      KeyField = 'PAYROLLFUNC'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'ValorLiquido'
              SummaryFormat = '>ValorLiquido=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorBruto'
              SummaryFormat = '>ValorBruto=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      OnCustomDrawCell = dbgConsultaCustomDrawCell
      TS_SelectedColumn = 'NOME'
      TS_SummaryFields.Strings = (
        'ValorLiquido;Sum;U'
        'ValorBruto;Sum;U')
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Funcion'#225'rio'
        HeaderAlignment = taCenter
        Width = 207
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Payroll'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 242
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
        GroupIndex = 0
      end
      object dbgConsultaNOMECARGO: TdxDBGridColumn
        Caption = 'Cargo'
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMECARGO'
      end
      object dbgConsultaPERIODICIDADE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Periodicidade'
        MinWidth = 16
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERIODICIDADE'
        Descriptions.Strings = (
          'Semanal'
          'Di'#225'rio'
          'Mensal')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        ShowDescription = True
        Values.Strings = (
          'S'
          'D'
          'M')
      end
      object dbgConsultaPAGOESTEANO: TdxDBGridMaskColumn
        Caption = 'Pago este Ano'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAGOESTEANO'
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Qtde Horas'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS_USER'
      end
      object dbgConsultaQTDHORAS: TdxDBGridMaskColumn
        Caption = 'Qtde Horas'
        HeaderAlignment = taCenter
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS'
      end
      object dbgConsultaVALORCOMISSAO: TdxDBGridMaskColumn
        Caption = 'Comiss'#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORCOMISSAO'
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaVALORLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Valor L'#237'quido'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORLIQUIDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaVALORBRUTO: TdxDBGridMaskColumn
        Caption = 'Valor Bruto'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORBRUTO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaSTATUS: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = ' Status'
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ccStatus'
        Descriptions.Strings = (
          'Em Aberto'
          'Fechado'
          'Cancelado')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2')
        ShowDescription = True
        Values.Strings = (
          'A'
          'F'
          'C')
      end
      object dbgConsultaVALORPAGO: TdxDBGridMaskColumn
        Caption = 'Valor Pago'
        HeaderAlignment = taCenter
        Visible = False
        Width = 108
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
      end
      object dbgConsultaDATAINICIO: TdxDBGridColumn
        Caption = 'In'#237'cio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAINICIO'
      end
      object dbgConsultaDATAFIM: TdxDBGridColumn
        Caption = 'Fim'
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAFIM'
      end
      object dbgConsultaDATAPAGAMENTO: TdxDBGridColumn
        Caption = 'Data Pag.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGAMENTO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 696
      inherited cbFullSelect: TTS_CheckBox
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
      
        'select f.nome, p.descricao || '#39' '#39' || format(p.datainicio,'#39'dd/mm/' +
        'yyyy'#39') || '#39'-'#39' || format(p.datafim,'#39'dd/mm/yyyy'#39') as descricao,  p' +
        'f.valorliquido, pf.valorbruto, pf.qtdhoras, pf.qtdhoras_user, pf' +
        '.pagoesteano, pf.valorcomissao, p.status, pf.payrollfunc, pf.val' +
        'orpago, p.datainicio, p.datafim, p.datapagamento, f.periodicidad' +
        'e, c.descricao as nomecargo'
      'from payrolls p'
      '        inner join payrollsfunc pf on p.payroll = pf.payroll'
      
        '        inner join favorecidos f on pf.funcionario = f.favorecid' +
        'o'
      '        left join cargos c on c.cargo = f.cargo '
      
        'where p.datainicio >= :datai and p.datainicio <= :dataf and (pf.' +
        'funcionario = :funcionario or :todos = 0) and p.status <> '#39'C'#39)
    ParamData = <
      item
        DataType = ftDate
        Name = 'datai'
        ParamType = ptUnknown
        Value = '01/01/99'
      end
      item
        DataType = ftDate
        Name = 'dataf'
        ParamType = ptUnknown
        Value = '14/01/02'
      end
      item
        DataType = ftUnknown
        Name = 'funcionario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'todos'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 408
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 72
    end
    object C_ConsultaVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORBRUTO: TBCDField
      FieldName = 'VALORBRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPAGOESTEANO: TBCDField
      FieldName = 'PAGOESTEANO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORCOMISSAO: TBCDField
      FieldName = 'VALORCOMISSAO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPAYROLLFUNC: TIntegerField
      FieldName = 'PAYROLLFUNC'
      Required = True
    end
    object C_ConsultaQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
    end
    object C_ConsultaQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Size = 6
    end
    object C_ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_ConsultaccStatus: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ccStatus'
      Size = 1
    end
    object C_ConsultaVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object C_ConsultaDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object C_ConsultaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
    end
    object C_ConsultaPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Size = 1
    end
    object C_ConsultaNOMECARGO: TStringField
      FieldName = 'NOMECARGO'
      Size = 30
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios / Payroll'
    Caption = 'Payrolls'
  end
  inherited ppmLayout: TTS_PopupMenu
    Top = 49
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37271.4473605903
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Top = 112
  end
end

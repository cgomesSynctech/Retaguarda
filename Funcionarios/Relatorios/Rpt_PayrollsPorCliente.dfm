inherited RptPayrollsPorCliente: TRptPayrollsPorCliente
  Left = 48
  Top = 93
  Width = 746
  Caption = 'Funcion'#225'rios / Payroll'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 738
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 187
      Caption = 'Payrolls por Cliente'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 704
    end
  end
  inherited pnGrid: TPanel
    Width = 685
    inherited pnDados: TTS_Panel
      Width = 685
      Color = 15396297
      object lbPeriodo: TTS_Label
        Left = 13
        Top = 5
        Width = 81
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
      object lbAte: TTS_Label
        Left = 176
        Top = 4
        Width = 19
        Caption = 'a  '
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbCliente: TTS_Label
        Left = 303
        Top = 5
        Width = 50
        Caption = 'Cliente:'
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
        Left = 95
        Top = 2
        Width = 82
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esFinanceiro
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
        Left = 197
        Top = 2
        Width = 84
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esFinanceiro
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
      object ckbPeriodo: TTS_CheckBox
        Left = 0
        Top = 2
        Width = 20
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        OnChange = ckbPeriodoChange
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
      object edCliente: TTS_EditFavorecido
        Left = 354
        Top = 2
        Width = 205
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 3
        StyleController = DMProjeto.esFinanceiro
        OnChange = edClienteChange
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
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edClienteSelecionou
        Height = 19
        ExistButtons = True
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 685
      KeyField = 'PAYROLLFUNC'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'VLFunc'
              SummaryFormat = '>VLFunc=###,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VBFunc'
              SummaryFormat = '>VBFunc=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOMEFUNCIONARIO'
      TS_SummaryFields.Strings = (
        'VLFunc;Sum;U'
        'VBFunc;Sum;U')
      object dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMECLIENTE'
        GroupIndex = 0
      end
      object dbgConsultaPAYROLL: TdxDBGridMaskColumn
        Caption = 'Payroll'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAYROLL'
        GroupIndex = 1
      end
      object dbgConsultaNOMEFUNCIONARIO: TdxDBGridMaskColumn
        Caption = 'Funcion'#225'rio'
        HeaderAlignment = taCenter
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFUNCIONARIO'
      end
      object dbgConsultaCARGO: TdxDBGridMaskColumn
        Caption = 'Cargo'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARGO'
      end
      object dbgConsultaDATAINICIO: TdxDBGridDateColumn
        Caption = 'Data In'#237'cio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAINICIO'
      end
      object dbgConsultaDATAFIM: TdxDBGridDateColumn
        Caption = 'Data Fim'
        HeaderAlignment = taCenter
        Visible = False
        Width = 29
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAFIM'
      end
      object dbgConsultaDATAPAGAMENTO: TdxDBGridDateColumn
        Caption = 'Pagamento'
        HeaderAlignment = taCenter
        Visible = False
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGAMENTO'
      end
      object dbgConsultaVALORLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Valor L'#237'quido'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORLIQUIDO'
      end
      object dbgConsultaVALORBRUTO: TdxDBGridMaskColumn
        Caption = 'Valor Bruto'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORBRUTO'
      end
      object dbgConsultaPAGOESTEANO: TdxDBGridColumn
        Caption = 'Pago este Ano'
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAGOESTEANO'
      end
      object dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn
        Caption = 'Qtde Horas'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS_USER'
      end
      object dbgConsultaQTDHORAS: TdxDBGridMaskColumn
        Caption = 'Qtde Horas'
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS'
      end
      object dbgConsultaVBFUNC: TdxDBGridMaskColumn
        Caption = 'Valor L'#237'quido'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VBFUNC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaVLFUNC: TdxDBGridMaskColumn
        Caption = 'Valor Bruto'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VLFUNC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaPAYROLLFUNC: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAYROLLFUNC'
      end
      object dbgConsultaITEM: TdxDBGridColumn
        Caption = 'Servi'#231'o'
        HeaderAlignment = taCenter
        Width = 132
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 685
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
    SQL.Strings = (
      'select c.nome as NomeCliente, p.Descricao as PayRoll, '
      
        '          f.Nome as NomeFuncionario, cg.Descricao as Cargo, p.Da' +
        'taInicio,               p.DataFim, p.DataPagamento, p.ValorLiqui' +
        'do, p.ValorBruto,'
      
        '          pf.ValorBruto as VBFunc, pf.ValorLiquido as VLFunc, pf' +
        '.QtdHoras,               pf.payrollfunc, pf.PagoEsteAno, p.Payro' +
        'll as PayrollID, pf.funcionario,'
      '          pf.QtdHoras_User,'
      '         (select i.descricao from PayrollsPayItens ppi '
      
        '          inner join payrollitens pi on ppi.payrollitem = pi.pay' +
        'rollitem'
      '          inner join itens i on ppi.item = i.item'
      
        '          where ppi.payrollfunc = pf.payrollfunc and pi.tipopayr' +
        'oll = 1'
      '          group by i.descricao'
      '          having count(*) = 1) as Item'
      'from Payrolls p'
      '        inner join PayrollsFunc pf on p.payroll = pf.payroll'
      '        inner join Favorecidos c on p.favorecido = c.favorecido'
      
        '        inner join Favorecidos f on pf.funcionario = f.favorecid' +
        'o'
      '        left join Cargos cg on f.cargo = cg.cargo'
      '')
    Top = 114
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'FAVORECIDOS.NOMECLIENTE'
      Size = 50
    end
    object C_ConsultaPAYROLL: TStringField
      FieldName = 'PAYROLL'
      Origin = 'PAYROLLS.PAYROLL'
      Size = 50
    end
    object C_ConsultaNOMEFUNCIONARIO: TStringField
      FieldName = 'NOMEFUNCIONARIO'
      Origin = 'FAVORECIDOS.NOMEFUNCIONARIO'
      Size = 50
    end
    object C_ConsultaCARGO: TStringField
      FieldName = 'CARGO'
      Origin = 'CARGOS.CARGO'
      Size = 30
    end
    object C_ConsultaDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      Origin = 'PAYROLLS.DATAINICIO'
    end
    object C_ConsultaDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = 'PAYROLLS.DATAFIM'
    end
    object C_ConsultaDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'PAYROLLS.DATAPAGAMENTO'
    end
    object C_ConsultaVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      Origin = 'PAYROLLS.VALORLIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORBRUTO: TBCDField
      FieldName = 'VALORBRUTO'
      Origin = 'PAYROLLS.VALORBRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVBFUNC: TBCDField
      FieldName = 'VBFUNC'
      Origin = 'PAYROLLSFUNC.VBFUNC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVLFUNC: TBCDField
      FieldName = 'VLFUNC'
      Origin = 'PAYROLLSFUNC.VLFUNC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPAYROLLFUNC: TIntegerField
      FieldName = 'PAYROLLFUNC'
      Origin = 'PAYROLLSFUNC.PAYROLLFUNC'
      Required = True
    end
    object C_ConsultaPAGOESTEANO: TBCDField
      FieldName = 'PAGOESTEANO'
      Origin = 'PAYROLLSFUNC.PAGOESTEANO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaITEM: TStringField
      FieldName = 'ITEM'
      Size = 50
    end
    object C_ConsultaPAYROLLID: TIntegerField
      FieldName = 'PAYROLLID'
      Required = True
    end
    object C_ConsultaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object C_ConsultaQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
    end
    object C_ConsultaQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Size = 6
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios / Payroll'
    Caption = 'Payrolls por Cliente'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37338.402771956
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

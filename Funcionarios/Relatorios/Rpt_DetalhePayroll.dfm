inherited RptDetalhePayroll: TRptDetalhePayroll
  Left = 28
  Top = 58
  Caption = 'Funcion'#225'rios / Payroll'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 235
      Caption = 'Detalhamento de Payroll'
      Effect3D.ShadowedColor = 12240214
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Height = 26
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = -9
        Top = 7
        Width = 58
        Caption = 'Payroll:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edPayroll: TTS_EditPayroll
        Left = 51
        Top = 4
        Width = 244
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'$Data => Pesquis' +
          'a pela data in'#237'cio(mmddyy). Ex: $102002 '#13'%Data => Pesquisa pela ' +
          'data de pagamento(mmddyy). Ex: $102002 '
        Style.ButtonStyle = btsFlat
        TabOrder = 0
        StyleController = DMProjeto.esFuncionarios
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
        C_Localizar = DMProjeto.C_Payrolls
        ID = 0
        OnSelecionou = edPayrollSelecionou
        Height = 19
        ExistButtons = True
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 26
      Height = 363
      KeyField = 'PAYROLLFUNC'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      ShowRowFooter = True
      TS_SelectedColumn = 'PAYRROLLITEM'
      TS_SummaryFields.Strings = (
        'Valor;sum;U')
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Payroll'
        HeaderAlignment = taCenter
        Visible = False
        Width = 314
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'Funcion'#225'rio'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 314
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        SummaryFooterFormat = '###0'
        GroupIndex = 0
      end
      object dbgConsultaPAYRROLLITEM: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'Item do Payroll'
        HeaderAlignment = taCenter
        Width = 217
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAYRROLLITEM'
      end
      object dbgConsultaDESCTIPOPAYROLL: TdxDBGridColumn
        Caption = 'Tipo Payroll'
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTIPOPAYROLL'
      end
      object dbgConsultaQTDHORAS: TdxDBGridCurrencyColumn
        Caption = 'Horas'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS'
        DisplayFormat = '00.00'
        Nullable = False
      end
      object dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Horas'
        HeaderAlignment = taCenter
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS_USER'
      end
      object dbgConsultaVALOR: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        Nullable = False
      end
      object dbgConsultaTIPOPAYROLL: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOPAYROLL'
      end
    end
    inherited PainelFullSelect: TTS_Panel
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
      'select p.Descricao,'
      '       f.nome,'
      '       pi.descricao as PayrrollItem,'
      '       ppi.qtdhoras,'
      '       ppi.qtdhoras_user,'
      '       pi.tipopayroll,'
      '       ppi.valor,'
      '       t.descricao as DescTipoPayroll,'
      '       pf.payrollfunc'
      'from payrolls p'
      '        inner join payrollsfunc pf on p.payroll = pf.payroll'
      
        '        inner join payrollspayitens ppi on ppi.payrollfunc = pf.' +
        'payrollfunc'
      
        '        inner join payrollitens pi on pi.payrollitem = ppi.payro' +
        'llitem'
      
        '        inner join favorecidos f on f.favorecido = pf.funcionari' +
        'o'
      
        '        inner join tipospayroll t on pi.tipopayroll = t.tipopayr' +
        'oll'
      'where ppi.valor <> 0 and p.payroll = :payroll '
      'Order by p.payroll,f.nome,pi.descricao, ppi.valor')
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'payroll'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Left = 413
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PAYROLLS.DESCRICAO'
      Size = 50
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'PAYROLLSPAYITENS.VALOR'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPAYRROLLITEM: TStringField
      FieldName = 'PAYRROLLITEM'
      Origin = 'PAYROLLITENS.DESCRICAO'
      Size = 30
    end
    object C_ConsultaTIPOPAYROLL: TIntegerField
      FieldName = 'TIPOPAYROLL'
    end
    object C_ConsultaQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
    end
    object C_ConsultaQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Size = 6
    end
    object C_ConsultaDESCTIPOPAYROLL: TStringField
      FieldName = 'DESCTIPOPAYROLL'
      Size = 30
    end
    object C_ConsultaPAYROLLFUNC: TIntegerField
      FieldName = 'PAYROLLFUNC'
      Required = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios / Payroll'
    Caption = 'Detalhamento de Payroll'
    Left = 532
    Top = 210
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37328.689943912
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

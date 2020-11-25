inherited RptReciboColetivo: TRptReciboColetivo
  Left = 17
  Top = 58
  Width = 763
  Height = 464
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 755
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 107
      Caption = 'Payroll List'
      Effect3D.ShadowedColor = 12240214
    end
    inherited btHelp: TTS_SpeedButton
      Left = 721
    end
  end
  inherited pnGrid: TPanel
    Width = 702
    Height = 399
    inherited pnDados: TTS_Panel
      Width = 702
      Height = 24
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = 4
        Top = 6
        Width = 56
        Caption = 'PayRoll:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object edPayroll: TTS_EditPayroll
        Left = 62
        Top = 3
        Width = 235
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
      Top = 24
      Width = 702
      Height = 356
      KeyField = 'ID'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOME'
      object dbgConsultaNOMECLIENTE: TdxDBGridColumn
        Caption = 'Cliente'
        Visible = False
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMECLIENTE'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Employee'
        Sorted = csUp
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCARGO: TdxDBGridMaskColumn
        Caption = 'Function'
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARGO'
      end
      object dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn
        Caption = '# Check'
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMCHEQUE'
      end
      object dbgConsultaQTDHORAS: TdxDBGridMaskColumn
        Caption = 'Qty Hours'
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS'
      end
      object dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn
        Alignment = taRightJustify
        Caption = 'Qty Hours'
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDHORAS_USER'
      end
      object dbgConsultaVALORLIQUIDO: TdxDBGridMaskColumn
        Caption = 'Amount Due'
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORLIQUIDO'
      end
      object dbgConsultaVALORBRUTO: TdxDBGridMaskColumn
        Caption = 'Total Amount'
        Visible = False
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORBRUTO'
      end
      object dbgConsultaDATAADIMISSAO: TdxDBGridDateColumn
        Caption = 'Hire Date'
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAADIMISSAO'
      end
      object dbgConsultaPAYROLL: TdxDBGridMaskColumn
        Caption = 'Payroll'
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAYROLL'
      end
      object dbgConsultaDATAINICIO: TdxDBGridDateColumn
        Caption = 'Start Date'
        Visible = False
        Width = 27
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAINICIO'
      end
      object dbgConsultaDATAFIM: TdxDBGridDateColumn
        Caption = 'End Date'
        Visible = False
        Width = 26
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAFIM'
      end
      object dbgConsultaAssinatura: TdxDBGridColumn
        Caption = 'Signature'
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Assinatura'
      end
      object dbgConsultaColumn15: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 380
      Width = 702
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 399
    inherited btSair: TTS_SpeedButton
      Top = 354
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select d.id, f.nome, rd.numcheque, pf.qtdhoras, pf.qtdhoras_user' +
        ', pf.valorliquido, pf.valorbruto, c.Descricao as Cargo, f.dataad' +
        'imissao, p.descricao as Payroll, p.datainicio, p.datafim, fp.nom' +
        'e as NomeCliente, f.codigo'
      'From DuplicatasAPagar d '
      '         inner join Retiradas r on d.natureza = r.retirada'
      '         inner join RetiradasDoc rd on r.retirada = rd.retirada'
      
        '         inner join Payrollsfunc pf on d.payrollfunc = pf.payrol' +
        'lfunc'
      '         inner join Payrolls p on pf.payroll = p.payroll'
      
        '         left join Favorecidos f on rd.favorecidodoc = f.favorec' +
        'ido'
      
        '         left join Favorecidos fp on p.favorecido = fp.favorecid' +
        'o'
      '         left join Cargos c on f.cargo = c.cargo')
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_ConsultaVALORLIQUIDO: TBCDField
      FieldName = 'VALORLIQUIDO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORBRUTO: TBCDField
      FieldName = 'VALORBRUTO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCARGO: TStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object C_ConsultaDATAADIMISSAO: TDateField
      FieldName = 'DATAADIMISSAO'
    end
    object C_ConsultaPAYROLL: TStringField
      FieldName = 'PAYROLL'
      Size = 50
    end
    object C_ConsultaDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object C_ConsultaDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object C_ConsultaAssinatura: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Assinatura'
      Size = 100
    end
    object C_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaQTDHORAS: TFloatField
      FieldName = 'QTDHORAS'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaQTDHORAS_USER: TStringField
      FieldName = 'QTDHORAS_USER'
      Size = 6
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFuncionarios
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Payroll List'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.629768125
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

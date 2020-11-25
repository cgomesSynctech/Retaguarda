inherited RptClientesPrestServ: TRptClientesPrestServ
  Caption = 'Funcion'#225'rios / Payroll'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 326
      Caption = 'Clientes e prestadores de servi'#231'os'
      Effect3D.ShadowedColor = 12240214
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15396297
      object TS_Label2: TTS_Label
        Left = 7
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
      object edFavorecido: TTS_EditFavorecido
        Left = 59
        Top = 2
        Width = 230
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 0
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
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'CONTRATO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'dbgConsultaNOMEFUNCIONARIO'
              SummaryField = 'Nomefuncionario'
              SummaryFormat = '###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'Diferenca'
              SummaryFormat = '>Diferenca='
              SummaryType = cstSum
            end
            item
              SummaryField = 'Preco'
              SummaryFormat = '>Preco='
              SummaryType = cstSum
            end
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor='
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOMEFUNCIONARIO'
      TS_SummaryFields.Strings = (
        'Nomefuncionario;COUNT;D'
        'Diferenca;SUM;U'
        'Preco;SUM;U'
        'Valor;SUM;U')
      object dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMECLIENTE'
        GroupIndex = 0
      end
      object dbgConsultaNOMEFUNCIONARIO: TdxDBGridMaskColumn
        Caption = 'Funcion'#225'rio'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFUNCIONARIO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaCARGO: TdxDBGridMaskColumn
        Caption = 'Cargo'
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARGO'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Caption = 'Servi'#231'o'
        HeaderAlignment = taCenter
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
      end
      object dbgConsultaVALORCONTRATO: TdxDBGridCurrencyColumn
        Caption = 'Valor Contrato'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        SummaryFooterType = cstSum
        Nullable = False
      end
      object dbgConsultaVALORHORA: TdxDBGridCurrencyColumn
        Caption = 'Valor Pago'
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORFUNC'
        SummaryFooterType = cstSum
        Nullable = False
      end
      object dbgConsultaDiferenca: TdxDBGridMaskColumn
        Caption = 'Diferen'#231'a'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIFERENCA'
        SummaryFooterType = cstSum
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Color = 15396297
      inherited cbFullSelect: TTS_CheckBox
        Visible = False
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
      'select f.nome as nomecliente, ff.nome as nomefuncionario, '
      
        '          c.descricao as cargo, i.descricao as Item, cf.preco, c' +
        'f.valorfunc, (cf.preco-cf.valorfunc) as Diferenca,'
      'cf.contrato, cf.funcionario, cf.favorecido'
      'from contratosfav cf'
      'inner join favorecidos f on cf.favorecido = f.favorecido'
      'inner join favorecidos ff on cf.funcionario = ff.favorecido'
      'left join payrollitens pi on cf.payrollitem = pi.payrollitem'
      'left join itens i on cf.item = i.item'
      'left join cargos c on ff.cargo = c.cargo'
      'where (cf.favorecido = :fav or :todos = 0)'
      ' ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fav'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'todos'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'FAVORECIDOS.NOMECLIENTE'
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
    object C_ConsultaITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Size = 50
    end
    object C_ConsultaPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'CONTRATOSFAV.PRECO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDIFERENCA: TBCDField
      FieldName = 'DIFERENCA'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = 'CONTRATOSFAV.CONTRATO'
      Required = True
    end
    object C_ConsultaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'CONTRATOSFAV.FUNCIONARIO'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'CONTRATOSFAV.FAVORECIDO'
    end
    object C_ConsultaVALORFUNC: TBCDField
      FieldName = 'VALORFUNC'
      Origin = 'CONTRATOSFAV.VALORFUNC'
      Precision = 18
      Size = 2
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios / Payroll'
    Caption = 'Clientes e prestadores de servi'#231'os'
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37356.636255
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

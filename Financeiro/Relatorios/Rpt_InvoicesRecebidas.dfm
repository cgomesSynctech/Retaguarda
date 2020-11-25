inherited RptInvoicesRecebidas: TRptInvoicesRecebidas
  Left = 0
  Top = 29
  Width = 981
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 965
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 182
      Caption = 'Parcelas Recebidas'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 939
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 908
    end
    inherited lbTemplate: TTS_Label
      Left = 419
    end
  end
  inherited pnGrid: TPanel
    Width = 912
    inherited pnDados: TTS_Panel
      Width = 912
      Color = 16116702
      object lbPeriodo: TTS_Label
        Left = -3
        Top = 4
        Width = 85
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 174
        Top = 4
        Width = 17
        Alignment = taLeftJustify
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 406
        Top = 2
        Width = 207
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 3
        StyleController = DMProjeto.esClientes
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
        LookupTipoFav = cmbTipoFav
        SelecionarVarios = False
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
      object cmbTipoFav: TTS_DBLookupTipoFav
        Left = 308
        Top = 1
        Width = 98
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        StyleController = DMProjeto.esClientes
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
      object DataI: TTS_DateTimePicker
        Left = 85
        Top = 2
        Width = 85
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 193
        Top = 2
        Width = 85
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 912
      KeyField = 'ID'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'ValorPago'
              SummaryFormat = '>ValorPago=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Saldo'
              SummaryFormat = '>Saldo=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'JurosRecebidos'
              SummaryFormat = '>JurosRecebidos=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'TITULO'
              SummaryFormat = '>TITULO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'CREDITOUTILIZADO'
              SummaryFormat = '>CREDITOUTILIZADO=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'DESCONTOS'
              SummaryFormat = '>DESCONTOS=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'TITULO'
      TS_SummaryFields.Strings = (
        'Valor;Sum'
        'ValorPago;Sum'
        'Saldo;Sum'
        'JurosRecebidos;Sum'
        'TITULO;COUNT'
        'CREDITOUTILIZADO;Sum'
        'DESCONTOS;Sum')
      object dbgConsultaID: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaTITULO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaVALORPAGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTIPOREC: TdxDBGridColumn
        Caption = 'Tipo Rec.'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOREC'
      end
      object dbgConsultaDESCONTOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSRECEBIDOS'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOGERADO'
      end
      object dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOUTILIZADO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaDESCSTATUS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUS'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 854
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaSALDO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 103
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
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOFAVORECIDO'
      end
      object dbgConsultaFALTADIAS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FALTADIAS'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOCOBRANCA'
      end
      object dbgConsultaDATAPRORROGACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPRORROGACAO'
      end
      object dbgConsultaEMPRESA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMULTA'
      end
      object dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMORA'
      end
      object dbgConsultaVALORJUROSMORA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORJUROSMORA'
      end
      object dbgConsultaVALORMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORMULTA'
      end
      object dbgConsultaDATAATRASADO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 48
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAATRASADO'
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAANTECIPACAO'
      end
      object dbgConsultaVALORDESCANTECIPADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORDESCANTECIPADO'
      end
      object dbgConsultaNUMBOLETO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMBOLETO'
      end
      object dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_GARANTIA'
      end
      object dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCARTEIRA'
      end
      object dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROCARTEIRA'
      end
      object dbgConsultaDESCCAIXA: TdxDBGridMaskColumn
        Caption = 'Caixa'
        HeaderAlignment = taCenter
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCAIXA'
      end
      object dbgConsultaCOMPETENCIADATASEMANA: TdxDBGridColumn
        Caption = 'Compet'#234'ncia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIADATASEMANA'
      end
      object dbgConsultaVENCIMENTODATASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODATASEMANA'
      end
      object dbgConsultaDESCPER: TdxDBGridColumn
        Caption = '% Desconto'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCPER'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 912
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited DlgMsg: TDlgMsg
    Top = 345
  end
  inherited LastDataObject: TTS_LastDataObject
    Top = 329
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select t.ID, t.notafiscal, t.competencia, t.vencimento, t.valor,' +
        ' t.descontos/t.valor*100 as DescPer, t.valorpago, t.datapago, t.' +
        'descontos, t.jurosrecebidos, t.creditogerado, t.creditoutilizado' +
        ', s.Descricao as DescStatus, t.titulo, (t.faltareceber) as Saldo' +
        ', t.obs, tc.descricao as tipocobranca, t.percentualmulta, t.perc' +
        'entualmora,'
      't.valorjurosmora, t.valormulta, t.dataatrasado, t.parcela, '
      
        'f.cpf_cnpj, f.codigo, f.nome, f.razao, f.Endereco, f.bairro, f.C' +
        'idade, f.UF, f.fone1, f.fone2, f.fax, f.celular, f.cep,  f.email' +
        ',  t.Cliente as Favorecido, f.tipofavorecido, (t.vencimento-curr' +
        'ent_date) as faltadias, t.dataprorrogacao, e.nome as empresa, v.' +
        'nome as vendedor, t.dataantecipacao, t.valordescantecipado, t.or' +
        'igem_areceber, t.idgerador_areceber, t.numboleto, t.doc_garantia' +
        ', c.descricao as desccarteira, c.numerocarteira, ct.descricao as' +
        ' desccaixa, sd.TIPOPADRAO, t.venda, t.competencia'
      'from titulosareceber t '
      '        left join saidas sd on t.venda = sd.saida'
      '        left join favorecidos f on t.cliente = f.favorecido'
      '        left join favorecidos e on t.empresa = e.favorecido'
      '        left join favorecidos v on t.vendedor = v.favorecido'
      '        left join saidas ss on t.venda = ss.saida '
      '        left join contas ct on ss.caixa = ct.conta'
      '        left join statustitulos s on t.status = s.status'
      
        '        left join tiposcobranca tc on t.tipocobranca = tc.tipoco' +
        'branca'
      '        left join carteiras c on t.carteira = c.carteira'
      'where t.status > 0 and t.status < 50')
    Top = 113
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Origin = 'TITULOSARECEBER.ID'
      Required = True
    end
    object C_ConsultaNOTAFISCAL: TStringField
      DisplayLabel = '# Nota Fiscal'
      FieldName = 'NOTAFISCAL'
      Origin = 'TITULOSARECEBER.NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaCOMPETENCIA: TDateField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
      Origin = 'TITULOSARECEBER.COMPETENCIA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      Origin = 'TITULOSARECEBER.VENCIMENTO'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'TITULOSARECEBER.VALOR'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORPAGO: TBCDField
      DisplayLabel = 'Vlr. Pago'
      FieldName = 'VALORPAGO'
      Origin = 'TITULOSARECEBER.VALORPAGO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOS: TBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = 'TITULOSARECEBER.DESCONTOS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSRECEBIDOS: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROSRECEBIDOS'
      Origin = 'TITULOSARECEBER.JUROSRECEBIDOS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOGERADO: TBCDField
      DisplayLabel = 'Cr'#233'dito Gerado'
      FieldName = 'CREDITOGERADO'
      Origin = 'TITULOSARECEBER.CREDITOGERADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOUTILIZADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      Origin = 'TITULOSARECEBER.CREDITOUTILIZADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'DESCSTATUS'
      Origin = 'STATUSTITULOS.DESCSTATUS'
      Size = 50
    end
    object C_ConsultaSALDO: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'TITULOSARECEBER.SALDO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAPAGO: TDateField
      DisplayLabel = 'Data Pgto'
      FieldName = 'DATAPAGO'
      Origin = 'TITULOSARECEBER.DATAPAGO'
    end
    object C_ConsultaOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBS'
      Origin = 'TITULOSARECEBER.OBS'
      Size = 255
    end
    object C_ConsultaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ConsultaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_ConsultaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_ConsultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'FAVORECIDOS.FAX'
    end
    object C_ConsultaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_ConsultaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = 'FAVORECIDOS.EMAIL'
      Size = 40
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'TITULOSARECEBER.FAVORECIDO'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaTITULO: TStringField
      DisplayLabel = '# T'#237'tulo'
      FieldName = 'TITULO'
      Origin = 'TITULOSARECEBER.TITULO'
      Size = 10
    end
    object C_ConsultaFALTADIAS: TIntegerField
      DisplayLabel = 'Falta Dias'
      FieldName = 'FALTADIAS'
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_ConsultaRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'RAZAO'
      Origin = 'FAVORECIDOS.RAZAO'
      Size = 50
    end
    object C_ConsultaCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = 'FAVORECIDOS.CPF_CNPJ'
      OnGetText = C_ConsultaCPF_CNPJGetText
      Size = 14
    end
    object C_ConsultaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_ConsultaTIPOCOBRANCA: TStringField
      DisplayLabel = 'Tipo Cobran'#231'a'
      FieldName = 'TIPOCOBRANCA'
      Origin = 'TIPOSCOBRANCA.TIPOCOBRANCA'
      Size = 50
    end
    object C_ConsultaDATAPRORROGACAO: TDateField
      DisplayLabel = 'Prorroga'#231#227'o'
      FieldName = 'DATAPRORROGACAO'
      Origin = 'TITULOSARECEBER.DATAPRORROGACAO'
    end
    object C_ConsultaEMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = 'FAVORECIDOS.EMPRESA'
      Size = 50
    end
    object C_ConsultaPERCENTUALMULTA: TBCDField
      DisplayLabel = '% Multa'
      FieldName = 'PERCENTUALMULTA'
      Origin = 'TITULOSARECEBER.PERCENTUALMULTA'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPERCENTUALMORA: TBCDField
      DisplayLabel = '% Juros'
      FieldName = 'PERCENTUALMORA'
      Origin = 'TITULOSARECEBER.PERCENTUALMORA'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORJUROSMORA: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'VALORJUROSMORA'
      Origin = 'TITULOSARECEBER.VALORJUROSMORA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'VALORMULTA'
      Origin = 'TITULOSARECEBER.VALORMULTA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAATRASADO: TDateField
      DisplayLabel = 'Data Atrasado'
      FieldName = 'DATAATRASADO'
      Origin = 'TITULOSARECEBER.DATAATRASADO'
    end
    object C_ConsultaPARCELA: TIntegerField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'PARCELA'
      Origin = 'TITULOSARECEBER.PARCELA'
    end
    object C_ConsultaVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = 'FAVORECIDOS.VENDEDOR'
      Size = 50
    end
    object C_ConsultaDATAANTECIPACAO: TDateField
      DisplayLabel = 'Data Antecip.'
      FieldName = 'DATAANTECIPACAO'
      Origin = 'TITULOSARECEBER.DATAANTECIPACAO'
    end
    object C_ConsultaVALORDESCANTECIPADO: TBCDField
      DisplayLabel = 'Desc. Antecip.'
      FieldName = 'VALORDESCANTECIPADO'
      Origin = 'TITULOSARECEBER.VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaORIGEM_ARECEBER: TIntegerField
      FieldName = 'ORIGEM_ARECEBER'
      Origin = 'TITULOSARECEBER.ORIGEM_ARECEBER'
    end
    object C_ConsultaIDGERADOR_ARECEBER: TIntegerField
      FieldName = 'IDGERADOR_ARECEBER'
      Origin = 'TITULOSARECEBER.IDGERADOR_ARECEBER'
    end
    object C_ConsultaNUMBOLETO: TStringField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
      Origin = 'TITULOSARECEBER.NUMBOLETO'
    end
    object C_ConsultaDOC_GARANTIA: TStringField
      DisplayLabel = 'c/ Doc.Garantia'
      FieldName = 'DOC_GARANTIA'
      Origin = 'TITULOSARECEBER.DOC_GARANTIA'
    end
    object C_ConsultaDESCCARTEIRA: TStringField
      DisplayLabel = 'Desc. Carteira'
      FieldName = 'DESCCARTEIRA'
      Origin = 'CARTEIRAS.DESCCARTEIRA'
      Size = 50
    end
    object C_ConsultaNUMEROCARTEIRA: TStringField
      DisplayLabel = 'Carteira'
      FieldName = 'NUMEROCARTEIRA'
      Origin = 'CARTEIRAS.NUMEROCARTEIRA'
      Size = 10
    end
    object C_ConsultaDESCCAIXA: TStringField
      FieldName = 'DESCCAIXA'
      Size = 50
    end
    object C_ConsultaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_ConsultaVENDA: TIntegerField
      FieldName = 'VENDA'
    end
    object C_ConsultaCOMPETENCIADATASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'COMPETENCIADATASEMANA'
      Size = 50
    end
    object C_ConsultaVENCIMENTODATASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODATASEMANA'
      Size = 50
    end
    object C_ConsultaTIPOREC: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TIPOREC'
    end
    object C_ConsultaDESCPER: TBCDField
      FieldName = 'DESCPER'
      Precision = 18
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.627413831
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 632
    Top = 88
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Parcelas Recebidas'
    Left = 537
  end
end

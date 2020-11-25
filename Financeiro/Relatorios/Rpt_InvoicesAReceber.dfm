inherited RptInvoicesAReceber: TRptInvoicesAReceber
  Left = 366
  Top = 182
  Width = 892
  Height = 495
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 876
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 179
      Caption = 'Parcelas a Receber'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 850
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 807
    end
    inherited lbTemplate: TTS_Label
      Left = 550
      Anchors = [akTop, akRight]
    end
  end
  inherited pnGrid: TPanel
    Width = 823
    Height = 419
    inherited pnDados: TTS_Panel
      Width = 823
      Height = 51
      Color = 16116702
      object lbPeriodo: TTS_Label
        Left = 12
        Top = 5
        Width = 81
        Caption = 'Vencimento de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 181
        Top = 5
        Width = 23
        Alignment = taLeftJustify
        Caption = ' at'#233'  '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 15
        Top = 29
        Width = 81
        Height = 15
        Caption = 'Status Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 614
        Top = 29
        Width = 42
        Height = 15
        Caption = 'T'#237'tulo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 414
        Top = 3
        Width = 211
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 4
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
        Left = 312
        Top = 2
        Width = 102
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        StyleController = DMProjeto.esClientes
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
      object DataI: TTS_DateTimePicker
        Left = 95
        Top = 3
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 204
        Top = 3
        Width = 85
        TabOrder = 2
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
      object ckbVencimento: TTS_CheckBox
        Left = -1
        Top = 2
        Width = 20
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 0
        OnChange = ckbVencimentoChange
        State = cbsChecked
        DisableEdit = False
        Height = 19
      end
      object TS_PopupEdit1: TTS_PopupEdit
        Left = 100
        Top = 27
        Width = 189
        TabOrder = 5
        AutoSelect = False
        StyleController = DMProjeto.esClientes
        HideEditCursor = True
        PopupControl = clbTipoOperacao
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = TS_PopupEdit1CloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object cbTemVenda: TTS_CheckBox
        Left = 313
        Top = 26
        Width = 266
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 6
        Caption = 'Apenas os Titulos Sem Vendas Relacionadas.'
        OnChange = ckbVencimentoChange
        DisableEdit = False
        Height = 19
      end
      object dfTitulo: TTS_Edit
        Left = 659
        Top = 27
        Width = 96
        Hint = 
          'Informe o n'#250'mero do t'#237'tulo para pesquisa.'#13#10'Ao informar o n'#250'mero ' +
          'do t'#237'tulo os outros filtros n'#227'o ser'#227'o usados para a pesquisa.'
        TabOrder = 7
        OnKeyPress = dfTituloKeyPress
        CharCase = ecUpperCase
        StyleController = DMProjeto.esClientes
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 51
      Width = 823
      Height = 349
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
              SummaryField = 'TITULO'
              SummaryFormat = '>TITULO=###0'
              SummaryType = cstCount
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      PreviewFieldName = 'Preview'
      TS_SelectedColumn = 'TITULO'
      TS_SummaryFields.Strings = (
        'Valor;Sum'
        'ValorPago;Sum'
        'Saldo;Sum'
        'TITULO;COUNT')
      object dbgConsultaID: TdxDBGridMaskColumn
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaTITULO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        MaxLength = 15
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 186
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaVALORPAGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaDESCONTOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
      end
      object dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSRECEBIDOS'
      end
      object dbgConsultaicJuros: TdxDBGridColumn
        Caption = 'Juros'
        HeaderAlignment = taCenter
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icJuros'
      end
      object dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOGERADO'
      end
      object dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOUTILIZADO'
      end
      object dbgConsultaDESCSTATUS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUS'
      end
      object dbgConsultaVALORMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORMULTA'
      end
      object dbgConsultaVALORJUROSMORA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORJUROSMORA'
      end
      object dbgConsultaSALDO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaicValorAReceber: TdxDBGridColumn
        Caption = 'Vlr. A Receber'
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValorAReceber'
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 860
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaPreview: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 675
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Preview'
      end
      object dbgConsultaVENDA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDA'
      end
      object dbgConsultaFALTADIAS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FALTADIAS'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 173
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
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMULTA'
      end
      object dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMORA'
      end
      object dbgConsultaDATAATRASADO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAATRASADO'
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAANTECIPACAO'
      end
      object dbgConsultaVALORDESCANTECIPADO: TdxDBGridCurrencyColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORDESCANTECIPADO'
        Nullable = False
      end
      object dbgConsultaNOSSONUMERO: TdxDBGridMaskColumn
        Caption = 'Nosso N'#250'mero'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOSSONUMERO'
      end
      object dbgConsultaNUMBOLETO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMBOLETO'
      end
      object dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_GARANTIA'
      end
      object dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 173
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCARTEIRA'
      end
      object dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROCARTEIRA'
      end
      object dbgConsultaDESCSTATUSSAIDA: TdxDBGridMaskColumn
        Caption = 'Status da Opera'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUSSAIDA'
      end
      object dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn
        Caption = 'Compet'#234'ncia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 295
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIADIASEMANA'
      end
      object dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        Width = 295
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODIASEMANA'
      end
      object dbgConsultaicDesconto: TdxDBGridColumn
        Caption = 'Desc. Antecip.'
        HeaderAlignment = taCenter
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icDesconto'
      end
      object dbgConsultaCODIGOROMANEIO: TdxDBGridColumn
        Caption = 'C'#243'digo Rom.'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOROMANEIO'
      end
      object dbgConsultaDATAROMANEIRO: TdxDBGridColumn
        Caption = 'Data Romaneiro'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAROMANEIRO'
      end
      object dbgConsultaFUNCROMANEIO: TdxDBGridColumn
        Caption = 'Func. Romaneio'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCROMANEIO'
      end
      object dbgConsultaOBSROMANEIO: TdxDBGridColumn
        Caption = 'Obs. Romaneio'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBSROMANEIO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 400
      Width = 823
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
    object clbTipoOperacao: TTS_CheckListBox
      Left = 529
      Top = 138
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      KeyField = 'STATUS'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 419
    inherited btSair: TTS_SpeedButton
      Top = 374
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    object N2: TMenuItem
      Caption = '-'
    end
    object MostrarEndereco: TMenuItem
      Caption = 'Mostrar Endere'#231'o'
      OnClick = MostrarEnderecoClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select'
      't.ID, t.notafiscal, t.competencia, t.vencimento, t.valor,'
      
        't.valorpago, t.datapago, t.descontos, t.jurosrecebidos, t.credit' +
        'ogerado,'
      
        't.creditoutilizado, s.Descricao as DescStatus, t.titulo, (t.falt' +
        'areceber) as Saldo,'
      
        ' t.obs, tc.descricao as tipocobranca, t.percentualmulta, t.perce' +
        'ntualmora,'
      
        ' t.valorjurosmora, t.valormulta, t.dataatrasado, t.parcela, t.ve' +
        'nda, t.nossonumero,  f.cpf_cnpj,'
      
        ' f.codigo, f.nome, f.razao, f.Endereco, f.bairro, f.Cidade, f.UF' +
        ', f.fone1, f.fone2,'
      
        ' f.fax, f.celular, f.cep,  f.email,  t.Cliente as Favorecido, f.' +
        'tipofavorecido,'
      
        ' (t.vencimento-current_date) as faltadias, t.dataprorrogacao, e.' +
        'nome as empresa,'
      
        ' v.nome as vendedor, t.dataantecipacao, t.valordescantecipado, t' +
        '.origem_areceber,'
      
        '  t.idgerador_areceber, t.numboleto, t.doc_garantia, c.descricao' +
        ' as desccarteira,'
      
        '  c.numerocarteira, ss.descricao as descstatussaida,sd.tipopadra' +
        'o,'
      '  rc.codigoromaneio,'
      '  rc.data as DataRomaneiro,'
      '  rc.obs as obsRomaneio,'
      '  frc.nome as FuncRomaneio'
      'From titulosareceber t'
      ' left join favorecidos f on t.cliente = f.favorecido'
      ' left join favorecidos e on t.empresa = e.favorecido'
      ' left join favorecidos v on t.vendedor = v.favorecido'
      ' left join statustitulos s on t.status = s.status'
      ' left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca'
      ' left join carteiras c on t.carteira = c.carteira'
      ' left join saidas sd on sd.saida = t.venda'
      ' left join statussaidas ss on ss.status = sd.status'
      ' left join romaneioscobrdet rcd on rcd.titulo = t.id'
      
        ' left join romaneioscobr rc on rc.romaneiocobr = rcd.romaneiocob' +
        'r'
      ' left join favorecidos frc on frc.favorecido = rc.funcionario'
      'where t.status > 0 and t.status < 50')
    Left = 413
  end
  inherited P_Consulta: TDataSetProvider
    Top = 162
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
    object C_ConsultaPreview: TStringField
      DisplayLabel = 'Endere'#231'o Completo'
      FieldKind = fkInternalCalc
      FieldName = 'Preview'
      Size = 200
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'TITULOSARECEBER.FAVORECIDO'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'TITULOSARECEBER.VENDA'
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
    object C_ConsultaDESCSTATUSSAIDA: TStringField
      FieldName = 'DESCSTATUSSAIDA'
      Size = 30
    end
    object C_ConsultaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_ConsultaCOMPETENCIADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'COMPETENCIADIASEMANA'
      Size = 50
    end
    object C_ConsultaVENCIMENTODIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODIASEMANA'
      Size = 50
    end
    object C_ConsultaicJuros: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icJuros'
    end
    object C_ConsultaicDesconto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDesconto'
    end
    object C_ConsultaicValorAReceber: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValorAReceber'
    end
    object C_ConsultaCODIGOROMANEIO: TStringField
      FieldName = 'CODIGOROMANEIO'
      Size = 6
    end
    object C_ConsultaDATAROMANEIRO: TDateField
      FieldName = 'DATAROMANEIRO'
    end
    object C_ConsultaOBSROMANEIO: TStringField
      FieldName = 'OBSROMANEIO'
      Size = 255
    end
    object C_ConsultaFUNCROMANEIO: TStringField
      FieldName = 'FUNCROMANEIO'
      Size = 50
    end
    object C_ConsultaNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 362
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37231.6250694329
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited Q_SQLReport: TIBQuery
    Left = 566
    Top = 264
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 648
    Top = 136
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Parcelas a Receber'
    FirstEditField = edFavorecido
    Left = 249
    Top = 116
  end
  object Q_StatusSaidas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select status, descricao from statussaidas')
    Left = 490
    Top = 176
  end
  object P_StatusSaidas: TDataSetProvider
    DataSet = Q_StatusSaidas
    Constraints = True
    Left = 490
    Top = 232
  end
  object C_StatusSaidas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'STATUS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
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
    ProviderName = 'P_StatusSaidas'
    StoreDefs = True
    Left = 490
    Top = 288
    object C_StatusSaidasSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object C_StatusSaidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_StatusSaidasDS: TDataSource
    DataSet = C_StatusSaidas
    Left = 490
    Top = 344
  end
end

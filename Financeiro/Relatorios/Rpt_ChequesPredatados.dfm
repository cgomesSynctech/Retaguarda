inherited RptChequesPreDatados: TRptChequesPreDatados
  Left = 456
  Top = 153
  Width = 737
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 721
    inherited lbCaption: TdxfLabel
      Width = 202
      Caption = 'Cheques Pr'#233'-datados'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 695
    end
  end
  inherited pnGrid: TPanel
    Width = 668
    inherited pnDados: TTS_Panel
      Width = 668
      Height = 23
      object TS_Label1: TTS_Label
        Left = -9
        Top = 5
        Width = 85
        Caption = 'Vencimento de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 161
        Top = 5
        Width = 17
        Alignment = taLeftJustify
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_SpeedButton1: TTS_SpeedButton
        Left = 541
        Top = 1
        Width = 64
        Height = 21
        Caption = 'Depositar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = TS_SpeedButton1Click
        RepeatedClick = False
        Border = True
      end
      object DataI: TTS_DateTimePicker
        Left = 78
        Top = 2
        Width = 80
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
        Left = 177
        Top = 2
        Width = 79
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
      object edFavorecido: TTS_EditFavorecido
        Left = 359
        Top = 2
        Width = 177
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 3
        StyleController = DMProjeto.esFinanceiro
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
        Left = 266
        Top = 1
        Width = 93
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        StyleController = DMProjeto.esFinanceiro
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
      object ckbEndereco: TTS_CheckBox
        Left = 605
        Top = 2
        Width = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 4
        Caption = 'Endere'#231'o'
        StyleController = DMProjeto.esClientes
        OnChange = ckbEnderecoChange
        DisableEdit = False
        Height = 21
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 23
      Width = 668
      Height = 355
      KeyField = 'IDDOC'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Valor'
              SummaryFormat = '>Valor=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      PreviewFieldName = 'Preview'
      TS_SelectedColumn = 'DATA'
      TS_SummaryFields.Strings = (
        'Valor;Sum')
      object dbgConsultaIDDOC: TdxDBGridMaskColumn
        DisableCustomizing = True
        DisableEditor = True
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDDOC'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Alignment = taCenter
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMCHEQUE'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 213
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        Alignment = taCenter
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaDESCCONTA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
      end
      object dbgConsultaPrazo: TdxDBGridColumn
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Prazo'
        GroupIndex = 0
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'Endere'#231'o'
        Visible = False
        Width = 359
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        Visible = False
        Width = 218
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        Caption = 'Estado'
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone 1'
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Caption = 'Fone 2'
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Caption = 'Fax'
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Caption = 'Celular'
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        Caption = 'Zip'
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Caption = 'Email'
        Visible = False
        Width = 289
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        Caption = 'Cx.Postal'
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaFaltaDias: TdxDBGridColumn
        Caption = 'Falta # Dias'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FALTADIAS'
      end
      object dbgConsultaColumn22: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaHISTORICO: TdxDBGridMaskColumn
        Caption = 'Hist'#243'rico'
        Visible = False
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODIASEMANA'
      end
      object dbgConsultaDATADIASEMANA: TdxDBGridColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATADIASEMANA'
      end
      object dbgConsultaNOMEBANCO: TdxDBGridMaskColumn
        Caption = 'Banco'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEBANCO'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 668
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
      
        'Select dd.IDDoc, dd.NumCheque, dd.Valor, f.Nome, d.Data, dd.Venc' +
        'imento, b.Nome as NomeBanco, c.Descricao as DescConta,'
      
        'f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, f.celular, ' +
        'f.cep, f.codigo, f.email,  f.CaixaPostal, f.TipoFavorecido, d.fa' +
        'vorecido, d.Deposito, d.TipoDeposito, (dd.vencimento - current_d' +
        'ate) as faltadias, d.historico'
      'From DepositosDoc dd'
      'inner join Depositos d on dd.deposito = d.deposito'
      'left join Favorecidos f on d.favorecido = f.favorecido'
      'left join Favorecidos b on dd.banco = b.favorecido'
      'left join Contas c on dd.ContaAtual = c.Conta'
      'Where dd.vencimento >= :dataI and dd.vencimento <= :dataF and  '
      '            dd.formapagamento in (2,3) and dd.status < 50 and '
      '            dd.foradaempresa =  '#39'N'#39)
    Left = 414
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataF'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 410
    object C_ConsultaIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ConsultaNUMCHEQUE: TIntegerField
      DisplayLabel = '# Cheque'
      FieldName = 'NUMCHEQUE'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaDESCCONTA: TStringField
      DisplayLabel = 'Conta Atual'
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_ConsultaPrazo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Prazo'
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
    object C_ConsultaFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_ConsultaFAX: TStringField
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object C_ConsultaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 25
    end
    object C_ConsultaPreview: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Preview'
      Size = 200
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object C_ConsultaTIPODEPOSITO: TIntegerField
      FieldName = 'TIPODEPOSITO'
    end
    object C_ConsultaFALTADIAS: TIntegerField
      FieldName = 'FALTADIAS'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_ConsultaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_ConsultaVENCIMENTODIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODIASEMANA'
      Size = 50
    end
    object C_ConsultaDATADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DATADIASEMANA'
      Size = 50
    end
    object C_ConsultaNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 50
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 497
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6256483449
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    Caption = 'Cheques Pr'#233'-datados'
    Left = 249
    Top = 112
  end
end

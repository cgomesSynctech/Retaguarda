inherited RptContasChequesAPagar: TRptContasChequesAPagar
  Left = 93
  Top = 174
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 247
      Caption = 'Contas e Cheques a Pagar'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15196656
      object TS_Label1: TTS_Label
        Left = 5
        Top = 5
        Width = 84
        Caption = 'Vencimento de:'
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
        Left = 176
        Top = 5
        Width = 16
        Alignment = taCenter
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 90
        Top = 2
        Width = 84
        TabOrder = 0
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 196
        Top = 2
        Width = 84
        TabOrder = 1
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
        OnDateChange = DataFDateChange
        Height = 19
        StoredValues = 4
      end
      object cmbTipoFav: TTS_DBLookupTipoFav
        Left = 300
        Top = 1
        Width = 94
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        StyleController = DMProjeto.esFornecedores
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 2
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 394
        Top = 2
        Width = 197
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 3
        StyleController = DMProjeto.esFornecedores
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
    end
    inherited dbgConsulta: TTS_QDBGrid
      KeyField = 'ID'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'icFaltaPagar'
              SummaryFormat = '>icFaltaPagar=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NOME'
      TS_SummaryFields.Strings = (
        'icFaltaPagar;Sum')
      object dbgConsultaID: TdxDBGridMaskColumn
        Visible = False
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Fornecedores'
        HeaderAlignment = taCenter
        Width = 235
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone'
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaicFaltaPagar: TdxDBGridMaskColumn
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icFaltaPagar'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaFALTAEMDIAS: TdxDBGridMaskColumn
        Caption = 'Dias'
        HeaderAlignment = taCenter
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FALTAEMDIAS'
      end
      object dbgConsultaBANCO: TdxDBGridMaskColumn
        Caption = 'Banco'
        HeaderAlignment = taCenter
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BANCO'
      end
      object dbgConsultaDOC: TdxDBGridMaskColumn
        Caption = 'Documento'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC'
      end
      object dbgConsultaTIPO: TdxDBGridMaskColumn
        Caption = 'Tipo'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
        GroupIndex = 0
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        Caption = 'CPF/CNPJ'
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 249
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        Caption = 'Bairro'
        HeaderAlignment = taCenter
        Visible = False
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 149
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
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Caption = 'Fone 2'
        HeaderAlignment = taCenter
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaOBSERVACAO: TdxDBGridColumn
        Caption = 'Observa'#231#227'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 1403
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBSERVACAO'
      end
      object dbgConsultaTIPOCOBRANCA: TdxDBGridColumn
        Caption = 'Tipo da Cobran'#231'a'
        HeaderAlignment = taCenter
        Visible = False
        Width = 223
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOCOBRANCA'
      end
      object dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIADIASEMANA'
      end
      object dbgConsultaVENCIMENTODIASEMANA: TdxDBGridColumn
        Caption = 'Vencimento'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTODIASEMANA'
      end
      object dbgConsultaDESCINDEX: TdxDBGridMaskColumn
        Caption = 'Indexador'
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCINDEX'
      end
      object dbgConsultaCTODESPESA: TdxDBGridColumn
        Caption = 'Cto.Despesa'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CTODESPESA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
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
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select t.id, f.nome, t.competencia, t.vencimento, t.faltapagar,'
      
        ' (t.vencimento-current_date) as faltaemdias, cast(t.Titulo as ch' +
        'ar(10)) as Doc,'
      
        ' cast('#39' '#39' as varchar(50)) as Banco, '#39'Contas '#39' as Tipo, f.cpf_cnp' +
        'j,'
      ' f.endereco, f.bairro, f.cep, f.cidade, f.uf, f.fone1,'
      ' f.fone2, f.tipofavorecido, t.fornecedor,'
      ' t.idgerador_apagar as conta, t.obs as OBSERVACAO,'
      
        ' tc.descricao as tipocobranca, t.indexador, idx.descricao as des' +
        'cindex,'
      ' x.Descricao as CTODespesa'
      'From DuplicatasAPagar t'
      'Inner join Favorecidos f on t.fornecedor = f.favorecido'
      'left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca'
      'left join indexadores idx on t.indexador = idx.indexador'
      'left join contas x on  x.conta = f.contadespesas'
      
        'Where t.vencimento >= :DataI and t.vencimento <= :DataF and t.st' +
        'atus > 0 and t.status < 50  :FAV'
      ''
      ''
      'UNION'
      ''
      ''
      'Select dd.iddoc, f.nome, d.data, dd.vencimento, dd.valor,'
      
        '(dd.vencimento-current_date) as faltaemdias, cast(dd.numcheque a' +
        's char(10)),'
      
        'c.descricao, '#39'Cheques'#39' as Tipo, f.cpf_cnpj, f.endereco, f.bairro' +
        ', f.cep, f.cidade,'
      
        'f.uf, f.fone1, f.fone2, f.tipofavorecido, dd.favorecidodoc, dd.c' +
        'onta,'
      'cast('#39' '#39' as varchar(255))  as OBSERVACAO,'
      'cast('#39' '#39' as varchar(50))  as TIPOCOBRANCA,'
      '-8888 as indexador,'
      'cast('#39' '#39' as varchar(30)) as descindex ,'
      'cast('#39' '#39' as varchar(50))  as CTODespesa'
      ''
      'From RetiradasDoc dd'
      'Inner join Retiradas d on dd.retirada = d.retirada'
      'Left join Favorecidos f on dd.favorecidodoc = f.favorecido'
      'Left join Contas c on dd.conta = c.conta'
      'left join contas x on  x.conta = f.contadespesas'
      'Where dd.Vencimento >= :DataI and '
      
        'dd.Vencimento <= :DataF and dd.status = 3 and dd.formapagamento ' +
        '> 1 and'
      'dd.formapagamento < 4 and d.situacao= '#39'N'#39'   :FAV'
      'Order by 4')
    Left = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAV'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaFALTAEMDIAS: TIntegerField
      FieldName = 'FALTAEMDIAS'
    end
    object C_ConsultaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object C_ConsultaDOC: TStringField
      FieldName = 'DOC'
      FixedChar = True
      Size = 10
    end
    object C_ConsultaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 7
    end
    object C_ConsultaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
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
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaFALTAPAGAR: TBCDField
      FieldName = 'FALTAPAGAR'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_ConsultaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ConsultaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object C_ConsultaTIPOCOBRANCA: TStringField
      FieldName = 'TIPOCOBRANCA'
      Size = 50
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
    object C_ConsultaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
    end
    object C_ConsultaDESCINDEX: TStringField
      FieldName = 'DESCINDEX'
      Size = 30
    end
    object C_ConsultaicFaltaPagar: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icFaltaPagar'
    end
    object C_ConsultaCTODESPESA: TStringField
      FieldName = 'CTODESPESA'
      Size = 50
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37554.4661151736
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 656
    Top = 176
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Contas e Cheques a Pagar'
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 416
    Top = 328
  end
end

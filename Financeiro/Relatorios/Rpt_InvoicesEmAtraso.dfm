inherited RptInvoicesEmAtraso: TRptInvoicesEmAtraso
  Left = 16
  Top = 44
  Width = 762
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 746
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 182
      Caption = 'Parcelas em Atraso'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 720
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 684
    end
  end
  inherited pnGrid: TPanel
    Width = 693
    inherited pnDados: TTS_Panel
      Width = 693
      Height = 23
      Color = 16116702
      object edFavorecido: TTS_EditFavorecido
        Left = 110
        Top = 2
        Width = 247
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
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
        Left = 10
        Top = 1
        Width = 98
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        StyleController = DMProjeto.esClientes
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 23
      Width = 693
      Height = 355
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
              SummaryField = 'icJuros'
              SummaryFormat = '>icJuros=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Saldo'
              SummaryFormat = '>Saldo=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icValorAReceber'
              SummaryFormat = '>icValorAReceber=#,###,##0.00'
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
        'icJuros;Sum'
        'Saldo;Sum'
        'icValorAReceber;Sum'
        'TITULO;COUNT')
      object dbgConsultaID: TdxDBGridMaskColumn
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 55
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
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORPAGO'
      end
      object dbgConsultaDESCONTOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
      end
      object dbgConsultaJUROSRECEBIDOS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROSRECEBIDOS'
      end
      object dbgConsultaCREDITOGERADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOGERADO'
      end
      object dbgConsultaCREDITOUTILIZADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOUTILIZADO'
      end
      object dbgConsultaDESCSTATUS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCSTATUS'
      end
      object dbgConsultaVALORMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORMULTA'
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaicJuros: TdxDBGridMaskColumn
        Caption = 'Juros'
        HeaderAlignment = taCenter
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icJuros'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaSALDO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SALDO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 912
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 109
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
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaPreview: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 716
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Preview'
      end
      object dbgConsultaVENDA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDA'
      end
      object dbgConsultaicValorAReceber: TdxDBGridColumn
        Caption = 'A Receber'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValorAReceber'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaFALTADIAS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FALTADIAS'
      end
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaRAZAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RAZAO'
      end
      object dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CPF_CNPJ'
      end
      object dbgConsultaBAIRRO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BAIRRO'
      end
      object dbgConsultaTIPOCOBRANCA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOCOBRANCA'
      end
      object dbgConsultaDATAPRORROGACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPRORROGACAO'
      end
      object dbgConsultaEMPRESA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object dbgConsultaPERCENTUALMULTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMULTA'
      end
      object dbgConsultaPERCENTUALMORA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUALMORA'
      end
      object dbgConsultaDATAATRASADO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAATRASADO'
      end
      object dbgConsultaPARCELA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object dbgConsultaVENDEDOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDOR'
      end
      object dbgConsultaDATAANTECIPACAO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAANTECIPACAO'
      end
      object dbgConsultaVALORDESCANTECIPADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORDESCANTECIPADO'
      end
      object dbgConsultaNUMBOLETO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMBOLETO'
      end
      object dbgConsultaDOC_GARANTIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOC_GARANTIA'
      end
      object dbgConsultaDESCCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCARTEIRA'
      end
      object dbgConsultaNUMEROCARTEIRA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROCARTEIRA'
      end
      object dbgConsultaCOMPETENCIADIASEMANA: TdxDBGridColumn
        Caption = 'Compet'#234'ncia'
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
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 693
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
      
        'select t.ID, t.notafiscal, t.competencia, t.vencimento, t.valor,' +
        ' t.valorpago, t.datapago, t.descontos, t.jurosrecebidos, t.credi' +
        'togerado, t.creditoutilizado, s.Descricao as DescStatus, t.titul' +
        'o, (t.faltareceber) as Saldo, t.obs, tc.descricao as tipocobranc' +
        'a, t.percentualmulta, t.percentualmora,  t.valorjurosmora, t.val' +
        'ormulta, t.dataatrasado, t.parcela, t.venda,  f.cpf_cnpj, f.codi' +
        'go, f.nome, f.razao, f.Endereco, f.bairro, f.Cidade, f.UF, f.fon' +
        'e1, f.fone2, f.fax, f.celular, f.cep,  f.email,  t.Cliente as Fa' +
        'vorecido, f.tipofavorecido, (t.vencimento-current_date) as falta' +
        'dias, t.dataprorrogacao, e.nome as empresa, v.nome as vendedor, ' +
        't.dataantecipacao, t.valordescantecipado, t.origem_areceber, t.i' +
        'dgerador_areceber, t.numboleto, t.doc_garantia, c.descricao as d' +
        'esccarteira, c.numerocarteira, sd.tipopadrao'
      'from'
      'titulosareceber t  '
      'left join saidas sd on t.venda = sd.saida  '
      'left join favorecidos f on t.cliente = f.favorecido  '
      'left join favorecidos e on t.empresa = e.favorecido  '
      'left join favorecidos v on t.vendedor = v.favorecido  '
      'left join statustitulos s on t.status = s.status  '
      'left join tiposcobranca tc on t.tipocobranca = tc.tipocobranca  '
      'left join carteiras c on t.carteira = c.carteira')
    Left = 413
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 416
    Top = 215
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaNOTAFISCAL: TStringField
      DisplayLabel = '# Nota Fiscal'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaCOMPETENCIA: TDateField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORPAGO: TBCDField
      DisplayLabel = 'Vlr. Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCONTOS: TBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSRECEBIDOS: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROSRECEBIDOS'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOGERADO: TBCDField
      DisplayLabel = 'Cr'#233'dito Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOUTILIZADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object C_ConsultaSALDO: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAPAGO: TDateField
      DisplayLabel = 'Data Pgto'
      FieldName = 'DATAPAGO'
    end
    object C_ConsultaOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBS'
      Size = 255
    end
    object C_ConsultaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaFONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'FONE1'
    end
    object C_ConsultaFONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'FONE2'
    end
    object C_ConsultaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object C_ConsultaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
    end
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_ConsultaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
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
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaVENDA: TIntegerField
      FieldName = 'VENDA'
    end
    object C_ConsultaTITULO: TStringField
      DisplayLabel = '# T'#237'tulo'
      FieldName = 'TITULO'
      Size = 10
    end
    object C_ConsultaFALTADIAS: TIntegerField
      DisplayLabel = 'Falta Dias'
      FieldName = 'FALTADIAS'
    end
    object C_ConsultaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object C_ConsultaRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o'
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_ConsultaCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      OnGetText = C_ConsultaCPF_CNPJGetText
      Size = 14
    end
    object C_ConsultaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_ConsultaTIPOCOBRANCA: TStringField
      DisplayLabel = 'Tipo Cobran'#231'a'
      FieldName = 'TIPOCOBRANCA'
      Size = 50
    end
    object C_ConsultaDATAPRORROGACAO: TDateField
      DisplayLabel = 'Prorroga'#231#227'o'
      FieldName = 'DATAPRORROGACAO'
    end
    object C_ConsultaEMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Size = 50
    end
    object C_ConsultaPERCENTUALMULTA: TBCDField
      DisplayLabel = '% Multa'
      FieldName = 'PERCENTUALMULTA'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_ConsultaPERCENTUALMORA: TBCDField
      DisplayLabel = '% Juros'
      FieldName = 'PERCENTUALMORA'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORJUROSMORA: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'VALORJUROSMORA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'VALORMULTA'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAATRASADO: TDateField
      DisplayLabel = 'Data Atrasado'
      FieldName = 'DATAATRASADO'
    end
    object C_ConsultaPARCELA: TIntegerField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'PARCELA'
    end
    object C_ConsultaVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object C_ConsultaDATAANTECIPACAO: TDateField
      DisplayLabel = 'Data Antecip.'
      FieldName = 'DATAANTECIPACAO'
    end
    object C_ConsultaVALORDESCANTECIPADO: TBCDField
      DisplayLabel = 'Desc. Antecip.'
      FieldName = 'VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ConsultaORIGEM_ARECEBER: TIntegerField
      FieldName = 'ORIGEM_ARECEBER'
    end
    object C_ConsultaIDGERADOR_ARECEBER: TIntegerField
      FieldName = 'IDGERADOR_ARECEBER'
    end
    object C_ConsultaNUMBOLETO: TStringField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
    end
    object C_ConsultaDOC_GARANTIA: TStringField
      DisplayLabel = 'c/ Doc.Garantia'
      FieldName = 'DOC_GARANTIA'
    end
    object C_ConsultaDESCCARTEIRA: TStringField
      DisplayLabel = 'Desc. Carteira'
      FieldName = 'DESCCARTEIRA'
      Size = 50
    end
    object C_ConsultaNUMEROCARTEIRA: TStringField
      DisplayLabel = 'Carteira'
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
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
    object C_ConsultaPrazo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Prazo'
      Size = 50
    end
    object C_ConsultaicJuros: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icJuros'
    end
    object C_ConsultaicValorAReceber: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValorAReceber'
    end
  end
  inherited ppmDados: TTS_PopupMenu
    Left = 307
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 310
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 495
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6273964468
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Top = 144
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Parcelas em Atraso'
  end
end

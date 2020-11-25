inherited RptContasEmAtraso: TRptContasEmAtraso
  Left = 38
  Width = 752
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 744
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 246
      Caption = 'Contas a Pagar em Atraso'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 710
    end
  end
  inherited pnGrid: TPanel
    Width = 691
    inherited pnDados: TTS_Panel
      Width = 691
      Color = 15196656
      object edFavorecido: TTS_EditFavorecido
        Left = 107
        Top = 2
        Width = 244
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 1
        StyleController = DMProjeto.esFornecedores
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
        Left = 8
        Top = 1
        Width = 98
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        StyleController = DMProjeto.esFornecedores
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 2
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 691
      KeyField = 'ID'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'icValor'
              SummaryFormat = '>icValor=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icValorPago'
              SummaryFormat = '>icValorPago=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'icSaldo'
              SummaryFormat = '>icSaldo=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      PreviewFieldName = 'Preview'
      TS_SelectedColumn = 'NOTAFISCAL'
      TS_SummaryFields.Strings = (
        'icValor;Sum'
        'icValorPago;Sum'
        'icSaldo;Sum')
      object dbgConsultaID: TdxDBGridMaskColumn
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn
        Caption = 'Opera'#231#227'o N'#186
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
        DisableFilter = True
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        DisableFilter = True
      end
      object dbgConsultaCOMPETENCIA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPETENCIA'
        DisableFilter = True
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
        DisableFilter = True
      end
      object dbgConsultaicValor: TdxDBGridMaskColumn
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValor'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisableFilter = True
      end
      object dbgConsultaicValorPago: TdxDBGridMaskColumn
        Caption = 'Valor Pago'
        HeaderAlignment = taCenter
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icValorPago'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisableFilter = True
      end
      object dbgConsultaDATAPAGO: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAPAGO'
        DisableFilter = True
      end
      object dbgConsultaicDescontos: TdxDBGridMaskColumn
        Caption = 'Descontos'
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icDescontos'
        DisableFilter = True
      end
      object dbgConsultaicJurosPagos: TdxDBGridMaskColumn
        Caption = 'Juros'
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icJurosPagos'
        DisableFilter = True
      end
      object dbgConsultaicCreditoGerado: TdxDBGridMaskColumn
        Caption = 'Cr'#233'd. Gerado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCreditoGerado'
        DisableFilter = True
      end
      object dbgConsultaicCreditoUtilizado: TdxDBGridMaskColumn
        Caption = 'Cr'#233'd. Utilizado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icCreditoUtilizado'
        DisableFilter = True
      end
      object dbgConsultaicSaldo: TdxDBGridMaskColumn
        Caption = 'Saldo'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'icSaldo'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        DisableFilter = True
      end
      object dbgConsultaPrazo: TdxDBGridColumn
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Prazo'
        DisableFilter = True
        GroupIndex = 0
      end
      object dbgConsultaEndereco: TdxDBGridColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Visible = False
        Width = 289
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCidade: TdxDBGridColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Visible = False
        Width = 175
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaEstado: TdxDBGridColumn
        Caption = 'Estado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaFone1: TdxDBGridColumn
        Caption = 'Telefone'
        HeaderAlignment = taCenter
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFone2: TdxDBGridColumn
        Caption = 'Fone 2'
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaCelular: TdxDBGridColumn
        Caption = 'Celular'
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaFax: TdxDBGridColumn
        Caption = 'Fax'
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCaixaPostal: TdxDBGridColumn
        Caption = 'Cx.Postal'
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaEmail: TdxDBGridColumn
        Caption = 'Email'
        Visible = False
        Width = 231
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaDiasEmAtraso: TdxDBGridColumn
        Caption = '# Dias'
        HeaderAlignment = taCenter
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIASEMATRASO'
      end
      object dbgConsultaColumn27: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
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
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 691
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
      
        'select d.ID, d.notafiscal, f.nome, d.competencia, d.vencimento, ' +
        'd.valor, d.valorpago, d.datapago, d.descontos, d.jurospagos, d.c' +
        'reditogerado, d.creditoutilizado, f.codigo, '
      '(d.faltapagar) as Saldo,'
      
        'f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, f.celular, ' +
        'f.cep,          f.email,  f.CaixaPostal, f.tipofavorecido, d.com' +
        'pra, f.favorecido, (current_date - d.vencimento) as DiasEmAtraso' +
        ', d.indexador, idx.descricao as descindex'
      'from duplicatasapagar d'
      'inner join favorecidos f on d.fornecedor = f.favorecido'
      'left join indexadores idx on d.indexador = idx.indexador'
      
        'where (d.status = 3 or (d.status=-3 and d.Vencimento<current_dat' +
        'e)) and (d.Fornecedor = :Favorecido or :Todos = 0)')
    Left = 414
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Todos'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ConsultaNOTAFISCAL: TStringField
      DisplayLabel = '# Conta'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Nome do Favorecido'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaCOMPETENCIA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data'
      FieldName = 'COMPETENCIA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaVALORPAGO: TBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDATAPAGO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Pgto'
      FieldName = 'DATAPAGO'
    end
    object C_ConsultaDESCONTOS: TBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ConsultaJUROSPAGOS: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOGERADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCREDITOUTILIZADO: TBCDField
      DisplayLabel = 'Cr'#233'd.Gerado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaSALDO: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
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
    object C_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
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
    object C_ConsultaCOMPRA: TIntegerField
      FieldName = 'COMPRA'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaDIASEMATRASO: TIntegerField
      FieldName = 'DIASEMATRASO'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
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
    object C_ConsultaicValor: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValor'
    end
    object C_ConsultaicValorPago: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icValorPago'
    end
    object C_ConsultaicDescontos: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDescontos'
    end
    object C_ConsultaicJurosPagos: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icJurosPagos'
    end
    object C_ConsultaicCreditoGerado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCreditoGerado'
    end
    object C_ConsultaicCreditoUtilizado: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCreditoUtilizado'
    end
    object C_ConsultaicSaldo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSaldo'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Contas a Pagar em Atraso'
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 502
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6263177083
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 408
    Top = 336
  end
end

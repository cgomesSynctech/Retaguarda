inherited RptPagamentosRetiradas: TRptPagamentosRetiradas
  Top = 73
  Width = 958
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 942
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 226
      Caption = 'Pagamentos no Per'#237'odo'
      Effect3D.ShadowedColor = 11775972
    end
    inherited btHelp: TTS_SpeedButton
      Left = 916
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 883
    end
  end
  inherited pnGrid: TPanel
    Width = 889
    inherited pnDados: TTS_Panel
      Width = 889
      Height = 23
      Color = 15196656
      object lbPeriodo: TTS_Label
        Left = -4
        Top = 5
        Width = 82
        Caption = 'No per'#237'odo de:'
        FocusControl = DataI
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbA: TTS_Label
        Left = 162
        Top = 4
        Width = 13
        Caption = ' a '
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbConta: TTS_Label
        Left = 260
        Top = 4
        Width = 38
        Caption = 'Conta:'
        FocusControl = cmbConta
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 80
        Top = 2
        Width = 81
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 179
        Top = 2
        Width = 81
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
        OnDateChange = DataIDateChange
        Height = 19
        StoredValues = 4
      end
      object cmbTipoFav: TTS_DBLookupTipoFav
        Left = 466
        Top = 1
        Width = 89
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        StyleController = DMProjeto.esFornecedores
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 2
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 554
        Top = 2
        Width = 127
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 4
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
          end>
        LookupTipoFav = cmbTipoFav
        SelecionarVarios = False
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
      object cmbConta: TTS_PopupEdit
        Left = 299
        Top = 2
        Width = 163
        TabOrder = 2
        StyleController = DMProjeto.esFornecedores
        OnChange = cmbContaChange
        PopupFormBorderStyle = pbsSysPanel
        OnInitPopup = cmbContaInitPopup
        LookupSource = DMFinanceiro.C_ContasCxBcDS
        LookupKeyValue = 0
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 23
      Width = 889
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
      TS_SelectedColumn = 'NOME'
      TS_SummaryFields.Strings = (
        'Valor;Sum;U')
      object dbgConsultaIDDOC: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDDOC'
      end
      object dbgConsultaRETIRADA: TdxDBGridMaskColumn
        Caption = '# Invoice'
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOTAFISCAL'
      end
      object dbgConsultaTIPORETIRADA: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPORETIRADA'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
        GroupIndex = 0
      end
      object dbgConsultaNome: TdxDBGridMaskColumn
        Caption = 'Nome'
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        Caption = 'Valor'
        HeaderAlignment = taCenter
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaDESCFORMAPAG: TdxDBGridMaskColumn
        Caption = 'Forma Pag.'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCFORMAPAG'
      end
      object dbgConsultaDESCORIGEM: TdxDBGridMaskColumn
        Caption = 'Origem'
        HeaderAlignment = taCenter
        Visible = False
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCORIGEM'
      end
      object dbgConsultaHistorico: TdxDBGridColumn
        Caption = 'Memo'
        HeaderAlignment = taCenter
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object dbgConsultaDESCCONTA: TdxDBGridMaskColumn
        Caption = 'Conta'
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
      end
      object dbgConsultaDESCTIPOFAV: TdxDBGridColumn
        Caption = 'Tipo Favorecido'
        HeaderAlignment = taCenter
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTIPOFAV'
      end
      object dbgConsultaCHEQUENOMINAL: TdxDBGridColumn
        Caption = 'Nominal a'
        HeaderAlignment = taCenter
        Visible = False
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHEQUENOMINAL'
      end
      object dbgConsultaColumn15: TdxDBGridColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object dbgConsultaDATADIASEMANA: TdxDBGridColumn
        Caption = 'Data'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATADIASEMANA'
      end
      object dbgConsultaDESCCONTADESPESA: TdxDBGridMaskColumn
        Caption = 'Conta Despesa'
        HeaderAlignment = taCenter
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTADESPESA'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 889
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
      
        'Select rd.IDDoc, r.historico, r.Retirada, r.TipoRetirada, r.Data' +
        ', f.Nome, f.codigo,'
      'rd.Vencimento, rd.Valor, fp.Descricao as DescFormaPag, '
      't.Descricao as DescOrigem, c.Descricao as DescConta,'
      'rd.favorecidodoc as favorecido,'
      
        'f.tipofavorecido, tf.descricao as desctipofav, rd.chequenominal,' +
        ' ct.descricao as DescContaDespesa, d.obs'
      'from retiradasdoc rd'
      'inner join retiradas r on rd.retirada = r.retirada'
      'inner join retiradasduplicatas rdp on rdp.retirada = r.retirada'
      'inner join Favorecidos f on rd.favorecidodoc = f.favorecido'
      
        'inner join FormasPagamento fp on rd.formapagamento = fp.formapag' +
        'amento'
      'inner join TiposOrigens t on r.tiporetirada = t.origem'
      'inner join Contas c on rd.Conta = c.Conta'
      
        'left join TiposFavorecido tf on f.tipofavorecido = tf.tipofavore' +
        'cido'
      'left join contasoperacao co on r.retirada = co.idgerador'
      'left join contas ct on co.conta = ct.conta'
      'left Join duplicatasapagar d on d.id = rdp.duplicata'
      'Where r.Data >= :DataI and r.Data <= :DataF and rd.Status < 70')
    Left = 407
    Top = 109
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
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    Left = 414
    Top = 218
    object C_ConsultaIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Origin = 'RETIRADASDOC.IDDOC'
      Required = True
    end
    object C_ConsultaRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADAS.RETIRADA'
      Required = True
    end
    object C_ConsultaTIPORETIRADA: TIntegerField
      FieldName = 'TIPORETIRADA'
      Origin = 'RETIRADAS.TIPORETIRADA'
    end
    object C_ConsultaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'RETIRADAS.DATA'
    end
    object C_ConsultaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'RETIRADASDOC.VENCIMENTO'
    end
    object C_ConsultaVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'RETIRADASDOC.VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaDESCFORMAPAG: TStringField
      FieldName = 'DESCFORMAPAG'
      Origin = 'FORMASPAGAMENTO.DESCFORMAPAG'
      Required = True
      Size = 50
    end
    object C_ConsultaDESCORIGEM: TStringField
      FieldName = 'DESCORIGEM'
      Origin = 'TIPOSORIGENS.DESCORIGEM'
      Size = 40
    end
    object C_ConsultaDESCCONTA: TStringField
      FieldName = 'DESCCONTA'
      Origin = 'CONTAS.DESCCONTA'
      Size = 50
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'RETIRADASDOC.FAVORECIDO'
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
      Origin = 'FAVORECIDOS.TIPOFAVORECIDO'
    end
    object C_ConsultaDESCTIPOFAV: TStringField
      FieldName = 'DESCTIPOFAV'
      Origin = 'TIPOSFAVORECIDO.DESCTIPOFAV'
    end
    object C_ConsultaCHEQUENOMINAL: TStringField
      FieldName = 'CHEQUENOMINAL'
      Origin = 'RETIRADASDOC.CHEQUENOMINAL'
      Size = 50
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ConsultaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'RETIRADAS.HISTORICO'
      Size = 80
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_ConsultaDATADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DATADIASEMANA'
      Size = 50
    end
    object C_ConsultaDESCCONTADESPESA: TStringField
      FieldName = 'DESCCONTADESPESA'
      Size = 50
    end
  end
  inherited ppmLayout: TTS_PopupMenu
    Left = 420
    Top = 43
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6292807407
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 632
    Top = 114
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Pagamentos no Per'#237'odo'
  end
end

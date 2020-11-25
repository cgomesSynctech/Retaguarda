inherited RptChequesACompensar: TRptChequesACompensar
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 201
      Caption = 'Cheque a Compensar'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Color = 15196656
      object TS_Label1: TTS_Label
        Left = 10
        Top = 4
        Width = 43
        Caption = 'Co&nta:'
        FocusControl = cmbConta
        FormatoTabela = False
        LinkToResult = 0
      end
      object edFav: TTS_EditFavorecido
        Left = 379
        Top = 2
        Width = 202
        Hint = 
          '#C'#243'digo => Pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'SSN:N'#250'mero SSN =' +
          '> Pesquisa pelo SSN. Ex: SSN:123366642'#13'EIN:N'#250'mero EIN => Pesquis' +
          'a pelo EIN. Ex: EIN:6719034663'
        Style.ButtonStyle = btsFlat
        TabOrder = 2
        StyleController = DMProjeto.esFornecedores
        OnChange = edFavChange
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
        TipoFavorecido = 2
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavSelecionou
        Height = 19
        ExistButtons = True
      end
      object cmbTipoFav: TTS_DBLookupTipoFav
        Left = 284
        Top = 1
        Width = 95
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi'#231#227'o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        StyleController = DMProjeto.esFornecedores
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 2
      end
      object cmbConta: TTS_PopupEdit
        Left = 55
        Top = 2
        Width = 218
        TabOrder = 0
        StyleController = DMProjeto.esFornecedores
        OnChange = cmbContaChange
        PopupFormBorderStyle = pbsSysPanel
        OnInitPopup = cmbContaInitPopup
        LookupSource = DMFinanceiro.C_ContasBcDS
        LookupKeyValue = 0
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
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
        'Valor;Sum;U')
      object dbgConsultaDATA: TdxDBGridDateColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaDESCTIPOFAV: TdxDBGridColumn
        Caption = 'Tipo Favorecido'
        HeaderAlignment = taCenter
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCTIPOFAV'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 241
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMCHEQUE'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaDESCCONTA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 168
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
        GroupIndex = 0
      end
      object dbgConsultaFORMAPAGAMENTO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMAPAGAMENTO'
      end
      object dbgConsultaIDDOC: TdxDBGridMaskColumn
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDDOC'
      end
      object dbgConsultaPrazo: TdxDBGridColumn
        Sorted = csUp
        Visible = False
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Prazo'
        GroupIndex = 1
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        Visible = False
        Width = 319
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        Visible = False
        Width = 192
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        Caption = 'Estado'
        Visible = False
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone 1'
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Caption = 'Fone 2'
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Caption = 'Fax'
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCELULAR: TdxDBGridMaskColumn
        Caption = 'Celular'
        Visible = False
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaCEP: TdxDBGridMaskColumn
        Caption = 'Zip'
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaEMAIL: TdxDBGridMaskColumn
        Caption = 'Email'
        Visible = False
        Width = 256
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn
        Caption = 'Cx.Postal'
        Visible = False
        Width = 162
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaCHEQUENOMINAL: TdxDBGridColumn
        Caption = 'Nominal a'
        Visible = False
        Width = 319
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHEQUENOMINAL'
      end
      object dbgConsultaDescOrigem: TdxDBGridColumn
        Caption = 'Origem'
        Visible = False
        Width = 247
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCORIGEM'
      end
      object dbgConsultaColumn24: TdxDBGridColumn
        Caption = 'C'#243'digo'
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
      Color = 15196656
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
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
      
        'SELECT rd.IDDoc, rd.valor, rd.numcheque, rd.vencimento, rd.retir' +
        'ada, r.TipoRetirada, rd.chequenominal, f.nome, fp.Descricao as F' +
        'ormaPagamento,  r.data, c.Descricao as DescConta,'
      
        'f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, f.celular, ' +
        'f.cep,          f.email,  f.CaixaPostal, f.tipofavorecido, f.fav' +
        'orecido, f.codigo,'
      't.Descricao as DescTipoFav, o.Descricao as DescOrigem'
      
        'FROM RetiradasDoc rd inner join Retiradas r on rd.Retirada = r.r' +
        'etirada'
      
        '        LEFT JOIN Favorecidos f ON rd.favorecidodoc = f.favoreci' +
        'do'
      
        '        LEFT JOIN TiposFavorecido t ON f.tipofavorecido = t.tipo' +
        'favorecido'
      
        '        INNER JOIN FormasPagamento fp on rd.formapagamento = fp.' +
        'formapagamento'
      '        INNER JOIN Contas c on rd.Conta = c.Conta'
      '        INNER JOIN TiposOrigens o on r.tiporetirada = o.origem'
      'WHERE rd.STATUS = 3 '
      '              and (rd.CONTA = :conta or :Todos = 0)'
      '              and (rd.favorecidodoc = :fav or :TodosFav = 0)'
      '              order by rd.conta, rd.vencimento')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Todos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fav'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TodosFav'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    OnCalcFields = C_ConsultaCalcFields
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaNUMCHEQUE: TIntegerField
      DisplayLabel = '# Cheque'
      FieldName = 'NUMCHEQUE'
    end
    object C_ConsultaVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaCHEQUENOMINAL: TStringField
      DisplayLabel = 'Cheque Nominal'
      FieldName = 'CHEQUENOMINAL'
      Size = 50
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaFORMAPAGAMENTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'FORMAPAGAMENTO'
      Required = True
      Size = 50
    end
    object C_ConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_ConsultaDESCCONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_ConsultaIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ConsultaPrazo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Prazo'
    end
    object C_ConsultaRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Required = True
    end
    object C_ConsultaTIPORETIRADA: TIntegerField
      FieldName = 'TIPORETIRADA'
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
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ConsultaDESCTIPOFAV: TStringField
      FieldName = 'DESCTIPOFAV'
    end
    object C_ConsultaDESCORIGEM: TStringField
      FieldName = 'DESCORIGEM'
      Size = 40
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_ConsultaDATADIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DATADIASEMANA'
      Size = 50
    end
    object C_ConsultaVENCIMENTODIASEMANA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VENCIMENTODIASEMANA'
      Size = 50
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Cheque a Compensar'
    OnRefresh = FormsComponentRefresh
    Left = 253
    Top = 232
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 503
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6255234028
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
end

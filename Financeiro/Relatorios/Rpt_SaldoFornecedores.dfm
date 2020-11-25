inherited RptSaldoFornecedores: TRptSaldoFornecedores
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 216
      Caption = 'Saldo de Fornecedores'
      Effect3D.ShadowedColor = 11775972
    end
  end
  inherited pnGrid: TPanel
    inherited pnDados: TTS_Panel
      Height = 23
      Color = 15196656
      object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
        Left = 16
        Top = 1
        Width = 92
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
      object edFavorecido: TTS_EditFavorecido
        Left = 109
        Top = 2
        Width = 256
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
          end>
        LookupTipoFav = TS_DBLookupTipoFav1
        SelecionarVarios = False
        TipoFavorecido = 2
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
      object ckbEndereco: TTS_CheckBox
        Left = 585
        Top = 2
        Width = 76
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        Caption = 'Endere'#231'o'
        StyleController = DMProjeto.esClientes
        OnChange = ckbEnderecoChange
        DisableEdit = False
        Height = 21
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 23
      Height = 385
      KeyField = 'FAVORECIDO'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Credito'
              SummaryFormat = '>Credito='
              SummaryType = cstSum
            end
            item
              SummaryField = 'ContasAPagar'
              SummaryFormat = '>ContasAPagar='
              SummaryType = cstSum
            end
            item
              SummaryField = 'ChequePre'
              SummaryFormat = '>ChequePre='
              SummaryType = cstSum
            end
            item
              SummaryField = 'Saldo'
              SummaryFormat = '>Saldo=###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      PreviewFieldName = 'Preview'
      OnCustomDrawCell = dbgConsultaCustomDrawCell
      TS_SelectedColumn = 'NOME'
      TS_SummaryFields.Strings = (
        'Credito;Sum'
        'ContasAPagar;Sum'
        'ChequePre;Sum'
        'Saldo;Sum')
      object dbgConsultaFAVORECIDO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAVORECIDO'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Nome'
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaCREDITO: TdxDBGridMaskColumn
        Caption = 'Cr'#233'dito (+)'
        HeaderAlignment = taCenter
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITO'
        SummaryFooterType = cstSum
      end
      object dbgConsultaCONTASAPAGAR: TdxDBGridMaskColumn
        Caption = 'A Pagar (-)'
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTASAPAGAR'
        SummaryFooterType = cstSum
      end
      object dbgConsultaCHEQUEPRE: TdxDBGridMaskColumn
        Caption = 'A Compensar (-)'
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHEQUEPRE'
        SummaryFooterType = cstSum
      end
      object dbgConsultaSaldo: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Saldo'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        Visible = False
        Width = 254
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        Visible = False
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaUF: TdxDBGridColumn
        Caption = 'Estado'
        Visible = False
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaCEP: TdxDBGridColumn
        Caption = 'Zip'
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CEP'
      end
      object dbgConsultaCaixaPostal: TdxDBGridColumn
        Caption = 'Cx. Postal'
        Visible = False
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAIXAPOSTAL'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone 1'
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaFONE2: TdxDBGridMaskColumn
        Caption = 'Fone 2'
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE2'
      end
      object dbgConsultaFAX: TdxDBGridMaskColumn
        Caption = 'Fax'
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FAX'
      end
      object dbgConsultaCelular: TdxDBGridColumn
        Caption = 'Celular'
        Visible = False
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CELULAR'
      end
      object dbgConsultaEmail: TdxDBGridColumn
        Caption = 'Email'
        Visible = False
        Width = 228
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMAIL'
      end
      object dbgConsultaColumn18: TdxDBGridColumn
        Caption = 'C'#243'digo'
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
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
      
        'Select f.favorecido, f.credito, f.Nome, f.TipoFavorecido, f.codi' +
        'go,'
      
        '           f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, ' +
        'f.celular, f.cep,                  f.email,  f.CaixaPostal, '
      '           (select sum(d.faltapagar) from'
      '           duplicatasapagar d '
      '           where d.fornecedor = f.favorecido and d.status > 0'
      '                     and (d.faltapagar) > 0) as ContasAPagar,'
      ''
      '           (select sum(rd.valor) from retiradasdoc rd '
      '            where rd.Status = 3 and'
      
        '                       rd.favorecidodoc = f.favorecido) as Chequ' +
        'ePre'
      'From Favorecidos f'
      
        'Where (f.Favorecido = :Favorecido OR :Todos = 0) and f.desativad' +
        'o = '#39'N'#39
      'Order by f.Nome')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Todos'
        ParamType = ptUnknown
      end>
  end
  inherited C_Consulta: TClientDataSet
    Filter = 'Saldo <> 0'
    Filtered = True
    OnCalcFields = C_ConsultaCalcFields
    Top = 226
    object C_ConsultaSaldo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Saldo'
      DisplayFormat = '###,###,##0.00'
    end
    object C_ConsultaPreview: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Preview'
      Size = 200
    end
    object C_ConsultaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_ConsultaCREDITO: TBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
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
    object C_ConsultaCONTASAPAGAR: TBCDField
      FieldName = 'CONTASAPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaCHEQUEPRE: TBCDField
      FieldName = 'CHEQUEPRE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Saldo de Fornecedores'
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 489
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 37242.6248900926
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 592
    Top = 128
  end
end

inherited DlgLerRetorno: TDlgLerRetorno
  Left = 238
  Top = 239
  Width = 601
  Height = 196
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 467
    Height = 115
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 81
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Ler Arquivo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
        0555555555777777755555555555555555555555555555555555}
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 585
    Gradient.ColorStart = 13223591
    inherited lbEstadoForm: TTS_Label
      Width = 370
      Caption = 
        'Ler o arquivo de retorno do banco, com os boletos processados, e' +
        ' dar baixa.'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 557
    end
    inherited lbCaption: TdxfLabel
      Width = 253
      AutoSize = True
      Caption = 'Receber Retorno de Banco'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnDados: TTS_Panel
    Width = 467
    Height = 115
    Color = 15724519
    object ZRelatorio: TZReport
      Left = 408
      Top = 24
      Width = 80
      Height = 60
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Options.LineSpacing = zrd16
      Options.AutoHeight = False
      Options.Font.Condensed = True
      Options.PageFrom = 1
      Options.PageTo = 1
      PrintIfEmpty = True
      Minimized = True
      object zBandaHeader: TZRBand
        Left = 2
        Top = 11
        Width = 77
        Height = 1
        Stretch = True
        BandType = zbtHeader
        object lbRelatorio: TZRLabel
          Left = 0
          Top = 0
          Width = 77
          Height = 1
          AutoSize = zasHeight
          WordWrap = True
        end
      end
    end
    object Barra: TdxfProgressBar
      Left = 24
      Top = 56
      Width = 425
      Height = 16
      BarBevelOuter = bvNone
      BeginColor = clRed
      BevelOuter = bvLowered
      EndColor = clBlue
      Max = 100
      Min = 0
      Orientation = orHorizontal
      Position = 0
      ShowTextStyle = stsPercent
      Step = 10
      Style = sExRectangles
      TabOrder = 1
      TransparentGlyph = True
      Visible = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 542
    Top = 150
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 552
    Top = 98
  end
  inherited Beep: TBTBeeper
    Left = 504
    Top = 88
  end
  inherited FormStorage: TFormStorage
    Left = 488
    Top = 184
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Receber Retorno de Banco'
    Left = 546
    Top = 194
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 495
    Top = 130
  end
  object gbRetorno: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 376
    Top = 48
  end
  object OpenDlg: TOpenDialog
    Filter = 
      'Todos os Arquivos (*.*)|*.*|Arquivos Texto (*.txt)|*.txt|Arquivo' +
      's de Retorno (*.ret)|*.ret'
    Title = 'Receber Retorno do Banco'
    Left = 328
    Top = 8
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 56
    Top = 48
  end
  object C_Titulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Titulos'
    Left = 184
    Top = 16
    object C_TitulosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_TitulosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_TitulosVALOR_TEMP: TBCDField
      FieldName = 'VALOR_TEMP'
      Precision = 18
      Size = 2
    end
    object C_TitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_TitulosCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_TitulosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TitulosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
    end
    object C_TitulosFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_TitulosFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_TitulosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TitulosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_TitulosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_TitulosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TitulosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_TitulosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_TitulosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_TitulosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object C_TitulosNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
    end
    object C_TitulosLOCALDEPAGAMENTO: TStringField
      FieldName = 'LOCALDEPAGAMENTO'
      Size = 50
    end
    object C_TitulosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object C_TitulosESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 10
    end
    object C_TitulosQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object C_TitulosACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object C_TitulosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object C_TitulosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object C_TitulosINSTRUCOES_TEMP: TStringField
      FieldName = 'INSTRUCOES_TEMP'
      Size = 2000
    end
    object C_TitulosNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 50
    end
    object C_TitulosJUROSINSTRUCOES: TFloatField
      FieldName = 'JUROSINSTRUCOES'
    end
    object C_TitulosCOBRAREMISSAO: TStringField
      FieldName = 'COBRAREMISSAO'
      Size = 1
    end
    object C_TitulosTARIFAEMISSAO: TBCDField
      FieldName = 'TARIFAEMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TitulosPREIMPRESSO: TStringField
      FieldName = 'PREIMPRESSO'
      Size = 1
    end
    object C_TitulosDIGITOCODIGO: TStringField
      FieldName = 'DIGITOCODIGO'
      Size = 1
    end
    object C_TitulosNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 15
    end
    object C_TitulosCODBANCO: TStringField
      FieldName = 'CODBANCO'
    end
    object C_TitulosDESCBANCO: TStringField
      FieldName = 'DESCBANCO'
      Size = 50
    end
    object C_TitulosLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_TitulosCONTA: TIntegerField
      FieldName = 'CONTA'
    end
  end
  object Q_Titulos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.id, t.titulo, t.valor as valor_temp, t.vencimento, t.co' +
        'mpetencia, t.cliente, f.codigo as codcliente, f.fone1, f.fone2, ' +
        'f.nome, f.endereco, f.bairro, f.cidade, f.uf, f.cep, f.cpf_cnpj,' +
        ' cart.carteira, cart.numerocarteira, cart.localdepagamento, cart' +
        '.especie, cart.especiedoc, cart.quantidade, cart.aceite, cart.ag' +
        'encia, cart.codigo, cart.instrucoes as instrucoes_temp, cart.nos' +
        'sonumero,cart.jurosinstrucoes, cart.cobraremissao, cart.tarifaem' +
        'issao, cart.preimpresso, cart.digitocodigo, cnt.numconta, cnt.co' +
        'nta, b.codigo as codbanco, b.nome as descbanco, b.logotipo'
      'from titulosareceber t'
      'left join favorecidos f on t.cliente = f.favorecido'
      'left join tiposcobranca tc  on t.tipocobranca = tc.tipocobranca'
      'left join carteiras cart on t.carteira = cart.carteira'
      'left join contas cnt on cart.conta = cnt.conta'
      'left join favorecidos b on b.favorecido = cnt.banco'
      'where t.id = :id')
    Left = 184
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object P_Titulos: TDataSetProvider
    DataSet = Q_Titulos
    Constraints = True
    Left = 184
    Top = 112
  end
end

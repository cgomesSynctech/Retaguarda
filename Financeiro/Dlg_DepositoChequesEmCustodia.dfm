inherited DlgDepositoChequesEmCustodia: TDlgDepositoChequesEmCustodia
  Left = 26
  Top = 107
  Caption = 'Fazer Depósito de Cheques em Custódia'
  ClientHeight = 334
  ClientWidth = 715
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TTS_BitBtn
    Left = 759
    Top = 454
  end
  inherited pnNavigator: TTS_Panel
    Left = 597
    Height = 334
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 300
    end
  end
  inherited pnDados: TTS_Panel
    Width = 597
    Height = 334
    Color = 15921906
    object TS_Shape6: TTS_Shape
      Left = 3
      Top = 311
      Width = 309
      Height = 21
      Brush.Color = 15532030
      Transparent = False
    end
    object TS_Shape5: TTS_Shape
      Left = 516
      Top = 204
      Width = 87
      Height = 19
      Brush.Color = 16771022
      Transparent = False
    end
    object TS_Shape4: TTS_Shape
      Left = 325
      Top = 204
      Width = 192
      Height = 19
      Brush.Color = 16771022
      Transparent = False
    end
    object TS_Shape3: TTS_Shape
      Left = 516
      Top = 167
      Width = 87
      Height = 38
      Transparent = False
    end
    object TS_Shape2: TTS_Shape
      Left = 325
      Top = 167
      Width = 192
      Height = 38
      Transparent = False
    end
    object Label2: TTS_Label
      Left = 365
      Top = 242
      Width = 26
      Height = 13
      Caption = 'Data:'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      LinkToResult = 0
    end
    object Label1: TTS_Label
      Left = 321
      Top = 265
      Width = 70
      Height = 13
      Cursor = crHandPoint
      Caption = 'Conta-Banco:'
      FocusControl = cmbContaBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clActiveCaption
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label1Click
      LinkTo = 'FrmContas'
      LinkToResult = 0
    end
    object Label3: TTS_Label
      Left = 316
      Top = 107
      Width = 113
      Height = 13
      Caption = '&Histórico do Depósito:'
      FocusControl = dfHistDep
      LinkToResult = 0
    end
    object Label7: TTS_Label
      Tag = 10
      Left = 319
      Top = 69
      Width = 105
      Height = 13
      Caption = 'Valor em Dinheiro:'
      Enabled = False
      FocusControl = dbDinheiro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      LinkToResult = 0
    end
    object Label9: TTS_Label
      Tag = 10
      Left = 326
      Top = 30
      Width = 98
      Height = 13
      Cursor = crHandPoint
      Caption = 'Conta de Origem:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      LinkToResult = 0
    end
    object TS_Label1: TTS_Label
      Tag = 10
      Left = 318
      Top = 50
      Width = 106
      Height = 13
      Caption = 'Saldo em Dinheiro:'
      Enabled = False
      FocusControl = TS_DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      LinkToResult = 0
    end
    object TS_Label5: TTS_Label
      Left = 347
      Top = 171
      Width = 128
      Height = 17
      Caption = 'Valor Total em Cheque:'
      LinkToResult = 0
    end
    object TS_Label6: TTS_Label
      Left = 347
      Top = 187
      Width = 128
      Height = 17
      Caption = 'Valor Total em Dinheiro:'
      LinkToResult = 0
    end
    object TS_Shape1: TTS_Shape
      Left = 325
      Top = 149
      Width = 278
      Height = 19
      Brush.Color = 12615680
      Transparent = False
    end
    object TS_Label7: TTS_Label
      Left = 327
      Top = 151
      Width = 275
      Height = 16
      Alignment = taCenter
      Caption = 'Resumo do Depósito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      LinkToResult = 0
    end
    object TS_Label8: TTS_Label
      Left = 330
      Top = 206
      Width = 146
      Caption = 'Valor Total a Depositar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      LinkToResult = 0
    end
    object lbTotalDinheiro: TTS_Label
      Left = 525
      Top = 186
      Width = 72
      Height = 17
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      LinkToResult = 0
    end
    object lbTotalDepositar: TTS_Label
      Left = 526
      Top = 207
      Width = 72
      Height = 17
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      LinkToResult = 0
    end
    object lbQtdCheques: TTS_Label
      Left = 280
      Top = 315
      Width = 25
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      LinkToResult = 0
    end
    object TS_Label4: TTS_Label
      Left = 196
      Top = 315
      Width = 72
      Height = 13
      Caption = 'Quantidade:'
      LinkToResult = 0
    end
    object TS_Label3: TTS_Label
      Left = 6
      Top = 315
      Width = 121
      Caption = 'Valor Total dos Cheques:'
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 5
      Top = 6
      Width = 260
      Alignment = taLeftJustify
      Caption = '&Selecione os Cheques para Custódia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      LinkToResult = 0
    end
    object TS_Bevel2: TTS_Bevel
      Left = 316
      Top = 4
      Width = 2
      Height = 327
    end
    object dbtTotal: TTS_DBText
      Left = 128
      Top = 315
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
    end
    object dbtChequesSel: TTS_DBText
      Left = 531
      Top = 168
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      AllowEditOnClick = False
      EditFont.Charset = DEFAULT_CHARSET
      EditFont.Color = clWindowText
      EditFont.Height = -11
      EditFont.Name = 'MS Sans Serif'
      EditFont.Style = []
    end
    object TS_Label9: TTS_Label
      Left = 432
      Top = 30
      Width = 97
      Alignment = taLeftJustify
      Caption = 'Caixa Principal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      LinkToResult = 0
    end
    object DBEdit2: TTS_DBEdit
      Left = 395
      Top = 241
      Width = 75
      DataField = 'Data'
      DataSource = Q_OperacoesDS
      TabOrder = 0
      Transparent = False
    end
    object cmbContaBanco: TTS_DBLookupComboBox
      Left = 395
      Top = 263
      Width = 207
      Height = 19
      Hint = 'Banco que será depositado o Cheque.'
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CONTA'
      ListField = 'Descricao'
      ListSource = Q_ContasDS
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      SecondButton = False
      SecondButtonType = bfAccept
      Transparent = False
    end
    object dfHistDep: TTS_DBEdit
      Left = 325
      Top = 122
      Width = 278
      Height = 18
      DataField = 'HISTORICO'
      DataSource = Q_OperacoesDS
      TabOrder = 2
      Transparent = False
    end
    object dbDinheiro: TTS_DBEdit
      Tag = 10
      Left = 433
      Top = 68
      Width = 75
      DataField = 'ValorDinheiro'
      DataSource = Q_OperacoesDS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = dbDinheiroChange
      OnKeyPress = dbDinheiroKeyPress
      Transparent = False
    end
    object TS_DBEdit1: TTS_DBEdit
      Tag = 10
      Left = 433
      Top = 49
      Width = 75
      TabStop = False
      Color = clBtnFace
      DataField = 'Saldo'
      DataSource = Q_OperacoesDS
      Enabled = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = dbDinheiroKeyPress
      Transparent = False
    end
    object ckDinheiro: TTS_CheckBox
      Left = 322
      Top = 5
      Width = 152
      Height = 16
      Caption = 'Depositar em Dinheiro'
      TabOrder = 5
      OnClick = ckDinheiroClick
      Transparent = True
    end
    object DBCheques: TTS_CDBGrid
      Left = 3
      Top = 23
      Width = 309
      Height = 290
      Hint = 'Selecione os cheques para efetuar o depósito.'
      Color = 15532030
      DataSource = Q_ChequesDepositoDS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = TS_PopupMenu1
      ShowHint = True
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleOrder = True
      TotalsAndControls.Strings = (
        'Valor;dbtTotal;dbtChequesSel')
      ControlForQtdGeral = lbQtdCheques
      DataKeys = 'IDDoc'
      ManualSettings = False
      LikeString = False
      SolidColLine = True
      SelectionColor = clYellow
      SelectionFont.Charset = DEFAULT_CHARSET
      SelectionFont.Color = clWindowText
      SelectionFont.Height = -11
      SelectionFont.Name = 'MS Sans Serif'
      SelectionFont.Style = []
      OnAfterSelection = DBChequesAfterSelection
      OnEspecialSelection = DBChequesEspecialSelection
      SelectedColumn = 'NUMCHEQUE'
      OnlyMarkWhenSelected = False
      AutoAlingTotals = False
      AllowDelete = False
      DisableFunctionMenu = False
      ID = 0
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMCHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Nº Cheque'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEVENDEDOR'
          Title.Caption = 'Vendedor'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEBANCO'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCSTATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCLOCAL'
          Title.Alignment = taCenter
          Title.Caption = 'Local do Cheque'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITULARCHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Titular do Cheque'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 537
    Top = 301
  end
  inherited DlgMsg: TDlgMsg
    Left = 534
    Top = 230
  end
  object TS_PopupMenu1: TTS_PopupMenu
    Left = 128
    Top = 104
    object SignificadodasCores1: TMenuItem
      Caption = 'Significado das Cores...'
      OnClick = SignificadodasCores1Click
    end
  end
  object Q_Operacoes: TIBQuery
    Tag = 100
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'Select o.*, o.ContaDestino as OldConta, ValorDinheiro * 0  as Sa' +
        'ldo'
      'from OperacoesFinanceiras o'
      'Where TipoOperacao = 3 and Operacao is null ')
    UpdateObject = U_Operacoes
    Left = 40
    Top = 7
  end
  object Q_OperacoesDS: TDataSource
    Tag = 100
    DataSet = C_Operacoes
    Left = 40
    Top = 58
  end
  object U_Operacoes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from OperacoesTitulos '
      'where'
      '  OPERACAO = :OPERACAO')
    ModifySQL.Strings = (
      'update OperacoesTitulos'
      'set'
      '  OPERACAO = :OPERACAO,'
      '  DATA = :DATA,'
      '  VALORBRUTO = :VALORBRUTO,'
      '  NATUREZA = :NATUREZA,'
      '  CONTA = :CONTA,'
      '  HISTORICORET = :HISTORICORET,'
      '  HISTORICODEP = :HISTORICODEP,'
      '  RECEBIDO = :RECEBIDO,'
      '  VALORRECEBIDO = :VALORRECEBIDO,'
      '  VALORDINHEIRO = :VALORDINHEIRO,'
      '  CONTAORIGEMDIN = :CONTAORIGEMDIN'
      'where'
      '  OPERACAO = :OLD_OPERACAO')
    InsertSQL.Strings = (
      'insert into OperacoesTitulos'
      
        '  (OPERACAO, DATA, VALORBRUTO, NATUREZA, CONTA, HISTORICORET, HI' +
        'STORICODEP, '
      '   RECEBIDO, VALORRECEBIDO, VALORDINHEIRO, CONTAORIGEMDIN)'
      'values'
      
        '  (:OPERACAO, :DATA, :VALORBRUTO, :NATUREZA, :CONTA, :HISTORICOR' +
        'ET, :HISTORICODEP, '
      '   :RECEBIDO, :VALORRECEBIDO, :VALORDINHEIRO, :CONTAORIGEMDIN)')
    DeleteSQL.Strings = (
      'delete from OperacoesTitulos'
      'where'
      '  OPERACAO = :OLD_OPERACAO')
    Left = 39
    Top = 111
  end
  object Q_Naturezas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Naturezas'
      'Where Desativado = '#39'N'#39
      'order by descricao')
    Left = 315
    Top = 58
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Contas'
      'where Inativa = '#39'N'#39' and TipoConta <> '#39'C'#39
      'order by TipoConta, Descricao'
      '')
    Left = 315
    Top = 7
    object Q_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object Q_ContasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
  end
  object Q_ChequesDeposito: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select dd.*, dd.localtitulo as DescLocal, sd.Descricao as DescSt' +
        'atus, f.Nome, b.Nome as NomeBanco, d.Favorecido'
      '       '
      
        'From  (((DepositosDoc dd INNER JOIN StatusDoc sd ON dd.Status = ' +
        'sd.Status)'
      '      INNER JOIN Depositos d ON d.Deposito = dd.Deposito)'
      '      INNER JOIN Favorecidos f ON d.Favorecido = f.Favorecido)'
      '      LEFT  JOIN Favorecidos b ON b.Favorecido = dd.Banco'
      ''
      'Where dd.Status < 70'
      'and   dd.ForaDaEmpresa = '#39'N'#39
      'and   dd.Vencimento <= :Hoje'
      'and   sd.Idioma = :Idioma'
      'order by dd.Vencimento'
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 172
    Top = 9
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Hoje'
        ParamType = ptUnknown
        Value = 36399d
      end
      item
        DataType = ftInteger
        Name = 'Idioma'
        ParamType = ptUnknown
      end>
  end
  object Q_ChequesDepositoDS: TDataSource
    DataSet = C_ChequesDeposito
    Left = 170
    Top = 57
  end
  object C_ChequesDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ChequesDepositoProvider'
    Left = 170
    Top = 104
    object C_ChequesDepositoIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_ChequesDepositoDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object C_ChequesDepositoFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_ChequesDepositoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object C_ChequesDepositoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ChequesDepositoSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_ChequesDepositoLOCALTITULO: TStringField
      FieldName = 'LOCALTITULO'
      Size = 50
    end
    object C_ChequesDepositoFORADAEMPRESA: TStringField
      FieldName = 'FORADAEMPRESA'
      Size = 1
    end
    object C_ChequesDepositoTITULARCHEQUE: TStringField
      FieldName = 'TITULARCHEQUE'
      Size = 50
    end
    object C_ChequesDepositoAVISTA: TStringField
      FieldName = 'AVISTA'
      Size = 1
    end
    object C_ChequesDepositoCONTAATUAL: TIntegerField
      FieldName = 'CONTAATUAL'
    end
    object C_ChequesDepositoDATACANCELAMENTO: TDateField
      FieldName = 'DATACANCELAMENTO'
    end
    object C_ChequesDepositoMOTIVOCANCELAMENTO: TStringField
      FieldName = 'MOTIVOCANCELAMENTO'
      Size = 50
    end
    object C_ChequesDepositoFUNCCANCELAMENTO: TIntegerField
      FieldName = 'FUNCCANCELAMENTO'
    end
    object C_ChequesDepositoDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 50
    end
    object C_ChequesDepositoDESCSTATUS: TStringField
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object C_ChequesDepositoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ChequesDepositoNOMEBANCO: TStringField
      FieldName = 'NOMEBANCO'
      Size = 25
    end
    object C_ChequesDepositoVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesDepositoBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_ChequesDepositoNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object C_ChequesDepositoTAXACARTAO: TBCDField
      FieldName = 'TAXACARTAO'
      Precision = 18
      Size = 2
    end
    object C_ChequesDepositoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
  end
  object Q_ChequesDepositoProvider: TDataSetProvider
    DataSet = Q_ChequesDeposito
    Constraints = True
    Options = [poAllowCommandText]
    Left = 170
    Top = 152
  end
  object C_Operacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_OperacoesProvider'
    OnNewRecord = C_OperacoesNewRecord
    Left = 40
    Top = 168
    object C_OperacoesOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object C_OperacoesDATA: TDateField
      FieldName = 'DATA'
      EditMask = '##/##/####;1; '
    end
    object C_OperacoesFLOATING: TStringField
      FieldName = 'FLOATING'
      Size = 1
    end
    object C_OperacoesTIPOOPERACAO: TIntegerField
      FieldName = 'TIPOOPERACAO'
    end
    object C_OperacoesRECEBIDO: TDateField
      FieldName = 'RECEBIDO'
    end
    object C_OperacoesOLDCONTA: TIntegerField
      FieldName = 'OLDCONTA'
    end
    object C_OperacoesFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_OperacoesVALOROPERACAO: TBCDField
      FieldName = 'VALOROPERACAO'
      Precision = 18
      Size = 2
    end
    object C_OperacoesCONTAORIGEM: TIntegerField
      FieldName = 'CONTAORIGEM'
    end
    object C_OperacoesCONTADESTINO: TIntegerField
      FieldName = 'CONTADESTINO'
    end
    object C_OperacoesHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 80
    end
    object C_OperacoesPERCENTUALJUROS: TBCDField
      FieldName = 'PERCENTUALJUROS'
      Precision = 18
      Size = 2
    end
    object C_OperacoesVALORJUROS: TBCDField
      FieldName = 'VALORJUROS'
      Precision = 18
      Size = 2
    end
    object C_OperacoesVALORRECEBIDO: TBCDField
      FieldName = 'VALORRECEBIDO'
      Precision = 18
      Size = 2
    end
    object C_OperacoesTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object C_OperacoesVALORDINHEIRO: TBCDField
      FieldName = 'VALORDINHEIRO'
      Precision = 18
      Size = 2
    end
    object C_OperacoesJUROSSOBREMONTANTE: TStringField
      FieldName = 'JUROSSOBREMONTANTE'
      Size = 1
    end
    object C_OperacoesSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object Q_OperacoesProvider: TDataSetProvider
    DataSet = Q_Operacoes
    Constraints = True
    Options = [poAllowCommandText]
    Left = 40
    Top = 216
  end
  object Q_ContasDS: TDataSource
    DataSet = Q_Contas
    Left = 368
    Top = 8
  end
end

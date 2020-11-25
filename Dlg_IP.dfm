inherited DlgIP: TDlgIP
  Left = -4
  Top = -4
  Width = 1288
  Height = 732
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 1278
    Width = 2
    Height = 662
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 628
      Width = 0
    end
    inherited btComando2: TTS_SpeedButton
      Width = 0
    end
    inherited btComando1: TTS_SpeedButton
      Width = 0
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 0
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 0
      Caption = 'Atual'
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 0
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1280
    Gradient.ColorStart = 11911142
    inherited lbEstadoForm: TTS_Label
      Left = 57
      Top = 28
      Width = 3
      Caption = ''
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1244
    end
    inherited lbCaption: TdxfLabel
      Left = 0
      Top = 0
      Width = 1280
      Align = alTop
      AutoSize = True
      Caption = 'Boletos'
      Visible = False
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 1278
    Height = 662
    Color = 14542583
    object WebBrowser: TWebBrowser
      Left = 16
      Top = 17
      Width = 393
      Height = 136
      TabOrder = 0
      ControlData = {
        4C0000009E2800000E0E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnIP: TPanel
      Left = 16
      Top = 16
      Width = 393
      Height = 137
      BevelOuter = bvNone
      Caption = 'IP'
      Color = 14542583
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object web1: TWebBrowser
      Left = 0
      Top = 0
      Width = 1281
      Height = 665
      TabOrder = 2
      ControlData = {
        4C00000065840000BB4400000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 104
    Top = 56
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 368
    Top = 163
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 270
    Top = 48
  end
  inherited Beep: TBTBeeper
    Left = 62
    Top = 54
  end
  inherited FormStorage: TFormStorage
    Left = 332
    Top = 76
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Boletos'
    Left = 186
    Top = 50
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 257
    Top = 150
  end
  object Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from Favorecidos'
      'Where Favorecido = -1')
    UpdateObject = U_Tabela
    Left = 621
    Top = 116
  end
  object U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Favorecidos '
      'where'
      '  FAVORECIDO = :FAVORECIDO')
    ModifySQL.Strings = (
      'update Favorecidos'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  RAZAO = :RAZAO,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  CAIXAPOSTAL = :CAIXAPOSTAL,'
      '  PAIS = :PAIS,'
      '  FONE1 = :FONE1,'
      '  FONE2 = :FONE2,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  CONTATO = :CONTATO,'
      '  EMAIL = :EMAIL,'
      '  TIPOFAVORECIDO = :TIPOFAVORECIDO,'
      '  TIPOATIVIDADE = :TIPOATIVIDADE,'
      '  EIN = :EIN,'
      '  SSN = :SSN,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  SITE = :SITE,'
      '  OBS = :OBS,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  LOGOTIPO = :LOGOTIPO,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  INSCRICAO_EST = :INSCRICAO_EST,'
      '  BAIRRO = :BAIRRO,'
      '  TIPOEMPRESA = :TIPOEMPRESA,'
      '   INSCRICAO_MUN = :INSCRICAO_MUN,'
      '   MUNICIPIO = :MUNICIPIO,'
      '   PESSOA_FJ = :PESSOA_FJ,'
      '   NRO = :NRO'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    InsertSQL.Strings = (
      'insert into Favorecidos'
      '  (FAVORECIDO, CODIGO, NOME, RAZAO, ENDERECO, CIDADE, UF, CEP, '
      'CAIXAPOSTAL, '
      
        '   PAIS, FONE1, FONE2, FAX, CELULAR, CONTATO, EMAIL, TIPOFAVOREC' +
        'IDO, '
      'TIPOATIVIDADE, '
      
        '   EIN, SSN, DATACADASTRO, SITE, OBS, IMPORTACAO, LOGOTIPO, CPF_' +
        'CNPJ, '
      'INSCRICAO_EST, BAIRRO,TIPOEMPRESA, INSCRICAO_MUN,    MUNICIPIO, '
      'PESSOA_FJ, NRO)'
      'values'
      
        '  (:FAVORECIDO, :CODIGO, :NOME, :RAZAO, :ENDERECO, :CIDADE, :UF,' +
        ' :CEP, '
      
        '   :CAIXAPOSTAL, :PAIS, :FONE1, :FONE2, :FAX, :CELULAR, :CONTATO' +
        ', :EMAIL, '
      
        '   :TIPOFAVORECIDO, :TIPOATIVIDADE, :EIN, :SSN, :DATACADASTRO, :' +
        'SITE, '
      ':OBS,  :IMPORTACAO, :LOGOTIPO, :CPF_CNPJ, :INSCRICAO_EST, '
      ':BAIRRO,:TIPOEMPRESA, :INSCRICAO_MUN,   :MUNICIPIO, :PESSOA_FJ, '
      ':NRO)')
    DeleteSQL.Strings = (
      'delete from Favorecidos'
      'where'
      '  FAVORECIDO = :OLD_FAVORECIDO')
    Left = 622
    Top = 165
  end
  object P_Tabela: TDataSetProvider
    DataSet = Q_Tabela
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 620
    Top = 216
  end
  object C_Tabela: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tabela'
    Left = 623
    Top = 268
    object C_Tabela_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
  end
end

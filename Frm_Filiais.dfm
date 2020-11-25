inherited FrmFiliais: TFrmFiliais
  Left = 291
  Top = 216
  Height = 362
  Caption = 'Company'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 285
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 251
    end
  end
  inherited pnDados: TTS_Panel
    Height = 285
    inherited Grid: TTS_QDBGrid
      Height = 283
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 283
    end
    inherited sbDados: TTS_Panel
      Height = 283
      Color = 14608375
      object TS_Label1: TTS_Label
        Left = 20
        Top = 42
        Width = 65
        Caption = 'Nome:'
        FocusControl = dfNome
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 20
        Top = 66
        Width = 65
        Caption = 'Raz'#227'o:'
        FocusControl = dfRazao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 20
        Top = 18
        Width = 65
        Caption = 'CNPJ:'
        FocusControl = dfCNPJ
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 20
        Top = 90
        Width = 65
        Caption = 'Endere'#231'o:'
        FocusControl = dfEndereco
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 20
        Top = 114
        Width = 65
        Caption = 'Bairro:'
        FocusControl = dfBairro
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 20
        Top = 138
        Width = 65
        Caption = 'Cidade:'
        FocusControl = dfCidade
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 20
        Top = 162
        Width = 65
        Caption = 'UF:'
        FocusControl = dfUF
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label8: TTS_Label
        Left = 20
        Top = 186
        Width = 65
        Caption = 'Telefone:'
        FocusControl = dfTelefone
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label9: TTS_Label
        Left = 20
        Top = 210
        Width = 65
        Caption = 'Fax:'
        FocusControl = dfFax
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = 20
        Top = 234
        Width = 65
        Caption = 'Email:'
        FocusControl = dfEmail
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfCNPJ: TTS_DBMaskEdit
        Left = 88
        Top = 16
        Width = 128
        TabOrder = 0
        DataField = 'CPF_CNPJ'
        DataSource = DMFiliais.C_TabelaDS
        EditMask = '99.999.999/9999-99;0; '
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esCompany
        Height = 19
        StoredValues = 4
      end
      object dfNome: TTS_DBEdit
        Left = 88
        Top = 40
        Width = 273
        TabOrder = 1
        DataField = 'NOME'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfRazao: TTS_DBEdit
        Left = 88
        Top = 64
        Width = 273
        TabOrder = 2
        DataField = 'RAZAO'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfEndereco: TTS_DBEdit
        Left = 88
        Top = 88
        Width = 273
        TabOrder = 3
        DataField = 'ENDERECO'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfBairro: TTS_DBEdit
        Left = 88
        Top = 112
        Width = 129
        TabOrder = 4
        DataField = 'BAIRRO'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfCidade: TTS_DBEdit
        Left = 88
        Top = 136
        Width = 129
        TabOrder = 5
        DataField = 'CIDADE'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfUF: TTS_DBEdit
        Left = 88
        Top = 160
        Width = 25
        TabOrder = 6
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfTelefone: TTS_DBEdit
        Left = 88
        Top = 184
        Width = 97
        TabOrder = 7
        DataField = 'FONE1'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfFax: TTS_DBEdit
        Left = 88
        Top = 208
        Width = 97
        TabOrder = 8
        DataField = 'FAX'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
      object dfEmail: TTS_DBEdit
        Left = 88
        Top = 232
        Width = 273
        TabOrder = 9
        CharCase = ecLowerCase
        DataField = 'EMAIL'
        DataSource = DMFiliais.C_TabelaDS
        StyleController = DMProjeto.esCompany
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11388903
    inherited lbCaption: TdxfLabel
      Width = 56
      Caption = 'Filiais'
      Effect3D.ShadowedColor = 11388903
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 199
    Top = 292
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 314
    Top = 227
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msCompany
    CamposObrigatorios.Strings = (
      'dfCNPJ'
      'dfNome')
    BarEndColor = 11388903
    CaptionShadow = 11388903
    FormColor = 14608375
    Modulo = 'Company'
    Caption = 'Filiais'
    OnRefresh = FormComponentRefresh
    Left = 250
    Top = 180
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 395
    Top = 252
  end
  inherited FormStorage: TFormStorage
    Left = 320
    Top = 136
  end
end

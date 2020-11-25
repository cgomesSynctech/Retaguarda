inherited DlgAlterarConta: TDlgAlterarConta
  Left = 199
  Top = 153
  Width = 457
  Height = 187
  Caption = 'Financeiro'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 331
    Height = 110
    Color = 15724519
    object lblTexto: TTS_Label
      Left = 19
      Top = 12
      Width = 302
      Height = 13
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label1: TTS_Label
      Left = 42
      Top = 46
      Width = 103
      Caption = 'Alterar para a Conta:'
      FocusControl = dbContaBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object lblConta: TTS_Label
      Left = 19
      Top = 24
      Width = 302
      Height = 13
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      FormatoTabela = False
      LinkToResult = 0
    end
    object dbContaBanco: TTS_PopupEdit
      Left = 41
      Top = 61
      Width = 264
      TabOrder = 0
      PopupFormBorderStyle = pbsSimple
      OnInitPopup = dbContaBancoInitPopup
      LookupSource = C_ContasBcDS
      LookupKeyValue = 0
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 331
    Height = 110
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 76
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Alterar'
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 449
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 234
      Caption = 'Alterar Conta do Cheque'
      Effect3D.ShadowedColor = 13223591
    end
    inherited lbEstadoForm: TTS_Label
      Width = 144
      Caption = 'Altera'#231#227'o da Conta                 '
    end
    inherited btHelp: TTS_SpeedButton
      Left = 409
    end
    inherited lbUpperHint: TTS_Label
      Left = 460
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 198
    Top = 42
  end
  inherited FormsComponent: TFormsComponent
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 15724519
    Modulo = 'Financeiro'
    Caption = 'Alterar Conta do Cheque'
  end
  object C_ContasBcDS: TDataSource
    DataSet = DMFinanceiro.C_ContasBc
    Left = 200
    Top = 115
  end
end

inherited dlgapagaEntrada: TdlgapagaEntrada
  Left = 356
  Top = 139
  Height = 347
  Caption = 'dlgapagaEntrada'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 277
    inherited btGravar: TTS_SpeedButton
      Caption = 'Apagar'
    end
    inherited btPesquisar: TTS_SpeedButton
      Visible = False
    end
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 243
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
    inherited pnAvancaRecua: TTS_Panel
      inherited btPrevReg: TTS_SpeedButton
        Visible = False
      end
      inherited btProxReg: TTS_SpeedButton
        Visible = False
      end
      inherited btPrimeiroReg: TTS_SpeedButton
        Visible = False
      end
      inherited btUltimoReg: TTS_SpeedButton
        Visible = False
      end
    end
  end
  inherited pnDados: TTS_Panel
    Height = 277
    inherited Grid: TTS_QDBGrid
      Height = 275
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 275
    end
    inherited sbDados: TTS_Panel
      Height = 275
      object TS_Label1: TTS_Label
        Left = 32
        Top = 24
        Width = 97
        Caption = 'Chave da NF :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object chave: TTS_Edit
        Left = 136
        Top = 21
        Width = 288
        TabOrder = 0
        Text = 'chave'
        Height = 19
      end
    end
  end
end

inherited DlgFotoItem: TDlgFotoItem
  Left = 147
  Top = 168
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Foto do Item'
  ClientHeight = 217
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Height = 176
    object TS_Panel1: TTS_Panel
      Left = 16
      Top = 13
      Width = 354
      Height = 188
      BevelWidth = 5
      TabOrder = 0
      BoxWithShadow = False
      object Foto: TTS_Image
        Left = 5
        Top = 5
        Width = 344
        Height = 178
        Align = alClient
      end
    end
  end
  inherited btFechar: TTS_BitBtn
    Top = 337
  end
  inherited pnNavigator: TTS_Panel
    Height = 176
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 142
    end
    inherited btComando2: TTS_SpeedButton
      Caption = 'Expandir Foto'
      Visible = True
      OnClick = TS_SpeedButton3Click
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Limpar Foto'
      Visible = True
      OnClick = TS_SpeedButton1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Carregar Foto'
    end
  end
  object dlgFoto: TOpenPictureDialog
    Filter = 
      'Todas as Imagens (*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.jpg;*.' +
      'jpeg;*.bmp;*.ico;*.emf;*.wmf|JPEG Image File (*.jpg)|*.jpg|JPEG ' +
      'Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*' +
      '.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 422
    Top = 143
  end
end

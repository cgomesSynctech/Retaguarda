inherited DlgReciboPadrao: TDlgReciboPadrao
  Left = 147
  Top = 107
  Caption = 'Composição de Recibos'
  ClientHeight = 277
  ClientWidth = 458
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TTS_BitBtn
    Left = 231
    Top = 241
    TabOrder = 1
  end
  inherited TS_BitBtn1: TTS_BitBtn
    Left = 126
    Top = 241
    TabOrder = 2
    OnClick = TS_BitBtn1Click
  end
  object Panel1: TTS_Panel [2]
    Left = 0
    Top = 0
    Width = 458
    Height = 235
    Align = alTop
    TabOrder = 0
    BoxWithShadow = False
    object lbEsplanacao: TTS_Label
      Left = 8
      Top = 3
      Width = 442
      Height = 58
      Caption = 'lbEsplanacao'
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label1: TTS_Label
      Left = 8
      Top = 136
      Width = 82
      Height = 13
      Caption = 'Texto do Recibo:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object Label2: TTS_Label
      Left = 362
      Top = 122
      Width = 27
      Height = 13
      Caption = 'Valor:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object rgTipo: TTS_RadioGroup
      Left = 8
      Top = 71
      Width = 441
      Height = 43
      Caption = 'O Recibo se refere a '
      Columns = 3
      Items.Strings = (
        'Uma Venda realizada'
        'Um Pagamento (Ret.)'
        'Um Recebimento (Dep.)')
      TabOrder = 0
      OnClick = rgTipoClick
      Transparent = True
    end
    object Texto: TTS_Memo
      Left = 8
      Top = 151
      Width = 442
      TabOrder = 2
      OnKeyDown = TextoKeyDown
      Height = 79
    end
    object Edit1: TTS_Edit
      Left = 392
      Top = 121
      Width = 57
      TabOrder = 1
      Text = '0'
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
      Height = 17
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 11
    Top = 241
  end
  inherited DlgMsg: TDlgMsg
    Left = 45
    Top = 239
  end
end

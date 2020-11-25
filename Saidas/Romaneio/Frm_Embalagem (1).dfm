inherited FrmEmbalagem: TFrmEmbalagem
  Left = 524
  Top = 161
  Caption = 'FrmEmbalagem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    inherited Grid: TTS_QDBGrid
      Filter.Criteria = {00000000}
    end
    inherited sbDados: TTS_Panel
      object TS_Label1: TTS_Label
        Left = 40
        Top = 23
        Width = 65
        Caption = 'Pedido :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 136
        Top = 64
        Width = 65
        Caption = 'Dados :'
        FocusControl = dxF9Bar
        FormatoTabela = False
        LinkToResult = 0
      end
      object L_Total: TTS_Label
        Left = 32
        Top = 96
        Width = 65
        Caption = 'L_Total'
        FormatoTabela = False
        LinkToResult = 0
      end
      object L_favorecido: TTS_Label
        Left = 128
        Top = 96
        Width = 65
        Caption = 'Favorecido'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Pedido: TTS_DBEdit
        Left = 109
        Top = 21
        Width = 121
        TabOrder = 0
        OnExit = TS_PedidoExit
        OnKeyPress = TS_PedidoKeyPress
        DataField = 'NUMERO'
        DataSource = DMEmbalagem.C_TabelaDS
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited Beep: TBTBeeper
    Left = 224
    Top = 328
  end
  inherited FormStorage: TFormStorage
    Left = 112
    Top = 272
  end
end

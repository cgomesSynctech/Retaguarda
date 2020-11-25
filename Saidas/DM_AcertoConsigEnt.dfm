inherited DMAcertoConsigEnt: TDMAcertoConsigEnt
  Left = 50
  Top = 39
  Height = 575
  Width = 848
  inherited C_Itens: TClientDataSet
    inherited C_ItensSTATUS: TStringField
      OnValidate = C_ItensSTATUSValidate
    end
  end
  inherited Q_TiposMovimento: TIBQuery
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.tipoorigem'
      'From TiposMovimento t'
      
        '         inner join TiposPadrao tp on t.TipoPadrao = tp.TipoPadr' +
        'ao'
      'Where  t.TipoPadrao = 7 and t.Tipo = '#39'S'#39' '
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento')
  end
  inherited Q_Status: TIBQuery
    SQL.Strings = (
      'Select  *  From StatusSaidas'
      'where Status not in ('#39'B'#39', '#39'C'#39', '#39'E'#39', '#39'V'#39', '#39'G'#39', '#39'A'#39')'
      'order by Ordem')
    Left = 621
  end
end

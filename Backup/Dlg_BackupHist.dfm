object DlgBackupHist: TDlgBackupHist
  Left = 193
  Top = 183
  Width = 592
  Height = 220
  Caption = 'Histórico dos Backup realizados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxTreeList1: TdxTreeList
    Left = 0
    Top = 0
    Width = 584
    Height = 193
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    HeaderColor = 15461355
    LookAndFeel = lfUltraFlat
    Options = [aoColumnSizing, aoColumnMoving, aoTabThrough, aoRowSelect, aoAutoWidth, aoHideFocusRect, aoAutoSort]
    HighlightColor = 14608375
    HighlightTextColor = clBlack
    TreeLineColor = clGrayText
    object dxTreeList1Column1: TdxTreeListColumn
      Caption = 'Data'
      HeaderAlignment = taCenter
      Width = 76
      BandIndex = 0
      RowIndex = 0
    end
    object dxTreeList1Column2: TdxTreeListColumn
      Caption = 'Hora'
      HeaderAlignment = taCenter
      Width = 51
      BandIndex = 0
      RowIndex = 0
    end
    object dxTreeList1Column3: TdxTreeListColumn
      Caption = 'Máquina'
      HeaderAlignment = taCenter
      Width = 77
      BandIndex = 0
      RowIndex = 0
    end
    object dxTreeList1Column4: TdxTreeListColumn
      Caption = 'Usuário'
      HeaderAlignment = taCenter
      Width = 79
      BandIndex = 0
      RowIndex = 0
    end
    object dxTreeList1Column5: TdxTreeListColumn
      Caption = 'Local'
      HeaderAlignment = taCenter
      Width = 301
      BandIndex = 0
      RowIndex = 0
    end
  end
end

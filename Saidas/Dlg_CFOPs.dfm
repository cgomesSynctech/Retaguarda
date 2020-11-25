object DlgCFOPs: TDlgCFOPs
  Tag = -1
  Left = 118
  Top = 148
  Width = 454
  Height = 245
  HelpContext = -1
  Caption = 'DlgCFOPs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnCFOP: TTS_Panel
    Left = 0
    Top = 0
    Width = 446
    Height = 211
    Align = alClient
    TabOrder = 0
    BackgroundOptions.Opaque = False
    object dbTreeCFOPs: TdxDBTreeList
      Left = 1
      Top = 1
      Width = 444
      Height = 209
      Cursor = crHandPoint
      Bands = <
        item
          Caption = 'Cadastrar Conta'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'CFOP'
      ParentField = 'PAI'
      Align = alClient
      BorderStyle = bsNone
      DragMode = dmAutomatic
      TabOrder = 0
      OnDblClick = dbTreeCFOPsDblClick
      OnKeyDown = dbTreeCFOPsKeyDown
      OnMouseUp = dbTreeCFOPsMouseUp
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      HeaderColor = 15456728
      HideSelection = True
      HighlightColor = clWhite
      HighlightTextColor = clBtnText
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [etoAutoSearch, etoAutoSort, etoDblClick, etoImmediateEditor, etoTabThrough]
      OptionsDB = [etoAutoCalcKeyValue, etoCancelOnExit, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
      OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoHotTrack, etoUseBitmap, etoUseImageIndexForSelected]
      ScrollBars = ssVertical
      TreeLineColor = clGrayText
      OnCustomDrawCell = dbTreeCFOPsCustomDrawCell
      OnHotTrackNode = dbTreeCFOPsHotTrackNode
      object dbTreeCFOPsCodigo: TdxDBTreeListMaskColumn
        HeaderAlignment = taCenter
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CFOP'
        EditMask = '!9.99;0; '
      end
      object dbTreeCFOPsDescricao: TdxDBTreeListColumn
        Alignment = taLeftJustify
        Caption = 'Descri'#231#227'o da CFOP'
        DisableDragging = True
        HeaderAlignment = taCenter
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
  end
end

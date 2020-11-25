object DlgNavegador: TDlgNavegador
  Left = 85
  Top = 80
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Navegador'
  ClientHeight = 390
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object swf: TShockwaveFlash
    Left = 0
    Top = 0
    Width = 608
    Height = 390
    Align = alClient
    TabOrder = 0
    OnFSCommand = swfFSCommand
    ControlData = {
      6755665500030000D73E00004F28000008000200000000000800020000000000
      08000E000000570069006E0064006F00770000000B00FFFF0B00FFFF08001000
      00004100750074006F004C006F007700000008000200000000000B00FFFF0800
      020000000000080010000000530068006F00770041006C006C0000000B000000
      0B0000000800020000000000080002000000000008000C000000620065006C00
      6F0077000000}
  end
end

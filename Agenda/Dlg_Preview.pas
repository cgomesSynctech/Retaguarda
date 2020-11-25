unit Dlg_Preview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, qrprntr, ExtCtrls, ComCtrls, ToolWin, Menus, ImgList;

type
  TDlgPreview = class(TForm)
    QRPreview: TQRPreview;
    PanelStatus: TPanel;
    ImageList: TImageList;
    ToolFerramentas: TToolBar;
    btImprimir: TToolButton;
    btPaginaInteira: TToolButton;
    btLarguraPagina: TToolButton;
    btSeparator3: TToolButton;
    PrinterSetupDialog: TPrinterSetupDialog;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btFecharPreview: TButton;
    btSeparator1: TToolButton;
    ComboZoom: TComboBox;
    btSeparator2: TToolButton;
    PopupMenu: TPopupMenu;
    Largura: TMenuItem;
    Zoom100: TMenuItem;
    N2: TMenuItem;
    Zoom: TMenuItem;
    procedure QRPreviewPageAvailable(Sender: TObject; PageNum: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btPaginaInteiraClick(Sender: TObject);
    procedure btLarguraPaginaClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ComboZoomClick(Sender: TObject);
    procedure btFecharPreviewClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QRPreviewClick(Sender: TObject);
    procedure ZoomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgPreview: TDlgPreview;
  ControleZoom : Boolean;

implementation

{$R *.DFM}

procedure TDlgPreview.QRPreviewPageAvailable(Sender: TObject;
  PageNum: Integer);
begin
 PanelStatus.Caption := Format('Página 1 de %d         ', [PageNum]);
end;

procedure TDlgPreview.Button2Click(Sender: TObject);
begin
 with QRPreview do begin
  PageNumber := 1;
  PanelStatus.Caption := Format('Página %d de %d         ', [PageNumber, QRprinter.PageCount]);
 end;
end;

procedure TDlgPreview.Button3Click(Sender: TObject);
begin
 with QRPreview do begin
  PageNumber := PageNumber - 1;
  PanelStatus.Caption := Format('Página %d de %d         ', [PageNumber, QRprinter.PageCount]);
 end;
end;

procedure TDlgPreview.Button4Click(Sender: TObject);
begin
 with QRPreview do begin
  PageNumber := PageNumber + 1;
  PanelStatus.Caption := Format('Página %d de %d         ', [PageNumber, QRprinter.PageCount]);
 end;
end;

procedure TDlgPreview.Button5Click(Sender: TObject);
begin
 with QRPreview do begin
  PageNumber := QRprinter.PageCount;
  PanelStatus.Caption := Format('Página %d de %d         ', [PageNumber, QRprinter.PageCount]);
 end;
end;

procedure TDlgPreview.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13
   then
    begin
     ComboZoom.Text := ComboZoom.Text + '%';
     ComboZoomClick(Sender);
     ComboZoom.SetFocus;
    end;
end;

procedure TDlgPreview.btPaginaInteiraClick(Sender: TObject);
begin
  QRPreview.ZoomToFit;
  ComboZoom.Text := IntToStr(QRPreview.Zoom) + '%';
end;

procedure TDlgPreview.btLarguraPaginaClick(Sender: TObject);
begin
  QRPreview.ZoomToWidth;
  ComboZoom.Text := IntToStr(QRPreview.Zoom) + '%';
end;

procedure TDlgPreview.btImprimirClick(Sender: TObject);
begin
  if PrinterSetupDialog.Execute then
    QRPreview.QRPrinter.Print;
end;

procedure TDlgPreview.ComboZoomClick(Sender: TObject);
begin
 ComboZoom.Text := copy(ComboZoom.Text,1,Length(ComboZoom.Text)-1);
 QRPreview.Zoom := StrToInt(ComboZoom.Text);
 ComboZoom.Text := ComboZoom.Text + '%';
end;

procedure TDlgPreview.btFecharPreviewClick(Sender: TObject);
begin
 Close;
end;

procedure TDlgPreview.FormActivate(Sender: TObject);
begin
 ControleZoom := True;
end;

procedure TDlgPreview.QRPreviewClick(Sender: TObject);
begin
 if ControleZoom
  then begin
   QRPreview.Zoom := 100;
   QRPreview.Cursor := 2;
  end else begin
   QRPreview.ZoomToFit;
   QRPreview.Cursor := 1;
  end;

  ControleZoom := not ControleZoom;
  ComboZoom.Text := IntToStr(QRPreview.Zoom) + '%';
end;


procedure TDlgPreview.ZoomClick(Sender: TObject);
begin
  ComboZoom.SetFocus;
end;

end.

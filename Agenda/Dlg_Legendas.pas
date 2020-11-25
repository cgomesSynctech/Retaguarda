unit Dlg_Legendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, TS_Label,
  StdCtrls, TS_ScrollBox, Buttons, TS_SpeedButton, Db, IBCustomDataSet,
  IBQuery, TS_Image, TS_Shape, FORM_PADRAO, DlgMsg, Menus,
  TS_BitBtn, TS_LastDataObject, TS_PopupMenu;

type
  TDlgLegendas = class(TFormPadrao)
    Q_Legendas: TIBQuery;
    SB_Legenda: TTS_ScrollBox;
    Lbl_Concluido: TLabel;
    Lbl_Cancelado: TLabel;
    Img_Con: TTS_Image;
    Img_Canc: TTS_Image;
    Lbl_1: TLabel;
    Lbl_2: TLabel;
    Lbl_3: TLabel;
    Lbl_4: TLabel;
    Lbl_5: TLabel;
    Shp_1: TShape;
    Shp_2: TShape;
    Shp_3: TShape;
    Shp_4: TShape;
    Shp_5: TShape;
    Lbl_Intensidade: TLabel;
    Img_Fav: TTS_Image;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure AtualizaLegenda;
  public
    { Public declarations }
  end;

var
  DlgLegendas: TDlgLegendas;

implementation

uses DM_Projeto, DM_Agenda;

{$R *.DFM}

procedure TDlgLegendas.AtualizaLegenda;
var inicial, distancia, i: integer;
    categoria: TLabel;
begin
  // Muda as cores da intensidade
  for i:=1 to 5 do
    TShape(FindComponent(Format('Shp_%1.1d', [i]))).Brush.Color := DMAgenda.CorQuant(i, 5);
  inicial := 99;
  distancia := 20;
  with Q_Legendas do begin
    SQL.Text := 'Select * From CATEGORIAS Order By CATEGORIA';
    Open;
    while not(EOF) do begin
      if (FieldByName('COR').AsString <> '') and (FieldByName('COR_FONTE').AsString <> '') then begin
        categoria := TLabel.Create(Self);
        categoria.Parent := SB_Legenda;
        if FieldByName('DESCRICAO').AsString = DMProjeto.sNomeReservado then begin
          categoria.Left := 22;
        end else begin
          categoria.Left := 6;
        end;
        categoria.Top := inicial;
        categoria.Layout := tlCenter;
        categoria.Color := StringToColor(FieldByName('COR').AsString);
        categoria.Font.Color := StringToColor(FieldByName('COR_FONTE').AsString);
        categoria.Caption := '  ' + FieldByName('DESCRICAO').AsString + '  ';
        categoria.AutoSize := True;
        categoria.Height := 15;
        // incrementa
        Inc(inicial, distancia);
      end;
      Next;
    end;
    Close;
  end;
end;

procedure TDlgLegendas.FormCreate(Sender: TObject);
begin
  AtualizaLegenda;
end;

procedure TDlgLegendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Close;
end;

end.

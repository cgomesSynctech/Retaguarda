unit Dlg_FotoGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, vg2PropStore, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, TS_Panel,
  StdCtrls, TS_BitBtn, TS_Image, ExtDlgs, FormsComponent, TS_Label, jpeg,
  dxfLabel, TS_MaxPanel;

type
  TDlgFotoGrupo = class(TFrmModeloCadastros)
    dlgFoto: TOpenPictureDialog;
    TS_Panel1: TTS_Panel;
    Foto: TTS_Image;
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    sFoto: string;
  public
    { Public declarations }
  end;

var
  DlgFotoGrupo: TDlgFotoGrupo;

implementation
uses DM_Grupos, DM_Projeto;

{$R *.DFM}

procedure TDlgFotoGrupo.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Foto.Picture := nil;
  DMGrupos.C_Tabela.edit;
  DMGrupos.C_TabelaFoto.value := '';
end;

procedure TDlgFotoGrupo.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
{  if TS_SpeedButton3.Tag = 0 then begin
    TS_SpeedButton3.Tag := 1;
    TS_SpeedButton3.caption := 'Tamanho Normal';
  end
  else begin
    TS_SpeedButton3.caption := 'Expandir Foto';
    TS_SpeedButton3.Tag := 0;
  end;
}
  Foto.Stretch := not Foto.Stretch;
end;

procedure TDlgFotoGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  sFoto := DMGrupos.C_TabelaFoto.value;
  try
    if DMGrupos.C_TabelaFoto.value <> '' then
      Foto.Picture.LoadFromFile(DMProjeto.ImgPath+DMGrupos.C_TabelaFoto.value)
    else
      Foto.Picture := nil;
  except
    Foto.Picture := nil;
  end;
  ShowModal;
end;

procedure TDlgFotoGrupo.btLimparClick(Sender: TObject);
var
  FName, ImgLoc: string;
begin
  inherited;
  dlgFoto.InitialDir := copy(DMProjeto.ImgPath,1,length(DMProjeto.ImgPath)-1);
  if dlgFoto.Execute then begin
    if dlgFoto.FileName <> '' then begin {Copiando Arquivo}
      FName := ExtractFileName(dlgFoto.FileName);
      ImgLoc := DMProjeto.ImgPath+FName;
      if dlgFoto.FileName <> ImgLoc then
        CopyFile(PChar(dlgFoto.FileName),Pchar(ImgLoc),false);
    end;
    Foto.Picture.LoadFromFile(ImgLoc);
    DMGrupos.C_Tabela.edit;
    DMGrupos.C_TabelaFoto.value := FName;
  end;
end;

procedure TDlgFotoGrupo.btGravarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TDlgFotoGrupo.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  DMGrupos.C_Tabela.edit;
  DMGrupos.C_TabelaFoto.value := sFoto;
  close;
end;

end.

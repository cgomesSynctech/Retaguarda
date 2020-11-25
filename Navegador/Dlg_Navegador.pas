unit Dlg_Navegador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleCtrls, Variants, ShockwaveFlashObjects_TLB;

type
  TDlgNavegador = class(TForm)
    swf: TShockwaveFlash;
    procedure swfFSCommand(Sender: TObject; const command,
      args: WideString);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgNavegador: TDlgNavegador;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgNavegador.swfFSCommand(Sender: TObject; const command,
  args: WideString);
begin
  if args <> '' then begin
		DMProjeto.SetParametrosForm([null,StrToInt(SeparaStrings(args,',',1)),SeparaStrings(args,',',2)]);
  end;
  if command = 'desligasom' then
  	DMProjeto.setparametro('SomNavegador', 'N')
  else if command = 'ligasom' then
  	DMProjeto.setparametro('SomNavegador', 'S')
  else if command <> '' then
		DMProjeto.CriarForm(command,self,false);
end;

procedure TDlgNavegador.FormShow(Sender: TObject);
begin
   if not FileExists(DMProjeto.ProgPath+'Navegador.swf') then
   	 ShowMessage('O arquivo: "'+DMProjeto.ProgPath+'Navegador.swf'+' não foi encontrado!');

   swf.Base := DMProjeto.ProgPath+'Navegador.swf';
   swf.Movie:= DMProjeto.ProgPath+'Navegador.swf';
//   swf.SetVariable('som',DMProjeto.Parametro('SomNavegador'));
   swf.Play;
end;

procedure TDlgNavegador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

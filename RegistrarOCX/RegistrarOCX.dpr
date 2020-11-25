program RegistrarOCX;

uses
  Forms,
  Dialogs,
  Funcoes,
  SysUtils,
  Windows,
  U_RegistrarOCX in 'U_RegistrarOCX.pas' {Form1};

{$R *.RES}
var sArquivo : string;
    Dialogo  : TOpenDialog;
    aDirSystem : array[0..2047] of char;
    sDirSystem, sAplicativo : string;

begin
  Application.Initialize;
//  Application.CreateForm(TForm1, Form1);
  Application.Run;
  getSystemDirectory(aDirSystem, 2047);
  sDirSystem := aDirSystem;
  sArquivo := ExtractFilePath(ExtractShortPathName(Application.ExeName))+'swflash.ocx';
   if not fileexists(sArquivo) then begin
   	  Dialogo := TOpenDialog.Create(Application);
      Dialogo.Title := 'Selecione o arquivo "swflash.ocx"';
      Dialogo.FileName := ExtractShortPathName(sArquivo);
      Dialogo.Execute;
      sArquivo := ExtractShortPathName(Dialogo.FileName);
      Dialogo.Free;
   end;
	 sAplicativo := sDirSystem+'\regsvr32.exe';
   if sArquivo <> '' then begin
     if not fileexists(pchar(sDirSystem+'\regsvr32.exe')) then begin
      if not fileexists(pchar(sDirSystem+'32'+'\regsvr32.exe')) then begin
   	  	Dialogo := TOpenDialog.Create(Application);
      	Dialogo.Title := 'Selecione o arquivo "RegSvr32.exe"';
      	Dialogo.Execute;
      	sAplicativo := ExtractShortPathName(Dialogo.FileName);
      	Dialogo.Free;
      end else
        sAplicativo := sDirSystem+'32'+'\regsvr32.exe';
     end;
     ExecutePrograma( pchar(sAplicativo+' /s '+sArquivo) );
     ShowMessage('Arquivo: '+ExtractFileName(sArquivo)+' registrado com sucesso!');
   end;
end.

program ExecutarBackup;

uses
  SysUtils,
  Classes,
  Forms,
  funcoes,
  TDM_Projeto in '..\Classes\ClassesIB6\TDM_PROJETO.pas' {DMProject: TDataModule};

{$R *.res}

var
  slAgenda : TStringList;

begin
  Application.Initialize;
  Application.CreateForm(TDMProject, DMProject);
  Application.Run;
  if fileexists(ExtractFilePath(Application.ExeName)+'Agendamento.age') then begin
		slAgenda := TStringList.Create;
    with slAgenda do begin
    	LoadFromFile(ExtractFilePath(Application.ExeName)+'Agendamento.age');
      DMProject.FazerBackup(Values['TipoBackup'],Values['IndiceBaseDados'],Values['Local'],
      											iif(Values['Textos']='S',true,false),
                            iif(Values['Templates']='S',true,false),
                            iif(Values['Etiquetas']='S',true,false),
                            nil,
                            nil,
                            nil);
    	Free;
    end;
  end;
  Application.Terminate;
end.




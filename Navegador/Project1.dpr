program Project1;

uses
  Forms,
  Unit1 in '\\Trade2000\Desenv\Fontes_US\MaxPlus\Navegador\Unit1.pas' {Form1},
  Unit2 in 'D:\Arquivos de programas\Borland\Delphi5\lib\Unit2.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

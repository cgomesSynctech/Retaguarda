unit Dlg_ListaBaseDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, DBClient, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  TS_QDBGrid, Menus, TS_PopupMenu;

type
  TDlgListaBaseDados = class(TForm)
    dbgBases: TTS_QDBGrid;
    dbgBasesColumn2: TdxDBGridColumn;
    dbgBasesColumn3: TdxDBGridColumn;
    dbgBasesColumn4: TdxDBGridColumn;
    C_BaseDados: TClientDataSet;
    C_BaseDadosDS: TDataSource;
    C_BaseDadosIndex: TIntegerField;
    C_BaseDadosNome: TStringField;
    C_BaseDadosLocal: TStringField;
    C_BaseDadosPadrao: TStringField;
    ppmGrid: TTS_PopupMenu;
    Gravar1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgListaBaseDados: TDlgListaBaseDados;

implementation
uses funcoes;

{$R *.dfm}

procedure TDlgListaBaseDados.FormShow(Sender: TObject);
var slProgramAls : TStringList;
		i : integer;
begin
	C_BaseDados.CreateDataSet;
	slProgramAls := TStringList.Create;
  with slProgramAls do begin
  	LoadFromFile(ExtractFilePath(Application.ExeName)+'Program.als');
  	for i:=0 to Count-1 do begin
			C_BaseDados.Append;
      C_BaseDadosIndex.Value := i;
      C_BaseDadosNome.Value  := SeparaStrings(slProgramals[i],';',2);
      C_BaseDadosLocal.Value := SeparaStrings(slProgramals[i],';',1);
      C_BaseDadosPadrao.Value:= SeparaStrings(slProgramals[i],';',3);
      C_BaseDados.Post;
    end;
    Free;
  end;
end;

procedure TDlgListaBaseDados.Sair1Click(Sender: TObject);
begin
	close;
end;

procedure TDlgListaBaseDados.Gravar1Click(Sender: TObject);
var slProgramAls : TStringList;
		sSenha : string;
begin
  sSenha := InputBox('Autorização para Salvar','Informe a Senha:','');
  if StrToIntDef(sSenha,0) <> ValidaSenha then begin
  	ShowMessage('Senha Inválida!');
    Exit;
  end;
	slProgramAls := TStringList.Create;
	with C_BaseDados do begin
  	DisableControls;
    First;
    While not Eof do begin
    	slProgramAls.Add(C_BaseDadosLocal.Value+';'+C_BaseDadosNome.Value+';'+C_BaseDadosPadrao.Value);
      Next;
    end;
    EnableControls;
  end;
  if fileexists(ExtractFilePath(Application.ExeName)+'ProgramRenomeado.als') then
  	DeleteFile(ExtractFilePath(Application.ExeName)+'ProgramRenomeado.als');
  RenameFile(ExtractFilePath(Application.ExeName)+'Program.als',ExtractFilePath(Application.ExeName)+'ProgramRenomeado.als');
  slProgramAls.SaveToFile(ExtractFilePath(Application.ExeName)+'Program.als');
  slProgramAls.Free;
end;

end.

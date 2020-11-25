unit DM_Cargos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMCargos = class(TDMManutencao)
    C_TabelaCARGO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCODIGO: TStringField;
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure C_TabelaCODIGOValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCargos: TDMCargos;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMCargos.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_TabelaCargo.Value in [1,2] then begin
  	DlgMsg.ShowMsg(2240);
    bSkip := true;
    Exit;
  end;
end;

procedure TDMCargos.C_TabelaCODIGOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaCargo.value,'cargos','cargo',C_TabelaCODIGO.value,'codigo') then begin
    DlgMsg.ShowMsg(5001,['Cargo']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMCargos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCargos := self;
end;

end.

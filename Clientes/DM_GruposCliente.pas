unit DM_GruposCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMGruposCliente = class(TDMManutencao)
    C_TabelaGRUPOCLIENTE: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGruposCliente: TDMGruposCliente;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMGruposCliente.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMGruposCliente := self;
end;

procedure TDMGruposCliente.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaGrupoCliente.value,'gruposcliente','grupocliente',C_TabelaDESCRICAO.value) then begin
    DlgMsg.ShowMsg(5001,['Grupo de Cliente']);
    raise Exception.Create('@@');
  end;
end;

end.

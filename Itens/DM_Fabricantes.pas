unit DM_Fabricantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMFabricantes = class(TDMManutencao)
    C_TabelaFABRICANTE: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCODIGO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
    procedure C_TabelaCODIGOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFabricantes: TDMFabricantes;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMFabricantes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMFabricantes := self;
end;

procedure TDMFabricantes.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaFabricante.value,'fabricantes','fabricante',C_TabelaDESCRICAO.value) then begin
    DlgMsg.ShowMsg(5001,['Fabricante']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMFabricantes.C_TabelaCODIGOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaFabricante.value,'fabricantes','fabricante',C_TabelaCODIGO.value,'codigo') then begin
    DlgMsg.ShowMsg(5001,['Fabricante']);
    raise Exception.Create('@@');
  end;
end;

end.

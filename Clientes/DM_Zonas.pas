unit DM_Zonas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMZonas = class(TDMManutencao)
    C_TabelaZONA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMZonas: TDMZonas;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMZonas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMZonas := self;
end;

procedure TDMZonas.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaZona.value,'zonas','zona',C_TabelaDESCRICAO.value) then begin
    DlgMsg.ShowMsg(5001,['Zona']);
    raise Exception.Create('@@');
  end;
end;

end.

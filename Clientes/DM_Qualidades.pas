unit DM_Qualidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMQualidades = class(TDMManutencao)
    C_TabelaQUALIDADE: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMQualidades: TDMQualidades;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMQualidades.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMQualidades := self;
end;

procedure TDMQualidades.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaQualidade.value,'qualidades','qualidade',C_TabelaDESCRICAO.value) then begin
    DlgMsg.ShowMsg(5001,['Qualidade']);
    raise Exception.Create('@@');
  end;
end;

end.

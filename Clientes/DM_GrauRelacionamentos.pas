unit DM_GrauRelacionamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMGrauRelacionamentos = class(TDMManutencao)
    C_TabelaGRAU: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGrauRelacionamentos: TDMGrauRelacionamentos;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMGrauRelacionamentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMGrauRelacionamentos := self;
end;

procedure TDMGrauRelacionamentos.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaGrau.value,'graurelacionamentos','grau',C_TabelaDESCRICAO.value) then begin
    DlgMsg.ShowMsg(5001,['Grau de Relacionamento']);
    raise Exception.Create('@@');
  end;
end;

end.

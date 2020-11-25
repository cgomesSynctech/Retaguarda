unit DM_GrauParentescos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMGrauParentescos = class(TDMManutencao)
    C_TabelaGRAUPARENTESCO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGrauParentescos: TDMGrauParentescos;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMGrauParentescos.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaGrauParentesco.value,'GrauParentesco','GrauParentescos',C_TabelaDESCRICAO.value) then begin
    DlgMsg.ShowMsg(5001,['Grau de Parentesco']);
    raise Exception.Create('@@');
  end;
end;

end.

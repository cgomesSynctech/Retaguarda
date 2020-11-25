unit DM_TiposBusiness;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider;

type
  TDMTiposBusiness = class(TDMManutencao)
    C_TabelaTIPOBUSINESS: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposBusiness: TDMTiposBusiness;

implementation
uses DM_Projeto;
{$R *.DFM}

procedure TDMTiposBusiness.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMTiposBusiness := self;
end;

procedure TDMTiposBusiness.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaTipoBusiness.value,'tiposbusiness','tipobusiness',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Tipo de Business']);
    raise Exception.Create('@@');
  end;
end;

end.

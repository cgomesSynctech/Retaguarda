unit DM_TiposEntrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider;

type
  TDMTiposEntrega = class(TDMManutencao)
    C_TabelaTIPOENTREGA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposEntrega: TDMTiposEntrega;

implementation
uses DM_Projeto;
{$R *.DFM}

procedure TDMTiposEntrega.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMTiposEntrega := self;
end;

procedure TDMTiposEntrega.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaTipoEntrega.value,'tiposentrega','tipoentrega',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Tipo de Entrega']);
    raise Exception.Create('@@');
  end;
end;

end.

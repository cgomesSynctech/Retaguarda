unit DM_Paises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMPaises = class(TDMManutencao)
    C_TabelaPAIS: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPaises: TDMPaises;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMPaises.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMPaises := self;
end;

procedure TDMPaises.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaPais.value,'paises','pais',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['País']);
    raise Exception.Create('@@');
  end;
end;

end.

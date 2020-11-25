unit DM_Idiomas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMIdiomas = class(TDMManutencao)
    C_TabelaIDIOMA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
    procedure DMComponentAntesDeApagar(Sender: TObject;
      var bCanDelete: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMIdiomas: TDMIdiomas;

implementation
Uses DM_Projeto;
{$R *.DFM}

procedure TDMIdiomas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMIdiomas := self;
end;

procedure TDMIdiomas.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaIdioma.value,'idiomas','idioma',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Idioma']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMIdiomas.DMComponentAntesDeApagar(Sender: TObject;
  var bCanDelete: Boolean);
begin
  inherited;
  if C_TabelaIdioma.value = 1 then begin
    DlgMsg.ShowMsg(6022);
    bCanDelete := false;
  end;
end;

end.

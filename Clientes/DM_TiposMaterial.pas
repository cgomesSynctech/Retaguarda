unit DM_TiposMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTiposMaterial = class(TDMManutencao)
    C_TabelaTIPOMATERIAL: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposMaterial: TDMTiposMaterial;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TDMTiposMaterial.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTiposMaterial := self;
end;

end.

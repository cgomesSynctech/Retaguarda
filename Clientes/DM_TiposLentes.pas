unit DM_TiposLentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTiposLentes = class(TDMManutencao)
    C_TabelaTIPOLENTE: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposLentes: TDMTiposLentes;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TDMTiposLentes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTiposLentes := self;
end;

end.

unit DM_Cores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMCores = class(TDMManutencao)
    C_TabelaCOR: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCores: TDMCores;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TDMCores.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCores := self;
end;

end.

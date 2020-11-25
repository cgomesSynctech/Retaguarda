unit DM_Acessorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMAcessorios = class(TDMManutencao)
    C_TabelaACESSORIO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAcessorios: TDMAcessorios;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMAcessorios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMAcessorios := Self;
end;

end.

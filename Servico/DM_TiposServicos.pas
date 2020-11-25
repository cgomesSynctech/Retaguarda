unit DM_TiposServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTiposServicos = class(TDMManutencao)
    C_TabelaDESCRICAO: TStringField;
    C_TabelaTIPOSERVICO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposServicos: TDMTiposServicos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMTiposServicos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTiposServicos := Self;
end;

end.

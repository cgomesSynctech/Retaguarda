unit DM_Consultas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMConsultas = class(TDMManutencao)
    C_TabelaCONSULTA: TIntegerField;
    C_TabelaTITULO: TStringField;
    C_TabelaQUERY: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConsultas: TDMConsultas;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMConsultas.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMConsultas := self;
end;

end.

unit DM_TiposItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMTiposItens = class(TDMManutencao)
    Q_TabelaTIPOITEM: TIntegerField;
    Q_TabelaDESCRICAOTIPOITEM: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposItens: TDMTiposItens;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMTiposItens.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMTiposItens := self;
end;

end.

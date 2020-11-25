unit DM_Tecnologias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTecnologias = class(TDMManutencao)
    C_TabelaTECNOLOGIA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTecnologias: TDMTecnologias;

implementation

uses DM_Projeto;

{$R *.dfm}

end.

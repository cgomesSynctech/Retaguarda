unit DM_TIPOEQUIPAMENTOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTIPOEQUIPAMENTOS = class(TDMManutencao)
    C_TabelaTIPOEQUIPAMENTO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTIPOEQUIPAMENTOS: TDMTIPOEQUIPAMENTOS;

implementation

uses DM_Projeto;

{$R *.dfm}

end.

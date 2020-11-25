unit DM_LocalEquipamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMLocalEquipamento = class(TDMManutencao)
    C_TabelaLOCALIZACAOEQUIPAMENTO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMLocalEquipamento: TDMLocalEquipamento;

implementation

uses DM_Projeto;

{$R *.dfm}

end.

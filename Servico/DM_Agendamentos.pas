unit DM_Agendamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMAgendamentos = class(TDMManutencao)
    C_TabelaAGENDAMENTO: TIntegerField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaNOMEFUNC: TStringField;
    C_TabelaNOMECLIENTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAgendamentos: TDMAgendamentos;

implementation

uses DM_Projeto;

{$R *.dfm}

end.

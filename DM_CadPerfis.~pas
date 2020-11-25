unit DM_CadPerfis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMCadPerfis = class(TDMManutencao)
    C_TabelaPERFIL: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_Perfis: TIBQuery;
    C_PerfisDS: TDataSource;
    Q_PerfisProvider: TDataSetProvider;
    C_Perfis: TClientDataSet;
    C_PerfisPERFIL: TIntegerField;
    C_PerfisDESCRICAO: TStringField;
    C_TabelaAproveitarPerfil: TIntegerField;
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadPerfis: TDMCadPerfis;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMCadPerfis.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  if C_TabelaAproveitarPerfil.value > 0 then with DMProjeto.Q_SQL do begin
    close;
    SQL.text := 'insert into limitacoesmenu(perfil,objeto,menu,senha,iniciar,permissoes) '+
    'select perfil,objeto,menu,senha,iniciar,permissoes from limitacoesmenu where perfil = :perfil';
    params[0].asinteger := C_TabelaAproveitarPerfil.value;
    ExecSQL;
  end;
end;

procedure TDMCadPerfis.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_Perfis.open;
end;

procedure TDMCadPerfis.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMCadPerfis := self;
end;

procedure TDMCadPerfis.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if C_TabelaPerfil.Value <= 10 then begin
    DlgMsg.ShowMsg(809);
  	bSkip := true;
  end;
end;

end.

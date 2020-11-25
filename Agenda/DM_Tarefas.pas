unit DM_Tarefas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, variants;

type
  TDMTarefas = class(TDMManutencao)
    C_TabelaTAREFA: TIntegerField;
    C_TabelaASSUNTO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaPREVISAO: TDateField;
    C_TabelaUSUORIGEM: TIntegerField;
    C_TabelaUSUDESTINO: TIntegerField;
    C_TabelaPRIORIDADE: TIntegerField;
    C_TabelaCONCLUIDO: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelalkUsuOrigem: TStringField;
    C_TabelalkUsuDestino: TStringField;
    C_TabelaDATACONCLUSAO: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_TabelaDATAChange(Sender: TField);
    procedure C_TabelaCONCLUIDOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTarefas: TDMTarefas;

implementation

uses DM_Projeto, Dlg_Tarefas, DM_Agenda;

{$R *.DFM}

procedure TDMTarefas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTarefas := Self;
end;

procedure TDMTarefas.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  // INCLUSÃO
  C_TabelaPRIORIDADE.Value := 1;
  C_TabelaUSUORIGEM.Value := DMProjeto.nFuncionario;
  C_TabelaCONCLUIDO.Value := 'N';
  C_TabelaDESATIVADO.Value := 'N';
  C_TabelaDATA.Value := Date;
  C_TabelaPREVISAO.Value := Date;
end;

procedure TDMTarefas.C_TabelaDATAChange(Sender: TField);
begin
  inherited;
	C_TabelaPrevisao.Value := C_TabelaData.Value;
end;

procedure TDMTarefas.C_TabelaCONCLUIDOChange(Sender: TField);
begin
  inherited;
  if C_TabelaConcluido.value = 'S' then
    C_TabelaDataConclusao.value := DMProjeto.dDataSistema
  else
    C_TabelaDataConclusao.AsVariant := null;
end;

end.

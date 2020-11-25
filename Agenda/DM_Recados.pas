unit DM_Recados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMRecados = class(TDMManutencao)
    C_TabelaRECADO: TIntegerField;
    C_TabelaDE: TIntegerField;
    C_TabelaPARA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaLIDO: TStringField;
    C_TabelacfDATA_HORA: TStringField;
    C_TabelaHORARIO: TIntegerField;
    C_TabelalkDE: TStringField;
    C_TabelalkPARA: TStringField;
    C_TabelaDATA: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QuemChamou: string;
    Incluindo: boolean;
  end;

var
  DMRecados: TDMRecados;

implementation

uses DM_Projeto, DM_Agenda;

{$R *.DFM}

procedure TDMRecados.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRecados := Self;
end;

procedure TDMRecados.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_TabelacfDATA_HORA.Value := C_TabelaDATA.AsString +' ('+ DMAgenda.IntegerToHora(C_TabelaHORARIO.Value,DMProjeto.bFormatoAMPM)+ ')';
end;

procedure TDMRecados.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_TabelaLIDO.Value := 'N';
  C_TabelaDE.Value := DMProjeto.nFuncionario;
  C_TabelaDATA.Value := Date;
  C_TabelaHORARIO.Value := DMAgenda.HoraToInteger(FormatDateTime('hh:mm',Time),false);
end;

end.

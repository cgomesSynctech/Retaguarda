unit DM_SaidasReferenciadas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMSaidasReferenciadas = class(TDMManutencao)
        C_TabelaSAIDAREFERENCIADA: TIntegerField;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelaSAIDA: TIntegerField;
        C_TabelaPDV: TIntegerField;
        C_TabelaTIPODOCUMENTO: TIntegerField;
        C_TabelaCHAVEACESSO: TStringField;
        C_TabelaMODELO: TStringField;
        C_TabelaECF: TStringField;
        C_TabelaCOO: TStringField;
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    private
        { Private declarations }
    public
        saida, empresa, pdv: integer;
        { Public declarations }
    end;

var
    DMSaidasReferenciadas: TDMSaidasReferenciadas;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TDMSaidasReferenciadas.DMComponentPesquisar1_Iniciar(
    Sender: TObject; var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    Where := replace(Uppercase(Where), 'WHERE', 'where saida = ' + InttoStr(saida) + ' and empresa = ' + InttoStr(empresa) + ' and pdv = ' + InttoStr(pdv) + ' --');
end;

procedure TDMSaidasReferenciadas.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaTIPODOCUMENTO.Value := 1;
end;

procedure TDMSaidasReferenciadas.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMSaidasReferenciadas := Self;
end;

procedure TDMSaidasReferenciadas.DMComponentAntesDeIniciar(
    Sender: TObject);
begin
    inherited;
    saida := 0;
    empresa := 0;
    pdv := 0;
end;

procedure TDMSaidasReferenciadas.DMComponentGravar1_Iniciar(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    if (C_TabelaSAIDAREFERENCIADA.Value <= 0) then
        C_TabelaSAIDAREFERENCIADA.Value := DMProjeto.NextID('IDGLOBAL', 1);

    C_TabelaEMPRESA.Value := empresa;
    C_TabelaPDV.Value := pdv;
    C_TabelaSAIDA.Value := saida;
end;

end.

 
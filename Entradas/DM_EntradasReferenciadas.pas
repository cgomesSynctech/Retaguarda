unit DM_EntradasReferenciadas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMEntradasReferenciadas = class(TDMManutencao)
        C_TabelaENTRADAREFERENCIADA: TIntegerField;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelaENTRADA: TIntegerField;
        C_TabelaPDV: TIntegerField;
        C_TabelaTIPODOCUMENTO: TIntegerField;
        C_TabelaCHAVEACESSO: TStringField;
        C_TabelaMODELO: TStringField;
        C_TabelaECF: TStringField;
        C_TabelaCOO: TStringField;
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure C_TabelaNewRecord(DataSet: TDataSet);

    private
        { Private declarations }
    public
        entrada, empresa, pdv: integer;
        { Public declarations }
    end;

var
    DMEntradasReferenciadas: TDMEntradasReferenciadas;

implementation

{$R *.dfm}

uses DM_Projeto, Frm_EntradasReferenciadas, funcoes;

procedure TDMEntradasReferenciadas.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMEntradasReferenciadas := Self;
end;

procedure TDMEntradasReferenciadas.DMComponentGravar1_Iniciar(
    Sender: TObject; var bSkip: Boolean);
begin
    inherited;
    if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    if (C_TabelaENTRADAREFERENCIADA.Value <= 0) then
        C_TabelaENTRADAREFERENCIADA.Value := DMProjeto.NextID('IDGLOBAL', 1);

    C_TabelaEMPRESA.Value := empresa;
    C_TabelaPDV.Value := pdv;
    C_TabelaENTRADA.Value := entrada;
end;

procedure TDMEntradasReferenciadas.DMComponentPesquisar1_Iniciar(
    Sender: TObject; var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    Where := replace(Uppercase(Where), 'WHERE', 'where entrada = ' + InttoStr(entrada) + ' and empresa = ' + InttoStr(empresa) + ' and pdv = ' + InttoStr(pdv) + ' --');
end;

procedure TDMEntradasReferenciadas.DMComponentAntesDeIniciar(
    Sender: TObject);
begin
    inherited;
    entrada := 0;
    empresa := 0;
    pdv := 0;
end;

procedure TDMEntradasReferenciadas.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    //C_TabelaTIPODOCUMENTO.Value := 1;
    //Setando o valor padrão para nota fiscal ByKleber
    C_TabelaTIPODOCUMENTO.Value := 2;
end;

end.


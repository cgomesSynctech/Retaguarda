unit DM_MateriasPrimasIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMMateriasPrimasIndustria = class(TDMManutencao)
        C_TabelaMATERIAPRIMA: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaOBSERVACAO: TStringField;

        procedure DataModuleCreate(Sender: TObject);
        procedure GeraCodigo(sCodigo: string);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMMateriasPrimasIndustria: TDMMateriasPrimasIndustria;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMMateriasPrimasIndustria.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMMateriasPrimasIndustria := Self;
end;

procedure TDMMateriasPrimasIndustria.GeraCodigo(sCodigo: string);
var
    xID, xCasas: integer;
begin
    if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(sCodigo) = '') do
                begin
                    xID := DMProjeto.NextID('IDGLOBAL', 1);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    sCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    DMMateriasPrimasIndustria.C_TabelaCODIGO.Value := sCodigo;
end;

end.


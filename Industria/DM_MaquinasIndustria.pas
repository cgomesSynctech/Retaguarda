unit DM_MaquinasIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMMaquinasIndustria = class(TDMManutencao)
        C_TabelaMAQUINA: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaUNIDADECONSUMO: TStringField;
        C_TabelaCUSTOUNITARIO: TBCDField;
        C_TabelaTIPOMAQUINA: TIntegerField;
        Q_TiposMaquinas: TIBQuery;
        P_TiposMaquinas: TDataSetProvider;
        C_TiposMaquinas: TClientDataSet;
        C_TiposMaquinasTIPOMAQUINA: TIntegerField;
        C_TiposMaquinasDESCRICAO: TStringField;
        C_TabelalkTiposMaquina: TStringField;

        Q_Unidades: TIBQuery;
        P_Unidades: TDataSetProvider;
        C_Unidades: TClientDataSet;
        C_UnidadesUNIDADE: TStringField;
        C_UnidadesDESCRICAO: TStringField;
    C_TabelalkUnidade: TStringField;
    C_TabelaOBSERVACAO: TStringField;

        procedure DataModuleCreate(Sender: TObject);
        procedure GeraCodigo(sCodigo: string);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMMaquinasIndustria: TDMMaquinasIndustria;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMMaquinasIndustria.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMMaquinasIndustria := Self;
end;

procedure TDMMaquinasIndustria.GeraCodigo(sCodigo: string);
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
    DMMaquinasIndustria.C_TabelaCODIGO.Value := sCodigo;
end;

end.


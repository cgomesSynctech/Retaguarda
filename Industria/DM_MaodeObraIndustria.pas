unit DM_MaodeObraIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMMaodeObraIndustria = class(TDMManutencao)
        C_TabelaMAODEOBRA: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaDESCRICAODETALHADA: TStringField;
        C_TabelaUNIDADE: TStringField;
        Q_Unidades: TIBQuery;
        P_Unidades: TDataSetProvider;
        C_Unidades: TClientDataSet;
        C_UnidadesUNIDADE: TStringField;
        C_UnidadesDESCRICAO: TStringField;
        C_TabelalkUnidade: TStringField;

        procedure DataModuleCreate(Sender: TObject);
        procedure GeraCodigo(sCodigo: string);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMMaodeObraIndustria: TDMMaodeObraIndustria;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMMaodeObraIndustria.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMMaodeObraIndustria := Self;
end;

procedure TDMMaodeObraIndustria.GeraCodigo(sCodigo: string);
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
    DMMaodeObraIndustria.C_TabelaCODIGO.Value := sCodigo;
end;

end.


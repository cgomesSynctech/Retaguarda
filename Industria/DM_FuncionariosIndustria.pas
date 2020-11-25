unit DM_FuncionariosIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMFuncionariosIndustria = class(TDMManutencao)
        Q_Cargos: TIBQuery;
        P_Cargos: TDataSetProvider;
        C_Cargos: TClientDataSet;
        C_CargosCARGO: TIntegerField;
        C_CargosDESCRICAO: TStringField;
        C_TabelaFUNCIONARIO: TIntegerField;
        C_TabelaNOME: TStringField;
        C_TabelaCODIGO: TStringField;
        C_TabelalkCargo: TStringField;
        C_TabelaCUSTOHORA: TBCDField;
        Q_MaodeObra: TIBQuery;
        P_MaodeObra: TDataSetProvider;
        C_MaodeObra: TClientDataSet;
        C_MaodeObraMAODEOBRA: TIntegerField;
        C_MaodeObraDESCRICAO: TStringField;
        C_MaodeObraDS: TDataSource;
        Q_MaosdeObraFuncionarios: TIBQuery;
        C_MaosdeObraFuncionarios: TClientDataSet;
        C_MaosdeObraFuncionariosDS: TDataSource;
        C_TabelaQ_MaosdeObraFuncionarios: TDataSetField;
        C_MaosdeObraFuncionariosMAODEOBRA: TIntegerField;
        C_MaosdeObraFuncionariosFUNCIONARIO: TIntegerField;
        U_MaosdeObraFuncionarios: TIBUpdateSQL;
        C_MaosdeObraFuncionarioslkMaodeObra: TStringField;
        C_MaosdeObraFuncionariosMAODEOBRAFUNCIONARIO: TIntegerField;
        procedure DataModuleCreate(Sender: TObject);
        procedure GeraCodigo(sCodigo: string);
        procedure C_MaosdeObraFuncionariosNewRecord(DataSet: TDataSet);
    private
        { Private declarations }
    public
        { Public declarations }

    end;

var
    DMFuncionariosIndustria: TDMFuncionariosIndustria;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMFuncionariosIndustria.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMFuncionariosIndustria := Self;
end;

procedure TDMFuncionariosIndustria.GeraCodigo(sCodigo: string);
var
    xID, xCasas: integer;
begin
    if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(sCodigo) = '') do
                begin
                    xID := DMProjeto.NextID('IDCODIGOFUNCIONARIO', 1);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    sCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    DMFuncionariosIndustria.C_TabelaCODIGO.Value := sCodigo;
end;

procedure TDMFuncionariosIndustria.C_MaosdeObraFuncionariosNewRecord(
    DataSet: TDataSet);
begin
    inherited;
    C_MaosdeObraFuncionarios.FieldByName('MAODEOBRAFUNCIONARIO').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
end;

end.


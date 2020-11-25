unit DM_Producoes;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMProducao = class(TDMManutencao)
        C_TabelaPRODUCAO: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaINSUMOPRODUZIDO: TIntegerField;
        C_TabelaFAVORECIDO: TIntegerField;
        C_TabelaDTINICIO: TDateTimeField;
        C_TabelaDTFIM: TDateTimeField;
        C_TabelaCUSTO: TBCDField;
        C_TabelaVALIDADE: TIntegerField;
    Q_Maquinas: TIBQuery;
    P_Maquinas: TDataSetProvider;
    C_Maquinas: TClientDataSet;
    C_MaquinasDS: TDataSource;
    Q_ProducoesMaquinas: TIBQuery;
    C_ProducoesMaquinas: TClientDataSet;
    C_ProducoesMaquinasDS: TDataSource;
    U_ProducoesMaquinas: TIBUpdateSQL;
    C_MaquinasMAQUINA: TIntegerField;
    C_MaquinasDESCRICAO: TStringField;
    C_TabelaQ_ProducoesMaquinas: TDataSetField;
    C_ProducoesMaquinasPRODUCAOMAQUINA: TIntegerField;
    C_ProducoesMaquinasPRODUCAO: TIntegerField;
    C_ProducoesMaquinasMAQUINA: TIntegerField;
    C_ProducoesMaquinasQUANTIDADEUTILIZADA: TBCDField;
    C_ProducoesMaquinasCUSTO: TBCDField;
    C_ProducoesMaquinasDTINICIO: TDateTimeField;
    C_ProducoesMaquinasDTFIM: TDateTimeField;
    C_ProducoesMaquinaslkMaquinasIndustria: TStringField;
    C_TabelaOBSERVACAO: TStringField;
    Q_Insumos: TIBQuery;
    P_Insumos: TDataSetProvider;
    C_Insumos: TClientDataSet;
    C_InsumosINSUMO: TIntegerField;
    C_InsumosDESCRICAO: TStringField;
    C_TabelalkInsumos: TStringField;

        procedure GeraCodigo(sCodigo: string);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ProducoesMaquinasNewRecord(DataSet: TDataSet);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMProducao: TDMProducao;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMProducao.GeraCodigo(sCodigo: string);
var
    xID, xCasas: integer;
begin
    if Trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(sCodigo) = '') do
                begin
                    xID := DMProjeto.NextID('CODPRODUCAO_INDUSTRIA', 1);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    sCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    DMProducao.C_TabelaCODIGO.Value := sCodigo;
end;

procedure TDMProducao.DataModuleCreate(Sender: TObject);
begin
  inherited;
        DMProducao := self;
end;

procedure TDMProducao.C_ProducoesMaquinasNewRecord(DataSet: TDataSet);
begin
  inherited;
        C_ProducoesMaquinas.FieldByName('PRODUCAOMAQUINA').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
end;

end.


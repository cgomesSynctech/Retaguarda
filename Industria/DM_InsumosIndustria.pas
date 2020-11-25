unit DM_InsumosIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMInsumosIndustria = class(TDMManutencao)
        C_TabelaINSUMO: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaUNIDADE: TStringField;
        C_TabelaQUANTIDADEMINIMAPRODUCAO: TBCDField;
        C_TabelaTIPOINSUMO: TIntegerField;
        C_TabelaOBSERVACAO: TStringField;
        Q_Unidades: TIBQuery;
        P_Unidades: TDataSetProvider;
        C_Unidades: TClientDataSet;
        C_UnidadesUNIDADE: TStringField;
        C_UnidadesDESCRICAO: TStringField;
        C_TabelalkUnidade: TStringField;
        Q_TiposInsumos: TIBQuery;
        P_TiposInsumos: TDataSetProvider;
        C_TiposInsumos: TClientDataSet;
        C_TiposInsumosTIPOINSUMO: TIntegerField;
        C_TiposInsumosDESCRICAO: TStringField;
        C_TabelalkTipoInsumo: TStringField;
        Q_MaodeObra: TIBQuery;
        P_MaodeObra: TDataSetProvider;
        C_MaodeObra: TClientDataSet;
        Q_InsumosMaodeObra: TIBQuery;
        C_InsumosMaodeObra: TClientDataSet;
        C_InsumosMaodeObraDS: TDataSource;
        U_InsumosMaodeObra: TIBUpdateSQL;
        C_TabelaQ_InsumosMaodeObra: TDataSetField;
        C_MaodeObraDS: TDataSource;
        C_InsumosMaodeObraINSUMO: TIntegerField;
        C_InsumosMaodeObraMAODEOBRA: TIntegerField;
        C_InsumosMaodeObraQUANTIDADEFUNCIONARIOS: TIntegerField;
        C_MaodeObraMAODEOBRA: TIntegerField;
        C_MaodeObraDESCRICAO: TStringField;
        C_InsumosMaodeObralkMaoObra: TStringField;
        C_InsumosMaodeObraINSUMOMAODEOBRA: TIntegerField;
        C_InsumosMaodeObraHORASSERVICO: TIntegerField;
        Q_InsumosTiposMaquinas: TIBQuery;
        C_InsumosTiposMaquinas: TClientDataSet;
        C_InsumosTiposMaquinasDS: TDataSource;
        C_TabelaQ_InsumosTiposMaquinas: TDataSetField;
        C_InsumosTiposMaquinasINSUMOTIPOMAQUINA: TIntegerField;
        C_InsumosTiposMaquinasINSUMO: TIntegerField;
        C_InsumosTiposMaquinasTIPOMAQUINA: TIntegerField;
        C_InsumosTiposMaquinasQUANTIDADE: TIntegerField;
        U_InsumosTiposMaquinas: TIBUpdateSQL;
        Q_TiposMaquinas: TIBQuery;
        P_TiposMaquinas: TDataSetProvider;
        C_TiposMaquinas: TClientDataSet;
        C_TiposMaquinasDS: TDataSource;
        C_TiposMaquinasTIPOMAQUINA: TIntegerField;
        C_TiposMaquinasDESCRICAO: TStringField;
        C_InsumosTiposMaquinaslkTipoMaquina: TStringField;
        C_InsumosTiposMaquinasTEMPONECESSARIO: TIntegerField;
        Q_MateriasPrimas: TIBQuery;
        P_MateriasPrimas: TDataSetProvider;
        C_MateriasPrimas: TClientDataSet;
        C_MateriasPrimasDS: TDataSource;
        C_MateriasPrimasMATERIAPRIMA: TIntegerField;
        C_MateriasPrimasDESCRICAO: TStringField;
        Q_InsumosMateriasPrimas: TIBQuery;
        C_InsumosMateriasPrimas: TClientDataSet;
        C_InsumosMateriasPrimasDS: TDataSource;
        U_InsumosMateriasPrimas: TIBUpdateSQL;
        C_TabelaQ_InsumosMateriasPrimas: TDataSetField;
        C_InsumosMateriasPrimasINSUMOMATERIAPRIMA: TIntegerField;
        C_InsumosMateriasPrimasINSUMO: TIntegerField;
        C_InsumosMateriasPrimasMATERIAPRIMA: TIntegerField;
        C_InsumosMateriasPrimasQUANTIDADE: TBCDField;
        C_InsumosMateriasPrimaslkMateriaPrima: TStringField;
        Q_ComposicaoInsumos: TIBQuery;
        C_ComposicaoInsumos: TClientDataSet;
        C_ComposicaoInsumosDS: TDataSource;
        U_ComposicaoInsumos: TIBUpdateSQL;
        C_TabelaQ_ComposicaoInsumos: TDataSetField;
        Q_Insumos: TIBQuery;
        P_Insumos: TDataSetProvider;
        C_Insumos: TClientDataSet;
        C_InsumosDS: TDataSource;
        C_InsumosINSUMO: TIntegerField;
        C_InsumosDESCRICAO: TStringField;
    C_ComposicaoInsumosINSUMO: TIntegerField;
    C_ComposicaoInsumosINSUMOUTILIZADO: TIntegerField;
    C_ComposicaoInsumosQUANTIDADE: TBCDField;
    C_ComposicaoInsumosORDEMPRODUCAO: TIntegerField;
    C_ComposicaoInsumosCOMPOSICAOINSUMO: TIntegerField;
    C_ComposicaoInsumoslkInsumos: TStringField;

        procedure DataModuleCreate(Sender: TObject);
        procedure GeraCodigo(sCodigo: string);
        procedure C_InsumosMaodeObraNewRecord(DataSet: TDataSet);
        procedure C_InsumosTiposMaquinasNewRecord(DataSet: TDataSet);
        procedure C_InsumosMateriasPrimasNewRecord(DataSet: TDataSet);
        procedure C_ComposicaoInsumosNewRecord(DataSet: TDataSet);

    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMInsumosIndustria: TDMInsumosIndustria;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMInsumosIndustria.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMInsumosIndustria := Self;
end;

procedure TDMInsumosIndustria.GeraCodigo(sCodigo: string);
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
    DMInsumosIndustria.C_TabelaCODIGO.Value := sCodigo;

end;

procedure TDMInsumosIndustria.C_InsumosMaodeObraNewRecord(
    DataSet: TDataSet);
begin
    inherited;
    C_InsumosMaodeObra.FieldByName('INSUMOMAODEOBRA').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
end;

procedure TDMInsumosIndustria.C_InsumosTiposMaquinasNewRecord(
    DataSet: TDataSet);
begin
    inherited;
    C_InsumosTiposMaquinas.FieldByName('INSUMOTIPOMAQUINA').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
end;

procedure TDMInsumosIndustria.C_InsumosMateriasPrimasNewRecord(
    DataSet: TDataSet);
begin
    inherited;
    C_InsumosMateriasPrimas.FieldByName('INSUMOMATERIAPRIMA').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
end;

procedure TDMInsumosIndustria.C_ComposicaoInsumosNewRecord(
    DataSet: TDataSet);
begin
    inherited;
    C_ComposicaoInsumos.FieldByName('COMPOSICAOINSUMO').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
end;

end.


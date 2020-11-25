unit DM_MontagensProduto;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMMontagensProduto = class(TDMManutencao)
        C_ItensFilhosDS: TDataSource;
        C_ItensFilhos: TClientDataSet;
        Q_ItensFilhos: TIBQuery;
        C_TabelaQ_ItensFilhos: TDataSetField;
        C_TabelaMONTAGEM: TIntegerField;
        C_TabelaDATA: TDateField;
        C_TabelaMONTADOR: TIntegerField;
        C_TabelaITEM: TIntegerField;
        C_TabelaQTDESOLIC: TBCDField;
        C_TabelaQTDEPRODUZIDO: TBCDField;
        C_TabelaSTATUS: TIntegerField;
        C_TabelaOBS: TStringField;
        C_TabelaDATACONCLUSAO: TDateField;
        C_TabelaHORACONCLUSAO: TStringField;
        C_TabelaPREVISAOCONCLUSAO: TDateField;
        C_TabelaDATAENTREGA: TDateField;
        C_TabelaTIPO: TStringField;
        C_TabelaURGENTE: TStringField;
        C_TabelaNUMERO: TStringField;
        C_TabelaUNIDADE: TStringField;
        C_TabelaFATOR: TFloatField;
        C_TabelaSAIDAITEM: TIntegerField;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelaORIGEMREPLIC: TStringField;
        C_ItensFilhosMONTAGEMFILHO: TIntegerField;
        C_ItensFilhosMONTAGEM: TIntegerField;
        C_ItensFilhosITEM: TIntegerField;
        C_ItensFilhosQUANTIDADE: TBCDField;
        C_ItensFilhosUNIDADE: TStringField;
        C_ItensFilhosFATOR: TFloatField;
        C_ItensFilhosQTDE: TBCDField;
        C_ItensFilhosEMPRESA: TIntegerField;
        C_ItensFilhosORIGEMREPLIC: TStringField;
        C_ItensFilhosCODIGO: TStringField;
        C_ItensFilhosDESCRICAO: TStringField;
        C_ItensFilhos_icSelecionado: TIntegerField;
        U_ItensFilhos: TIBUpdateSQL;
        C_ItensFilhosCUSTOMEDIO: TFloatField;
        C_ItensFilhosPRECO: TBCDField;
        C_ItensFilhosicSubTotalPreco: TCurrencyField;
        C_ItensFilhosTABELAPRECO1: TBCDField;
        C_ItensFilhosTABELAPRECO2: TBCDField;
        C_ItensFilhosTABELAPRECO3: TBCDField;
        C_ItensFilhosFABRICANTE: TStringField;
        C_ItensFilhosQUANTIDADETOTAL: TBCDField;
        C_ItensFilhosicSubTotalTabela1: TCurrencyField;
        C_ItensFilhosicSubTotalTabela2: TCurrencyField;
        C_ItensFilhosicSubTotalTabela3: TCurrencyField;
        C_TabelaCOD_ITEM: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_ItensFilhosCUSTOCONTABIL: TFloatField;
        C_ItensFilhosicSubTotalContabil: TCurrencyField;
        C_ItensFilhosQTDSOLICITAR: TCurrencyField;
        C_ItensFilhosESTOQUEATUAL: TBCDField;
    C_TabelaCUSTOCONTABILITEM: TBCDField;
        //function SelectPesquisa(idMontagem: integer): string;
        procedure DMComponentAntesDeIniciar(Sender: TObject);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_ItensFilhosITEMChange(Sender: TField);
        procedure C_ItensFilhosNewRecord(DataSet: TDataSet);
        procedure C_ItensFilhosCalcFields(DataSet: TDataSet);
        procedure C_ItensFilhosBeforeOpen(DataSet: TDataSet);
    private
        { Private declarations }
    public
        idMontagem, statusMontagem: integer;
        itemProduzido: string;
        { Public declarations }
    end;

var
    DMMontagensProduto: TDMMontagensProduto;

implementation

uses DM_Projeto, TDM_Projeto, funcoes;

{$R *.dfm}

procedure TDMMontagensProduto.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    idMontagem := 0;
end;

procedure TDMMontagensProduto.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMMontagensProduto := Self;
end;

procedure TDMMontagensProduto.DMComponentPesquisar1_Iniciar(
    Sender: TObject; var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    //Where := replace(Uppercase(Where), 'montagemfilho', 'montagem');
end;

procedure TDMMontagensProduto.C_ItensFilhosITEMChange(Sender: TField);
var
    i: integer;
begin
    inherited;
    C_ItensFilhosCodigo.value := DMProjeto.C_LocalizarItens.FieldByName('codigo').AsString;
    C_ItensFilhosDescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').AsString;
    C_ItensFilhosUnidade.value := DMProjeto.C_LocalizarItens.FieldByName('unidade').AsString;
    C_ItensFilhosCUSTOMEDIO.Value := DMProjeto.C_LocalizarItens.FieldByName('customedio').AsCurrency;
    C_ItensFilhosCUSTOCONTABIL.Value := DMProjeto.C_LocalizarItens.FieldByName('custocontabil').AsCurrency;
    C_ItensFilhosPRECO.Value := DMProjeto.C_LocalizarItens.FieldByName('preco').AsCurrency;
    C_ItensFilhosFATOR.Value := DMProjeto.C_LocalizarItens.FieldByName('FatorUndVenda').AsCurrency;
    C_ItensFilhosFABRICANTE.Value := DMProjeto.C_LocalizarItens.FieldByName('descfabricante').AsString;

    for i := 1 to ContaStrings(DMProjeto.sTabelasPreco, ';') do
        begin
            with DMProjeto.Q_SQL2 do
                begin
                    Close;
                    SQL.Text := 'select cast(pp.preco as numeric(15, 3)) as preco from produtospreco pp where pp.item = :item and pp.tabelapreco = :tabela';
                    ParamByName('item').AsInteger := DMProjeto.C_LocalizarItens.FieldByName('ITEM').AsInteger;
                    ParamByName('tabela').AsInteger := StrToInt(SeparaStrings(DMProjeto.sTabelasPreco, ';', i));
                    Open;

                    case i of
                        1: C_ItensFilhosTABELAPRECO1.Value := FieldByName('preco').AsCurrency;
                        2: C_ItensFilhosTABELAPRECO2.Value := FieldByName('preco').AsCurrency;
                        3: C_ItensFilhosTABELAPRECO3.Value := FieldByName('preco').AsCurrency;
                    else
                    end;

                end;
        end;

end;

procedure TDMMontagensProduto.C_ItensFilhosNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_ItensFilhosMONTAGEMFILHO.Value := DMProject.NextIDGlobal;
    C_ItensFilhosQUANTIDADE.Value := 1;
    C_ItensFilhosQTDE.Value := C_TabelaQTDESOLIC.Value;
    C_ItensFilhosEMPRESA.Value := -1;
end;

procedure TDMMontagensProduto.C_ItensFilhosCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ItensFilhosicSubTotalPreco.Value := (C_ItensFilhosPRECO.AsCurrency * C_ItensFilhosQUANTIDADETOTAL.AsCurrency);
    C_ItensFilhosicSubTotalTabela1.Value := (C_ItensFilhosTABELAPRECO1.AsCurrency * C_ItensFilhosQUANTIDADETOTAL.AsCurrency);
    C_ItensFilhosicSubTotalTabela2.Value := (C_ItensFilhosTABELAPRECO2.AsCurrency * C_ItensFilhosQUANTIDADETOTAL.AsCurrency);
    C_ItensFilhosicSubTotalTabela3.Value := (C_ItensFilhosTABELAPRECO3.AsCurrency * C_ItensFilhosQUANTIDADETOTAL.AsCurrency);
    C_ItensFilhosicSubTotalContabil.Value := Truncar((C_ItensFilhosCUSTOCONTABIL.AsCurrency * C_ItensFilhosQUANTIDADETOTAL.AsCurrency), 2);

    { Felipe - Implementação para coluna Qtd. Solicitar (30/11/2016) }
    if (C_ItensFilhosESTOQUEATUAL.Value <= 0) then
        begin
            C_ItensFilhosQTDSOLICITAR.AsCurrency := C_ItensFilhosQUANTIDADETOTAL.AsCurrency;
        end;

    if (C_ItensFilhosESTOQUEATUAL.Value < C_ItensFilhosQUANTIDADETOTAL.Value) then
        C_ItensFilhosQTDSOLICITAR.AsCurrency := C_ItensFilhosQUANTIDADETOTAL.Value - C_ItensFilhosESTOQUEATUAL.Value
    else
        C_ItensFilhosQTDSOLICITAR.AsCurrency := 0;
end;

procedure TDMMontagensProduto.C_ItensFilhosBeforeOpen(DataSet: TDataSet);
var
    i, qtdTabelas: integer;
    index: string;
begin
    inherited;
    qtdTabelas := ContaStrings(DMProjeto.sTabelasPreco, ';');

    if (qtdTabelas > 3) then
        qtdTabelas := 3;

    for i := 1 to qtdTabelas do
        begin
            with Q_ItensFilhos do
                begin
                    index := IntToStr(i);
                    Close;
                    SQL.Text := Replace(SQL.Text, PreencherStr(index, index, 3), SeparaStrings(DMProjeto.sTabelasPreco, ';', i));
                end;
        end;
end;

end.

 
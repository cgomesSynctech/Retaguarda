unit DM_Taxs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMTaxs = class(TDMManutencao)
    Q_TaxItens: TIBQuery;
    Q_TaxItensDS: TDataSource;
    U_TaxItens: TIBUpdateSQL;
    Q_TaxItensTAXITEM: TIntegerField;
    Q_TaxItensTAX: TIntegerField;
    Q_TaxItensTAXAGENCIA: TIntegerField;
    Q_TaxAgencias: TIBQuery;
    Q_TaxAgenciasDS: TDataSource;
    C_TabelaTAX: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TaxItens: TClientDataSet;
    C_TaxItensProvider: TDataSetProvider;
    Q_TabelaTAX: TIntegerField;
    Q_TabelaDESCRICAO: TIBStringField;
    C_TabelaQ_TaxItens: TDataSetField;
    C_TaxItensTAXITEM: TIntegerField;
    C_TaxItensTAX: TIntegerField;
    C_TaxItensTAXAGENCIA: TIntegerField;
    Q_TabelaPERCENTUAL: TIBBCDField;
    C_TabelaPERCENTUAL: TBCDField;
    Q_TaxAgenciasProvider: TDataSetProvider;
    C_TaxAgencias: TClientDataSet;
    C_TaxAgenciasTAXAGENCIA: TIntegerField;
    C_TaxAgenciasDESCRICAO: TStringField;
    C_TaxAgenciasPERCENTUAL: TBCDField;
    C_TaxAgenciasFORNECEDOR: TIntegerField;
    C_TaxAgenciasCONTA: TIntegerField;
    C_TaxItensDescTaxAgencia: TStringField;
    C_TaxItensPERCENTUAL: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TaxItensNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTaxs: TDMTaxs;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMTaxs.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMTaxs := self;
end;

procedure TDMTaxs.C_TaxItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TaxItensTaxItem.Value := -8888;
end;

procedure TDMTaxs.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var nPerc : single;  
begin
  inherited;
	with C_TaxItens do begin
  	First;
    nPerc := 0;
    while not EOF do begin
      nPerc := nPerc + C_TaxItensPercentual.Value;
      Next;
    end;
    C_Tabela.Edit;
    C_TabelaPercentual.Value := nPerc;
  end;
end;

procedure TDMTaxs.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_TaxItens.append;
end;

procedure TDMTaxs.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaTax.value,'taxs','tax',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Tax']);
    raise Exception.Create('@@');
  end;
end;

end.

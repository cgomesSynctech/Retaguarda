unit DM_FormasPagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, TS_LastDataObject, Variants;

type
  TDMFormasPagamento = class(TDMManutencao)
    C_TabelaFORMAPAGAMENTO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaREFCREDITO: TStringField;
    C_TabelaCARENCIACREDITO: TIntegerField;
    C_TabelaCONTALIBERACAO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaESPECIE: TIntegerField;
    C_TabelaSIGLA: TStringField;
    C_TabelaCODIGOECF: TStringField;
    C_TabelaMELHORDIACOMPRA: TIntegerField;
    C_TabelaFORNECEDOR: TIntegerField;
    Q_Especies: TIBQuery;
    C_TabelaDescEspecie: TStringField;
    C_TabelaDescContaCart: TStringField;
    C_TabelaMENORPARCELA: TBCDField;
    C_TabelaENCARGOS: TBCDField;
    C_Especies: TClientDataSet;
    P_Especies: TDataSetProvider;
    C_EspeciesESPECIE: TIntegerField;
    C_EspeciesDESCRICAO: TStringField;
    C_EspeciesSIGLA: TStringField;
    C_EspeciesDESATIVADO: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaNOME: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_EspeciesDS: TDataSource;
    C_TabelaCONTA: TIntegerField;
    C_TabelaDescContaCartao: TStringField;
    C_TabelaCONTARECEBER: TIntegerField;
    C_TabelaDescContaReceber: TStringField;
    C_TabelaCONTAPAGAR: TIntegerField;
    C_TabelaDescContaPagar: TStringField;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasSALDO: TBCDField;
    C_ContasDESCTIPO: TStringField;
    C_ContasCODIGOREDUZIDO: TStringField;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_ContasDS: TDataSource;
    C_TabelaINTERVALOPARCELAS: TIntegerField;
    C_Despesa: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    BCDField1: TBCDField;
    StringField2: TStringField;
    StringField3: TStringField;
    Q_Despesa: TIBQuery;
    P_Despesa: TDataSetProvider;
    C_DespesaDs: TDataSource;
    C_TabelalkpContaDespesa: TStringField;
    C_TabelaCARTAOTEF: TStringField;
    C_TabelaBANDEIRACARTAO: TIntegerField;
    Q_BandeirasCartao: TIBQuery;
    P_BandeirasCartao: TDataSetProvider;
    C_BandeirasCartao: TClientDataSet;
    C_BandeirasCartaoBANDEIRA: TIntegerField;
    C_BandeirasCartaoDESCRICAO: TStringField;
    C_BandeirasCartaoDESATIVADO: TStringField;
    C_TabelalkBandeirasCartao: TStringField;
    procedure C_TabelaBeforePost(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure C_TabelaAfterPost(DataSet: TDataSet);
    procedure DMComponentGravar4_AposCommit(Sender: TObject);
    procedure DMComponentRefresh(Sender: TObject;
      aLastDataObject: TTS_LastDataObject);
  private
    { Private declarations }
  public
  	Especie : integer;
    { Public declarations }
  end;

var
  DMFormasPagamento: TDMFormasPagamento;

implementation

uses DM_Projeto, DM_Financeiro;

{$R *.DFM}

procedure TDMFormasPagamento.C_TabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (C_TabelaDesativado.Value='N') and
     (C_TabelaFormaPagamento.Value = -1) then
    raise exception.create('@Esta Forma de Pagamento não pode ser desativada!');

end;

procedure TDMFormasPagamento.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDesativado.Value 			:= 'N';
  C_TabelaRefCredito.Value 			:= 'P';
  C_TabelaCarenciaCredito.Value := 0;
  // C_TabelaContaLiberacao.Value 	:= 1;
  C_TabelaMenorParcela.Value 		:= 0;
  C_TabelaEncargos.Value 	 			:= 0;
  if Especie = 0 then
  	Especie := 3;
 	C_TabelaEspecie.Value				  := Especie;
  C_TabelaIntervaloParcelas.Value := 30;
end;

procedure TDMFormasPagamento.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMFormasPagamento := self;
end;

procedure TDMFormasPagamento.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if (C_TabelaEspecie.IsNull) then begin
    DlgMsg.ShowMsg(513,['o Tipo da Forma de Pagamento']);
  	bSkip := true;
    Exit;
  end;
	if (C_TabelaEspecie.Value = 3) and (C_TabelaContaLiberacao.IsNull) then begin
  	DlgMsg.ShowMsg( 568 );
    bSkip := true;
    Exit;
  end;
	if (C_TabelaEspecie.Value = 3) and (C_TabelaEncargos.IsNull) then begin
  	DlgMsg.ShowMsg( 569 );
    bSkip := true;
    Exit;
  end;
	if (C_TabelaEspecie.Value IN [3,50]) and (C_TabelaFornecedor.IsNull) then begin
    DlgMsg.ShowMsg(513,['o Fornecedor do Cartão']);
  	bSkip := true;
    Exit;
  end;
	if (C_TabelaEspecie.Value in [3,50]) and (C_TabelaCarenciaCredito.IsNull) then begin
    DlgMsg.ShowMsg(513,['o dia de vencimento do cartão']);
  	bSkip := true;
    Exit;
  end;
	if (C_TabelaEspecie.Value = 50) and (C_TabelaContaPagar.IsNull) then begin
    DlgMsg.ShowMsg(513,['a Conta do Cartão '+C_TabelaDescricao.AsString]);
  	bSkip := true;
    Exit;
  end;
end;

procedure TDMFormasPagamento.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
  var nReg : integer;
begin
  inherited;
    if C_TabelaEspecie.Value in [1,5,20] then begin
    	DlgMsg.ShowMsg( 914, [C_TabelaDescricao.Value] );
    bSkip := true;
    Exit;
  end;
end;

procedure TDMFormasPagamento.C_TabelaAfterPost(DataSet: TDataSet);
begin
  inherited;
  Especie := C_TabelaEspecie.Value;
end;

procedure TDMFormasPagamento.DMComponentGravar4_AposCommit(
  Sender: TObject);
begin
  inherited;
	with DMFinanceiro do begin
    if C_TabelaEspecie.Value = 3 then begin
  		C_CartoesCred.Close;
    	C_CartoesCred.Open;
    end else if C_TabelaEspecie.Value = 50 then begin
  		C_CartoesBus.Close;
    	C_CartoesBus.Open;
    end else if C_TabelaEspecie.Value in [10,30,40] then begin
  		C_OutrasForma.Close;
    	C_OutrasForma.Open;
    end;
  end;
end;

procedure TDMFormasPagamento.DMComponentRefresh(Sender: TObject;
  aLastDataObject: TTS_LastDataObject);
begin
  inherited;
  if UpperCase(aLastDataObject.TableName) = 'CONTAS' then begin
    C_Contas.Close;
    C_Contas.Open;
    C_Despesa.Close;
    C_Despesa.Open;
  end;
end;

end.

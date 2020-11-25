unit DM_FactoryEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade, Variants;

type
  TDMFactoryEmpresa = class(TDMManutencao)
    C_TabelaFACTORYCHEQUE: TIntegerField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaNOME: TStringField;
    Q_Cheques: TIBQuery;
    C_Cheques: TClientDataSet;
    C_ChequesDS: TDataSource;
    U_Cheques: TIBUpdateSQL;
    C_TabelaIDAPAGAR: TIntegerField;
    C_TabelaQ_Cheques: TDataSetField;
    C_ChequesFACTORYCHEQUEDET: TIntegerField;
    C_ChequesFACTORYCHEQUE: TIntegerField;
    C_ChequesCLIENTE: TIntegerField;
    C_ChequesNUMCHEQUE: TIntegerField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesBANCO: TIntegerField;
    C_ChequesVALOR: TBCDField;
    C_ChequesENCARGOS: TBCDField;
    C_ChequesAPAGAR: TBCDField;
    C_ChequesNOME: TStringField;
    C_ChequesDiasVencimento: TIntegerField;
    C_TabelaPERCENTUALJUROS: TBCDField;
    C_ChequesOBS: TStringField;
    Q_Bancos: TIBQuery;
    C_Bancos: TClientDataSet;
    P_Bancos: TDataSetProvider;
    C_BancosFAVORECIDO: TIntegerField;
    C_BancosNOME: TStringField;
    C_ChequesDescBanco: TStringField;
    C_TabelaIDARECEBER: TIntegerField;
    C_ChequesContaReceber: TIntegerField;
    C_ChequesTAXA: TBCDField;
    C_TabelaTAXA: TBCDField;
    C_ChequesIDDOC: TIntegerField;
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_ChequesVALORChange(Sender: TField);
    procedure C_ChequesENCARGOSChange(Sender: TField);
    procedure C_ChequesCalcFields(DataSet: TDataSet);
    procedure C_ChequesVENCIMENTOChange(Sender: TField);
    procedure C_ChequesAPAGARChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure DMComponentApagar_AntesApply(Sender: TObject);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaPERCENTUALJUROSChange(Sender: TField);
    procedure C_ChequesTAXAChange(Sender: TField);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nSeq : integer;
  public
    // Adriano
    function Calculo( Valor : Currency; Vencimento : TDateTime) : Currency;
    function ContabilidadeAtivado:boolean;
    procedure ContabilidadeDesativado;
    procedure CriaContabilidade;
    procedure Contabiliza;
    procedure MostraContabilidade;
    /////////////////////////////////
  end;

var
  DMFactoryEmpresa: TDMFactoryEmpresa;

implementation

uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDMFactoryEmpresa.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  nSeq := -1;
end;

procedure TDMFactoryEmpresa.C_ChequesNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ChequesFactoryChequeDet.Value := nSeq;
  C_ChequesTaxa.Value := 0;
  C_ChequesEncargos.Value := 0;
  C_ChequesValor.Value :=0;
  dec(nSeq);
end;

procedure TDMFactoryEmpresa.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_TabelaData.Value := DMProjeto.dDataSistema;
  C_TabelaPercentualJuros.Value := 0; //iif(DMProjeto.Parametro('PercentualJurosFactory')<>'',StrToFloat(DMProjeto.Parametro('PercentualJurosFactory')),0);
  C_TabelaTaxa.Value := 0;
end;

procedure TDMFactoryEmpresa.C_ChequesVALORChange(Sender: TField);
begin
  inherited;
//  if C_ChequesEncargos.Value = 1 then
 	C_ChequesEncargos.Value := iif(C_TabelaPercentualJuros.Value=0,0,(((C_TabelaPercentualJuros.Value/30*C_ChequesDiasVencimento.Value)/100)*C_ChequesValor.Value));
  if C_ChequesAPagar.Value > 0 then begin
  	C_ChequesAPagar.OnChange  := nil;
		C_ChequesAPagar.Value   	:= C_ChequesValor.Value - C_ChequesEncargos.Value - C_ChequesTaxa.Value;
  	C_ChequesAPagar.OnChange 	:= C_ChequesAPagarChange;
  end;
end;

procedure TDMFactoryEmpresa.C_ChequesENCARGOSChange(Sender: TField);
begin
  inherited;
  C_ChequesAPagar.OnChange := nil;
	C_ChequesAPagar.Value 	 := C_ChequesValor.Value - C_ChequesEncargos.Value - C_ChequesTaxa.Value;
  C_ChequesAPagar.OnChange := C_ChequesAPagarChange;
end;

procedure TDMFactoryEmpresa.C_ChequesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_Tabela.Active then begin
  	C_ChequesDiasVencimento.Value := iif(DMProjeto.PrimeiroDiaUtil( C_ChequesVencimento.Value )-C_TabelaData.Value<0,0,C_ChequesVencimento.Value-C_TabelaData.Value);

    C_ChequesContaReceber.value := DMFinanceiro.getContaReceber(0,C_TabelaData.value,C_ChequesVencimento.Value);
    if C_ChequesContaReceber.Value = 0 then
      C_ChequesContaReceber.Value := DMFinanceiro.nContaPadrao;
  end;
end;

procedure TDMFactoryEmpresa.C_ChequesVENCIMENTOChange(Sender: TField);
begin
  inherited;
	C_ChequesDiasVencimento.Value := iif(DMProjeto.PrimeiroDiaUtil( C_ChequesVencimento.Value )-C_TabelaData.Value<0,0,DMProjeto.PrimeiroDiaUtil( C_ChequesVencimento.Value )-C_TabelaData.Value);
end;

procedure TDMFactoryEmpresa.C_ChequesAPAGARChange(Sender: TField);
begin
  inherited;
  C_ChequesEncargos.onChange 	:= nil;
  C_ChequesEncargos.Value     := C_ChequesValor.Value - C_ChequesAPagar.Value;
  C_ChequesEncargos.onChange 	:= C_ChequesEncargosChange;
end;

procedure TDMFactoryEmpresa.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
  var nTotalAPagar, nTotalAReceber : Currency;
begin
  inherited;
	if C_Cheques.IsEmpty then begin
    DlgMsg.ShowMsg(929,['o(s) cheque(s)']);
  	bSkip := true;
    Exit;
  end;

	with C_Cheques do begin
  	DisableControls;
    First;
    nTotalAPagar := 0;
    nTotalAReceber := 0;
    while not EOF do begin
    	nTotalAPagar 	 	:= nTotalAPagar + C_ChequesAPagar.Value;
      nTotalAReceber	:= nTotalAReceber + C_ChequesValor.Value;
      Next;
    end;
    EnableControls;
  end;

  //nTotalAPagar := nTotalAPagar - nTotalAReceber*(C_TabelaTaxa.Value/100);
  if nTotalAPagar <= 0 then begin
    DlgMsg.ShowMsg(929,['o valor a pagar. Não pode ser zero ou negativo']);
  	bSkip := true;
    Exit;
  end;

  if nTotalAReceber <= 0 then begin
    DlgMsg.ShowMsg(929,['o valor do cheque. Não pode ser zero ou negativo']);
  	bSkip := true;
    Exit;
  end;

  if not C_TabelaIDAPagar.IsNull then begin
		with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'select faltapagar-valor from duplicatasapagar '+
      						'where id = :id';
      params[0].AsInteger := C_TabelaIDAPagar.AsInteger;
      open;
      if fields[0].AsCurrency <> 0 then begin
      	if DlgMsg.ShowMsg(1400) = 200 then begin
        	bSkip := true;
          exit;
        end;
      end;
    end;
  end;
end;

procedure TDMFactoryEmpresa.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMFactoryEmpresa := self;
end;

procedure TDMFactoryEmpresa.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  with DMProjeto.Q_SQL do begin
	  close;
    sql.text := 'select faltapagar-valor from duplicatasapagar '+
                'where id = :id';
    params[0].AsInteger := DMFactoryEmpresa.C_TabelaIDAPagar.AsInteger;
    open;
    if fields[0].AsCurrency <> 0 then begin
      if DlgMsg.ShowMsg(1400) = 200 then begin
        bSkip := true;
        exit;
      end;
    end;
  end;
end;

procedure TDMFactoryEmpresa.DMComponentApagar_AntesApply(Sender: TObject);
begin
  inherited;
  with DMProjeto.Q_SQL do begin

  	close;                                                 
    sql.text := 'execute procedure PP_ApagarRetiradasDuplicata (:duplicata)';
    parambyname('duplicata').asInteger := DMFactoryEmpresa.C_TabelaIDAPagar.AsInteger;
    execsql;

    close;
    sql.text := 'delete from duplicatasapagar where id = :duplicata';
    parambyname('duplicata').asInteger := DMFactoryEmpresa.C_TabelaIDAPagar.AsInteger;
    execsql;

    close;
    sql.text := 'execute procedure PP_ApagarDepositosTitulo(:titulo)';
    parambyname('titulo').asInteger := DMFactoryEmpresa.C_TabelaIDAReceber.AsInteger;
    execsql;
    close;

 	end;
end;

procedure TDMFactoryEmpresa.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
end;

function TDMFactoryEmpresa.ContabilidadeAtivado;
begin
  result := DMContabil <> nil;
end;

procedure TDMFactoryEmpresa.ContabilidadeDesativado;
begin
  DMContabil.FechaDatasets;
  DMContabil.Free;
end;

procedure TDMFactoryEmpresa.CriaContabilidade;
begin
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMFactoryEmpresa.Contabiliza;
begin
  DMContabil.ContabilizaFactoryEmpresa(C_TabelaFactoryCheque.value,C_Tabela,C_Cheques);
end;

procedure TDMFactoryEmpresa.MostraContabilidade;
begin
  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
end;

procedure TDMFactoryEmpresa.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
var  IDGerador, IDDoc : integer;
     nTotalAPagar, nTotalAReceber : Currency;
begin
  inherited;

	with C_Cheques do begin
  	DisableControls;
    First;
    nTotalAPagar := 0;
    nTotalAReceber := 0;
    while not EOF do begin
    	nTotalAPagar 	 	:= nTotalAPagar + C_ChequesAPagar.Value;
      nTotalAReceber	:= nTotalAReceber + C_ChequesValor.Value;
      Next;
    end;
    EnableControls;
  end;

  //nTotalAPagar := nTotalAPagar - nTotalAReceber*(C_TabelaTaxa.Value/100);

  {Inclusão}
  if C_TabelaIDAPagar.IsNull then begin

    if C_Tabela.State in [dsBrowse] then
    	C_Tabela.Edit;

    C_TabelaIDAPagar.Value := DMFinanceiro.Conta_A_Pagar( 1,
    																											nTotalAPagar,
                                                          C_TabelaData.Value, C_TabelaData.Value,
                                                          'Factory-Empresa',
                                                          0, // Natureza
                                                          C_TabelaFavorecido.Value,
                                                          0, // IDCompra
                                                          '',
                                                          51,
                                                          C_TabelaFactoryCheque.value );

    IDGerador := DMFinanceiro.Conta_A_Receber( 0,
    																					 nTotalAReceber,
                                               C_TabelaData.Value,
    																					 C_TabelaData.Value,
                                               'Factory-Empresa',
                                               C_TabelaFavorecido.Value,
                                               0, // Venda
                                               '',// Nota Fiscal
                                               51,
                                               C_TabelaFactoryCheque.value );

    C_TabelaIDAReceber.Value := IDGerador;

    IDGerador := DMFinanceiro.ReceberRapido( 0, IDGerador, C_TabelaFavorecido.Value,
    																				 DMFinanceiro.nContaPadrao, 0,
                                             C_TabelaData.Value, C_TabelaData.Value,
                                             'Factory-Empresa', nTotalAReceber, 0, 0, 0, 0 );
		with C_Cheques do begin
  		DisableControls;
    	First;
    	while not EOF do begin
        IDDoc := DMFinanceiro.ReceberDoc( 0, 51, IDGerador, 2, C_ChequesValor.Value,
        												 C_ChequesVencimento.Value,
        												 C_ChequesOBS.Value, C_ChequesNumCheque.Value, 0, C_ChequesNome.value, 0, 0, C_ChequesContaReceber.value );
        Edit;
        C_ChequesIDDoc.Value := IDDoc;
        Post;
        Next;
    	end;
    	EnableControls;
  	end;

    DMFinanceiro.BaixarTitulo(C_TabelaIDAReceber.AsString);

  {Alteração}
  end else begin
		with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'select faltapagar-valor from duplicatasapagar '+
      						'where id = :id';
      params[0].AsInteger := C_TabelaIDAPagar.AsInteger;
      open;
      if fields[0].AsCurrency <> 0 then begin
        close;
        sql.text := 'execute procedure PP_ApagarRetiradasDuplicata (:duplicata)';
        parambyname('duplicata').asInteger := C_TabelaIDAPagar.AsInteger;
        execsql;
      end;

      close;
      sql.text := 'delete from duplicatasapagar where id = :duplicata';
      parambyname('duplicata').asInteger := C_TabelaIDAPagar.AsInteger;
      execsql;

    	if C_Tabela.State in [dsBrowse] then
    		C_Tabela.Edit;

    C_TabelaIDAPagar.Value := DMFinanceiro.Conta_A_Pagar( 1,
    																											nTotalAPagar,
                                                          C_TabelaData.Value, C_TabelaData.Value,
                                                          'Factory-Empresa',
                                                          0, // Natureza
                                                          C_TabelaFavorecido.Value,
                                                          0, // IDCompra
                                                          '',
                                                          51,
                                                          C_TabelaFactoryCheque.value );

    	close;
      sql.text := 'execute procedure PP_ApagarDepositosTitulo(:titulo)';
      parambyname('titulo').asInteger := C_TabelaIDAReceber.AsInteger;
      execsql;
      close;

    	IDGerador := DMFinanceiro.Conta_A_Receber( 0,
    																					 nTotalAReceber,
                                               C_TabelaData.Value,
    																					 C_TabelaData.Value,
                                               'Factory-Empresa',
                                               C_TabelaFavorecido.Value,
                                               0, // Venda
                                               '',// Nota Fiscal
                                               51,
                                               C_TabelaFactoryCheque.value );

    	C_TabelaIDAReceber.Value := IDGerador;

    	IDGerador := DMFinanceiro.ReceberRapido( 0, IDGerador, C_TabelaFavorecido.Value,
    																				 DMFinanceiro.nContaPadrao, 0,
                                             C_TabelaData.Value, C_TabelaData.Value,
                                             'Factory-Empresa', nTotalAReceber, 0, 0, 0, 0 );
			with C_Cheques do begin
  			DisableControls;
    		First;
    		while not EOF do begin
        	DMFinanceiro.ReceberDoc( 0, 51, IDGerador, 2, C_ChequesValor.Value,
        												 C_ChequesVencimento.Value,
        												 C_ChequesOBS.Value, C_ChequesNumCheque.Value, 0, C_ChequesNome.value, 0, 0, DMFinanceiro.getContaReceber(0,C_TabelaData.value,C_ChequesVencimento.Value) );
        	Edit;
        	C_ChequesIDDoc.Value := IDDoc;
        	Post;
      		Next;
    		end;
    		EnableControls;
  		end;

      DMFinanceiro.BaixarTitulo(C_TabelaIDAReceber.AsString);
    end;
  end;
  // Adriano
  Contabiliza;

  if not DMContabil.Salvar(C_TabelaFACTORYCHEQUE.value) then
    raise Exception.Create(DMProjeto.GetMsg(3117));
  ///////////////////////////
end;

function TDMFactoryEmpresa.Calculo( Valor : Currency; Vencimento : TDateTime) : Currency;
var nDias : integer;
begin
  nDias  := trunc(DMProjeto.PrimeiroDiaUtil( Vencimento ) - DMFactoryEmpresa.C_TabelaData.Value);
  if nDias < 0 then
  	nDias := 0;
	result := nDias * ((C_TabelaPercentualJuros.Value/30)/100) * Valor;
end;

procedure TDMFactoryEmpresa.C_TabelaPERCENTUALJUROSChange(Sender: TField);
begin
  inherited;
  with C_Cheques do begin
    if State in [dsEdit,dsInsert] then
    	Post;
    DisableControls;
    First;
    While not EOF do begin
      Edit;
    	FieldByName('Encargos').AsCurrency := Calculo( FieldByName('Valor').AsCurrency, FieldByName('Vencimento').AsDateTime );
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TDMFactoryEmpresa.C_ChequesTAXAChange(Sender: TField);
begin
  inherited;
  C_ChequesAPagar.OnChange := nil;
	C_ChequesAPagar.Value 	 := C_ChequesValor.Value - C_ChequesEncargos.Value - C_ChequesTaxa.Value;
  C_ChequesAPagar.OnChange := C_ChequesAPagarChange;
end;

end.

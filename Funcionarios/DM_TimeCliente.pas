unit DM_TimeCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, Variants;

type
  TDMTimeCliente = class(TDMManutencao)
    Q_Producoes: TIBQuery;
    U_Producoes: TIBUpdateSQL;
    C_Producoes: TClientDataSet;
    C_ProducoesDS: TDataSource;
    C_ProducoesPRODUCAO: TIntegerField;
    C_ProducoesDATAINICIO: TDateField;
    C_ProducoesDATAFIM: TDateField;
    C_ProducoesFAVORECIDO: TIntegerField;
    C_ProducoesFUNCIONARIO: TIntegerField;
    C_ProducoesCONTRATO: TIntegerField;
    C_ProducoesITEM: TIntegerField;
    C_ProducoesFUNCPAYITEM: TIntegerField;
    C_ProducoesVALORHORA: TBCDField;
    C_ProducoesVALORCONTRATO: TBCDField;
    C_ProducoesPAYROLL: TIntegerField;
    C_ProducoesDESC_PAYROLL: TStringField;
    C_ProducoesNUMINVOICE: TStringField;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    Q_Contratos: TIBQuery;
    P_Contratos: TDataSetProvider;
    C_Contratos: TClientDataSet;
    C_ContratosCONTRATO: TIntegerField;
    C_ContratosDESCRICAO: TStringField;
    C_ContratosFAVORECIDO: TIntegerField;
    C_ContratosITEM: TIntegerField;
    C_ContratosPRECO: TBCDField;
    C_ContratosPERIODICIDADE: TStringField;
    C_ContratosDIACOBRANCA: TStringField;
    C_ContratosMETODOPGTO: TStringField;
    C_ContratosFUNCPAYITEM: TIntegerField;
    C_ContratosGRUPOCOBRANCA: TIntegerField;
    C_ContratosFUNCIONARIO: TIntegerField;
    Q_PayrollItens: TIBQuery;
    P_PayrollItens: TDataSetProvider;
    C_PayrollItens: TClientDataSet;
    C_PayrollItensITEM: TIntegerField;
    C_PayrollItensPAYROLLITEM: TIntegerField;
    C_PayrollItensVALOR: TBCDField;
    C_PayrollItensPERCENTUAL: TBCDField;
    C_PayrollItensQTDHORAS: TBCDField;
    C_PayrollItensLIMITE: TBCDField;
    C_PayrollItensTIPOPAYROLL: TIntegerField;
    C_PayrollItensDESCRICAO: TStringField;
    C_ProducoeslkItem: TStringField;
    C_Producoes_icSelecionado: TIntegerField;
    C_ProducoeslkPayItem: TStringField;
    C_TabelaCHAVECLIENTE: TIntegerField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaDATAINICIO: TDateField;
    C_TabelaDATAFIM: TDateField;
    C_TabelaNOME: TStringField;
    C_TabelaQ_Producoes: TDataSetField;
    Q_SQL: TIBQuery;
    C_ProducoesCHAVECLIENTE: TIntegerField;
    C_ProducoesCHAVEFUNC: TIntegerField;
    C_ProducoeslkContrato: TStringField;
    C_ProducoesTotalPgto: TCurrencyField;
    C_ProducoesTotalCobrar: TCurrencyField;
    C_ProducoesAGRUPAMENTO: TIntegerField;
    C_ProducoesSAIDAITEM: TIntegerField;
    C_ProducoesSAIDA: TIntegerField;
    Q_SQLi: TIBQuery;
    C_ProducoesNOME: TStringField;
    C_ContratosNOME: TStringField;
    C_ProducoesNAOCOBRAR: TStringField;
    C_ProducoesTIPOPAYROLL: TIntegerField;
    C_ContratosPAYROLLITEM: TIntegerField;
    C_ProducoesQTDHORAS: TFloatField;
    C_ProducoesQTDHORAS_USER: TStringField;
    C_ContratosVALORFUNC: TBCDField;
    C_ItensPRECO: TBCDField;
    C_TabelaCODIGOCLIENTE: TStringField;
    C_ProducoesMETODOCLIENTE: TStringField;
    C_ProducoesDESPESAS: TBCDField;
    procedure C_ProducoesNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure C_ProducoesFUNCIONARIOChange(Sender: TField);
    procedure C_ProducoesFUNCPAYITEMChange(Sender: TField);
    procedure C_TabelaFAVORECIDOChange(Sender: TField);
    procedure Q_ContratosBeforeOpen(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_ProducoesCONTRATOChange(Sender: TField);
    procedure C_ProducoesBeforePost(DataSet: TDataSet);
    procedure C_ProducoesCalcFields(DataSet: TDataSet);
    procedure C_ProducoesBeforeDelete(DataSet: TDataSet);
    procedure C_TabelaAfterScroll(DataSet: TDataSet);
    procedure DMComponentPesquisar4_Dados(Sender: TObject);
    procedure C_ProducoesITEMChange(Sender: TField);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure C_ProducoesQTDHORASChange(Sender: TField);
    procedure C_ProducoesQTDHORAS_USERChange(Sender: TField);
    procedure C_TabelaDATAINICIOChange(Sender: TField);
  private
    { Private declarations }
    nSeqProd, nLastAgrup : Integer;

  public
    { Public declarations }
    dDataI, dDataF : TDateTime;
    bAlertarInvoice, bAlertarPayroll, bAtualizarContrato : boolean;
    procedure AtualizarContrato;
    procedure AdicionarParaContratos( sProducoes : String );

  end;

var
  DMTimeCliente: TDMTimeCliente;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDMTimeCliente.C_ProducoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  dec(nSeqProd);

  C_ProducoesProducao.Value 		:= nSeqProd;
  C_ProducoesFavorecido.Value 	:= C_TabelaFavorecido.Value;
  C_ProducoesDataInicio.Value 	:= C_TabelaDataInicio.Value;
  C_ProducoesDataFim.Value 			:= C_TabelaDataFim.Value;
  C_ProducoesQtdHoras.Value 		:= 0;
  C_ProducoesValorHora.Value 		:= 0;
  C_ProducoesDespesas.Value 		:= 0;
  C_ProducoesValorContrato.Value:= 0;
  C_ProducoesAgrupamento.Value 	:= nLastAgrup;
  C_ProducoesMetodoCliente.Value:= 'H';
end;

procedure TDMTimeCliente.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTimeCliente := self;
end;

procedure TDMTimeCliente.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
  inherited;
  nSeqProd := -10;
end;

procedure TDMTimeCliente.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDataInicio.Value 	:= dDataI;
  C_TabelaDataFim.Value 		:= dDataF;
end;

procedure TDMTimeCliente.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  bAtualizarContrato := false;
  dDataI := PrimeiroDiaDaSemana(DMProjeto.dDataSistema - 7);
  dDataF := dDataI + 6;
end;

procedure TDMTimeCliente.C_ProducoesFUNCIONARIOChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant = null then begin
    C_ProducoesFuncPayItem.asVariant := null;
    end
  else begin
		with Q_SQL do begin
    	close;
      sql.text := 'select f.payrollitem from funcspayitens f, payrollitens p '+
      						'where f.funcionario = :func and f.payrollitem = p.payrollitem and p.tipopayroll = 1 ';
      parambyname('func').AsInteger := C_ProducoesFuncionario.Value;
      open;
      if recordcount > 0 then
        C_ProducoesFuncPayItem.value := fields[0].AsInteger
      else
  	    C_ProducoesFuncPayItem.asVariant := null;
      close;
    end;
  end;
end;

procedure TDMTimeCliente.C_ProducoesFUNCPAYITEMChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin

    C_PayrollItens.Locate('PayRollItem', VarArrayof([Sender.AsInteger]), []);

    if C_PayrollItensValor.Value <> 0 then
    	C_ProducoesValorHora.Value 	:= C_PayrollItensValor.Value;
    C_ProducoesItem.Value 			:= C_PayrollItensItem.Value;
    C_ProducoesTipoPayRoll.Value:= C_PayrollItensTipoPayRoll.Value;

    with Q_SQL do begin
    	close;
      sql.text := 'select valor, item from funcspayitens '+
      						'where funcionario = :func and payrollitem = :payrollitem';
      parambyname('func').AsInteger := C_ProducoesFuncionario.Value;
      parambyname('payrollitem').AsInteger := C_ProducoesFuncPayItem.Value;
      open;
      {Existe em FuncPayItens}
      if recordcount > 0 then begin
        if fieldbyname('Valor').AsCurrency > 0 then
    			C_ProducoesValorHora.Value := fieldbyname('Valor').AsCurrency;
        if fieldbyname('Item').AsInteger > 0 then
    			C_ProducoesItem.Value := fieldbyname('Item').AsInteger;
      end;
    end;
  end else
    C_ProducoesItem.asVariant := null;
end;

procedure TDMTimeCliente.C_TabelaFAVORECIDOChange(Sender: TField);
begin
  inherited;
  if (Sender.asVariant <> null) then begin
    C_TabelaNome.Value := DMProjeto.C_LocalizarFavNome.Value;

    if DMProjeto.C_LocalizarFavInicioSemana.Value > 0 then begin
      C_TabelaDataInicio.Value := C_TabelaDataInicio.Value + (DMProjeto.C_LocalizarFavInicioSemana.Value - 2);
      C_TabelaDataFim.Value := C_TabelaDataFim.Value + (DMProjeto.C_LocalizarFavInicioSemana.Value - 2);
    end;

    if DMProjeto.C_LocalizarFavDiasPeriodo.Value > 0 then begin
      C_TabelaDataFim.Value := C_TabelaDataInicio.Value + (DMProjeto.C_LocalizarFavDiasPeriodo.Value - 1);
    end;

    C_Contratos.Close;
    C_Contratos.Open;

    end
  else begin
    C_TabelaNome.Value := '';
  end;
end;

procedure TDMTimeCliente.Q_ContratosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Q_Contratos.Params[0].asInteger := C_TabelaFavorecido.Value;
end;

procedure TDMTimeCliente.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var
  tempds : TClientDataSet;
  nChave : Integer;
  sDesc  : string;
  bConfirma : Boolean;
begin
  inherited;
	if C_Producoes.IsEmpty then begin
  	DlgMsg.ShowMsg(929, ['os funcionários']);
    bSkip := true;
    Exit;
  end;
  with C_Producoes do begin
  	DisableControls;
    First;
    bConfirma := false;
    While not Eof do begin
      if (C_ProducoesFuncionario.AsInteger = 0) then begin
      	DlgMsg.ShowMsg(929,['o Funcionário']);
        bSkip := true;
        EnableControls;
        Exit;
      end else if (C_ProducoesItem.AsInteger = 0) then begin
      	DlgMsg.ShowMsg(929,['o Item de Serviço']);
        bSkip := true;
        EnableControls;
        Exit;
      end else if (not C_ProducoesPayroll.IsNull) and (C_ProducoesPayroll.Value <> 0) then begin
    		with DMProjeto.Q_SQL do begin
    			close;
      		sql.text := 'select descricao from payrolls where payroll = :payroll';
      		params[0].AsInteger := C_ProducoesPayroll.AsInteger;
      		open;
      		sDesc := fields[0].AsString;
      		close;
    		end;
  			if DlgMsg.ShowMsg(1883,[sDesc]) = 200 then begin
    			bSkip := true;
          EnableControls;
      		exit;
    		end;
        break;
      {
      end else if (C_ProducoesQtdHoras.Value = 0) and (not bConfirma) then begin
      	DlgMsg.ShowMsg( 929, ['a quantidade de horas de algum funcionário']);
        bSkip := true;
        EnableControls;
        Exit; }
      end else if (C_ProducoesQtdHoras.Value = 0) then
        Delete
      else
      	Next;
    end;
    EnableControls;
  end;

  {Verificando existencia de ITEM e FuncPay e Funcionário para cada linha}
  with C_Producoes do begin
    DisableControls;
    First;
    while not EOF do begin
      if C_ProducoesItem.Value = 0 then begin
        DlgMsg.ShowMsg(1997);
        bSkip := true;
        EnableControls;
        Exit;
      end;

      if (C_ProducoesFuncionario.Value * C_ProducoesFuncPayItem.Value = 0) then begin
        DlgMsg.ShowMsg(1992);
        bSkip := true;
        EnableControls;
        Exit;
      end;

      Next;
    end;
    EnableControls;
  end;

  if not bAlteracao and (C_TabelaFavorecido.Value <> 0) then with Q_SQL do begin
    Close;
    SQL.Text := 'Select ChaveCliente From ProducoesChaveCli '+
                'where Favorecido = :F and DataInicio = :DI and DataFim = :DF ';
    Params[0].asInteger := C_TabelaFavorecido.Value;
    Params[1].asDate    := Trunc(C_TabelaDataInicio.Value);
    Params[2].asDate    := Trunc(C_TabelaDataFim.Value);
    Open;

    if RecordCount > 0 then begin
      Close;
      DlgMsg.ShowMsg(1996);
      bSkip := true;
      exit;
    end;
    Close;

  end; //if Favorecido existe

  {Capturando ChaveFunc}
  tempds := TClientDataSet.Create(self);
  with tempds do begin
    CloneCursor(C_Producoes, true);
    First;
    while not EOF do begin
      Edit;
      FieldByName('Favorecido').asInteger := C_TabelaFavorecido.Value;
      FieldByName('DataInicio').asDateTime := C_TabelaDataInicio.Value;
      FieldByName('DataFim').asDateTime := C_TabelaDataFim.Value;
      Post;

      if (FieldByName('Funcionario').asInteger <> 0) and (FieldByName('QtdHoras').asInteger > 0) then begin
        Q_SQL.Close;
        Q_SQL.SQL.Text := 'Select ChaveFunc From ProducoesChaveFunc '+
                          'where Funcionario = :F and DataInicio = :DI and DataFim = :DF ';
        Q_SQL.Params[0].asInteger := FieldByName('Funcionario').asInteger;
        Q_SQL.Params[1].asDate    := Trunc(C_TabelaDataInicio.Value);
        Q_SQL.Params[2].asDate    := Trunc(C_TabelaDataFim.Value);
        Q_SQL.Open;

        if Q_SQL.RecordCount > 0 then begin
          Edit;
          FieldByName('ChaveFunc').asInteger := Q_SQL.FieldByName('ChaveFunc').asInteger;
          Post;
          Q_SQL.Close;
          end
        else begin
          Q_SQL.Close;
          Q_SQL.SQL.Text := 'Insert into ProducoesChaveFunc (ChaveFunc, Funcionario, DataInicio, DataFim ) '+
                            'Values ( :ChaveFunc, :Funcionario, :DataI, :DataF ) ';
          nChave := DMProjeto.NextIDGlobal;
          Q_SQL.Params[0].asInteger := nChave;
          Q_SQL.Params[1].asInteger := FieldByName('Funcionario').asInteger;
          Q_SQL.Params[2].asDate    := Trunc(C_TabelaDataInicio.Value);
          Q_SQL.Params[3].asDate    := Trunc(C_TabelaDataFim.Value);
          Q_SQL.ExecSQL;

          Edit;
          FieldByName('ChaveFunc').asInteger := nChave;
          Post;
          Q_SQL.Close;
        end;

        Next; //tempds
        end
      else begin
        Delete;  //Não existe func ou qtdhoras.
      end;
    end;
  end;
  tempds.Free;


end;

procedure TDMTimeCliente.C_ProducoesCONTRATOChange(Sender: TField);
begin
  inherited;
  if C_ContratosContrato.Value <> Sender.asInteger then
    C_Contratos.Locate('Contrato', Sender.asInteger, []);

  C_ProducoesAgrupamento.Value := C_ContratosGrupoCobranca.Value;
  C_ProducoesMetodoCliente.Value := C_ContratosMetodoPgto.Value;
  if C_ContratosFuncionario.Value > 0 then begin
    C_ProducoesFuncionario.Value := C_ContratosFuncionario.Value;
    C_ProducoesNome.Value        := C_ContratosNome.Value;
  end;
  if C_ContratosPayRollItem.Value > 0 then
   	C_ProducoesFuncPayItem.Value := C_ContratosPayRollItem.Value;
  C_ProducoesItem.Value     		 := C_ContratosItem.Value;
  C_ProducoesValorContrato.Value := C_ContratosPreco.Value;
  C_ProducoesValorHora.Value		 := C_ContratosValorFunc.Value;	
end;

procedure TDMTimeCliente.C_ProducoesBeforePost(DataSet: TDataSet);
begin
  inherited;

  nLastAgrup := C_ProducoesAgrupamento.Value;
end;

procedure TDMTimeCliente.C_ProducoesCalcFields(DataSet: TDataSet);
begin
  inherited;

  C_ProducoesTotalPgto.asCurrency :=  C_ProducoesQtdHoras.Value * C_ProducoesValorHora.asCurrency;

  if ((C_ProducoesContrato.Value <> 0) and (C_ProducoesMetodoCliente.Value = 'H')) or (C_ProducoesContrato.Value = 0) then
    C_ProducoesTotalCobrar.asCurrency := C_ProducoesQtdHoras.Value * C_ProducoesValorContrato.asCurrency
  else
    C_ProducoesTotalCobrar.asCurrency := iif(C_ProducoesQtdHoras.Value>0,C_ProducoesValorContrato.asCurrency,0);

end;

procedure TDMTimeCliente.AdicionarParaContratos(sProducoes: String);
  function ExisteFuncPayItem( nFPY : Integer ) : Boolean;
  begin
    result := false;
    with Q_SQLi do begin
      Close;
      SQL.Text := 'Select * from ContratosFav where Favorecido = :F and FuncPayItem = :FPY ';
      Params[0].asInteger := C_TabelaFavorecido.Value;
      Params[1].asInteger := nFPY;
      Open;

      Result := (RecordCount > 0);

      Close;
    end;
  end;


var
  i : Integer;
begin
  with Q_SQL do begin
    Close;
    SQL.Text := 'insert into ContratosFav '+
                '(CONTRATO, DESCRICAO, FAVORECIDO, ITEM, PRECO, PERIODICIDADE, DIACOBRANCA, '+
                ' METODOPGTO, FUNCPAYITEM, GRUPOCOBRANCA) '+
                'values '+
                '(:CONTRATO, :DESCRICAO, :FAVORECIDO, :ITEM, :PRECO, :PERIODICIDADE, :DIACOBRANCA, '+
                ' :METODOPGTO, :FUNCPAYITEM, :GRUPOCOBRANCA) ';

    try
      C_Producoes.DisableControls;
      C_Producoes.First;
      for i := 1 to ContaStrings( sProducoes, ',' ) do begin
        if not C_Producoes.Locate('PRODUCAO', StrToInt(SeparaStrings( sProducoes, ',', i )), [] ) then
          Continue;

        if (C_ProducoesITEM.Value <> 0) and (C_ProducoesFuncPayItem.Value <> 0) and not
           ExisteFuncPayItem( C_ProducoesFuncPayItem.Value ) then begin
          Params[0].asInteger := DMProjeto.NextIDGlobal;
          Params[1].asString  := C_ProducoesNome.Value + ' - ' + C_ProducoeslkPayItem.Value;
          Params[2].asInteger := C_TabelaFavorecido.Value;
          Params[3].asInteger := C_ProducoesITEM.Value;
          Params[4].asCurrency:= C_ProducoesValorContrato.asCurrency;
          Params[5].asString  := 'S';
          Params[6].asString  := '2';
          Params[7].asString  := 'H';
          Params[8].asInteger := C_ProducoesFuncPayItem.Value;
          Params[9].asInteger := 1;
          ExecSQL;
        end;
      end;
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      
      DlgMsg.ShowMsg( 1991 );
    finally
      C_Producoes.EnableControls;
      C_Contratos.Close;
      C_Contratos.Open;
    end;
  end;
end;

procedure TDMTimeCliente.C_ProducoesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if C_ProducoesSAIDAITEM.Value <> 0 then
    bAlertarInvoice := true;

  if C_ProducoesPayroll.Value <> 0 then
    bAlertarPayroll := true;

end;

procedure TDMTimeCliente.C_TabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  nLastAgrup := 1;
end;

procedure TDMTimeCliente.DMComponentPesquisar4_Dados(Sender: TObject);
begin
  inherited;
  C_Contratos.Close;
  C_Contratos.Open;

  C_Producoes.Close;
  C_Producoes.Open;
end;

procedure TDMTimeCliente.C_ProducoesITEMChange(Sender: TField);
begin
  inherited;
  C_Itens.Locate('Item',C_ProducoesItem.Value,[]);
  C_ProducoesValorContrato.Value := C_ItensPreco.Value;
end;

procedure TDMTimeCliente.AtualizarContrato;
begin
  inherited;
  with Q_SQL do begin
  	close;
    sql.text := 'delete from contratosfav where favorecido = :fav';
    parambyname('fav').asInteger := C_TabelaFavorecido.Value;
    execsql;
  	with C_Producoes do begin
    	DisableControls;
  		First;
    	while not EOF do begin
      	with Q_SQL do begin
        	close;
          sql.text := 'insert into contratosfav '+
          						'(descricao, favorecido, item, preco, periodicidade, '+
                      ' diacobranca, metodopgto, grupocobranca, funcionario, payrollitem, valorfunc) '+
                      'values '+
          						'(:descricao, :favorecido, :item, :preco, :periodicidade, '+
                      ' :diacobranca, :metodopgto, :grupocobranca, :funcionario, :payrollitem, :valorfunc)';
          parambyname('descricao').asString 		:= C_ProducoeslkItem.Value;
          parambyname('favorecido').asInteger 	:= C_TabelaFavorecido.Value;
          parambyname('item').asInteger 				:= C_ProducoesItem.Value;
          parambyname('preco').asCurrency		 		:= C_ProducoesValorContrato.Value;
          parambyname('periodicidade').asString	:= 'S';
          parambyname('diacobranca').asInteger	:= 2;
          parambyname('metodopgto').asString		:= C_ProducoesMetodoCliente.Value;
          parambyname('grupocobranca').asInteger:= C_ProducoesAgrupamento.Value;
          parambyname('funcionario').asInteger	:= C_ProducoesFuncionario.Value;
          parambyname('payrollitem').asInteger	:= C_ProducoesFuncPayItem.Value;
          parambyname('valorfunc').asCurrency	  := C_ProducoesValorHora.Value;
          execsql;
        end;
        Next;
      end;
      EnableControls;
    end;
  end;
end;


procedure TDMTimeCliente.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  if bAtualizarContrato then
  	AtualizarContrato;
	bAtualizarContrato := false;
end;

procedure TDMTimeCliente.C_ProducoesQTDHORASChange(Sender: TField);
begin
  inherited;
  C_ProducoesQtdHoras_User.OnChange 	:= nil;
	C_ProducoesQtdHoras_User.Value 			:= HoraToStr(Sender.value);
  C_ProducoesQtdHoras_User.OnChange 	:= C_ProducoesQtdHoras_UserChange;
end;

procedure TDMTimeCliente.C_ProducoesQTDHORAS_USERChange(Sender: TField);
var
  nHora : double;
begin
  inherited;
  if (Sender.asString <> '') and (pos(':', Sender.asString) = 0) then begin
  	Sender.AsString := FormataHora(Sender.asString);
  	Exit;
	end;

  nHora := StrToHora(Sender.AsString);

  if ABS(C_ProducoesQtdHoras.Value - nHora) > 0.01 then begin
    C_ProducoesQtdHoras.OnChange := nil;
    C_ProducoesQtdHoras.Value 		:= nHora;
    C_ProducoesQtdHoras.OnChange := C_ProducoesQtdHorasChange;
  end;
end;

procedure TDMTimeCliente.C_TabelaDATAINICIOChange(Sender: TField);
begin
  inherited;
{
	with C_Producoes do begin
    DisableControls;
  	First;
    while not eof do begin
      Edit;
      C_ProducoesDataInicio.Value := C_TabelaDataInicio.Value;
      C_ProducoesDataFim.Value 		:= C_TabelaDataFim.Value;
      Post;
    	Next;
    end;
    First;
    EnableControls;
  end;
}
end;

end.

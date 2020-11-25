unit DM_TimeSimples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, Variants;

type
  TDMTimeSimples = class(TDMManutencao)
    C_TabelaPRODUCAO: TIntegerField;
    C_TabelaDATAINICIO: TDateField;
    C_TabelaDATAFIM: TDateField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaCONTRATO: TIntegerField;
    C_TabelaITEM: TIntegerField;
    C_TabelaFUNCPAYITEM: TIntegerField;
    C_TabelaVALORHORA: TBCDField;
    C_TabelaVALORCONTRATO: TBCDField;
    C_TabelaPAYROLL: TIntegerField;
    C_TabelaDESC_PAYROLL: TStringField;
    C_TabelaNUMINVOICE: TStringField;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    C_TabelalkItem: TStringField;
    C_TabelaNOME: TStringField;
    C_ContratosDS: TDataSource;
    Q_Contratos: TIBQuery;
    P_Contratos: TDataSetProvider;
    C_Contratos: TClientDataSet;
    C_PayrollItensDS: TDataSource;
    Q_PayrollItens: TIBQuery;
    P_PayrollItens: TDataSetProvider;
    C_PayrollItens: TClientDataSet;
    C_PayrollItensITEM: TIntegerField;
    C_PayrollItensPAYROLLITEM: TIntegerField;
    C_PayrollItensVALOR: TBCDField;
    C_PayrollItensPERCENTUAL: TBCDField;
    C_PayrollItensQTDHORAS: TBCDField;
    C_PayrollItensLIMITE: TBCDField;
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
    C_PayrollItensTIPOPAYROLL: TIntegerField;
    C_ContratosFUNCIONARIO: TIntegerField;
    C_PayrollItensDESCRICAO: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaCHAVECLIENTE: TIntegerField;
    C_TabelaCHAVEFUNC: TIntegerField;
    C_TabelalkPayItem: TStringField;
    C_TabelaSAIDAITEM: TIntegerField;
    C_TabelaAGRUPAMENTO: TIntegerField;
    C_TabelaNOMEFUNC: TStringField;
    C_TabelaNAOCOBRAR: TStringField;
    C_TabelaQTDHORAS: TFloatField;
    C_TabelaTotalHora: TCurrencyField;
    C_TabelaTotalContrato: TCurrencyField;
    C_TabelaQTDHORAS_USER: TStringField;
    C_TabelaMETODOCLIENTE: TStringField;
    C_TabelaDESPESAS: TBCDField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaFUNCIONARIOChange(Sender: TField);
    procedure C_TabelaFUNCPAYITEMChange(Sender: TField);
    procedure C_TabelaFAVORECIDOChange(Sender: TField);
    procedure C_TabelaCONTRATOChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaITEMChange(Sender: TField);
    procedure Q_ContratosBeforeOpen(DataSet: TDataSet);
    procedure C_TabelaAfterScroll(DataSet: TDataSet);
    procedure C_TabelaQTDHORAS_USERChange(Sender: TField);
    procedure C_TabelaQTDHORASChange(Sender: TField);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    dDataI, dDataF : TDateTime;

    function GetPrecoItem: Currency;
  end;

var
  DMTimeSimples: TDMTimeSimples;

implementation
  Uses DM_Projeto,funcoes;

{$R *.DFM}

procedure TDMTimeSimples.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDataInicio.Value := dDataI;
  C_TabelaDataFim.Value := dDataF;
  C_TabelaQtdHoras.Value := 0;
  C_TabelaQtdHoras_User.Value := '';
  C_TabelaValorHora.Value := 0;
//\  C_ProducoesDespesas.Value 	:= 0;
  C_TabelaValorContrato.Value := 0;
  C_TabelaAgrupamento.Value := 1;
  C_TabelaNaoCobrar.Value := 'N';
end;

procedure TDMTimeSimples.C_TabelaFUNCIONARIOChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin
    C_TabelaNomeFunc.Value := DMProjeto.C_LocalizarFavNome.Value;
		with Q_SQL do begin
    	close;
      sql.text := 'select f.payrollitem from funcspayitens f, payrollitens p '+
      						'where f.funcionario = :func and f.payrollitem = p.payrollitem and p.tipopayroll = 1 ';
      parambyname('func').AsInteger := C_TabelaFuncionario.Value;
      open;
      if recordcount > 0 then
        C_TabelaFuncPayItem.value := fields[0].AsInteger
      else
  	    C_TabelaFuncPayItem.asVariant := null;
      close;
    end;
  end else begin
    C_TabelaNomeFunc.Value := '';
  end;
end;

procedure TDMTimeSimples.C_TabelaFUNCPAYITEMChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin

    C_PayrollItens.Locate('PayRollItem', VarArrayof([Sender.AsInteger]), []);

    C_TabelaValorHora.Value 	:= C_PayrollItensValor.Value;
    C_TabelaItem.Value 			  := C_PayrollItensItem.Value;

    with Q_SQL do begin
    	close;
      sql.text := 'select valor, item from funcspayitens '+
      						'where funcionario = :func and payrollitem = :payrollitem';
      parambyname('func').AsInteger := C_TabelaFuncionario.Value;
      parambyname('payrollitem').AsInteger := Sender.AsInteger;
      open;
      {Existe em FuncPayItens}
      if recordcount > 0 then begin
        if fieldbyname('Valor').AsCurrency > 0 then
    			C_TabelaValorHora.Value := fieldbyname('Valor').AsCurrency;
        if fieldbyname('Item').AsInteger > 0 then
    			C_TabelaItem.Value := fieldbyname('Item').AsInteger;
      end;
    end;
  end else
    C_TabelaItem.asVariant := null;
{
  if Sender.asVariant <> null then begin
    C_PayrollItens.Locate('FuncPayItem', Sender.asInteger, []);

    C_TabelaValorHora.Value := C_PayrollItensValor.Value;
    C_TabelaItem.Value := C_PayrollItensItem.Value
    end
  else
    C_TabelaItem.asVariant := null;
}
end;

procedure TDMTimeSimples.C_TabelaFAVORECIDOChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin
    C_TabelaNome.Value := DMProjeto.C_LocalizarFavNome.Value;
    C_Contratos.Close;
    C_Contratos.Open;
    end
  else begin
    C_Contratos.Close;
    C_TabelaNome.Value := '';
    C_TabelaContrato.asVariant := null;
  end;
end;

procedure TDMTimeSimples.C_TabelaCONTRATOChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin
    C_Contratos.Locate('Contrato', Sender.asInteger, []);

    C_TabelaValorContrato.Value := C_ContratosPreco.Value;
  end;
end;

procedure TDMTimeSimples.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTimeSimples := self;
end;

procedure TDMTimeSimples.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var sDesc : string;
begin
  inherited;
  if (not C_TabelaPayroll.IsNull) and (C_TabelaPayroll.Value <> 0) then begin
    with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'select descricao from payrolls where payroll = :payroll';
      params[0].AsInteger := C_TabelaPayroll.AsInteger;
      open;
      sDesc := fields[0].AsString;
      close;
    end;
  	if DlgMsg.ShowMsg(1883,[sDesc]) = 200 then begin
    	bSkip := true;
      exit;
    end;
  end;

  if C_TabelaDataInicio.Value > C_TabelaDataFim.Value then begin
    DlgMsg.ShowMsg(1002);
    bSkip := true;
    exit;
  end;
end;

procedure TDMTimeSimples.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  dDataI := DMProjeto.dDataSistema;
  dDataF := DMProjeto.dDataSistema;
end;

procedure TDMTimeSimples.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
var
  nChave : Integer;
begin
  inherited;
  {ChaveCliente}
  if C_TabelaFavorecido.Value <> 0 then with Q_SQL do begin
    Close;
    SQL.Text := 'Select ChaveCliente From ProducoesChaveCli '+
                'where Favorecido = :F and DataInicio = :DI and DataFim = :DF ';
    Params[0].asInteger := C_TabelaFavorecido.Value;
    Params[1].asDate    := Trunc(C_TabelaDataInicio.Value);
    Params[2].asDate    := Trunc(C_TabelaDataFim.Value);
    Open;

    if RecordCount > 0 then begin
      C_Tabela.Edit;
      C_TabelaChaveCliente.Value := FieldByName('ChaveCliente').asInteger;
      end
    else begin
      Close;
      SQL.Text := 'Insert into ProducoesChaveCli (ChaveCliente, Favorecido, DataInicio, DataFim ) '+
                  'Values ( :ChaveCliente, :Favorecido, :DataI, :DataF ) ';
      nChave := DMProjeto.NextIDGlobal;
      Params[0].asInteger := nChave;
      Params[1].asInteger := C_TabelaFavorecido.value;
      Params[2].asDate    := Trunc(C_TabelaDataInicio.Value);
      Params[3].asDate    := Trunc(C_TabelaDataFim.Value);
      ExecSQL;
      C_Tabela.Edit;
      C_TabelaChaveCliente.Value := nChave;
    end;
  end; //if Favorecido existe

  {ChaveFunc}
  if C_TabelaFuncionario.Value <> 0 then with Q_SQL do begin
    Close;
    SQL.Text := 'Select ChaveFunc From ProducoesChaveFunc '+
                'where Funcionario = :F and DataInicio = :DI and DataFim = :DF ';
    Params[0].asInteger := C_TabelaFuncionario.Value;
    Params[1].asDate    := Trunc(C_TabelaDataInicio.Value);
    Params[2].asDate    := Trunc(C_TabelaDataFim.Value);
    Open;

    if RecordCount > 0 then begin
      C_Tabela.Edit;
      C_TabelaChaveFunc.Value := FieldByName('ChaveFunc').asInteger;
      end
    else begin
      Close;
      SQL.Text := 'Insert into ProducoesChaveFunc (ChaveFunc, Funcionario, DataInicio, DataFim ) '+
                  'Values ( :ChaveFunc, :Funcionario, :DataI, :DataF ) ';
      nChave := DMProjeto.NextIDGlobal;
      Params[0].asInteger := nChave;
      Params[1].asInteger := C_TabelaFuncionario.value;
      Params[2].asDate    := Trunc(C_TabelaDataInicio.Value);
      Params[3].asDate    := Trunc(C_TabelaDataFim.Value);
      ExecSQL;
      C_Tabela.Edit;
      C_TabelaChaveFunc.Value := nChave;
    end;
  end; //if Func existe

end;

procedure TDMTimeSimples.C_TabelaITEMChange(Sender: TField);
begin
  inherited;
  if C_TabelaFavorecido.Value <> 0 then
    C_TabelaValorContrato.Value := GetPrecoItem;
end;

Function TDMTimeSimples.GetPrecoItem : Currency;
var
  nTab : Integer;
begin
  with Q_SQL do begin
    Close;
    SQL.Text := 'Select TabelaPreco from Favorecidos where Favorecido = :F ';
    Params[0].asInteger := C_TabelaFavorecido.Value;
    Open;

    nTab := FieldByName('TabelaPreco').asInteger;  //se nulo => 0;

    Close;
    SQL.Text := 'Select Preco from ProdutosPreco where Item = :I and TabelaPreco = :T ';
    Params[0].asInteger := C_TabelaItem.Value;
    Params[1].asInteger := nTab;
    Open;

    Result := FieldByName('Preco').asCurrency;

    Close;
  end;
end;


procedure TDMTimeSimples.Q_ContratosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Q_Contratos.Params[0].asInteger := C_TabelaFavorecido.Value;
end;

procedure TDMTimeSimples.C_TabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  C_Contratos.Close;
  C_Contratos.Open;
end;

procedure TDMTimeSimples.C_TabelaQTDHORAS_USERChange(Sender: TField);
var
  nHora : double;
begin
  inherited;
  if (Sender.asString <> '') and (pos(':', Sender.asString) = 0) then begin
  	Sender.AsString := FormataHora(Sender.asString);
  	Exit;
	end;

  nHora := StrToHora(Sender.AsString);

  if C_TabelaQtdHoras.Value <> nHora then begin
    C_TabelaQtdHoras.OnChange := nil;
    C_TabelaQtdHoras.Value 		:= nHora;
    C_TabelaQtdHoras.OnChange := C_TabelaQtdHorasChange; 
  end;
end;

procedure TDMTimeSimples.C_TabelaQTDHORASChange(Sender: TField);
begin
  inherited;
  C_TabelaQtdHoras_User.OnChange 	:= nil;
	C_TabelaQtdHoras_User.Value 		:= HoraToStr(Sender.value);
  C_TabelaQtdHoras_User.OnChange 	:= C_TabelaQtdHoras_UserChange;
end;

procedure TDMTimeSimples.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_TabelaTotalhora.Value := C_TabelaQtdHoras.Value * C_TabelaValorhora.Value;
  C_TabelaTotalContrato.Value := C_TabelaQtdHoras.Value * C_TabelaValorContrato.Value;
end;

end.

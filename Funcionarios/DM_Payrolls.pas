unit DM_Payrolls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade, Variants;

type
  TDMPayrolls = class(TDMManutencao)
    C_TabelaPAYROLL: TIntegerField;
    C_TabelaDATAINICIO: TDateField;
    C_TabelaDATAFIM: TDateField;
    C_TabelaDESCRICAO: TStringField;
    Q_Funcionarios: TIBQuery;
    U_Funcionarios: TIBUpdateSQL;
    C_Funcionarios: TClientDataSet;
    C_FuncionariosDS: TDataSource;
    Q_PayItens: TIBQuery;
    C_PayItens: TClientDataSet;
    P_PayItens: TDataSetProvider;
    C_FuncionariosPAYROLLFUNC: TIntegerField;
    C_FuncionariosPAYROLL: TIntegerField;
    C_FuncionariosFUNCIONARIO: TIntegerField;
    C_FuncionariosVALORBRUTO: TBCDField;
    C_FuncionariosVALORLIQUIDO: TBCDField;
    C_FuncionariosIDAPAGAR: TIntegerField;
    C_FuncionariosNOME: TStringField;
    C_PayItensPAYROLLFUNCITENS: TIntegerField;
    C_PayItensPAYROLLFUNC: TIntegerField;
    C_PayItensPAYROLLITEM: TIntegerField;
    C_PayItensVALOR: TBCDField;
    C_PayItensDESCRICAO: TStringField;
    C_PayItensTIPOPAYROLL: TIntegerField;
    C_PayItensCONTA: TIntegerField;
    C_PayItensLIMITE: TBCDField;
    C_PayItensAGENCIA: TIntegerField;
    C_PayItensIDENTIFICACAO: TStringField;
    C_PayItensCONTALIABILITY: TIntegerField;
    C_PayItensTIPOWAGE: TStringField;
    C_PayItensDESATIVADO: TStringField;
    C_Funcionarios_icSelecionado: TIntegerField;
    C_FuncionariosDESCCARGO: TStringField;
    C_TabelaSTATUS: TStringField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaNOME: TStringField;
    C_FuncionariosPAGOESTEANO: TBCDField;
    C_FuncionariosPERIODICIDADE: TStringField;
    C_FuncionariosULTIMOPGTO: TDateField;
    Q_PayRollsPayItensDS: TIBQuery;
    C_PayRollsPayItens: TClientDataSet;
    U_PayRollsPayItens: TIBUpdateSQL;
    C_PayRollsPayItensDS: TDataSource;
    Q_FuncionariosDS: TDataSource;
    C_FuncionariosQ_PayRollsPayItensDS: TDataSetField;
    C_PayRollsPayItensPAYROLLPAYITEM: TIntegerField;
    C_PayRollsPayItensPAYROLLFUNC: TIntegerField;
    C_PayRollsPayItensITEM: TIntegerField;
    C_PayRollsPayItensPAYROLLITEM: TIntegerField;
    C_PayRollsPayItensVALOR: TBCDField;
    C_PayRollsPayItensCONTA: TIntegerField;
    C_PayRollsPayItensPRODUTIVIDADE: TStringField;
    C_PayRollsPayItensMETODOADIC: TIntegerField;
    C_PayRollsPayItensDESCRICAO: TStringField;
    C_PayRollsPayItensTIPO: TStringField;
    C_PayRollsPayItensTIPOPAYROLL: TIntegerField;
    C_TabelaDATAPAGAMENTO: TDateField;
    C_PayRollsPayItensVALORBASE: TBCDField;
    C_PayRollsPayItensFUNCPAYITEM: TIntegerField;
    C_FuncionariosDATA: TDateField;
    C_FuncionariosVALORCOMISSAO: TBCDField;
    C_TabelaVALORLIQUIDO: TBCDField;
    C_TabelaVALORBRUTO: TBCDField;
    C_TabelaDESATIVADO: TStringField;
    C_FuncionariosFigura: TIntegerField;
    C_PayRollsPayItensAGENCIA: TIntegerField;
    C_PayRollsPayItensIDENTIFICACAO: TStringField;
    C_PayRollsPayItensDESCTIPOPAYROLL: TStringField;
    C_FuncionariosVALORPAGO: TBCDField;
    C_TabelaQ_Funcionarios: TDataSetField;
    C_FuncionariosPago: TStringField;
    C_FuncionariosQTDHORAS: TFloatField;
    C_PayRollsPayItensQTDHORAS: TFloatField;
    C_FuncionariosQTDHORAS_USER: TStringField;
    C_PayRollsPayItensQTDHORAS_USER: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_FuncionariosNewRecord(DataSet: TDataSet);
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure C_PayRollsPayItensNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_FuncionariosCalcFields(DataSet: TDataSet);
    procedure C_PayRollsPayItensQTDHORASChange(Sender: TField);
    procedure C_FuncionariosQTDHORASChange(Sender: TField);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nSeq : integer;
		function IndexOf(slLista : TStringList; Texto : string = '') : integer;
  public
    { Public declarations }
    function 	CalculoFuncionario(Funcionario: integer; DataI, DataF: TDateTime; var ValorLiquido, ValorBruto : Currency; Cliente: integer = 0; PayrollItem : integer = 0) : Currency;
    function 	getValorItemPayRoll(FuncPayItem : integer; DataI, DataF : TDatetime; var QtdHoras : double; Cliente : integer = 0; ValorLiquido : Currency = 0; ValorBruto : Currency = 0 ) : Currency;
    function 	getFaturamento(Funcionario: integer; DataI, DataF: TDateTime): Currency;
    function 	getHorasProduzidas(Funcionario: integer; DataI, DataF: TDateTime; Cliente: integer = 0): Currency;
    procedure AdicionaPayRollPayItens( Valor : Currency; QtdHoras : double = 0; ValorHora : Currency = 0 );
    // Adriano
    function ContabilidadeAtivado:boolean;
    procedure ContabilidadeDesativado;
    procedure CriaContabilidade;
    procedure Contabiliza;
    procedure MostraContabilidade;
    /////////////////////////////////
  end;

var
  DMPayrolls: TDMPayrolls;

implementation
  uses DM_Projeto, Funcoes, DM_Financeiro, Frm_Contabilidade, Math;

{$R *.DFM}

procedure TDMPayrolls.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMPayrolls := self;
end;

function TDMPayrolls.CalculoFuncionario;
var QtdHoras, nSomaQtdHoras : Double;
    Valor, ValorHora, ValorReceita, ValorDespesas, ValorL, ValorB : Currency;
begin
	try
  	ValorReceita := 0;
    ValorDespesas:= 0;
    nSomaQtdHoras:= 0;
  	with DMProjeto.Q_ComandoSQL do begin
    	close;
      sql.text := 'select f.*, p.tipopayroll, p.tipo, p.metodoadic, p.descricao, '+
      										'p.conta, p.agencia, p.identificacao, t.descricao as desctipopayroll '+
                  'from funcspayitens f '+
      										'inner join payrollitens p on f.payrollitem = p.payrollitem '+
                  'inner join tipospayroll t on p.tipopayroll = t.tipopayroll '+
      										'where f.funcionario = :func and (p.temporario = ''N'' or (p.temporario = ''S'' and p.validade >= :data)) '+
                  'and (p.tipopayroll <> 3 or (p.tipopayroll = 3 and not p.metodoadic IN (1,2))) '+
                  'and (p.tipopayroll <> 4 or (p.tipopayroll = 4 and not p.metodoadic IN (1,2))) '+
                  iif(PayrollItem <> 0,'and (p.tipopayroll <> 1 or (p.tipopayroll = 1 and p.payrollitem = '+IntToStr(PayrollItem)+'))','')+
                  'order by p.tipopayroll, f.funcpayitem ';
      parambyname('func').asinteger := Funcionario;
      parambyname('data').asdatetime:= DMProjeto.dDataSistema;
      open;
      while not EOF do begin
        Valor := getValorItemPayRoll( fieldbyname('funcpayitem').asInteger, DataI, DataF, QtdHoras, Cliente);
      	if fieldbyname('TipoPayroll').AsInteger <= 3 then begin
         	 ValorReceita := ValorReceita + Valor;
        end else
           ValorDespesas := ValorDespesas + Valor;
        nSomaQtdHoras := nSomaQtdHoras + QtdHoras;
       	Next;
      end;
      {Cálculo sobre o líquido/bruto}
    	close;
      sql.text := 'select f.*, p.tipopayroll, p.tipo, p.metodoadic, p.descricao, '+
      										'p.conta, p.agencia, p.identificacao, t.descricao as desctipopayroll '+
                  'from funcspayitens f '+
      										'inner join payrollitens p on f.payrollitem = p.payrollitem '+
                  'inner join tipospayroll t on p.tipopayroll = t.tipopayroll '+
      										'where f.funcionario = :func and (p.temporario = ''N'' or (p.temporario = ''S'' and p.validade >= :data)) '+
                  'and (p.tipopayroll IN (3,4) and p.metodoadic IN (1,2)) '+
                  'order by p.tipopayroll, f.funcpayitem';
      parambyname('func').asinteger := Funcionario;
      parambyname('data').asdatetime:= DMProjeto.dDataSistema;
      open;
      while not EOF do begin

        Valor := getValorItemPayRoll( fieldbyname('funcpayitem').asInteger, DataI, DataF, QtdHoras, Cliente, ValorReceita + ValorDespesas, ValorReceita );
        nSomaQtdHoras := nSomaQtdHoras + QtdHoras;
      	if fieldbyname('TipoPayroll').AsInteger = 3 then
     		   ValorReceita := ValorReceita + Valor
        else
           ValorDespesas := ValorDespesas + Valor;

      	Next;
      end;
      ValorLiquido 	:= ValorReceita + ValorDespesas;
      ValorBruto		:= ValorReceita;
      result := nSomaQtdHoras;
    	close;
    end;
  finally
  end;
end;

procedure TDMPayrolls.AdicionaPayRollPayItens;
begin
	with DMPayRolls do begin
  	C_PayRollsPayItens.Append;
    C_PayRollsPayItensItem.AsVariant        	:= DMProjeto.Q_ComandoSQL.fieldbyname('item').Value;
    C_PayRollsPayItensPayRollItem.AsVariant 	:= DMProjeto.Q_ComandoSQL.fieldbyname('payrollitem').Value;
    C_PayRollsPayItensTipoPayRoll.AsVariant 	:= DMProjeto.Q_ComandoSQL.fieldbyname('tipopayroll').Value;
    C_PayRollsPayItensFuncPayItem.AsVariant 	:= DMProjeto.Q_ComandoSQL.fieldbyname('funcpayitem').Value;
    C_PayRollsPayItensValor.AsCurrency       	:= iif(DMProjeto.Q_ComandoSQL.fieldbyname('tipopayroll').Value=1,Truncar(Valor,2),Valor);
    C_PayRollsPayItensValorBase.AsCurrency    := iif(DMProjeto.Q_ComandoSQL.fieldbyname('tipo').AsString='P',DMProjeto.Q_ComandoSQL.fieldbyname('percentual').value,iif(DMProjeto.Q_ComandoSQL.fieldbyname('tipopayroll').Value=1,ValorHora,DMProjeto.Q_ComandoSQL.fieldbyname('valor').AsCurrency));
    C_PayRollsPayItensQtdHoras.AsVariant    	:= QtdHoras;
    C_PayRollsPayItensConta.AsVariant       	:= DMProjeto.Q_ComandoSQL.fieldbyname('conta').Value;
    C_PayRollsPayItensProdutividade.AsVariant := DMProjeto.Q_ComandoSQL.fieldbyname('produtividade').Value;
    C_PayRollsPayItensMetodoAdic.AsVariant    := DMProjeto.Q_ComandoSQL.fieldbyname('metodoadic').Value;
    C_PayRollsPayItensDescricao.AsVariant    	:= DMProjeto.Q_ComandoSQL.fieldbyname('descricao').Value;
    C_PayRollsPayItensAgencia.AsVariant    		:= DMProjeto.Q_ComandoSQL.fieldbyname('Agencia').Value;
    C_PayRollsPayItensIdentificacao.AsVariant := DMProjeto.Q_ComandoSQL.fieldbyname('Identificacao').Value;
    C_PayRollsPayItensDescTipoPayroll.AsVariant := DMProjeto.Q_ComandoSQL.fieldbyname('DescTipoPayroll').Value;
    C_PayRollsPayItens.Post;
  end;
end;

function TDMPayrolls.getValorItemPayRoll;
var Valor, Faturamento, HorasProduzidas, Despesas, 
		ValoraReceber, ValorPago, ValorDevolvido, PagoEsteAno, Limite, ValorHora : Currency;
    Funcionario, PayrollItem : integer;
begin
    Qtdhoras := 0;
    ValorHora:= 0;
  	with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'select f.*, p.TipoPayRoll, p.Tipo, p.MetodoAdic, p.Percentual, '+
    							'p.Conta, p.agencia, p.identificacao, p.valor as valorpayrollitem '+
                  'from funcspayitens f '+
      						'inner join payrollitens p on f.payrollitem = p.payrollitem '+
      						'where f.funcpayitem = :funcpayitem';
      parambyname('funcpayitem').asInteger := FuncPayItem;
      open;
      Funcionario := FieldByName('Funcionario').AsInteger;
      PayrollItem := FieldByName('PayrollItem').AsInteger;
      if FieldByName('Valor').AsCurrency > 0 then
      	ValorHora		:= FieldByName('Valor').AsCurrency
      else
      	ValorHora		:= FieldByName('ValorPayrollItem').AsCurrency;
      {Wage}
			if fieldbyname('TipoPayroll').AsInteger = 0 then begin
        QtdHoras := fieldbyname('qtdhoras').asFloat;
     		result 	 := fieldbyname('valor').asCurrency;
				AdicionaPayRollPayItens( result, QtdHoras );
      {Wage Hours}
			end else if fieldbyname('TipoPayroll').AsInteger = 1 then begin
        Valor 		:= 0;//fieldbyname('valor').asCurrency * fieldbyname('qtdhoras').asCurrency;
        QtdHoras 	:= 0;//fieldbyname('qtdhoras').asCurrency;
        {Valores das Produções}
       	close;
       	sql.text := 'select p.valorhora, sum(p.valorhora * p.qtdhoras), sum(p.qtdhoras), sum(p.despesas) as despesas '+
        						'from producoesfunc p '+
       							'where p.funcionario = :func and datainicio >= :datai and datafim <= :dataf '+
                    'and p.funcpayitem = :funcpayitem '+
                    'and ((p.payroll is null) or (p.payroll = :payroll))and p.naocobrar = ''N'' :Cliente '+
                    'group by p.valorhora ';
       	parambyname('func').asInteger := Funcionario;
        parambyname('funcpayitem').asInteger := PayrollItem;
        parambyname('payroll').asInteger := C_TabelaPayroll.AsInteger;
       	parambyname('datai').asdate		:= DataI;
       	parambyname('dataf').asdate		:= DataF;
       	if Cliente <> 0 then begin
        	sql.text := replace(sql.text,':Cliente','and favorecido = :ID');
          parambyname('ID').asInteger := Cliente;
       	end else
        	sql.text := replace(sql.text,':Cliente','');
       	open;
        if eof then
        	 AdicionaPayRollPayItens( 0, 0, ValorHora );
        while not eof do begin
        	ValorHora := fields[0].AsCurrency;
        	if fields[2].AsFloat > 0 then
        		QtdHoras := QtdHoras + fields[2].asFloat;
          if fields[1].AsCurrency > 0 then
          	Valor := Valor + (ValorHora*fields[2].asFloat);
          AdicionaPayRollPayItens( ValorHora*fields[2].asFloat, fields[2].asFloat, ValorHora );
          Next;
        end;
        {Despesas}
       	close;
       	sql.text := 'select sum(p.despesas) as despesas '+
        						'from producoesfunc p '+
       							'where p.funcionario = :func and datainicio >= :datai and datafim <= :dataf '+
                    'and p.funcpayitem = :funcpayitem '+
                    'and ((p.payroll is null) or (p.payroll = :payroll))and p.naocobrar = ''N'' :Cliente ';
       	parambyname('func').asInteger := Funcionario;
        parambyname('funcpayitem').asInteger := PayrollItem;
        parambyname('payroll').asInteger := C_TabelaPayroll.AsInteger;
       	parambyname('datai').asdate		:= DataI;
       	parambyname('dataf').asdate		:= DataF;
       	if Cliente <> 0 then begin
        	sql.text := replace(sql.text,':Cliente','and favorecido = :ID');
          parambyname('ID').asInteger := Cliente;
       	end else
        	sql.text := replace(sql.text,':Cliente','');
       	open;
        Despesas := fieldbyname('Despesas').AsCurrency;
        if Despesas > 0 then begin
          with dmprojeto.q_sql2 do begin
          	close;
            sql.text := 'select pi.payrollitem, pi.descricao, pi.agencia, pi.identificacao, t.descricao as tipo, '+
            						'pi.agencia, pi.identificacao '+
            						'from payrollitens pi inner join tipospayroll t on pi.tipopayroll = t.tipopayroll '+
                        'where pi.payrollitem = :item';
            parambyname('item').AsInteger := StrToIntDef(DMProjeto.Parametro('ItemPayrollDespesas'),804);
            open;
          	if RecordCount > 0 then begin
  						C_PayRollsPayItens.Append;
    					C_PayRollsPayItensPayRollItem.AsVariant 	:= fieldbyname('payrollitem').AsInteger;
    					C_PayRollsPayItensTipoPayRoll.AsVariant 	:= 4;
    					C_PayRollsPayItensFuncPayItem.AsVariant 	:= 0;
    					C_PayRollsPayItensValor.AsCurrency       	:= Despesas*-1;
    					C_PayRollsPayItensValorBase.AsCurrency    := Despesas*-1;
    					C_PayRollsPayItensQtdHoras.AsVariant    	:= 0;
    					C_PayRollsPayItensDescricao.AsVariant    	:= fieldbyname('descricao').AsString;
    					C_PayRollsPayItensAgencia.AsVariant    		:= fieldbyname('Agencia').Value;
    					C_PayRollsPayItensIdentificacao.AsVariant := fieldbyname('Identificacao').Value;
    					C_PayRollsPayItensDescTipoPayroll.AsVariant := fieldbyname('Tipo').Value;
    					C_PayRollsPayItens.Post;
        		end;
          end;
        end;
        result := Truncar(Valor - Despesas,2);
      {Commission}
			end else if fieldbyname('TipoPayroll').AsInteger = 2 then begin
        {Valor a Receber}
        close;
        sql.text 	:= 'select :Comissao as valorcomissao from comissoes '+
                     'where funcionario = :func and data <= :dataf';
        parambyname('func').asInteger 	:= Funcionario;
        parambyname('dataf').asDateTime := DataF;
        if DMProjeto.Parametro('TipoComissao') = 'I' then {Valor Integral}
          sql.text := replace(sql.text,':Comissao','sum(valorcomissao)')
        else {Por Recebimento}
          sql.text := replace(sql.text,':Comissao','sum(recebidovenda*(perccomissao/100))');
        open;
        valorareceber	:= fieldbyname('valorcomissao').asCurrency;
        {Valor pago}
        close;
        sql.text 	:= 'select sum(pf.valorcomissao) as valorpago from payrollsfunc pf '+
                     'inner join payrolls p on pf.payroll = p.payroll '+
                     'where pf.funcionario = :func and p.status <> ''C''';
        parambyname('func').asInteger := Funcionario;
        open;
        valorpago := fieldbyname('valorpago').asCurrency;
        {Devoluções}
        close;
        sql.text 	:= 'select sum(cd.valor) as valordev from comissoesdev cd '+
                     'where cd.funcionario = :func ';
        parambyname('func').asInteger := Funcionario;
        open;
        valordevolvido := fieldbyname('valordev').asCurrency;
        close;
        {Fórmula}
        result   := valorareceber - valorpago - valordevolvido;
				AdicionaPayRollPayItens( result );
      {Addittion}
     	end else if fieldbyname('TipoPayroll').AsInteger = 3 then begin
       	Limite := fieldbyname('limite').asCurrency;
        {Valor Liquido}
        if fieldbyname('metodoadic').AsInteger = 1 then begin
          if ValorLiquido < 0 then
          	Valor := 0
          else
          	Valor := truncar((fieldbyname('percentual').asCurrency/100)*ValorLiquido,2);
        {Valor Bruto}
        end else if fieldbyname('metodoadic').AsInteger = 2 then begin
          if ValorBruto < 0 then
          	Valor := 0
          else
          	Valor := truncar((fieldbyname('percentual').asCurrency/100)*ValorBruto,2);
        {Metas de Faturamento}
        end else if fieldbyname('metodoadic').AsInteger = 3 then begin
          Faturamento := getFaturamento( Funcionario, DataI, DataF );
          Valor := 0;
          if fieldbyname('tipo').asString = 'P' then
            Valor := truncar((fieldbyname('percentual').asCurrency/100)*Faturamento,2);
          with DMProjeto.Q_SQL2 do begin
            close;
            sql.text := 'select vendamaxima, valor from funcspayitensmetas '+
                      'where funcpayitem = :func '+
                      'order by vendamaxima';
            parambyname('func').asInteger := FuncPayItem;
            open;
            while not EOF do begin
              if Faturamento < fieldbyname('vendamaxima').AsCurrency then begin
                if DMProjeto.Q_ComandoSQL.fieldbyname('tipo').asString = 'P' then
                   Valor := Valor + truncar((fieldbyname('percentual').AsCurrency/100)*Faturamento,2)
                else
                   Valor := Valor + fieldbyname('valor').AsCurrency;
                break;
              end;
              next;
            end;
          end;
        {Horas Produzidas}
        end else if fieldbyname('metodoadic').AsInteger = 4 then begin
          HorasProduzidas := getHorasProduzidas( Funcionario, DataI, DataF );
          Valor := fieldbyname('valor').asCurrency;
          with DMProjeto.Q_SQL do begin
            close;
            sql.text := 'select vendamaxima, valor from funcspayitensmetas '+
                        'where funcpayitem = :func '+
                        'order by vendamaxima';
            parambyname('func').asInteger := FuncPayItem;
            open;
            while not EOF do begin
              if HorasProduzidas < fieldbyname('vendamaxima').AsCurrency then begin
                Valor := Valor + fieldbyname('valor').AsCurrency;
                break;
              end;
              next;
            end;
          end;
        {Horas Produzidas}
        end else if fieldbyname('metodoadic').AsInteger = 5 then begin
          Valor := fieldbyname('valor').asCurrency;
        end;
        if Limite > 0 then begin
          PagoEsteAno := DMProjeto.getPagoEsteAno( Funcionario, FieldByName('PayRollItem').AsInteger );
        	if PagoEsteAno > Limite then
          	Valor := 0
          else if (Limite - (PagoEsteAno+Valor)) < 0 then
          	Valor := Limite - PagoEsteAno;
        end;
        result := Valor;
        AdicionaPayRollPayItens( result );
      {Deduction}
     	end else if fieldbyname('TipoPayroll').AsInteger = 4 then begin
        Limite := fieldbyname('limite').asCurrency;
        if fieldbyname('tipo').asString = 'V' then
      	  Valor := fieldbyname('valor').asCurrency*-1
        else if fieldbyname('tipo').asString = 'P' then begin
          if fieldbyname('metodoadic').AsInteger = 1 then begin
            if ValorLiquido < 0 then
              Valor := 0
            else
      	  		Valor := (Truncar((fieldbyname('percentual').asCurrency/100)*ValorLiquido,2))*-1;
          end else if fieldbyname('metodoadic').AsInteger = 2 then begin
            if ValorBruto < 0 then
            	Valor := 0
            else
          		Valor := (Truncar((fieldbyname('percentual').asCurrency/100)*ValorBruto,2))*-1;
          end else if fieldbyname('metodoadic').AsInteger = 3 then begin
            if DMPayRolls.C_PayRollsPayItens.Locate('PayRollItem',fieldbyname('item').asInteger,[]) then
          		Valor := (Truncar((fieldbyname('percentual').asCurrency/100)*DMPayRolls.C_PayRollsPayItensValor.AsCurrency,2))*-1;
          end;
        end;
        if Limite > 0 then begin
          PagoEsteAno := (-1)*DMProjeto.getPagoEsteAno( Funcionario, FieldByName('PayRollItem').AsInteger );
        	if PagoEsteAno > Limite then
          	Valor := 0
          else if (Limite - (PagoEsteAno+(Valor*-1))) < 0 then
          	Valor := Limite - PagoEsteAno;
        end;
        result := Valor;
        AdicionaPayRollPayItens( result );

      {Adiantamentos}
     	end else if fieldbyname('TipoPayroll').AsInteger = 5 then begin
        result := DMFinanceiro.CreditoFavorecido( Funcionario, false )*-1;
        AdicionaPayRollPayItens( result );
      end;

      close;
    end;
end;

function TDMPayrolls.getFaturamento( Funcionario : integer; DataI, DataF : TDateTime) : Currency;
begin
	with DMProjeto.Q_SQL2 do begin
  	close;
    sql.text := 'select sum(valorvenda) as faturamento from comissoes '+
    						'where data >= :datai and data <= :dataf and funcionario = :func';
    parambyname('func').asInteger := Funcionario;
    parambyname('datai').asdate		:= DataI;
    parambyname('dataf').asdate		:= DataF;
    open;
    result := fieldbyname('faturamento').asCurrency;
    close;
  end;
end;

function TDMPayrolls.getHorasProduzidas( Funcionario : integer; DataI, DataF : TDateTime; Cliente : integer = 0) : Currency;
begin
	with DMProjeto.Q_SQL2 do begin
  	close;
    sql.text := 'select sum(valorhora*qtdhoras) as horasproduzidas from producoesfunc '+
    						'where datainicio >= :datai and datafim <= :dataf and funcionario = :func ';
    if Cliente <> 0 then
    	sql.text := sql.text + 'and favorecido = '+IntToStr(Cliente);

    parambyname('func').asInteger := Funcionario;
    parambyname('datai').asdate		:= DataI;
    parambyname('dataf').asdate		:= DataF;
    open;
    result := fieldbyname('horasproduzidas').asCurrency;
    close;
  end;
end;


procedure TDMPayrolls.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_TabelaStatus.AsString = 'C' then begin
		DlgMsg.ShowMsg( 1600 );
    bSkip := true;
    Exit;
  end;

  if C_TabelaDataInicio.Value > C_TabelaDataFim.Value then begin
		DlgMsg.ShowMsg( 1002 );
    bSkip := true;
    Exit;
  end;

  if C_Funcionarios.IsEmpty then begin
     DlgMsg.ShowMsg( 929, ['os funcionários do payroll.']);
     bSkip := true;
     Exit;
  end;

  with C_Funcionarios do begin
  	disablecontrols;
    first;
    while not eof do begin
    	if C_FuncionariosValorLiquido.Value <= 0 then begin
         if DlgMsg.ShowMsg(1703,[C_FuncionariosNome.AsString]) = 200 then begin
         		bSkip := true;
            enablecontrols;
            exit;
         end else begin
         		Delete;
          	Continue;
         end;
      end;
      if (not C_FuncionariosIDAPAgar.IsNull) and
         (C_FuncionariosValorPago.Value > 0) and
         (C_FuncionariosValorPago.Value <> C_FuncionariosValorLiquido.Value) then begin
      			if DlgMsg.ShowMsg(807,[C_FuncionariosNome.AsString]) = 200 then begin
         			bSkip := true;
            	enablecontrols;
            	exit;
        		end;
      end;

      C_PayRollsPayItens.DisableControls;
      while not C_PayRollsPayItens.EOF do begin
      	if C_PayRollsPayItensValor.AsCurrency = 0 then
        	C_PayRollsPayItens.Delete
        else
        	C_PayRollsPayItens.Next;
      end;
      C_PayRollsPayItens.EnableControls;

      Next;
    end;
    first;
    enablecontrols;
  end;
end;

procedure TDMPayrolls.C_FuncionariosNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_FuncionariosPayRollFunc.Value 	:= nSeq;
  C_FuncionariosValorComissao.Value := 0;
  C_FuncionariosValorLiquido.Value 	:= 0;
  C_FuncionariosValorBruto.Value 		:= 0;
  C_FuncionariosValorPago.Value 		:= 0;
  dec(nSeq);
end;

procedure TDMPayrolls.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  nSeq := -1;
end;

procedure TDMPayrolls.C_PayRollsPayItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet['PayRollPayItem'] := nSeq;
  dec(nSeq);
end;

function TDMPayrolls.IndexOf(slLista : TStringList; Texto : string = '') : integer;
var i : integer;
begin
  result := -1;
	for i:=0 to slLista.Count-1 do begin
  	if Texto = SeparaStrings(slLista[i],';',1) then begin
    	result := i;
      break;
    end;
  end;
end;

procedure TDMPayrolls.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
var ID, nIndex, i: integer;
		sPayRollItem : string;
    ValorComissao, ValorAdiantamento, ValorCreditoRegistrado : Currency;
    slLiability : TStringList;
begin
  inherited;
  slLiability := TStringList.Create;
  with C_Funcionarios do begin
  	disablecontrols;
    first;
    while not eof do begin

      ID := C_FuncionariosIDAPagar.AsInteger;
      if (C_FuncionariosIDAPagar.IsNull) and (C_FuncionariosValorPago.Value = 0) then begin

        if C_FuncionariosValorLiquido.Value > 0 then

      		ID := DMFinanceiro.Conta_A_Pagar( 1,
          																	C_FuncionariosValorLiquido.Value,
                                            C_TabelaDataPagamento.Value, C_TabelaDataPagamento.Value,
                                            C_TabelaDescricao.Value + ' Ref. '+C_TabelaDataInicio.AsString+'-'+C_TabelaDataFim.AsString,
                                        		0,  // Natureza
                                            C_FuncionariosFuncionario.Value,
                                            0,  // IDCompra
                                            '', // NotaFiscal
                                            49,
                                            C_TabelaPayroll.Value,
                                            0,  // Status
                                            0,  // Conta Despesa
                                            C_FuncionariosPayRollFunc.Value,
                                            C_TabelaFavorecido.Value)
        else
        	ID := 0;

      	{Atualizando os campos último pagamento}
				with DMProjeto.Q_SQL do begin
					close;
    			sql.text := 'update favorecidos '+
        							'set ultimopgto = :data, ultimovalorpago = :valor '+
              	      'where favorecido = '+C_FuncionariosFuncionario.AsString;

        	parambyname('data').asDateTime := C_TabelaDataPagamento.Value;
        	parambyname('valor').asCurrency:= iif(C_FuncionariosValorLiquido.Value<0,0,C_FuncionariosValorLiquido.Value);
        	execsql;
  			end;

      end;

      with C_PayRollsPayItens do begin
        	disablecontrols;
      		first;
        	sPayRollItem := '';
         	ValorAdiantamento := 0;
          ValorComissao			:= 0;
        	while not eof do begin
          	if fieldbyname('tipopayroll').value = 1 then
        			sPayRollItem := sPayRollItem + fieldbyname('payrollitem').asString + ',';
           	if fieldbyname('tipopayroll').value = 5 then
        			ValorAdiantamento := ValorAdiantamento + fieldbyname('valor').asCurrency;
           	if fieldbyname('tipopayroll').value = 2 then
        			ValorComissao := ValorComissao + fieldbyname('valor').asCurrency;
            if (fieldbyname('tipopayroll').value = 4) and
            	 (DMFinanceiro.Conta_TipoConta((fieldbyname('conta').value)) = 10) and
               (C_FuncionariosValorLiquido.Value>=0)
               then begin
               		nIndex := IndexOf(slLiability, fieldbyname('agencia').AsString);
                  if nIndex > -1 then
               	  	slLiability[nIndex] := fieldbyname('agencia').AsString+';'+
                                           FloatToStr(StrToFloat(SeparaStrings(slLiability[nIndex],';',2))+fieldbyname('valor').asCurrency)
                  else
                  	slLiability.Add(fieldbyname('agencia').AsString+';'+fieldbyname('valor').asString);
               end;
          	Next;
        	end;
        	enablecontrols;
        	sPayRollItem := Copy(sPayRollItem,1,length(sPayRollItem)-1);

        	if sPayRollItem <> '' then begin
						with DMProjeto.Q_SQL do begin
							close;
    					sql.text := 'update producoesfunc '+
        									'set payroll = :payroll '+
                    			'where datainicio >= :datai and datainicio <= :dataf and funcionario = :func and payroll is null and funcpayitem IN ('+sPayRollItem+')';
        			parambyname('datai').asDateTime := C_TabelaDataInicio.Value;
            	parambyname('dataf').asDateTime := C_TabelaDataFim.Value;
        			parambyname('payroll').asInteger:= C_TabelaPayRoll.Value;
            	parambyname('func').asInteger		:= C_FuncionariosFuncionario.Value;
        			execsql;
            end;
  				end;

          if ValorAdiantamento < 0 then begin
            with DMProjeto.Q_SQL do begin
            	close;
              sql.text := 'select valor from transacoescreditos '+
              						'where idgerador = :id';
              parambyname('id').AsInteger := C_FuncionariosPayrollFunc.AsInteger;
              open;
              ValorCreditoRegistrado := Fields[0].AsCurrency;
              if (ValorCreditoRegistrado = 0) and (DMFinanceiro.CreditoFavorecido(C_FuncionariosFuncionario.AsInteger,false)>=(ValorAdiantamento*-1)) then
          			DMFinanceiro.RegistrarCredito( C_FuncionariosFuncionario.AsInteger,
            																	 C_FuncionariosPayrollFunc.AsInteger,
                      		                     6,
                          		                 false,
                              		             0,
                                  		         ValorAdiantamento,
                                      		     format(DMProjeto.getMsg(3141),[C_TabelaDescricao.AsString])
                                          		 )
              else if (ValorCreditoRegistrado < 0) and ((ValorAdiantamento*-1)<(ValorCreditoRegistrado*-1)) then begin
                close;
                sql.text := 'update transacoescreditos '+
                						'set valor = :valor '+
                            'where idgerador = :id';
                parambyname('valor').AsCurrency := ValorAdiantamento;
              	parambyname('id').AsInteger := C_FuncionariosPayrollFunc.AsInteger;
              	ExecSQL;
              end;
            end;
          end;
      end;

      if C_FuncionariosValorLiquido.Value >= 0 then begin
       	C_Funcionarios.Edit;
      	C_FuncionariosIDAPagar.value := ID;
      	C_FuncionariosData.value 		 := C_TabelaDataPagamento.Value;
        C_FuncionariosValorComissao.Value := ValorComissao;
      	C_Funcionarios.Post;
    	  Next;
      end else
      	C_Funcionarios.Delete;
    end;

    for i:=0 to slLiability.Count-1 do
    	DMFinanceiro.Conta_A_Pagar( 1,
      														StrToFloat(SeparaStrings(slLiability[i],';',2))*(-1),
              										C_TabelaDataPagamento.Value,
      														C_TabelaDataPagamento.Value,
                                  C_TabelaDescricao.Value,
                                  C_TabelaPayRoll.Value,
                                  StrToInt(SeparaStrings(slLiability[i],';',1)), // IDFornecedor
                                  0,  // IDCompra
                                  '', // Nota Fiscal
                                  49,
                                  C_TabelaPayRoll.Value);

    slLiability.Free;
    EnableControls;
  end;
end;

procedure TDMPayrolls.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_TabelaDataPagamento.Value := DMProjeto.dDataSistema;
  C_TabelaStatus.Value 			:= 'A';
  C_TabelaValorLiquido.Value:= 0;
  C_TabelaValorBruto.Value 	:= 0;
end;

procedure TDMPayrolls.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  // Contabilidade
  Contabiliza;

  if not DMContabil.Salvar(C_TabelaPayroll.value) then
    raise Exception.Create(DMProjeto.GetMsg(3117));
  ///////////////////////////
end;

procedure TDMPayrolls.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
  inherited;
  // Contabilidade
  if DMContabil <> nil then
    DMContabil.Iniciar;
end;

function TDMPayrolls.ContabilidadeAtivado;
begin
  result := DMContabil <> nil;
end;

procedure TDMPayrolls.ContabilidadeDesativado;
begin
  DMContabil.FechaDatasets;
  DMContabil.Free;
end;

procedure TDMPayrolls.CriaContabilidade;
begin
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMPayrolls.Contabiliza;
begin
  DMContabil.ContabilizaPayroll(C_TabelaPayroll.value,C_Tabela,C_Funcionarios,C_PayRollsPayItens);
end;

procedure TDMPayrolls.MostraContabilidade;
begin
  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
end;

procedure TDMPayrolls.C_FuncionariosCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_FuncionariosFigura.Value := 0;
  if C_FuncionariosValorPago.Value > 0 then
  	C_FuncionariosPago.Value := 'S'
  else
    C_FuncionariosPago.Value := 'N';
end;

procedure TDMPayrolls.C_PayRollsPayItensQTDHORASChange(Sender: TField);
begin
  inherited;
	C_PayRollsPayItensQtdHoras_User.Value 		:= HoraToStr(Sender.value);
end;

procedure TDMPayrolls.C_FuncionariosQTDHORASChange(Sender: TField);
begin
  inherited;
	C_FuncionariosQtdHoras_User.Value 		:= HoraToStr(Sender.value);
end;

end.

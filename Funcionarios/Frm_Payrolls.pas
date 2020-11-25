unit Frm_Payrolls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  dxEdLib, dxDBELib, TS_DBEdit, dxEditor, dxExEdtr, TS_DBEditDate,
  dxDBTLCl, dxGrClEx, dxGrClms, TS_DBButtonEdit, TS_DBEditFavorecido,
  dxfProgressBar,
  TS_CheckBox, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppCtrls, ppPrnabl, ppStrtch, ppRegion, ppBands, ppCache, Db,
  IBCustomDataSet, IBQuery, Variants, BTOdeum, Placemnt;

type
  TFrmPayrolls = class(TFrmPadrao)
    dbgFuncs: TTS_QDBGrid;
    dbgFuncsPAYROLLFUNC: TdxDBGridMaskColumn;
    dbgFuncsPAYROLL: TdxDBGridMaskColumn;
    dbgFuncsFUNCIONARIO: TdxDBGridMaskColumn;
    dbgFuncsIDAPAGAR: TdxDBGridMaskColumn;
    dbgFuncsNOME: TdxDBGridMaskColumn;
    dbgFuncsLASTPGTO: TdxDBGridDateColumn;
    dbgFuncsYEARTODATE: TdxDBGridMaskColumn;
    dbgFuncsPERIODICIDADE: TdxDBGridImageColumn;
    ppmGrid: TTS_PopupMenu;
    dbgFuncsCargo: TdxDBGridColumn;
    dbgFuncsVALORLIQUIDO: TdxDBGridColumn;
    ppPayroll: TppReport;
    dbPayrollFunc: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    dbPayroll: TppDBPipeline;
    Q_PayrollFunc: TIBQuery;
    Q_Payroll: TIBQuery;
    Q_PayrollFuncDS: TDataSource;
    Q_PayrollDS: TDataSource;
    Q_PayrollFuncPAYROLLFUNC: TIntegerField;
    Q_PayrollFuncPAYROLL: TIntegerField;
    Q_PayrollFuncFUNCIONARIO: TIntegerField;
    Q_PayrollFuncVALORBRUTO: TIBBCDField;
    Q_PayrollFuncVALORLIQUIDO: TIBBCDField;
    Q_PayrollFuncIDAPAGAR: TIntegerField;
    Q_PayrollFuncPAGOESTEANO: TIBBCDField;
    Q_PayrollFuncPERIODICIDADE: TIBStringField;
    Q_PayrollFuncULTIMOPGTO: TDateField;
    Q_PayrollFuncDATA: TDateField;
    Q_PayrollFuncNOME: TIBStringField;
    Q_PayrollFuncDESCCARGO: TIBStringField;
    Q_PayrollPAYROLL: TIntegerField;
    Q_PayrollDATAINICIO: TDateField;
    Q_PayrollDATAFIM: TDateField;
    Q_PayrollDESCRICAO: TIBStringField;
    Q_PayrollSTATUS: TIBStringField;
    Q_PayrollFAVORECIDO: TIntegerField;
    Q_PayrollDATAPAGAMENTO: TDateField;
    Q_PayrollVALORLIQUIDO: TIBBCDField;
    Q_PayrollVALORBRUTO: TIBBCDField;
    Q_PayrollNOME: TIBStringField;
    ppSummaryBand1: TppSummaryBand;
    pnCancelado: TdxfLabel;
    ppmIrPara: TTS_PopupMenu;
    ltimoPayroll1: TMenuItem;
    ltimoPayrolldoCliente1: TMenuItem;
    N4: TMenuItem;
    Adicionarnestepayrollosfuncionriosdoltimopayroll1: TMenuItem;
    PayrollsCancelados1: TMenuItem;
    Q_SQL: TIBQuery;
    btContabilidade: TTS_SpeedButton;
    dbgFuncsColumn12: TdxDBGridImageColumn;
    ImageList1: TImageList;
    TS_Panel1: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label4: TTS_Label;
    dfInicio: TTS_DBEditDate;
    dfFim: TTS_DBEditDate;
    dfDescricao: TTS_DBEdit;
    dfCliente: TTS_DBEditFavorecido;
    dfDataPagamento: TTS_DBEditDate;
    TS_Panel2: TTS_Panel;
    Barra: TdxfProgressBar;
    ppLabel2: TppLabel;
    TS_Panel3: TTS_Panel;
    ckbPagar: TTS_CheckBox;
    ckbImprimir: TTS_CheckBox;
    ImageList2: TImageList;
    dbgFuncsColumn13: TdxDBGridImageColumn;
    Q_PayrollFuncQTDHORAS: TFloatField;
    dbgFuncsQtdHoras_User: TdxDBGridMaskColumn;
    Q_PayrollFuncQTDHORAS_USER: TIBStringField;
    dbgFuncsQTDHORAS: TdxDBGridMaskColumn;
    GridDATAINICIO: TdxDBGridDateColumn;
    GridDATAFIM: TdxDBGridDateColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridDATAPAGAMENTO: TdxDBGridDateColumn;
    GridVALORLIQUIDO: TdxDBGridCurrencyColumn;
    GridVALORBRUTO: TdxDBGridCurrencyColumn;
    GridDESATIVADO: TdxDBGridMaskColumn;
    ppLabel12: TppLabel;
    VerDetalhesdoFuncionrio1: TMenuItem;
    procedure btComando1Click(Sender: TObject);
    procedure dbgFuncsDblClick(Sender: TObject);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure btComando2Click(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ApagarDadosClick(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure ltimoPayroll1Click(Sender: TObject);
    procedure ltimoPayrolldoCliente1Click(Sender: TObject);
    procedure PayrollsCancelados1Click(Sender: TObject);
    procedure Adicionarnestepayrollosfuncionriosdoltimopayroll1Click(
      Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgFuncsClick(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure ppDBText9GetText(Sender: TObject; var Text: String);
    procedure dfInicioDateChange(Sender: TObject);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
  private
    Descricao, sFuncionarios : string;
    DataI, DataF : TDateTime;
    Cliente : integer;
    bFormatoHoraMin : boolean;
    procedure Imprimir( PayRoll: integer );
    procedure AdicionaFuncionario( Funcionario: integer; PayrollItem : integer = 0 );
    procedure Recalcular(sFuncionarios: string);
  public
    { Public declarations }


  end;

var
  FrmPayrolls: TFrmPayrolls;

implementation
  uses DM_Projeto, DM_Payrolls, Dlg_PayrollFunc, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TFrmPayrolls.btComando1Click(Sender: TObject);
var i, nFunc, nTotal : integer;
		Nome, Cargo, sSelecionados, Periodicidade, UltimoPgto : string;
begin
  inherited;
  if (DMPayRolls.C_TabelaDataInicio.IsNull) or (DMPayRolls.C_TabelaDataInicio.IsNull) then begin
     DlgMsg.ShowMsg(929,['o período de referência.']);
     Exit;
  end;

  try
		with DMProjeto do begin
      SetParametrosForm(['','',3]);
  		CriarForm('DlgEscolheFavorecidos',self,true);
    	if ExisteParametrosForm then begin
      	Recalcular( getParametrosForm(0) );
    	end;
  	end;
  finally
    DMProjeto.LimparParametrosForm;
  end;
  Application.ProcessMessages;
  Barra.Position := 0;
end;

procedure TFrmPayrolls.dbgFuncsDblClick(Sender: TObject);
var sSelecFunc, sSelecionados : string;
begin
  inherited;
  if DMPayrolls.C_Funcionarios.IsEmpty then
  	Exit;
  DlgPayRollFunc 	:= TDlgPayRollFunc.Create(self);
  with DlgPayRollFunc do begin
  	Funcionario 	:= DMPayRolls.C_FuncionariosFuncionario.Value;
    PayRollFunc 	:= DMPayRolls.C_FuncionariosPayRollFunc.Value;
    DataI					:= DMPayRolls.C_TabelaDataInicio.Value;
    DataF					:= DMPayRolls.C_TabelaDataFim.Value;

      sSelecFunc := '';
      sSelecionados := '';
      with DMPayrolls.C_Funcionarios do begin
      	DisableControls;
        First;
        while not EOF do begin
        	sSelecionados := CExp(sSelecionados,',') + FieldByName('Funcionario').AsString;
          sSelecFunc := CExp(sSelecFunc,',') + FieldByName('PayRollFunc').AsString;
          Next;
        end;
        First;
        EnableControls;
      end;

    // sSelecionados := dbgFuncs.Distinct('Funcionario');
    // sSelecFunc  	:= dbgFuncs.Distinct('PayRollFunc');
  	ShowModal;
    Release;
  end;
end;

procedure TFrmPayrolls.AdicionaFuncionario( Funcionario : integer; PayrollItem : integer = 0);
var QtdHoras, ValorLiquido, ValorBruto : Currency;
		UltimoPgto : string;
begin
	with DMPayRolls do begin

  	if (not C_Funcionarios.Locate('Funcionario',Funcionario,[])) or (DMProjeto.Parametro('InserirPorItemPayroll')='S') then
    	C_Funcionarios.Append
    else begin
    	C_Funcionarios.Edit;
      with C_PayRollsPayItens do begin
        DisableControls;
      	Filtered := false;
        Filter   := 'payrollfunc = '+C_FuncionariosPayRollFunc.AsString;
        Filtered := true;
        First;
        while not eof do
        	Delete;
      	Filtered := false;
        EnableControls;
      end;
    end;

    with Q_SQL do begin
     	close;
      sql.text := 'select f.nome, f.periodicidade, f.ultimopgto, c.descricao as cargo '+
      						'from favorecidos f '+
                  'left join cargos c on c.cargo = f.cargo '+
      						'where f.favorecido = :fav';
      parambyname('fav').asInteger := Funcionario;
     	open;
    	C_Funcionarios.fieldbyname('funcionario').asinteger  	:= Funcionario;
    	C_Funcionarios.fieldbyname('Nome').asstring 					:= FieldByName('Nome').AsString;
    	C_Funcionarios.fieldbyname('periodicidade').asstring 	:= FieldByName('Periodicidade').AsString;
    	C_Funcionarios.fieldbyname('desccargo').asstring 			:= FieldByName('Cargo').AsString;

    	UltimoPgto := FieldByName('UltimoPgto').AsString;
      close;
    end;
   	if UltimoPgto <> '' then
     	C_Funcionarios.fieldbyname('ultimopgto').asDateTime := StrToDate(UltimoPgto);

    C_Funcionarios.fieldbyname('pagoesteano').asCurrency 	:= DMProjeto.getPagoEsteAno( Funcionario );

    QtdHoras := CalculoFuncionario(Funcionario, dfInicio.Date, dfFim.Date, ValorLiquido, ValorBruto, dfCliente.ID, PayrollItem );

    C_Funcionarios.fieldbyname('qtdhoras').asCurrency 		:= QtdHoras;
    C_Funcionarios.fieldbyname('valorliquido').asCurrency := ValorLiquido;
    C_Funcionarios.fieldbyname('valorbruto').asCurrency 	:= ValorBruto;
    C_Funcionarios.Post;
  end;
end;

procedure TFrmPayrolls.ppDBText5GetText(Sender: TObject; var Text: String);
begin
  inherited;
	if DMPayRolls.C_TabelaFavorecido.IsNull then
  	Text := '';
end;

procedure TFrmPayrolls.btComando2Click(Sender: TObject);
begin
  inherited;
	Imprimir( DMPayrolls.C_TabelaPayRoll.Value );
end;

procedure TFrmPayrolls.FormComponentGravou(Sender: TObject);
begin
  inherited;
	if ckbImprimir.Checked then
  	btComando2.Click;
  if ckbPagar.Checked then begin
  	if (DMPayrolls.C_Tabela.ChangeCount > 0) or (DMPayrolls.C_Funcionarios.ChangeCount > 0) then
  		btGravar.Click;
		with DMProjeto do begin
  		SetParametrosForm([null, DMPayrolls.C_TabelaPayRoll.AsInteger]);
    	CriarForm('DlgPgtoAFuncionarios',self,true);
  	end;
  end;
end;

procedure TFrmPayrolls.Imprimir( PayRoll : integer );
begin
  with Q_PayRoll do begin
  	close;
    parambyname('payroll').asInteger := PayRoll;
    open;
  end;
  with Q_PayRollFunc do begin
  	close;
    parambyname('payroll').asInteger := PayRoll;
    open;
  end;
  DMProjeto.ImprimirCabecalho( regCab );
  ppPayroll.Print;
end;

procedure TFrmPayrolls.ppDBText7GetText(Sender: TObject; var Text: String);
begin
  inherited;
	if Text = 'S' then
  	Text := 'Semanal'
  else if Text = 'D' then
  	Text := 'Diário'
	else if Text = 'M' then
  	Text := 'Mensal'
  else if Text = 'Q' then
  	Text := 'Quinzenal';
end;

procedure TFrmPayrolls.ApagarDadosClick(Sender: TObject);
begin
//  inherited;
  if pnCancelado.Visible then
  	exit;

  if DlgMsg.ShowMsg( 577, [' este Payroll.']) = 200 then
  	exit;

	with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select count(p.payroll) from payrolls p '+
    						'inner join payrollsfunc pf on p.payroll = pf.payroll '+
                'inner join duplicatasapagar d on pf.idapagar = d.id '+
                'where p.payroll = '+DMPayrolls.C_TabelaPayRoll.AsString+' and d.valorpago > 0';
    open;
    if fields[0].AsInteger > 0 then
    	if DlgMsg.ShowMsg(1003) = 200 then
        exit;
    close;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  	close;
    sql.text := 'execute procedure PP_CancelaPayroll( :PayRoll, 0, 0, ''S'' )';
    parambyname('Payroll').AsInteger := DMPayrolls.C_TabelaPayRoll.AsInteger;
    execsql;

    DMProjeto.CancelarLancamentos(DMPayrolls.C_TabelaPayRoll.AsString);

    with DMPayrolls do begin
    	C_Tabela.Edit;
      C_TabelaStatus.Value := 'C';
      C_Tabela.Post;
      C_Tabela.ApplyUpdates(0);
    end;
    pnCancelado.Visible := true;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
end;

procedure TFrmPayrolls.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
	pnCancelado.Visible := DMPayrolls.C_TabelaStatus.Value = 'C';
end;

procedure TFrmPayrolls.ltimoPayroll1Click(Sender: TObject);
begin
  inherited;
  with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select max(payroll) from payrolls where status <> ''C''';
    open;
  	Localizar('',' where p.payroll = '+fields[0].AsString );
    close;
  end;
end;

procedure TFrmPayrolls.ltimoPayrolldoCliente1Click(Sender: TObject);
begin
  inherited;
  if dfCliente.ID = 0 then begin
    DlgMsg.ShowMsg(929, ['o Cliente']);
    dfCliente.SetFocus;
  	exit;
  end;
  with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select max(payroll) from payrolls where favorecido = '+IntToStr(dfCliente.ID)+' and status <> ''C''';
    open;
  	Localizar('',' where p.payroll = '+fields[0].AsString );
    close;
  end;
end;

procedure TFrmPayrolls.PayrollsCancelados1Click(Sender: TObject);
var sIDs : string; 
begin
  inherited;
  with DMProjeto.Q_SQL do begin
    disablecontrols;
  	close;
    sql.text := 'select payroll from payrolls where status = ''C''';
    open;
    first;
    sIDs := '';
    while not eof do begin
    	sIDs := sIDs + fields[0].asstring+',';
      next;
    end;
    enablecontrols;
    close;
    sIDs := Copy( sIDs, 1, length(sIDs)-1 );
    if sIDs <> '' then
  		Localizar('',' where p.payroll IN ('+sIDs+')' )
    else
    	DlgMsg.ShowMsg(44,['']);
  end;
end;

procedure TFrmPayrolls.Adicionarnestepayrollosfuncionriosdoltimopayroll1Click(
  Sender: TObject);
var i, nTotal : integer;
begin
  inherited;
  if (DMPayRolls.C_TabelaDataInicio.IsNull) and (DMPayRolls.C_TabelaDataInicio.IsNull) then begin
     DlgMsg.ShowMsg(929,['o período de referência.']);
     Exit;
  end;

  with Q_SQL do begin
  	close;
    sql.text := 'select pf.*, f.nome, f.periodicidade, f.ultimopgto, c.descricao as cargo '+
    						'from payrollsfunc pf '+
                'inner join favorecidos f on f.favorecido = pf.funcionario '+
                'left join cargos c on f.cargo = c.cargo '+
    						'where pf.payroll = (select max(payroll) from payrolls where status <> ''C'')';
    open;
    last;
    first;
    nTotal := RecordCount;
    i := 1;
    Barra.Position := 0;
    while not eof do begin

      Barra.Position := trunc(((i)/nTotal)*100);
    	AdicionaFuncionario( fieldbyname('funcionario').asInteger );
      next;
      inc(i);

    end;
    close;
    Barra.Position := 0;
  end;
end;

procedure TFrmPayrolls.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;

  // Adriano
  DMPayrolls.Contabiliza;

  DMPayrolls.MostraContabilidade;
  ////////////////
end;

procedure TFrmPayrolls.FormCreate(Sender: TObject);
begin
  // Adriano
  DMPayrolls.CriaContabilidade;
  inherited;
end;

procedure TFrmPayrolls.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMPayrolls.ContabilidadeAtivado then
    DMPayrolls.ContabilidadeDesativado;
  ////////////////////
end;

procedure TFrmPayrolls.dbgFuncsClick(Sender: TObject);
begin
  inherited;
  if dbgFuncs.TS_SelectedColumn = 'Figura' then
  	dbgFuncsDblClick(sender);
end;

procedure TFrmPayrolls.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := dfInicio.Text+' a '+dfFim.Text;
end;

procedure TFrmPayrolls.FormComponentBeforeClearParams(Sender: TObject);
var i : integer;
		sPayrollItens : string;
begin
  inherited;
	bFormatoHoraMin :=  not (DMProjeto.Parametro('FormatoHorasProd') = 'H');
  if not bFormatoHoraMin then
  	dbgFuncsQtdHoras_User.Visible := false
  else
    dbgFuncsQtdHoras.Visible := false;

  with DMProjeto do begin
		if ExisteParametrosForm then begin
    	if getParametrosForm(0) = null then begin
        Descricao := getParametrosForm(1);
      	Cliente := getParametrosForm(2);
        DataI   := getParametrosForm(3);
        DataF   := getParametrosForm(4);
        sFuncionarios := getParametrosForm(5);
        sPayrollItens := getParametrosForm(6);
      	with DMPayrolls do begin
        	C_TabelaDescricao.Value 	:= Descricao;
      		dfCliente.ID := Cliente;
      		C_TabelaDataInicio.Value 	:= DataI;
        	C_TabelaDataFim.Value 	 	:= DataF;
					for i:=1 to ContaStrings(sFuncionarios,',') do begin
           	if DMProjeto.Parametro('InserirPorItemPayroll')='S' then
        				 AdicionaFuncionario( StrToInt(SeparaStrings(sFuncionarios,',', i)), StrToInt(SeparaStrings(sPayrollItens,',', i)) )
           	else
              AdicionaFuncionario( StrToInt(SeparaStrings(sFuncionarios,',', i)) )
          end;
      	end;
      end;
    end;
  end;
end;

procedure TFrmPayrolls.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	btComando2.Visible := true;
end;

procedure TFrmPayrolls.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	btComando2.Visible := false;
end;

procedure TFrmPayrolls.ppDBText9GetText(Sender: TObject; var Text: String);
begin
  inherited;
	if bFormatoHoraMin then
  	Text := Q_PayrollFunc.FieldByName('QtdHoras_User').AsString
  else
  	Text := formatfloat('###,##0.00',Q_PayrollFunc.FieldByName('QtdHoras').AsCurrency);
end;

procedure TFrmPayrolls.dfInicioDateChange(Sender: TObject);
begin
  inherited;
	if not DMPayrolls.C_Funcionarios.IsEmpty then begin
  	if DlgMsg.ShowMsg(4028) = 100 then
    	Recalcular( dbgFuncs.Distinct('Funcionario') );
  end;
end;

procedure TFrmPayrolls.Recalcular( sFuncionarios : string );
var
    i, nFunc, nTotal : integer;
begin
    Barra.Position 	:= 0;
    nTotal := ContaStrings(sFuncionarios,',');
 		for i:=1 to nTotal do begin

      Barra.Position := trunc(((i)/nTotal)*100);
      nFunc := StrToInt(SeparaStrings(sFuncionarios,',',i));
      AdicionaFuncionario( nFunc );

    end;
    Barra.Position 	:= 0;
end;

procedure TFrmPayrolls.ppLabel12GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if Q_PayrollStatus.Value <> 'C' then
  	Text := '';
end;

end.

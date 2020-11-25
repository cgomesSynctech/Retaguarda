unit Dlg_EmissaoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Balnhint, ExtCtrls, TS_Panel,
  StdCtrls, Db, DBTables, TS_Label,
  TS_RadioGroup, TS_Image, TS_Edit, DlgMsg,
  IBQuery, TS_LastDataObject, CheckLst, TS_CheckListBox,
  DBClient, raCodMod, ppModule, daDataModule,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppEndUsr, TS_CheckBox,
  ppRegion, TS_SpeedButton, dxCntner, dxExEdtr, dxEdLib, 
  FormsComponent, jpeg, dxfLabel, TS_MaxPanel, TS_Bevel, dxDBGrid, dxTL,
  dxDBCtrl, TS_QDBGrid, IBCustomDataSet, Menus, Buttons, teCtrls,
  TS_EffectsPanel, TS_PopupMenu, TransEff, teTimed, teMasked, teDiagon,
  teForm, ppSubRpt;

type
  TDlgEmissaoCheques = class(TFrmModeloCadastros)
    Q_Cheques: TIBQuery;
    Q_ChequesDs: TDataSource;
    TS_Label4: TTS_Label;
    Q_ChequesRETIRADA: TIntegerField;
    Q_ChequesIDDOC: TIntegerField;
    Q_ChequesVENCIMENTO: TDateField;
    Q_ChequesNOME: TIBStringField;
    Q_ChequesHISTORICO: TIBStringField;
    Q_ChequesCHEQUENOMINAL: TIBStringField;
    Q_ChequesENDERECO: TIBStringField;
    Q_ChequesCIDADE: TIBStringField;
    Q_ChequesCEP: TIBStringField;
    Q_ChequesUF: TIBStringField;
    Q_ChequesValorExtenso: TStringField;
    Q_ChequesNUMCHEQUE: TIntegerField;
    Q_ChequesVALOR: TIBBCDField;
    C_Contas: TClientDataSet;
    C_ContasDS: TDataSource;
    C_ContasConta: TIntegerField;
    C_ContasNomeConta: TStringField;
    C_ContasQtdeImprimir: TIntegerField;
    C_ContasPrimeiroCheque: TIntegerField;
    rbChequesModelo_A: TppReport;
    ppHeaderBand1: TppHeaderBand;
    DetalheModeloA: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBChequesModelo_A: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    Q_ChequesPAGOESTEANO: TIBBCDField;
    ppDBMemo4: TppDBMemo;
    ppDBText3: TppDBText;
    ppNumCheque: TppLabel;
    ppLabel4: TppLabel;
    ppDesigner: TppDesigner;
    rbChequesModelo_B: TppReport;
    ppHeaderBand2: TppHeaderBand;
    DetalheModeloB: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBMemo5: TppDBMemo;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel5: TppLabel;
    ppDBMemo8: TppDBMemo;
    ppLabel8: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppDBChequesModelo_B: TppDBPipeline;
    ckTeste: TTS_CheckBox;
    ppDBText27: TppDBText;
    ppRegion1: TppRegion;
    ppLabel6: TppLabel;
    ppDBText21: TppDBText;
    ppDBText13: TppDBText;
    ppDBText22: TppDBText;
    ppLabel7: TppLabel;
    ppDBText23: TppDBText;
    ppRegion2: TppRegion;
    ppLabel9: TppLabel;
    ppDBText25: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    C_ContasCheques: TStringField;
    btModeloA: TTS_SpeedButton;
    btModeloB: TTS_SpeedButton;
    DBContas: TTS_QDBGrid;
    DBContasConta: TdxDBGridMaskColumn;
    DBContasNomeConta: TdxDBGridColumn;
    DBContasQtdeImprimir: TdxDBGridColumn;
    DBContasPrimeiroCheque: TdxDBGridColumn;
    DBContasCheques: TdxDBGridColumn;
    C_Contas_icSelecionado: TIntegerField;
    ImprimirCheque1: TMenuItem;
    N1: TMenuItem;
    Configurar1: TMenuItem;
    ckbImprimirDireto: TTS_CheckBox;
    regYearToDate: TppRegion;
    regMemo: TppRegion;
    MemoItens1_C: TppMemo;
    regMemo2: TppRegion;
    MemoItens2_C: TppMemo;
    ppRegion4: TppRegion;
    ppLabel12: TppLabel;
    ppDBText28: TppDBText;
    Q_ChequesTIPORETIRADA: TIntegerField;
    regMemoItens3: TppRegion;
    MemoItens3_C: TppMemo;
    MemoItens3_D: TppMemo;
    regMemoItens4: TppRegion;
    MemoItens4_C: TppMemo;
    MemoItens4_D: TppMemo;
    ppDBText7: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    Memo3: TppMemo;
    Memo4: TppMemo;
    MemoItens1_D: TppMemo;
    MemoItens2_D: TppMemo;
    Memo2: TppMemo;
    Memo1: TppMemo;
    rbChequesModelo_A_Func: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText29: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText30: TppDBText;
    ppLabel3: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBText34: TppDBText;
    ppLabel10: TppLabel;
    ppRegion3: TppRegion;
    ppLabel11: TppLabel;
    ppDBText35: TppDBText;
    ppRegion5: TppRegion;
    ppMemo3: TppMemo;
    ppDBText36: TppDBText;
    ppRegion6: TppRegion;
    ppMemo4: TppMemo;
    ppMemo5: TppMemo;
    ppMemo6: TppMemo;
    ppDBText37: TppDBText;
    ppLabel13: TppLabel;
    ppDBText38: TppDBText;
    ppRegion7: TppRegion;
    ppLabel14: TppLabel;
    ppDBText39: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    rbChequesModelo_B_Func: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBMemo6: TppDBMemo;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel15: TppLabel;
    ppDBMemo7: TppDBMemo;
    ppLabel16: TppLabel;
    ppDBText44: TppDBText;
    ppRegion8: TppRegion;
    ppLabel17: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel18: TppLabel;
    ppDBText48: TppDBText;
    ppRegion9: TppRegion;
    ppDBText49: TppDBText;
    ppLabel19: TppLabel;
    ppRegion10: TppRegion;
    ppMemo7: TppMemo;
    ppMemo8: TppMemo;
    ppMemo9: TppMemo;
    ppRegion11: TppRegion;
    ppMemo10: TppMemo;
    ppMemo11: TppMemo;
    ppMemo12: TppMemo;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    procedure Q_ChequesCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppNumChequeGetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure btModeloBClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btModeloAMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DetalheModeloAAfterPrint(Sender: TObject);
    procedure DetalheModeloBAfterPrint(Sender: TObject);
    procedure DetalheModeloABeforePrint(Sender: TObject);
    procedure DetalheModeloBBeforePrint(Sender: TObject);
  private
    { Private declarations }
     Cheques : String;
     Conta : Integer;
     nNumCheque : integer;
     sFuncionario, sContas, sCheques, sNumCheque : string;
     procedure AdicionaMemo( MemoItensC, MemoItensD, Memo : TppMemo );
  public
    { Public declarations }
    procedure iniciar(sChequesParam : String; sContasParam : String; sNumChequeParam : string = '0');
  end;

var
  DlgEmissaoCheques: TDlgEmissaoCheques;

implementation
Uses Util2Ingles, DM_Projeto, Funcoes, DM_Financeiro;
{$R *.DFM}

Procedure TDlgEmissaoCheques.iniciar;
begin
  sContas := sContasParam;
  sCheques:= sChequesParam;
  sNumCheque := sNumChequeParam; 
end;

procedure TDlgEmissaoCheques.Q_ChequesCalcFields(DataSet: TDataSet);
begin
  inherited;
  Q_ChequesValorExtenso.AsString := PrimeiraLetraMaiuscula(Extenso(Q_ChequesValor.Value)+' '+StrRepeat('* ',255));
end;

procedure TDlgEmissaoCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_Contas.Close;
  Q_Cheques.Close;
  DlgEmissaoCheques := Nil;
end;

procedure TDlgEmissaoCheques.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Q_ChequesCidade.AsString <> '' then
		Text := Q_ChequesCidade.AsString+'-'+Q_ChequesUF.AsString+'   '+Q_ChequesCep.AsString
  else
  	Text := '';
end;

procedure TDlgEmissaoCheques.ppNumChequeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('000000', nNumCheque );
end;

procedure TDlgEmissaoCheques.FormShow(Sender: TObject);
var
  sContasSel, sSelect:String;
  Qtde, i : integer;
begin
	inherited;
  if not C_Contas.Active then begin
  	C_Contas.CreateDataSet;
    C_Contas.Open;
  end else
  	C_Contas.EmptyDataSet;
  for i:=1 to ContaStrings(sContas,';') do begin
    sContasSel := SeparaStrings(sContas,';',i);
    if pos('=',sContas)>0 then begin
    	Conta 	:= StrToInt(SeparaStrings(sContasSel,' = ',1));
    	Qtde  	:= StrToInt(SeparaStrings(sContasSel,' = ',2));
      Cheques := SeparaStrings(sContasSel,' = ',3);
    end else begin
    	Conta 	:= StrToInt(sContasSel);
    	Qtde  	:= ContaStrings(sCheques,',');
      Cheques := sCheques;
    end;
    C_Contas.Append;
    C_ContasConta.Value 				:= Conta;
    C_ContasNomeConta.Value 		:= DMFinanceiro.getDescricaoConta( Conta );
    if (sNumCheque = '0') or (sNumCheque = '') then
    	C_ContasPrimeiroCheque.Value	:= DMFinanceiro.ProximoCheque( Conta )
    else
	    C_ContasPrimeiroCheque.Value	:= StrToInt(sNumCheque);

    C_ContasQtdeImprimir.Value 	:= Qtde;
    C_ContasCheques.Value				:= sCheques;
    C_Contas.Post;
    DBContas.Selecionar;
    DBContas.SetFocus;
    DBContas.FocusedColumn := 2;
  end;
  btModeloA.Down := (DMProjeto.Parametro('ModeloCheque')='') or (DMProjeto.Parametro('ModeloCheque')='A');
  btModeloB.Down := DMProjeto.Parametro('ModeloCheque')='B';

  ckbImprimirDireto.Checked := DMProjeto.Parametro('ImprimirDireto')='S';
end;

procedure TDlgEmissaoCheques.btModeloBClick(Sender: TObject);
begin
  if btModeloB.Down then
  	Abort;
  inherited;
end;

procedure TDlgEmissaoCheques.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ConfCheque' ) then
  	exit;

  Q_Cheques.Close;

  if btModeloA.Down then
  	ppDesigner.Report := rbChequesModelo_A
  else
	  ppDesigner.Report := rbChequesModelo_B;

	ppDesigner.Report.Template.FileName := DMProjeto.RelPath+'ChequeModelo_'+Direita(ppDesigner.Report.Name,1)+'.rtm';

  if FileExists(DMProjeto.RelPath+'ChequeModelo_'+Direita(ppDesigner.Report.Name,1)+'.rtm') then
    ppDesigner.Report.Template.LoadFromFile;

	ppDesigner.ShowModal;
	ppDesigner.Report.Template.SaveToFile;
  ppDesigner.Report.Template.FileName := '';
  ppDesigner.Report := nil; 
end;

procedure TDlgEmissaoCheques.btGravarClick(Sender: TObject);
Var
 sSelect : String;
 i : integer;
begin
  inherited;
  DBContas.FirstSelected;
  Conta := C_ContasConta.AsInteger;
  for i:=1 to DBContas.QuantidadeSelecionada do begin
    if Conta <> C_ContasConta.AsInteger then begin
    	if DlgMsg.ShowMsg( 582 ) = 200 then
      	Exit;
      Conta := C_ContasConta.AsInteger;
    end;
  	{Verificando se o Número do Cheque já existe para a Conta}
  	with DMProjeto.Q_SQL do begin
    	Close;
    	SQL.Text := 'Select IDDoc from RetiradasDoc rd '+
                	'where Conta = :C and NumCheque >= :NCI and NumCheque <= :NCF and NumCheque is not null ';
    	ParambyName('C').asInteger 	 := C_ContasConta.AsInteger;
    	ParamByName('NCI').asInteger := C_ContasPrimeiroCheque.AsInteger;
    	ParamByName('NCF').asInteger := C_ContasPrimeiroCheque.AsInteger+C_ContasQtdeImprimir.AsInteger-1;
    	Open;

    	if RecordCount > 0 then begin
      	First;
        while not EOF do begin
        	if not (pos(fields[0].AsString,C_ContasCheques.Value)>0) then begin
            close;
        		DlgMsg.ShowMsg( 522 );
       			exit;
          end;
          next;
        end;
        close;
      end;
    end;

  	sSelect := 'Select r.Retirada, r.TipoRetirada, rd.NumCheque, rd.Valor, rd.IDDOC, '+
               '       rd.Vencimento, f.Nome, r.Historico, '+
               '       rd.ChequeNominal, f.Endereco,f.cidade,f.cep,f.uf,   '+
               '       (Select Sum(ValorPago) from DuplicatasAPagar dp '+
               '        where dp.Fornecedor = rd.FavorecidoDoc and '+
               '              dp.Status >= 50 and '+
               '              dp.DataPago >= ''01/01/'+FormatDateTime('yyyy',DMProjeto.dDataSistema)+''')  as PagoEsteAno '+
               'From   (((Retiradas r INNER JOIN RetiradasDoc rd ON r.Retirada = rd.Retirada) '+
               '       LEFT  JOIN Favorecidos f ON f.Favorecido = rd.FavorecidoDoc) '+
               '       INNER JOIN FormasPagamento fp ON rd.FormaPagamento = fp.FormaPagamento) '+
               'Where fp.Especie = 1 and rd.IDDOC in ('+C_ContasCheques.AsString+') '+
               'Order by rd.ChequeNominal ';
  	With Q_Cheques do Begin
    	Close;
    	Sql.Clear;
    	Sql.Add(sSelect);
    	Open;
      if Q_ChequesNumCheque.Value = 0 then
      	nNumCheque := C_ContasPrimeiroCheque.AsInteger
      else
      	nNumCheque := Q_ChequesNumCheque.Value;
 			Try
    		if btModeloA.Down then begin
           rbChequesModelo_A.Template.FileName := DMProjeto.RelPath+'ChequeModelo_A.rtm';
           if FileExists(rbChequesModelo_A.Template.FileName) then
           		rbChequesModelo_A.Template.LoadFromFile;
           if ckbImprimirDireto.Checked then
              rbChequesModelo_A.DeviceType := 'Printer'
           else
	            rbChequesModelo_A.DeviceType := 'Screen';
           rbChequesModelo_A.Print;
        end else begin
        	 rbChequesModelo_B.Template.FileName := DMProjeto.RelPath+'ChequeModelo_B.rtm';
           if FileExists(rbChequesModelo_B.Template.FileName) then
           		rbChequesModelo_B.Template.LoadFromFile;

           if ckbImprimirDireto.Checked then
              rbChequesModelo_B.DeviceType := 'Printer'
           else
	            rbChequesModelo_B.DeviceType := 'Screen';
           rbChequesModelo_B.Print;
    		end;
     		if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   	  		DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      	if not ckTeste.Checked then begin
    			disablecontrols;
    			First;

          if Q_ChequesNumCheque.Value = 0 then
        		nNumCheque := C_ContasPrimeiroCheque.AsInteger
          else
           	nNumCheque := Q_ChequesNumCheque.Value;

    			while not EOF do begin
      			with DMFinanceiro.Q_SQL2 do begin
      				Close;
        			SQL.Text := 'Update RetiradasDoc '+
        									'set NumCheque = :NumCheque '+
                 					'Where IDDoc = :IDDoc ';
        			ParamByName('NumCheque').AsInteger	:= nNumCheque;
        			ParamByName('IDDoc').AsInteger			:= Q_ChequesIDDoc.AsInteger;
        			ExecSQL;
        		end;
            if Q_ChequesNumCheque.Value = 0 then
        			inc(nNumCheque)
            else
            	nNumCheque := Q_ChequesNumCheque.Value;
        		Next;
      		end;
          if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      	end;
        Q_Cheques.Close;
	 	except
 			on e:exception do
        DlgMsg.ShowMsg(1,e.message);
 	 	end;
    end;
  end;
  if ckTeste.Checked then
  	ModalResult := mrNone
  else
  	ModalResult := mrOk;
end;

procedure TDlgEmissaoCheques.btLimparClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TDlgEmissaoCheques.btModeloAMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if btModeloA.Down then
  	Abort;
end;

procedure TDlgEmissaoCheques.AdicionaMemo;
var PayRollFunc : integer;
begin
    with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'Select d.payrollfunc, p.payroll, p.DataInicio, p.DataFim, p.Descricao '+
									'from Retiradas r '+
                  'inner join RetiradasDuplicatas rd on r.retirada = rd.retirada '+
        					'inner join DuplicatasaPagar d on rd.duplicata = d.id '+
                  'inner join PayrollsFunc pf on d.payrollfunc = pf.payrollfunc '+
                  'inner join PayRolls p on pf.payroll = p.payroll '+
                  'where r.retirada = :retirada';
      params[0].AsInteger := Q_ChequesRetirada.value;
      open;
      PayRollFunc := fields[0].AsInteger;

  	 	Memo.Lines.clear;
    	Memo.Lines.Add('Period '+fields[2].AsString+' - '+fields[3].AsString);

      close;
      sql.text := 'select pi.descricao, pfi.valor, pi.limite, pfi.qtdhoras, '+
      						'pi.cb_valor, pi.cb_limite, pi.cb_horas, pi.tipopayroll '+
      						'from payrollspayitens pfi '+
                  'inner join payrollitens pi on pfi.payrollitem = pi.payrollitem '+
                  'where pfi.payrollfunc = :payrollfunc and pi.cb_payrollitem = ''S'' '+
                  'order by pi.payrollitem';
      params[0].AsInteger := PayRollFunc;
      open;
      while not eof do begin
          if fieldbyname('tipopayroll').asInteger in [1,2,3] then
        		MemoItensC.Lines.Add( fields[0].AsString+
                                	iif(fieldbyName('cb_horas').AsString='S',' - Hs: '+formatfloat('###,##0.00',fields[3].asCurrency),'')+
                                	iif(fieldbyName('cb_valor').AsString='S',' - Amount: '+formatfloat('###,##0.00',fields[1].asCurrency),'')+
                                	iif(fieldbyName('cb_limite').AsString='S',' - Limit: '+formatfloat('###,##0.00',fields[2].asCurrency),''))
          else
          	MemoItensD.Lines.Add( fields[0].AsString+
                                	iif(fieldbyName('cb_horas').AsString='S',' - Hs: '+formatfloat('###,##0.00',fields[3].asCurrency),'')+
                                	iif(fieldbyName('cb_valor').AsString='S',' - Amount: '+formatfloat('###,##0.00',fields[1].asCurrency),'')+
                                	iif(fieldbyName('cb_limite').AsString='S',' - Limit: '+formatfloat('###,##0.00',fields[2].asCurrency),'') );

          Next;
  		end;
      close;
    end;
end;

procedure TDlgEmissaoCheques.DetalheModeloAAfterPrint(Sender: TObject);
begin
  inherited;
	if Q_ChequesNumCheque.Value = 0 then
  	inc(nNumCheque)
  else
   	nNumCheque := Q_ChequesNumCheque.Value;
end;

procedure TDlgEmissaoCheques.DetalheModeloBAfterPrint(Sender: TObject);
begin
  inherited;
	inc(nNumCheque);
end;

procedure TDlgEmissaoCheques.DetalheModeloABeforePrint(Sender: TObject);
begin
  inherited;
  if Q_ChequesTipoRetirada.Value = 6 then
  	AdicionaMemo( MemoItens1_C, MemoItens1_D, Memo1 )
  else
	  Memo1.Lines.Text := Q_ChequesHistorico.Value;
  Memo2.Lines.Text := Memo1.Lines.Text;
  MemoItens2_C.Lines.Text := MemoItens1_C.Lines.Text;
  MemoItens2_D.Lines.Text := MemoItens1_D.Lines.Text;
end;

procedure TDlgEmissaoCheques.DetalheModeloBBeforePrint(Sender: TObject);
begin
  inherited;
  if Q_ChequesTipoRetirada.Value = 6 then
  	AdicionaMemo( MemoItens3_C, MemoItens3_D, Memo3 )
  else
	  Memo3.Lines.Text := Q_ChequesHistorico.Value;
  Memo4.Lines.Text := Memo3.Lines.Text;
  MemoItens4_C.Lines.Text := MemoItens3_C.Lines.Text;
  MemoItens4_D.Lines.Text := MemoItens3_D.Lines.Text;
end;

end.




unit Dlg_EmissaoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, ExtCtrls, TS_Panel,
  StdCtrls, Db, DBTables, TS_Label,
  TS_RadioGroup, TS_Image, TS_Edit, DlgMsg,
  IBQuery, TS_LastDataObject, CheckLst, TS_CheckListBox,
  DBClient, raCodMod, ppModule, daDataModule,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppEndUsr, TS_CheckBox,
  ppRegion, TS_SpeedButton, dxCntner, dxExEdtr, dxEdLib,
  FormsComponent, dxfLabel, TS_MaxPanel, TS_Bevel, dxDBGrid, dxTL,
  dxDBCtrl, TS_QDBGrid, IBCustomDataSet, Menus, Buttons, teCtrls,
  TS_EffectsPanel, TS_PopupMenu, ppSubRpt, BTOdeum, Placemnt;

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
    DetalheModeloA: TppDetailBand;
    ppDBCheques: TppDBPipeline;
    ppDBText2: TppDBText;
    Q_ChequesPAGOESTEANO: TIBBCDField;
    ppDBMemo4: TppDBMemo;
    ppDBText3: TppDBText;
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
    ppFooterBand2: TppFooterBand;
    ckTeste: TTS_CheckBox;
    ppDBText27: TppDBText;
    ppRegion1: TppRegion;
    ppLabel6: TppLabel;
    ppDBText21: TppDBText;
    ppDBText13: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppRegion2: TppRegion;
    ppLabel9: TppLabel;
    ppDBText25: TppDBText;
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
    Q_ChequesPAYROLLFUNC: TIntegerField;
    rbFunc_A: TppReport;
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
    ppRegion3: TppRegion;
    ppLabel11: TppLabel;
    ppDBText35: TppDBText;
    ppRegion5: TppRegion;
    mmDescricao1_C: TppMemo;
    ppMemo3: TppMemo;
    ppDBText36: TppDBText;
    ppRegion6: TppRegion;
    ppMemo6: TppMemo;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppRegion7: TppRegion;
    ppLabel14: TppLabel;
    ppDBText39: TppDBText;
    ppFooterBand3: TppFooterBand;
    mmQtdHoras1_C: TppMemo;
    mmValor1_C: TppMemo;
    mmLimite1_C: TppMemo;
    mmLimite1_D: TppMemo;
    mmValor1_D: TppMemo;
    mmDescricao1_D: TppMemo;
    mmDescricao2_C: TppMemo;
    mmQtdHoras2_C: TppMemo;
    mmValor2_C: TppMemo;
    mmLimite2_C: TppMemo;
    mmDescricao2_D: TppMemo;
    mmValor2_D: TppMemo;
    mmLimite2_D: TppMemo;
    rbFunc_B: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBMemo6: TppDBMemo;
    ppDBText43: TppDBText;
    ppLabel15: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBMemo7: TppDBMemo;
    ppDBText47: TppDBText;
    ppRegion8: TppRegion;
    ppLabel17: TppLabel;
    ppDBText48: TppDBText;
    ppRegion9: TppRegion;
    mmDescricao3_C: TppMemo;
    ppMemo2: TppMemo;
    mmValor3_C: TppMemo;
    mmLimite3_C: TppMemo;
    mmLimite3_D: TppMemo;
    mmValor3_D: TppMemo;
    mmDescricao3_D: TppMemo;
    ppDBText49: TppDBText;
    ppRegion10: TppRegion;
    ppMemo11: TppMemo;
    mmDescricao4_C: TppMemo;
    mmQtdHoras4_C: TppMemo;
    mmValor4_C: TppMemo;
    mmLimite4_C: TppMemo;
    mmDescricao4_D: TppMemo;
    mmValor4_D: TppMemo;
    mmLimite4_D: TppMemo;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppRegion11: TppRegion;
    ppLabel19: TppLabel;
    ppDBText52: TppDBText;
    ppFooterBand4: TppFooterBand;
    mmQtdHoras3_C: TppMemo;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel1: TppLabel;
    procedure Q_ChequesCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure btModeloBClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btModeloAMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DetalheModeloBBeforePrint(Sender: TObject);
  private
    { Private declarations }
     Cheques : String;
     Conta : Integer;
     bFuncionario : boolean;
     nNumCheque : integer;
     sFuncionario, sContas, sCheques, sNumCheque : string;
     procedure AdicionaMemo( sTipo : string = 'A' );
  public
    { Public declarations }
    procedure iniciar(sChequesParam : String; sContasParam : String; sNumChequeParam : string = '0'; bFuncionarioParam : boolean = false);
  end;

var
  DlgEmissaoCheques: TDlgEmissaoCheques;

implementation
Uses Util2, DM_Projeto, Funcoes, DM_Financeiro;
{$R *.DFM}

Procedure TDlgEmissaoCheques.iniciar;
begin
  sContas := sContasParam;
  sCheques:= sChequesParam;
  sNumCheque := sNumChequeParam;
  bFuncionario := bFuncionarioParam;
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
end;

procedure TDlgEmissaoCheques.ppLabel1GetText(Sender: TObject;
  var Text: String);
Var d,m,a: word;
begin
  inherited;
  DecodeDate(Q_ChequesVencimento.AsDatetime,a,m,d);
  Text := DMPRojeto.C_EmpresasCIDADE.AsString+',        ' + IntTOStr(d)+
     '            '+Funcoes.MesExtenso(Q_ChequesVencimento.AsDatetime,1)+
     '                     '+  IntTOStr(a);
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
      Conta   := StrToInt(sContasSel);
      Qtde    := ContaStrings(sCheques,',');
      Cheques := sCheques;
    end;
    C_Contas.Append;
    C_ContasConta.Value 				:= Conta;
    C_ContasNomeConta.Value 		:= DMFinanceiro.getDescricaoConta( Conta );
    if (sNumCheque = '0') or (replace(sNumCheque,',','') = '') then
    	C_ContasPrimeiroCheque.Value	:= DMFinanceiro.ProximoCheque( Conta )
    else
	    C_ContasPrimeiroCheque.Value	:= StrToInt(SeparaStrings(sNumCheque,',',1));

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
  if not DMProjeto.DlgAutorizacao.ExecuteX( owner.name, 'ConfCheque' ) then
  	exit;

  Q_Cheques.Close;

  if (btModeloA.Down) and (not bFuncionario) then
  	ppDesigner.Report := rbChequesModelo_A
  else if (btModeloA.Down) and (bFuncionario) then
    ppDesigner.Report := rbFunc_A
  else if (btModeloB.Down) and (bFuncionario) then
    ppDesigner.Report := rbFunc_B
  else
	  ppDesigner.Report := rbChequesModelo_B;

  if bFuncionario then
		ppDesigner.Report.Template.FileName := DMProjeto.RelPath+'ChequeModeloFunc_'+Direita(ppDesigner.Report.Name,1)+'.rtm'
  else
  	ppDesigner.Report.Template.FileName := DMProjeto.RelPath+'ChequeModelo_'+Direita(ppDesigner.Report.Name,1)+'.rtm';

  if not bFuncionario then begin
  	if FileExists(DMProjeto.RelPath+'ChequeModelo_'+Direita(ppDesigner.Report.Name,1)+'.rtm') then
    	ppDesigner.Report.Template.LoadFromFile;
  end else begin
  	if FileExists(DMProjeto.RelPath+'ChequeModeloFunc_'+Direita(ppDesigner.Report.Name,1)+'.rtm') then
    	ppDesigner.Report.Template.LoadFromFile;
  end;

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
    	SQL.Text := 'Select count(*) from RetiradasDoc rd '+
                	'where Conta = :C and NumCheque >= :NCI and NumCheque <= :NCF and '+
                  iif(sNumCheque<>'','not numcheque IN ('+sNumCheque+') and ','')+' NumCheque is not null ';
    	ParambyName('C').asInteger 	 := C_ContasConta.AsInteger;
    	ParamByName('NCI').asInteger := C_ContasPrimeiroCheque.AsInteger;
    	ParamByName('NCF').asInteger := C_ContasPrimeiroCheque.AsInteger+C_ContasQtdeImprimir.AsInteger-1;
    	Open;

    	if fields[0].AsInteger > 0 then
      	if DlgMsg.ShowMsg( 522 ) = 200 then
           Exit;

      Close;
    end;

  	sSelect := 'Select r.Retirada, r.TipoRetirada, rd.NumCheque, rd.Valor, rd.IDDOC, '+
               '       rd.Vencimento, f.Nome, r.Historico, r.natureza as PayRollFunc, '+
               '       rd.ChequeNominal, f.Endereco,f.cidade,f.cep,f.uf,   '+
               '       (Select Sum(ValorPago) from DuplicatasAPagar dp '+
               '        where dp.Fornecedor = rd.FavorecidoDoc and '+
               '              dp.Status >= 50 and '+
               '              dp.DataPago >= ''01/01/'+FormatDateTime('yyyy',DMProjeto.dDataSistema)+''')  as PagoEsteAno '+
               'From  Retiradas r '+
               'INNER JOIN RetiradasDoc rd ON r.Retirada = rd.Retirada '+
               'INNER JOIN FormasPagamento fp ON rd.FormaPagamento = fp.FormaPagamento '+
               'LEFT  JOIN Favorecidos f ON f.Favorecido = rd.FavorecidoDoc '+
               'Where rd.IDDOC in ('+C_ContasCheques.AsString+') ';

    with Q_Cheques do begin
			Close;
      Sql.Text := sSelect;
      Open;

      if Q_ChequesNumCheque.Value = 0 then
      	nNumCheque := C_ContasPrimeiroCheque.Value
      else
        nNumCheque := Q_ChequesNumCheque.Value;

      while not EOF do begin
   			with DMFinanceiro.Q_SQL2 do begin
   				Close;
     			SQL.Text := 'Update RetiradasDoc '+
     									'set NumCheque = :NumCheque '+
             					'Where IDDoc = :IDDoc ';
     			ParamByName('NumCheque').AsInteger	:= iif(ContaStrings(C_ContasCheques.AsString,',')=1,C_ContasPrimeiroCheque.Value,nNumCheque);
     			ParamByName('IDDoc').AsInteger			:= Q_ChequesIDDoc.AsInteger;
     			ExecSQL;
        end;
        Next;
        if Q_ChequesNumCheque.Value = 0 then
     			inc(nNumCheque)
   			else
         	nNumCheque := Q_ChequesNumCheque.Value;
      end;
      Close;
      Open;
			Try
    		if btModeloA.Down then begin
           if not bFuncionario then begin
           		rbChequesModelo_A.Template.FileName := DMProjeto.RelPath+'ChequeModelo_A.rtm';
           		if FileExists(rbChequesModelo_A.Template.FileName) then
           			rbChequesModelo_A.Template.LoadFromFile;

           		if ckbImprimirDireto.Checked then
              	rbChequesModelo_A.DeviceType := 'Printer'
           		else
	            	rbChequesModelo_A.DeviceType := 'Screen';

              rbChequesModelo_A.Print;
           end else begin
           		rbFunc_A.Template.FileName := DMProjeto.RelPath+'ChequeModeloFunc_A.rtm';
           		if FileExists(rbFunc_A.Template.FileName) then
           			rbFunc_A.Template.LoadFromFile;

           		if ckbImprimirDireto.Checked then
              	rbFunc_A.DeviceType := 'Printer'
           		else
	            	rbFunc_A.DeviceType := 'Screen';

           		rbFunc_A.Print;
           end;

        end else begin
           if not bFuncionario then begin
        	 		rbChequesModelo_B.Template.FileName := DMProjeto.RelPath+'ChequeModelo_B.rtm';
           		if FileExists(rbChequesModelo_B.Template.FileName) then
           			rbChequesModelo_B.Template.LoadFromFile;

           		if ckbImprimirDireto.Checked then
              	rbChequesModelo_B.DeviceType := 'Printer'
           		else
	            	rbChequesModelo_B.DeviceType := 'Screen';
           		rbChequesModelo_B.Print;
           end else begin
           		rbFunc_B.Template.FileName := DMProjeto.RelPath+'ChequeModeloFunc_B.rtm';
           		if FileExists(rbFunc_B.Template.FileName) then
           			rbFunc_B.Template.LoadFromFile;

           		if ckbImprimirDireto.Checked then
              	rbFunc_B.DeviceType := 'Printer'
           		else
	            	rbFunc_B.DeviceType := 'Screen';

           		rbFunc_B.Print;
           end;
    		end;

     		if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
   	  		DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      	if not ckTeste.Checked then begin
          if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      	end else begin
          if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      			DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        end;
        Q_Cheques.Close;
	 	except
 			on e:exception do
        DlgMsg.ShowMsg(1,e.message, '');
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
begin
    with DMProjeto.Q_SQL do begin

      close;
      sql.text := 'select pi.descricao, pfi.valor, pi.limite, pfi.qtdhoras_user, '+
      						'pi.cb_valor, pi.cb_limite, pi.cb_horas, pi.tipopayroll '+
      						'from payrollspayitens pfi '+
                  'inner join payrollitens pi on pfi.payrollitem = pi.payrollitem '+
                  'where pfi.payrollfunc = :payrollfunc and pi.cb_payrollitem = ''S'' and pfi.valor <> 0'+
                  'order by pi.payrollitem';
      params[0].AsInteger := Q_ChequesPayRollFunc.AsInteger;
      open;

      if sTipo = 'A' then begin
        {Créditos}
      	mmDescricao1_C.lines.Clear;
      	mmQtdHoras1_C.lines.Clear;
      	mmValor1_C.lines.Clear;
      	mmLimite1_C.lines.Clear;
      	mmDescricao2_C.lines.Clear;
      	mmQtdHoras2_C.lines.Clear;
      	mmValor2_C.lines.Clear;
      	mmLimite2_C.lines.Clear;
        {Débitos}
      	mmDescricao1_D.lines.Clear;
      	mmValor1_D.lines.Clear;
      	mmLimite1_D.lines.Clear;
      	mmDescricao2_D.lines.Clear;
      	mmValor2_D.lines.Clear;
      	mmLimite2_D.lines.Clear;
      end else begin
        {Créditos}
      	mmDescricao3_C.lines.Clear;
      	mmQtdHoras3_C.lines.Clear;
      	mmValor3_C.lines.Clear;
      	mmLimite3_C.lines.Clear;
      	mmDescricao4_C.lines.Clear;
      	mmQtdHoras4_C.lines.Clear;
      	mmValor4_C.lines.Clear;
      	mmLimite4_C.lines.Clear;
        {Débitos}
      	mmDescricao3_D.lines.Clear;
      	mmValor3_D.lines.Clear;
      	mmLimite3_D.lines.Clear;
      	mmDescricao4_D.lines.Clear;
      	mmValor4_D.lines.Clear;
      	mmLimite4_D.lines.Clear;
      end;
      while not eof do begin
          if fieldbyname('tipopayroll').asInteger < 4 then begin
            if sTipo = 'A' then begin
        			mmDescricao1_C.lines.Add( fields[0].AsString );
            	mmDescricao2_C.lines.Add( fields[0].AsString );
            	{QtdeHoras}
            	if (fieldbyName('cb_horas').AsString='S') then begin
            		mmQtdHoras1_C.lines.Add(fields[3].asString+'hs');
              	mmQtdHoras2_C.lines.Add(fields[3].asString+'hs');
            	end else begin
            		mmQtdHoras1_C.lines.Add('');
              	mmQtdHoras2_C.lines.Add('');
            	end;
            	{Valor}
            	if (fieldbyName('cb_valor').AsString='S') and (fields[1].asCurrency>0) then begin
            		mmValor1_C.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
              	mmValor2_C.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
            	end else begin
            		mmValor1_C.lines.Add('');
              	mmValor2_C.lines.Add('');
            	end;
            	{Limite}
            	if (fieldbyName('cb_Limite').AsString='S') then begin
            		mmLimite1_C.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
              	mmLimite2_C.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
            	end else begin
            		mmLimite1_C.lines.Add('');
              	mmLimite2_C.lines.Add('');
            	end;
          	end else begin
        			mmDescricao3_C.lines.Add( fields[0].AsString );
            	mmDescricao4_C.lines.Add( fields[0].AsString );
            	{QtdeHoras}
            	if (fieldbyName('cb_horas').AsString='S') then begin
            		mmQtdHoras3_C.lines.Add(fields[3].asString+'hs');
              	mmQtdHoras4_C.lines.Add(fields[3].asString+'hs');
            	end else begin
            		mmQtdHoras3_C.lines.Add('');
              	mmQtdHoras4_C.lines.Add('');
            	end;
            	{Valor}
            	if (fieldbyName('cb_valor').AsString='S')  and (fields[1].asCurrency>0) then begin
            		mmValor3_C.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
              	mmValor4_C.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
            	end else begin
            		mmValor3_C.lines.Add('');
              	mmValor4_C.lines.Add('');
            	end;
            	{Limite}
            	if (fieldbyName('cb_Limite').AsString='S') then begin
            		mmLimite3_C.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
              	mmLimite4_C.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
            	end else begin
            		mmLimite3_C.lines.Add('');
              	mmLimite4_C.lines.Add('');
            	end;
            end;
          end else begin
            if sTipo = 'A' then begin
              mmDescricao1_D.lines.Add( fields[0].AsString );
              mmDescricao2_D.lines.Add( fields[0].AsString );
              {Valor}
              if (fieldbyName('cb_valor').AsString='S') and (fields[1].asCurrency<>0)  then begin
                mmValor1_D.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
                mmValor2_D.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
              end else begin
                mmValor1_D.lines.Add('');
                mmValor2_D.lines.Add('');
              end;
              {Limite}
              if (fieldbyName('cb_Limite').AsString='S') then begin
                mmLimite1_D.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
                mmLimite2_D.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
              end else begin
                mmLimite1_D.lines.Add('');
                mmLimite2_D.lines.Add('');
              end;
            end else begin
              mmDescricao3_D.lines.Add( fields[0].AsString );
              mmDescricao4_D.lines.Add( fields[0].AsString );
              {Valor}
              if (fieldbyName('cb_valor').AsString='S') and (fields[1].asCurrency<>0)  then begin
                mmValor3_D.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
                mmValor4_D.lines.Add(formatfloat('#,###,##0.00',fields[1].asCurrency));
              end else begin
                mmValor3_D.lines.Add('');
                mmValor4_D.lines.Add('');
              end;
              {Limite}
              if (fieldbyName('cb_Limite').AsString='S') then begin
                mmLimite3_D.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
                mmLimite4_D.lines.Add(formatfloat('#,###,##0.00',fields[2].asCurrency));
              end else begin
                mmLimite3_D.lines.Add('');
                mmLimite4_D.lines.Add('');
              end;
            end;
          end;
          Next;
  		end;
      close;
    end;
end;

procedure TDlgEmissaoCheques.DetalheModeloBBeforePrint(Sender: TObject);
begin
  inherited;
  Memo3.Lines.Text := Q_ChequesHistorico.Value;
end;

end.




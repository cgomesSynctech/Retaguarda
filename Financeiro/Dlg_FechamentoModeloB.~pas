unit Dlg_FechamentoModeloB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxfLabel, Db,
  IBCustomDataSet, IBQuery,
  dxfProgressBar, FormsComponent, TS_Label,
  TS_Image, TS_MaxPanel, TS_Memo, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, TS_DateTimePicker, BTOdeum, Placemnt, ppDB, ppDBPipe,
  DBClient, Provider, ppBands, ppCtrls, ppReport, ppSubRpt, ppStrtch,
  ppRegion, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  TS_CalcEdit, IBUpdateSQL{, ECF};

type
  TDlgFechamentoModeloB = class(TFrmModeloCadastros)
    Barra: TdxfProgressBar;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    lbCaixa: TdxfLabel;
    lbData: TdxfLabel;
    FecharCaixa1: TMenuItem;
    TS_Label3: TTS_Label;
    lbFunc: TdxfLabel;
    Q_Cheques: TIBQuery;
    ppRepasse: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape11: TppShape;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine18: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    P_Cheques: TDataSetProvider;
    C_Cheques: TClientDataSet;
    C_ChequesIDDOC: TIntegerField;
    C_ChequesNUMCHEQUE: TIntegerField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesVALOR: TBCDField;
    C_ChequesNOME: TStringField;
    C_ChequesDS: TDataSource;
    ppDBCheques: TppDBPipeline;
    Q_Historico: TIBQuery;
    P_Historico: TDataSetProvider;
    C_Historico: TClientDataSet;
    C_Historico_icSelecionado: TIntegerField;
    C_HistoricoOPERACAO: TIntegerField;
    C_HistoricoDATA: TDateField;
    C_HistoricoNOME: TStringField;
    C_HistoricoNOMECONTA: TStringField;
    C_HistoricoVALOROPERACAO: TBCDField;
    C_HistoricoFAVORECIDO: TIntegerField;
    C_HistoricoCONTA: TIntegerField;
    C_HistoricoVALORDINHEIRO: TBCDField;
    C_HistoricoHISTORICO: TStringField;
    C_HistoricoNOMECONTAORIGEM: TStringField;
    C_HistoricoCONTAORIGEM: TIntegerField;
    C_HistoricoTITULO: TIntegerField;
    C_HistoricoDESCFORMAPAGAMENTO: TStringField;
    C_HistoricoSITUACAO: TStringField;
    C_HistoricoFLOATING: TIntegerField;
    C_HistoricoUSUARIO: TStringField;
    C_HistoricoDS: TDataSource;
    Q_Aux: TIBQuery;
    Q_Tabela: TIBQuery;
    U_Tabela: TIBUpdateSQL;
    P_Tabela: TDataSetProvider;
    C_Tabela: TClientDataSet;
    C_Tabela_icSelecionado: TIntegerField;
    C_TabelaIDFECHAMENTO: TIntegerField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaDATAFECHAMENTO: TDateField;
    C_TabelaESPECIE: TIntegerField;
    C_TabelaVALORDIGITADO: TBCDField;
    C_TabelaVALORAPURADO: TBCDField;
    C_TabelaSALDO: TBCDField;
    C_TabelaORIGEMREPLIC: TStringField;
    C_TabelaDS: TDataSource;
    Q_Sql: TIBQuery;
    edDinheiro: TTS_CalcEdit;
    edCheque: TTS_CalcEdit;
    edCartoes: TTS_CalcEdit;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    ppDBConferencia: TppDBPipeline;
    Q_Conferencia: TIBQuery;
    P_Conferencia: TDataSetProvider;
    C_Conferencia: TClientDataSet;
    C_ConferenciaDS: TDataSource;
    C_ConferenciaDATAFECHAMENTO: TDateField;
    C_ConferenciaVALORDIGITADO: TBCDField;
    C_ConferenciaVALORAPURADO: TBCDField;
    C_ConferenciaSALDO: TBCDField;
    C_ConferenciaDESCRICAO: TStringField;
    C_ConferenciaCAIXA: TStringField;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppRegion1: TppRegion;
    ppLabel4: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel6: TppLabel;
    ppLabel11: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText15: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText11: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppLabel33: TppLabel;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dDataCaixa : TDatetime;
  public
    { Public declarations }
        procedure ExecSQL(comando: string);
  end;

var
  DlgFechamentoModeloB: TDlgFechamentoModeloB;

implementation

uses DM_Projeto, DM_Financeiro, funcoes, TDM_Projeto{, dm_ECF};

{$R *.DFM}

procedure TDlgFechamentoModeloB.ExecSQL(comando: string);
begin
    with Q_Sql do
        begin
            Close;
            SQL.Text := comando;
            ExecSQL;
        end;
end;

procedure TDlgFechamentoModeloB.btGravarClick(Sender: TObject);
var s, sHistorico, dia, comando:string;
result : integer ;
 result2, result3, fechamento, conta: integer;
 criticafechamento, contiuafechamento, dinheiro, cheque, cartao : string ;

begin
  inherited;
    if (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'N') Then Begin
    try
    dia := FormatDateTime('mm/dd/yyyy', DMProjeto.dDataSistema);
    dinheiro :=  StringReplace(eddinheiro.text, '.', '',[rfReplaceAll, rfIgnoreCase]);
    cheque :=  StringReplace(edCheque.text, '.', '',[rfReplaceAll, rfIgnoreCase]);
    cartao :=  StringReplace(edCartoes.text, '.', '',[rfReplaceAll, rfIgnoreCase]);

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        conta := DMFinanceiro.nContaPadrao ;
        fechamento := DMProjeto.NextID('GEN_FECHAMENTOCAIXA_ID', 1);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE,FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 5, 1, '+ StringReplace(dinheiro, ',', '.',[rfReplaceAll, rfIgnoreCase]) +' )';
        ExecSql(comando);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE, FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 1, 2, '+ StringReplace(cheque, ',', '.',[rfReplaceAll, rfIgnoreCase]) +' )';
        ExecSql(comando);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE, FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 3, 20, '+ StringReplace(cartao, ',', '.',[rfReplaceAll, rfIgnoreCase]) +' )';
        ExecSql(comando);

      DMProjeto.DB_Projeto.DefaultTransaction.Commit;
      DMProjeto.FecharForm('dlgValoresFechaCaixa');
      
       
   except
    on E: Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
       DlgMsg.ShowMsg( 479 , e.message, '' );
    end;
   end;

       with Q_Conferencia do
        begin
            Close;
            SQL.Text := 'select f.datafechamento, f.valordigitado, f.valorapurado, f.saldo,  e.descricao, c.descricao as Caixa  from fechamentocaixa f '+
                        ' inner join especiestitulos e on e.especie = f.especie inner join contas c on c.conta = f.conta '+
                        ' where f.datafechamento =  '''+dia+ ''' and f.conta = :conta' ;
                        //Params.ParamByName('dia').AsString := dia ;
                        Params.ParamByName('conta').AsInteger := conta;
                        open;
        end;
        ppReport1.Print;



   end;


  contiuafechamento := 'S';

    if DMProjeto.Parametro('ObrigarFaturamentoPedido') = 'S' then begin
     with Q_Aux do begin
       close;
       Sql.Text := 'select c.criticafechamento as resultado from contas c where c.conta = :Conta';
       ParamByName('Conta').AsInteger := DMFinanceiro.nContaPadrao;
       open;
       criticafechamento := fieldbyname('resultado').AsString ;
       close;
     end;
     if criticafechamento = 'S' Then begin
       with Q_Aux do begin
         close;
         Sql.Text := 'select count(*) as existe from contas c where c.criticafechamento = ''S'' and c.situacao = ''Aberto'' ';
         open;
         result := fieldbyname('existe').AsInteger ;
       end;
         if result = 1 then begin
             with Q_Aux do begin
                close;
                sql.Text := 'select count(*) as existe2 from titulosareceber t where t.competencia = t.vencimento and t.status = 3 and t.vencimento = :data' ;
                ParamByName('Data').AsDatetime := DMProjeto.dDataSistema;
                open;
                result2 := fieldbyname('existe2').AsInteger;
                close;
                SQL.Text := 'select Count(*) as existe from saidas s where s.status = ''X'' and s.tipopadrao = 2 and s.situacao = ''N''  ';
                open;
                result3 := fieldbyname('existe').AsInteger;
                close;
             end;
                if result2 > 0 Then begin
                        ShowMessage('ATENÇÃO: Existe Pedidos sem Tratamento no Caixa .' + #13 + 'Providenciar Recebimento para Executar Fechamento.');
                        contiuafechamento := 'N' ;
                end;
                if result3 > 0 then begin
                           ShowMessage('ATENÇÃO: Exite Parcelas com Competencia e vencimento para o dia .' + #13 + 'Providenciar Recebimento para Executar Fechamento.') ;
                           contiuafechamento := 'N' ;
                end;
        end;
    end;
  end;

  if contiuafechamento = 'S' then begin
  if Copy(DMFinanceiro.Conta_Situacao( DMFinanceiro.nContaPadrao ),1,1)<>'F' then begin

	DMFinanceiro.FecharCaixa;
  if (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'S') Then Begin
    if DlgMsg.ShowMsg(650,['do Caixa.']) = 100 then begin
  	   DMProjeto.SetParametrosForm([DMFinanceiro.nContaPadrao, dDataCaixa ]);
      DMProjeto.CriarForm('DlgRelCaixaB',self,true);
    end;
  end;
  if (DMProjeto.Parametro('RepasseAutomatico') = 'S') then Begin
     with Q_Aux do begin
       close;
       Sql.Text := 'Select max(o.Operacao) as Operacao from OperacoesFinanceiras o where o.tipooperacao = 20 and o.contaorigem = :Conta';
       ParamByName('Conta').AsInteger := DMFinanceiro.nContaPadrao;
       Open;
       result := fieldbyname('Operacao').AsInteger;
       close;
     end;
     with C_Historico do
        begin
            close;
            FetchParams;
            CommandText := 'Select o.Operacao, o.Data, o.Situacao, f.Nome, c.Descricao as NomeConta, co.Descricao as NomeContaOrigem, '+
            ' o.ValorOperacao, o.Favorecido, o.ContaDestino as Conta, o.ValorDinheiro, o.Historico, o.ContaOrigem, o.Titulo, '+
            ' fp.Descricao as DescFormaPagamento, o.Floating, u.loginname as usuario from OperacoesFinanceiras o left join Favorecidos f on o.Favorecido = f.Favorecido '+
            ' left join Contas c on o.ContaDestino = c.Conta left join Contas co on o.ContaOrigem  = co.Conta left join FormasPagamento fp on o.formapagamento = fp.formapagamento '+
            ' left join Usuarios u on u.usuario = o.usuario where o.operacao = :operacao and o.tipooperacao = 20 ';

            Params.ParamByName('operacao').AsInteger := result ;
            open;
        end;
    ppLabel2.Caption := C_HistoricoNOMECONTAORIGEM.AsString;
    ppLabel3.Caption := DateToStr(C_HistoricoDATA.AsDateTime);
    ppLabel20.Caption := C_HistoricoUSUARIO.AsString;
    ppLabel7.Caption := FormatFloat('###,##0.00', C_HistoricoVALORDINHEIRO.AsCurrency);
    ppLabel10.Caption := FormatFloat('###,##0.00', C_HistoricoVALOROPERACAO.AsCurrency - C_HistoricoVALORDINHEIRO.AsCurrency);
    //
    sHistorico := iif(Trim(C_HistoricoHISTORICO.AsString) = '', '-9999', C_HistoricoHISTORICO.AsString);
    C_Cheques.Close;
    Q_Cheques.SQL.Text := 'select dd.iddoc, dd.numcheque, dd.vencimento, dd.valor, f.nome ' +
        'from depositosdoc dd ' +
        'inner join depositos d on d.deposito = dd.deposito ' +
        'inner join favorecidos f on f.favorecido = d.favorecido ' +
        'where dd.iddoc in (' + sHistorico + ') ';
    C_Cheques.Open;
    DMProjeto.ImprimirCabecalho(regCab);
    if DMProjeto.Parametro('ImprimeRepasseFechamento') = 'S' then
    ppRepasse.Print;

  end;
  end else begin
    DlgMsg.ShowMsg(409);
    Exit;
  end;

  Close;
end;
Close;
end ;



procedure TDlgFechamentoModeloB.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  dDataCaixa := DMProjeto.dDataSistema;
  lbData.Caption  := DateToStr(DMProjeto.dDataSistema);
  lbCaixa.Caption := DMFinanceiro.Caixa_Nome;
  lbFunc.Caption	:= DMProjeto.sLoginName;
  lbCaixa.AutoSize:= false;
  lbCaixa.AutoSize:= true;
  lbData.AutoSize:= false;
  lbData.AutoSize:= true;
  lbFunc.AutoSize:= false;
  lbFunc.AutoSize:= true;
end;

procedure TDlgFechamentoModeloB.FormShow(Sender: TObject);
begin
  inherited;
  btLimpar.Enabled := (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'S');
  TS_Label4.Visible := (DMProjeto.Parametro('InformaConferenciaCaixa') = 'S');
  TS_Label5.Visible := (DMProjeto.Parametro('InformaConferenciaCaixa') = 'S');
  TS_Label6.Visible := (DMProjeto.Parametro('InformaConferenciaCaixa') = 'S');
  edDinheiro.Visible := (DMProjeto.Parametro('InformaConferenciaCaixa') = 'S');
  edCheque.Visible := (DMProjeto.Parametro('InformaConferenciaCaixa') = 'S');
  edCartoes.Visible := (DMProjeto.Parametro('InformaConferenciaCaixa') = 'S');



end;

end.


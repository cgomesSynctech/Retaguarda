unit Dlg_RelCaixaB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_DateTimePicker,
  dxCntner, dxEditor, dxDBEdtr, dxDBELib, TS_LookupComboBox, ppDB,
  ppDBPipe, DB, IBCustomDataSet, IBQuery, ppBands, ppCtrls, ppReport,
  ppSubRpt, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppComm,
  ppRelatv, ppProd, Placemnt, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, Provider, DBClient, dxfProgressBar;

type
  TDlgRelCaixaB = class(TFrmModeloCadastros)
    ppFechamento: TppReport;
    ppHeaderBand1: TppHeaderBand;
    regCab: TppRegion;
    ppLabel1: TppLabel;
    ppCaixa: TppLabel;
    ppData: TppLabel;
    ppDetailBand1: TppDetailBand;
    subCartoes: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel26: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine12: TppLine;
    rgTitulos: TppRegion;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppTitulosAReceber: TppLabel;
    ppTitulosRecebidos: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    rgVendas: TppRegion;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppTotalVendas: TppLabel;
    ppLabel17: TppLabel;
    ppLabel22: TppLabel;
    ppQtdeVendas: TppLabel;
    ppTotalProdutosMaisVendido: TppLabel;
    ppLAcuSemana: TppLabel;
    ppLAcuMes: TppLabel;
    ppLVendasOntem: TppLabel;
    ppVendasOntem: TppLabel;
    ppAcuSemana: TppLabel;
    ppAcuMes: TppLabel;
    ppProduto1: TppLabel;
    ppProduto2: TppLabel;
    ppProduto3: TppLabel;
    ppTotal1: TppLabel;
    ppTotal2: TppLabel;
    ppTotal3: TppLabel;
    ppQtde1: TppLabel;
    ppQtde2: TppLabel;
    ppQtde3: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    subRetiradas: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel4: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLine13: TppLine;
    rgFinanceiro: TppRegion;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppSaldoAnt: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppVendasAVista: TppLabel;
    ppDinheiro: TppLabel;
    ppLine4: TppLine;
    ppCheques: TppLabel;
    ppLabel12: TppLabel;
    ppLine5: TppLine;
    ppRetiradas: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppRepasses: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppRepassesDin: TppLabel;
    ppRepassesChq: TppLabel;
    ppRepassesChqPre: TppLabel;
    ppLine10: TppLine;
    ppLabel24: TppLabel;
    ppSaldoCaixa: TppLabel;
    ppLabel27: TppLabel;
    ppLine11: TppLine;
    ppChequesPre: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    rgAssinatura: TppRegion;
    ppLabel14: TppLabel;
    ppLine14: TppLine;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    Q_Retiradas: TIBQuery;
    Q_RetiradasDESCRICAO: TIBStringField;
    Q_Cartoes: TIBQuery;
    Q_CartoesDESCRICAO: TIBStringField;
    Q_CartoesDS: TDataSource;
    Q_RetiradasDS: TDataSource;
    Q_SQL: TIBQuery;
    dbRetiradas: TppDBPipeline;
    dbCartoes: TppDBPipeline;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    cmbConta: TTS_LookupComboBox;
    dtData: TTS_DateTimePicker;
    C_Caixas: TClientDataSet;
    P_Caixas: TDataSetProvider;
    Q_Caixas: TIBQuery;
    C_CaixasDS: TDataSource;
    C_CaixasCONTA: TIntegerField;
    C_CaixasDESCRICAO: TStringField;
    C_CaixasSITUACAO: TStringField;
    Barra: TdxfProgressBar;
    ppLine24: TppLine;
    ppFooterBand1: TppFooterBand;
    ppTotalDevolucoes: TppLabel;
    ppLine25: TppLine;
    ppLabel8: TppLabel;
    ppTotal: TppLabel;
    ppLabel7: TppLabel;
    ppLine26: TppLine;
    ppLabel13: TppLabel;
    ppLine27: TppLine;
    ppQtdeDevolucoes: TppLabel;
    Q_RetiradasVALOR: TIBBCDField;
    Q_CartoesTOTAL: TIBBCDField;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    bMostrarHistorico: Boolean;
  public
    { Public declarations }
  end;

var
  DlgRelCaixaB: TDlgRelCaixaB;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.dfm}

procedure TDlgRelCaixaB.btGravarClick(Sender: TObject);
var nSaldoAnt,nDinheiro,nCheques,nChequesPre,nTotalProdVendidos,
  	nRetiradas,nRepassesDin,nRepassesChq,nRepassesChqPre : Currency;
    i : integer;
begin
  inherited;
  Barra.Position := 0;
  Barra.Visible  := true;
  {Saldo Anterior}
  with Q_SQL do begin
    Close;
    SQL.Text := 'Select Sum(t.valor) as SaldoAnterior '+
    		'From Transacoes t '+
           	'Where t.Data < :Data and t.Conta = :Conta and '+
                't.formapagamento > 0 and t.formapagamento < 4';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nSaldoAnt := FieldByName('SaldoAnterior').AsCurrency;
    ppSaldoAnt.Caption := formatfloat('#,###,##0.00', nSaldoAnt );
  end;
  Barra.Position := Barra.Position + 1;
  {Vendas em Dinheiro}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.valor) as Dinheiro '+
    						'From Transacoes t '+
           			'Where t.Data = :Data and t.Conta = :Conta and '+
                't.formapagamento = 1 and t.tipotransacao = ''C'' ';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nDinheiro := FieldByName('Dinheiro').AsCurrency;
    ppDinheiro.Caption := formatfloat('#,###,##0.00', nDinheiro );
  end;
  Barra.Position := Barra.Position + 1;
  {Vendas em Cheques}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.valor) as Cheques '+
    						'From Transacoes t '+
           			'Where t.Data = :Data and t.Conta = :Conta and '+
                't.formapagamento = 2 and t.tipotransacao = ''C'' ';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nCheques := FieldByName('Cheques').AsCurrency;
    ppCheques.Caption := formatfloat('#,###,##0.00', nCheques );
  end;
  Barra.Position := Barra.Position + 1;
	ppVendasAVista.Caption := formatfloat('#,###,##0.00', nDinheiro+nCheques );
  {Vendas em Cheques Pré-datado}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.valor) as Cheques '+
    						'From Transacoes t '+
           			'Where t.Data = :Data and t.Conta = :Conta and '+
                't.formapagamento = 3 and t.tipotransacao = ''C'' ';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nChequesPre := FieldByName('Cheques').AsCurrency;
    ppChequesPre.Caption := formatfloat('#,###,##0.00', nChequesPre );
  end;
  Barra.Position := Barra.Position + 1;
  {Retiradas}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.Valor) as Retiradas '+
								'From Transacoes t '+
								'Where t.Data = :Data and t.Conta = :Conta and '+
                't.TipoTransacao = ''D'' and t.Situacao is null';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nRetiradas := FieldByName('Retiradas').AsCurrency;
    ppRetiradas.Caption := formatfloat('#,###,##0.00', nRetiradas );
  end;
  Barra.Position := Barra.Position + 1;
  {Repasses - Dinheiro}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.Valor) as Repasses '+
								'From Transacoes t '+
								'Where t.Data = :Data and t.Conta = :Conta and '+
                't.formapagamento = 1 and t.TipoTransacao = ''D'' and t.Situacao = ''R''';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nRepassesDin := FieldByName('Repasses').AsCurrency;
    ppRepassesDin.Caption := formatfloat('#,###,##0.00', nRepassesDin );
  end;
  Barra.Position := Barra.Position + 1;
  {Repasses - Cheques}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.Valor) as Repasses '+
								'From Transacoes t '+
								'Where t.Data = :Data and t.Conta = :Conta and '+
                't.formapagamento = 2 and t.TipoTransacao = ''D'' and t.Situacao = ''R''';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nRepassesChq := FieldByName('Repasses').AsCurrency;
    ppRepassesChq.Caption := formatfloat('#,###,##0.00', nRepassesChq );
  end;
  Barra.Position := Barra.Position + 1;
  {Repasses - Cheques Pré}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.Valor) as Repasses '+
								'From Transacoes t '+
								'Where t.Data = :Data and t.Conta = :Conta and '+
                't.formapagamento = 3 and t.TipoTransacao = ''D'' and t.Situacao = ''R''';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    nRepassesChqPre := FieldByName('Repasses').AsCurrency;
    ppRepassesChqPre.Caption := formatfloat('#,###,##0.00', nRepassesChqPre );
  end;
  Barra.Position := Barra.Position + 1;
  ppRepasses.Caption := formatfloat('#,###,##0.00', nRepassesDin+nRepassesChq+nRepassesChqPre );
  ppSaldoCaixa.Caption := formatfloat('#,###,##0.00', nSaldoAnt+nDinheiro+nCheques+nChequesPre+
  																										nRetiradas+nRepassesDin+nRepassesChq+nRepassesChqPre);
  {Vendas com Cartôes}
  with Q_Cartoes do begin
    Close;
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
  end;
  Barra.Position := Barra.Position + 1;

  {Vendas - Qtde e Total}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Count(Saida) as Qtde, Sum(s.Total) as Total '+
		'From Saidas s '+
		'Where s.Data = :Data and s.Caixa = :Conta and s.tipopadrao = 1 '+
                'and s.Situacao = ''N''';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    ppQtdeVendas.Caption 	:= FieldByName('Qtde').AsString;
    ppTotalVendas.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );
    Close;
    //SQL.Text := 'Select Count(e.Entrada) as Qtde, Sum(e.Total) as Total '+
//		'From Entradas E '+
//                'inner join EntradasItens  ei on (e.empresa = ei.empresa) and (e.entrada = ei.entrada) and (e.pdv = ei.pdv) '+
//                'inner join Itens i on i.item = ei.item '+
//                'inner join entradasitensmescla em on (em.empresa = ei.empresa) and (ei.entradaitem = em.entradaitem) '+
//                'inner join saidas s on (s.empresa = em.empresa) and (s.saida = em.ENTRADA_ORIGINAL) '+
//		'Where e.Data = :Data and e.tipopadrao = 106 and s.Caixa = :Conta and e.Situacao = ''N''';
//    ParamByName('Data').AsDatetime 	:= dtData.Date;
//    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;

    // Felipe - Alterado pois as devoluções no extrato estavam saindo erradas
    SQL.Text := 'Select Count(distinct e.Entrada) as Qtde, Sum(distinct e.Total) as Total '+
		'From Entradas E '+
                'inner join EntradasItens  ei on (e.empresa = ei.empresa) and (e.entrada = ei.entrada) and (e.pdv = ei.pdv) '+
                'inner join Itens i on i.item = ei.item '+
                'inner join entradasitensmescla em on (em.empresa = ei.empresa) and (ei.entradaitem = em.entradaitem) '+
                'inner join saidas s on (s.empresa = em.empresa) and (s.saida = em.ENTRADA_ORIGINAL) '+
		'Where e.Data = :Data and e.tipopadrao = 106 and s.Caixa = :Conta and e.Situacao = ''N''';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;

    ppQtdeDevolucoes.Caption 	:= FieldByName('Qtde').AsString;
    ppTotalDevolucoes.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );

    If FieldByName('Total').IsNull Then Begin
      ppQtdeDevolucoes.Caption 	:= '0';
      ppTotalDevolucoes.Caption := '0';
    End;
    ppTotal.Caption := formatfloat( '#,###,##0.00', (strtoFloat(soNumeros(ppTotalVendas.caption,0))/100) - FieldByName('Total').AsCurrency );




  end;

  Barra.Position := Barra.Position + 1;

  {Produto Mais Vendido}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select first 3 si.descricao, Sum(si.quantidade) as Qtde, Sum(si.subtotalitem) as Total '+
		'From Saidas s '+
                'Inner join SaidasItens si on s.saida = si.saida '+
		'Where s.Data = :Data and s.Caixa = :Conta and s.tipopadrao = 1 '+
                'and s.Situacao = ''N'' '+
                'Group by si.descricao '+
                'Order by 2 desc';
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    i := 1;
    nTotalProdVendidos := 0;
    while not EOF do begin
    	if i = 1 then begin
        ppProduto1.Caption := '1. '+FieldByName('Descricao').AsString;
        ppQtde1.Caption := FieldByName('Qtde').AsString;
        ppTotal1.Caption := formatfloat('#,###,##0.00',FieldByName('Total').AsCurrency);
      end else if i = 2 then begin
        ppProduto2.Caption := '2. '+FieldByName('Descricao').AsString;
        ppQtde2.Caption := FieldByName('Qtde').AsString;
        ppTotal2.Caption := formatfloat('#,###,##0.00',FieldByName('Total').AsCurrency);
      end else if i = 3 then begin
        ppProduto3.Caption := '3. '+FieldByName('Descricao').AsString;
        ppQtde3.Caption := FieldByName('Qtde').AsString;
        ppTotal3.Caption := formatfloat('#,###,##0.00',FieldByName('Total').AsCurrency);
      end;
      Inc(i);
      nTotalProdVendidos := nTotalProdVendidos + FieldByName('Total').AsCurrency;
      Next;
    end;
    ppTotalProdutosMaisVendido.Caption := formatfloat('#,###,##0.00',FieldByName('Total').AsCurrency );
  end;
  Barra.Position := Barra.Position + 1;

  {Vendas de Ontem}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(s.Total) as Total '+
		'From Saidas s '+
		'Where s.Data = :Data and s.Caixa = :Conta and s.tipopadrao = 1 '+
                'and s.Situacao = ''N''';
    ParamByName('Data').AsDatetime 	:= dtData.Date-1;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    ppVendasOntem.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );
	end;
  Barra.Position := Barra.Position + 1;

  {Acumulado da Semana}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(s.Total) as Total '+
		'From Saidas s '+
		'Where s.Data >= :DataI and s.Data <= :DataF and s.Caixa = :Conta and s.tipopadrao = 1 '+
                'and s.Situacao = ''N''';
    ParamByName('DataI').AsDatetime := PrimeiroDiaDaSemana(dtData.Date);
    ParamByName('DataF').AsDatetime := UltimoDiaDaSemana(dtData.Date);
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    ppAcuSemana.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );
  end;
  Barra.Position := Barra.Position + 1;

  {Acumulado do Mês}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(s.Total) as Total '+
                'From Saidas s '+
		'Where s.Data >= :DataI and s.Data <= :DataF and s.Caixa = :Conta and s.tipopadrao = 1 '+
                'and s.Situacao = ''N''';
    ParamByName('DataI').AsDatetime := FirstMonthDay(dtData.Date);
    ParamByName('DataF').AsDatetime := LastMonthDay(dtData.Date);
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
    ppAcuMes.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );
	end;
  Barra.Position := Barra.Position + 1;

  {Retiradas}
  with Q_Retiradas do begin
    Close;
    ParamByName('Data').AsDatetime 	:= dtData.Date;
    ParamByName('Conta').AsInteger  := cmbConta.LookUpKeyValue;
    Open;
  end;
  Barra.Position := Barra.Position + 1;

  {Títulos a Receber}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(t.FaltaReceber) as Total '+
		'From TitulosAReceber t '+
		'Where t.Vencimento = :Data and t.status > 0 and t.status < 50 ';
    ParamByName('Data').AsDatetime := FirstMonthDay(dtData.Date);
    Open;
    ppTitulosAReceber.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );
	end;
  {Títulos a Receber}
  with Q_SQL do begin
		Close;
    SQL.Text := 'Select Sum(dt.valor) as Total '+
		'From Depositos d '+
                'Inner Join DepositosTitulos dt on d.deposito = dt.deposito '+
		'Where d.Data = :Data and d.Conta = :Conta and d.tipodeposito = 1';
    ParamByName('Data').AsDatetime := dtData.Date;
    ParamByName('Conta').AsInteger := cmbConta.LookUpKeyValue;
    Open;
    ppTitulosRecebidos.Caption := formatfloat( '#,###,##0.00',FieldByName('Total').AsCurrency );
	end;

  Barra.Position := Barra.Position + 1;
  DMProjeto.ImprimirCabecalho( regCab );
  ppData.Caption := dtData.Text;
  ppCaixa.Caption:= DMProjeto.sLoginName;
  Barra.Position := Barra.Position + 1;
  Barra.Visible := false;
  ppLabel1.Caption := 'Caixa: ' + cmbConta.Text;
  ppLine19.Visible       := False;
  ppLine20.Visible       := False;
  ppLine21.Visible       := False;
  ppLVendasOntem.Visible := False;
  ppLAcuSemana.Visible   := False;
  ppLAcuMes.Visible      := False;
  ppVendasOntem.Visible  := False;
  ppAcuSemana.Visible    := False;
  ppAcuMes.Visible       := False;
  If bMostrarHistorico Then Begin
      ppLine19.Visible       := True;
      ppLine20.Visible       := True;
      ppLine21.Visible       := True;
      ppLVendasOntem.Visible := True;
      ppLAcuSemana.Visible   := True;
      ppLAcuMes.Visible      := True;
      ppVendasOntem.Visible  := True;
      ppAcuSemana.Visible    := True;
      ppAcuMes.Visible       := True;
  End;


  ppFechamento.Print;

end;

procedure TDlgRelCaixaB.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  bMostrarHistorico := (DMProjeto.Parametro('RelCaixaMostrarHistorico') = 'S');
	C_Caixas.Open;
  if DMProjeto.ExisteParametrosForm then begin
  	cmbConta.LookUpKeyValue := DMProjeto.getParametrosForm(0);
  	dtData.Date := DMProjeto.getParametrosForm(1);
    btGravar.Click;
  end else begin
  	dtData.Date := DMProjeto.dDataSistema;
  	cmbConta.LookUpKeyValue := DMFinanceiro.nContaPadrao;
  end;
end;

end.

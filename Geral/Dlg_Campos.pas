unit Dlg_Campos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TS_ScrollBox, ExtCtrls, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppDB, ppDBPipe,
  Db, IBCustomDataSet, IBQuery, ppCtrls, ppMemo, ppStrtch, ppRegion,
  ppPrnabl, ppRichTx, TS_Edit, TS_Label, Buttons, 
  teCtrls, TS_EffectsPanel, TS_BitBtn, ZRCtrls, ZReport;

type
  TDlgCampos = class(TForm)
    TS_Panel1: TTS_Panel;
    Scroll: TTS_ScrollBox;
    TS_BitBtn1: TTS_BitBtn;
    TS_BitBtn2: TTS_BitBtn;
    ppTexto: TppReport;
    Query: TIBQuery;
    QueryDS: TDataSource;
    dbQuery: TppDBPipeline;
    ppTextoCompleto: TppRichText;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    LinhaSep: TppGroupFooterBand;
    Cabecalho: TppRegion;
    regTextoCompleto: TppRegion;
    Detalhe: TppDetailBand;
    regLinha: TppRegion;
    ppLine1: TppLine;
    ZReport: TZReport;
    ZReportDetail: TZRBand;
    ZReportHeader: TZRBand;
    zrEmpresa: TZRLabel;
    zrEndereco: TZRLabel;
    zrCidade: TZRLabel;
    zrTexto: TZRLabel;
    ZReportChild: TZRBand;
    ZRFrameLine1: TZRFrameLine;
    zrFavorecido: TZRLabel;
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppTextoCompletoPrint(Sender: TObject);
    procedure TS_BitBtn2Click(Sender: TObject);
    procedure ppTextoBeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure DetalheAfterPrint(Sender: TObject);
    procedure regLinhaPrint(Sender: TObject);
    procedure ppTextoPreviewFormCreate(Sender: TObject);
    procedure ZReportBeforePrint(Sender: TObject; var DoPrint: Boolean);
  private
    { Private declarations }
    nTag, nReg, nRegistros, ID : integer;
    slCampos, slCamposConsulta, slCamposChave, slCamposACriar : TStringList;
    sTexto	 : string;
    bCriarCampo: boolean;
    procedure GeraCabecalho(zrNome, zrEnd, zrCid, zrLin1, zrLin2,
      zrLin3: TZRLabel);
    function RtfToText(sArquivo: string): string;
  public
    { Public declarations }
    procedure Imprimir( IdTexto : integer; sWhere : string = ''; slParametros : string = '';sParamConsulta : string = ''; sHaving : string = '');
  end;

var
  DlgCampos: TDlgCampos;

implementation

uses DM_Projeto, funcoes, Util2, ppViewr, Form_RichEdit;

{$R *.DFM}

procedure TDlgCampos.GeraCabecalho( zrNome, zrEnd, zrCid, zrLin1, zrLin2, zrLin3 : TZRLabel);
var sLinha,sLadoEsquerdo, sLadoDireito : string;
		i : integer;
begin
	with DMProjeto.q_sql do begin
 		close;
 		sql.text := 'select esquerdo, direito from cabecalho';
 		open;
 		sLadoEsquerdo := fields[0].asString;
 		sLadoDireito  := fields[1].asString;
	end;

	FormRichEdit := TFormRichEdit.Create( self );
	DMProjeto.Interpreta( sLadoEsquerdo );
	DMProjeto.Interpreta( sLadoDireito );
	sLadoEsquerdo := DMProjeto.FormataCabecalho( FormRichEdit.RichEdit, sLadoEsquerdo );
	sLadoDireito 	:= DMProjeto.FormataCabecalho( FormRichEdit.RichEdit, sLadoDireito );
	FormRichEdit.Free;

	{Lado Esquerdo}
	zrNome.Caption := '';
	zrEnd.Caption	 := '';
	zrCid.Caption	 := '';
	i := 1;
	while i<=ContaStrings(sLadoEsquerdo,';') do begin
 		sLinha := SeparaStrings(SeparaStrings(sLadoEsquerdo,';',i),'|',2);
 		while (sLinha = SeparaStrings(SeparaStrings(sLadoEsquerdo,';',i),'|',2)) and
    	    (i<=ContaStrings(sLadoEsquerdo,';')) do begin
   		if sLinha = '0' then
     		zrNome.Caption := zrNome.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo,';',i),'|',1)
   		else if sLinha = '1' then
     		zrEnd.Caption := zrEnd.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo,';',i),'|',1)
   		else if sLinha = '2' then
     		zrCid.Caption := zrCid.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo,';',i),'|',1)
   		else
     		i := 1000;
   		inc(i);
 		end;
	end;
	{Lado Direito}
	if zrLin1 <> nil then begin
		zrLin1.Caption := '';
		zrLin2.Caption := '';
		zrLin3.Caption := '';
		i := 1;
		while i<=ContaStrings(sLadoDireito,';') do begin
 			sLinha := SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',2);
 			while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',2)) and
       			(i<=ContaStrings(sLadoDireito,';')) do begin
   			if sLinha = '0' then
     			zrLin1.Caption := zrLin1.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',1))
   			else if sLinha = '1' then
     			zrLin2.Caption := zrLin2.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',1))
   			else if sLinha = '2' then
     			zrLin3.Caption := zrLin3.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito,';',i),'|',1))
   			else
     			i := 1000;
   			inc(i);
 			end;
		end;
	end;
end;

procedure TDlgCampos.Imprimir( IDTexto : integer; sWhere : string = ''; slParametros : string = ''; sParamConsulta : string = ''; sHaving : string = '' );
var i, nIndex, nTop, nConsulta, nModalResult : integer;
    sTitulo, sConsulta, sFormName : string;
    slArquivo : TStringList;
		sMemo : string;
begin
  ID := IDTexto;
  try
   slCampos 		 := TStringList.Create;
  	slCamposChave 	 := TStringList.Create;
  	slCamposConsulta:= TStringList.Create;
  	slCamposACriar  := TStringList.Create;
   slArquivo		 := TStringList.Create;
	with DMProjeto.Q_SQL do begin
      if fileexists(DMProjeto.ProgPath+'Textos\'+IntToStr(IDTexto)+'.rtf') then begin
        if IdTexto = 100 then
         sTexto := RtfToText( DMProjeto.ProgPath+'Textos\'+IntToStr(IDTexto)+'.rtf' )
        else begin
          slArquivo.LoadFromFile(DMProjeto.ProgPath+'Textos\'+IntToStr(IDTexto)+'.rtf');
    	  sTexto := slArquivo.Text;
        slArquivo.Free;
      end;
      end else
        sTexto    := '';
      close;
      sql.text := 'select consulta, titulo, arquivo from textos where texto = :texto';
      parambyname('Texto').asInteger := IDTexto;
      open;
   	nConsulta := fieldbyname('consulta').AsInteger;
      sFormName := fieldbyname('arquivo').AsString;
      sTitulo   := fieldbyname('titulo').AsString;
   	close;
   	SQL.Text 	:= 'select query from consultas '+
    	   			   'where consulta = '+IntToStr(nConsulta);
    	open;
    	sConsulta := fieldbyname('query').AsString;
      if sConsulta = '' then begin
        close;
        nModalResult := mrOk;
        Exit;
      end;
      close;
      if sWhere <> '' then begin
					//sConsulta := Replace(sConsulta,Copy(sConsulta,pos('HAVING',UpperCase(sConsulta)),pos('ORDER BY',UpperCase(sConsulta))-1,' HAVING '+sWhere+' ')
      	if pos('GROUPY',UpperCase(sConsulta))>0 then
      		System.Insert(' where '+sWhere+' ',sConsulta,pos('GROUPY',UpperCase(sConsulta)))
      	else if pos('WHERE',UpperCase(sConsulta))>0 then
          System.Insert(' and '+sWhere+' ',sConsulta,pos('ORDER BY',UpperCase(sConsulta)))
        else
					System.Insert(' where '+sWhere+' ',sConsulta,pos('ORDER BY',UpperCase(sConsulta)))
      end;
      if sHaving <> '' then
         System.Insert(' Having '+sHaving+' ',sConsulta,pos('ORDER BY',UpperCase(sConsulta)));

      SQL.Text := sConsulta;
      Query.Close;
      Query.SQL.Text := sConsulta;

	    if sParamConsulta <> '' then
  	  	for i:=1 to ContaStrings(sParamConsulta,';') do begin
    			SQL.Text := replace(SQL.Text,SeparaStrings(SeparaStrings(sParamConsulta,';',i),'=',1),SeparaStrings(SeparaStrings(sParamConsulta,';',i),'=',2));
          Query.SQL.Text := replace(Query.SQL.Text,SeparaStrings(SeparaStrings(sParamConsulta,';',i),'=',1),SeparaStrings(SeparaStrings(sParamConsulta,';',i),'=',2));
        end;
      Query.Open;
      open;
      getFieldNames( slCamposConsulta );
      if IDTexto = 1 then begin
        nIndex := slCamposConsulta.IndexOf('MEMO');
        if nIndex <> -1 then
      		slCamposConsulta.Delete(nIndex);
      end;
     	close;
  	end;
  	slCamposChave := DMProjeto.getCamposChave;
  	for i:=0 to slCamposChave.Count-1 do
    	sTexto := replace(sTexto,'<'+SeparaStrings(slCamposChave[i],'=',1)+'>',SeparaStrings(slCamposChave[i],'=',2));
    if slParametros <> '' then
    	for i:=1 to ContaStrings(slParametros,';') do
    		sTexto := replace(sTexto,SeparaStrings(SeparaStrings(slParametros,';',i),'=',1),SeparaStrings(SeparaStrings(slParametros,';',i),'=',2));
  	slCampos := getCampos(sTexto);
    nIndex := slCampos.IndexOf('MEMO');
    if nIndex <> -1 then
    	slCampos.Delete(nIndex);
  	bCriarCampo := false;
  	for i:=0 to slCampos.Count-1 do
//    	if (UpperCase(slCampos[i]) <> 'PORVALOR') AND (slCamposConsulta.IndexOf(slCampos[i]) < 0) then begin
    	if (slCamposConsulta.IndexOf(slCampos[i]) < 0) then begin
    		slCamposACriar.Add(slCampos[i]);
      	bCriarCampo := true;
    	end;
  	nTop := 17;
 		for i:=0 to slCamposACriar.Count-1 do begin
  		with TTS_Label.Create(self) do begin
    		Name := 'lb'+slCamposACriar[i]+InttoStr(i);
      	Caption	:= '<'+slCamposACriar[i]+'>:';
      	Parent 	:= Scroll;
      	Top    	:= nTop;
      	Left   	:= 8;
      	Width   := 105;
    	end;
  		with TTS_Edit.Create(self) do begin
    		Name := 'ed'+slCamposACriar[i]+InttoStr(i);
      	text := '';
      	Parent := Scroll;
      	Top    := nTop-2;
      	Left   := 120;
    	end;
    	inc(nTop,35);
  	end;
  finally
		slCampos.Free;
  	slCamposChave.Free;
  end;
  nModalResult := mrOk;
  if bCriarCampo then begin
     nModalResult := ShowModal;
     if (nModalResult = mrOk) then begin
        for i:=0 to slCamposACriar.Count-1 do
             sTexto := replace( sTexto, '<'+slCamposACriar[i]+'>', TEdit(FindComponent('ed'+slCamposACriar[i]+InttoStr(i))).Text );
     end;
     (**)
  end;
  if nConsulta <> 0  then
    ppTexto.DataPipeline := dbQuery
  else
  	ppTexto.DataPipeline := nil;
  regLinha.Visible := false;
  if IDTexto in [1,21,22] then begin
  	Detalhe.BandsPerRecord := StrToIntDef(DMProjeto.Parametro('QtdeReciboPorPagina'),1);
    regLinha.Visible := Detalhe.BandsPerRecord > 1;
  end;

  if nModalResult = mrOk then begin

    {Recibo Normal}
    if IDTexto < 100 then begin

    	DMProjeto.ImprimirCabecalho( Cabecalho, sFormName );

      if DMProjeto.Parametro('ReciboDiretoImpressora') = 'S' then
	  		ppTexto.DeviceType := 'Printer'
      else
      	ppTexto.DeviceType := 'Screen';

      ppTexto.Print;
    {Recibo para 40 colunas}
    end else begin

  		zrTexto.Caption := sTexto;
  		if pos('[EXTENSO(<VALOR>)]', UpperCase(zrTexto.Caption) ) > 0 then
    		zrTexto.Caption :=  replace(zrTexto.Caption,'[Extenso(<VALOR>)]',Util2.Extenso(Query.FieldByName('Valor').AsFloat));

			if nConsulta = 1 then begin
    		with DMProjeto.Q_SQL do begin
     			close;
      		sql.text := 'select r.historico, rd.obs from retiradasdoc rd '+
      								'inner join retiradas r on r.retirada = rd.retirada '+
      								'where rd.retirada = :retirada and rd.favorecidodoc = :favorecido';
      		parambyname('retirada').AsInteger 	:= Query.FieldbyName('Retirada').AsInteger;
      		parambyname('favorecido').AsInteger := Query.FieldbyName('FavorecidoDoc').AsInteger;
      		open;
      		while not eof do begin
      			sMemo := CExp(sMemo,',') + iif(fields[1].AsString='',fields[0].AsString,fields[1].AsString);
        		next;
      		end;
      		zrTexto.Caption := replace(zrTexto.Caption,'<Memo>',sMemo)
    		end;
  		end;

  		for i:=0 to slCamposConsulta.Count-1 do begin
    		if Query.FieldByName(slCamposConsulta[i]).DataType in [ftFloat,ftBCD] then
      		zrTexto.Caption := replace(zrTexto.Caption,'<'+slCamposConsulta[i]+'>',formatfloat('###,###,##0.00',Query.FieldByName(slCamposConsulta[i]).AsFloat))
    		else
      		zrTexto.Caption := replace(zrTexto.Caption,'<'+slCamposConsulta[i]+'>',Query.FieldByName(slCamposConsulta[i]).AsString);
    		if slCamposConsulta[i] = 'FAVORECIDO' then
					zrFavorecido.Caption := Query.FieldByName(slCamposConsulta[i]).AsString;
    	end;

			GeraCabecalho( zrEmpresa, zrEndereco, zrCidade, nil, nil, nil );

      if DMProjeto.Parametro('ReciboDiretoImpressora') = 'S' then
      	ZReport.Print
      else
      	ZReport.Preview;
    end;
  end;
end;

procedure TDlgCampos.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inc(nReg);
  Text := IntToStr(nReg);
end;

procedure TDlgCampos.ppTextoCompletoPrint(Sender: TObject);
var i : integer;
		sMemo : string;
begin
  TppRichText(Sender).RichText := sTexto;
  if pos('[EXTENSO(<VALOR>)]', UpperCase(TppRichText(Sender).RichText) ) > 0 then
    TppRichText(Sender).RichText :=  replace(TppRichText(Sender).RichText,'[Extenso(<Valor>)]',Util2.Extenso(Query.FieldByName('Valor').AsFloat));

	if ID = 1 then begin
    with DMProjeto.Q_SQL do begin
     	close;
      sql.text := 'select r.historico, rd.obs from retiradasdoc rd '+
      						'inner join retiradas r on r.retirada = rd.retirada '+
      						'where rd.retirada = :retirada and rd.favorecidodoc = :favorecido';
      parambyname('retirada').AsInteger 	:= Query.FieldbyName('Retirada').AsInteger;
      parambyname('favorecido').AsInteger := Query.FieldbyName('FavorecidoDoc').AsInteger;
      open;
      while not eof do begin
      	sMemo := CExp(sMemo,',') + iif(fields[1].AsString='',fields[0].AsString,fields[1].AsString);
        next;
      end;
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<Memo>',sMemo)
    end;
  end;

  for i:=0 to slCamposConsulta.Count-1 do
    if UpperCase(slCamposConsulta[i]) = 'CPF_CNPJ' then
	    TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',MascaraCPFCNPJ(Query.FieldByName(slCamposConsulta[i]).asString))
    else if Query.FieldByName(slCamposConsulta[i]).DataType in [ftFloat,ftBCD] then
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',formatfloat('###,###,##0.00',Query.FieldByName(slCamposConsulta[i]).AsFloat))
    else
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',Query.FieldByName(slCamposConsulta[i]).AsString);
end;

function TDlgCampos.RtfToText( sArquivo : string ) : string;
begin
  FormRichEdit := TFormRichEdit.Create(self);
	FormRichEdit.RichEdit.Lines.LoadFromFile( sArquivo );
	FormRichEdit.RichEdit.PlainText  := true;
  result := FormRichEdit.RichEdit.Lines.Text;
  FormRichEdit.Free;
end;

procedure TDlgCampos.TS_BitBtn2Click(Sender: TObject);
begin
	close;
end;

procedure TDlgCampos.ppTextoBeforePrint(Sender: TObject);
begin
  nReg := 0;
end;

procedure TDlgCampos.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
	nTag := 1;
end;

procedure TDlgCampos.DetalheAfterPrint(Sender: TObject);
begin
  nTag := 0;
end;

procedure TDlgCampos.regLinhaPrint(Sender: TObject);
begin
  regLinha.Visible := (nTag = 1) and (ID in [1,21,22]);
end;

procedure TDlgCampos.ppTextoPreviewFormCreate(Sender: TObject);
begin
  ppTexto.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppTexto.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TDlgCampos.ZReportBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  ZReport.Options.AutoHeight := True;
end;

end.

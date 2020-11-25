unit Dlg_HistoricoRetiradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS,
  TS_DBLookupComboBox, TS_DBLookupTipoFav, StdCtrls, TS_Edit, TS_Label,
  DlgMsg, Buttons, TS_SpeedButton, ExtCtrls,
  Db, IBCustomDataSet, IBQuery,
  Provider, DBClient, DBCtrls, TS_LastDataObject, TS_Bevel,
  TS_EditFavorecido, dxDBEdtr, dxDBELib, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_ButtonEdit, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, TS_DBEditDate, TS_DateTimePicker, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, TS_CheckBox, BTOdeum, Placemnt;

type
  TDlgHistoricoRetiradas = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Label2: TTS_Label;
    TS_Label1: TTS_Label;
    C_Historico: TClientDataSet;
    P_Historico: TDataSetProvider;
    Q_Historico: TIBQuery;
    C_HistoricoDS: TDataSource;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    C_HistoricoRETIRADA: TIntegerField;
    C_HistoricoDATA: TDateField;
    C_HistoricoNOME: TStringField;
    C_HistoricoVALOR: TBCDField;
    C_HistoricoFAVORECIDODOC: TIntegerField;
    edFavorecido: TTS_EditFavorecido;
    DBRetiradas: TTS_QDBGrid;
    DBRetiradasRETIRADA: TdxDBGridMaskColumn;
    DBRetiradasTITULO: TdxDBGridMaskColumn;
    DBRetiradasDATA: TdxDBGridDateColumn;
    DBRetiradasNOME: TdxDBGridMaskColumn;
    DBRetiradasVALOR: TdxDBGridMaskColumn;
    DBRetiradasFAVORECIDODOC: TdxDBGridMaskColumn;
    dtDataI: TTS_DateTimePicker;
    dtDataF: TTS_DateTimePicker;
    C_Historico_icSelecionado: TIntegerField;
    C_HistoricoID: TStringField;
    Alterar1: TMenuItem;
    Pesquisar1: TMenuItem;
    N1: TMenuItem;
    Cancelar1: TMenuItem;
    ckbCancelados: TTS_CheckBox;
    DBRetiradasSituacao: TdxDBGridColumn;
    C_HistoricoSITUACAO: TStringField;
    C_HistoricoIDDOC: TIntegerField;
    DBRetiradasFORMAPAGAMENTO: TdxDBGridColumn;
    C_HistoricoFORMAPAGAMENTO: TStringField;
    procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dtDataIDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_HistoricoCalcFields(DataSet: TDataSet);
    procedure btComando2Click(Sender: TObject);
    procedure DBRetiradasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ckbCanceladosChange(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure edFavorecidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Tipo : integer;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgHistoricoRetiradas: TDlgHistoricoRetiradas;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgHistoricoRetiradas.Pesquisar;
begin
	with C_Historico do begin
  	close;
    Params.Clear;
		CommandText := 'Select r.Retirada, rd.IDDoc, r.Data, r.Situacao, f.Nome, '+
    							 'rd.FavorecidoDoc, fp.descricao as FormaPagamento, rd.valor '+
									 'from Retiradas r '+
                   'inner join RetiradasDoc rd on rd.retirada = r.retirada '+
									 'inner join Favorecidos f on f.Favorecido = rd.Favorecidodoc '+
                   'inner join FormasPagamento fp on fp.formapagamento = rd.formapagamento '+
                   'where r.data >= :DataI and r.data <= :DataF and r.TipoRetirada = :Tipo :Situacao :Favorecido ';
{
									 'group by r.retirada, r.data, r.Situacao, f.nome, rd.favorecidodoc, r.valor '+
									 'UNION '+
									 'Select r.Retirada, r.Data, r.Situacao, f.Nome, f.favorecido, r.Valor '+
									 'from Retiradas r inner join RetiradasChequesCaixa rcl '+
     							 'on r.retirada = rcl.retirada '+
     							 'left join favorecidos f on rcl.favorecido = f.favorecido '+
									 'where r.data >= :DataI and r.data <= :DataF and r.TipoRetirada = :Tipo '+
                   'and not exists (select iddoc from retiradasdoc rdd where rdd.retirada = r.retirada) :Situacao :Favorecido ';
}
    if ckbCancelados.Checked then
    	CommandText := replace(CommandText,':Situacao','')
    else
    	CommandText := replace(CommandText,':Situacao',' and r.Situacao=''N'' ');

    //Params.CreateParam( ftDate, 'DataI', ptInput );
    //Params.CreateParam( ftDate, 'DataF', ptInput );
    //Params.CreateParam( ftInteger, 'Tipo', ptInput );
    Params.ParamByName('DataI').AsDateTime := dtDataI.Date;
    Params.ParamByName('DataF').AsDateTime := dtDataF.Date;
    Params.ParamByName('Tipo').AsInteger	 := Tipo;
    if edFavorecido.Id <> 0 then
    	CommandText := replace(CommandText,':Favorecido',' and rd.favorecidodoc = '+IntToStr(edFavorecido.getId))
    else
      CommandText := replace(CommandText,':Favorecido','');
    CommandText := CommandText + ' order by 2, 1';
    open;
    last;
  end;
end;

procedure TDlgHistoricoRetiradas.edFavorecidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  	Pesquisar;
end;

procedure TDlgHistoricoRetiradas.btLimparClick(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoRetiradas.btGravarClick(Sender: TObject);
begin
  inherited;
  if DBRetiradas.QuantidadeSelecionada > 1 then begin
  	DlgMsg.ShowMsg(576);
    Exit;
  end;
  with DMProjeto do begin
   	SetParametrosForm([C_HistoricoRetirada.Value,C_HistoricoFavorecidoDoc.Value]);
    ModalResult := 1;
  end;
end;

procedure TDlgHistoricoRetiradas.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text = '' then
  	Pesquisar;
end;

procedure TDlgHistoricoRetiradas.dtDataIDateChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoRetiradas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoRetiradas.FormsComponentBeforeClearParams(
  Sender: TObject);
var nDias : integer;
		sFiltro, sCampo, sValor : string;
begin
  inherited;
  if DMProjeto.ExisteParametrosForm then begin
  	Tipo := DMProjeto.GetParametrosForm(0);
    Caption := DMProjeto.GetParametrosForm(1);
    btGravar.Enabled := DMProjeto.GetParametrosForm(2);
    DMProjeto.LimparParametrosForm;
  end;
  nDias := StrToIntDef(DMProjeto.Parametro('DiasHistorico'),7);
  edFavorecido.OnSelecionou := nil;
  dtDataI.OnDateChange := nil;
  dtDataF.OnDateChange := nil;
  dtDataI.date := DMProjeto.dDataSistema - nDias;
  dtDataF.date := DMProjeto.dDataSistema;
  if DMProjeto.slHistorico <> nil then begin
  	with DMProjeto.slHistorico do begin
      if Values['Favorecido_'+Owner.Name] <> '' then begin
      	dtDataI.Date 	  := StrToDate(Values['DataIni_'+Owner.Name]);
      	dtDataF.Date		:= StrToDate(Values['DataFim_'+Owner.Name]);
     	 	edFavorecido.ID := StrToInt(Values['Favorecido_'+Owner.Name]);
      end;
      if Values['Ordem_'+Owner.Name] <> '' then begin
      	DBRetiradas.FindColumnByFieldName(Values['Ordem_'+Owner.Name]).Sorted  :=
      	iif(Values['TipoOrdem_'+Owner.Name]='D',csDown,csUp);
      end;
      if Values['Filtro_'+Owner.Name] <> '' then begin
      	sFiltro := SeparaStrings(Values['Filtro_'+Owner.Name],' AND ', 1);
        sFiltro := replace( sFiltro, '<=', ';' );
        sFiltro := replace( sFiltro, '>=', ';' );
        sFiltro := replace( sFiltro, '<', ';' );
        sFiltro := replace( sFiltro, '>', ';' );
        sFiltro := replace( sFiltro, '=', ';' );
        sFiltro := replace( sFiltro, '<>', ';' );
        sFiltro := replace( sFiltro, '(', '' );
        sFiltro := replace( sFiltro, ')', '' );
        sCampo 	:= Trim(SeparaStrings(sFiltro, ';', 1));
        sValor  := Trim(SeparaStrings(sFiltro, ';', 2));
        if sCampo <> '' then begin
          DBRetiradas.Filter.Active := true;
          if sCampo = 'Favorecido' then
        		DBRetiradas.Filter.Add( DBRetiradasNOME,sValor,sValor )
          else if sCampo = 'Data' then
          	DBRetiradas.Filter.Add( DBRetiradasDATA,sValor,sValor )
          else if sCampo = 'Forma Pag.' then
          	DBRetiradas.Filter.Add( DBRetiradasFORMAPAGAMENTO,sValor,sValor )
          else if sCampo = 'Valor' then
          	DBRetiradas.Filter.Add( DBRetiradasVALOR,sValor,sValor )
      	end;
      end;
      Pesquisar;
   	end;
  end else begin
  	Pesquisar;
  end;
 	dtDataI.OnDateChange := dtDataIDateChange;
 	dtDataF.OnDateChange := dtDataIDateChange;
  edFavorecido.OnSelecionou := edFavorecidoSelecionou;
end;

procedure TDlgHistoricoRetiradas.C_HistoricoCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_HistoricoID.Value := C_HistoricoRetirada.AsString+C_HistoricoFavorecidoDoc.AsString;
end;

procedure TDlgHistoricoRetiradas.btComando2Click(Sender: TObject);
begin
  inherited;
  if C_HistoricoSituacao.Value= 'C' then begin
  	DlgMsg.ShowMsg(940);
    Exit;
  end;

 	if not DMProjeto.DlgAutorizacao.ExecuteX( owner.name, 'CAN' ) then
 		exit;

  if C_HistoricoRetirada.AsInteger = 0 then
   	exit;
	if DBRetiradas.Selecionados = '' then
  	DBRetiradas.Selecionar;
  if DlgMsg.ShowMsg( 577, ['os pagamentos selecionados ?']) = 100 then begin

    try

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
				DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

			DMFinanceiro.CancelarRetirada( DBRetiradas.Distinct('Retirada',true),'',true,true);

  		Pesquisar;
    	try
      	SendLastDataObject(Self.Name, 'Retiradas', 'Retirada', C_HistoricoRetirada.AsInteger,
                         false );
    	except
    	end;

  		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  	except
    	on E : Exception do begin
  			if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  				DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    		DlgMsg.ShowMsg(1, e.Message, '');
    	end;
  	end;
  end;
end;

procedure TDlgHistoricoRetiradas.DBRetiradasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if DBRetiradas.GetFieldValue( ANode, 'Situacao', 'N') = 'C' then
    AFont.Color :=  clRed
  else
  	AFont.Color :=  clBlack;
end;

procedure TDlgHistoricoRetiradas.ckbCanceladosChange(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgHistoricoRetiradas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then begin
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
  end else if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS;OPERACOESFINANCEIRAS;RETIRADAS')>0 then
		Pesquisar;
end;

procedure TDlgHistoricoRetiradas.edFavorecidoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 38 then
  	C_Historico.Prior
  else if key = 40 then
  	C_Historico.Next
end;

procedure TDlgHistoricoRetiradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DMProjeto.slHistorico = nil then
		DMProjeto.slHistorico := TStringList.Create;
  with DMProjeto.slHistorico do begin
  	if Values['Favorecido_'+Owner.Name] = '' then begin
    	Add('Favorecido_'+Owner.Name+'='+IntToStr(edFavorecido.ID));
      Add('DataIni_'+Owner.Name+'='+DateToStr(dtDataI.Date));
      Add('DataFim_'+Owner.Name+'='+DateToStr(dtDataF.Date));
      if DBRetiradas.SortedColumn <> nil then begin
      	Add('Ordem_'+Owner.Name+'='+TdxDBGridColumn(DBRetiradas.SortedColumn).FieldName);
      	Add('TipoOrdem_'+Owner.Name+'='+iif(TdxDBGridColumn(DBRetiradas.SortedColumn).Sorted = csDown,'D','U'));
      end;
      if DBRetiradas.Filter.Active then
      	Add('Filtro_'+Owner.Name+'='+DBRetiradas.Filter.FilterCaption);
    end else begin
    	Values['Favorecido_'+Owner.Name] := IntToStr(edFavorecido.ID);
      Values['DataIni_'+Owner.Name] 	 := DateToStr(dtDataI.Date);
      Values['DataFim_'+Owner.Name] 	 := DateToStr(dtDataF.Date);
      if DBRetiradas.SortedColumn <> nil then begin
      	Values['Ordem_'+Owner.Name]    := TdxDBGridColumn(DBRetiradas.SortedColumn).FieldName;
      	Values['TipoOrdem_'+Owner.Name]:= iif(TdxDBGridColumn(DBRetiradas.SortedColumn).Sorted = csDown,'D','U');
      end;
      if DBRetiradas.Filter.Active then
      	Values['Filtro_'+Owner.Name]	 := DBRetiradas.Filter.FilterCaption
      else
        Values['Filtro_'+Owner.Name]	 := '';
    end;
  end;
end;

procedure TDlgHistoricoRetiradas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if key = 27 then
  	Close;
end;

end.

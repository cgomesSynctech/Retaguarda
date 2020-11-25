unit Dlg_HistoricoDepositos;

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
  TS_MaxPanel, TS_DBEditDate, TS_DateTimePicker, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, TS_CheckBox, Variants,
  BTOdeum, Placemnt, TS_DBButtonEdit, TS_DBEditFavorecido;

type
  TDlgHistoricoDepositos = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Label2: TTS_Label;
    TS_Label1: TTS_Label;
    C_Historico: TClientDataSet;
    P_Historico: TDataSetProvider;
    Q_Historico: TIBQuery;
    C_HistoricoDS: TDataSource;
    C_HistoricoDATA: TDateField;
    C_HistoricoNOME: TStringField;
    C_HistoricoDEPOSITO: TIntegerField;
    C_HistoricoNOMECONTA: TStringField;
    C_HistoricoVALOR: TBCDField;
    C_HistoricoFAVORECIDO: TIntegerField;
    edFavorecido: TTS_EditFavorecido;
    DBDepositos: TTS_QDBGrid;
    Data: TdxDBGridColumn;
    Nome: TdxDBGridColumn;
    Conta: TdxDBGridColumn;
    Valor: TdxDBGridColumn;
    Favorecido: TdxDBGridColumn;
    C_Historico_icSelecionado: TIntegerField;
    dtDataI: TTS_DateTimePicker;
    dtDataF: TTS_DateTimePicker;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    Alterar1: TMenuItem;
    N1: TMenuItem;
    Cancelar1: TMenuItem;
    Pesquisar1: TMenuItem;
    ckbCancelados: TTS_CheckBox;
    C_HistoricoSITUACAO: TStringField;
    DBDepositosSituacao: TdxDBGridColumn;
    C_HistoricoCREDITOGERADO: TBCDField;
    C_HistoricoCREDITOUTILIZADO: TBCDField;
    DBDepositosColumn9: TdxDBGridMaskColumn;
    DBDepositosColumn10: TdxDBGridMaskColumn;
    procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dtDataIDateChange(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure ckbCanceladosChange(Sender: TObject);
    procedure DBDepositosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
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
  DlgHistoricoDepositos: TDlgHistoricoDepositos;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgHistoricoDepositos.Pesquisar;
begin
	with C_Historico do begin
  	close;
    Params.Clear;
    CommandText := 'Select d.Deposito, d.Data, d.Situacao, f.Nome, d.Deposito, '+
    						'c.Descricao as NomeConta, (d.Valor) as Valor, d.Favorecido, '+
                'd.creditogerado, d.creditoutilizado '+
								'from '+
                'Depositos d '+
  							'inner join Favorecidos f on d.Favorecido = f.Favorecido '+
  							'inner join Contas c on d.Conta = c.Conta '+
                'where d.data >= :DataI and d.data <= :DataF and d.TipoDeposito = :Tipo :cliente :Situacao '+
                'order by d.data, d.deposito';
    Params.ParamByName('DataI').AsDateTime := dtDataI.Date;
    Params.ParamByName('DataF').AsDateTime := dtDataF.Date;
    Params.ParamByName('Tipo').AsInteger	 := Tipo;

    if ckbCancelados.Checked then
    	CommandText := replace(CommandText,':Situacao','')
    else
    	CommandText := replace(CommandText,':Situacao',' and d.Situacao=''N'' ');

    if edFavorecido.Id <> 0 then
    	CommandText := replace(CommandText,':cliente',' and d.favorecido = '+IntToStr(edFavorecido.ID))
    else
    	CommandText := replace(CommandText,':cliente','');
    open;
    last;
  end;
end;

procedure TDlgHistoricoDepositos.edFavorecidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  	Pesquisar;
end;

procedure TDlgHistoricoDepositos.btLimparClick(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoDepositos.btGravarClick(Sender: TObject);
begin
  inherited;
  if DBDepositos.QuantidadeSelecionada > 1 then begin
  	DlgMsg.ShowMsg(576);
    Exit;
  end;
  with DMProjeto do begin
   	SetParametrosForm([C_HistoricoDeposito.Value,C_HistoricoFavorecido.Value]);
    ModalResult := 1;
    {
    try
      SendLastDataObject(Self.Name, 'Depositos', 'Deposito',C_HistoricoDeposito.Value,
                           false );
    except
    end;
    }
  end;
end;

procedure TDlgHistoricoDepositos.dtDataIDateChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoDepositos.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.text = '' then
  	Pesquisar;
end;

procedure TDlgHistoricoDepositos.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoDepositos.FormsComponentBeforeClearParams(
  Sender: TObject);
var nDias : integer;
		sFiltro, sCampo, sValor : string;
begin
  inherited;
  if DMProjeto.ExisteParametrosForm then begin
  	Tipo 		:= DMProjeto.GetParametrosForm(0);
    Caption := DMProjeto.GetParametrosForm(1);
    btGravar.Enabled := DMProjeto.GetParametrosForm(2);
    Alterar1.Enabled := btGravar.Enabled;
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
      	DBDepositos.FindColumnByFieldName(Values['Ordem_'+Owner.Name]).Sorted  :=
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
          DBDepositos.Filter.Active := true;
          if sCampo = 'Favorecido' then
        		DBDepositos.Filter.Add( NOME,sValor,sValor )
          else if sCampo = 'Data' then
          	DBDepositos.Filter.Add( DATA,sValor,sValor )
          else if sCampo = 'Conta' then
          	DBDepositos.Filter.Add( CONTA,sValor,sValor )
          else if sCampo = 'Valor' then
          	DBDepositos.Filter.Add( VALOR,sValor,sValor )
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

procedure TDlgHistoricoDepositos.btComando2Click(Sender: TObject);
var i : integer;
		sSelecionados : string;
begin
  inherited;
	if DBDepositos.Selecionados = '' then
  	DBDepositos.Selecionar;
  {Crítica/Validação}
  sSelecionados := DBDepositos.FirstSelected;
  for i:=1 to ContaStrings(sSelecionados,',') do begin
    {Verificando se o depósito já está cancelado}
  	if C_HistoricoSituacao.Value= 'C' then begin
  		DlgMsg.ShowMsg(940);
    	Exit;
  	end;
  	{Verificando se o crédito já foi utilizado}
  	if (C_HistoricoCreditoGerado.Value > 0) and (C_HistoricoCreditoGerado.Value > DMFinanceiro.CreditoFavorecido(C_HistoricoFavorecido.Value, true)) then begin
    	DlgMsg.ShowMsg(7003,['cancelar']);
      Exit;
    end;
    DBDepositos.NextSelected;
  end;

  if not DMProjeto.DlgAutorizacao.ExecuteX( owner.name, 'CAN' ) then
    	exit;
  if DlgMsg.ShowMsg( 577, ['os depósitos selecionados ?']) = 100 then begin

    try

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
				DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

			DMFinanceiro.CancelarDeposito( DBDepositos.Selecionados,'',true,true);
    	DMProjeto.SetParametrosForm([null,DBDepositos.Selecionados]);

    	try
     		SendLastDataObject(Self.Name, 'CanceladoDeposito', 'Cancelado', C_HistoricoDeposito.AsInteger, false );
    	except
    	end;

  		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

   		Pesquisar;

  	except
    	on E : Exception do begin
  			if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  				DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    		DlgMsg.ShowMsg(1, e.Message, '');
    	end;
  	end;
  end;
end;

procedure TDlgHistoricoDepositos.ckbCanceladosChange(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgHistoricoDepositos.DBDepositosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not Anode.HasChildren then begin
  	if DBDepositos.GetFieldValue( ANode, 'Situacao', 'N') = 'C' then
    	AFont.Color :=  clRed
  	else
  		AFont.Color :=  clBlack;
  end;
end;

procedure TDlgHistoricoDepositos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then begin
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
  end else if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS;OPERACOESFINANCEIRAS;RETIRADAS')>0 then
		Pesquisar;
end;

procedure TDlgHistoricoDepositos.edFavorecidoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_UP{38} then
  	DBDepositos.GotoPrev( false )
  else if key = VK_DOWN{40} then
  	DBDepositos.GotoNext( false );
{  else if key = VK_NEXT then
  	C_Historico.MoveBy(10)
  else if key = VK_PRIOR then
  	C_Historico.MoveBy(-10); }
end;

procedure TDlgHistoricoDepositos.FormClose(Sender: TObject;
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
      if DBDepositos.SortedColumn <> nil then begin
      	Add('Ordem_'+Owner.Name+'='+TdxDBGridColumn(DBDepositos.SortedColumn).FieldName);
      	Add('TipoOrdem_'+Owner.Name+'='+iif(TdxDBGridColumn(DBDepositos.SortedColumn).Sorted = csDown,'D','U'));
      end;
      if DBDepositos.Filter.Active then
      	Add('Filtro_'+Owner.Name+'='+DBDepositos.Filter.FilterCaption);
    end else begin
    	Values['Favorecido_'+Owner.Name] := IntToStr(edFavorecido.ID);
      Values['DataIni_'+Owner.Name] 	 := DateToStr(dtDataI.Date);
      Values['DataFim_'+Owner.Name] 	 := DateToStr(dtDataF.Date);
      if DBDepositos.SortedColumn <> nil then begin
      	Values['Ordem_'+Owner.Name]    := TdxDBGridColumn(DBDepositos.SortedColumn).FieldName;
      	Values['TipoOrdem_'+Owner.Name]:= iif(TdxDBGridColumn(DBDepositos.SortedColumn).Sorted = csDown,'D','U');
      end;
      if DBDepositos.Filter.Active then
      	Values['Filtro_'+Owner.Name]	 := DBDepositos.Filter.FilterCaption
      else
        Values['Filtro_'+Owner.Name]	 := '';
    end;
  end;
end;

procedure TDlgHistoricoDepositos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if key = 27 then
  	Close;
end;

end.

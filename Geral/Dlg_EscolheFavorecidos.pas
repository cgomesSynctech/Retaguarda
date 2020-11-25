unit Dlg_EscolheFavorecidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, TS_EditFavorecido, DBCtrls,
  TS_DBLookupComboBox, TS_DBLookupTipoFav, Db, IBCustomDataSet, IBQuery,
  ComCtrls, ImgList, dxExEdtr, dxEdLib, TS_ButtonEdit, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, FormsComponent, TS_Label, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Shape, teCtrls, TS_EffectsPanel, BTOdeum, CheckLst,
  TS_CheckListBox, Placemnt, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxDBTLCl, dxGrClms, DBClient, Variants;

type
  TDlgEscolheFavorecidos = class(TFrmModeloCadastros)
    Q_SQL: TIBQuery;
    ilFavorecidos: TImageList;
    ppmFavorecidos: TTS_PopupMenu;
    LimpaTodos1: TMenuItem;
    dfTipoFav: TTS_DBLookupTipoFav;
    TS_SpeedButton2: TTS_SpeedButton;
    shContorno: TTS_Shape;
    edFavorecido: TTS_EditFavorecido;
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    Q_ItensPayroll: TIBQuery;
    Q_ItensPayrollPAYROLLITEM: TIntegerField;
    Q_ItensPayrollDESCRICAO: TIBStringField;
    Grid: TTS_QDBGrid;
    C_Favorecidos: TClientDataSet;
    C_FavorecidosDS: TDataSource;
    C_FavorecidosID: TIntegerField;
    C_FavorecidosNome: TStringField;
    C_FavorecidosCargo: TStringField;
    C_FavorecidosCliente: TStringField;
    C_FavorecidosPayrollItem: TStringField;
    GridID: TdxDBGridMaskColumn;
    GridNome: TdxDBGridMaskColumn;
    C_FavorecidosImagem: TIntegerField;
    C_FavorecidosIDPayrollItem: TIntegerField;
    procedure LimpaTodos1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure dfTipoFavChange(Sender: TObject);
    procedure edClienteSelecionou(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cklItemPayrollClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
  private
    { Private declarations }
    IDs: string;
    TipoFav: integer;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgEscolheFavorecidos: TDlgEscolheFavorecidos;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgEscolheFavorecidos.LimpaTodos1Click(Sender: TObject);
begin
  inherited;
  C_Favorecidos.EmptyDataSet;
end;

procedure TDlgEscolheFavorecidos.btGravarClick(Sender: TObject);
var i:integer;
    sNomes : String;
begin
  inherited;
  if C_Favorecidos.RecordCount > 0 then begin
    IDs := '';
    sNomes := '';
    C_Favorecidos.DisableControls;
    C_Favorecidos.First;
    while not C_Favorecidos.EOF do begin
      IDs := CExp(IDs,',') + C_FavorecidosID.AsString;
      sNomes := CExp(sNomes,',') + C_FavorecidosNome.AsString;
      C_Favorecidos.Next;
    end;
    C_Favorecidos.EnableControls;
    DMProjeto.SetParametrosForm([ IDs, sNomes ]);
  end
  else begin
    IDs := '';
    sNomes := '';
    DMProjeto.SetParametrosForm([ IDs, sNomes ]);
  end;
  Close;
end;

procedure TDlgEscolheFavorecidos.Remove1Click(Sender: TObject);
begin
  inherited;
  C_Favorecidos.Delete;
end;

procedure TDlgEscolheFavorecidos.FormsComponentBeforeLoadKey(
  Sendet: TObject; var Where: String);
var condicao: string;
begin
  inherited;
  with DMProjeto do begin

    edFavorecido.WhereAdicional := GetParametrosForm(0);
    IDs := GetParametrosForm(1);
    TipoFav := GetParametrosForm(2);

{    if TipoFav = 3 then begin
			Q_ItensPayRoll.Open;
      cklItemPayroll.UpdateItems;
    end;}

    if TipoFav>-1 then begin
      edFavorecido.TipoFavorecido := TipoFav;
      dfTipoFav.TipoFavorecido 		:= TipoFav;
      dfTipoFav.LookupKeyValue 		:= TipoFav;
      dfTipoFav.ReadOnly := True;
      dfTipoFav.TabStop  := False;
    end;
{    pnClientes.Visible 	:= TipoFav = 3;
    GridCargo.Visible 	:= TipoFav = 3;
    GridCliente.Visible := TipoFav = 3;
    GridPayrollItem.Visible := TipoFav = 3;}

    if length(IDs)>0 then
    	condicao := 'And f.Favorecido In('+IDs+') '
    else
    	condicao := 'And f.Favorecido IN (-111111) ';
    with Q_SQL do begin
      Close;
      if TipoFav <> 3 then begin
      	SQL.Text := 'Select f.Favorecido, f.Nome, f.TipoFavorecido '+
      							'From Favorecidos f Where f.TipoFavorecido >-1 '+
                  	condicao+
                  	'Order By f.Nome';
      end else
      	SQL.Text := 'Select f.Favorecido, f.Nome, f.TipoFavorecido, c.Descricao, '+
        						'cf.payrollitem, pi.descricao as descpayrollitem, ff.nome as Cliente '+
      							'From Favorecidos f '+
                    'Left join ContratosFav cf on f.favorecido = cf.funcionario '+
                    'Left join Favorecidos ff on cf.favorecido = ff.favorecido '+
                    'Left join Cargos c on f.cargo = c.cargo '+
                    'Left Join PayrollItens pi on pi.payrollitem = cf.payrollitem '+
                    'Where f.TipoFavorecido >-1 '+
                  	condicao+
                  	'Order By f.Nome';
      Open;
      C_Favorecidos.EmptyDataSet;
      while not(EOF) do begin
        C_Favorecidos.Append;
        C_FavorecidosID.Value   := FieldByName('Favorecido').AsInteger;
        C_FavorecidosNome.Value := FieldByName('Nome').AsString;
{        if TipoFav = 3 then begin
        	C_FavorecidosCargo.Value   := FieldByName('Descricao').AsString;
          C_FavorecidosCliente.Value := FieldByName('Cliente').AsString;
          C_FavorecidosPayrollitem.Value := FieldByName('DescPayRollItem').AsString;
          C_FavorecidosIDPayrollitem.Value := FieldByName('PayrollItem').AsInteger;
      	end;}
        if (FieldByName('TipoFavorecido').AsInteger>=1)and(FieldByName('TipoFavorecido').AsInteger<=3) then
          C_FavorecidosImagem.Value := FieldByName('TipoFavorecido').AsInteger-1
        else
        	C_FavorecidosImagem.Value := -1;
        C_Favorecidos.Post;
        Next;
      end;
    end;
    FormsComponent.Caption := 'Escolhe '+dfTipoFav.text;
    LimparParametrosForm;
  end;
  if TipoFav <> 3 then begin
  	Grid.OptionsView := Grid.OptionsView - [edgoAutoWidth];
    GridNome.Width  := Grid.Width;
  	Grid.OptionsView := Grid.OptionsView + [edgoAutoWidth];
    Grid.ShowHeader := false;
  end;

end;

procedure TDlgEscolheFavorecidos.edFavorecidoSelecionou(Sender: TObject);
var ID: integer;
begin
  inherited;
    ID := edFavorecido.ID;
    with C_Favorecidos do begin
    	if not Locate('ID',id,[]) then begin
      	Append;
        FieldByName('ID').AsInteger	 := ID;
        FieldByName('Nome').AsString := edFavorecido.Text;
        if TipoFav = 3 then
        	FieldByName('Cargo').AsString := VarToStr(DMProjeto.getCampoTabela('Cargos','Cargo','Descricao',DMProjeto.C_LocalizarFavCargo.Value));
     		if (dfTipoFav.LookupKeyValue>=1) and (dfTipoFav.LookupKeyValue<=3) then
       		FieldByName('Imagem').AsInteger := dfTipoFav.LookupKeyValue-1
     		else
       		FieldByName('Imagem').AsInteger := -1;
        Post;
      end;
    end;
    edFavorecido.Text := '';
end;

procedure TDlgEscolheFavorecidos.dfTipoFavChange(Sender: TObject);
begin
  inherited;
	FormsComponent.Caption := 'Escolhe '+dfTipoFav.text;
end;

procedure TDlgEscolheFavorecidos.edClienteSelecionou(Sender: TObject);
begin
	Pesquisar;
end;

procedure TDlgEscolheFavorecidos.Pesquisar;
var i : integer;
		bExiste : boolean;
    ID : integer;
begin
  inherited;
		with Q_SQL do begin
    	close;
      sql.text := 'select c.funcionario, f.nome, cg.descricao as cargo, '+
      						'pi.descricao as descpayrollitem, ff.nome as cliente, '+
                  'c.payrollitem '+
      						'from contratosfav c '+
      						'inner join favorecidos f on c.funcionario = f.favorecido '+
                  'inner join favorecidos ff on c.favorecido = ff.favorecido '+
                  'left join cargos cg on f.cargo = cg.cargo '+
                  'Left Join PayrollItens pi on pi.payrollitem = c.payrollitem '+
      						'where :fav :payrollitem';
{      if edCliente.ID <> 0 then
      	sql.text := replace(sql.text,':fav','c.favorecido = '+IntToStr(edCliente.ID)+iif(cklItemPayroll.Selecionados<>'',' and ',''))
      else
      	sql.text := replace(sql.text,':fav','');

      if cklItemPayroll.Selecionados <> '' then
      	sql.text := replace(sql.text,':payrollitem','c.payrollitem IN ('+cklItemPayroll.Selecionados+')')
      else
      	sql.text := replace(sql.text,':payrollitem','');}

//      if (edCliente.ID<>0) or (cklItemPayroll.Selecionados <> '') then
      	Open;
      while not eof do begin
    		ID := fieldbyname('funcionario').AsInteger;
        with C_Favorecidos do begin
    			if not Locate('ID',id,[]) then begin
      			Append;
        		FieldByName('ID').AsInteger	 := ID;
        		FieldByName('Nome').AsString := Q_SQL.FieldByName('Nome').AsString;
{        		if TipoFav = 3 then begin
        			FieldByName('Cargo').AsString 	:= Q_SQL.FieldByName('Cargo').AsString;
              FieldByName('Cliente').AsString := Q_SQL.FieldByName('Cliente').AsString;
              FieldByName('PayrollItem').AsString := Q_SQL.FieldByName('DescPayrollItem').AsString;
              FieldByName('IDPayrollItem').AsInteger := Q_SQL.FieldByName('PayrollItem').AsInteger;
            end;}
     				if (dfTipoFav.LookupKeyValue>=1) and (dfTipoFav.LookupKeyValue<=3) then
       				FieldByName('Imagem').AsInteger := dfTipoFav.LookupKeyValue-1
     				else
       				FieldByName('Imagem').AsInteger := -1;
          end;
        end;
        Next;
      end;
    end;
end;

procedure TDlgEscolheFavorecidos.GridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var nIndex : integer;
begin
  inherited;
    if key = VK_DELETE then
    	C_Favorecidos.Delete;
end;

procedure TDlgEscolheFavorecidos.FormCreate(Sender: TObject);
begin
  inherited;
	C_Favorecidos.CreateDataSet;
end;

procedure TDlgEscolheFavorecidos.cklItemPayrollClick(Sender: TObject);
begin
{  if cklItemPayroll.Checked[cklItemPayroll.ItemIndex] then
		Pesquisar
  else begin
    with C_Favorecidos do begin
      DisableControls;
      First;
  		while not EOF do begin
      	if (not FieldByName('PayrollItem').IsNull) and
        	 (FieldByName('IDPayrollItem').AsString = cklItemPayroll.StringKeys[cklItemPayroll.Itemindex] ) then
          Delete
        else
          Next;
      end;
      EnableControls;
    end;
  end;}
  inherited;
end;

procedure TDlgEscolheFavorecidos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then
  	if ActiveControl is TTS_EditFavorecido then
    	TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

end.

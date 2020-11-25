unit Dlg_AdicionarCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TS_BitBtn, dxEdLib, TS_Edit, dxCntner,
  dxEditor, dxExEdtr, TS_ComboBox, TS_Label, ExtCtrls, teCtrls,
  TS_EffectsPanel, DBClient, ComCtrls, TS_PageControl, Menus, TS_PopupMenu,
  TS_Memo, TS_SpeedButton;

type
  TDlgAdicionarCampos = class(TForm)
    TS_Panel1: TTS_Panel;
    TS_Panel3: TTS_Panel;
    btConfirmar: TTS_BitBtn;
    btCancelar: TTS_BitBtn;
    pcTipo: TTS_PageControl;
    tsCampos: TTS_TabSheet;
    tsSubSelect: TTS_TabSheet;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    lbAliasCampo: TTS_Label;
    cmbTabelas: TTS_ComboBox;
    edCampo: TTS_Edit;
    edTituloCampo: TTS_Edit;
    edAliasCampo: TTS_Edit;
    TS_Label4: TTS_Label;
    mmSubSelect: TTS_Memo;
    ppmTabelas: TTS_PopupMenu;
    TS_Label7: TTS_Label;
    edAlias: TTS_Edit;
    TS_Label8: TTS_Label;
    edTitulo: TTS_Edit;
    TS_SpeedButton1: TTS_SpeedButton;
    pnAlterar: TTS_Panel;
    TS_Label6: TTS_Label;
    cmbAlterarCampo: TTS_ComboBox;
    btGerar: TTS_BitBtn;
    TS_SpeedButton2: TTS_SpeedButton;
    procedure btConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsCamposShow(Sender: TObject);
    procedure tsSubSelectShow(Sender: TObject);
    procedure TS_SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbAlterarCampoChange(Sender: TObject);
    procedure TS_Label1Click(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
  private
    function CampoExisteEmC_Consulta(sCampo: string): boolean;
    function CampoExisteEmSelectList(sCampo: string): boolean;
    function CampoExisteNaTabela(sCampo: string): boolean;
    function GetIndexTabelas(sCampo: string): integer;
    function Validacoes( bGerar : boolean = false ): boolean;
    { Private declarations }
  public
    { Public declarations }
    Consulta : TClientDataSet;
    slTabelaAdicional : TStringList;
    sSelectList, sCampoAdicional, sTituloAdicional, sTipoAdicional, sTabelasAdicionais : string;
    sReportTitle : string;
  end;

var
  DlgAdicionarCampos: TDlgAdicionarCampos;

implementation
uses funcoes, TDM_Projeto, Dlg_CriarRelacionamentos, Dlg_SelecionarCampos;

{$R *.dfm}

function TDlgAdicionarCampos.CampoExisteEmSelectList( sCampo : string ) : boolean;
var i : integer;
		sCampoSelect : string;
begin
	result := false;
	for i:=1 to ContaStrings(sSelectList,',') do begin
  	sCampoSelect := SeparaStrings(sSelectList,',',i);
    sCampoSelect := replace(sCampoSelect,Copy(sCampoSelect,1,pos('.',sCampoSelect)),'');
    if UpperCase(sCampoSelect) = UpperCase(sCampo) then begin
    	result := true;
      break;
    end;
  end;
end;

function TDlgAdicionarCampos.CampoExisteEmC_Consulta( sCampo : string ) : boolean;
var i : integer;
begin
	result := false;
  with Consulta do begin
		for i:=0 to Fields.Count-1 do begin
  		if UpperCase(Fields[i].FieldName) = UpperCase(sCampo) then begin
         result := true;
         break;
      end;
    end;
  end;
end;

function TDlgAdicionarCampos.CampoExisteNaTabela( sCampo : string ) : boolean;
var i : integer;
		slCampos : TStringList;
begin
  slCampos := TStringList.Create;
	result := false;
	with DMProject.Q_SQL do begin
  	close;
    sql.text := 'select * from '+SeparaStrings(cmbTabelas.Text,' ',1);
    getFieldNames( slCampos );
    for i:=0 to slCampos.Count-1 do begin
    	if UpperCase(slCampos[i]) = UpperCase(sCampo) then begin
      	result := true;
        break;
      end;
    end;
  end;
  slCampos.Free;
end;

function TDlgAdicionarCampos.Validacoes( bGerar : boolean = false ) : boolean;
begin
  result := false;
  if pcTipo.ActivePage = tsCampos then begin
		if cmbTabelas.Text = '' then begin
  		ShowMessage('Falta informar a Tabela.');
    	cmbTabelas.SetFocus;
    	Exit;
  	end;
  	if edCampo.Text = '' then begin
  		ShowMessage('Falta informar o nome do campo.');
    	edCampo.SetFocus;
    	Exit;
  	end;
		if edTituloCampo.Text = '' then begin
  		ShowMessage('Falta informar o título do campo.');
    	edTituloCampo.SetFocus;
    	Exit;
  	end;
    if (not bGerar) and (edAliasCampo.Text = '') and (CampoExisteEmC_Consulta(edCampo.Text)) then begin
  		ShowMessage('Este campo "'+edCampo.Text+'" já existe no relatório.'+#13+
                	'Adicione através da opção Adicionar/Remover Colunas...'+#13+
                	'Ou informe o nome do alias do campo.');
    	edCampo.SetFocus;
    	edCampo.SelectAll;
    	Exit;
  	end;
    if not ((pos('+',edcampo.Text)>0) or (pos('-',edcampo.Text)>0) or
    	 (pos('*',edcampo.Text)>0) or (pos('/',edcampo.Text)>0)) and
    	 (not CampoExisteNaTabela( edCampo.Text )) then begin
  		ShowMessage('Este nome de campo "'+edCampo.Text+'" não existe na tabela "'+cmbTabelas.Text+'".'+#13+
                	'Informe um campo que existe na tabela "'+cmbTabelas.Text+'".');
    	edCampo.SetFocus;
    	Exit;
  	end;
    if (((pos('+',edcampo.Text)>0) or (pos('-',edcampo.Text)>0) or
    	 (pos('*',edcampo.Text)>0) or (pos('/',edcampo.Text)>0))) and
    	 ( edAliasCampo.Text='' ) then begin
  		ShowMessage('Campos Calculados precisam ter um alias.'+#13+
                	'Informe o nome do Alias.');
    	edAliasCampo.SetFocus;
    	Exit;
  	end;
    if (not pnAlterar.Visible) and (CampoExisteEmSelectList(edCampo.Text)) and (edAliasCampo.Text<>'') then begin
  		ShowMessage('Este nome de campo "'+edCampo.Text+'" já existe.'+#13+
                	'Informe um outro nome no campo "Alias do Campo".');
    	edAliasCampo.SetFocus;
    	Exit;
  	end;
    if (not pnAlterar.Visible) and (edAliasCampo.Text<>'') and (CampoExisteEmC_Consulta(edAliasCampo.Text)) then begin
  		ShowMessage('Este nome de campo "'+edAliasCampo.Text+'" já existe.'+#13+
                	'Informe um outro nome no campo "Alias do Campo".');
    	edAliasCampo.SetFocus;
    	Exit;
  	end;
    if (edAliasCampo.Text<>'') and (CampoExisteEmSelectList(edAliasCampo.Text)) then begin
  		ShowMessage('Este nome de campo "'+edAliasCampo.Text+'" já existe.'+#13+
                	'Informe um outro nome no campo "Alias do Campo".');
    	edAliasCampo.SetFocus;
    	Exit;
  	end;
    edAliasCampo.Text := replace(edAliasCampo.Text,' ','');
    edCampo.Text := Trim(edCampo.Text);
  end else begin
  	if mmSubSelect.Lines.Text = '' then begin
      ShowMessage('Falta informar o comando SQL.');
    	mmSubSelect.SetFocus;
    	Exit;
    end;
    if edAlias.Text = '' then begin
      ShowMessage('Falta informar o nome do alias do SubSelect.');
    	mmSubSelect.SetFocus;
    	Exit;
    end;
		if edTitulo.Text = '' then begin
  		ShowMessage('Falta informar o título do campo.');
    	edTituloCampo.SetFocus;
    	Exit;
  	end;
    if pos(' as ',mmSubSelect.Lines.Text)>0 then begin
      ShowMessage('Não pode ser informado o alias no SubSelect.');
    	mmSubSelect.SetFocus;
    	Exit;
    end;
    if (not pnAlterar.Visible) and (CampoExisteEmC_Consulta(edAlias.Text)) then begin
  		ShowMessage('Este campo "'+edAlias.Text+'" já existe no relatório.'+#13+
                	'Adicione através da opção Adicionar/Remover Colunas...'+#13+
                	'Ou informe o nome do alias do campo.');
    	edAlias.SetFocus;
    	edAlias.SelectAll;
    	Exit;
  	end;
    if (not pnAlterar.Visible) and (CampoExisteEmSelectList(edAlias.Text)) then begin
  		ShowMessage('Este nome de campo "'+edAlias.Text+'" já existe.'+#13+
                	'Informe um outro nome no campo "Alias do Campo".');
    	edAlias.SetFocus;
    	Exit;
  	end;
  end;
  result := true;
end;

procedure TDlgAdicionarCampos.btConfirmarClick(Sender: TObject);
begin
  edCampo.Text := RetiraAcentos(edCampo.Text);
  edAlias.Text := RetiraAcentos(edAlias.Text);
  edAliasCampo.Text := RetiraAcentos(edAliasCampo.Text);
  edCampo.Text := replace(edCampo.Text,' ','');
  edAlias.Text := replace(edAlias.Text,' ','');
  edAliasCampo.Text := replace(edAliasCampo.Text,' ','');
	if not Validacoes then
  	Exit;
  ModalResult := mrOk;
end;

procedure TDlgAdicionarCampos.FormShow(Sender: TObject);
var MenuItem : TMenuItem;
		i : integer;
begin
  pcTipo.ActivePageIndex := 0;
  for i:=0 to cmbTabelas.Items.Count-1 do begin
    MenuItem := TMenuItem.Create(self);
    MenuItem.Caption := cmbTabelas.Items[i];
  	ppmTabelas.items.add( MenuItem );
  end;
  if pnAlterar.Visible then begin
		if pos('SELECT',UpperCase(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1)))>0 then begin
  		pcTipo.HideTab(0);
    	pcTipo.ShowTab(1);
  	end else begin
  		pcTipo.HideTab(1);
    	pcTipo.ShowTab(0);
  	end;
  end;

end;

procedure TDlgAdicionarCampos.tsCamposShow(Sender: TObject);
begin
	cmbTabelas.SetFocus;
end;

procedure TDlgAdicionarCampos.tsSubSelectShow(Sender: TObject);
begin
	mmSubSelect.SetFocus;
end;

procedure TDlgAdicionarCampos.TS_SpeedButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ppmTabelas.PopupFromCursorPos;
end;

function TDlgAdicionarCampos.GetIndexTabelas( sCampo : string ) : integer;
var i : integer;
begin
	for i:=0 to cmbTabelas.Items.Count-1 do begin
  	if UpperCase(SeparaStrings(cmbTabelas.Items[i],' ',2))= UpperCase(Copy(sCampo,1,pos('.',sCampo)-1)) then begin
    	result := i;
      break;
    end;
  end;
end;

procedure TDlgAdicionarCampos.cmbAlterarCampoChange(Sender: TObject);
begin
	if pos('SELECT',UpperCase(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1)))>0 then begin
    mmSubSelect.Lines.Text := SeparaStrings(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1),' as ',1);
    edAlias.Text 	:= SeparaStrings(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1),' as ',2);
    edTitulo.Text	:= SeparaStrings(sTituloAdicional,';',cmbAlterarCampo.ItemIndex+1);
    //cmbTipo.Text	:= SeparaStrings(sTipoAdicional,';',cmbAlterarCampo.ItemIndex+1);

  	pcTipo.HideTab(0);
    pcTipo.ShowTab(1);
  end else begin
    cmbTabelas.ItemIndex:= GetIndexTabelas(SeparaStrings(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1),' as ',1));
    edCampo.Text	:= SeparaStrings(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1),' as ',1);
    edCampo.Text  := Trim(Copy(edCampo.Text,pos('.',edCampo.Text)+1,500));
    edAliasCampo.Text	:= SeparaStrings(SeparaStrings(sCampoAdicional,';',cmbAlterarCampo.ItemIndex+1),' as ',2);
    edTituloCampo.Text	:= SeparaStrings(sTituloAdicional,';',cmbAlterarCampo.ItemIndex+1);
    //cmbTipoCampo.Text	:= SeparaStrings(sTipoAdicional,';',cmbAlterarCampo.ItemIndex+1);

  	pcTipo.HideTab(1);
    pcTipo.ShowTab(0);
  end;
end;

procedure TDlgAdicionarCampos.TS_Label1Click(Sender: TObject);
var sTabelasAdicionais : string;
		i : integer;
begin
	DlgCriarRelacionamentos := TDlgCriarRelacionamentos.Create(self);
  DlgCriarRelacionamentos.sNomeForm := Owner.name;
  with DlgCriarRelacionamentos do begin
    cmbRelaciona.Items := cmbTabelas.Items;
    slTabAdd := slTabelaAdicional;
  	if ShowModal = mrOk then begin
      for i:=0 to slTabAdd.Count-1 do
      	if SeparaStrings(slTabAdd[i],';',2)='*' then
        	if cmbTabelas.items.IndexOf(SeparaStrings(slTabAdd[i],';',1))<> -1 then
        		cmbTabelas.Items.Delete(cmbTabelas.items.IndexOf(SeparaStrings(slTabAdd[i],';',1)));
    	with DMProject.Q_SQL do begin
      	Close;
        Sql.Text := 'select tabelasadicionais from relatorios '+
        						'where Upper(nomeform) = :form';
        ParamByName('form').AsString := UpperCase(DlgAdicionarCampos.Owner.Name);
        Open;
        sTabelasAdicionais := Fields[0].AsString;
        Close;
        Sql.Text := 'update relatorios '+
        						'set tabelasadicionais = :tabela '+
                    'where Upper(nomeform) = :form';
        ParamByName('tabela').AsString 	:= iif(sTabelasAdicionais<>'',';','')+
        																	 cmbTipoRelacionamento.Text+' '+
                                           edNome.Text+' '+edAlias.Text+' on '+
                                           edAlias.Text+'.'+edChave.text+' = '+
                                           SeparaStrings(cmbRelaciona.Text,' ',2)+'.'+
                                           edCampo.Text;
        ParamByName('form').AsString 		:= UpperCase(DlgAdicionarCampos.Owner.Name);
        ExecSQL;
        DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
        cmbTabelas.Items.Add(edNome.Text+' '+edAlias.Text);
        cmbTabelas.ItemIndex := cmbTabelas.Items.Count;
      end;
    end else
      for i:=0 to slTabAdd.Count-1 do
      	if SeparaStrings(slTabAdd[i],';',2)='*' then
          if cmbTabelas.items.IndexOf(SeparaStrings(slTabAdd[i],';',1))<> -1 then
        		cmbTabelas.Items.Delete(cmbTabelas.items.IndexOf(SeparaStrings(slTabAdd[i],';',1)));
    Release;
  end;
end;

procedure TDlgAdicionarCampos.btGerarClick(Sender: TObject);
var slArquivo : TStringList;
		sSelect : string;
begin
	if not Validacoes( true ) then
  	Exit;
	slArquivo := TStringList.Create;
  with slArquivo do begin
  	Add('Acao='+iif(pnAlterar.Visible,'A','I'));
    if pnAlterar.Visible then
			Add('AlterarCampo='+cmbAlterarCampo.Text);
    Add('Tipo='+iif(pcTipo.ActivePage=tsCampos,'Campo','SubSelect'));
    sSelect := replace(mmSubSelect.lines.text,'#$D#$A',' ');
    Add('Tabela='+iif(pcTipo.ActivePage=tsCampos,cmbTabelas.Text,sSelect));
    Add('Campo='+iif(pcTipo.ActivePage=tsCampos,edCampo.Text,edAlias.Text));
    Add('Titulo='+iif(pcTipo.ActivePage=tsCampos,edTituloCampo.Text,edTitulo.Text));
    //Add('TipoDados='+iif(pcTipo.ActivePage=tsCampos,cmbTipoCampo.Text,cmbTipo.Text));
    Add('Alias='+iif(pcTipo.ActivePage=tsCampos,edAliasCampo.Text,edAlias.Text));
    Add('Report='+Owner.Name);
    Add('ReportTitle='+sReportTitle);
    with DMProject.DlgSalvar do begin
      Filter:= 'Arquivo Ini|*.ini';
    	Title := 'Salvar o arquivo em';
      DefaultExt := 'ini';
    	if Execute then
    		slArquivo.SaveToFile( FileName );
    end;
  	Free;
  end;
end;

procedure TDlgAdicionarCampos.TS_SpeedButton2Click(Sender: TObject);
begin
  if trim(cmbTabelas.Text) = '' then begin
  	ShowMessage('Falta informar a tabela');
    cmbTabelas.SetFocus;
    Exit;
  end;
	DlgSelecionarCampos := TDlgSelecionarCampos.Create(self);
  with DlgSelecionarCampos do begin
		with DMProject.Q_SQL do begin
  		close;
    	sql.text := 'select * from '+SeparaStrings(cmbTabelas.Text,' ',1);
    	getFieldNames( lbCampos.Items );
      if lbCampos.Items.Count > 0 then
      	lbCampos.ItemIndex := 0;
      if ShowModal = mrOk then begin
      	edCampo.Text := edCampo.Text + iif(edCampo.Text<>'',' ','') + lbCampos.Items[lbCampos.ItemIndex];
        edCampo.SetFocus;
      end;
    end;
    Release;
  end;
end;

end.

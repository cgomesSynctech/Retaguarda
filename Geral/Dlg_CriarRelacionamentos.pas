unit Dlg_CriarRelacionamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxEditor, dxExEdtr, dxEdLib, TS_ComboBox, dxCntner, TS_Edit,
  StdCtrls, TS_Label, Buttons, TS_BitBtn, Menus, TS_PopupMenu;

type
  TDlgCriarRelacionamentos = class(TForm)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    edNome: TTS_Edit;
    edAlias: TTS_Edit;
    edChave: TTS_Edit;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    edCampo: TTS_Edit;
    cmbRelaciona: TTS_ComboBox;
    btCancelar: TTS_BitBtn;
    btConfirmar: TTS_BitBtn;
    TS_Label6: TTS_Label;
    cmbTipoRelacionamento: TTS_ComboBox;
    TS_BitBtn1: TTS_BitBtn;
    ppmRemover: TTS_PopupMenu;
    procedure btConfirmarClick(Sender: TObject);
    procedure TS_BitBtn1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    function CampoExisteNaTabela(sCampo: string): boolean;
    procedure Remove(Sender: TObject);
    { Private declarations }
  public
  	slTabAdd : TStringList;
    sNomeForm : string;
    { Public declarations }
  end;

var
  DlgCriarRelacionamentos: TDlgCriarRelacionamentos;

implementation

uses TDM_Projeto, funcoes;

{$R *.dfm}

function TDlgCriarRelacionamentos.CampoExisteNaTabela( sCampo : string ) : boolean;
var i : integer;
		slCampos : TStringList;
begin
  slCampos := TStringList.Create;
	result := false;
	with DMProject.Q_SQL do begin
  	close;
    sql.text := 'select * from '+edNome.Text;
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

procedure TDlgCriarRelacionamentos.btConfirmarClick(Sender: TObject);
begin
	if edNome.Text = '' then begin
  	ShowMessage('Falta Informar o nome da tabela');
    edNome.SetFocus;
    Exit;
  end;
  if (not CampoExisteNaTabela( edChave.Text )) then begin
  		ShowMessage('Este nome de campo "'+edChave.Text+'" não existe na tabela "'+edNome.Text+'".'+#13+
                	'Informe um campo que existe na tabela "'+edNome.Text+'".');
    	edChave.SetFocus;
    	Exit;
 	end;
	if edAlias.Text = '' then begin
  	ShowMessage('Falta Informar o nome do Alias da tabela');
    edAlias.SetFocus;
    Exit;
  end;
	if edChave.Text = '' then begin
  	ShowMessage('Falta Informar a chave primária da tabela');
    edChave.SetFocus;
    Exit;
  end;
	if cmbRelaciona.Text = '' then begin
  	ShowMessage('Falta Informar a tabela de relacionamento com a tabela "'+edNome.Text+'".');
    cmbRelaciona.SetFocus;
    Exit;
  end;
	if edCampo.Text = '' then begin
  	ShowMessage('Falta Informar o campo da tabela "'+cmbRelaciona.Text+'".');
    edCampo.SetFocus;
    Exit;
  end;
	ModalResult := mrOk;
end;

procedure TDlgCriarRelacionamentos.TS_BitBtn1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	ppmRemover.PopupFromCursorPos;
end;

procedure TDlgCriarRelacionamentos.Remove( Sender : TObject );
var sTabelasAdicionais : string;
		i : integer;
begin
	sTabelasAdicionais := '';
	for i:=0 to slTabAdd.Count-1 do 
		sTabelasAdicionais := sTabelasAdicionais + slTabAdd[i] + ';';
  sTabelasAdicionais := Copy(sTabelasAdicionais,1,length(sTabelasAdicionais)-1);
	with DMProject.Q_SQL do begin
  	Close;
    Sql.Text := 'update relatorios '+
    						'set tabelasadicionais = :tabela '+
                'where upper(nomeform) = :form';
    ParamByName('Tabela').AsString:= DeleteString(sTabelasAdicionais,';',TMenuItem(Sender).Tag);
    ParamByName('Form').AsString 	:= UpperCase(sNomeForm);
    ExecSQL;
    Close;
		DMProject.DB_Projeto.DefaultTransaction.CommitRetaining;
    TMenuItem(Sender).Enabled := false;
    slTabAdd[TMenuItem(Sender).Tag-1] := slTabAdd[TMenuItem(Sender).Tag-1]+';*';
  end;
end;

procedure TDlgCriarRelacionamentos.FormShow(Sender: TObject);
var MenuItem : TMenuItem;
		i : integer;
begin
  for i:=0 to slTabAdd.Count-1 do begin
    if pos('*',slTabAdd[i])=0 then begin
    	MenuItem := TMenuItem.Create(self);
    	MenuItem.Caption := slTabAdd[i];
    	MenuItem.OnClick := Remove;
    	MenuItem.Tag		 := i+1;
  		ppmRemover.Items.Add( MenuItem );
    end;
  end;
end;

end.

unit Dlg_AlterarConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, IBCustomDataSet, IBQuery, DBCtrls,
  TS_DBLookupComboBox, StdCtrls, TS_Label, TS_LastDataObject, 
  DlgMsg, Menus, TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  TS_BitBtn, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, TS_LookupComboBox,
  Provider, DBClient, teCtrls, TS_EffectsPanel, dxEdLib,
  TS_PopupEdit, Dlg_PopupContas, BTOdeum, Placemnt;

type
  TDlgAlterarConta = class(TFrmModeloCadastros)
    lblTexto: TTS_Label;
    TS_Label1: TTS_Label;
    dbContaBanco: TTS_PopupEdit;
    C_ContasBcDS: TDataSource;
    lblConta: TTS_Label;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbContaBancoInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
  public
  	nConta : integer;
    { Public declarations }
  end;

var
  DlgAlterarConta: TDlgAlterarConta;

implementation

uses DM_Projeto, DM_Financeiro;

{$R *.DFM}

procedure TDlgAlterarConta.btGravarClick(Sender: TObject);
begin
  inherited;
	if dbContaBanco.LookupKeyValue = 0 then begin
  	DlgMsg.ShowMsg(516);
    ModalResult := mrNone;
    Exit;
  end;
	if dbContaBanco.LookupKeyValue = nConta then begin
  	DlgMsg.ShowMsg(482);
    ModalResult := mrNone;
    Exit;
  end;
  DMProjeto.SetParametrosForm( [DMFinanceiro.C_ContasBcConta.Value] );
  ModalResult := mrOk;
end;

procedure TDlgAlterarConta.FormShow(Sender: TObject);
begin
  inherited;
  DMFinanceiro.C_ContasBc.Open;
  dbContaBanco.LookupKeyValue := DMFinanceiro.C_ContasBcConta.AsInteger;
end;

procedure TDlgAlterarConta.dbContaBancoInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetEventos( TTS_PopupEdit(Sender) );
end;

procedure TDlgAlterarConta.FormActivate(Sender: TObject);
begin
  inherited;
	dbContaBanco.popupcontrol 	:= DlgPopup.pnPopup;
end;

procedure TDlgAlterarConta.FormCreate(Sender: TObject);
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, C_ContasBcDS, nil, false);
end;

end.


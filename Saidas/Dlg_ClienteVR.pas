unit Dlg_ClienteVR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBEditFavorecido, dxCntner, dxEditor, dxDBEdtr,
  TS_DBLookupTipoFav, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_ButtonEdit, TS_EditFavorecido, TS_Edit;

type
  TDlgClienteVR = class(TFrmModeloCadastros)
    cmbTipoFav: TTS_DBLookupTipoFav;
    lbCliente: TdxfLabel;
    dfFavorecido: TTS_EditFavorecido;
    dfSenha: TTS_Edit;
    dxfLabel1: TdxfLabel;
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure dfSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sSenha: string;
  public
    { Public declarations }
    Cliente : Integer;
    sCodigo, sCliente, sUF, sSituacao, sTipoEntrega, sObs, sCPF_CNPJ: string;
    cLimiteCredito: Currency;
    SenhaValida: Boolean;
  end;

var
  DlgClienteVR: TDlgClienteVR;

implementation
  uses DM_Projeto, DB;

{$R *.dfm}

procedure TDlgClienteVR.btGravarClick(Sender: TObject);
begin
  inherited;
  if dfFavorecido.ID = 0 then begin
    DlgMsg.ShowMsg(543);
    exit;
  end;
  SenhaValida := False;
  Cliente := dfFavorecido.ID;
  sCliente := DMProjeto.C_LocalizarFavNOME.AsString;
  sCodigo := DMProjeto.C_LocalizarFavCODIGO.AsString;
  sUF := DMProjeto.C_LocalizarFavUF.AsString;
  sSituacao := DMProjeto.C_LocalizarFavSITUACAO.AsString;
  sObs := DMProjeto.C_LocalizarFavOBS.AsString;
  sTipoEntrega := DMProjeto.C_LocalizarFavDescTipoEntrega.AsString;
  cLimiteCredito := DMProjeto.C_LocalizarFavLIMITECREDITO.AsCurrency;
  sCPF_CNPJ := DMProjeto.C_LocalizarFavCPF_CNPJ.AsString;
  ModalResult := mrOk;
  sSenha := DMProjeto.C_LocalizarFavSenha.AsString;

  if (sSenha = dfSenha.Text) Then
    SenhaValida := True;


end;

procedure TDlgClienteVR.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  Cliente := -1;
  SenhaValida := false;
  ModalResult := -1;
end;

procedure TDlgClienteVR.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  ActiveControl := dfSenha;
end;

procedure TDlgClienteVR.dfSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    btGravarClick(self);
end;

end.

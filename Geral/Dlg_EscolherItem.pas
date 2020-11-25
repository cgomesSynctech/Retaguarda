unit Dlg_EscolherItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TransEff, teTimed, teMasked,
  teDiagon, teForm, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_GroupBox, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditItem;

type
  TDlgEscolherItem = class(TFrmModeloCadastros)
    dfItem: TTS_EditItem;
    TS_Label1: TTS_Label;
    TS_GroupBox1: TTS_GroupBox;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    lbDesc: TTS_Label;
    lbDescCompra: TTS_Label;
    lbCod: TTS_Label;
    lbRef: TTS_Label;
    lbUni: TTS_Label;
    procedure btLimparClick(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
    nItem : Integer;

  public
    { Public declarations }
  end;

var
  DlgEscolherItem: TDlgEscolherItem;

implementation
  uses DM_Projeto;

{$R *.DFM}

procedure TDlgEscolherItem.btLimparClick(Sender: TObject);
begin
  inherited;
  dfItem.Clear;
  lbDesc.Caption := '';
  lbCod.Caption := '';
  lbRef.Caption := '';
  lbUni.Caption := '';
  lbDescCompra.Caption := '';

  nItem := 0;
end;

procedure TDlgEscolherItem.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  lbDesc.Caption := DMProjeto.C_LocalizarItensDescricao.Value;
  lbDescCompra.Caption := DMProjeto.C_LocalizarItensDescricaoCompra.Value;
  lbCod.Caption := DMProjeto.C_LocalizarItensCodigo.Value;
  lbRef.Caption := DMProjeto.C_LocalizarItensReferencia.Value;
  lbUni.Caption := DMProjeto.C_LocalizarItensUnidade.Value;

  dfItem.Text := lbDesc.Caption;

  nItem := DMProjeto.C_LocalizarItensITEM.Value;

end;

procedure TDlgEscolherItem.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := nItem;
end;

procedure TDlgEscolherItem.FormShow(Sender: TObject);
begin
  inherited;
  nItem := 0;
end;

procedure TDlgEscolherItem.btFecharCadastroClick(Sender: TObject);
begin
  ModalResult := -1;
end;

end.

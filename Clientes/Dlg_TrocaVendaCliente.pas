unit Dlg_TrocaVendaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib,
  TS_ButtonEdit, TS_EditFavorecido, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, Db, IBCustomDataSet, IBQuery, Placemnt, BTOdeum,
  TS_Edit;

type
  TDlgTrocaVendaCliente = class(TFrmModeloCadastros)
    dfFavorecidoNovo: TTS_EditFavorecido;
    cmbTipoFavNovo: TTS_DBLookupTipoFav;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    Q_Aux: TIBQuery;
    TS_Numero: TTS_Edit;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgTrocaVendaCliente: TDlgTrocaVendaCliente;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDlgTrocaVendaCliente.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.QtdParametrosForm > 0 then
    dfFavorecidoNovo.ID := DMProjeto.GetParametrosForm(0);
end;

procedure TDlgTrocaVendaCliente.btGravarClick(Sender: TObject);
begin
  inherited;
  if (dfFavorecidoNovo.ID <= 0) then begin
    DlgMsg.ShowMsg(6000);
    exit;
  end;
  Q_Aux.close;
  Q_Aux.SQL.text := 'update saidas set favorecido = :nFavNovo where numero = :numero';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].AsString := TS_Numero.Text ;
  Q_Aux.execsql;

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  DlgMsg.ShowMsg(6001);
end;

end.

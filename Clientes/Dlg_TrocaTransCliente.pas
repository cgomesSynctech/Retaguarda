unit Dlg_TrocaTransCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib,
  TS_ButtonEdit, TS_EditFavorecido, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, Db, IBCustomDataSet, IBQuery, Placemnt, BTOdeum;

type
  TDlgTrocaTransCliente = class(TFrmModeloCadastros)
    cmbTipoFavAtual: TTS_DBLookupTipoFav;
    dfFavorecidoAtual: TTS_EditFavorecido;
    dfFavorecidoNovo: TTS_EditFavorecido;
    cmbTipoFavNovo: TTS_DBLookupTipoFav;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    Q_Aux: TIBQuery;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgTrocaTransCliente: TDlgTrocaTransCliente;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDlgTrocaTransCliente.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.QtdParametrosForm > 0 then
    dfFavorecidoAtual.ID := DMProjeto.GetParametrosForm(0);
end;

procedure TDlgTrocaTransCliente.btGravarClick(Sender: TObject);
begin
  inherited;
  if (dfFavorecidoNovo.ID <= 0) or (dfFavorecidoAtual.ID <= 0) then begin
    DlgMsg.ShowMsg(6000);
    exit;
  end;
  Q_Aux.close;
  Q_Aux.SQL.text := 'update saidas set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
//  Q_Aux.close;
//  Q_Aux.SQL.text := 'update orcamentos set favorecido = :nFavNovo where favorecido = :nFavAtual';
//  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
//  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
//  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update entradas set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update entradasitens set clienteref = :nFavNovo where clienteref = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update lancamentositens set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update comissoes set funcionario = :nFavNovo where funcionario = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update comissoesdev set funcionario = :nFavNovo where funcionario = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update comissoes_sobrefunc set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update comissoes_sobrefunc set vendedor_vendas = :nFavNovo where vendedor_vendas = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update compromissos set cliente = :nFavNovo where cliente = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update contasoperacao set clienteref = :nFavNovo where clienteref = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update contratosfav set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update depositos set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update duplicatasapagar set fornecedor = :nFavNovo where fornecedor = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update funcspayitens set funcionario = :nFavNovo where funcionario = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update lembretesclientes set cliente = :nFavNovo where cliente = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update ocorrencias set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update operacoesfinanceiras set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update operacoesfinanceirasdet set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update payrolls set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update payrollsfunc set funcionario = :nFavNovo where funcionario = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
//  Q_Aux.close;
//  Q_Aux.SQL.text := 'update pedidos set favorecido = :nFavNovo where favorecido = :nFavAtual';
//  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
//  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
//  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update producoeschavecli set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update producoeschavefunc set funcionario = :nFavNovo where funcionario = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update producoesfunc set funcionario = :nFavNovo where funcionario = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update producoesfunc set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update remessas set cliente = :nFavNovo where cliente = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update retiradaschequescaixa set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update retiradasdoc set favorecidodoc = :nFavNovo where favorecidodoc = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update titulosareceber set cliente = :nFavNovo where cliente = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update transacoes set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;
  ///////
  Q_Aux.close;
  Q_Aux.SQL.text := 'update transacoescreditos set favorecido = :nFavNovo where favorecido = :nFavAtual';
  Q_Aux.params[0].asinteger := dfFavorecidoNovo.ID;
  Q_Aux.params[1].asinteger := dfFavorecidoAtual.ID;
  Q_Aux.execsql;

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  DlgMsg.ShowMsg(6001);
end;

end.

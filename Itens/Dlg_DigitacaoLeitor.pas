unit Dlg_DigitacaoLeitor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms,
  Db, dxTL, dxDBCtrl, dxDBGrid, DBClient, Provider, IBCustomDataSet,
  IBQuery, dxCntner, TS_QDBGrid, dxEditor, dxExEdtr, dxEdLib,
  TS_ButtonEdit, TS_EditItem, TS_Edit, BTOdeum, Placemnt;

type
  TDlgDigitacaoLeitor = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    dbgContagens: TTS_QDBGrid;
    C_ItensDS: TDataSource;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    dbgContagensITEM: TdxDBGridMaskColumn;
    dbgContagensCODIGO: TdxDBGridMaskColumn;
    dbgContagensREFERENCIA: TdxDBGridMaskColumn;
    dbgContagensDESCRICAO: TdxDBGridMaskColumn;
    dbgContagensUNIDADE: TdxDBGridMaskColumn;
    C_ItensQTDE: TBCDField;
    dbgContagensQTDE: TdxDBGridCalcColumn;
    dfCodigo: TTS_EditItem;
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dfCodigoSelecionou(Sender: TObject);
    procedure dfCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure dfCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    C_ItensSelec: TClientDataSet;
  public
    Constructor Create(AOwner: TComponent; C_ItensSel: TClientDataSet);
  end;

var
  DlgDigitacaoLeitor: TDlgDigitacaoLeitor;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgDigitacaoLeitor.Create;
begin
  C_ItensSelec := C_ItensSel;
  inherited Create(AOwner);
end;

procedure TDlgDigitacaoLeitor.FormCreate(Sender: TObject);
begin
  inherited;
  C_Itens.open;
  ShowModal;
end;

procedure TDlgDigitacaoLeitor.btGravarClick(Sender: TObject);
var nTipo: integer;
begin
  inherited;
  nTipo := DlgMsg.ShowMsg(6025);
  C_Itens.disablecontrols;
  C_ItensSelec.disablecontrols;
  C_Itens.first;
  while not C_Itens.eof do begin
    if C_ItensSelec.Locate('item',C_ItensItem.value,[]) then begin
      C_ItensSelec.edit;
      if nTipo = 100 then
        C_ItensSelec.FieldByName('Quantidade').value := C_ItensQtde.value
      else
        C_ItensSelec.FieldByName('Quantidade').value := C_ItensSelec.FieldByName('Quantidade').value + C_ItensQtde.value;
      C_ItensSelec.post;
{      C_ItensSelec.Append;
      C_ItensSelecItem.value := C_ItensItem.value;
      C_ItensSelecCodigo.value := C_ItensCodigo.value;
      C_ItensSelecReferencia.value := C_ItensReferencia.value;
      C_ItensSelecDescricao.value := C_ItensDescricao.value;
      C_ItensSelecUnidade.value := C_ItensUnidade.value;
      C_ItensSelecQuantidade.value := C_ItensQtde.value;}
    end;
    C_Itens.next;
  end;
  C_ItensSelec.first;
  C_ItensSelec.enablecontrols;
  close;
end;


procedure TDlgDigitacaoLeitor.dfCodigoSelecionou(Sender: TObject);
var nID: integer;
begin
  inherited;
  nID := dfCodigo.ID;
  if not C_Itens.locate('item',nID,[]) then begin
    C_Itens.Append;
    C_ItensItem.value := nID;
    C_ItensCodigo.value := DMProjeto.C_LocalizarItens.FieldByName('codigo').asstring;
    C_ItensDescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').asstring;
    C_ItensReferencia.value := DMProjeto.C_LocalizarItens.FieldByName('referencia').asstring;
    C_ItensUnidade.value := DMProjeto.C_LocalizarItens.FieldByName('unidade').asstring;
    C_ItensQtde.value := 1;
    C_Itens.post;
  end
  else begin
    C_Itens.edit;
    C_ItensQtde.value := C_ItensQtde.value + 1;
    C_Itens.post;
  end;
  dfCodigo.text := '';
end;

procedure TDlgDigitacaoLeitor.dfCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key = Char(119)) then
    inherited;
end;

procedure TDlgDigitacaoLeitor.dfCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if not (Key = VK_F7) Then
    inherited;
end;

end.

unit Dlg_DigitacaoItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, StdCtrls, TS_Label, TS_LastDataObject, DlgMsg,
  Menus, TS_PopupMenu, Buttons, TS_BitBtn, Mask, DBCtrls, TS_DBEdit,
  TS_DBEditItem, ExtCtrls, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_DBEditNumber, dxExEdtr,
  dxEdLib, dxDBELib, dxCntner, dxEditor, TS_DBButtonEdit, TransEff,
  teTimed, teMasked, teDiagon, teForm;

type
  TDlgDigitacaoItens = class(TDlgModal)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dfItem: TTS_DBEditItem;
    dfDescricao: TTS_DBEditItem;
    Bevel1: TBevel;
    Q_LocalizaItens: TIBQuery;
    C_LocalizaItensDS: TDataSource;
    Q_LocalizaItensProvider: TDataSetProvider;
    C_LocalizaItens: TClientDataSet;
    C_LocalizaItensITEM: TIntegerField;
    C_LocalizaItensDESCRICAO: TStringField;
    C_LocalizaItensCODIGO: TStringField;
    TS_Label4: TTS_Label;
    dfQuantidade: TTS_DBEditNumber;
    C_LocalizaItensQuantidade: TIBBCDField;
    procedure FormShow(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure dfQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dfQuantidadeExit(Sender: TObject);
    procedure dfItemKeyPress(Sender: TObject; var Key: Char);
  private
    nBalancoFicha: integer;
    C_ItensSelec: TClientDataSet;
  public
    Constructor Create(AOwner: TComponent; C_ItensSel: TClientDataSet);
  end;

var
  DlgDigitacaoItens: TDlgDigitacaoItens;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgDigitacaoItens.Create;
begin
  C_ItensSelec := C_ItensSel;
  inherited Create(AOwner);
end;

procedure TDlgDigitacaoItens.FormShow(Sender: TObject);
begin
  inherited;
  C_LocalizaItens.open;
end;

procedure TDlgDigitacaoItens.TS_BitBtn1Click(Sender: TObject);
var bLocate: boolean;
    nBalancoFichaItem: integer;
begin
  inherited;
  if not C_LocalizaItensItem.IsNull then begin
    if C_LocalizaItens.State in [dsEdit,dsInsert] then
      C_LocalizaItens.post;

    if C_LocalizaItensItem.IsNull then begin
      if C_LocalizaItensCodigo.value <> '' then
        bLocate := C_ItensSelec.locate('codigo',C_LocalizaItensCodigo.value,[loPartialKey,loCaseInsensitive])
      else
        bLocate := C_ItensSelec.locate('descricao',C_LocalizaItensdescricao.value,[loPartialKey,loCaseInsensitive]);
    end
    else begin
      bLocate := C_ItensSelec.locate('item',C_LocalizaItensItem.value,[]);
    end;
    if not bLocate then begin
      nBalancoFichaItem := DMProjeto.NextID('BalancoFichasItens');
      DMProjeto.Q_SQL.close;
      DMProjeto.Q_SQL.SQL.text := 'insert into balancofichasitens(balancofichaitem,balancoficha,item) '+
      'values (:balancofichaitem,:balancoficha,:item)';
      DMProjeto.Q_SQL.ParamByName('balancofichaitem').asinteger := nBalancoFichaItem;
      DMProjeto.Q_SQL.ParamByName('balancoficha').asinteger := nBalancoFicha;
      DMProjeto.Q_SQL.ParamByName('item').asinteger := C_LocalizaItensItem.value;
      DMProjeto.Q_SQL.ExecSQL;

      C_ItensSelec.Append;
      C_ItensSelec.FieldByName('Item').asinteger := C_LocalizaItensItem.value;
      C_ItensSelec.FieldByName('Codigo').asstring := C_LocalizaItensCodigo.value;
      C_ItensSelec.FieldByName('Descricao').asstring := C_LocalizaItensDescricao.value;
      C_ItensSelec.FieldByName('Quantidade').AsFloat := C_LocalizaItensQuantidade.value;
      C_ItensSelec.FieldByName('balancofichaitem').asinteger := nBalancoFichaItem;
      C_ItensSelec.FieldByName('balancoficha').asinteger := nBalancoFicha;
      C_ItensSelec.post;
    end
    else begin
      C_ItensSelec.Edit;
      C_ItensSelec.FieldByName('Quantidade').AsFloat := C_LocalizaItensQuantidade.value;
      C_ItensSelec.post;
    end;
    C_LocalizaItens.close;
    C_LocalizaItens.open;
    ActiveControl := dfItem;
  end;
end;

procedure TDlgDigitacaoItens.FormCreate(Sender: TObject);
begin
  inherited;
  nBalancoFicha := C_ItensSelec.FieldByName('BalancoFicha').asinteger;
  ShowModal;
end;

procedure TDlgDigitacaoItens.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  if not C_LocalizaItensItem.IsNull then begin
    C_LocalizaItensQuantidade.value := 1;
    ActiveControl := dfQuantidade;
    dfQuantidade.SelectAll;
  end;
end;

procedure TDlgDigitacaoItens.dfQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) and (not C_LocalizaItensItem.IsNull) then
    TS_BitBtn1Click(self);
end;

procedure TDlgDigitacaoItens.dfQuantidadeExit(Sender: TObject);
begin
  inherited;
  if C_LocalizaItens.Active and (not C_LocalizaItensItem.IsNull) then
    TS_BitBtn1Click(self);
end;

procedure TDlgDigitacaoItens.dfItemKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) and (C_LocalizaItensItem.IsNull) and (dfItem.text = '') then
    ActiveControl := dfDescricao
end;

end.

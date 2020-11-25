unit Dlg_LocalizarItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, StdCtrls, TS_Label, TS_LastDataObject, vg2PropStore, DlgMsg,
  Menus, TS_PopupMenu, Buttons, TS_BitBtn, Mask, DBCtrls, TS_DBEdit,
  TS_DBEditItem, ExtCtrls, DBClient, Provider, Db, IBCustomDataSet, IBQuery;

type
  TDlgLocalizarItem = class(TDlgModal)
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
    procedure FormShow(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    C_ItensSelec: TClientDataSet;
  public
    Constructor Create(AOwner: TComponent; C_ItensSel: TClientDataSet);
  end;

var
  DlgLocalizarItem: TDlgLocalizarItem;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgLocalizarItem.Create;
begin
  C_ItensSelec := C_ItensSel;
  inherited Create(AOwner);
end;

procedure TDlgLocalizarItem.FormShow(Sender: TObject);
begin
  inherited;
  C_LocalizaItens.open;
end;

procedure TDlgLocalizarItem.TS_BitBtn1Click(Sender: TObject);
var bLocate: boolean;
begin
  inherited;
  if C_LocalizaItensItem.IsNull then begin
    if C_LocalizaItensCodigo.value <> '' then
      bLocate := C_ItensSelec.locate('codigo',C_LocalizaItensCodigo.value,[loPartialKey,loCaseInsensitive])
    else
      bLocate := C_ItensSelec.locate('descricao',C_LocalizaItensdescricao.value,[loPartialKey,loCaseInsensitive]);
  end
  else begin
    bLocate := C_ItensSelec.locate('item',C_LocalizaItensItem.value,[]);
  end;
  if not bLocate then
    DlgMsg.ShowMsg(1010);
end;

procedure TDlgLocalizarItem.FormCreate(Sender: TObject);
begin
  inherited;
  ShowModal;
end;

end.

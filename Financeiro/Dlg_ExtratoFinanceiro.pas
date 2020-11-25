unit Dlg_ExtratoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, DBCtrls, Buttons, ExtCtrls, StdCtrls, DlgMsg, Menus,
  TS_PopupMenu, TS_BitBtn, Grids, DBGrids, Db, DBTables, Provider, DBClient,
  IBCustomDataSet, IBQuery, TS_DBGrid, TS_DBLookupComboBox, TS_Label,
  TS_DBText, TS_CDBGrid, TS_Shape, TS_LastDataObject, vg2PropStore,
  FRM_MODELOCADASTROS, TS_Bevel, TS_SpeedButton, TS_Panel, IBDatabase,
  dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, TS_EditFavorecido,
  TS_DBLookupTipoFav, Animate, GIFCtrl, ComCtrls, dxCntner;

type
  TDlgExtratoFinanceiro = class(TFrmModeloCadastros)
    gridInvoices: TdxDBGrid;
    C_InvoicesDS: TDataSource;
    C_Invoices: TClientDataSet;
    Q_InvoicesProvider: TDataSetProvider;
    Q_Invoices: TIBQuery;
    pnCabecalho: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    RxGIFAnimator1: TRxGIFAnimator;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    anProcessando: TAnimate;
    C_InvoicesID: TIntegerField;
    C_InvoicesFAVORECIDO: TStringField;
    C_InvoicesDATA: TDateField;
    C_InvoicesVALOR: TBCDField;
    C_InvoicesPARCELA: TIntegerField;
    C_InvoicesVENCIMENTO: TDateField;
    C_InvoicesSTATUS: TStringField;
    C_InvoicesNOTAFISCAL: TStringField;
    gridInvoicesDATA: TdxDBGridDateColumn;
    gridInvoicesVALOR: TdxDBGridMaskColumn;
    gridInvoicesPARCELA: TdxDBGridMaskColumn;
    gridInvoicesVENCIMENTO: TdxDBGridDateColumn;
    gridInvoicesSTATUS: TdxDBGridMaskColumn;
    gridInvoicesNOTAFISCAL: TdxDBGridMaskColumn;
    btColunas: TTS_SpeedButton;
    ppmGrupo: TTS_PopupMenu;
    mGrupo: TMenuItem;
    C_InvoicesTIPOFAVORECIDO: TIntegerField;
    procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btColunasClick(Sender: TObject);
    procedure mGrupoClick(Sender: TObject);
  private
    FavorecidoAtual: integer;
    procedure Processando(Flag: boolean; controle: TControl);
    procedure AbreInvoices(Favorecido: integer);
  end;

var
  DlgExtratoFinanceiro: TDlgExtratoFinanceiro;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgExtratoFinanceiro.edFavorecidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then begin
    if (FavorecidoAtual<>edFavorecido.getID) then begin
      AbreInvoices(edFavorecido.getID);
    end;
  end;
end;

procedure TDlgExtratoFinanceiro.AbreInvoices(Favorecido: integer);
begin
  try
    Processando(true, gridInvoices);
    FavorecidoAtual := Favorecido;
    with C_Invoices do begin
      Close;
      Params.ParamByName('Favorecido').AsInteger := FavorecidoAtual;
      Open;
    end;
  finally
    Processando(false, gridInvoices);
  end;
end;

procedure TDlgExtratoFinanceiro.Processando(Flag: boolean; controle: TControl);
begin
  anProcessando.Active := Flag;
  anProcessando.Visible := Flag;
  controle.Visible := not Flag;
  if Flag then begin
    anProcessando.BringToFront;
    controle.SendToBack;
  end else begin
    anProcessando.SendToBack;
    controle.BringToFront;
  end;
end;

procedure TDlgExtratoFinanceiro.FormShow(Sender: TObject);
var i:integer;
begin
  inherited;
  if (DMProjeto.ExisteParametrosForm) then begin
    FavorecidoAtual := DMProjeto.GetParametrosForm(0);
    edFavorecido.Text := DMProjeto.GetParametrosForm(1);
    dfTipoFav.KeyValue := DMProjeto.GetParametrosForm(3);
    AbreInvoices( FavorecidoAtual );
    if DMProjeto.GetParametrosForm(2)<>'' then begin
      for i:=0 to gridInvoices.Count-1 do begin
        if gridInvoices.Items[i].Values[0] = DMProjeto.GetParametrosForm(2) then begin
          gridInvoices.Items[i].Expand(false);
          break;
        end;
      end; //for
    end; //if
    DMProjeto.LimparParametrosForm;
  end;
end;

procedure TDlgExtratoFinanceiro.btColunasClick(Sender: TObject);
begin
  inherited;
  gridInvoices.ColumnsCustomizing;
end;

procedure TDlgExtratoFinanceiro.mGrupoClick(Sender: TObject);
begin
  inherited;
  mGrupo.Checked := not mGrupo.Checked;
  gridInvoices.ShowGroupPanel := mGrupo.Checked;
end;

end.

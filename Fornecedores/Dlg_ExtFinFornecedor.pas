unit Dlg_ExtFinFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, DBCtrls, Buttons, ExtCtrls, StdCtrls, DlgMsg, Menus,
  TS_BitBtn, Db, DBTables, Provider, DBClient,
  IBCustomDataSet, IBQuery, TS_DBLookupComboBox, TS_Label,
  TS_DBText, TS_Shape, TS_LastDataObject,
  FRM_MODELOCADASTROS, TS_Bevel, TS_SpeedButton, IBDatabase,
  dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, TS_EditFavorecido,
  TS_DBLookupTipoFav, ComCtrls, dxCntner, dxExEdtr,
  dxEdLib, TS_ButtonEdit, dxEditor, dxDBEdtr, dxDBELib, FormsComponent,
  TS_Image, dxfLabel, TS_MaxPanel, TS_PopupMenu, teCtrls,
  TS_EffectsPanel, TS_QDBGrid;

type
  TDlgExtFinFornecedor = class(TFrmModeloCadastros)
    ppmGrupo: TTS_PopupMenu;
    mGrupo: TMenuItem;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    gridInvoices: TTS_QDBGrid;
    gridInvoicesPARCELA: TdxDBGridMaskColumn;
    gridInvoicesDATA: TdxDBGridDateColumn;
    gridInvoicesVALOR: TdxDBGridMaskColumn;
    gridInvoicesVENCIMENTO: TdxDBGridDateColumn;
    gridInvoicesNOTAFISCAL: TdxDBGridMaskColumn;
    gridInvoicesSTATUS: TdxDBGridMaskColumn;
    gridInvoicesSALDO: TdxDBGridColumn;
    gridInvoicesCODSTATUS: TdxDBGridColumn;
    C_InvoicesDS: TDataSource;
    C_Invoices: TClientDataSet;
    C_InvoicesID: TIntegerField;
    C_InvoicesFAVORECIDO: TStringField;
    C_InvoicesDATA: TDateField;
    C_InvoicesVALOR: TBCDField;
    C_InvoicesPARCELA: TIntegerField;
    C_InvoicesVENCIMENTO: TDateField;
    C_InvoicesSTATUS: TStringField;
    C_InvoicesNOTAFISCAL: TStringField;
    C_InvoicesSALDO: TBCDField;
    C_InvoicesTIPOFAVORECIDO: TIntegerField;
    C_InvoicesCODSTATUS: TIntegerField;
    Q_InvoicesProvider: TDataSetProvider;
    Q_Invoices: TIBQuery;
    procedure mGrupoClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure gridInvoicesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
    procedure gridInvoicesDblClick(Sender: TObject);
  private
    FavorecidoAtual: integer;
    procedure Processando(Flag: boolean; controle: TControl);
    procedure AbreInvoices(Favorecido: integer);
  end;

var
  DlgExtFinFornecedor: TDlgExtFinFornecedor;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgExtFinFornecedor.AbreInvoices(Favorecido: integer);
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

procedure TDlgExtFinFornecedor.Processando(Flag: boolean; controle: TControl);
begin
  controle.Visible := not Flag;
  if Flag then begin
    controle.SendToBack;
  end else begin
    controle.BringToFront;
  end;
end;

procedure TDlgExtFinFornecedor.mGrupoClick(Sender: TObject);
begin
  inherited;
  mGrupo.Checked := not mGrupo.Checked;
  gridInvoices.ShowGroupPanel := mGrupo.Checked;
end;

procedure TDlgExtFinFornecedor.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
var i:integer;
begin
  inherited;
  FavorecidoAtual := DMProjeto.GetParametrosForm(0);
  edFavorecido.Text := DMProjeto.GetParametrosForm(1);
  dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(3);
  AbreInvoices( FavorecidoAtual );
  if DMProjeto.GetParametrosForm(2)<>'' then begin
    for i:=0 to gridInvoices.Count-1 do begin
      if gridInvoices.Items[i].Values[0] = DMProjeto.GetParametrosForm(2) then begin
        gridInvoices.Items[i].Expand(false);
        break;
      end;
    end; //for
  end; //if
end;

procedure TDlgExtFinFornecedor.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  if (FavorecidoAtual<>edFavorecido.getID) then begin
    AbreInvoices(edFavorecido.getID);
  end;
end;

procedure TDlgExtFinFornecedor.gridInvoicesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if ANode.HasChildren then begin
    // Liquidado
    if gridInvoices.GetFirstChildValue(TdxDBGridNode(ANode),'CODSTATUS')>=50 then begin
      AFont.Color := clBlue;
    end else
    // Em Aberto
    if gridInvoices.GetFirstChildValue(TdxDBGridNode(ANode),'CODSTATUS')=1 then begin
      AFont.Color := clNavy;
    end else
    // Vencido
    if gridInvoices.GetFirstChildValue(TdxDBGridNode(ANode),'CODSTATUS')=2 then begin
      AFont.Color := clYellow;
    end else
    // Atrasado
    if gridInvoices.GetFirstChildValue(TdxDBGridNode(ANode),'CODSTATUS')=3 then begin
      AFont.Color := clRed;
    end else begin
    // O "Resto"
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TDlgExtFinFornecedor.gridInvoicesDblClick(Sender: TObject);
begin
  inherited;
  if gridInvoices.FocusedNode<>nil then begin
    DMProjeto.SetParametrosForm([gridInvoices.GetFieldValue(gridInvoices.FocusedNode,'ID',0)]);
    DMProjeto.CriarForm('FrmInvoices',Self,True);
  end;
end;

end.

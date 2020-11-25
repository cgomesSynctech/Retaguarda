unit Dlg_ExtratoFinanceiro;

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
  TS_EffectsPanel, TS_QDBGrid, Placemnt, BTOdeum;

type
  TDlgExtratoFinanceiro = class(TFrmModeloCadastros)
    gridInvoices: TTS_QDBGrid;
    C_InvoicesDS: TDataSource;
    C_Invoices: TClientDataSet;
    Q_InvoicesProvider: TDataSetProvider;
    Q_Invoices: TIBQuery;
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
    C_InvoicesTIPOFAVORECIDO: TIntegerField;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_InvoicesSALDO: TBCDField;
    gridInvoicesSALDO: TdxDBGridColumn;
    C_InvoicesCODSTATUS: TIntegerField;
    gridInvoicesCODSTATUS: TdxDBGridColumn;
    ppmGrid: TTS_PopupMenu;
    C_InvoicesVENDA: TIntegerField;
    gridInvoicesVENDA: TdxDBGridColumn;
    gridInvoicesID: TdxDBGridColumn;
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridInvoicesDblClick(Sender: TObject);
    procedure gridInvoicesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure edFavorecidoSelecionou(Sender: TObject);
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
//  anProcessando.Active := Flag;
//  anProcessando.Visible := Flag;
  controle.Visible := not Flag;
  if Flag then begin
//    anProcessando.BringToFront;
    controle.SendToBack;
  end else begin
//    anProcessando.SendToBack;
    controle.BringToFront;
  end;
end;

procedure TDlgExtratoFinanceiro.FormsComponentBeforeLoadKey(
  Sendet: TObject; var Where: String);
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

procedure TDlgExtratoFinanceiro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//
end;

procedure TDlgExtratoFinanceiro.gridInvoicesDblClick(Sender: TObject);
var nIDInvoice: integer;
begin
  inherited;
  if gridInvoices.FocusedNode<>nil then begin
    // Invoice
    if gridInvoices.GetFieldValue(gridInvoices.FocusedNode,'VENDA',0)>0 then begin
      nIDInvoice := gridInvoices.GetFieldValue(gridInvoices.FocusedNode,'VENDA',0);
      DMProjeto.SetParametrosForm([nIDInvoice]);
      DMProjeto.CriarForm('FrmInvoices',Self,True);
  // Parcela
    end else begin
      nIDInvoice := gridInvoices.GetFieldValue(gridInvoices.FocusedNode,'ID',0);
      DMProjeto.SetParametrosForm([nIDInvoice]);
      DMProjeto.CriarForm('FrmA_Receber',Self,True);
    end;
  end;
end;

procedure TDlgExtratoFinanceiro.gridInvoicesCustomDrawCell(Sender: TObject;
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
      AFont.Color := $000080FF;
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

procedure TDlgExtratoFinanceiro.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  if (FavorecidoAtual<>edFavorecido.getID) then begin
    AbreInvoices(edFavorecido.getID);
  end;
end;

end.

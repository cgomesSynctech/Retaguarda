unit Frm_UltimasEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, DB, DBClient, Provider,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxDBTLCl, dxGrClms;

type
  TFrmUltimasEntradas = class(TFrmModeloCadastros)
    dbgEntradas: TTS_QDBGrid;
    Splitter1: TSplitter;
    dbgItens: TTS_QDBGrid;
    Q_Entradas: TIBQuery;
    C_EntradasDS: TDataSource;
    P_Entradas: TDataSetProvider;
    C_Entradas: TClientDataSet;
    C_EntradasNUMERO: TStringField;
    C_EntradasNOME: TStringField;
    C_EntradasDATA: TDateField;
    C_ItensDS: TDataSource;
    C_Itens: TClientDataSet;
    Q_MasterDS: TDataSource;
    Q_Itens: TIBQuery;
    C_EntradasENTRADA: TIntegerField;
    C_EntradasQ_Itens: TDataSetField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensPRECO: TFloatField;
    dbgEntradasNUMERO: TdxDBGridMaskColumn;
    dbgEntradasNOME: TdxDBGridMaskColumn;
    dbgEntradasDATA: TdxDBGridDateColumn;
    dbgEntradasENTRADA: TdxDBGridMaskColumn;
    dbgEntradasQ_Itens: TdxDBGridColumn;
    C_ItensENTRADAITEM: TIntegerField;
    dbgItensCODIGO: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensREFERENCIA: TdxDBGridMaskColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgItensPRECO: TdxDBGridMaskColumn;
    dbgItensENTRADAITEM: TdxDBGridMaskColumn;
    C_EntradasFAVORECIDO: TIntegerField;
    dbgEntradasColumn7: TdxDBGridColumn;
    C_ItensITEM: TIntegerField;
    dbgItensColumn9: TdxDBGridColumn;
    dbgEntradasTOTAL: TdxDBGridColumn;
    dbgItensSUBTOTAL: TdxDBGridColumn;
    TS_PopupMenu1: TTS_PopupMenu;
    C_EntradasTOTAL: TFloatField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    procedure dbgEntradasDblClick(Sender: TObject);
    procedure dbgItensDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    nDias: integer;
  public
    { Public declarations }
  end;

var
  FrmUltimasEntradas: TFrmUltimasEntradas;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TFrmUltimasEntradas.dbgEntradasDblClick(Sender: TObject);
var nId: integer;
begin
  inherited;
  if dbgEntradas.TS_SelectedColumn = 'NOME' then begin
		with DMProjeto do begin
      nId := dbgEntradas.GetFieldValue(dbgEntradas.focusednode,'favorecido',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmFornecedores',self,true);
  	end;
  end
  else begin
		with DMProjeto do begin
      nId := dbgEntradas.GetFieldValue(dbgEntradas.focusednode,'Entrada',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmCompras',self,true);
    end;
  end;

end;

procedure TFrmUltimasEntradas.dbgItensDblClick(Sender: TObject);
var nItem: integer;
begin
  inherited;
  nItem := dbgItens.GetFieldValue(dbgItens.FocusedNode, 'Item', 0);
  DMProjeto.SetParametrosForm([nItem]);
  DMProjeto.CriarForm('FrmItens', Self, true);
end;

procedure TFrmUltimasEntradas.FormsComponentBeforeClearParams(
  Sender: TObject);
var dData: TDateTime;
begin
  inherited;
  nDias := 0;
  if DMProjeto.Parametro('QtdeDiasUltimasCompras') <> '' then
    nDias := StrToInt(DMProjeto.Parametro('QtdeDiasUltimasCompras'));

  dbgEntradasNome.visible := DMProjeto.LerPermissao(name, 'VERFORN');
  dbgEntradasNome.DisableCustomizing := not dbgEntradasNome.visible;

  dbgEntradasTOTAL.visible := DMProjeto.LerPermissao(name, 'VERTOTAL');
  dbgEntradasTOTAL.DisableCustomizing := not dbgEntradasTOTAL.visible;

  dbgItensPreco.visible := DMProjeto.LerPermissao(name, 'VERPRECOCP');
  dbgItensPreco.DisableCustomizing := not dbgItensPreco.visible;

  dbgItensSUBTOTAL.visible := dbgItensPreco.visible;
  dbgItensPreco.DisableCustomizing := not dbgItensSUBTOTAL.visible;

  dData := DMProjeto.dDataSistema - nDias;

  C_Entradas.close;
  C_Entradas.fetchparams;
  C_Entradas.params[0].asdatetime := dData;
  C_Entradas.open;
end;

procedure TFrmUltimasEntradas.FormShow(Sender: TObject);
begin
  inherited;
  lbCaption.caption := lbCaption.caption + ' - ( '+IntToStr(nDias)+' dias )';
end;

end.

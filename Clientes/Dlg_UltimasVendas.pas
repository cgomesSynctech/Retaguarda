unit Dlg_UltimasVendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, DlgMsg, Menus, StdCtrls, Buttons, TS_BitBtn, Db,
  IBCustomDataSet, IBQuery, Provider, DBClient,
  TS_Label, ExtCtrls, TS_Shape, TS_LastDataObject,
  FRM_MODELOCADASTROS, TS_Bevel, TS_SpeedButton, dxMasterView,
  TS_EditFavorecido, DBCtrls, TS_DBLookupComboBox, TS_DBLookupTipoFav,
  ComCtrls, dxExEdtr, dxEdLib, TS_ButtonEdit, dxCntner,
  dxEditor, dxDBEdtr, dxDBELib, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, TS_PopupMenu, teCtrls, TS_EffectsPanel,
  dxMasterViewColumns, Placemnt, BTOdeum;


type
  TDlgUltimasVendas = class(TFrmModeloCadastros)
    C_Vendas: TClientDataSet;
    Q_VendasProvider: TDataSetProvider;
    Q_Vendas: TIBQuery;
    Q_VendasProd: TIBQuery;
    C_VendasProdDS: TDataSource;
    C_VendasProd: TClientDataSet;
    C_VendasDS: TDataSource;
    Q_VendasProdProvider: TDataSetProvider;
    mvUltimasVendas: TdxMasterView;
    mvVendas: TdxMasterViewLevel;
    C_VendasSAIDA: TIntegerField;
    C_VendasNUMERO: TStringField;
    C_VendasDATA: TDateField;
    C_VendasVENDEDORNOME: TStringField;
    C_VendasTIPOENTREGADESCRICAO: TStringField;
    C_VendasProdSAIDA: TIntegerField;
    C_VendasProdSEQUENCIA: TIntegerField;
    C_VendasProdITEMCODIGO: TStringField;
    C_VendasProdDESCRICAO: TStringField;
    C_VendasProdTAXAVEL: TStringField;
    mvVendasProd: TdxMasterViewLevel;
    mvVendasProdSEQUENCIA: TdxMasterViewColumn;
    mvVendasProdITEMCODIGO: TdxMasterViewColumn;
    mvVendasProdDESCRICAO: TdxMasterViewColumn;
    mvVendasProdQUANTIDADE: TdxMasterViewColumn;
    mvVendasProdPRECO: TdxMasterViewColumn;
    mvVendasProdSUBTOTAL: TdxMasterViewColumn;
    mvVendasNUMERO: TdxMasterViewColumn;
    mvVendasDATA: TdxMasterViewColumn;
    mvVendasTOTAL: TdxMasterViewColumn;
    mvVendasVENDEDORNOME: TdxMasterViewColumn;
    mvVendasTIPOENTREGADESCRICAO: TdxMasterViewColumn;
    C_VendasProdcfTAXAVEL: TStringField;
    C_VendasTIPOFAVORECIDO: TIntegerField;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    mvVendasSALDO: TdxMasterViewColumn;
    stCabVenda: TdxMasterViewStyle;
    stDadosVenda: TdxMasterViewStyle;
    stCabInvoices: TdxMasterViewStyle;
    stDadosInvoices: TdxMasterViewStyle;
    C_VendasProdITEM: TIntegerField;
    C_VendasProdSAIDAITEM: TIntegerField;
    C_VendasTOTAL: TFloatField;
    C_VendasSALDOINVOICE: TFloatField;
    C_VendasProdQUANTIDADE: TFloatField;
    C_VendasProdPRECO: TFloatField;
    C_VendasProdSUBTOTAL: TFloatField;
    procedure mvUltimasVendasDblClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure edFavorecidoSelecionou(Sender: TObject);
  private
    FavorecidoAtual: integer;
    procedure Processando(Flag: boolean; controle: TControl);
    procedure AbreVendas(Favorecido: integer);
  public
  end;

var
  DlgUltimasVendas: TDlgUltimasVendas;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgUltimasVendas.Processando(Flag: boolean; controle: TControl);
begin
  controle.Visible := not Flag;
  if Flag then begin
    controle.SendToBack;
  end else begin
    controle.BringToFront;
  end;
end;

procedure TDlgUltimasVendas.AbreVendas(Favorecido: integer);
begin
  try
    Processando(true, mvUltimasVendas);
    FavorecidoAtual := Favorecido;
    C_VendasProd.Close;
    C_Vendas.Close;
    C_Vendas.Params.ParamByName('Favorecido').AsInteger := FavorecidoAtual;
    C_Vendas.Open;
    C_VendasProd.Open;
  finally
    Processando(false, mvUltimasVendas);
  end;
end;

procedure TDlgUltimasVendas.mvUltimasVendasDblClick(Sender: TObject);
var ID: integer;
begin
  inherited;
  if C_VendasSaida.value > 0 then with mvUltimasVendas do begin
    // Vendas
    if FocusedNode.Level.Tag = 1 then begin
      ID := FocusedNode.Level.DataSet.Fieldbyname('SAIDA').AsInteger;
      if ID <> 0 then begin
        DMProjeto.SetParametrosForm([ID]);
        DMProjeto.CriarForm('FrmInvoices',self,true);
      end;
    end else if FocusedNode.Level.Tag = 2 then begin
        DMProjeto.SetParametrosForm([FocusedNode.Level.DataSet.Fieldbyname('Item').AsInteger]);
        DMProjeto.CriarForm('FrmItens',self,true);
    end;
  end; // with
end;

procedure TDlgUltimasVendas.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  FavorecidoAtual := DMProjeto.GetParametrosForm(0);
  edFavorecido.Text := DMProjeto.GetParametrosForm(1);
  dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(2);
  AbreVendas( FavorecidoAtual );
end;

procedure TDlgUltimasVendas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  if (FavorecidoAtual<>edFavorecido.getID) then begin
    AbreVendas( edFavorecido.getID );
  end;
end;

end.

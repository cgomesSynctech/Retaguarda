unit Dlg_UltVendasFornecedor;

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
  TS_MaxPanel, TS_PopupMenu, teCtrls, TS_EffectsPanel, Placemnt, BTOdeum;


type
  TDlgUltVendasFornecedor = class(TFrmModeloCadastros)
    C_Vendas: TClientDataSet;
    Q_VendasProvider: TDataSetProvider;
    Q_Vendas: TIBQuery;
    Q_VendasProd: TIBQuery;
    C_VendasProdDS: TDataSource;
    C_VendasProd: TClientDataSet;
    C_VendasDS: TDataSource;
    ppmVendasProd: TTS_PopupMenu;
    EstatsticasdeVendasdoProduto1: TMenuItem;
    Q_VendasProdProvider: TDataSetProvider;
    mvUltimasVendas: TdxMasterView;
    mvVendas: TdxMasterViewLevel;
    C_VendasNUMERO: TStringField;
    C_VendasDATA: TDateField;
    C_VendasTIPOENTREGADESCRICAO: TStringField;
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
    stBranco: TdxMasterViewStyle;
    stCinzaAndre: TdxMasterViewStyle;
    stCinzaEscuro: TdxMasterViewStyle;
    ppmGrupo: TTS_PopupMenu;
    mGrupo: TMenuItem;
    stGroup: TdxMasterViewStyle;
    stSubTotal: TdxMasterViewStyle;
    stJuros: TdxMasterViewStyle;
    stDescontos: TdxMasterViewStyle;
    C_VendasENTRADA: TIntegerField;
    C_VendasProdENTRADA: TIntegerField;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    mvUltimasVendasStyle1: TdxMasterViewStyle;
    C_VendasTOTAL: TFloatField;
    C_VendasProdQUANTIDADE: TFloatField;
    C_VendasProdPRECO: TFloatField;
    C_VendasProdSUBTOTAL: TFloatField;
    procedure C_VendasProdCalcFields(DataSet: TDataSet);
    procedure mvUltimasVendasDblClick(Sender: TObject);
    procedure mGrupoClick(Sender: TObject);
    procedure mvVendasProdGetContentStyle(Sender: TdxMasterViewLevel;
      Node: TdxMasterViewNode; Column: TdxMasterViewColumn;
      var NewStyle: TdxMasterViewStyle);
    procedure btColunasClick(Sender: TObject);
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
  DlgUltVendasFornecedor: TDlgUltVendasFornecedor;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgUltVendasFornecedor.Processando(Flag: boolean; controle: TControl);
begin
  controle.Visible := not Flag;
  if Flag then begin
    controle.SendToBack;
  end else begin
    controle.BringToFront;
  end;
end;

procedure TDlgUltVendasFornecedor.C_VendasProdCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_VendasProdTAXAVEL.Value = 'S' then C_VendasProdcfTAXAVEL.Value := 'Sim'
  else C_VendasProdcfTAXAVEL.Value := 'N�o';
end;

procedure TDlgUltVendasFornecedor.AbreVendas(Favorecido: integer);
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

procedure TDlgUltVendasFornecedor.mvUltimasVendasDblClick(Sender: TObject);
var ID: integer;
begin
{  inherited;
  with mvVendas do begin
    // Vendas
    if FocusedNode.Level.Tag = 1 then begin
      ID := mvVendas.FocusedNode.Level.DataSet.Fieldbyname('SAIDA').AsInteger;
      if ID <> 0 then begin
        DMProjeto.SetParametrosForm([ID]);
        DMProjeto.CriarForm('FrmSaidas',self,true);
      end;
    end else if MasterView.FocusedNode.Level.Tag = 2 then begin

    end;
  end; // with}
end;

procedure TDlgUltVendasFornecedor.mGrupoClick(Sender: TObject);
begin
  inherited;
  mGrupo.Checked := not mGrupo.Checked;
  with mvUltimasVendas.FocusedNode.Level do begin
    if mGrupo.Checked then
      OptionsView := OptionsView + [lovGroupbyBox]
    else OptionsView := OptionsView - [lovGroupbyBox];
  end;
end;

procedure TDlgUltVendasFornecedor.mvVendasProdGetContentStyle(
  Sender: TdxMasterViewLevel; Node: TdxMasterViewNode;
  Column: TdxMasterViewColumn; var NewStyle: TdxMasterViewStyle);
begin
  inherited;
 //if Column.Field.FieldName='DESCRICAO' then

{   if Column<>nil then
   if UpperCase(Trim(Column.Field.AsString))='SUBTOTAL' then
      NewStyle := stSubTotal; }
end;

procedure TDlgUltVendasFornecedor.btColunasClick(Sender: TObject);
begin
  inherited;
  mvUltimasVendas.Customizing := not mvUltimasVendas.Customizing;
end;

procedure TDlgUltVendasFornecedor.FormsComponentBeforeLoadKey(
  Sendet: TObject; var Where: String);
begin
  inherited;
  FavorecidoAtual := DMProjeto.GetParametrosForm(0);
  edFavorecido.Text := DMProjeto.GetParametrosForm(1);
  dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(2);
  AbreVendas( FavorecidoAtual );
end;

procedure TDlgUltVendasFornecedor.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  if (FavorecidoAtual<>edFavorecido.getID) then begin
    AbreVendas( edFavorecido.getID );
  end;
end;

end.

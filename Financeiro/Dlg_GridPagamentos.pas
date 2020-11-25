unit Dlg_GridPagamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_LastDataObject, vg2PropStore, DlgMsg, Menus, TS_PopupMenu, ExtCtrls,
  TS_Bevel, Buttons, TS_SpeedButton, TS_Panel, StdCtrls, TS_BitBtn, Db,
  dxDBTLCl, dxGrClms, Provider, IBCustomDataSet, IBQuery, DBClient,
  dxMasterView, TS_ComboBox, vg2StdCtrls, vg2DateCtrls, TS_EditFavorecido,
  DBCtrls, TS_DBLookupComboBox, TS_DBLookupTipoFav, TS_Label, dxPSCore,
  dxPSdxMVLnk, dxExEdtr, dxEdLib, TS_ButtonEdit, dxEditor, dxDBEdtr,
  dxDBELib, FormsComponent, jpeg, TS_Image, dxfLabel, TS_MaxPanel,
  TS_DateTimePicker;

type
  TDlgGridPagamentos = class(TFrmModeloCadastros)
    Q_ContasAPagarDS: TDataSource;
    Q_ContasAPagar: TIBQuery;
    MasterView: TdxMasterView;
    ContasAPagar: TdxMasterViewLevel;
    MasterViewLevel2: TdxMasterViewLevel;
    MasterViewLevel3: TdxMasterViewLevel;
    ContasAPagarNOTAFISCAL: TdxMasterViewColumn;
    ContasAPagarNOME: TdxMasterViewColumn;
    ContasAPagarCOMPETENCIA: TdxMasterViewColumn;
    ContasAPagarVENCIMENTO: TdxMasterViewColumn;
    ContasAPagarVALOR: TdxMasterViewColumn;
    ContasAPagarVALORPAGO: TdxMasterViewColumn;
    ContasAPagarDATAPAGO: TdxMasterViewColumn;
    ContasAPagarDESCONTOS: TdxMasterViewColumn;
    ContasAPagarCREDITOGERADO: TdxMasterViewColumn;
    ContasAPagarCREDITOUTILIZADO: TdxMasterViewColumn;
    CorCabecalho: TdxMasterViewStyle;
    CorParcelasAReceber: TdxMasterViewStyle;
    Q_ContasLiquidadas: TIBQuery;
    Q_ContasLiquidadasDS: TDataSource;
    MasterViewLevel2NOTAFISCAL: TdxMasterViewColumn;
    MasterViewLevel2NOME: TdxMasterViewColumn;
    MasterViewLevel2COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel2VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel2VALOR: TdxMasterViewColumn;
    MasterViewLevel2VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel2DATAPAGO: TdxMasterViewColumn;
    MasterViewLevel2DESCONTOS: TdxMasterViewColumn;
    MasterViewLevel2CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel2CREDITOUTILIZADO: TdxMasterViewColumn;
    CorParcelasLiquidadas: TdxMasterViewStyle;
    Q_ContasAtrasadas: TIBQuery;
    Q_ContasAtrasadasDS: TDataSource;
    CorParcelasAtrasadas: TdxMasterViewStyle;
    CorCaptionAReceber: TdxMasterViewStyle;
    CorCaptionLiquidadas: TdxMasterViewStyle;
    CorCaptionAtrasadas: TdxMasterViewStyle;
    CorAgrupamento: TdxMasterViewStyle;
    CorRegistrosAReceber: TdxMasterViewStyle;
    Nome: TdxMasterViewColumn;
    CorRegistrosLiquidados: TdxMasterViewStyle;
    MasterViewLevel3NOTAFISCAL: TdxMasterViewColumn;
    MasterViewLevel3NOME: TdxMasterViewColumn;
    MasterViewLevel3COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel3VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel3VALOR: TdxMasterViewColumn;
    MasterViewLevel3VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel3DATAPAGO: TdxMasterViewColumn;
    MasterViewLevel3DESCONTOS: TdxMasterViewColumn;
    MasterViewLevel3CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel3CREDITOUTILIZADO: TdxMasterViewColumn;
    CorRegistrosEmAtraso: TdxMasterViewStyle;
    Q_ContasCanceladas: TIBQuery;
    Q_ContasCanceladasDS: TDataSource;
    MasterViewLevel4: TdxMasterViewLevel;
    MasterViewLevel4NOTAFISCAL: TdxMasterViewColumn;
    MasterViewLevel4NOME: TdxMasterViewColumn;
    MasterViewLevel4COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel4VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel4VALOR: TdxMasterViewColumn;
    MasterViewLevel4VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel4DATAPAGO: TdxMasterViewColumn;
    MasterViewLevel4DESCONTOS: TdxMasterViewColumn;
    MasterViewLevel4CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel4CREDITOUTILIZADO: TdxMasterViewColumn;
    CorParcelasCanceladas: TdxMasterViewStyle;
    CorCaptionCanceladas: TdxMasterViewStyle;
    CorRegistrosCancelados: TdxMasterViewStyle;
    FormaPagamento: TdxMasterViewStyle;
    Q_ContasLiquidadasDet: TIBQuery;
    Q_ContasLiquidadasDocDS: TDataSource;
    MasterViewLevel5: TdxMasterViewLevel;
    Q_ContasLiquidadasID: TIntegerField;
    Q_ContasLiquidadasNOTAFISCAL: TIBStringField;
    Q_ContasLiquidadasNOME: TIBStringField;
    Q_ContasLiquidadasCOMPETENCIA: TDateField;
    Q_ContasLiquidadasVENCIMENTO: TDateField;
    Q_ContasLiquidadasVALOR: TIBBCDField;
    Q_ContasLiquidadasVALORPAGO: TIBBCDField;
    Q_ContasLiquidadasDATAPAGO: TDateField;
    Q_ContasLiquidadasDESCONTOS: TIBBCDField;
    Q_ContasLiquidadasCREDITOGERADO: TIBBCDField;
    Q_ContasLiquidadasCREDITOUTILIZADO: TIBBCDField;
    MasterViewLevel5VALOR: TdxMasterViewColumn;
    MasterViewLevel5VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel5NOMECONTA: TdxMasterViewColumn;
    MasterViewLevel5DATA: TdxMasterViewColumn;
    MasterViewLevel5DESCFORMAPAG: TdxMasterViewColumn;
    MasterViewLevel5DESCSTATUS: TdxMasterViewColumn;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    Q_ContasAPagarID: TIntegerField;
    Q_ContasAPagarNOTAFISCAL: TIBStringField;
    Q_ContasAPagarNOME: TIBStringField;
    Q_ContasAPagarCOMPETENCIA: TDateField;
    Q_ContasAPagarVENCIMENTO: TDateField;
    Q_ContasAPagarVALOR: TIBBCDField;
    Q_ContasAPagarVALORPAGO: TIBBCDField;
    Q_ContasAPagarDATAPAGO: TDateField;
    Q_ContasAPagarDESCONTOS: TIBBCDField;
    Q_ContasAPagarCREDITOGERADO: TIBBCDField;
    Q_ContasAPagarCREDITOUTILIZADO: TIBBCDField;
    Q_ContasAtrasadasID: TIntegerField;
    Q_ContasAtrasadasNOTAFISCAL: TIBStringField;
    Q_ContasAtrasadasNOME: TIBStringField;
    Q_ContasAtrasadasCOMPETENCIA: TDateField;
    Q_ContasAtrasadasVENCIMENTO: TDateField;
    Q_ContasAtrasadasVALOR: TIBBCDField;
    Q_ContasAtrasadasVALORPAGO: TIBBCDField;
    Q_ContasAtrasadasDATAPAGO: TDateField;
    Q_ContasAtrasadasDESCONTOS: TIBBCDField;
    Q_ContasAtrasadasCREDITOGERADO: TIBBCDField;
    Q_ContasAtrasadasCREDITOUTILIZADO: TIBBCDField;
    Q_ContasCanceladasID: TIntegerField;
    Q_ContasCanceladasNOTAFISCAL: TIBStringField;
    Q_ContasCanceladasNOME: TIBStringField;
    Q_ContasCanceladasCOMPETENCIA: TDateField;
    Q_ContasCanceladasVENCIMENTO: TDateField;
    Q_ContasCanceladasVALOR: TIBBCDField;
    Q_ContasCanceladasVALORPAGO: TIBBCDField;
    Q_ContasCanceladasDATAPAGO: TDateField;
    Q_ContasCanceladasDESCONTOS: TIBBCDField;
    Q_ContasCanceladasCREDITOGERADO: TIBBCDField;
    Q_ContasCanceladasCREDITOUTILIZADO: TIBBCDField;
    TS_PopupMenu1: TTS_PopupMenu;
    mGrupo: TMenuItem;
    Q_ContasAPagarJUROSPAGOS: TIBBCDField;
    Q_ContasLiquidadasJUROSPAGOS: TIBBCDField;
    Q_ContasAtrasadasJUROSPAGOS: TIBBCDField;
    Q_ContasCanceladasJUROSPAGOS: TIBBCDField;
    Q_ContasLiquidadasDetDUPLICATA: TIntegerField;
    Q_ContasLiquidadasDetIDDOC: TIntegerField;
    Q_ContasLiquidadasDetVALOR: TIBBCDField;
    Q_ContasLiquidadasDetVENCIMENTO: TDateField;
    Q_ContasLiquidadasDetNOMECONTA: TIBStringField;
    Q_ContasLiquidadasDetRETIRADA: TIntegerField;
    Q_ContasLiquidadasDetTIPORETIRADA: TIntegerField;
    Q_ContasLiquidadasDetDATA: TDateField;
    Q_ContasLiquidadasDetDESCFORMAPAG: TIBStringField;
    Q_ContasLiquidadasDetDESCSTATUS: TIBStringField;
    Q_ContasLiquidadasDetSTATUS: TIntegerField;
    ContasAPagarJurosPagos: TdxMasterViewColumn;
    JUROSPAGOS: TdxMasterViewColumn;
    MasterViewLevel3JUROSPAGOS: TdxMasterViewColumn;
    MasterViewLevel4JUROSPAGOS: TdxMasterViewColumn;
    Q_ContasAtrasadasValorAReceber: TFloatField;
    Q_ContasAPagarValorAReceber: TFloatField;
    MasterViewLevel3Column1ValorAPagar: TdxMasterViewColumn;
    ContasAPagarColumn1ValorAPagar: TdxMasterViewColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    Imprimir: TdxMasterViewReportLink;
    edFav: TTS_EditFavorecido;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure MasterViewDblClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure mGrupoClick(Sender: TObject);
    procedure TS_PopupMenu1Popup(Sender: TObject);
    procedure Q_ContasAPagarCalcFields(DataSet: TDataSet);
    procedure Q_ContasAtrasadasCalcFields(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgGridPagamentos: TDlgGridPagamentos;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgGridPagamentos.Pesquisar;
begin
	with Q_ContasAPagar do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
  Q_ContasLiquidadasDet.Close;
	with Q_ContasLiquidadas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ContasLiquidadasDet do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ContasAtrasadas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ContasCanceladas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
end;


procedure TDlgGridPagamentos.FormShow(Sender: TObject);
begin
  inherited;
  DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
  DataF.Date := IncMonth(DMProjeto.dDataSistema, 1); //DMProjeto.dDataSistema+30;
  Pesquisar;
  MasterView.Items[0].Expand(false);
end;

procedure TDlgGridPagamentos.MasterViewDblClick(Sender: TObject);
var ID, TipoRetirada : integer;
begin
  inherited;
  if MasterView.FocusedNode.Level.Tag = 0 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('ID').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm('FrmA_Pagar',self,true);
  	end;
  end else begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Retirada').AsInteger;
    TipoRetirada := MasterView.FocusedNode.Level.DataSet.Fieldbyname('TipoRetirada').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm(DMFinanceiro.getTelaGeradora( TipoRetirada ),self,true);
    end;
  end;
end;

procedure TDlgGridPagamentos.btLimparClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgGridPagamentos.mGrupoClick(Sender: TObject);
begin
  inherited;
  	mGrupo.Checked := not mGrupo.Checked;
  	if mGrupo.Checked then
			MasterView.FocusedNode.Level.OptionsView := MasterView.FocusedNode.Level.OptionsView + [lovGroupbyBox]
    else
    	MasterView.FocusedNode.Level.OptionsView := MasterView.FocusedNode.Level.OptionsView - [lovGroupbyBox];
end;

procedure TDlgGridPagamentos.TS_PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  mGrupo.Checked := lovGroupbyBox in MasterView.FocusedNode.Level.OptionsView;
end;

procedure TDlgGridPagamentos.Q_ContasAPagarCalcFields(DataSet: TDataSet);
begin
  inherited;
	Q_ContasAPagarValorAReceber.Value := 	Q_ContasAPagarValor.Value -
                                        Q_ContasAPagarValorPago.Value-
                                        Q_ContasAPagarCreditoUtilizado.Value-
                                        Q_ContasAPagarDescontos.Value;
end;

procedure TDlgGridPagamentos.Q_ContasAtrasadasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
	Q_ContasAtrasadasValorAReceber.Value := Q_ContasAtrasadasValor.Value -
                                        	Q_ContasAtrasadasValorPago.Value-
                                        	Q_ContasAtrasadasCreditoUtilizado.Value-
                                        	Q_ContasAtrasadasDescontos.Value;

end;

procedure TDlgGridPagamentos.btGravarClick(Sender: TObject);
begin
  inherited;
	Imprimir.Preview;
end;

end.

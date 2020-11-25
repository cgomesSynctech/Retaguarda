unit Dlg_GridParcelasAReceber;

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
  TS_DateTimePicker, dxBar;

type
  TDlgGridParcelasAReceber = class(TFrmModeloCadastros)
    Q_ParcelasDS: TDataSource;
    Q_Parcelas: TIBQuery;
    MasterView: TdxMasterView;
    MasterViewLevel1: TdxMasterViewLevel;
    MasterViewLevel2: TdxMasterViewLevel;
    MasterViewLevel3: TdxMasterViewLevel;
    MasterViewLevel1NOTAFISCAL: TdxMasterViewColumn;
    MasterViewLevel1NOME: TdxMasterViewColumn;
    MasterViewLevel1COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel1VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel1VALOR: TdxMasterViewColumn;
    MasterViewLevel1VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel1DATAPAGO: TdxMasterViewColumn;
    MasterViewLevel1DESCONTOS: TdxMasterViewColumn;
    MasterViewLevel1JUROSRECEBIDOS: TdxMasterViewColumn;
    MasterViewLevel1CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel1CREDITOUTILIZADO: TdxMasterViewColumn;
    CorCabecalho: TdxMasterViewStyle;
    CorParcelasAReceber: TdxMasterViewStyle;
    Q_ParcelasLiquidadas: TIBQuery;
    Q_ParcelasLiquidadasDS: TDataSource;
    MasterViewLevel2NOTAFISCAL: TdxMasterViewColumn;
    MasterViewLevel2NOME: TdxMasterViewColumn;
    MasterViewLevel2COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel2VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel2VALOR: TdxMasterViewColumn;
    MasterViewLevel2VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel2DATAPAGO: TdxMasterViewColumn;
    MasterViewLevel2DESCONTOS: TdxMasterViewColumn;
    MasterViewLevel2JUROSRECEBIDOS: TdxMasterViewColumn;
    MasterViewLevel2CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel2CREDITOUTILIZADO: TdxMasterViewColumn;
    CorParcelasLiquidadas: TdxMasterViewStyle;
    Q_ParcelasAtrasadas: TIBQuery;
    Q_ParcelasAtrasadasDS: TDataSource;
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
    MasterViewLevel3JUROSRECEBIDOS: TdxMasterViewColumn;
    MasterViewLevel3CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel3CREDITOUTILIZADO: TdxMasterViewColumn;
    CorRegistrosEmAtraso: TdxMasterViewStyle;
    Q_ParcelasCanceladas: TIBQuery;
    Q_ParcelasCanceladasDS: TDataSource;
    MasterViewLevel4: TdxMasterViewLevel;
    MasterViewLevel4NOTAFISCAL: TdxMasterViewColumn;
    MasterViewLevel4NOME: TdxMasterViewColumn;
    MasterViewLevel4COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel4VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel4VALOR: TdxMasterViewColumn;
    MasterViewLevel4VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel4DATAPAGO: TdxMasterViewColumn;
    MasterViewLevel4DESCONTOS: TdxMasterViewColumn;
    MasterViewLevel4JUROSRECEBIDOS: TdxMasterViewColumn;
    MasterViewLevel4CREDITOGERADO: TdxMasterViewColumn;
    MasterViewLevel4CREDITOUTILIZADO: TdxMasterViewColumn;
    CorParcelasCanceladas: TdxMasterViewStyle;
    CorCaptionCanceladas: TdxMasterViewStyle;
    CorRegistrosCancelados: TdxMasterViewStyle;
    FormaPagamento: TdxMasterViewStyle;
    Q_ParcelasLiquidadasDet: TIBQuery;
    Q_DepositosDocDS: TDataSource;
    MasterViewLevel5: TdxMasterViewLevel;
    Q_ParcelasLiquidadasID: TIntegerField;
    Q_ParcelasLiquidadasNOTAFISCAL: TIBStringField;
    Q_ParcelasLiquidadasNOME: TIBStringField;
    Q_ParcelasLiquidadasCOMPETENCIA: TDateField;
    Q_ParcelasLiquidadasVENCIMENTO: TDateField;
    Q_ParcelasLiquidadasVALOR: TIBBCDField;
    Q_ParcelasLiquidadasVALORPAGO: TIBBCDField;
    Q_ParcelasLiquidadasDATAPAGO: TDateField;
    Q_ParcelasLiquidadasDESCONTOS: TIBBCDField;
    Q_ParcelasLiquidadasJUROSRECEBIDOS: TIBBCDField;
    Q_ParcelasLiquidadasCREDITOGERADO: TIBBCDField;
    Q_ParcelasLiquidadasCREDITOUTILIZADO: TIBBCDField;
    Q_ParcelasLiquidadasDetTITULO: TIntegerField;
    Q_ParcelasLiquidadasDetIDDOC: TIntegerField;
    Q_ParcelasLiquidadasDetVALOR: TIBBCDField;
    Q_ParcelasLiquidadasDetVENCIMENTO: TDateField;
    Q_ParcelasLiquidadasDetNOMECONTA: TIBStringField;
    Q_ParcelasLiquidadasDetDATA: TDateField;
    Q_ParcelasLiquidadasDetDESCFORMAPAG: TIBStringField;
    Q_ParcelasLiquidadasDetDESCSTATUS: TIBStringField;
    Q_ParcelasLiquidadasDetSTATUS: TIntegerField;
    MasterViewLevel5VALOR: TdxMasterViewColumn;
    MasterViewLevel5VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel5NOMECONTA: TdxMasterViewColumn;
    MasterViewLevel5DATA: TdxMasterViewColumn;
    MasterViewLevel5DESCFORMAPAG: TdxMasterViewColumn;
    MasterViewLevel5DESCSTATUS: TdxMasterViewColumn;
    Q_ParcelasLiquidadasDetDEPOSITO: TIntegerField;
    Q_ParcelasLiquidadasDetTIPODEPOSITO: TIntegerField;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    Q_ParcelasID: TIntegerField;
    Q_ParcelasNOTAFISCAL: TIBStringField;
    Q_ParcelasNOME: TIBStringField;
    Q_ParcelasCOMPETENCIA: TDateField;
    Q_ParcelasVENCIMENTO: TDateField;
    Q_ParcelasVALOR: TIBBCDField;
    Q_ParcelasVALORPAGO: TIBBCDField;
    Q_ParcelasDATAPAGO: TDateField;
    Q_ParcelasDESCONTOS: TIBBCDField;
    Q_ParcelasJUROSRECEBIDOS: TIBBCDField;
    Q_ParcelasCREDITOGERADO: TIBBCDField;
    Q_ParcelasCREDITOUTILIZADO: TIBBCDField;
    Q_ParcelasAtrasadasID: TIntegerField;
    Q_ParcelasAtrasadasNOTAFISCAL: TIBStringField;
    Q_ParcelasAtrasadasNOME: TIBStringField;
    Q_ParcelasAtrasadasCOMPETENCIA: TDateField;
    Q_ParcelasAtrasadasVENCIMENTO: TDateField;
    Q_ParcelasAtrasadasVALOR: TIBBCDField;
    Q_ParcelasAtrasadasVALORPAGO: TIBBCDField;
    Q_ParcelasAtrasadasDATAPAGO: TDateField;
    Q_ParcelasAtrasadasDESCONTOS: TIBBCDField;
    Q_ParcelasAtrasadasJUROSRECEBIDOS: TIBBCDField;
    Q_ParcelasAtrasadasCREDITOGERADO: TIBBCDField;
    Q_ParcelasAtrasadasCREDITOUTILIZADO: TIBBCDField;
    Q_ParcelasCanceladasID: TIntegerField;
    Q_ParcelasCanceladasNOTAFISCAL: TIBStringField;
    Q_ParcelasCanceladasNOME: TIBStringField;
    Q_ParcelasCanceladasCOMPETENCIA: TDateField;
    Q_ParcelasCanceladasVENCIMENTO: TDateField;
    Q_ParcelasCanceladasVALOR: TIBBCDField;
    Q_ParcelasCanceladasVALORPAGO: TIBBCDField;
    Q_ParcelasCanceladasDATAPAGO: TDateField;
    Q_ParcelasCanceladasDESCONTOS: TIBBCDField;
    Q_ParcelasCanceladasJUROSRECEBIDOS: TIBBCDField;
    Q_ParcelasCanceladasCREDITOGERADO: TIBBCDField;
    Q_ParcelasCanceladasCREDITOUTILIZADO: TIBBCDField;
    TS_PopupMenu1: TTS_PopupMenu;
    mGrupo: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    Imprimir: TdxMasterViewReportLink;
    DataI: TTS_DateTimePicker;
    edFav: TTS_EditFavorecido;
    DataF: TTS_DateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure MasterViewDblClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure mGrupoClick(Sender: TObject);
    procedure TS_PopupMenu1Popup(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgGridParcelasAReceber: TDlgGridParcelasAReceber;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgGridParcelasAReceber.Pesquisar;
begin
	with Q_Parcelas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ParcelasLiquidadas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ParcelasLiquidadasDet do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ParcelasAtrasadas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
	with Q_ParcelasCanceladas do begin
  	close;
    parambyname('DataI').asDate := DataI.Date;
    parambyname('DataF').asDate := DataF.Date;
    parambyname('Favorecido').asInteger := edFav.getID;
    parambyname('Todos').asInteger := edFav.getID;
    open;
  end;
end;


procedure TDlgGridParcelasAReceber.FormShow(Sender: TObject);
begin
  inherited;
  DataI.Date := FirstMonthDay(DMProjeto.dDataSistema);
  DataF.Date := IncMonth(DMProjeto.dDataSistema, 1); //DMProjeto.dDataSistema+30;
  Pesquisar;
  MasterView.Items[0].Expand(false);
end;

procedure TDlgGridParcelasAReceber.MasterViewDblClick(Sender: TObject);
var ID, TipoDeposito : integer;
begin
  inherited;
  if MasterView.FocusedNode.Level.Tag = 0 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('ID').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm('FrmA_Receber',self,true);
    end;
  end else begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Deposito').AsInteger;
    TipoDeposito := MasterView.FocusedNode.Level.DataSet.Fieldbyname('TipoDeposito').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm(DMFinanceiro.getTelaGeradora( TipoDeposito ),self,true);
    end;
  end;
end;

procedure TDlgGridParcelasAReceber.btLimparClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgGridParcelasAReceber.mGrupoClick(Sender: TObject);
begin
  inherited;
  	mGrupo.Checked := not mGrupo.Checked;
  	if mGrupo.Checked then
			MasterView.FocusedNode.Level.OptionsView := MasterView.FocusedNode.Level.OptionsView + [lovGroupbyBox]
    else
    	MasterView.FocusedNode.Level.OptionsView := MasterView.FocusedNode.Level.OptionsView - [lovGroupbyBox];
end;

procedure TDlgGridParcelasAReceber.TS_PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  mGrupo.Checked := lovGroupbyBox in MasterView.FocusedNode.Level.OptionsView;
end;

procedure TDlgGridParcelasAReceber.btGravarClick(Sender: TObject);
begin
  inherited;
	Imprimir.Preview;
end;

end.

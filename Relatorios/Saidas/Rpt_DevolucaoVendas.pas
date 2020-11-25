unit Rpt_DevolucaoVendas;
                                                                
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor, dxEdLib,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, TS_PopupEdit, TS_PopupFiltrarItens, TS_CheckBox;

type
  TRptDevolucaoVendas = class(TRptPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_TipoMovimentoDS: TDataSource;
    TS_LCBTipoMovimento: TTS_LookupComboBox;
    TS_Label3: TTS_Label;
    PopupFiltrarItens: TTS_PopupFiltrarItens;
    btFornecedores: TTS_SpeedButton;
    C_ConsultaENTRADAITEM: TIntegerField;
    C_ConsultaENTRADA: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    C_ConsultaNOMEFORNECEDOR: TStringField;
    C_ConsultaCOLUNA1: TStringField;
    C_ConsultaCOLUNA2: TStringField;
    C_ConsultaCOLUNA3: TStringField;
    C_ConsultaCOLUNA4: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    dbgConsultaENTRADAITEM: TdxDBGridMaskColumn;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgConsultaRATEIODESCONTO: TdxDBGridCurrencyColumn;
    dbgConsultaCOLUNA1: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA2: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA3: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA4: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaCODIGO: TdxDBGridColumn;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridColumn;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaSAIDA: TIntegerField;
    cbSaidasRelacionadas: TTS_CheckBox;
    C_ConsultaVENDEDOR: TStringField;
    dbgConsultaVendedor: TdxDBGridColumn;
    C_ConsultaUSUARIO: TStringField;
    dbgConsultaUSUARIO: TdxDBGridColumn;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaRATEIODESCONTO: TFloatField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
    procedure PopupFiltrarItensSelecionou(Sender: TObject);
    procedure btFornecedoresClick(Sender: TObject);
    procedure cbSaidasRelacionadasChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    sFornecedores, sNomesFornecedores : String;
  end;

var
  RptDevolucaoVendas: TRptDevolucaoVendas;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptDevolucaoVendas.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  if DMProjeto.ExisteParametrosForm then begin
		 with dbgConsulta do begin
    	 for i:=0 to GroupColumnCount-1 do
       	 DeleteGroupColumn(i);
     	 if DMProjeto.getParametrosForm(1) = 'G' then
         AddGroupColumn( dbgConsultaDescricaoGrupo )
     	 else if DMProjeto.getParametrosForm(1) = 'F' then
       	AddGroupColumn( dbgConsultaFabricante );
		 end;
  end;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptDevolucaoVendas.Atualizar;
var
     nTP_MV, sSaidasRelacionadas: string;
begin
     nTP_MV := '';
     sSaidasRelacionadas := '';
     If cbSaidasRelacionadas.CHecked Then
       sSaidasRelacionadas:= ' And (s.saida is not null) ';
     if TS_LCBTipoMovimento.LookupKeyValue <> null then begin
        nTP_MV := 'and e.tipomovimento = '+inttostr(TS_LCBTipoMovimento.LookupKeyValue);
     end;
     with C_Consulta do begin
  	  Close;
        CommandText := 'Select ' + getCampos + ' ,Extract(year from e.data)||''/''||Extract(month from e.data) as MesAno, e.usuario ' +
                       ' From '   + getTabelas + ' ' +
                       ' Where e.data >= :datai and e.data <= :dataf and e.tipopadrao = 106 and e.situacao = ''N'' '+
                       nTP_MV+
                       sSaidasRelacionadas+
                       ' and '+PopupFiltrarItens.getSQL;

        if sFornecedores <> '' then begin
           CommandText := CommandText + ' and e.favorecido in (' + sFornecedores +')';
        end;

        CommandText := CommandText + ' Order by e.data';

       	Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
      	Open;
     end;
  FormsComponent.Caption := 'Devoluções no Periodo: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
  with dbgConsulta do begin
  	FullExpand;
  end;
end;

procedure TRptDevolucaoVendas.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoVendas.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoVendas.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoVendas.PopupFiltrarItensSelecionou(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoVendas.btFornecedoresClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sFornecedores, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sFornecedores := GetParametrosForm(0);
      sNomesFornecedores := GetParametrosForm(1);
      LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptDevolucaoVendas.cbSaidasRelacionadasChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptDevolucaoVendas.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMECLIENTE' then begin
     DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
     DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  end else begin
     DMProjeto.SetParametrosForm([C_ConsultaEntrada.Value]);
     DMProjeto.CriarForm('FrmDevolucoesClientes',self,true);
  end;
end;

end.

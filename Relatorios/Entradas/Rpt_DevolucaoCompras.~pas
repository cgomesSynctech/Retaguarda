unit Rpt_DevolucaoCompras;

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
  TRptDevolucaoCompras = class(TRptPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    C_ConsultaNOMEFORNECEDOR: TStringField;
    C_ConsultaCOLUNA1: TStringField;
    C_ConsultaCOLUNA2: TStringField;
    C_ConsultaCOLUNA3: TStringField;
    C_ConsultaCOLUNA4: TStringField;
    dbgConsultaSAIDAITEM: TdxDBGridMaskColumn;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA1: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA2: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA3: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA4: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaRATEIODESCONTO: TdxDBGridMaskColumn;
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
    C_ConsultaNUMERO: TStringField;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    btClientes: TTS_SpeedButton;
    btVendedor: TTS_SpeedButton;
    C_ConsultaNOMEMEDICO: TStringField;
    dbgConsultaColumn25: TdxDBGridColumn;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridColumn;
    cbCanceladas: TTS_CheckBox;
    dbgConsultaTOTALFINAL: TdxDBGridMaskColumn;
    C_ConsultaCalcSubTotalItemDesc: TFloatField;
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
    procedure btClientesClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    sClientes, sNomesClientes, sVendedores, sNomesVendedores : String;
  end;

var
  RptDevolucaoCompras: TRptDevolucaoCompras;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptDevolucaoCompras.FormsComponentBeforeClearParams(
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

procedure TRptDevolucaoCompras.Atualizar;
var
     nTP_MV, sSituacao: string;
begin
     nTP_MV := '';
     if TS_LCBTipoMovimento.LookupKeyValue <> null then begin
        nTP_MV := 'and s.tipomovimento = '+inttostr(TS_LCBTipoMovimento.LookupKeyValue);
     end;
     sSituacao := ' and s.situacao = '+iif(cbCanceladas.CHecked,'''C''','''N''');
     with C_Consulta do begin
  	Close;
        CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where s.data >= :datai and s.data <= :dataf and s.tipopadrao = 6 '+sSituacao +
                   nTP_MV+' and '+PopupFiltrarItens.getSQL;

        if sClientes <> '' then begin
           CommandText := CommandText + ' and s.favorecido in (' + sClientes +')';
        end;

        if sVendedores <> '' then begin
           CommandText := CommandText + ' and s.vendedor in (' + sVendedores +')';
        end;

        CommandText := CommandText + ' Order by s.data';

	Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
	Open;
     end;
  FormsComponent.Caption := 'Devoluções de Compras no Período de: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
  with dbgConsulta do begin
  	FullExpand;
  end;
end;

procedure TRptDevolucaoCompras.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoCompras.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoCompras.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoCompras.PopupFiltrarItensSelecionou(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptDevolucaoCompras.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 2]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptDevolucaoCompras.btVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sVendedores := GetParametrosForm(0);
       sNomesVendedores := GetParametrosForm(1);
       LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptDevolucaoCompras.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptDevolucaoCompras.dbgConsultaDblClick(Sender: TObject);
var
   nId : Integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMEFORNECEDOR' then begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmFornecedores',self,true);
  	end;
  end
  else begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Saida',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmDevolucoesFornecedores',self,true);
    end;
  end;
end;

procedure TRptDevolucaoCompras.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
        DataSet.FieldByName('CalcSubTotalItemDesc').AsCurrency := DataSet.FieldByName('SUBTOTALITEM').AsCurrency - DataSet.FieldByName('RATEIODESCONTO').AsCurrency;
end;

end.

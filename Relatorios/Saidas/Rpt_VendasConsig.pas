unit Rpt_VendasConsig;
                                                                                        
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
  TRptVendasConsig = class(TRptPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
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
    PopupFiltrarItens: TTS_PopupFiltrarItens;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    btClientes: TTS_SpeedButton;
    btVendedor: TTS_SpeedButton;
    dbgConsultaMesAno: TdxDBGridColumn;
    cbCanceladas: TTS_CheckBox;
    dbgConsultapiscofins: TdxDBGridColumn;
    dbgConsultaVALORFINAL: TdxDBGridColumn;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaNOMEVENDEDOR: TStringField;
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
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaRATEIODESCONTO: TBCDField;
    C_ConsultaPISCOFINS: TStringField;
    C_ConsultaVALORFINAL: TBCDField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
    procedure PopupFiltrarItensSelecionou(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    sClientes, sNomesClientes, sVendedores, sNomesVendedores : String;
  end;

var
  RptVendasConsig: TRptVendasConsig;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptVendasConsig.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := ( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := ( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptVendasConsig.Atualizar;
var sSituacao: string;
begin
    sSituacao := ' and s.situacao = '+iif(cbCanceladas.CHecked,'''C''','''N''');
    with C_Consulta do begin
  	 Close;
     CommandText := 'Select ' + getCampos + ', Extract(year from s.data)||''/''||Extract(month from s.data) as MesAno ' +
                    'From '   + getTabelas + ' ' +
                    'Where '+PopupFiltrarItens.getSQL(False)+iif(PopupFiltrarItens.getSQL(False)<>'',' and ', '')+
                    ' s.data >= :datai and s.data <= :dataf and s.tipopadrao = 4 ' + sSituacao;

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
  with dbgConsulta do begin
  	FullExpand;
  end;
  FormsComponent.Caption := 'Consignações no Período: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
end;

procedure TRptVendasConsig.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptVendasConsig.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptVendasConsig.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptVendasConsig.PopupFiltrarItensSelecionou(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptVendasConsig.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptVendasConsig.btVendedorClick(Sender: TObject);
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

procedure TRptVendasConsig.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptVendasConsig.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMECLIENTE' then begin
     DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
     DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  end else begin
     DMProjeto.SetParametrosForm([C_ConsultaSaida.Value]);
     DMProjeto.CriarForm('FrmSaidasConsignadas',self,true);
  end;
end;

end.

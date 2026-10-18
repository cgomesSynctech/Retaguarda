unit Rpt_OutrasSaidas;
                                                                           
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
  TS_DBLookupComboBox, TS_LookupComboBox, TS_CheckBox, TS_PopupEdit,
  CheckLst, TS_CheckListBox;

type
  TRptOutrasSaidas = class(TRptPadrao)
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDESCPLANOPAGAMENTO: TStringField;
    C_ConsultaDATAENTREGA: TDateField;
    C_ConsultaDESCCAIXA: TStringField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaOBS: TStringField;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATAENTREGA: TdxDBGridDateColumn;
    dbgConsultaDESCCAIXA: TdxDBGridMaskColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaFRETE: TdxDBGridCurrencyColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaVENDEDOR: TIntegerField;
    dbgConsultaColumn20: TdxDBGridColumn;
    dbgConsultaDESCONTO: TdxDBGridMaskColumn;
    dbgConsultaJUROS: TdxDBGridMaskColumn;
    Q_TiposMovimentos: TIBQuery;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TipoMovimentoDS: TDataSource;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    TS_Label3: TTS_Label;
    btClientes: TTS_SpeedButton;
    btVendedor: TTS_SpeedButton;
    dbgConsultaNOMEMEDICO: TdxDBGridMaskColumn;
    dbgConsultaMEDICO: TdxDBGridMaskColumn;
    C_ConsultaNOMEMEDICO: TStringField;
    C_ConsultaMEDICO: TIntegerField;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridColumn;
    dbgConsultaTOTALITEM: TdxDBGridColumn;
    cbCanceladas: TTS_CheckBox;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaBAIRRO1: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    clbTipoOperacao: TTS_CheckListBox;
    TS_PopupEdit1: TTS_PopupEdit;
    C_ConsultaDESCTIPOMOVIMENTO: TStringField;
    dbgConsultaDESCTIPOMOVIMENTO: TdxDBGridMaskColumn;
    dbgConsultaCUSTO: TdxDBGridMaskColumn;
    C_ConsultaGRUPOCLIENTE: TStringField;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaIMPOSTO: TFloatField;
    C_ConsultaVALORCOMISSAO: TFloatField;
    C_ConsultaJUROS: TFloatField;
    C_ConsultaFRETE: TFloatField;
    C_ConsultaDESCTABELAPRECO: TStringField;
    C_ConsultaCUSTO: TBCDField;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
    sClientes, sNomesClientes, sVendedores, sNomesVendedores : String;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptOutrasSaidas: TRptOutrasSaidas;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptOutrasSaidas.Atualizar;
var
     nTP_MV, sSituacao, sTipoOperacao: string;
begin
	with C_Consulta do begin
  	Close;
        nTP_MV := '';
        sTipoOperacao := clbTipoOperacao.Selecionados;
        if (sTipoOperacao <> '') then begin
          nTP_MV := 'and s.tipomovimento in ('+sTipoOperacao+')';
        end;

        sSituacao := ' and s.situacao = '+iif(cbCanceladas.CHecked,'''C''','''N''');
        CommandText := 'Select ' + getCampos + ',Extract(year from s.data)||''/''||Extract(month from s.data) as MesAno ' +
                   'From '   + getTabelas + ' ' +
                   'Where s.data >= :datai and s.data <= :dataf and s.tipopadrao in (5,8,40) '+sSituacao + nTP_MV;
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
  FormsComponent.Caption := 'Outras Saídas no Período de: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);

  end;

  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add( clbTipoOperacao.Selecionados(True) );
  end;
end;

procedure TRptOutrasSaidas.btAtualizarClick(Sender: TObject);
begin
  inherited;
   Atualizar;
end;

procedure TRptOutrasSaidas.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptOutrasSaidas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  clbTipoOperacao.SetDataSet(C_TiposMovimentos);
  if DMProjeto.ExisteParametrosForm then begin
     if DMProjeto.getParametrosForm(1) = 'C' then
        dbgConsulta.AddGroupColumn( dbgConsultaNomeCliente );
     if DMProjeto.getParametrosForm(1) = 'V' then
        dbgConsulta.AddGroupColumn( dbgConsultaNomeVendedor );
  end;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := ( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := ( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptOutrasSaidas.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMECLIENTE' then begin
     DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
     DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  end else if dbgConsulta.TS_SelectedColumn = 'NOMEVENDEDOR' then begin
     if C_ConsultaVendedor.Value > 0 then begin
     	DMProjeto.SetParametrosForm([C_ConsultaVendedor.Value]);
    	DMProjeto.CriarForm('FrmFuncionarios',self,true);
     end;
  end else begin
     DMProjeto.SetParametrosForm([C_ConsultaSaida.Value]);
     DMProjeto.CriarForm('FrmOutrasSaidas',self,true);
  end;
end;

procedure TRptOutrasSaidas.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
       Atualizar;

end;

procedure TRptOutrasSaidas.btClientesClick(Sender: TObject);
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

procedure TRptOutrasSaidas.btVendedorClick(Sender: TObject);
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
procedure TRptOutrasSaidas.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptOutrasSaidas.TS_PopupEdit1CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
	Atualizar;
end;

end.

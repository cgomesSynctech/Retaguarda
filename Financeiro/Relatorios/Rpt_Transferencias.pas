unit Rpt_Transferencias;
                                                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBTLCl, dxGrClms,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu,
  Buttons, TS_SpeedButton, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_CheckBox;

type
  TRptTransferencias = class(TRptPadrao)
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    C_ConsultaDATA: TDateField;
    C_ConsultaCONTAORIGEM: TStringField;
    C_ConsultaCONTADESTINO: TStringField;
    C_ConsultaVALOROPERACAO: TBCDField;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaOPERACAO: TIntegerField;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCONTAORIGEM: TdxDBGridMaskColumn;
    dbgConsultaCONTADESTINO: TdxDBGridMaskColumn;
    dbgConsultaVALOROPERACAO: TdxDBGridMaskColumn;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    dbgConsultaOPERACAO: TdxDBGridMaskColumn;
    C_ConsultaLOGINNAME: TStringField;
    dbgConsultaLOGINNAME: TdxDBGridColumn;
    procedure DataIDateChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTransferencias: TRptTransferencias;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptTransferencias.Atualizar;
begin
  with C_Consulta do begin
    close;
    fetchparams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where o.Data >= :DataI and o.Data <= :DataF and o.TipoOperacao = 8 and '+
                   'o.Situacao is null ';

    params.parambyname('DataI').AsDate := DataI.Date;
    params.parambyname('DataF').AsDate := DataF.Date;
    open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
    FullExpand;
  end;
end;

procedure TRptTransferencias.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptTransferencias.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptTransferencias.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([C_ConsultaOperacao.Value]);
    CriarForm('DlgTransferencias',self,true);
    Atualizar;
  end;
end;

procedure TRptTransferencias.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
end;

end.

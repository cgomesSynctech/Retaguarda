unit Rpt_Lancamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu,
  Buttons, TS_SpeedButton, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt;

type
  TRptLancamentos = class(TRptPadrao)
    C_ConsultaLANCAMENTO: TIntegerField;
    C_ConsultaCODIGOREDUZIDO: TStringField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaORIGEM: TIntegerField;
    C_ConsultaDESCORIGEM: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaHISTORICO: TStringField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaCONTA: TIntegerField;
    C_ConsultaLANCAMENTOITEM: TIntegerField;
    dbgConsultaLANCAMENTO: TdxDBGridMaskColumn;
    dbgConsultaCODIGOREDUZIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaIDGERADOR: TdxDBGridMaskColumn;
    dbgConsultaORIGEM: TdxDBGridMaskColumn;
    dbgConsultaDESCORIGEM: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaHISTORICO: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridMaskColumn;
    dbgConsultaCONTA: TdxDBGridMaskColumn;
    dbgConsultaLANCAMENTOITEM: TdxDBGridMaskColumn;
    C_ConsultaDebito: TIBBCDField;
    C_ConsultaCredito: TIBBCDField;
    dbgConsultaDebito: TdxDBGridColumn;
    dbgConsultaCredito: TdxDBGridColumn;
    lblPeriodo: TTS_Label;
    lblA: TTS_Label;
    dtDataI: TTS_DateTimePicker;
    dtDataF: TTS_DateTimePicker;
    C_ConsultaNumeroDoc: TStringField;
    dbgConsultaNumeroDoc: TdxDBGridColumn;
    dbgConsultaFavorecido: TdxDBGridColumn;
    C_ConsultaDATA_AUDIT: TDateField;
    C_ConsultaHORA_AUDIT: TStringField;
    C_ConsultaNOMEUSUARIO: TStringField;
    dbgConsultaUsuario: TdxDBGridColumn;
    dbgConsultaDataAudit: TdxDBGridColumn;
    dbgConsultaHoraAudit: TdxDBGridColumn;
    dbgConsultaFormName: TdxDBGridColumn;
    C_ConsultaFORMNAME: TStringField;
    C_ConsultaNOME: TStringField;
    dbgConsultaColumn23: TdxDBGridColumn;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    dbgConsultaColumn24: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure dtDataIChange(Sender: TObject);
    procedure dtDataFChange(Sender: TObject);
  private
    Tipo: integer;
    sSQL, sWhere: string;
    procedure Atualizar;
  public
  end;

var
  RptLancamentos: TRptLancamentos;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptLancamentos.Atualizar;
var
  xTipo: string;
begin
  if bCarregando then
    exit;
  try
    dbgConsulta.datasource := nil;
    with C_Consulta do begin
      DisableControls;
      close;
      FetchParams;
      CommandText := 'Select ' + getCampos + ' ' +
                     'From ' + getTabelas + ' ' +
                     'where l.data >= :dDataI and l.data <= :dDataF';

      Params[0].asDateTime := trunc(dtDataI.date);
      Params[1].asDateTime := trunc(dtDataF.date);
      open;
    end;

    while not C_Consulta.eof do begin
      C_Consulta.edit;

      if C_ConsultaValor.value > 0 then
        C_ConsultaCredito.value := C_ConsultaValor.value
      else
        C_ConsultaDebito.value := abs(C_ConsultaValor.value);

      C_Consulta.next;
    end;
  finally
    C_Consulta.EnableControls;
    dbgConsulta.datasource := C_ConsultaDS;
    dbgConsultaData.Sorted := csUp;
  end;
 	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add(lblPeriodo.Caption+' '+dtDataI.Text+' '+lblA.caption+' '+dtDataF.Text);
    FullExpand;
		GotoFirst;
  end;
end;

procedure TRptLancamentos.FormCreate(Sender: TObject);
begin
  inherited;
  sSQL := Q_Consulta.SQL.text;
end;

procedure TRptLancamentos.btAtualizarClick(Sender: TObject);

begin
  inherited;
  Atualizar;
end;

procedure TRptLancamentos.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  bCarregando := true;
  dbgConsultaCODIGOREDUZIDO.visible := DMProjeto.bCodigoContab;
  Tipo := DMProjeto.GetParametrosForm(0);
  if Tipo = 2 then begin
    dbgConsultaUsuario.Visible := true;
    dbgConsultaDataAudit.Visible := true;
    dbgConsultaHoraAudit.Visible := true;
    FormsComponent.caption := 'Auditoria';
//    Q_Consulta.SQL.text := sSQL;
//    Q_Consulta.SQL.Add('order by l.data');
    Ajuda1.HelpContext := 377;
  end
  else begin
//    Q_Consulta.SQL.text := sSQL+ ' and l.origem = 21';
//    Q_Consulta.SQL.Add('order by l.data');
    Ajuda1.HelpContext := 539;
  end;

  dtDataI.date := FirstMonthDay(DMProjeto.dDataSistema);
  dtDataF.date := DMProjeto.dDataSistema;
  bCarregando := false;
  btAtualizarClick(self);
end;

procedure TRptLancamentos.dbgConsultaDblClick(Sender: TObject);
var sForm: string;
    nID,nFavorecido: integer;
begin
  inherited;
  if lowercase(dbgConsulta.FocusedField.FieldName) = 'nome' then begin
    nFavorecido := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'Favorecido',0);
    DMProjeto.SetParametrosForm([nFavorecido]);
    DMProjeto.CriarForm(DMProjeto.FormFav(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'tipofavorecido',0)), Self, false);
  end
  else if (lowercase(dbgConsulta.FocusedField.FieldName) = 'codigoreduzido') or (lowercase(dbgConsulta.FocusedField.FieldName) = 'descconta') then begin
    nID := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'conta',0);
    DMProjeto.SetParametrosForm([nID]);
    DMProjeto.CriarForm('FrmContas', Self, false);
  end
  else begin
    nID   := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'IDGerador',0);
    sForm := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FormName','');
    if (nID <> 0) and (sForm <> '') then begin
      DMProjeto.SetParametrosForm([nID]);
      DMProjeto.CriarForm(sForm, self, true);
    end
    else
      DlgMsg.ShowMsg(3120);
  end;
end;

procedure TRptLancamentos.dtDataIChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptLancamentos.dtDataFChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

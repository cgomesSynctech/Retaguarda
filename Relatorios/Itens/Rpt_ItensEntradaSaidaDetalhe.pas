unit Rpt_ItensEntradaSaidaDetalhe;
                                                         
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, Buttons,
  dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker, dxDBTLCl, dxGrClms,
  teCtrls, TS_EffectsPanel, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt, TS_PopupEdit, TS_PopupFiltrarItens, TS_CheckBox;

type
  TRptItensEntradaSaidaDetalhe = class(TRptPadrao)
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaQUANTIDADE: TBCDField;
    C_ConsultaDATA: TDateField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOPADRAO: TIntegerField;
    C_ConsultaDESC_PADRAO: TStringField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaTIPOPADRAO: TdxDBGridMaskColumn;
    dbgConsultaDESC_PADRAO: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaSUBTOTALITEM: TBCDField;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    C_ConsultaPRECO: TFloatField;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
  private
    { Private declarations }
    nItem : Integer;
  public
    { Public declarations }
    procedure AtualizaItens;
  end;

var
  RptItensEntradaSaidaDetalhe: TRptItensEntradaSaidaDetalhe;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptItensEntradaSaidaDetalhe.AtualizaItens;
var
  sPrimeiroNome : String;
  i : integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    Params.ParamByName('datai').AsDateTime := DataI.Date;
    Params.ParamByName('dataf').AsDateTime := DataF.Date;
    Params.ParamByName('item').AsInteger := nItem;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + DataI.Text + ' a ' + DataF.Text );
    TS_ReportFilter.Add(replace(popupFiltroItens.Hint,#13,''));
  end;
end;

procedure TRptItensEntradaSaidaDetalhe.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensEntradaSaidaDetalhe.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  if DmProjeto.ExisteParametrosForm then begin
      nItem := DmPRojeto.GetParametrosForm(0);
      DataI.Date := DmPRojeto.GetParametrosForm(1);
      DataF.Date := DmPRojeto.GetParametrosForm(2);
  end;
  AtualizaItens;
end;

procedure TRptItensEntradaSaidaDetalhe.dbgConsultaDblClick(Sender: TObject);
var
    nItem, nPadrao : Integer;
begin
  inherited;
  if dbgConsulta.FocusedField.FieldName = 'NOME' then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
    nPadrao := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'tipopadrao',0);
    case nPadrao of
      1,2 : begin
              DMProjeto.SetParametrosForm([nItem]);
              DMProjeto.CriarForm('FrmClientes',Self,true);
            end;
      100,101 : begin
              DMProjeto.SetParametrosForm([nItem]);
              DMProjeto.CriarForm('FrmFornecedores',Self,true);
            end;
    end;
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'item',0);
    nPadrao := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'tipopadrao',0);
    case nPadrao of
      1,2 : begin
              DMProjeto.SetParametrosForm([nItem]);
              DMProjeto.CriarForm('FrmCompras',Self,true);
            end;
      100,101 : begin
              DMProjeto.SetParametrosForm([nItem]);
              DMProjeto.CriarForm('FrmInvoices',Self,true);
            end;
    end;
  end;  
end;

procedure TRptItensEntradaSaidaDetalhe.DataFDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

end.

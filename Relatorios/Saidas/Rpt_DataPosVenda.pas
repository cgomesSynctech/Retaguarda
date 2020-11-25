unit Rpt_DataPosVenda;
                                                                                         
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
  TS_DateTimePicker, dxDBTLCl, dxGrClms, TS_CheckBox;

type
  TRptDataPosVenda = class(TRptPadrao)
    C_ConsultaDATA: TDateField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaDATACONTATO: TDateField;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaDATACONTATO: TdxDBGridDateColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure Atualizar;
    procedure DataIDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptDataPosVenda: TRptDataPosVenda;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TRptDataPosVenda.Atualizar;
var
     nTP_MV: string;
begin
  with C_Consulta do begin
    Close;
    FetchParams;
    CommandText := 'select s.data, s.numero, f.nome, f.fone1, f.fone2, f.fax, i.descricao, si.datacontato '+
                   'From saidasitens si '+
                   '   inner join itens i on i.item = si.item '+
                   '   inner join saidas s on s.saida = si.saida '+
                   '   inner join favorecidos f on f.favorecido = s.favorecido '+
                   'Where si.datacontato >= :datai and si.datacontato <= :dataf ';
    Params.ParamByName('DataI').AsDateTime := DataI.Date;
    Params.ParamByName('DataF').AsDateTime := DataF.Date;
    Open;
  end;
end;

procedure TRptDataPosVenda.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptDataPosVenda.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptDataPosVenda.DataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

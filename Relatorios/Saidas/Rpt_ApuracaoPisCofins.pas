unit Rpt_ApuracaoPisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_DateTimePicker, dxDBTLCl, dxGrClms;

type
  TRptApuracaoPisCofins = class(TRptPadrao)
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaSAIDAITEM: TIntegerField;
    dbgConsultaSAIDAITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaALIQPIS: TdxDBGridCurrencyColumn;
    dbgConsultaALIQCOFINS: TdxDBGridCurrencyColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn;
    dbgConsultaVLRPIS: TdxDBGridMaskColumn;
    dbgConsultaVLRCOFINS: TdxDBGridMaskColumn;
    dbgConsultaVLRTOTIMPOSTOS: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaALIQPIS: TFloatField;
    C_ConsultaALIQCOFINS: TFloatField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaVLRPIS: TFloatField;
    C_ConsultaVLRCOFINS: TFloatField;
    C_ConsultaVLRTOTIMPOSTOS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptApuracaoPisCofins: TRptApuracaoPisCofins;

implementation

uses DM_Projeto;

{$R *.dfm}
procedure TRptApuracaoPisCofins.Atualizar;
Begin
  C_Consulta.Close;
  Q_Consulta.Close;
  Q_Consulta.ParamByName('D1').AsDateTime := DataI.Date;
  Q_Consulta.ParamByName('D2').AsDateTime := DataF.Date;
  C_Consulta.Open;
end;

procedure TRptApuracaoPisCofins.FormCreate(Sender: TObject);
begin
  inherited;
  DataI.Date := ( DMProjeto.dDataSistema - 30);
  DataF.Date := ( DMProjeto.dDataSistema  );
end;

procedure TRptApuracaoPisCofins.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

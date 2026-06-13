unit Rpt_Competencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxEditor, dxEdLib, dxDBELib, TS_DBEditDate,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, DB, IBCustomDataSet, IBQuery, Placemnt, BTOdeum,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner, TS_CheckBox,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
  ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel, dxDBTLCl, dxGrClms, TS_DateTimePicker;

type
  TRptCompetencia = class(TRptPadrao)
    C_ConsultaID: TIntegerField;
    C_ConsultaPARCELA: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaJUROSPAGOS: TBCDField;
    C_ConsultaCREDITOGERADO: TBCDField;
    C_ConsultaCREDITOUTILIZADO: TBCDField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCOMPRA: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaDESCTIPOCOBRANCA: TStringField;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaDESCINDEX: TStringField;
    C_ConsultaCONTADESPESA: TStringField;
    C_ConsultaFORMAPGTO: TStringField;
    C_ConsultaCONTA: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaPARCELA: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridCurrencyColumn;
    dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaDESCONTOS: TdxDBGridCurrencyColumn;
    dbgConsultaJUROSPAGOS: TdxDBGridCurrencyColumn;
    dbgConsultaCREDITOGERADO: TdxDBGridCurrencyColumn;
    dbgConsultaCREDITOUTILIZADO: TdxDBGridCurrencyColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridCurrencyColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaDESCTIPOCOBRANCA: TdxDBGridMaskColumn;
    dbgConsultaINDEXADOR: TdxDBGridMaskColumn;
    dbgConsultaDESCINDEX: TdxDBGridMaskColumn;
    dbgConsultaCONTADESPESA: TdxDBGridMaskColumn;
    dbgConsultaFORMAPGTO: TdxDBGridMaskColumn;
    dbgConsultaCONTA: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    DataInicio: TTS_DateTimePicker;
    DataFinal: TTS_DateTimePicker;
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptCompetencia: TRptCompetencia;

implementation
USES dM_pROJETO ;

{$R *.dfm}

procedure TRptCompetencia.btAtualizarClick(Sender: TObject);
begin
  inherited;
  	  C_Consulta.Close;
          C_Consulta.fetchparams;
          C_Consulta.Params.ParamByName('DataI').AsDateTime := DataInicio.Date;
          C_Consulta.Params.ParamByName('DataF').AsDateTime := DataFinal.Date;
end;

end.

unit Rpt_Inventario;
                                                           
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxEditor,
  dxEdLib, TS_DateTimePicker, TS_CheckBox;

type
  TRptInventario = class(TRptPadrao)
    TS_Label1: TTS_Label;
    dtData: TTS_DateTimePicker;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaCUSTOMEDIO: TBCDField;
    C_ConsultaENTRADAS: TBCDField;
    C_ConsultaSAIDAS: TBCDField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridCurrencyColumn;
    dbgConsultaESTOQUEANT: TdxDBGridCurrencyColumn;
    dbgConsultaENTRADAS: TdxDBGridCurrencyColumn;
    dbgConsultaSAIDAS: TdxDBGridCurrencyColumn;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaESTOQUEANTERIOR: TBCDField;
    C_ConsultaSUBTOTAL: TFloatField;
    dbgConsultaSubTotal: TdxDBGridColumn;
    dbgConsultaitem: TdxDBGridColumn;
    C_ConsultaGRUPO: TStringField;
    dbgConsultaGrupo: TdxDBGridColumn;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaFabricante: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInventario: TRptInventario;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TRptInventario.btAtualizarClick(Sender: TObject);
begin
  inherited;
  C_Consulta.FetchParams;
  C_Consulta.Params.ParamByName('dData').AsDateTime := Trunc(dtData.Date);
  C_Consulta.Open;
  FormsComponent.Caption := 'Relatório do Inventário. Data Referência: ' + DateTostr(dtData.Date);
end;

end.

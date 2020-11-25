unit Rpt_Funcionarios;
                                                                                  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxEdLib,
  TS_CheckBox;

type
  TRptFuncionarios = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaCONTATO: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPAIS: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaSSN: TStringField;
    C_ConsultaCREDITO: TBCDField;
    C_ConsultaCAMPO01: TStringField;
    C_ConsultaCAMPO02: TStringField;
    C_ConsultaCAMPO03: TStringField;
    C_ConsultaCAMPO04: TStringField;
    C_ConsultaCAMPO05: TStringField;
    C_ConsultaCAMPO06: TStringField;
    C_ConsultaCAMPO07: TStringField;
    C_ConsultaCAMPO08: TStringField;
    C_ConsultaCAMPO09: TStringField;
    C_ConsultaCAMPO10: TStringField;
    C_ConsultaCARGO: TStringField;
    C_ConsultaDATANASC: TDateField;
    C_ConsultaDATAADMISSAO: TDateField;
    C_ConsultaDATAAUMENTO: TDateField;
    C_ConsultaOBS: TStringField;
    C_ConsultaPERIODICIDADE: TStringField;
    C_ConsultaULTIMOPGTO: TDateField;
    C_ConsultaULTIMOVALORPAGO: TBCDField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    dbgConsultaPAIS: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaSSN: TdxDBGridMaskColumn;
    dbgConsultaCREDITO: TdxDBGridCurrencyColumn;
    dbgConsultaCAMPO01: TdxDBGridMaskColumn;
    dbgConsultaCAMPO02: TdxDBGridMaskColumn;
    dbgConsultaCAMPO03: TdxDBGridMaskColumn;
    dbgConsultaCAMPO04: TdxDBGridMaskColumn;
    dbgConsultaCAMPO05: TdxDBGridMaskColumn;
    dbgConsultaCAMPO06: TdxDBGridMaskColumn;
    dbgConsultaCAMPO07: TdxDBGridMaskColumn;
    dbgConsultaCAMPO08: TdxDBGridMaskColumn;
    dbgConsultaCAMPO09: TdxDBGridMaskColumn;
    dbgConsultaCAMPO10: TdxDBGridMaskColumn;
    dbgConsultaCARGO: TdxDBGridMaskColumn;
    dbgConsultaDATANASC: TdxDBGridDateColumn;
    dbgConsultaDATAADMISSAO: TdxDBGridDateColumn;
    dbgConsultaDATAAUMENTO: TdxDBGridDateColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaULTIMOPGTO: TdxDBGridDateColumn;
    dbgConsultaULTIMOVALORPAGO: TdxDBGridCurrencyColumn;
    dbgConsultaPERIODICIDADE: TdxDBGridImageColumn;
    C_ConsultaIdade: TIntegerField;
    dbgConsultaIdade: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn36: TdxDBGridColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFuncionarios: TRptFuncionarios;

implementation

uses DM_Projeto, DateUtils;

{$R *.dfm}

procedure TRptFuncionarios.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaIdade.Value := YearsBetween( DMProjeto.dDataSistema, C_ConsultaDataNasc.Value ); 
end;

procedure TRptFuncionarios.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFuncionarios.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFuncionarios.Atualizar;
begin
	with C_Consulta do begin
  	Close;
    CommandText := 'Select '+getCampos + ' ' +
    							 'From '+getTabelas + ' ' +
                   'where f.tipofavorecido = 3 and desativado = ''N'' '+
                   'order by f.nome';
  	Open;
  end;
end;

end.

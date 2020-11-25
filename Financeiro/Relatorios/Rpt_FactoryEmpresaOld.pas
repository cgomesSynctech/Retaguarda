unit Rpt_FactoryEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TransEff, teTimed, teMasked, teDiagon, teForm, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, ComCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, dxExEdtr, dxEdLib, TS_ButtonEdit,
  TS_EditFavorecido, TS_Label, dxEditor, TS_DateTimePicker;

type
  TRptFactoryEmpresa = class(TRptPadrao)
    C_ConsultaFACTORYCHEQUEDET: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNOME: TStringField;
    C_ConsultaDONOCHEQUE: TStringField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaDIASVENCIMENTO: TIntegerField;
    C_ConsultaBANCO: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaENCARGOS: TBCDField;
    C_ConsultaAPAGAR: TBCDField;
    dbgConsultaFACTORYCHEQUEDET: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDONOCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaDIASVENCIMENTO: TdxDBGridMaskColumn;
    dbgConsultaBANCO: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaENCARGOS: TdxDBGridMaskColumn;
    dbgConsultaAPAGAR: TdxDBGridMaskColumn;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dfFavorecido: TTS_EditFavorecido;
    dbTipoFav: TTS_DBLookupTipoFav;
    procedure DataIDateChange(Sender: TObject);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure dfFavorecidoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFactoryEmpresa: TRptFactoryEmpresa;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptFactoryEmpresa.DataIDateChange(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

procedure TRptFactoryEmpresa.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

procedure TRptFactoryEmpresa.dfFavorecidoChange(Sender: TObject);
begin
  inherited;
  //if dfFavorecido.text = '' then
  //	Atualizar;
end;

procedure TRptFactoryEmpresa.Atualizar;
begin
	with C_Consulta do begin
  	close;
    parambyname('DataI').AsDatetime := DataI.Date;
    parambyname('DataF').AsDatetime := DataF.Date;
    parambyname('Favorecido').AsInteger := dfFavorecido.ID;
    parambyname('Todos').AsInteger  := dfFavorecido.ID;
    open;
  end;
end;

procedure TRptFactoryEmpresa.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DataI.OnDateChange := nil;
  DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
end;

end.

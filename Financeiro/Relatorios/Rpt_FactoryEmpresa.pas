unit Rpt_FactoryEmpresa;
                                    
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, ComCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, dxExEdtr, dxEdLib, TS_ButtonEdit,
  TS_EditFavorecido, TS_Label, dxEditor, TS_DateTimePicker, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_CheckBox;

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
    C_ConsultaFACTORYCHEQUE: TIntegerField;
    C_ConsultaTAXA: TBCDField;
    dbgConsultaTAXA: TdxDBGridMaskColumn;
    C_ConsultaDESCSTATUS: TStringField;
    dbgConsultaDESCSTATUS: TdxDBGridColumn;
    procedure DataIDateChange(Sender: TObject);
    procedure dfFavorecidoSelecionou(Sender: TObject);
    procedure dfFavorecidoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFactoryEmpresa: TRptFactoryEmpresa;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptFactoryEmpresa.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFactoryEmpresa.dfFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFactoryEmpresa.dfFavorecidoChange(Sender: TObject);
begin
  inherited;
  if dfFavorecido.text = '' then
  	Atualizar;
end;

procedure TRptFactoryEmpresa.Atualizar;
begin
  with C_Consulta do begin
    close;
    fetchparams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'where fc.data >= :datai and fc.data <= :dataf and ' +
                   '   (fc.favorecido = :favorecido OR :todos = 0)';
    params.parambyname('DataI').AsDatetime := DataI.Date;
    params.parambyname('DataF').AsDatetime := DataF.Date;
    params.parambyname('Favorecido').AsInteger := dfFavorecido.ID;
    params.parambyname('Todos').AsInteger  := dfFavorecido.ID;
    open;
    with dbgConsulta do begin
      TS_ReportFilter.Clear;
      TS_ReportFilter.Add('No período de '+DataI.Text+' a '+DataF.Text);
      if dfFavorecido.ID <> 0 then
      	TS_ReportFilter.Add(dbTipoFav.Text+': '+dfFavorecido.Text);
    	FullExpand;
    end;
  end;
end;

procedure TRptFactoryEmpresa.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DataI.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
	DataF.OnDateChange := nil;
  if DataF.GetEditingText = '' then  DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptFactoryEmpresa.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_ConsultaFactoryCheque.Value]);
    CriarForm('FrmFactoryEmpresa', self, true );
  end;
end;

procedure TRptFactoryEmpresa.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFactoryEmpresa.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(UpperCase(LastDataObject.TableName),'OPERACOESFINANCEIRAS,DEPOSITOS,RETIRADAS')>0 then
  	Atualizar;
end;

end.

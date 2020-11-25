unit Rpt_Ocorrencias;
                                                                 
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  DB, dxEdLib, TS_ButtonEdit, TS_EditFavorecido, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent, DBClient, Provider,
  IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls, TS_EffectsPanel,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel, TS_Label, TS_CheckBox;

type
  TRptOcorrencias = class(TRptPadrao)
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    edFav: TTS_EditFavorecido;
    C_ConsultaDATA: TDateField;
    C_ConsultaOBS: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaLOGINNAME: TStringField;
    C_ConsultaOCORRENCIA: TIntegerField;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaLOGINNAME: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMemoColumn;
    procedure edFavSelecionou(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edFavChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptOcorrencias: TRptOcorrencias;

implementation

uses DM_Projeto;

{$R *.dfm}

{ TRptPadrao1 }

procedure TRptOcorrencias.Atualizar;
begin
{    CommandText := 'select o.ocorrencia, o.data, o.obs, f.nome, u.loginname '+
									 'from ocorrencias o '+
									 'inner join favorecidos f on f.favorecido = o.favorecido '+
									 'left join usuarios u on u.usuario = o.usuario ';}
	with C_Consulta do begin
		Close;
  CommandText := 'Select ' + getCampos + ' ' +
                    'From ' + getTabelas + ' ';             
    if edFav.ID <> 0 then begin
    	CommandText := CommandText + 'where o.favorecido = '+IntToStr(edFav.ID);
      dbgConsultaNome.GroupIndex := -1;
      dbgConsultaNome.Visible		 := false;
    end else begin
      dbgConsultaNome.GroupIndex := 0;
    end;
    Open;
  end;
  with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    if edFav.ID <> 0 then
    	TS_ReportFilter.Add(edFav.Text);
    FullExpand;
  end;
end;

procedure TRptOcorrencias.edFavSelecionou(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptOcorrencias.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptOcorrencias.edFavChange(Sender: TObject);
begin
  inherited;
	if edFav.Text = '' then
  	Atualizar;
end;

procedure TRptOcorrencias.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

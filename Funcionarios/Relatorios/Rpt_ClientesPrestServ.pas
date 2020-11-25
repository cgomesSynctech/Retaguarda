unit Rpt_ClientesPrestServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxEdLib, TS_ButtonEdit, TS_EditFavorecido,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, dxCntner, dxEditor,
  TS_DateTimePicker, StdCtrls, TS_Label, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DB, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, IBCustomDataSet,
  IBQuery, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, ComCtrls, ExtCtrls, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, Placemnt, TS_CheckBox;

type
  TRptClientesPrestServ = class(TRptPadrao)
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEFUNCIONARIO: TdxDBGridMaskColumn;
    dbgConsultaCARGO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;                 
    dbgConsultaVALORCONTRATO: TdxDBGridCurrencyColumn;
    dbgConsultaVALORHORA: TdxDBGridCurrencyColumn;
    dbgConsultaDiferenca: TdxDBGridMaskColumn;
    edFavorecido: TTS_EditFavorecido;
    TS_Label2: TTS_Label;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaNOMEFUNCIONARIO: TStringField;
    C_ConsultaCARGO: TStringField;
    C_ConsultaITEM: TStringField;
    C_ConsultaPRECO: TBCDField;
    C_ConsultaDIFERENCA: TBCDField;
    C_ConsultaCONTRATO: TIntegerField;
    C_ConsultaFUNCIONARIO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaVALORFUNC: TBCDField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptClientesPrestServ: TRptClientesPrestServ;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptClientesPrestServ.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.ExisteParametrosForm then
  	edFavorecido.ID := DMProjeto.getParametrosForm(0)
  else
		Atualizar;
end;

procedure TRptClientesPrestServ.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesPrestServ.Atualizar;
begin
	with C_Consulta do begin
  	close;
    fetchparams;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where (cf.favorecido = :fav or :todos = 0)';

    params.parambyname('fav').asInteger 	 := edFavorecido.ID;
    params.parambyname('todos').asInteger  := edFavorecido.ID;
    open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    if edFavorecido.ID <> 0 then
    	TS_ReportFilter.Add(edFavorecido.Text);
   	FullExpand;
  end;
end;

procedure TRptClientesPrestServ.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesPrestServ.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text='' then
  	Atualizar;
end;

procedure TRptClientesPrestServ.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesPrestServ.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with dbgConsulta do begin
  	if UpperCase(TS_SelectedColumn) = 'NOMEFUNCIONARIO' then begin
    	DMProjeto.SetParametrosForm([C_ConsultaFuncionario.Value]);
      DMProjeto.CriarForm('FrmFuncionarios',self,true);
    end else begin
    	DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
      DMProjeto.CriarForm('FrmClientes',self,true);
    end;
  end;
end;

end.

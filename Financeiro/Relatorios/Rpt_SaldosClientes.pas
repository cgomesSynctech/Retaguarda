unit Rpt_SaldosClientes;
                                                                                              
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  ExtCtrls, dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido,
  dxEditor, dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, TS_CheckBox, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, TS_LastDataObject, DlgMsg,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, Buttons, Menus, TS_PopupMenu,
  ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum;

type
  TRptSaldosClientes = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaCREDITO: TBCDField;
    C_ConsultaPARCELASARECEBER: TBCDField;
    C_ConsultaCHEQUEPRE: TBCDField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaCREDITO: TdxDBGridMaskColumn;
    dbgConsultaPARCELASARECEBER: TdxDBGridMaskColumn;
    dbgConsultaCHEQUEPRE: TdxDBGridMaskColumn;
    dbgConsultaSaldo: TdxDBGridMaskColumn;
    C_ConsultaSaldo: TFloatField;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    C_ConsultaFAVORECIDO: TIntegerField;
    ckbEndereco: TTS_CheckBox;
    C_ConsultaUF: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPreview: TStringField;
    dbgConsultaCelular: TdxDBGridColumn;
    dbgConsultaUF: TdxDBGridColumn;
    dbgConsultaEmail: TdxDBGridColumn;
    dbgConsultaCEP: TdxDBGridColumn;
    dbgConsultaCaixaPostal: TdxDBGridColumn;
    C_ConsultaCEP: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn17: TdxDBGridColumn;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure btAtualizarClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptSaldosClientes: TRptSaldosClientes;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptSaldosClientes.Atualizar;
begin
  with C_Consulta do begin
    Close;
    FetchParams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where (f.Favorecido = :Favorecido OR :Todos = 0) and f.desativado = ''N'' ';

    Params.ParamByName('Favorecido').AsInteger := edFavorecido.ID;
    Params.ParamByName('Todos').AsInteger 			:= edFavorecido.ID;
    Open;
  end;
end;

procedure TRptSaldosClientes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaSaldo.Value := C_ConsultaCredito.Value - C_ConsultaParcelasAReceber.Value - C_ConsultaChequePre.Value;
  C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );
end;

procedure TRptSaldosClientes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptSaldosClientes.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptSaldosClientes.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
	if not ANode.HasChildren then begin
  	if AColumn.Index = dbgConsulta.FindColumnByFieldName('Saldo').Index then begin
			if dbgConsulta.GetFieldValue( ANode, 'Saldo', 0 ) < 0 then
  			AFont.Color := clRed
  		else
  			AFont.Color := clBlue;
  	end;
  end;
end;

procedure TRptSaldosClientes.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptSaldosClientes.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.text = '' then
  	Atualizar; 
end;

procedure TRptSaldosClientes.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
		if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
    	SetParametrosForm([C_ConsultaFavorecido.Value]);
      CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end else if dbgConsulta.TS_SelectedColumn = 'CREDITO' then
    	ImprimirRelatorioFavorecido(Self, 'CREDITO',C_ConsultaFavorecido.Value )
    else if dbgConsulta.TS_SelectedColumn = 'PARCELASARECEBER' then
    	ImprimirRelatorioFavorecido(Self, 'SALDOEMABERTO',C_ConsultaFavorecido.Value )
    else if dbgConsulta.TS_SelectedColumn = 'CHEQUEPRE' then
    	ImprimirRelatorioFavorecido(Self, 'CHEQUESPENDENTES',C_ConsultaFavorecido.Value );
  end;
end;

procedure TRptSaldosClientes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

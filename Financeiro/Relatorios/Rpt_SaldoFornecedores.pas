unit Rpt_SaldoFornecedores;
                                                                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido, dxEditor, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, TS_LastDataObject, DlgMsg,
  TS_CheckBox, teCtrls, TS_EffectsPanel, Buttons, TS_SpeedButton, Menus,
  TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptSaldoFornecedores = class(TRptPadrao)
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaCREDITO: TdxDBGridMaskColumn;
    dbgConsultaCONTASAPAGAR: TdxDBGridMaskColumn;
    dbgConsultaCHEQUEPRE: TdxDBGridMaskColumn;
    C_ConsultaSaldo: TFloatField;
    dbgConsultaSaldo: TdxDBGridMaskColumn;
    dbgConsultaCelular: TdxDBGridColumn;
    dbgConsultaCEP: TdxDBGridColumn;
    dbgConsultaUF: TdxDBGridColumn;
    dbgConsultaCaixaPostal: TdxDBGridColumn;
    dbgConsultaEmail: TdxDBGridColumn;
    C_ConsultaPreview: TStringField;
    ckbEndereco: TTS_CheckBox;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCREDITO: TBCDField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaCONTASAPAGAR: TBCDField;
    C_ConsultaCHEQUEPRE: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn18: TdxDBGridColumn;
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptSaldoFornecedores: TRptSaldoFornecedores;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptSaldoFornecedores.Atualizar;
begin
  with C_Consulta do begin
    close;
    fetchparams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where (f.Favorecido = :Favorecido OR :Todos = 0) and f.desativado = ''N'' '; 

    params.parambyname('Favorecido').AsInteger := edFavorecido.ID;
    params.parambyname('Todos').AsInteger := edFavorecido.ID;
    open;
  end;
end;

procedure TRptSaldoFornecedores.dbgConsultaCustomDrawCell(Sender: TObject;
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

procedure TRptSaldoFornecedores.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaSaldo.Value  := C_ConsultaCredito.Value - C_ConsultaContasAPagar.Value - C_ConsultaChequePre.Value;
  C_ConsultaPreview.Value:= DMProjeto.FormataEndereco( C_Consulta );
end;

procedure TRptSaldoFornecedores.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptSaldoFornecedores.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
  	Atualizar;
end;

procedure TRptSaldoFornecedores.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptSaldoFornecedores.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptSaldoFornecedores.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
		if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
    	SetParametrosForm([C_ConsultaFavorecido.Value]);
      CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  	end else if dbgConsulta.TS_SelectedColumn = 'CREDITO' then
    	ImprimirRelatorioFavorecido(Self, 'CREDITO',C_ConsultaFavorecido.Value )
    else if dbgConsulta.TS_SelectedColumn = 'CONTASAPAGAR' then
    	ImprimirRelatorioFavorecido(Self, 'SALDOEMABERTOFORNEC',C_ConsultaFavorecido.Value )
    else if dbgConsulta.TS_SelectedColumn = 'CHEQUEPRE' then
    	ImprimirRelatorioFavorecido(Self, 'CHEQUESACOMPENSAR',C_ConsultaFavorecido.Value );
  end;
end;

procedure TRptSaldoFornecedores.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
 	Atualizar;
end;

end.

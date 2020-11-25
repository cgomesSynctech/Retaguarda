unit Rpt_ClientesHistoricoDevolucoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, Variants,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido, dxEditor, dxDBEdtr,                       
  dxDBELib, TS_DBLookupTipoFav, dxDBTLCl, dxGrClms, Buttons, TS_SpeedButton,
  TS_LastDataObject, DlgMsg, TS_CheckBox, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptClientesHistoricoDevolucoes = class(TRptPadrao)
    C_ConsultaOPERACAO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVENCIMENTO: TDateField;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    dbgConsultaOPERACAO: TdxDBGridMaskColumn;
    dbgConsultaIDDoc: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaNOMEBANCO: TStringField;
    dbgConsultaDescConta: TdxDBGridMaskColumn;
    dbgConsultaNomeBanco: TdxDBGridMaskColumn;
    C_ConsultaSTATUS: TIntegerField;
    C_ConsultaSituacao: TStringField;
    dbgConsultaSituacao: TdxDBGridColumn;
    TS_SpeedButton1: TTS_SpeedButton;
    C_Consulta_icSelecionado: TIntegerField;
    dbgConsultaStatus: TdxDBGridColumn;
    C_ConsultaIDDOC: TIntegerField;
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
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    C_ConsultaPreview: TStringField;
    ckbEndereco: TTS_CheckBox;
    TS_SpeedButton2: TTS_SpeedButton;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn23: TdxDBGridColumn;
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure dbgConsultaEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure dbgConsultaBandClick(Sender: TObject;
      ABand: TdxTreeListBand);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptClientesHistoricoDevolucoes: TRptClientesHistoricoDevolucoes;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptClientesHistoricoDevolucoes.Atualizar;
begin
{    CommandText := 'Select o.Operacao, od.IDDoc, o.Data, od.Valor, f.Nome, '+
                   'od.NumCheque, od.Vencimento, c.Descricao as DescConta, '+
                   'b.Nome as NomeBanco, od.Favorecido, '+
                   'f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, f.celular, f.cep, f.email, f.CaixaPostal, '+
                   '(Select dd.Status From DepositosDoc dd Where dd.IDDoc = od.IDDoc) as Status '+
                   'From OperacoesFinanceiras o '+
                   'inner join OperacoesFinanceirasDet od on o.operacao = od.operacao '+
                   'inner join DepositosDoc dd on dd.IDDoc = od.IDDoc '+
                   'left join Favorecidos f on od.favorecido = f.favorecido '+
                   'left join Favorecidos b on dd.banco = b.favorecido '+
         					 'left join Contas c on o.ContaOrigem = c.Conta '+ }

  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where o.TipoOperacao = 9 and o.situacao is null ';
    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + 'and o.Favorecido = '+IntToStr(edFavorecido.ID);
		CommandText := CommandText + ' order by o.TipoOperacao, o.Data';
    Open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptClientesHistoricoDevolucoes.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
   	Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.FormCreate(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.C_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
	if C_ConsultaStatus.Value = 4 then
  	C_ConsultaSituacao.Value := 'Devolvido'
  else
  	C_ConsultaSituacao.Value := 'Acertado';
  C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );
end;

procedure TRptClientesHistoricoDevolucoes.dbgConsultaEditing(
  Sender: TObject; Node: TdxTreeListNode; var Allow: Boolean);
begin
  inherited;
  Allow := dbgConsulta.GetFieldValue( Node, 'Status', 0 ) = 4; 
end;

procedure TRptClientesHistoricoDevolucoes.TS_SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  if C_Consulta.RecordCount > 0 then begin
  	DMProjeto.ImprimirRecibo(20,'','',':IDDoc='+C_ConsultaIDDoc.AsString,'');
  end;
end;

procedure TRptClientesHistoricoDevolucoes.ckbEnderecoChange(
  Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptClientesHistoricoDevolucoes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.btAtualizarClick(
  Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.dbgConsultaBandClick(
  Sender: TObject; ABand: TdxTreeListBand);
begin
  inherited;
	ShowMessage('Cliquei!');
end;

procedure TRptClientesHistoricoDevolucoes.TS_SpeedButton2Click(
  Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
		SetParametrosForm([null,C_ConsultaFavorecido.Value]);
   	CriarForm('DlgDepositosInstantaneos',self,true);
    LimparParametrosForm;
  end;
end;

procedure TRptClientesHistoricoDevolucoes.dbgConsultaCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
	if UpperCase(TDxDBGridColumn(AColumn).FieldName) = 'SITUACAO' then begin
  	if dbgConsulta.GetFieldValue(ANode, 'Status', 0) = 4 then
    	AFont.Color := clRed
    else
    	AFont.Color := clBlack;
  end;
end;

end.

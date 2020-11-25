unit Dlg_ChequesRecebidosLight;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DB, Provider, DBClient, IBCustomDataSet, IBQuery,
  dxEdLib, TS_ImageEdit, TS_ButtonEdit, TS_EditFavorecido, dxCntner,
  dxEditor, dxDBEdtr, dxDBELib, TS_DBLookupTipoFav, TS_QDBGrid, Placemnt,
  FormsComponent, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, ImgList;

type
  TDlgChequesLight = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    dbgCheques: TTS_QDBGrid;
    TS_Label1: TTS_Label;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    cmbStatus: TTS_ImageEdit;
    Q_Cheques: TIBQuery;
    C_Cheques: TClientDataSet;
    C_ChequesDS: TDataSource;
    P_Cheques: TDataSetProvider;
    C_ChequesIDDOC: TIntegerField;
    C_ChequesNOME: TStringField;
    C_ChequesNUMCHEQUE: TIntegerField;
    C_ChequesVENCIMENTO: TDateField;
    C_ChequesDATA: TDateField;
    C_ChequesSTATUS: TIntegerField;
    C_ChequesFORMAPAGAMENTO: TStringField;
    dbgChequesNOME: TdxDBGridMaskColumn;
    dbgChequesNUMCHEQUE: TdxDBGridMaskColumn;
    dbgChequesVENCIMENTO: TdxDBGridDateColumn;
    dbgChequesDATA: TdxDBGridDateColumn;
    dbgChequesFORMAPAGAMENTO: TdxDBGridMaskColumn;
    dbgChequesSTATUS: TdxDBGridImageColumn;
    C_ChequesVALOR: TBCDField;
    dbgChequesVALOR: TdxDBGridMaskColumn;
    Imagens: TImageList;
    Ocorrncias1: TMenuItem;
    C_Cheques_icSelecionado: TIntegerField;
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure cmbStatusChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure Ocorrncias1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  DlgChequesLight: TDlgChequesLight;

implementation

uses DM_Projeto, Dlg_OcorrenciasDoCheque;

{$R *.dfm}

{ TDlgChequesLight }

procedure TDlgChequesLight.Atualizar;
begin
	with C_Cheques do begin
  	Close;
    CommandText := 'select dd.iddoc, f.nome, dd.numcheque, dd.vencimento, d.data, '+
    							 'dd.status, fp.descricao as formapagamento, dd.valor '+
									 'from depositos d '+
									 'inner join depositosdoc dd on dd.deposito = d.deposito '+
									 'inner join formaspagamento fp on fp.formapagamento = dd.formapagamento '+
									 'left join favorecidos f on f.favorecido = d.favorecido '+
									 'where dd.formapagamento > 1 and  dd.formapagamento < 4 ';
    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + ' and d.favorecido = '+IntToStr(edFavorecido.ID);
    if cmbStatus.Text <> '0' then
    	CommandText := CommandText + ' and dd.status = '+cmbStatus.Text;
		CommandText := CommandText + ' order by dd.iddoc';
    Open;
  end;
end;

procedure TDlgChequesLight.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TDlgChequesLight.cmbStatusChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TDlgChequesLight.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	cmbStatus.Text := '3';
end;

procedure TDlgChequesLight.btLimparClick(Sender: TObject);
begin
  inherited;
	dbgCheques.VisualizarImpressao;
end;

procedure TDlgChequesLight.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Cheques.RecordCount = 0 then
  	exit;
  if dbgCheques.Selecionados = '' then
  	dbgCheques.Selecionar;
  with DMProjeto do begin
  	SetParametrosForm([dbgCheques.Selecionados]);
    CriarForm('DlgAlteraStatusCheqRec', self, true);
    C_Cheques.Close;
    C_Cheques.Open;
  end;
end;

procedure TDlgChequesLight.Ocorrncias1Click(Sender: TObject);
begin
  inherited;
	DlgOcorrenciasDoCheque := TDlgOcorrenciasDoCheque.Create(self);
  DlgOcorrenciasDoCheque.ID := C_ChequesIDDoc.AsInteger;
  DlgOcorrenciasDoCheque.ShowModal;
  DlgOcorrenciasDoCheque.Free;
end;

end.

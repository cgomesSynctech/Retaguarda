unit Rpt_ChequesNaEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, Db,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, IBCustomDataSet, IBQuery, 
  TS_LastDataObject, DlgMsg, dxCntner, TS_QDBGrid,
  ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel, 
  dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker, TS_CheckBox,
  TS_ButtonEdit, TS_EditFavorecido, dxDBEdtr, dxDBELib, TS_DBLookupTipoFav,
  teCtrls, TS_EffectsPanel, Buttons, TS_SpeedButton, Menus, TS_PopupMenu,
  TS_ComboBox, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, BTOdeum, Placemnt;

type
  TRptChequesNaEmpresa = class(TRptPadrao)
    C_ConsultaIDDOC: TIntegerField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaNOMEBANCO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaDESCFORMAPAG: TStringField;
    dbgConsultaIDDOC: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaNOMEBANCO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaDESCFORMAPAG: TdxDBGridMaskColumn;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    cmbTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    ckbEndereco: TTS_CheckBox;
    C_ConsultaPreview: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaDESCSTATUS: TStringField;
    dbgConsultaDescStatus: TdxDBGridColumn;
    C_ConsultaDEPOSITO: TIntegerField;
    C_ConsultaTIPODEPOSITO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    cmbPeriodo: TTS_ComboBox;
    ckbData: TTS_CheckBox;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn12: TdxDBGridColumn;
    procedure DataIDateChange(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ckbEnderecoChange(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure ckbDataChange(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptChequesNaEmpresa: TRptChequesNaEmpresa;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

{ TRptPadrao1 }

procedure TRptChequesNaEmpresa.Atualizar;
var sPeriodo : string;
begin
{    CommandText := 'Select dd.IDDoc, dd.NumCheque, f.Nome, dd.Valor, dd.Vencimento, '+
                   'b.Nome as NomeBanco, d.Data, c.Descricao as DescConta, '+
                   'fp.Descricao as DescFormaPag, sd.Descricao as DescStatus, '+
           				 'd.Deposito, d.TipoDeposito, d.favorecido, f.tipofavorecido, '+
                   'f.Endereco, f.Cidade, f.UF, f.fone1, f.fax, f.cep, f.email, '+
                   'f.CaixaPostal, f.celular, f.fone2 '+
									 'From DepositosDoc dd '+
         					 'inner join Depositos d on dd.deposito = d.deposito '+
         					 'left join Favorecidos f on d.favorecido = f.favorecido '+
         					 'left join Favorecidos b on dd.banco = b.favorecido '+
         					 'left join Contas c on dd.ContaAtual = c.Conta '+
         					 'inner join FormasPagamento fp on dd.formapagamento = fp.formapagamento '+
         					 'inner join StatusDoc sd on dd.status = sd.status '+
									 'Where '; }

  if cmbPeriodo.ItemIndex = 0 then
    sPeriodo := 'dd.Vencimento'
  else
    sPeriodo := 'd.data';
  with C_Consulta do begin
  	close;
    fetchparams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where ';

    if ckbData.Checked then begin
       CommandText := CommandText +' '+sPeriodo+' >= :DataI and '+sPeriodo+' <= :DataF and ';
    	 params.parambyname('DataI').AsDateTime := DataI.Date;
    	 params.parambyname('DataF').AsDateTime := DataF.Date;
    end;

    if edFavorecido.ID<>0 then
    	CommandText := CommandText + 'd.favorecido = '+IntToStr(edFavorecido.ID)+ ' and ';

    CommandText := CommandText + 
    							 'dd.Status > 2 and dd.Status < 5 '+
    							 'and dd.ForaDaEmpresa = ''N'' '+
            			 'and fp.Especie = 1 ';
    Open;
  end;
	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(cmbPeriodo.Text+' de '+DataI.Text+' a '+DataF.Text);
    if (edFavorecido.ID<>0) then
    	TS_ReportFilter.Add(cmbTipoFav.Text+': '+edFavorecido.Text);
    FullExpand;
  end;
end;

procedure TRptChequesNaEmpresa.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesNaEmpresa.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesNaEmpresa.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema ;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema ;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  if DMProjeto.ExisteParametrosForm then begin
	  ckbData.OnChange := nil;
    ckbData.Checked  := True;
    ckbData.OnChange := ckbDataChange;
    edFavorecido.ID	 := DMProjeto.GetParametrosForm(1);
  end else begin
	cmbPeriodo.ItemIndex := 0;
  end;
end;

procedure TRptChequesNaEmpresa.ckbEnderecoChange(Sender: TObject);
begin
  inherited;
  if ckbEndereco.Checked then
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
  	dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptChequesNaEmpresa.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
	C_ConsultaPreview.Value := DMProjeto.FormataEndereco( C_Consulta );
end;

procedure TRptChequesNaEmpresa.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesNaEmpresa.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.Text = '' then
  	Atualizar;
end;

procedure TRptChequesNaEmpresa.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	if dbgConsulta.TS_SelectedColumn = 'NOME' then begin
  	with DMProjeto do begin
    	SetParametrosForm([C_ConsultaFavorecido.Value]);
      CriarForm(getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
    end;
  end else begin
  	with DMProjeto do begin
    	SetParametrosForm([C_ConsultaDeposito.Value]);
      CriarForm(getTelaGeradora(C_ConsultaTipoDeposito.Value),self,true);
    end;
	end;
end;

procedure TRptChequesNaEmpresa.cmbPeriodoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptChequesNaEmpresa.ckbDataChange(Sender: TObject);
begin
  inherited;
	cmbPeriodo.Enabled := ckbData.Checked;
  DataI.Enabled := ckbData.Checked;
  DataF.Enabled := ckbData.Checked;
  Atualizar;
end;

procedure TRptChequesNaEmpresa.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS,RETIRADAS,OPERACOESFINANCEIRAS')>0 then
  	Atualizar;
end;

end.

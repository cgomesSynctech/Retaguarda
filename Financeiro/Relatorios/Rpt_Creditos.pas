unit Rpt_Creditos;                                                                              
                                    
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, TS_RadioButton,
  dxExEdtr, dxEdLib, TS_CheckBox, teCtrls, TS_EffectsPanel, Buttons,
  TS_SpeedButton, Menus, TS_PopupMenu, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, dxEditor, TS_ButtonEdit, TS_EditFavorecido, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt;

type
  TRptCreditos = class(TRptPadrao)
    rdCred: TTS_RadioButton;
    rdDev: TTS_RadioButton;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaCEP: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    C_ConsultaUF: TStringField;
    C_ConsultaID: TIntegerField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaDATA: TDateField;
    C_ConsultaFATOGERADOR: TStringField;
    dbgConsultaValor: TdxDBGridColumn;
    dbgConsultaFatoGerador: TdxDBGridColumn;
    dbgConsultaData: TdxDBGridColumn;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPreview: TStringField;
    edFavorecido: TTS_EditFavorecido;
    cmbTipoFav: TTS_DBLookupTipoFav;
    C_ConsultaTIPOOPERACAO: TIntegerField;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    dbgConsultaColumn7: TdxDBGridColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    procedure rdDevClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptCreditos: TRptCreditos;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptCreditos.Atualizar;
begin
{    CommandText := 'Select t.ID, t.favorecido, t.Valor, t.data, t.fatogerador, '+
           				 'f.Nome, f.Endereco, f.Cidade, f.UF, f.fone1, f.fone2, f.fax, '+
                   'f.celular, f.cep, f.email,  f.CaixaPostal '+
									 'From TransacoesCreditos t '+
         					 'inner join Favorecidos f on t.favorecido = f.favorecido '+
									 'Where t.EmpresaDevendo = :E '+iif(edFavorecido.ID<>0,' and t.favorecido = '+IntToStr(edFavorecido.ID)+' ','  ')+
									 'Order by f.nome, t.data ';        }
  with C_Consulta do begin
    Close;
    fetchparams;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where t.EmpresaDevendo = :E '+iif(edFavorecido.ID<>0,' and t.favorecido = '+IntToStr(edFavorecido.ID)+' ','  ')+
                   'and f.credito > 0 '+
                   'Order by f.nome, t.idgerador ';

    if rdCred.Checked then
    	params.parambyname('E').AsString := 'S'
    else
    	params.parambyname('E').AsString := 'N';
    open;
  end;
 	with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(iif(rdCred.Checked,rdCred.Caption,rdDev.Caption));
    if edFavorecido.ID <> 0 then
    	TS_ReportFilter.Add(cmbTipoFav.text+': '+edFavorecido.text);
    FullCollapse;
  end;
end;

procedure TRptCreditos.rdDevClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptCreditos.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptCreditos.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	if ExisteParametrosForm then begin
      if QtdParametrosForm > 1 then begin
    		edFavorecido.ID := getParametrosForm(1);
        if QtdParametrosForm > 2 then begin
          if getParametrosForm(2) = 'F' then
            rdDev.checked := true;
        end;
      end;
    end else
    	Atualizar;
  end;
end;

procedure TRptCreditos.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
  dbgConsulta.FullExpand;
end;

procedure TRptCreditos.edFavorecidoChange(Sender: TObject);
begin
  inherited;
	if edFavorecido.text = '' then
  	Atualizar;
end;

procedure TRptCreditos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_ConsultaIDGerador.Value]);
    CriarForm(GetTelaGeradora(C_ConsultaTipoOperacao.Value),self,true);
  end;
end;

procedure TRptCreditos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS,RETIRADAS')>0 then
    Atualizar;
end;

end.

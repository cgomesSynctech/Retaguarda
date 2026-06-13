unit Rpt_EntradaItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor, dxEdLib,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, TS_PopupEdit, TS_PopupFiltrarItens, TS_CheckBox,
  CheckLst, TS_CheckListBox;

type
  TRptEntradaItem = class(TRptPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_TipoMovimentoDS: TDataSource;
    TS_Label3: TTS_Label;
    PopupFiltrarItens: TTS_PopupFiltrarItens;
    btFornecedores: TTS_SpeedButton;
    ppeTipoOperacao: TTS_PopupEdit;
    clbTipoOperacao: TTS_CheckListBox;
    C_ConsultaQTDENTRADA: TFloatField;
    C_ConsultaPRECOMEDIO: TFloatField;
    C_ConsultaTOTALCOMPRA: TBCDField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaDATACADASTRO: TDateField;
    C_ConsultaCST: TStringField;
    C_ConsultaSITUACAOECF: TStringField;
    C_ConsultaCLASFISCAL: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    C_ConsultaTRIB_FEDERAL: TStringField;
    dbgConsultaQTDENTRADA: TdxDBGridMaskColumn;
    dbgConsultaPRECOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaTOTALCOMPRA: TdxDBGridCurrencyColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaDATACADASTRO: TdxDBGridDateColumn;
    dbgConsultaCST: TdxDBGridMaskColumn;
    dbgConsultaSITUACAOECF: TdxDBGridMaskColumn;
    dbgConsultaCLASFISCAL: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaTRIB_FEDERAL: TdxDBGridMaskColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure TS_LCBTipoMovimentoChange(Sender: TObject);
    procedure PopupFiltrarItensSelecionou(Sender: TObject);
    procedure btFornecedoresClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    sFornecedores, sNomesFornecedores : String;
  end;

var
  RptEntradaItem: TRptEntradaItem;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptEntradaItem.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  if DMProjeto.ExisteParametrosForm then begin
    with dbgConsulta do begin
   	 for i:=0 to GroupColumnCount-1 do
       	 DeleteGroupColumn(i);
     	 if DMProjeto.getParametrosForm(1) = 'G' then
         AddGroupColumn( dbgConsultaDescricaoGrupo )
     	 else if DMProjeto.getParametrosForm(1) = 'F' then
       	AddGroupColumn( dbgConsultaFabricante );
    end;
  end;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema ;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema ;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptEntradaItem.Atualizar;

var
 nTP_MV, sTipoOperacao: string;
begin
 nTP_MV := '';
 sTipoOperacao := clbTipoOperacao.Selecionados;

 if (sTipoOperacao = '') then
   nTP_MV := ' and e.tipomovimento is null '
 else
   nTP_MV := ' and e.tipomovimento in ('+sTipoOperacao+')';
   with C_Consulta do begin
	Close;
        CommandText := 'Select ' + getCampos + ' ' +
                   'From '   + getTabelas + ' ' +
                   'Where  e.data >= :datai and e.data <= :dataf and tm.tipo = ''E'' and e.situacao = ''N'' '+
                   nTP_MV+' and '+PopupFiltrarItens.getSQL;
        if sFornecedores <> '' then begin
           CommandText := CommandText + ' and e.favorecido in (' + sFornecedores +')';
        end;

        CommandText := CommandText + ' group by i.item, i.codigo, i.descricao, i.customedio, i.unidade, i.precocompra, i.custocontabil, i.referencia, i.datacadastro, '+
                                     ' i.cst, i.situacaoecf, i.clasfiscal, gi.descricaogrupo, fb.descricao, t.descricao order by i.codigo';

	Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
	Open;
     end;
  with dbgConsulta do begin
  	FullExpand;
  end;
  FormsComponent.Caption := 'Entradas de Itens no Período de: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
end;

procedure TRptEntradaItem.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptEntradaItem.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptEntradaItem.TS_LCBTipoMovimentoChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptEntradaItem.PopupFiltrarItensSelecionou(
  Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptEntradaItem.btFornecedoresClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sFornecedores, 2]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sFornecedores := GetParametrosForm(0);
      sNomesFornecedores := GetParametrosForm(1);
      LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptEntradaItem.dbgConsultaDblClick(Sender: TObject);
var
   nId : Integer;
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMECLIENTE' then begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmFornecedores',self,true);
  	end;
  end
  else begin
		with DMProjeto do begin
      nId := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'Entrada',0);
  		SetParametrosForm([nId]);
    	CriarForm('FrmCompras',self,true);
    end;
  end;
end;

procedure TRptEntradaItem.FormCreate(Sender: TObject);
begin
  inherited;
  C_TiposMovimentos.close;
  C_TiposMovimentos.open;
  clbTipoOperacao.SetDataSet(C_TiposMovimentos);
  clbTipoOperacao.SetSelecionados('4');
end;

procedure TRptEntradaItem.ppeTipoOperacaoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
end;

end.

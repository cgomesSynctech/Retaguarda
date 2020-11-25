unit Rpt_ExtratoEntradasResumido;
                                                                                       
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, IBCustomDataSet, Db, StdCtrls, CheckLst, TS_CheckListBox,
  dxExEdtr, dxEdLib, TS_CheckBox, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  TS_PopupEdit, dxCntner, dxEditor, TS_DateTimePicker, Buttons,
  TS_SpeedButton, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, IBQuery, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, TS_QDBGrid, ExtCtrls, TS_Label,
  dxfLabel, TS_MaxPanel, Menus, TS_PopupMenu, ComCtrls, Variants, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_PopupFiltrarItens;

type
  TRptExtratoEntradasResumido = class(TRptPadrao)
    edDataIni: TTS_DateTimePicker;
    edDataFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaIDITEM: TdxDBGridMaskColumn;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaGRUPO: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaDESCFABRIC: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridColumn;
    C_ConsultaSUBTOTALITEM: TFloatField;
    dbgConsultaSUBTOTALCC: TdxDBGridColumn;
    dbgConsultaSUBTOTALPC: TdxDBGridColumn;
    C_ConsultaSUBTOTALPC: TFloatField;
    C_ConsultaULTIMACOMPRA: TDateField;
    dbgConsultaEstoque: TdxDBGridColumn;
    dbgConsultaQTDEMAXIMO: TdxDBGridColumn;
    dbgConsultaQTDEMINIMO: TdxDBGridColumn;
    dbgConsultaUltimaCompra: TdxDBGridColumn;
    dbgConsultaUltQtdCompra: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaQTDEMINIMO: TBCDField;
    C_ConsultaQTDEMAXIMO: TBCDField;
    C_ConsultaULTQTDECOMPRA: TBCDField;
    C_ConsultaFATORUNDCOMPRA: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaicEstoque: TFloatField;
    C_ConsultaicMinimo: TFloatField;
    C_ConsultaicMaximo: TFloatField;
    C_ConsultaicUltQtdeCompra: TFloatField;
    C_ConsultaicCustoMedio: TFloatField;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    C_ConsultaTOTALQTDE: TFloatField;
    C_ConsultaSUBTOTALCM: TFloatField;
    C_ConsultaSUBTOTALCC: TFloatField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaDATA: TDateField;
    C_ConsultaMESANO: TStringField;
    dbgConsultaData: TdxDBGridColumn;
    dbgConsultaMesAno: TdxDBGridColumn;
    procedure lkTipoItemChange(Sender: TObject);
    procedure clbTipoMovimentoClickCheck(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure PeriodoDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
  private
    { Private declarations }
    OrderBy, sClientes, sFornecedores: string;
    FAddGroupCliente, FAddGroupGrupo, FAddGroupFabricante, FAddGroupItem, FAddGroupFornecedor: Boolean;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;
    sNomesFornecedores, sNomesClientes: String;
    procedure AtualizaItens;
  public
    { Public declarations }
  end;

var
  RptExtratoEntradasResumido: TRptExtratoEntradasResumido;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptExtratoEntradasResumido.AtualizaItens;
var condData, condTipoMov : string;
    i : integer;
begin
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where t.data >= :datai and t.data <= :dataf and t.quantidade > 0 ' +
                   iif(popupFiltroItens.getSQL(false)<>'',' and ' +popupFiltroItens.getSQL(false),'') +
                   ' group by t.item, i.codigo, i.unidadeentrada, i.grupo, i.descricao, i.referencia,  fab.descricao, g.descricaogrupo, i.estoque, i.qtdeminimo, i.qtdemaximo, i.ultimacompra, i.ultqtdecompra, i.customedio, i.fatorundcompra, t.data ';
		Params.ParamByName('datai').AsDateTime := edDataIni.Date;
    Params.ParamByName('dataf').AsDateTime := edDataFim.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de ' + edDataini.Text+ ' a ' + edDatafim.Text);
    TS_ReportFilter.Add(replace(popupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptExtratoEntradasResumido.lkTipoItemChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasResumido.clbTipoMovimentoClickCheck(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasResumido.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasResumido.PeriodoDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasResumido.dbgConsultaDblClick(Sender: TObject);
var
  nItem, nTipoOrigem : Integer;
  sForm : String;
begin
  inherited;
  if (UpperCase(dbgConsulta.FocusedField.FieldName) = 'CODIGO')
  or (UpperCase(dbgConsulta.FocusedField.FieldName) = 'DESCRICAO')
  or (UpperCase(dbgConsulta.FocusedField.FieldName) = 'REFERENCIA') then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, True);
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem,edDataIni.date,edDataFim.date]);
    DMProjeto.CriarForm('RptExtratoEntradas', Self, True);
  end;
end;


{


Select si.saidaitem as ID, si.item as IDitem, i.grupo as IDGRUPO,
s.data, i.codigo, si.descricao as item, si.preco, i.unidade,
si.quantidade,si.subtotalitem, 
si.customedio, (si.customedio*si.quantidade) as subtotalcusto,
s.numero as notafiscal,
s.numero as inf_saida,
s.favorecido as IDCliente,
c.nome as cliente,
c.tipofavorecido as TipoFavorecidoCliente,
s.vendedor as IDVendedor,
v.nome as vendedor,
v.tipofavorecido as TipoFavorecidoVendedor,
f.descricao as fabricante,
i.ultimofornecedor as IDUltFornecedor,
fr.nome as fornecedor,
fr.tipofavorecido as TipoFavorecidoFornecedor,
g.descricaogrupo as grupo,
ti.descricao as tipoitem,
s.saida
From saidasitens si
Join saidas s On si.saida=s.saida
Join itens i On si.item=i.item
Left Join favorecidos c On s.favorecido=c.favorecido
Left Join favorecidos v On s.vendedor=v.favorecido
Left Join fabricantes f On i.fabricante=f.fabricante
Left Join favorecidos fr On i.ultimofornecedor=fr.favorecido
Left Join grupos g On i.grupo=g.grupo
Left Join tipositens ti On i.tipoitem=ti.tipoitem
where s.situacao = 'N'


}
procedure TRptExtratoEntradasResumido.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  OrderBy := ' order by t.data,t.transacaoestoque';
  sClientes := '';
  sFornecedores := '';
  sNomesFornecedores := '';
  sNomesClientes := '';
  DMProjeto.sItensSelec := '';
  DMProjeto.sGruposSelec := '';
  DMProjeto.sFabricSelec := '';
  edDataIni.OnDateChange := nil;
  edDataFim.OnDateChange := nil;
  if edDataIni.GetEditingText = '' then edDataIni.Date := DMProjeto.dDataSistema;
  if edDataFim.GetEditingText = '' then edDataFim.Date := DMProjeto.dDataSistema;
  edDataIni.OnDateChange := PeriodoDateChange;
  edDataFim.OnDateChange := PeriodoDateChange;
  AtualizaItens;
end;

procedure TRptExtratoEntradasResumido.C_ConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet['icEstoque']:= DataSet['Estoque'];
  DataSet['icMinimo'] := DataSet['QtdeMinimo'];
  DataSet['icMaximo'] := DataSet['QtdeMaximo'];
  DataSet['icUltQtdeCompra'] := C_ConsultaUltQtdeCompra.AsInteger;
  DataSet['icCustoMedio'] := DataSet['CustoMedio'];
end;

procedure TRptExtratoEntradasResumido.PopupFiltroItensSelecionou(
  Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

end.

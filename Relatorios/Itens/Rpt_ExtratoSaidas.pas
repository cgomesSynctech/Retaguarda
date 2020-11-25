unit Rpt_ExtratoSaidas;                                                                         

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
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  TS_PopupFiltrarItens;

type
  TRptExtratoSaidas = class(TRptPadrao)
    edDataIni: TTS_DateTimePicker;
    edDataFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    btCliente: TTS_SpeedButton;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaIDCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDOCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaIDITEM: TdxDBGridMaskColumn;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaTIPOORIGEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaGRUPO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaQUANTIDADE: TBCDField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCFABRIC: TStringField;
    C_ConsultaULTIMOFORNECEDOR: TIntegerField;
    C_ConsultaFORNECEDOR: TStringField;
    C_ConsultaTIPOFAVORECIDOFORN: TIntegerField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridColumn;
    C_ConsultaTRANSACAOESTOQUE: TIntegerField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaSUBTOTALCM: TFloatField;
    C_ConsultaSUBTOTALPC: TFloatField;
    C_ConsultaSUBTOTALCC: TFloatField;
    dbgConsultaSUBTOTALCC: TdxDBGridColumn;
    dbgConsultaSUBTOTALPC: TdxDBGridColumn;
    dbgConsultaTipoOrigem: TdxDBGridColumn;
    C_ConsultaDESCORIGEM: TStringField;
    dbgConsultaDESCORIGEM: TdxDBGridColumn;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    popupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesANo: TdxDBGridColumn;
    procedure btClienteClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure lkTipoItemChange(Sender: TObject);
    procedure clbTipoMovimentoClickCheck(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure PeriodoDateChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure popupFiltroItensSelecionou(Sender: TObject);
    procedure edDataIniDateChange(Sender: TObject);
  private
    { Private declarations }
    SelectInicial, OrderBy, sClientes, sFornecedores: string;
    FAddGroupCliente, FAddGroupGrupo, FAddGroupFabricante, FAddGroupItem, FAddGroupFornecedor: Boolean;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;
    sNomesFornecedores, sNomesClientes: String;
    procedure AtualizaItens;
  public
    { Public declarations }
  end;

var
  RptExtratoSaidas: TRptExtratoSaidas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptExtratoSaidas.AtualizaItens;
var condData, condClientes, sPrimeiroNome : string;
    i : integer;
begin
  condClientes:='';
  if sClientes<>'' then
    condClientes := ' And t.favorecido In ('+sClientes+')';
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas +
                   'Where t.data >= :datai and t.data <= :dataf and t.quantidade < 0 ' +
                   condClientes+
                   iif(popupFiltroItens.getSQL( false )<>'',' and '+popupFiltroItens.getSQL( false ),'')+
                   ' order by t.data,t.transacaoestoque ';
		Params.ParamByName('datai').AsDateTime := edDataIni.Date;
    Params.ParamByName('dataf').AsDateTime := edDataFim.Date;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de ' + edDataini.Text+ ' a ' + edDatafim.Text);
    if sNomesClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesClientes,',',1));
      for i := 2 to ContaStrings(sNomesClientes,',') do
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesClientes,',',i));
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
    TS_ReportFilter.Add(replace(popupFiltroItens.Hint,#13,' '));
    FullExpand;
  end;
end;

procedure TRptExtratoSaidas.btClienteClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaItens;
    end;
  end;
end;

procedure TRptExtratoSaidas.btVendedorClick(Sender: TObject);
begin
  inherited;
{  with DMProjeto do begin
    SetParametrosForm([' And isvendedor='+QuotedStr('S')+' ',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sVendedores := GetParametrosForm(0);
      sNomesVendedores := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaItens;
    end;
  end;  }
end;

procedure TRptExtratoSaidas.lkTipoItemChange(Sender: TObject);
begin  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidas.clbTipoMovimentoClickCheck(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidas.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidas.PeriodoDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoSaidas.dbgConsultaDblClick(Sender: TObject);
var
  nItem,nTipoOrigem : Integer;
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
    if UpperCase(dbgConsulta.FocusedField.FieldName) = 'NOME' then begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'favorecido', 0);
      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaFavorecido(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOFAVORECIDO', 0));
    end
    else if UpperCase(dbgConsulta.FocusedField.FieldName) = 'FORNECEDOR' then begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'ultimofornecedor', 0);
      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaFavorecido(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOFAVORECIDOFORN', 0));
    end
    else begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDGERADOR', 0);
      nTipoOrigem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOORIGEM', 0);

      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaGeradora(nTipoOrigem);
    end;
    DMProjeto.CriarForm(sForm, Self, True);
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
procedure TRptExtratoSaidas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  OrderBy := ' order by t.data,t.transacaoestoque';
  sClientes := '';
  sFornecedores := '';
  sNomesFornecedores := '';
  sNomesClientes := '';
  edDataIni.OnDateChange := nil;
  edDataFim.OnDateChange := nil;
  if DMProjeto.ExisteParametrosForm then begin
    popupFiltroItens.TS_ItensSelecionados := DMProjeto.GetParametrosForm(0);
    edDataIni.date := DMProjeto.GetParametrosForm(1);
    edDataFim.date := DMProjeto.GetParametrosForm(2);
  end
  else begin
    if edDataIni.GetEditingText = '' then edDataIni.Date := DMProjeto.dDataSistema;
    if edDataFim.GetEditingText = '' then edDataFim.Date := DMProjeto.dDataSistema;
  end;
  edDataIni.OnDateChange := edDataIniDatechange;
  edDataFim.OnDateChange := edDataIniDateChange;
  AtualizaItens;
end;

procedure TRptExtratoSaidas.popupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

procedure TRptExtratoSaidas.edDataIniDateChange(Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

end.

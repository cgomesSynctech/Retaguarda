unit Rpt_ExtratoCompleto;                                       
                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, IBCustomDataSet, Db, StdCtrls, 
  dxExEdtr, dxEdLib, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  TS_PopupEdit, dxCntner, dxEditor, TS_DateTimePicker, Buttons,
  TS_SpeedButton, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, IBQuery, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, TS_QDBGrid, ExtCtrls, TS_Label,
  dxfLabel, TS_MaxPanel, Menus, TS_PopupMenu, ComCtrls, Variants, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt,
  TS_PopupFiltrarItens, TS_CheckBox;

type
  TRptExtratoCompleto = class(TRptPadrao)
    edDataIni: TTS_DateTimePicker;
    edDataFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaFORNEC_CLIENTE: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridColumn;
    dbgConsultaFABRICANTE: TdxDBGridColumn;
    dbgConsultacfESTOQUE: TdxDBGridColumn;
    dbgConsultaDesc_Item: TdxDBGridColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALCC: TdxDBGridMaskColumn;
    dbgConsultaIDFORNEC_CLIENTE: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn;
    C_ConsultaTRANSACAOESTOQUE: TIntegerField;
    C_ConsultaIDGERADOR: TIntegerField;
    C_ConsultaTIPOORIGEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaGRUPO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaQUANTIDADE: TBCDField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCFABRIC: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaSUBTOTALPC: TFloatField;
    C_ConsultacfEstoque: TFloatField;
    dbgConsultaPRECOCOMPRA: TdxDBGridColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridColumn;
    dbgConsultaSUBTOTALCM: TdxDBGridColumn;
    dbgConsultaSUBTOTALPC: TdxDBGridColumn;
    C_ConsultaDESCORIGEM: TStringField;
    dbgConsultaDESCORIGEM: TdxDBGridColumn;
    dbgConsultaFATOR: TdxDBGridColumn;
    C_ConsultaFATOR: TFloatField;
    C_ConsultaFATORESTOQUE: TFloatField;
    dbgConsultaFATORESTOQUE: TdxDBGridColumn;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaSUBTOTALCM: TFloatField;
    C_ConsultaSUBTOTALCC: TFloatField;
    dbgConsultaTIPOORIGEM: TdxDBGridColumn;
    popupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaUnidVenda: TStringField;
    dbgConsultaUnidVenda: TdxDBGridColumn;
    C_ConsultaMESANO: TStringField;
    dbgConsultaMesAno: TdxDBGridColumn;
    dbgConsultaNumero: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure PeriodoDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaGetSummaryTopText(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxDBGridNode;
      GroupKeyValue: Variant; FieldName: String; var AText: String);
    procedure dbgConsultaCustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure popupFiltroItensSelecionou(Sender: TObject);
    procedure dbgConsultaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    SelectInicial, OrderBy, sClientes, sVendedores, sFornecedores: string;
    FAddGroupFORNEC_Cliente, FAddGroupGrupo, FAddGroupFabricante : Boolean;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;

    procedure AtualizaItens;
    procedure AtualizaEstoque;
    function VarToFloat(v:Variant):Real;
  public
    { Public declarations }
  end;

var
  RptExtratoCompleto: TRptExtratoCompleto;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

function TRptExtratoCompleto.VarToFloat(v:Variant):Real;
begin
  if v=null then result:=0
  else result:=v;
end;

procedure TRptExtratoCompleto.FormCreate(Sender: TObject);
begin
  inherited;
//  SelectInicial := Q_Consulta.SQL.Text;
  OrderBy := ' order by s.saida, si.ordem';
  sClientes := '';
  sVendedores := '';
  sFornecedores := '';
  DMProjeto.sItensSelec := '';
  DMProjeto.sGruposSelec := '';
  DMProjeto.sFabricSelec := '';
  edDataIni.OnDateChange := nil;
  edDataFim.OnDateChange := nil;
  if edDataIni.GetEditingText = '' then edDataIni.Date := DMProjeto.dDataSistema-7;
  if edDataFim.GetEditingText = '' then edDataFim.Date := DMProjeto.dDataSistema;
  edDataIni.OnDateChange := PeriodoDateChange;
  edDataFim.OnDateChange := PeriodoDateChange;
end;

procedure TRptExtratoCompleto.AtualizaItens;
var
    nEstoqueAnterior: Currency;
    nItem, i: integer;
begin
  with C_Consulta do begin
    DisableControls;
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where t.data >= :dDataI and t.data <= :dDataF ' +
                   iif(popupFiltroItens.getSQL( false )<>'',' and '+popupFiltroItens.getSQL( false ),'')+
                   ' order by t.item, t.data, t.transacaoestoque ';
    Params[0].AsDateTime := edDataIni.Date;
    Params[1].AsDateTime := edDataFim.Date;
    Open;
    nItem := 0;
    nEstoqueAnterior := 0;
    while not(Eof) do begin
      if (nItem <> C_ConsultaITEM.Value) then begin
        nEstoqueAnterior := DMProjeto.EstoqueItem(C_ConsultaITEM.Value, Trunc(C_ConsultaDATA.Value)-1);
        nItem := C_ConsultaITEM.Value;
      end;
      Edit;
      C_ConsultacfESTOQUE.Value := nEstoqueAnterior;
{      if C_ConsultaREFERENCIA.AsString <> '' then
        C_ConsultaDesc_Item.AsString := C_ConsultaITEM.AsString
        + ' (' + C_ConsultaCODIGO.AsString + ') ' + C_ConsultaREFERENCIA.AsString
        + ' Und: ' + C_ConsultaDESC_UNID.AsString + ' Fabricante: ' + C_ConsultaFABRICANTE.AsString
      else
        C_ConsultaDesc_Item.AsString := C_ConsultaITEM.AsString
        + ' (' + C_ConsultaCODIGO.AsString  + ') '
        + ' Und: ' + C_ConsultaDESC_UNID.AsString + ' Fabricante: ' + C_ConsultaFABRICANTE.AsString;}
      Next;
    end; // while

    EnableControls;
    AtualizaEstoque;
    dbgConsulta.FullExpand;
    dbgConsulta.GotoFirst;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + edDataini.Text + ' a ' + edDatafim.Text);
    if popupFiltroItens.Hint <> '' then
      TS_ReportFilter.Add(replace(popupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptExtratoCompleto.AtualizaEstoque;
var nEstoque: Currency;
begin
  if not(C_Consulta.Active) or (C_Consulta.RecordCount < 1) then exit;
  dbgConsulta.FullExpand;
  dbgConsulta.GotoFirst;
  nEstoque := 0;
  while not(dbgConsulta.IsEof) do begin
    if not(dbgConsulta.FocusedNode.HasChildren) then begin
      // Não precisa verificar se eh entrada ou saida ja que a saida virá com valor negativo
      nEstoque := nEstoque + dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'QUANTIDADE', 0)*dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FATOR', 0)/dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FATORESTOQUE', 0);
      dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'cfESTOQUE',FormatFloat('##,###,##0.###',nEstoque));
    end
    else
       nEstoque := VarToFloat(dbgConsulta.GetFirstChildValue(TdxDBGridNode(dbgConsulta.FocusedNode),'cfESTOQUE'));
    dbgConsulta.GotoNext(False);
    if dbgConsulta.Iseof then begin
      // Não precisa verificar se eh entrada ou saida ja que a saida virá com valor negativo
       nEstoque := nEstoque + dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'QUANTIDADE', 0)*dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FATOR', 0)/dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode,'FATORESTOQUE', 0);
      dbgConsulta.SetFieldValue(dbgConsulta.FocusedNode,'cfESTOQUE',FormatFloat('##,###,##0.###',nEstoque));
    end;
  end;
end;

procedure TRptExtratoCompleto.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoCompleto.PeriodoDateChange(Sender: TObject);
begin
  inherited;
//  AtualizaItens;
end;

procedure TRptExtratoCompleto.FormShow(Sender: TObject);
begin
  inherited;
//  dbgConsulta.ColumnsCustomizing;
//  AtualizaItens;
end;

procedure TRptExtratoCompleto.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if not ANode.HasChildren then begin
    if (AColumn.Index=dbgConsulta.FindColumnByFieldName('QUANTIDADE').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('PRECO').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('PRECOCOMPRA').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('CUSTOMEDIO').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('CUSTOCONTABIL').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('SUBTOTALITEM').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('SUBTOTALCC').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('SUBTOTALCM').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('SUBTOTALPC').Index)
    or (AColumn.Index=dbgConsulta.FindColumnByFieldName('cfESTOQUE').Index) then begin
      if (dbgConsulta.GetFieldValue(ANode,'Quantidade',0) > 0) then
        AFont.Color := clRed
      else
        AFont.Color := clBlue;
    end;
  end;
end;

procedure TRptExtratoCompleto.dbgConsultaGetSummaryTopText(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxDBGridNode;
  GroupKeyValue: Variant; FieldName: String; var AText: String);
begin
  inherited;
  if aNode.Level = 0 then begin
    if (FieldName = 'cfESTOQUE') then
      AText := FormatFloat('##,###,##0.###',VarToFloat(dbgConsulta.GetFirstChildValue(ANode,'cfESTOQUE')));
  end;
end;

procedure TRptExtratoCompleto.dbgConsultaCustomDrawFooterNode(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
  inherited;
  if (not ANode.HasChildren) and (AColumn = dbgConsultacfESTOQUE) then
    AText := FormatFloat('##,###,##0.###',dbgConsulta.GetFieldValue(ANode,'cfESTOQUE',0,True));
end;

procedure TRptExtratoCompleto.dbgConsultaDblClick(Sender: TObject);
var
  nItem,nTipoOrigem : Integer;
  sForm : String;
begin
  inherited;
  if (UpperCase(dbgConsulta.FocusedField.FieldName) = 'CODIGO') or
  	 (UpperCase(dbgConsulta.FocusedField.FieldName) = 'DESCRICAO') or
     (UpperCase(dbgConsulta.FocusedField.FieldName) = 'REFERENCIA') or
     (UpperCase(dbgConsulta.FocusedField.FieldName) = 'DESCRICAO') then
  begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, True);
  end else begin
    if UpperCase(dbgConsulta.FocusedField.FieldName) = 'NOME' then begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'favorecido', 0);
      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaFavorecido(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOFAVORECIDO', 0));
    end
    else begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDGERADOR', 0);

//      DMProjeto.Sql.Text := '';

      nTipoOrigem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOORIGEM', 0);

      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaGeradora(nTipoOrigem);
    end;
    DMProjeto.CriarForm(sForm, Self, True);
  end;
end;

procedure TRptExtratoCompleto.popupFiltroItensSelecionou(
  Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

procedure TRptExtratoCompleto.dbgConsultaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var nItem:integer;
begin
  inherited;
  if dbgConsulta.FocusedNode.HasChildren and (ssCtrl in Shift) and (Button = mbLeft) then begin
    nItem := dbgConsulta.GetFirstChildValue(TdxDBGridNode(dbgConsulta.FocusedNode),'Item');
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, True);
  end;
end;

end.

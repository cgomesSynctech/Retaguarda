unit Rpt_ExtratoEntradasx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, IBCustomDataSet, Db, StdCtrls, CheckLst, TS_CheckListBox,
  dxExEdtr, dxEdLib, TS_CheckBox, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  TS_PopupEdit, dxCntner, dxEditor, TS_DateTimePicker, Buttons,
  TS_SpeedButton, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  DBClient, Provider, IBQuery, TS_LastDataObject,
  DlgMsg, teCtrls, TS_EffectsPanel, TS_QDBGrid, ExtCtrls, TS_Label,
  dxfLabel, TS_MaxPanel, Menus, TS_PopupMenu, ComCtrls, Variants, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptExtratoEntradasx = class(TRptPadrao)
    edDataIni: TTS_DateTimePicker;
    edDataFim: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    Q_TipoMovimento: TIBQuery;
    peAgrupamento: TTS_PopupEdit;
    clbAgrupamento: TTS_CheckListBox;
    lkTipoItem: TTS_LookupComboBox;
    btFiltro: TTS_SpeedButton;
    btFornecedores: TTS_SpeedButton;
    Q_TiposItem: TIBQuery;
    Q_TiposItemProvider: TDataSetProvider;
    C_TiposItem: TClientDataSet;
    C_TiposItemDS: TDataSource;
    Q_TipoMovimentoDESCRICAO: TIBStringField;
    Q_TipoMovimentoTIPOMOVIMENTO: TIntegerField;
    C_TiposItemTIPOITEM: TIntegerField;
    C_TiposItemDESCRICAO: TStringField;
    C_ConsultaID: TIntegerField;
    C_ConsultaIDITEM: TIntegerField;
    C_ConsultaIDGRUPO: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaITEM: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaQUANTIDADE: TBCDField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaCUSTOMEDIO: TBCDField;
    C_ConsultaSUBTOTALCUSTO: TFloatField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    C_ConsultaGRUPO: TStringField;
    C_ConsultaTIPOITEM: TStringField;
    C_ConsultaFORNECEDOR: TStringField;
    C_ConsultaENTRADA: TIntegerField;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALCUSTO: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
    dbgConsultaFORNECEDOR: TdxDBGridMaskColumn;
    TS_Label3: TTS_Label;
    dbgConsultaID: TdxDBGridMaskColumn;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaIDFORNECEDOR: TIntegerField;
    C_ConsultaTIPOFAVORECIDOFORNECEDOR: TIntegerField;
    dbgConsultaIDFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDOFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaENTRADA: TdxDBGridMaskColumn;
    dbgConsultaIDITEM: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure btFornecedoresClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lkTipoItemChange(Sender: TObject);
    procedure clbTipoMovimentoClickCheck(Sender: TObject);
    procedure clbAgrupamentoClickCheck(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure PeriodoDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
    SelectInicial, OrderBy, sFornecedores: string;
    FAddGroupFornecedor, FAddGroupGrupo, FAddGroupFabricante : Boolean;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec, sNomesFornecedores : String;
    procedure AtualizaItens;
  public
    { Public declarations }
  end;

var
  RptExtratoEntradasx: TRptExtratoEntradasx;

implementation

uses DM_Projeto, Dlg_FiltroItens, funcoes;

{$R *.DFM}

procedure TRptExtratoEntradasx.FormCreate(Sender: TObject);
begin
  inherited;
  SelectInicial := Q_Consulta.SQL.Text;
  OrderBy := ' order by s.saida, si.ordem';
  sFornecedores := '';
  DMProjeto.sItensSelec := '';
  DMProjeto.sGruposSelec := '';
  DMProjeto.sFabricSelec := '';
  sNomesFornecedores := '';
  edDataIni.Date := DMProjeto.dDataSistema-30;
  edDataFim.Date := DMProjeto.dDataSistema;
  edDataIni.OnDateChange := PeriodoDateChange;
  edDataFim.OnDateChange := PeriodoDateChange;
  Q_TipoMovimento.Open;
  C_TiposItem.Open;
  lkTipoItem.LookupKeyValue := 1;
  AtualizaItens;
end;

procedure TRptExtratoEntradasx.btFiltroClick(Sender: TObject);
begin
  inherited;
  DlgFiltroItens := TDlgFiltroItens.Create(Self,DMProjeto.sItensSelec,DMProjeto.sGruposSelec,DMProjeto.sFabricSelec);
  DlgFiltroItens.ShowModal;
  DlgFiltroItens.free;
  if DmProjeto.ExisteParametrosForm then begin
    sDescItensSelec := DmProjeto.GetParametrosForm(0);
    sDescGruposSelec := DmProjeto.GetParametrosForm(1);
    sDescFabrSelec := DmProjeto.GetParametrosForm(2);
  end;  
  DMProjeto.LimparParametrosForm;
  AtualizaItens;
end;

procedure TRptExtratoEntradasx.AtualizaItens;
var sPrimeiroNome, condData, condFornecedores, condItens, condGrupos,
    condFabr, condTipoItem: string;
    i : integer;
begin
  condItens:=''; condGrupos:=''; condFabr:=''; condTipoItem:='';
  condFornecedores:=''; condData:='';
  //
  if pos('WHERE',UpperCase(Q_Consulta.SQL.Text)) > 0 then
    condData := ' and e.data>='+QuotedStr(FormatDateTime('mm/dd/yyyy',edDataIni.Date))+
      ' And e.data<='+QuotedStr(FormatDateTime('mm/dd/yyyy',edDataFim.Date))
  else
    condData := ' Where e.data>='+QuotedStr(FormatDateTime('mm/dd/yyyy',edDataIni.Date))+
      ' And e.data<='+QuotedStr(FormatDateTime('mm/dd/yyyy',edDataFim.Date));
//  if not(chkTodos.Checked) then
    condTipoItem := ' And i.tipoitem='+IntToStr(lkTipoItem.LookupKeyValue);
  if DMProjeto.sItensSelec<>'' then
    condItens := ' And ei.item In ('+DMProjeto.sItensSelec+')';
  if DMProjeto.sGruposSelec<>'' then
    condGrupos := ' And i.grupo In ('+DMProjeto.sGruposSelec+')';
  if DMProjeto.sFabricSelec<>'' then
    condFabr := ' And i.fabricante In ('+DMProjeto.sFabricSelec+')';
  if sFornecedores<>'' then
    condFornecedores := ' And e.favorecido In ('+sFornecedores+')';
  with C_Consulta do begin
    Close;
    CommandText := SelectInicial+condData+condTipoItem+
      condItens+condGrupos+condFabr+condFornecedores;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Período de: ' + FormatDateTime(ShortDateFormat, edDataini.Date)
         + ' a ' + FormatDateTime(ShortDateFormat, edDatafim.Date));
    if sNomesFornecedores <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomesFornecedores,',',1));
      for i := 2 to ContaStrings(sNomesFornecedores,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomesFornecedores,',',i));
      end;
      TS_ReportFilter.Add('Fornecedores: ' + sPrimeiroNome);
    end;
    if sDescItensSelec <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sDescItensSelec,',',1));
      for i := 2 to ContaStrings(sDescItensSelec,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sDescItensSelec,',',i));
      end;
      TS_ReportFilter.Add('Itens: ' + sPrimeiroNome);
    end;
    if sDescGruposSelec<> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sDescGruposSelec,',',1));
      for i := 2 to ContaStrings(sDescGruposSelec,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sDescGruposSelec,',',i));
      end;
      TS_ReportFilter.Add('Grupos: ' + sPrimeiroNome);
    end;
    if sDescFabrSelec <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sDescFabrSelec,';',1));
      for i := 2 to ContaStrings(sDescFabrSelec,',') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sDescFabrSelec,',',i));
      end;
      TS_ReportFilter.Add('Fabricante: ' + sPrimeiroNome);
    end;
    if lkTipoItem.LookUpKeyValue <> null  then
       TS_ReportFilter.Add('Tipo de Item: ' + lkTipoItem.Text);    
  end;
end;

procedure TRptExtratoEntradasx.btFornecedoresClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sFornecedores, 2]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sFornecedores := GetParametrosForm(0);
      sNomesFornecedores := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaItens;
    end;
  end;
end;

procedure TRptExtratoEntradasx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_TiposItem.Close;
  Q_TipoMovimento.Close;
end;

procedure TRptExtratoEntradasx.lkTipoItemChange(Sender: TObject);
begin  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasx.clbTipoMovimentoClickCheck(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasx.clbAgrupamentoClickCheck(Sender: TObject);
begin
  inherited;
  if clbAgrupamento.Checked[clbAgrupamento.ItemIndex] then begin
     case clbAgrupamento.ItemIndex  of
       0 : begin
             FAddGroupFornecedor := dbgConsultaFORNECEDOR.Visible;
             dbgConsultaFORNECEDOR.GroupIndex := 0;
           end;
       1 : begin
             FAddGroupGrupo := dbgConsultaGRUPO.Visible;
             dbgConsultaGRUPO.GroupIndex := 1;
           end;
       2 : begin
             FAddGroupFabricante := dbgConsultaFABRICANTE.Visible;
             dbgConsultaFABRICANTE.GroupIndex := 2;
           end;
     end;
  end
  else begin
     case clbAgrupamento.ItemIndex  of
       0 : begin
             dbgConsultaFORNECEDOR.GroupIndex := -1;
             dbgConsultaFORNECEDOR.Visible := FAddGroupFornecedor;
           end;
       1 : begin
             dbgConsultaGRUPO.GroupIndex := -1;
             dbgConsultaGRUPO.Visible := FAddGroupGrupo;
           end;
       2 : begin
             dbgConsultaFABRICANTE.GroupIndex := -1;
             dbgConsultaFABRICANTE.Visible := FAddGroupFabricante;
           end;
     end;
  end;
{  // clientes
  if (clbAgrupamento.ItemIndex=0)and(clbAgrupamento.Checked[clbAgrupamento.ItemIndex]) then
    dbgConsultaFORNECEDOR.GroupIndex := 0
  // grupos
  else
    if (clbAgrupamento.ItemIndex=1)and(clbAgrupamento.Checked[clbAgrupamento.ItemIndex]) then begin
      if clbAgrupamento.Checked[0] then
        dbgConsultaGRUPO.GroupIndex := 1
      else dbgConsultaGRUPO.GroupIndex := 0;
    end else begin
      if (clbAgrupamento.ItemIndex=0)and not(clbAgrupamento.Checked[clbAgrupamento.ItemIndex]) then begin
        dbgConsultaFORNECEDOR.GroupIndex := -1;
      end;
      if (clbAgrupamento.ItemIndex=1)and not(clbAgrupamento.Checked[clbAgrupamento.ItemIndex]) then begin
        dbgConsultaGRUPO.GroupIndex := -1;
      end;
    end;}
end;

procedure TRptExtratoEntradasx.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasx.PeriodoDateChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptExtratoEntradasx.FormShow(Sender: TObject);
begin
  inherited;
//  dbgConsulta.ColumnsCustomizing;
end;

procedure TRptExtratoEntradasx.dbgConsultaDblClick(Sender: TObject);
var
  nItem : Integer;
  sForm : String;
begin
  inherited;
  if (UpperCase(dbgConsulta.FocusedField.FieldName) = 'CODIGO')
  or (UpperCase(dbgConsulta.FocusedField.FieldName) = 'ITEM') then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDItem', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, True);
  end
  else begin
    if UpperCase(dbgConsulta.FocusedField.FieldName) = 'FORNECEDOR' then begin
      nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDFornecedor', 0);
      DMProjeto.SetParametrosForm([nItem]);
      sForm := DMProjeto.getTelaFavorecido(dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'TIPOFAVORECIDOFORNECEDOR', 0));
    end
    else begin
        nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Entrada', 0);
        DMProjeto.SetParametrosForm([nItem]);
        sForm := 'FrmEntradas';
    end;
    DMProjeto.CriarForm(sForm, Self, True);
  end;
end;

end.

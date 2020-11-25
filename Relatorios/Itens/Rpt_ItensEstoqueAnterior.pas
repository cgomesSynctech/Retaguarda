unit Rpt_ItensEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Buttons, TS_SpeedButton, dxTL,
  dxDBCtrl, dxDBGrid, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
  IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
  TS_EffectsPanel, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, dxDBTLCl, dxGrClms, Menus, TS_PopupMenu, TransEff, teTimed,
  teMasked, teDiagon, teForm, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum;

type
  TRptItensEstoque = class(TRptPadrao)
    C_TiposItemDS: TDataSource;
    Q_TiposItem: TIBQuery;
    Q_TiposItemProvider: TDataSetProvider;
    C_TiposItem: TClientDataSet;
    lkTipoItem: TTS_LookupComboBox;
    TS_Label1: TTS_Label;
    btFiltro: TTS_SpeedButton;
    chkTodos: TTS_CheckBox;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaTIPOITEM: TStringField;
    C_ConsultaGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    Q_SQL: TIBQuery;
    C_ConsultaCONTA_VEN: TStringField;
    C_ConsultaCONTA_CUS: TStringField;
    C_ConsultaCONTA_INV: TStringField;
    C_ConsultaCOMISSAO: TBCDField;
    C_ConsultaDESCONTOMAXIMO: TBCDField;
    C_ConsultaULTFORNECEDOR: TStringField;
    dbgConsultaCONTA_VEN: TdxDBGridMaskColumn;
    dbgConsultaCONTA_CUS: TdxDBGridMaskColumn;
    dbgConsultaCONTA_INV: TdxDBGridMaskColumn;
    dbgConsultaCOMISSAO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn;
    dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    C_ConsultaTAXINCLUSO: TStringField;
    dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    C_ConsultaTotalCusto: TFloatField;
    C_ConsultaCUSTOMEDIO: TBCDField;
    dbgConsultaTotalCusto: TdxDBGridColumn;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    C_ConsultaIDULTFORNECEDOR: TIntegerField;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkTodosChange(Sender: TObject);
    procedure lkTipoItemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
    SelectInicial: string;
    FAddGroupItem : Boolean;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;    
    procedure AtualizaItens(WhereAdicional:string ='');
    procedure Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
  public
    { Public declarations }
  end;

var
  RptItensEstoque: TRptItensEstoque;

implementation

uses DM_Projeto, Dlg_FiltroItens, funcoes;

{$R *.DFM}

procedure TRptItensEstoque.AtualizaItens(WhereAdicional:string ='');
var sPrimeiroNome, condItens, condGrupos, condFabr, condTipoItem: string;
    i: integer;
begin
  ActiveControl := nil;
  condItens:=''; condGrupos:=''; condFabr:='';condTipoItem:='';
  if not(chkTodos.Checked) then begin
    condTipoItem := ' And i.tipoitem='+IntToStr(lkTipoItem.LookupKeyValue);
    if DMProjeto.sItensSelec<>'' then
      condItens := ' And i.item In ('+DMProjeto.sItensSelec+')';
    if DMProjeto.sGruposSelec<>'' then
      condGrupos := ' And i.grupo In ('+DMProjeto.sGruposSelec+')';
    if DMProjeto.sFabricSelec<>'' then
      condFabr := ' And i.fabricante In ('+DMProjeto.sFabricSelec+')';
  end;
  with C_Consulta do begin
    DisableControls;
    Close;
    CommandText := SelectInicial+condItens+condGrupos+condFabr+condTipoItem;
    if Length(WhereAdicional)>0 then CommandText := CommandText+' And '+WhereAdicional;
    Open;
    while not Eof do begin
      Edit;
      FieldByName('TotalCusto').AsFloat := FieldByName('Estoque').AsFloat
          *  FieldByName('CustoMedio').AsFloat;
      Post;
      Next;
    end;
    EnableControls;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    if chkTodos.Checked then begin
      TS_ReportFilter.Add('Todos os tipos de Itens ');
    end
    else begin
      if lkTipoItem.LookUpKeyValue <> null  then
          TS_ReportFilter.Add('Tipo de Item: ' + lkTipoItem.Text);
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
  end;
end;

procedure TRptItensEstoque.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  C_TiposItem.Close;
  Action := caFree;
end;

procedure TRptItensEstoque.chkTodosChange(Sender: TObject);
begin
  inherited;
  lkTipoItem.Enabled := not chkTodos.Checked;
  btFiltro.Enabled := not chkTodos.Checked;
  AtualizaItens;
  dbgConsulta.ShowGroupPanel := chkTodos.Checked;
//  btAgrupamentoPainel.Down := chkTodos.Checked;
  FAddGroupItem := dbgConsultaTIPOITEM.Visible;
  if chkTodos.Checked then begin
     dbgConsultaTIPOITEM.GroupIndex := 0;
  end
  else begin
    dbgConsultaTIPOITEM.GroupIndex := -1;
    dbgConsultaTIPOITEM.Visible := FAddGroupItem;
  end;
end;

procedure TRptItensEstoque.lkTipoItemChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensEstoque.Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
begin
  coluna.DisableCustomizing := not Habilita;
  coluna.Visible := Habilita;
end;

procedure TRptItensEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  SelectInicial := Q_Consulta.SQL.Text;
  C_TiposItem.Open;
  lkTipoItem.LookupKeyValue := 1;
  DMProjeto.sItensSelec    := '';
  DMProjeto.sGruposSelec   := '';
  DMProjeto.sFabricSelec   := '';
end;

procedure TRptItensEstoque.FormShow(Sender: TObject);
begin
  inherited;
//  dbgConsulta.ColumnsCustomizing;
  dbgConsultaTIPOITEM.Visible := False;
  Coluna(dbgConsultaESTOQUE, True);
  AtualizaItens;  
end;

procedure TRptItensEstoque.btFiltroClick(Sender: TObject);
begin
  inherited;
  DlgFiltroItens := TDlgFiltroItens.Create(Self,DMProjeto.sItensSelec,DMProjeto.sGruposSelec,DMProjeto.sFabricSelec,'1');
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

procedure TRptItensEstoque.dbgConsultaDblClick(Sender: TObject);
var
   nItem : Integer;
   sForm : String;
begin
  inherited;
  if dbgConsulta.FocusedField.FieldName = 'ULTFORNECEDOR' then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDULTFORNECEDOR', 0);
    DMProjeto.SetParametrosForm([nItem]);
    sForm := DmProjeto.FormFav(dbgConsulta.getFieldValue(dbgConsulta.FocusedNode,'TipoFavorecido',''));
    DMProjeto.CriarForm(sForm, Self, true);
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
end;

end.

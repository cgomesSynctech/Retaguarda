unit Frm_Registros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, TS_BitBtn,
  IBCustomDataSet, IBQuery, Db, DBClient, Provider, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, dxGrClEx,
  IBUpdateSQL, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu;

type
  TFrmRegistros = class(TFrmModeloCadastros)
    dbgRegistros: TTS_QDBGrid;
    Q_RegistrosProvider: TDataSetProvider;
    C_Registros: TClientDataSet;
    Q_Registros: TIBQuery;
    C_RegistrosDS: TDataSource;
    C_RegistrosLANCAMENTO: TIntegerField;
    C_RegistrosCODIGOREDUZIDO: TStringField;
    C_RegistrosDESCCONTA: TStringField;
    C_RegistrosREFERENCIA: TStringField;
    C_RegistrosIDGERADOR: TIntegerField;
    C_RegistrosORIGEM: TIntegerField;
    C_RegistrosDESCORIGEM: TStringField;
    C_RegistrosDATA: TDateField;
    C_RegistrosHISTORICO: TStringField;
    C_RegistrosVALOR: TBCDField;
    C_RegistrosSALDO: TBCDField;
    C_RegistrosCONTA: TIntegerField;
    C_RegistrosLANCAMENTOITEM: TIntegerField;
    C_RegistrosTIPO: TStringField;
    C_RegistrosFORMNAME: TStringField;
    dbgRegistrosLANCAMENTO: TdxDBGridMaskColumn;
    dbgRegistrosCODIGOREDUZIDO: TdxDBGridMaskColumn;
    dbgRegistrosDESCCONTA: TdxDBGridMaskColumn;
    dbgRegistrosREFERENCIA: TdxDBGridMaskColumn;
    dbgRegistrosIDGERADOR: TdxDBGridMaskColumn;
    dbgRegistrosORIGEM: TdxDBGridMaskColumn;
    dbgRegistrosDESCORIGEM: TdxDBGridMaskColumn;
    dbgRegistrosDATA: TdxDBGridDateColumn;
    dbgRegistrosHISTORICO: TdxDBGridMaskColumn;
    dbgRegistrosVALOR: TdxDBGridMaskColumn;
    dbgRegistrosSALDO: TdxDBGridMaskColumn;
    dbgRegistrosLANCAMENTOITEM: TdxDBGridMaskColumn;
    dbgRegistrosTIPO: TdxDBGridMaskColumn;
    dbgRegistrosFORMNAME: TdxDBGridMaskColumn;
    C_RegistrosNUMERO: TStringField;
    C_RegistrosNOME: TStringField;
    dbgRegistrosNUMERO: TdxDBGridColumn;
    dbgRegistrosCONTA: TdxDBGridPopupColumn;
    Q_ContraPartida: TIBQuery;
    Q_ContraPartidaProvider: TDataSetProvider;
    C_ContraPartida: TClientDataSet;
    C_ContraPartidaDS: TDataSource;
    pnContraPartida: TTS_Panel;
    dbgLancamentos: TTS_QDBGrid;
    dbgLancamentosContax: TdxDBGridPopupColumn;
    dbgLancamentosColumn1: TdxDBGridLookupColumn;
    dbgLancamentosColumn5: TdxDBGridColumn;
    dbgLancamentosValor: TdxDBGridColumn;
    Q_Contas: TIBQuery;
    Q_ContasProvider: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasSALDO: TBCDField;
    C_ContasDS: TDataSource;
    C_ContraPartidalkConta: TStringField;
    C_RegistrosFAVORECIDO: TIntegerField;
    dbgRegistrosNome: TdxDBGridButtonColumn;
    Q_AtualizaRegistros: TIBQuery;
    Q_AtualizaCPartida: TIBQuery;
    C_ContraPartidaLANCAMENTOITEM: TIntegerField;
    C_ContraPartidaLANCAMENTO: TIntegerField;
    C_ContraPartidaCODIGOREDUZIDO: TStringField;
    C_ContraPartidaDESCCONTA: TStringField;
    C_ContraPartidaREFERENCIA: TStringField;
    C_ContraPartidaIDGERADOR: TIntegerField;
    C_ContraPartidaORIGEM: TIntegerField;
    C_ContraPartidaDESCORIGEM: TStringField;
    C_ContraPartidaDATA: TDateField;
    C_ContraPartidaHISTORICO: TStringField;
    C_ContraPartidaVALOR: TBCDField;
    C_ContraPartidaSALDO: TBCDField;
    C_ContraPartidaCONTA: TIntegerField;
    C_ContraPartidaTIPO: TStringField;
    C_ContraPartidaFORMNAME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure dbgRegistrosEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure C_RegistrosBeforePost(DataSet: TDataSet);
    procedure btLimparClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure dbgRegistrosChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure C_RegistrosAfterPost(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure C_ContraPartidaNewRecord(DataSet: TDataSet);
    procedure C_RegistrosNewRecord(DataSet: TDataSet);
    procedure C_RegistrosVALORChange(Sender: TField);
    procedure dbgRegistrosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgLancamentosCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    Conta: integer;
    bEditado: boolean;
    Descricao: string;
    procedure ProcessaSaldo;
  public
    constructor Create(AOwner: TComponent; nConta:integer; sDescricao: string);
  end;

var
  FrmRegistros: TFrmRegistros;

implementation
uses DM_Projeto, Dlg_PopupContas, funcoes;

{$R *.DFM}

constructor TFrmRegistros.Create;
begin
  Conta := nConta;
  Descricao := sDescricao;
  inherited Create(AOwner);
end;

procedure TFrmRegistros.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := Caption+': '+Descricao;

  DlgPopupContas := TDlgPopupContas.Create(self,C_ContasDS,dbgLancamentosContax,true);

  C_Registros.FetchParams;
  C_Registros.Params[0].asinteger := Conta;
  C_Registros.open;

  ProcessaSaldo;
end;


procedure TFrmRegistros.ProcessaSaldo;
var nSaldo: currency;
begin
  dbgRegistros.FullExpand;
  dbgRegistros.gotofirst;
  nSaldo := 0;
  while not dbgRegistros.iseof do begin
    nSaldo := nSaldo + dbgRegistros.GetFieldValue(dbgRegistros.FocusedNode,'Valor',0);
    dbgRegistros.SetFieldValue(dbgRegistros.FocusedNode,'Saldo',FormatCurr('###,##0.00',nSaldo));

    dbgRegistros.GotoNext(false);

    if dbgRegistros.iseof then begin
      nSaldo := nSaldo + dbgRegistros.GetFieldValue(dbgRegistros.FocusedNode,'Valor',0);
      dbgRegistros.SetFieldValue(dbgRegistros.FocusedNode,'Saldo',FormatCurr('###,##0.00',nSaldo));
    end;
  end;
  dbgRegistros.gotofirst;
end;

procedure TFrmRegistros.dbgRegistrosDblClick(Sender: TObject);
var sForm: string;
    nID: integer;
begin
  inherited;
  nID   := dbgRegistros.GetFieldValue(dbgRegistros.FocusedNode,'IDGerador',0);
  sForm := dbgRegistros.GetFieldValue(dbgRegistros.FocusedNode,'FormName','');
  if (nID <> 0) and (sForm <> '') then begin
    DMProjeto.SetParametrosForm([nID]);
    DMProjeto.CriarForm(sForm, self, true);
  end;
end;

procedure TFrmRegistros.dbgRegistrosEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  bEditado := true;
end;

procedure TFrmRegistros.C_RegistrosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if bEditado and (DlgMsg.ShowMsg(3078) <> 100) then
    abort;
end;

procedure TFrmRegistros.btLimparClick(Sender: TObject);
begin
  inherited;
  C_Registros.append;
end;

procedure TFrmRegistros.btComando1Click(Sender: TObject);
var nLancamento: integer;
begin
  inherited;
  pnContraPartida.visible := not pnContraPartida.visible;
  nLancamento := dbgRegistros.GetFieldValue(dbgRegistros.FocusedNode,'Lancamento',0);

  if pnContraPartida.visible then begin
    dbgRegistros.TopIndex := dbgRegistros.FocusedNode.Index;
    if not C_ContraPartida.Active then begin
      C_ContraPartida.close;
      C_ContraPartida.FetchParams;
      C_ContraPartida.Params[0].asinteger := nLancamento;
      C_ContraPartida.Params[1].asinteger := Conta;
      C_ContraPartida.open;
    end;
    if C_ContraPartida.RecordCount = 0 then
      C_ContraPartida.Append;
    ActiveControl := dbgLancamentos;
  end;
end;

procedure TFrmRegistros.dbgRegistrosChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
var nLancamento: integer;
begin
  inherited;
  nLancamento := dbgRegistros.GetFieldValue(dbgRegistros.FocusedNode,'Lancamento',0);
  C_ContraPartida.close;
  C_ContraPartida.FetchParams;
  C_ContraPartida.Params[0].asinteger := nLancamento;
  C_ContraPartida.Params[1].asinteger := Conta;
  C_ContraPartida.open;
end;

procedure TFrmRegistros.C_RegistrosAfterPost(DataSet: TDataSet);
begin
  inherited;
  btGravarClick(self);
end;

procedure TFrmRegistros.btGravarClick(Sender: TObject);
var bNovo,bAlterado: boolean;
    nValorTotalD, nValorTotalC: currency;
begin
  inherited;
  bAlterado := bEditado;
  bEditado := false;
  if C_Registros.State in [dsEdit,dsInsert] then
    C_Registros.post;
  if C_ContraPartida.State in [dsEdit,dsInsert] then
    C_ContraPartida.post;

  bEditado := bAlterado;  
  nValorTotalD := 0;
  nValorTotalC := 0;
  if C_RegistrosValor.value > 0 then
    nValorTotalC := C_RegistrosValor.value
  else
    nValorTotalD := C_RegistrosValor.value;

  C_ContraPartida.first;
  while not C_ContraPartida.eof do begin
    if C_ContraPartidaValor.value > 0 then
      nValorTotalC := nValorTotalC + C_ContraPartidaValor.value
    else
      nValorTotalD := nValorTotalD + C_ContraPartidaValor.value;
    C_ContraPartida.next;
  end;

  if nValorTotalC <> abs(nValorTotalD) then begin
    DlgMsg.ShowMsg(3051);
    exit;
  end;
  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    bNovo := false;
    Q_AtualizaRegistros.SQL.text := 'update lancamentos set data = :data, numero = :numero, '+
    'idgerador = :idgerador, referencia = :referencia, usuario = :usuario, data_audit = :data_audit, '+
    'hora_audit = :hora_audit where lancamento = :lancamento';
    if C_RegistrosLancamento.value < 0 then begin
      bNovo := true;
      Q_AtualizaRegistros.SQL.text := 'insert into lancamentos(lancamento,data,numero,idgerador,'+
      'referencia,usuario,data_audit,hora_audit) values (:lancamento,:data,:numero,:idgerador,'+
      ':referencia,:usuario,:data_audit,:hora_audit)';
      C_RegistrosLancamento.value := DMProjeto.NextIDGlobal;
    end;
    Q_AtualizaRegistros.ParamByName('lancamento').asinteger := C_RegistrosLancamento.value;
    Q_AtualizaRegistros.ParamByName('data').asdatetime := C_RegistrosData.value;
    Q_AtualizaRegistros.ParamByName('numero').asstring := C_RegistrosNumero.value;
    Q_AtualizaRegistros.ParamByName('idgerador').asinteger := C_RegistrosIDGerador.value;
    if C_RegistrosOrigem.value = 21 then
      Q_AtualizaRegistros.ParamByName('referencia').asstring := C_RegistrosNumero.value
    else
      Q_AtualizaRegistros.ParamByName('referencia').asstring := C_RegistrosReferencia.value;
      
    Q_AtualizaRegistros.ParamByName('usuario').asinteger := DMProjeto.nFuncionario;
    Q_AtualizaRegistros.ParamByName('data_audit').asdatetime := DMProjeto.dDataSistema;
    Q_AtualizaRegistros.ParamByName('hora_audit').asstring := copy(TimeToStr(time),1,5);
    Q_AtualizaRegistros.ExecSQL;

    C_ContraPartida.first;
    while not C_ContraPartida.eof do begin
      if C_ContraPartidaLancamentoItem.value < 0 then begin
        C_ContraPartida.edit;
        C_ContraPartidaLancamentoItem.value := DMProjeto.NextIDGlobal;
        C_ContraPartida.post;
        Q_AtualizaCPartida.SQL.text := 'insert into lancamentositens(lancamentoitem,lancamento,conta,favorecido,valor,historico) '+
        'values (:lancamentoitem,:lancamento,:conta,:favorecido,:valor,:historico)';
      end
      else
        Q_AtualizaCPartida.SQL.text := 'update lancamentositens set conta = :conta,favorecido = :favorecido,valor = :valor,historico = :historico '+
        'where lancamentoitem = :lancamentoitem';

      Q_AtualizaCPartida.ParamByName('lancamentoitem').asinteger := C_ContraPartidaLancamentoItem.value;
      if bNovo then
        Q_AtualizaCPartida.ParamByName('lancamento').asinteger     := C_RegistrosLancamento.value;
      Q_AtualizaCPartida.ParamByName('conta').asinteger          := C_ContraPartidaConta.value;
      Q_AtualizaCPartida.ParamByName('favorecido').asinteger     := C_RegistrosFavorecido.value;
      Q_AtualizaCPartida.ParamByName('valor').ascurrency         := C_ContraPartidaValor.value;
      Q_AtualizaCPartida.ParamByName('historico').asstring       := C_ContraPartidaHistorico.value;
      Q_AtualizaCPartida.ExecSQL;

      C_ContraPartida.next;
    end;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  except
    on e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      ShowMessage(e.message);  
    end;
  end;
end;

procedure TFrmRegistros.C_ContraPartidaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ContraPartidaLancamento.value := -1;
  C_ContraPartidaLancamentoItem.value := -1;
  C_ContraPartidaOrigem.value := -1;
end;

procedure TFrmRegistros.C_RegistrosNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_RegistrosLancamento.value := -1;
  C_RegistrosData.value := DMProjeto.dDataSistema;
  C_RegistrosReferencia.value := AdicionarStr(IntToStr(DMProjeto.NextID('RefLancamentos')),'0',8);
end;

procedure TFrmRegistros.C_RegistrosVALORChange(Sender: TField);
begin
  inherited;
  if C_ContraPartida.RecordCount = 1 then begin
    C_ContraPartida.Edit;
    if C_RegistrosVALOR.value > 0 then
      C_ContraPartidaValor.value := C_RegistrosVALOR.value * (-1)
    else
      C_ContraPartidaValor.value := abs(C_RegistrosVALOR.value);
    C_ContraPartida.Post;
  end;
end;

procedure TFrmRegistros.dbgRegistrosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if dbgRegistros.GetFieldValue(ANode,'Valor',0) < 0 then
    AColor := $00BFBFFF
  else if dbgRegistros.GetFieldValue(ANode,'Valor',0) > 0 then
    AColor := $00CCFFCC;
end;

procedure TFrmRegistros.dbgLancamentosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if dbgLancamentos.GetFieldValue(ANode,'Valor',0) < 0 then
    AColor := $00BFBFFF
  else if dbgLancamentos.GetFieldValue(ANode,'Valor',0) > 0 then
    AColor := $00CCFFCC;
end;

end.

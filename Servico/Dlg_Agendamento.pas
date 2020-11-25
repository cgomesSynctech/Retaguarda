unit Dlg_Agendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_ButtonEdit, TS_EditFavorecido, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  DB, DBClient, TS_DateTimePicker, IBCustomDataSet, IBQuery, TS_TimeEdit,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, dxDBELib, TS_DBComboBox,
  Provider, dxDBEdtr, TS_DBLookupComboBox, TS_DBImageEdit,
  TS_LookupComboBox;

type
  TDlgAgendamento = class(TFrmModeloCadastros)
    edFuncionario: TTS_EditFavorecido;
    Grid: TTS_QDBGrid;
    GridID: TdxDBGridMaskColumn;
    GridNome: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    C_FuncionariosDS: TDataSource;
    TS_Label2: TTS_Label;
    EdCliente: TTS_EditFavorecido;
    GridCliente: TTS_QDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    C_ClientesDS: TDataSource;
    C_Funcionarios: TClientDataSet;
    C_FuncionariosID: TIntegerField;
    C_FuncionariosNome: TStringField;
    C_FuncionariosCargo: TStringField;
    C_FuncionariosCliente: TStringField;
    C_FuncionariosPayrollItem: TStringField;
    C_FuncionariosImagem: TIntegerField;
    C_FuncionariosIDPayrollItem: TIntegerField;
    C_Clientes: TClientDataSet;
    C_ClientesID: TIntegerField;
    C_ClientesNome: TStringField;
    TS_Label5: TTS_Label;
    lbNumEquip: TTS_Label;
    Q_SQL: TIBQuery;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    df_hora: TTS_TimeEdit;
    df_data: TTS_DateTimePicker;
    TS_QDBGrid1: TTS_QDBGrid;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    Q_Rota: TIBQuery;
    P_Rota: TDataSetProvider;
    C_Rota: TClientDataSet;
    C_RotaDS: TDataSource;
    C_RotaROTA: TIntegerField;
    C_RotaDESCRICAO: TStringField;
    TS_SpeedButton1: TTS_SpeedButton;
    C_RotasAgendamentos: TClientDataSet;
    C_RotasAgendamentosDS: TDataSource;
    C_RotasAgendamentosID: TIntegerField;
    C_RotasAgendamentosDESCRICAO: TStringField;
    cbRota: TTS_LookupComboBox;
    procedure edFuncionarioSelecionou(Sender: TObject);
    procedure EdClienteSelecionou(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_QDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
      function getNumEquipamentos(sClientes: String): Integer;
      procedure AtualizaNumEquipamento;
      function getIDsClientes: String;
      function getIDsRotas: String;
      function getIDsClientesRota: String;
      function getIDsFuncionarios: String;
      function getDiasUteis(DataI, DataF:TDateTime): string;
      procedure setAgendamento(funcionario, clientes: string; data: TDateTime; hora: TDateTime);
  public
    { Public declarations }
  end;

var
  DlgAgendamento: TDlgAgendamento;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgAgendamento.setAgendamento;
var
  i, nFunc, nCli, codCli: Integer;
begin
  nFunc := StrToInt(funcionario);
  ncli := ContaStrings(Clientes, ',');
  for i := 1 to nCli do begin
    Q_Sql.Close;
    Q_Sql.Sql.Text := 'insert into ordensservicos(ordemservico, tiposervico, funcionario, cliente, dtaviso, horaaviso) ' +
                      ' values(:id, 3, :func, :cli, :data, :hora) ';
    Q_Sql.ParamByName('id').AsInteger := dmprojeto.nextidglobal;
    Q_Sql.ParamByName('func').AsInteger := nFunc;
    Q_Sql.ParamByName('cli').AsInteger := StrToInt(SeparaStrings(Clientes, ',', i));
    Q_Sql.ParamByName('data').AsDateTime := data;
    Q_Sql.ParamByName('hora').AsDateTime := hora;

    Q_Sql.ExecSql;
  end;
    DMProjeto.IBT_Projeto.CommitRetaining;
end;

function TDlgAgendamento.getDiasUteis;
var
 i, difDias: integer;
 dUteis: string;

begin
 difDias := trunc(DataF) - trunc(DataI);
 for i := 1 to difDias do begin
    if (DayOfWeek(DataI + i) <> 1) and (DayOfWeek(DataI + i) <> 7) then begin
      if (dUteis <> '') then dUteis := dUteis + '|';
      dUteis := dUteis + IntToStr(trunc(DataI) + i);
    end;
 end;
end;

function TDlgAgendamento.getIDsFuncionarios;
var
 IDs: String;
begin
  if C_Funcionarios.RecordCount > 0 then begin
    IDs := '';
    C_Funcionarios.DisableControls;
    C_Funcionarios.First;
    while not C_Funcionarios.EOF do begin
      IDs := CExp(IDs,',') + C_FuncionariosID.AsString;
      C_Funcionarios.Next;
    end;
    C_Funcionarios.EnableControls;
    result := IDs;
  end
  else
    result := '';
end;

function TDlgAgendamento.getIDsRotas;
var
 IDs: String;
begin
  if C_RotasAgendamentos.RecordCount > 0 then begin
    IDs := '';
    C_RotasAgendamentos.DisableControls;
    C_RotasAgendamentos.First;
    while not C_RotasAgendamentos.EOF do begin
      IDs := CExp(IDs,',') + C_RotasAgendamentosID.AsString;
      C_RotasAgendamentos.Next;
    end;
    C_RotasAgendamentos.EnableControls;
    result := IDs;
  end
  else
    result := '';
end;

function TDlgAgendamento.getIDsClientesRota;
var
  ids: String;
begin
// ids := getIDsClientes;
 ids := getIDsRotas;
 if (ids = '') then begin
   result := '';
   exit;
 end;

 Q_Sql.Close;
 Q_Sql.Sql.Text := 'select r.clientes from rotas r where r.rota in ('+ids+') ';
 Q_Sql.Open;
 ids := '';
 while (not Q_Sql.EOF) do begin
   ids := ids + Q_Sql.Fields[0].AsString + ',';
   Q_Sql.Next;
 end;

 result := copy(ids, 1, length(ids)-1);
end;

function TDlgAgendamento.getIDsClientes;
var
 IDs: String;
begin
  if C_Clientes.RecordCount > 0 then begin
    IDs := '';
    C_Clientes.DisableControls;
    C_Clientes.First;
    while not C_Clientes.EOF do begin
      IDs := CExp(IDs,',') + C_ClientesID.AsString;
      C_Clientes.Next;
    end;
    C_Clientes.EnableControls;
    result := IDs;
  end
  else 
    result := '';
end;

procedure TDlgAgendamento.AtualizaNumEquipamento;
begin
  lbNumEquip.Caption := IntToStr(getNumEquipamentos(getIDsClientes));
end;

function TDlgAgendamento.getNumEquipamentos;
begin
  if (sClientes = '') then result := 0
  else begin
    Q_Sql.Sql.Text := 'select count(e.equipamento) from favorecidos f ' +
                      'inner join equipamentos e on f.favorecido = e.favorecido '+
                      'where f.favorecido in ('+sClientes+')';
    Q_Sql.Open;
    result := Q_Sql.Fields[0].AsInteger;
  end;
end;


procedure TDlgAgendamento.edFuncionarioSelecionou(Sender: TObject);
var ID: integer;
begin
  inherited;
    ID := edFuncionario.ID;
    with C_Funcionarios do begin
    	if not Locate('ID',id,[]) then begin
      	Append;
        FieldByName('ID').AsInteger	 := ID;
        FieldByName('Nome').AsString := edFuncionario.Text;
       	FieldByName('Cargo').AsString := VarToStr(DMProjeto.getCampoTabela('Cargos','Cargo','Descricao',DMProjeto.C_LocalizarFavCargo.Value));
        Post;
      end;
    end;
    edFuncionario.Text := '';
end;

procedure TDlgAgendamento.EdClienteSelecionou(Sender: TObject);
var ID: integer;
begin
  inherited;
  ID := edCliente.ID;
  with C_Clientes do begin
    if not Locate('ID',id,[]) then begin
      Append;
      FieldByName('ID').AsInteger	 := ID;
      FieldByName('Nome').AsString := edCliente.Text;
      Post;
    end;
  end;
  edCliente.Text := '';

  AtualizaNumEquipamento;
end;

procedure TDlgAgendamento.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_DELETE then
    C_Funcionarios.Delete;
end;

procedure TDlgAgendamento.GridClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_DELETE then
    C_Clientes.Delete;
  AtualizaNumEquipamento;  
end;

procedure TDlgAgendamento.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	C_Funcionarios.CreateDataSet;
	C_Clientes.CreateDataSet;
  C_RotasAgendamentos.CreateDataSet;
  C_Rota.Close;
  C_Rota.Open;
  df_data.Date := DMProjeto.dDataSistema;
  df_hora.Time := DMProjeto.GetTimeServidor;
end;


procedure TDlgAgendamento.btGravarClick(Sender: TObject);
var
  sFunc, sCli, sCli1: String;
  nFunc, nCli, qtdeEquip, i, d, r, p, iCliente, numEquipFunc, numEquip: Integer;
begin
  inherited;
  sFunc := getIDsFuncionarios;
  nFunc := ContaStrings(sFunc, ',');
  sCli  := getIDsClientesRota;
  nCli  := ContaStrings(sCli, ',');
  qtdeEquip := getNumEquipamentos(sCli);

  if (nFunc <= 0) or (nCli <= 0) or (qtdeEquip <=0) then begin
    
    exit;
  end;
  

  d     := (qtdeEquip div nfunc);
  r     := (qtdeEquip mod nfunc);

  iCliente := 1;
  for i:=1 to nFunc do begin
    numEquipFunc := 0;
    while (numEquipFunc < d) do begin
      sCli1 := separaStrings(sCli, ',', iCliente);
      numEquip := getNumEquipamentos(sCli1);
      numEquipFunc := numEquipFunc + NumEquip;
      setAgendamento(SeparaStrings(sFunc, ',', i), SeparaStrings(sCli, ',', iCliente), df_data.Date, df_hora.Time);
      inc(iCliente);
      if (iCliente > nCli) then break; // Completou os clientes
    end;
    if (iCliente > nCli) then break; // Completou os clientes

    if (r > 0) then begin
      p := numEquipFunc - d;
      if (p > 0) then
        r := r - p
      else begin
        r := r - 1;
        setAgendamento(SeparaStrings(sFunc, ',', i), SeparaStrings(sCli, ',', iCliente), df_data.Date, df_hora.Time);
        inc(iCliente);
        if (iCliente > nCli) then break; // Completou os clientes
      end;
    end;
  end;
  DlgMsg.ShowMsg( 50, ['Concluído com sucesso!']);
  C_Funcionarios.EmptyDataSet;
  C_Clientes.EmptyDataSet;
  C_RotasAgendamentos.EmptyDataSet;
end;

procedure TDlgAgendamento.TS_SpeedButton1Click(Sender: TObject);
var ID: integer;
begin
  inherited;
  if (cbRota.LookupKeyValue <> null) then begin
    ID :=  cbRota.LookupKeyValue;  // edFuncionario.ID;
    with C_RotasAgendamentos do begin
      if not Locate('ID',id,[]) then begin
        Append;
        FieldByName('ID').AsInteger	 := ID;
        FieldByName('Descricao').AsString := cbRota.Text;
        Post;
      end;
    end;
    cbRota.Text := '';
  end;
end;

procedure TDlgAgendamento.TS_QDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_DELETE then
    C_RotasAgendamentos.Delete;
end;

end.

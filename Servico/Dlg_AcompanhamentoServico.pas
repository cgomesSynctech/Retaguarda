unit Dlg_AcompanhamentoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, CheckLst, TS_CheckListBox, dxEditor, dxEdLib, TS_PopupEdit,
  TS_ButtonEdit, TS_EditFavorecido, DB, DBClient, Provider,
  IBCustomDataSet, IBQuery, TS_Shape, TS_DateTimePicker, TS_CheckBox;

type
  TDlgAcompanhamentoServico = class(TFrmModeloCadastros)
    pnFiltro: TTS_Panel;
    dbgOS: TTS_QDBGrid;
    edServicos: TTS_PopupEdit;
    lbServico: TTS_Label;
    clbServicos: TTS_CheckListBox;
    TS_Label1: TTS_Label;
    edDiscriminacao: TTS_PopupEdit;
    clbDiscriminacao: TTS_CheckListBox;
    ppmGridDiscriminacao: TTS_PopupMenu;
    TS_Label2: TTS_Label;
    edFaltando: TTS_PopupEdit;
    clbFaltando: TTS_CheckListBox;
    TS_Label3: TTS_Label;
    edFunc: TTS_EditFavorecido;
    Q_OS: TIBQuery;
    P_OS: TDataSetProvider;
    C_OS: TClientDataSet;
    C_OSORDEMSERVICO: TIntegerField;
    C_OSNUMERO: TStringField;
    C_OSCLIENTE: TIntegerField;
    C_OSEQUIPAMENTO: TIntegerField;
    C_OSFUNCIONARIO: TIntegerField;
    C_OSTIPOSERVICO: TIntegerField;
    C_OSSTATUSATENDIMENTO: TIntegerField;
    C_OSDESCRICAOSERVICO: TStringField;
    C_OSROTA: TIntegerField;
    C_OSFATURADO: TStringField;
    C_OSNUMEROANTERIOR: TStringField;
    C_OSNOMECLIENTE: TStringField;
    C_OSENDERECO: TStringField;
    C_OSBAIRRO: TStringField;
    C_OSCIDADE: TStringField;
    C_OSUF: TStringField;
    C_OSFONE1: TStringField;
    C_OSFONE2: TStringField;
    C_OSNUMMAQUINA: TStringField;
    C_OSDESCMARCA: TStringField;
    C_OSDESCTECNOLOGIA: TStringField;
    C_OSPAVIMENTOS: TIntegerField;
    C_OSDESCEQUIP: TStringField;
    C_OSNOMEFUNC: TStringField;
    C_OSDESCROTA: TStringField;
    C_OSDS: TDataSource;
    dbgOSORDEMSERVICO: TdxDBGridMaskColumn;
    dbgOSNUMERO: TdxDBGridMaskColumn;
    dbgOSCLIENTE: TdxDBGridMaskColumn;
    dbgOSEQUIPAMENTO: TdxDBGridMaskColumn;
    dbgOSFUNCIONARIO: TdxDBGridMaskColumn;
    dbgOSTIPOSERVICO: TdxDBGridMaskColumn;
    dbgOSAVISO: TdxDBGridMaskColumn;
    dbgOSCHEGADA: TdxDBGridMaskColumn;
    dbgOSTERMINO: TdxDBGridMaskColumn;
    dbgOSSTATUSATENDIMENTO: TdxDBGridMaskColumn;
    dbgOSDESCRICAOSERVICO: TdxDBGridMaskColumn;
    dbgOSROTA: TdxDBGridMaskColumn;
    dbgOSFATURADO: TdxDBGridMaskColumn;
    dbgOSNUMEROANTERIOR: TdxDBGridMaskColumn;
    dbgOSNOMECLIENTE: TdxDBGridMaskColumn;
    dbgOSENDERECO: TdxDBGridMaskColumn;
    dbgOSBAIRRO: TdxDBGridMaskColumn;
    dbgOSCIDADE: TdxDBGridMaskColumn;
    dbgOSUF: TdxDBGridMaskColumn;
    dbgOSFONE1: TdxDBGridMaskColumn;
    dbgOSFONE2: TdxDBGridMaskColumn;
    dbgOSNUMMAQUINA: TdxDBGridMaskColumn;
    dbgOSDESCMARCA: TdxDBGridMaskColumn;
    dbgOSDESCTECNOLOGIA: TdxDBGridMaskColumn;
    dbgOSPAVIMENTOS: TdxDBGridMaskColumn;
    dbgOSDESCEQUIP: TdxDBGridMaskColumn;
    dbgOSNOMEFUNC: TdxDBGridMaskColumn;
    dbgOSDESCROTA: TdxDBGridMaskColumn;
    C_OSicTipoServico: TStringField;
    C_OSicStatus: TStringField;
    C_OSORDEMSERVICOVICULO: TIntegerField;
    dbgOSORDEMSERVICOVICULO: TdxDBGridMaskColumn;
    dbgOSicTipoServico: TdxDBGridColumn;
    dbgOSicStatus: TdxDBGridColumn;
    TS_Shape1: TTS_Shape;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label6: TTS_Label;
    TS_Shape4: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    C_OSAVISO: TDateTimeField;
    C_OSCHEGADA: TDateTimeField;
    C_OSTERMINO: TDateTimeField;
    ckbPeriodo: TTS_CheckBox;
    lbDataI: TTS_Label;
    edDataI: TTS_DateTimePicker;
    lbDataF: TTS_Label;
    edDataF: TTS_DateTimePicker;
    TS_Label12: TTS_Label;
    edRota: TTS_PopupEdit;
    clbRotas: TTS_CheckListBox;
    Q_Rotas: TIBQuery;
    P_Rotas: TDataSetProvider;
    C_Rotas: TClientDataSet;
    C_RotasROTA: TIntegerField;
    C_RotasDESCRICAO: TStringField;
    ckbOSAnterior: TTS_CheckBox;
    procedure edServicosCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure edDiscriminacaoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure edFaltandoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure edFuncSelecionou(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure C_OSCalcFields(DataSet: TDataSet);
    procedure dbgOSDblClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgOSCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ckbPeriodoChange(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
    procedure edRotaCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure ckbOSAnteriorChange(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  DlgAcompanhamentoServico: TDlgAcompanhamentoServico;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TDlgAcompanhamentoServico.Atualizar;
var sServ, sDisc, sFalt, sAux : string;
begin
 //
 C_OS.Close;
 Q_OS.SQL.Text := 'select os.ordemservico, os.numero, os.cliente, ' +
                  'os.equipamento, os.funcionario, os.tiposervico, ' +
                  '(os.dtaviso + os.horaaviso) as aviso, ' +
                  '(os.dtchegada + os.horachegada) as chegada, '+
                  '(os.dttermino + os.horatermino) as termino, '+
                  'os.statusatendimento, os.descricaoservico, os.rota, '+
                  'os.faturado, os.ordemservicoviculo, os.numeroanterior, f.nome as nomecliente, '+
                  'f.endereco, f.bairro, f.cidade, f.uf, f.fone1, f.fone2, '+
                  'eq.nummaquina, m.descricao as descmarca, '+
                  't.descricao as desctecnologia, eq.pavimentos, '+
                  'eq.descricao as descequip, v.nome as nomefunc, ' +
                  'r.descricao as descrota ' +
                  'from ordensservicos os ' +
                  'left join favorecidos f on os.cliente = f.favorecido ' +
                  'left join equipamentos eq on os.equipamento = eq.equipamento ' +
                  'left join favorecidos v on os.funcionario = v.favorecido ' +
                  'left join rotas r on os.rota = r.rota ' +
                  'left join marcas m on eq.marca = m.marca ' +
                  'left join tecnologias t on eq.tecnologia = t.tecnologia ' +
                  'where 1 = 1 ';
  sServ := clbServicos.Selecionados(True);
  if sServ <> '' then begin
    sAux := '';
    if Pos('Chamado',sServ) > 0 then sAux := Cexp(sAux,',') + '1';
    if Pos('Vistoria',sServ) > 0 then sAux := Cexp(sAux,',') + '2';
    if Pos('Preventiva',sServ) > 0 then sAux := Cexp(sAux,',') + '3';
    if Pos('Corretiva',sServ) > 0 then sAux := Cexp(sAux,',') + '4';
    if Pos('Outros',sServ) > 0 then sAux := Cexp(sAux,',') + '5';
    if sAux <> '' then Q_OS.SQL.Text := Q_OS.SQL.Text + ' and os.tiposervico in (' + sAux + ') ';
  end;
  //
  sDisc := clbDiscriminacao.Selecionados(True);
  if sDisc <> '' then begin
    sAux := '';
    if Pos('Equip. Normal',sDisc) > 0 then sAux := Cexp(sAux,',') + '1';
    if Pos('Equip. Parado',sDisc) > 0 then sAux := Cexp(sAux,',') + '2';
    if Pos('Equip. Func C/ Pend.',sDisc) > 0 then sAux := Cexp(sAux,',') + '3';
    if Pos('Passageiro Preso',sDisc) > 0 then sAux := Cexp(sAux,',') + '4';;
    if sAux <> '' then Q_OS.SQL.Text := Q_OS.SQL.Text + ' and os.statusatendimento in (' + sAux + ') ';
  end;
  //
  sFalt := clbFaltando.Selecionados(True);
  if sFalt <> '' then begin
    sAux := '';
    if Pos('Aviso',sFalt) > 0 then sAux := Cexp(sAux, ' or ') + ' os.dtaviso is null ';
    if Pos('Chegada',sFalt) > 0 then sAux := Cexp(sAux, ' or ') + ' os.dtchegada is null ';
    if Pos('Término',sFalt) > 0 then sAux := Cexp(sAux, ' or ' ) + ' os.dttermino is null ';
    if sAux <> '' then Q_OS.SQL.Text := Q_OS.SQL.Text + ' and (' + sAux + ')';
  end;
  //
  if edFunc.ID > 0 then Q_OS.SQL.Text := Q_OS.SQL.Text + ' and os.funcionario = ' + IntToStr(edFunc.ID);
  if ckbPeriodo.Checked then begin
    Q_OS.SQL.Text := Q_OS.SQL.Text + ' and os.dtaviso between :d1 and :d2 ';
    Q_OS.ParamByName('d1').AsDateTime := edDataI.Date;
    Q_OS.ParamByName('d2').AsDateTime := edDataF.Date;
  end;
  //
  sAux := clbRotas.Selecionados;
  if sAux <> '' then begin
    Q_OS.SQL.Text := Q_OS.SQL.Text + ' and os.rota in (' + sAux + ') ';
  end;
  //
  if ckbOSAnterior.Checked then
    Q_OS.SQL.Text := Q_OS.SQL.Text + ' and (os.numeroanterior is not null or rtrim(ltrim(os.numeroanterior)) <> '''') '; 
  C_OS.Open;
  with dbgOS do begin
    TS_ReportFilter.Clear;
    if sServ <> '' then TS_ReportFilter.Add('Serviços:' + sServ);
    if sDisc <> '' then TS_ReportFilter.Add('Discriminação:' + sDisc);
    if sFalt <> '' then TS_ReportFilter.Add('Faltando:' + sFalt);
    if edFunc.ID > 0 then TS_ReportFilter.Add('Funcionário:' + edFunc.Text);
    if sAux <> '' then TS_ReportFilter.Add('Rotas:' + clbRotas.Selecionados(True));
    if ckbOSAnterior.Checked then TS_ReportFilter.Add('Com OS Anterior');
    GoToFirst;
  end;
end;

procedure TDlgAcompanhamentoServico.edServicosCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbServicos.Selecionados(True);
  Accept := true;
	Atualizar;
end;

procedure TDlgAcompanhamentoServico.edDiscriminacaoCloseUp(
  Sender: TObject; var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbDiscriminacao.Selecionados(True);
  Accept := true;
	Atualizar;
end;

procedure TDlgAcompanhamentoServico.edFaltandoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbFaltando.Selecionados(True);
  Accept := true;
	Atualizar;
end;

procedure TDlgAcompanhamentoServico.edFuncSelecionou(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TDlgAcompanhamentoServico.btGravarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TDlgAcompanhamentoServico.C_OSCalcFields(DataSet: TDataSet);
begin
  inherited;
  case DataSet.FieldByName('TIPOSERVICO').AsInteger of
    1 : DataSet.FieldByName('icTipoServico').AsString := 'Chamado';
    2 : DataSet.FieldByName('icTipoServico').AsString := 'Vistoria';
    3 : DataSet.FieldByName('icTipoServico').AsString := 'Preventiva';
    4 : DataSet.FieldByName('icTipoServico').AsString := 'Corretiva';
    5 : DataSet.FieldByName('icTipoServico').AsString := 'Outros';
  end;
  //
  case DataSet.FieldByName('STATUSATENDIMENTO').AsInteger of
    1 : DataSet.FieldByName('icStatus').AsString := 'Equip. Normal';
    2 : DataSet.FieldByName('icStatus').AsString := 'Equip. Parado';
    3 : DataSet.FieldByName('icStatus').AsString := 'Equip. Func C/ Pend.';
    4 : DataSet.FieldByName('icStatus').AsString := 'Passageiro Preso';
  end;
end;

procedure TDlgAcompanhamentoServico.dbgOSDblClick(Sender: TObject);
begin
  inherited;
  if (dbgOS.TS_SelectedColumn = 'NOMECLIENTE') or
     (dbgOS.TS_SelectedColumn = 'ENDERECO') or
     (dbgOS.TS_SelectedColumn = 'BAIRRO') or
     (dbgOS.TS_SelectedColumn = 'CIDADE') or
     (dbgOS.TS_SelectedColumn = 'UF') or
     (dbgOS.TS_SelectedColumn = 'FONE1') or
     (dbgOS.TS_SelectedColumn = 'FONE2') then begin
     DMProjeto.SetParametrosForm([C_OSCLIENTE.Value]);
     DMProjeto.CriarForm('FrmClientes',Self,True);
  end else if (dbgOS.TS_SelectedColumn = 'NUMEROANTERIOR') then begin
    DMProjeto.SetParametrosForm([C_OSORDEMSERVICOVICULO.Value]);
    DMProjeto.CriarForm('FrmOrdemServico',Self,True);
  end else if (dbgOS.TS_SelectedColumn = 'NUMMAQUINA') or
              (dbgOS.TS_SelectedColumn = 'DESCMARCA') or
              (dbgOS.TS_SelectedColumn = 'DESCTECNOLOGIA') or
              (dbgOS.TS_SelectedColumn = 'PAVIMENTOS') or
              (dbgOS.TS_SelectedColumn = 'DESCEQUIP') then begin
    DMProjeto.SetParametrosForm([C_OSEQUIPAMENTO.Value]);
    DMProjeto.CriarForm('FrmEquipamento',Self,True);
  end else if (dbgOS.TS_SelectedColumn = 'NOMEFUNC') then begin
    DMProjeto.SetParametrosForm([C_OSFUNCIONARIO.Value]);
    DMProjeto.CriarForm('FrmFuncionarios',Self,True);
  end else begin
    DMProjeto.SetParametrosForm([C_OSORDEMSERVICO.Value]);
    DMProjeto.CriarForm('FrmOrdemServico',Self,True);
  end;
end;

procedure TDlgAcompanhamentoServico.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_OSORDEMSERVICO.Value]);
  DMProjeto.CriarForm('FrmOrdemServico',Self,True);
end;

procedure TDlgAcompanhamentoServico.btLimparClick(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmOrdemServico',Self,True);
end;

procedure TDlgAcompanhamentoServico.FormsComponentRefresh(
  Sender: TObject);
begin
  inherited;
  if (pos(UpperCase(LastDataObject.TableName),'ORDENSSERVICOS')>0) then Atualizar;
end;

procedure TDlgAcompanhamentoServico.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  clbServicos.SetSelecionados('Chamado,Vistoria,Preventiva,Corretiva,Outros',True);
  clbDiscriminacao.SetSelecionados('Equip. Parado,Equip. Func C/ Pend.,Passageiro Preso',True);
  clbFaltando.SetSelecionados('',True);
  C_Rotas.Close;
  C_Rotas.Open;
  clbRotas.SetDataSet(C_Rotas);
  edDataI.OnDateChange := nil;
  edDataF.OnDateChange := nil;
  edDataI.Date := DMProjeto.dDataSistema;
  edDataF.Date := DMProjeto.dDataSistema;
  edDataI.OnDateChange := edDataIDateChange;
  edDataF.OnDateChange := edDataIDateChange;
  Atualizar;
end;

procedure TDlgAcompanhamentoServico.dbgOSCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (dbgOS.GetFieldValue(ANode, 'STATUSATENDIMENTO', 0) = 1) then AFont.Color := clBlue
  else if (dbgOS.GetFieldValue(ANode, 'STATUSATENDIMENTO', 0) = 2) then AFont.Color := clBlack
  else if (dbgOS.GetFieldValue(ANode, 'STATUSATENDIMENTO', 0) = 3) then AFont.Color := $00408000
  else if (dbgOS.GetFieldValue(ANode, 'STATUSATENDIMENTO', 0) = 4) then AFont.Color := clRed;
  //
  if (dbgOS.GetFieldValue(ANode, 'TIPOSERVICO', 0) = 4) then AFont.Style := AFont.Style + [fsBold];
  //
  if (Trim(dbgOS.GetFieldValue(ANode, 'CHEGADA', '')) = '') then AFont.Style := AFont.Style + [fsItalic];
end;

procedure TDlgAcompanhamentoServico.ckbPeriodoChange(Sender: TObject);
begin
  inherited;
  lbDataI.Enabled := ckbPeriodo.Checked;
  edDataI.Enabled := ckbPeriodo.Checked;
  lbDataF.Enabled := ckbPeriodo.Checked;
  edDataF.Enabled := ckbPeriodo.Checked;
  Atualizar;
end;

procedure TDlgAcompanhamentoServico.edDataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TDlgAcompanhamentoServico.edRotaCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbRotas.Selecionados(True);
  Accept := true;
	Atualizar;
end;

procedure TDlgAcompanhamentoServico.ckbOSAnteriorChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

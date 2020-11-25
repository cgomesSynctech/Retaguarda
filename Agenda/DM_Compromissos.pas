unit DM_Compromissos;

interface           

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, ComCtrls, IBSQL, Variants;

type
  TDMCompromissos = class(TDMManutencao)
    Q_Consulta: TIBQuery;
    Q_Config_Comp: TIBQuery;
    C_Config_CompDS: TDataSource;
    C_Config_Comp: TClientDataSet;
    C_Config_CompProvider: TDataSetProvider;
    C_Consulta: TClientDataSet;
    C_ConsultaP: TDataSetProvider;
    C_TabelalkCategoria: TStringField;
    C_TabelalkUsuOrigem: TStringField;
    C_TabelaCOMPROMISSO: TIntegerField;
    C_TabelaUSUORIGEM: TIntegerField;
    C_TabelaUSUDESTINO: TIntegerField;
    C_TabelaASSUNTO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaDATACONCLUSAO: TDateField;
    C_TabelaHORARIO: TIntegerField;
    C_TabelaHORARIO_FINAL: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaCONCLUIDO: TStringField;
    C_TabelaCONCLUIDO_ANOTACOES: TStringField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaCATEGORIA: TIntegerField;
    C_TabelaCONFIG_ID: TIntegerField;
    C_TabelaTAREFA: TIntegerField;
    C_TabelaCLIENTE_NOME: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_Config_CompCONFIG_ID: TIntegerField;
    C_Config_CompDATA_INI: TDateField;
    C_Config_CompDATA_FIM: TDateField;
    C_Config_CompTIPO: TStringField;
    C_Config_CompTIPO_SEMANAL: TStringField;
    C_Config_CompTIPO_MENSAL: TIntegerField;
    C_TabelalkUsuDestino: TStringField;
    C_TabelaUSUARIOS: TStringField;
    C_TabelalkTarefa: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaHORAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaCONCLUIDOChange(Sender: TField);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure C_TabelaHORARIOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure C_TabelaCATEGORIAChange(Sender: TField);
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    varFormaDeAtualizacao, CompromissoAlteradoIncluido: integer;
    TurnoAlteradoIncluido: string;
  public
    { Public declarations }
    Param0,Param1: TDateTime;
    Param2,Param3,Param4: Variant;
    //
    varNaoApagaTodos: boolean;
    function _SomaHora( Hora1: string; QtdeHoras: integer ): TDateTime;
    procedure AtualizaLookupTarefas;
  end;

var
  DMCompromissos: TDMCompromissos;

implementation

uses DM_Projeto, Dlg_CalendarioMes, funcoes, DM_Agenda, Frm_Compromissos,
     Dlg_Config_Altera, Frm_Padrao;

{$R *.DFM}

procedure TDMCompromissos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCompromissos := self;
end;

procedure TDMCompromissos.C_TabelaHORAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Copy(Sender.AsString,1,5);
end;

procedure TDMCompromissos.DMComponentGravar1_Iniciar(Sender: TObject; var bSkip: Boolean);
var campos: string;
    diferencaHoras: integer;
    MudouPeriodicidade, ApagaTodos: boolean;
begin
  inherited;
  if C_Tabela.State in [dsInsert, dsEdit] then
    C_Tabela.UpdateRecord;

    // Ordem do Horario
    diferencaHoras := C_TabelaHORARIO_FINAL.Value - C_TabelaHORARIO.Value;
    if (diferencaHoras < 0) then begin
      DlgMsg.ShowMsg( 2008 );
      bSkip := True;
      Exit;
    end;

    if DMAgenda.ExisteCompromisso(C_TabelaCONFIG_ID.Value,
                           				Param0, {C_Config_CompDATA_INI.Value,}
                                	Param1, {C_Config_CompDATA_FIM.Value,}
                                	C_TabelaHORARIO.Value ,
                                	C_TabelaHORARIO_FINAL.Value,
                                	C_TabelaUSUDESTINO.AsString,
                                	C_Config_CompTIPO.Value,
                                	C_Config_CompTIPO_SEMANAL.Value,
                                	C_Config_CompTIPO_MENSAL.Value,
                                	C_Consulta ) then
       if DlgMsg.ShowMsg( 2009 ) = 200 then begin
          bSkip := True;
          Exit;
       end;

    if not (C_Tabela.state in [dsEdit,dsInsert]) then
      C_Tabela.edit;

    // Tabela de Configurações
    if C_TabelaCONFIG_ID.AsVariant <> null then begin
       C_Config_Comp.Filter := 'CONFIG_ID=' + IntToStr(C_TabelaCONFIG_ID.Value);
       C_Config_Comp.Filtered := True;
       C_Config_Comp.Edit;
    end else begin
       C_Config_Comp.Append;
       C_Config_CompCONFIG_ID.Value := DMProjeto.NextID('CONFIG_COMP');
       C_TabelaCONFIG_ID.Value := C_Config_CompCONFIG_ID.Value;
    end;

    // Atualiza a periodicidade em todos (ou não)
    C_Config_CompDATA_INI.Value := Param0; // DF_DataInicial
    C_Config_CompDATA_FIM.Value := Param1; // DF_DataFinal
    // Uma vez
    if (Param2 = 'UMAVEZ') then begin {CB_Periodicidade.ItemIndex}
      C_Config_CompTIPO.Value := 'U';
      MudouPeriodicidade := Param3;
    end;
    // Diário
    if (Param2 = 'DIARIO') then begin {CB_Periodicidade.ItemIndex}
      C_Config_CompTIPO.Value := 'D';
      MudouPeriodicidade := Param3;
    end;
    // Semanalmente
    if (Param2 = 'SEMANA') then begin {CB_Periodicidade.ItemIndex}
      C_Config_CompTIPO.Value := 'S';
      C_Config_CompTIPO_SEMANAL.Value := Param3;
      MudouPeriodicidade := Param4;
    end;
    // Mensal
    if (Param2 = 'MES') then begin {CB_Periodicidade.ItemIndex}
      C_Config_CompTIPO.Value := 'M';
      C_Config_CompTIPO_MENSAL.Value := Param3; //SE_Mensal.Value
      MudouPeriodicidade := Param4;
    end;

    C_Config_Comp.Post;
    if C_Config_Comp.ChangeCount > 0 then
    	C_Config_Comp.ApplyUpdates(0);

    // Atualizações no periódico
    if (C_Config_Comp.State in [dsInsert]) then
      varFormaDeAtualizacao := 1
    else begin
      if (MudouPeriodicidade) then begin
        try
          DlgConfig_Altera := TDlgConfig_Altera.Create(Self);
          varFormaDeAtualizacao := DlgConfig_Altera.ShowModal;
          ApagaTodos := DlgConfig_Altera.cbkApagar.Checked;
        finally
          DlgConfig_Altera.Release;
        end;
        Application.ProcessMessages;
        DMAgenda.MudaPeriodicidade( ApagaTodos, C_Config_CompCONFIG_ID.Value,
                                    C_Config_CompTIPO.Value[1], C_Config_CompTIPO_SEMANAL.Value,
                                    C_Config_CompTIPO_MENSAL.Value, C_Config_CompDATA_INI.Value,
                                    C_Config_CompDATA_FIM.Value, C_TabelaDATA.Value,
                                    C_TabelaUSUDESTINO.Value, C_TabelaUSUORIGEM.Value,
                                    C_TabelaASSUNTO.Value, C_TabelaDESCRICAO.Value,
                                    C_TabelaHORARIO.Value, C_TabelaHORARIO_FINAL.Value,
                                    C_TabelaCLIENTE.Value, C_TabelaCATEGORIA.Value,
                                    C_TabelaTAREFA.Value, C_TabelaCONCLUIDO.Value[1],
                                    C_TabelaDESATIVADO.Value[1], Self,
                                    C_Consulta, C_TabelaCOMPROMISSO.Value, C_TabelaUSUARIOS.Value );
      end else begin
        varFormaDeAtualizacao := 1;
        varNaoApagaTodos := True;
      end;
    end;
end;

procedure TDMCompromissos.C_TabelaCONCLUIDOChange(Sender: TField);
begin
  inherited;
  if Sender.Value = 'S' then
    C_TabelaDATACONCLUSAO.Value := Date
  else C_TabelaDATACONCLUSAO.AsVariant := null;
end;

function TDMCompromissos._SomaHora( Hora1: string; QtdeHoras: integer ): TDateTime;
var h, m, s, ms: word;
begin
  DecodeTime( StrToTime(Hora1), h, m, s, ms );
  Inc(h, QtdeHoras);
  if h >= 24 then
    h := 0;
  result := EncodeTime(h,m,s,ms);
end;

procedure TDMCompromissos.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  CompromissoAlteradoIncluido := C_TabelaCOMPROMISSO.Value;
  if DMAgenda.TurnoDaHoraInteira(C_TabelaHORARIO.Value) = 'M' then
    TurnoAlteradoIncluido := 'ListManha';
  if DMAgenda.TurnoDaHoraInteira(C_TabelaHORARIO.Value) = 'T' then
    TurnoAlteradoIncluido := 'ListTarde';
  if DMAgenda.TurnoDaHoraInteira(C_TabelaHORARIO.Value) = 'N' then
    TurnoAlteradoIncluido := 'ListNoite';
  DMAgenda.AtualizaCompromissos( varFormaDeAtualizacao,
                  C_Config_CompCONFIG_ID.Value,
                  C_Config_CompTIPO.Value[1] ,
                  C_Config_CompTIPO_SEMANAL.Value,
                  C_Config_CompTIPO_MENSAL.Value,
                  C_Config_CompDATA_INI.Value,
                  C_Config_CompDATA_FIM.Value,
                  C_TabelaDATA.Value,
                  C_TabelaUSUDESTINO.Value,
                  C_TabelaUSUORIGEM.Value,
                  C_TabelaASSUNTO.Value,
                  C_TabelaDESCRICAO.Value,
                  C_TabelaHORARIO.Value,
                  C_TabelaHORARIO_FINAL.Value,
                  C_TabelaCLIENTE.Value,
                  C_TabelaCATEGORIA.Value,
                  C_TabelaTAREFA.Value,
                  C_TabelaCONCLUIDO.Value[1],
                  C_TabelaDESATIVADO.Value[1],
                  Self,
                  C_Consulta, C_TabelaCOMPROMISSO.Value,
                  FrmCompromissos.sUsuariosAntigos,
                  C_TabelaUSUARIOS.Value );
	C_Config_Comp.Filtered := False;
  //   C_Config_Comp.ApplyUpdates(0);
end;

procedure TDMCompromissos.C_TabelaHORARIOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := DMAgenda.IntegerToHora(Sender.AsInteger,DMProjeto.bFormatoAMPM);
end;

procedure TDMCompromissos.C_TabelaCATEGORIAChange(Sender: TField);
begin
  inherited;
  if FrmCompromissos<>nil then
    if (FrmCompromissos.Estado<>fsLoading) then begin
      with FrmCompromissos do begin
        DF_Categoria.Color := StringToColor(DMAgenda.C_CategoriasCOR.Value);
        DF_Categoria.Font.Color := StringToColor(DMAgenda.C_CategoriasCOR_FONTE.Value);
      end;
    end;
end;

procedure TDMCompromissos.AtualizaLookupTarefas;
begin
  if C_TabelaUSUARIOS.Value<>'' then begin
    with DMAgenda.C_Tarefas do begin
      Close;
      DMAgenda.Q_Tarefas.SQL.Text := 'Select TAREFA, ASSUNTO as DESCRICAO From Tarefas '+
        'Where USUDESTINO In ('+C_TabelaUSUARIOS.Value+')';
      Open;
    end;
  end else begin
    with DMAgenda.C_Tarefas do begin
      Close;
      DMAgenda.Q_Tarefas.SQL.Text := 'Select TAREFA, ASSUNTO as DESCRICAO From Tarefas '+
        'Where USUDESTINO In (-1)';
      Open;
    end;
  end;
end;

procedure TDMCompromissos.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  if not(C_Config_Comp.Active) then
    C_Config_Comp.Open;
end;

procedure TDMCompromissos.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_TabelaDesativado.Value := 'N';
end;

end.

{
var ApagaTodos: boolean;
    Resultado: integer;
    Semana: string;
begin
  inherited;
  ApagaTodos := False;
  if MudouPeriodicidade then begin
    Resultado := DlgMsg.ShowMsg( 2013 );
    if Resultado=300 then // Cancelar
      exit;
    if Resultado=100 then // Sim
      ApagaTodos := True
    else if Resultado=200 then // Não
      ApagaTodos := False;
    pbPeriodicidade.Visible := True;
    with DMCompromissos do begin
      if not(C_Config_Comp.State in [dsEdit,dsInsert]) then C_Config_Comp.Edit;
      if CB_Periodicidade.ItemIndex = 0 then begin // Uma Vez
        C_Config_CompTIPO.Value := 'U';
      end;
      if CB_Periodicidade.ItemIndex = 1 then begin // Diário
        C_Config_CompTIPO.Value := 'D';
      end;
      if CB_Periodicidade.ItemIndex = 2 then begin // Semanal
        Semana := '';
        if Chk_Dom.Checked then AppendStr(Semana, '1');
        if Chk_Seg.Checked then AppendStr(Semana, '2');
        if Chk_Ter.Checked then AppendStr(Semana, '3');
        if Chk_Qua.Checked then AppendStr(Semana, '4');
        if Chk_Qui.Checked then AppendStr(Semana, '5');
        if Chk_Sex.Checked then AppendStr(Semana, '6');
        if Chk_Sab.Checked then AppendStr(Semana, '7');
        C_Config_CompTIPO.Value := 'S';
        C_Config_CompTIPO_SEMANAL.Value := Semana;
      end;
      if CB_Periodicidade.ItemIndex = 3 then begin // Mensal
        C_Config_CompTIPO.Value := 'M';
        C_Config_CompTIPO_MENSAL.Value := Trunc(SE_Mensal.Value);
      end;
      C_Config_CompDATA_INI.Value := DF_DataInicial.Date;
      C_Config_CompDATA_FIM.Value := DF_DataFinal.Date;
      C_Config_Comp.Post;
      C_Config_Comp.ApplyUpdates(0);
      DMAgenda.MudaPeriodicidade( ApagaTodos, C_Config_CompCONFIG_ID.Value,
        C_Config_CompTIPO.Value[1], C_Config_CompTIPO_SEMANAL.Value,
        C_Config_CompTIPO_MENSAL.Value, C_Config_CompDATA_INI.Value,
        C_Config_CompDATA_FIM.Value, C_TabelaDATA.Value,
        C_TabelaUSUDESTINO.Value, C_TabelaUSUORIGEM.Value,
        C_TabelaASSUNTO.Value, C_TabelaDESCRICAO.Value,
        C_TabelaHORARIO.Value, C_TabelaHORARIO_FINAL.Value,
        C_TabelaCLIENTE.Value, C_TabelaCATEGORIA.Value,
        C_TabelaTAREFA.Value, C_TabelaCONCLUIDO.Value[1],
        C_TabelaDESATIVADO.Value[1], Self,
        C_Consulta, C_TabelaCOMPROMISSO.Value, C_TabelaUSUARIOS.Value,
        pbPeriodicidade, Application );
    end;
    pbPeriodicidade.Visible := False;
  end;

}

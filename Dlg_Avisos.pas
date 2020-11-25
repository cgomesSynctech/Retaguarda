unit Dlg_Avisos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, ComCtrls,
  TS_PageControl, Db, Provider, DBClient, IBCustomDataSet, IBQuery,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, TS_QDBGrid,
  dxEditor, dxExEdtr, dxEdLib, TS_DateTimePicker, IBUpdateSQL,
  TS_BitBtn, Menus, TS_PopupMenu, BTOdeum, Placemnt;

type
  TDlgAvisos = class(TFrmModeloCadastros)
    TS_PageControl1: TTS_PageControl;
    tsLembrete: TTS_TabSheet;
    tsAlerta: TTS_TabSheet;
    tsMemorizacao: TTS_TabSheet;
    dbgMemorizacao: TTS_QDBGrid;
    dbgMemorizacaoMEMORIZACAO: TdxDBGridMaskColumn;
    dbgMemorizacaoDATA: TdxDBGridDateColumn;
    dbgMemorizacaoORIGEM: TdxDBGridMaskColumn;
    dbgMemorizacaoIDGERADOR: TdxDBGridMaskColumn;
    dbgMemorizacaoDESCRICAO: TdxDBGridMaskColumn;
    dbgMemorizacaoTIPO: TdxDBGridMaskColumn;
    dbgMemorizacaoNUMERO: TdxDBGridMaskColumn;
    dbgMemorizacaoFORMNAME: TdxDBGridMaskColumn;
    Q_Memorizacao: TIBQuery;
    C_Memorizacao: TClientDataSet;
    C_MemorizacaoMEMORIZACAO: TIntegerField;
    C_MemorizacaoDATA: TDateField;
    C_MemorizacaoORIGEM: TIntegerField;
    C_MemorizacaoIDGERADOR: TIntegerField;
    C_MemorizacaoDESCRICAO: TStringField;
    C_MemorizacaoNUMERO: TStringField;
    C_MemorizacaoTIPO: TStringField;
    C_MemorizacaoFORMNAME: TStringField;
    Q_MemorizacaoProvider: TDataSetProvider;
    C_MemorizacaoDS: TDataSource;
    dbgLembrete: TTS_QDBGrid;
    Q_Lembretes: TIBQuery;
    C_Lembretes: TClientDataSet;
    Q_LembretesProvider: TDataSetProvider;
    C_LembretesDS: TDataSource;
    C_LembretesLEMBRETE: TIntegerField;
    C_LembretesDATAINICIAL: TDateField;
    C_LembretesOBS: TStringField;
    C_LembretesSITUACAO: TStringField;
    C_LembretesDOMINGO: TStringField;
    C_LembretesSEGUNDA: TStringField;
    C_LembretesTERCA: TStringField;
    C_LembretesQUARTA: TStringField;
    C_LembretesQUINTA: TStringField;
    C_LembretesSEXTA: TStringField;
    C_LembretesSABADO: TStringField;
    dbgLembreteOBS: TdxDBGridMaskColumn;
    C_LembretesTIPO: TIntegerField;
    dbgLembreteSITUACAO: TdxDBGridCheckColumn;
    U_Lembretes: TIBUpdateSQL;
    Grid_Alerta: TTS_QDBGrid;
    C_AlertaDS: TDataSource;
    C_Alerta: TClientDataSet;
    C_AlertaCodigo: TIntegerField;
    C_AlertaDescricao: TStringField;
    Grid_AlertaCodigo: TdxDBGridMaskColumn;
    Grid_AlertaDescricao: TdxDBGridMaskColumn;
    C_AlertaCondicao: TStringField;
    Grid_AlertaCondicao: TdxDBGridMaskColumn;
    dbgLembreteLEMBRETE: TdxDBGridMaskColumn;
    Q_LookFavorecido: TIBQuery;
    C_MemorizacaolkDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgMemorizacaoDblClick(Sender: TObject);
    procedure dbgLembreteDblClick(Sender: TObject);
    procedure FiltraTabela;
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAvisos: TDlgAvisos;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgAvisos.FiltraTabela;
var nDia,xDia: integer;
    bOk: Boolean;
begin
  Q_LookFavorecido.Close;
  Q_LookFavorecido.Open;  
  C_Memorizacao.Close;
  C_Memorizacao.Open;
  Q_Lembretes.Params[0].Value := DmProjeto.dDataSistema;
  nDia := DayOfWeek(DMProjeto.dDataSistema);
  xDia := Day(DMProjeto.dDataSistema);
  C_Lembretes.Close;  
  C_Lembretes.open;
  while not C_Lembretes.eof do begin
    if C_LembretesTipo.value = 0 then begin
      if C_LembretesDataInicial.value <> DMProjeto.dDataSistema then
        C_Lembretes.delete
      else
        C_Lembretes.next;
    end
    else if C_LembretesTipo.value = 2 then begin
      bOK := false;
      if (C_LembretesDomingo.value = 'S') and (nDia = 1) then
        bOK := true
      else if (C_LembretesSegunda.value = 'S') and (nDia = 2) then
        bOK := true
      else if (C_LembretesTerca.value = 'S') and (nDia = 3) then
        bOK := true
      else if (C_LembretesQuarta.value = 'S') and (nDia = 4) then
        bOK := true
      else if (C_LembretesQuinta.value = 'S') and (nDia = 5) then
        bOK := true
      else if (C_LembretesSexta.value = 'S') and (nDia = 6) then
        bOK := true
      else if (C_LembretesSabado.value = 'S') and (nDia = 7) then
        bOK := true;

      if not bOK then
        C_Lembretes.delete
      else
        C_Lembretes.next;
    end
    else if C_LembretesTipo.value = 3 then begin
      if Day(C_LembretesDataInicial.value) <> xDia then
        C_Lembretes.delete
      else
        C_Lembretes.next;
    end
    else
      C_Lembretes.next;
  end;
end;

procedure TDlgAvisos.FormCreate(Sender: TObject);
begin
  inherited;
  FiltraTabela;
end;

procedure TDlgAvisos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  C_Memorizacao.Close;
  C_Lembretes.Close;
end;

procedure TDlgAvisos.dbgMemorizacaoDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dbgMemorizacaoIDGERADOR.Field.Value]);
  DMProjeto.CriarForm(dbgMemorizacaoFORMNAME.Field.Value, self, false);
end;

procedure TDlgAvisos.dbgLembreteDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_LembretesLEMBRETE.Value]);
  DMProjeto.CriarForm('frmlembrete', self, false);
end;

procedure TDlgAvisos.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  FiltraTabela;
end;

procedure TDlgAvisos.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Lembretes.State = dsEdit then
    C_Lembretes.Post;

  if (C_Lembretes.ChangeCount > 0) then begin
    if not DMProjeto.IBT_Projeto.inTransaction then
      DMProjeto.IBT_Projeto.StartTransaction;
    try
      C_Lembretes.ApplyUpdates(0);
      DMProjeto.IBT_Projeto.CommitRetaining;
    except
    end;
  end;
end;

procedure TDlgAvisos.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if not C_Alerta.Active then begin
    C_Alerta.CreateDataSet;
    C_Alerta.EmptyDataSet;
  end;  

 with DMProjeto do begin
   Q_SQL.Sql.Text := 'select alerta, tipo, valor, condicao from alertas';
   Q_SQL.Open;
   while not Q_SQL.Eof do begin
      if (Q_SQL.FieldByName('TIPO').Value = 0) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select * from pp_saldo_clientes sc '+
                           'where ' +
                           '  sc.favorecido in (select chave from alertasitens  where alerta = :pAlerta)';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;                           
        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('FAVORECIDO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Que ultrapassam o limite de credito - Cliente';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 0
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 1) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida CODIGO, f.nome NOME, tf.descricao ' +
            ' from saidas s, favorecidos f, tiposfavorecido tf ' +
            ' where s.favorecido = f.favorecido AND ' +
            ' tf.tipofavorecido = f.tipofavorecido AND' +
            ' (saidas.tipopadrao = 1) and (saidas.situacao = ''N'') and ' +
            ' saidas.favorecido in (select chave from alertasitens ' +
            ' where alerta = :pAlerta) and ' +
            ' extract(month from saidas.data) = :pMes ' +
            ' group by f.nome, s.saida, tf.descricao ' +
            ' having sum(s.total) ' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Mes(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;
        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Com vendas no período ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Cliente';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 1
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 2) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida CODIGO, f.nome NOME, tf.descricao ' +
            ' from saidas s, favorecidos f, tiposfavorecido tf' +
            ' where s.favorecido = f.favorecido AND' +
            ' tf.tipofavorecido = f.tipofavorecido AND' +
            ' s.tipopadrao = 1 and s.situacao = ''N'' and' +
            ' s.favorecido in (select chave from alertasitens' +
            ' where alerta =  :pAlerta) and' +
            ' extract(year from saidas.data) = :pAno' +
            ' group by f.nome, s.saida, tf.descricao' +
            ' having sum(s.total) ' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

           Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
           Q_SQL2.Params[1].AsInteger := Ano(DMProjeto.dDataSistema);
           Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;
        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Com vendas no ano ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Cliente';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 2
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 4) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida CODIGO, f.nome NOME' +
            ' from saidas s, favorecidos f ' +
            ' where s.favorecido = f.favorecido and (saidas.tipopadrao = 1) and ' +
            ' (saidas.situacao = ''N'') and (saidas.favorecido in ' +
            '(select chave from alertasitens  where alerta = :pAlerta ) ) and' +
            '(extract(month from saidas.data) = :pMes)' +
            ' group by f.nome, s.saida ' +
            ' having sum(s.total) ' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Mes(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;
        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Volume em compras no periodo ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - FUNCIONARIO';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 4
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 13) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida CODIGO, f.nome NOME' +
            ' from saidas s, favorecidos f ' +
            ' where s.favorecido = f.favorecido and (saidas.tipopadrao = 1) and ' +
            ' (saidas.situacao = ''N'') and (saidas.favorecido in ' +
            '(select chave from alertasitens  where alerta = :pAlerta ) ) and' +
            '(extract(year from saidas.data) = :pAno)' +
            ' group by f.nome, s.saida ' +
            ' having sum(s.total) ' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Ano(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;
        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Volume em compras no ano ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +                
                                     ' - FUNCIONARIO';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 13
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 7) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida, si.saidaitem CODIGO, i.descricao NOME ' +
            'from saidas s, saidasitens si, itens i ' +
            'where si.saida = s.saida and i.item = si.item and ' +
            '(saidas.tipopadrao = 1) and (saidas.situacao = ''N'') and ' +
            '(saidasitens.item in (select chave from alertasitens ' +
            'where alerta = :pAlerta) ) and ' +
            '(extract(month from saidas.data) = :pMes)' +
            ' group by s.saida, si.saidaitem , i.descricao ' +
            ' having sum(si.quantidade)'+ Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Mes(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Vendas no periodo ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 7
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 8) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida, si.saidaitem CODIGO, i.descricao NOME' +
            ' from saidas s, saidasitens si, itens i' +
            ' where si.saida = s.saida and i.descricao = si.descricao and'+
            ' saidas.tipopadrao = 1 and saidas.situacao = ''N'' and'+
            ' saidasitens.item in (select chave from alertasitens' +
            ' where alerta = :pAlerta) and' +
            ' extract(year from saidas.data) = :pAno' +
            ' group by s.saida, si.saidaitem , i.descricao' +
            ' having sum(si.quantidade)' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Ano(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Vendas no ano ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 8
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 9) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida CODIGO, si.saidaitem , f.nome NOME' +
                ' from saidas s, saidasitens si, favorecidos f' +
                ' where si.saida = s.saida and' +
                ' f.favorecido = s.favorecido and' +
                ' (saidas.tipopadrao = 1) and' +
                ' (saidas.situacao = ''N'') and' +
                ' (saidasitens.item in (select chave from alertasitens' +
                ' where alerta = :alerta) ) and' +
                ' (extract(month from saidas.data) = :pmes)' +
                ' group by s.saida, si.saidaitem, f.nome' +
                ' having sum(si.quantidade)' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Mes(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Quantidade vendida no periodo ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 9
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 10) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select s.saida CODIGO, si.saidaitem , f.nome NOME' +
                ' from saidas s, saidasitens si, favorecidos f' +
                ' where si.saida = s.saida and' +
                ' f.favorecido = s.favorecido and' +
                ' (saidas.tipopadrao = 1) and' +
                ' (saidas.situacao = ''N'') and' +
                ' (saidasitens.item in (select chave from alertasitens' +
                ' where alerta = :alerta) ) and' +
                ' (extract(year from saidas.data) = :pAno)' +
                ' group by s.saida, si.saidaitem, f.nome' +
                ' having sum(si.quantidade)' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Ano(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Quantidade vendida no ano ' +
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +                                      
                                     ' - Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 10
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 11) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select li.conta, f.nome '+
               ' from lancamentos l, lancamentositens li, favorecidos f'+
               ' where l.lancamento = li.lancamento AND'+
               '  li.favorecido = f.favorecido AND'+
               '  extract(month from l.data) = :pmes AND' +
               '  li.conta in ( select chave from alertasitens where alerta = :alerta )' +
               ' group by f.nome, li.conta ' +
               ' having sum(li.valor)' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Mes(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Saldo no periodo '+
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Contas';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 11
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 12) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select li.conta, f.nome'+
               ' from lancamentos l, lancamentositens li, favorecidos f'+
               ' where l.lancamento = li.lancamento AND'+
               ' li.favorecido = f.favorecido AND'+
               ' extract(year from l.data) = :pAno AND' +
               ' li.conta in ( select chave from alertasitens where alerta = :alerta )' +
               ' group by f.nome, li.conta ' +
               ' having sum(li.valor)' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;
        Q_SQL2.Params[1].AsInteger := Ano(DMProjeto.dDataSistema);
        Q_SQL2.Params[2].AsInteger := Q_Sql.FieldByName('valor').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Saldo no ano - '+
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     'Contas';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 12
//************************************

      if (Q_SQL.FieldByName('TIPO').Value = 3) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select f.codigo, f.nome, f.favorecido, ' +
                  '(select sum(faltareceber) '+
                  ' from titulosareceber t ' +
                  ' where cliente = f.favorecido and status > 0) ' +
                  ' from Favorecidos f ' +  //FROM
                  ' where f.tipofavorecido = 1 and f.desativado = ''N'' AND ' +
                  '(select sum(faltareceber) '+
                  ' from titulosareceber t ' +
                  ' where cliente = f.favorecido and status > 0) '+Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor'+
                  ' and '+
                  '(not exists(select chave from alertasitens where alerta = :alerta) '+
                  ' or '+
                  'f.favorecido in (select chave from alertasitens where alerta = :alerta))';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('valor').Value;
        Q_SQL2.Params[1].AsInteger := Q_Sql.FieldByName('alerta').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Com saldo atual - '+
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' Cliente';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 3
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 14) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select item, CODIGO, i.descricao ' +
                ' from  itens i' +
                ' where tipoitem = 1 and desativado = ''N'' and ' +
                ' item in (select chave from alertasitens' +
                '        where alerta = :pAlerta) and' +
                ' i.estoque < i.qtdeminimo';
        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Abaixo do mínimo - '+
                                     'Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 14
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 15) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select item, CODIGO, i.descricao ' +
                ' from  itens i' +
                ' where tipoitem = 1 and desativado = ''N'' and ' +
                ' item in (select chave from alertasitens' +
                '        where alerta = :pAlerta) and' +
                ' i.estoque < i.pontopedido';
        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Abaixo do ponto médio - '+
                                     'Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 15
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 16) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select item, CODIGO, i.descricao ' +
                ' from  itens i' +
                ' where tipoitem = 1 and desativado = ''N'' and ' +
                ' item in (select chave from alertasitens' +
                '        where alerta = :pAlerta) and' +
                ' i.estoque > 0';
        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('alerta').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Que estão no estoque - '+
                                     'Itens';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 16
//************************************
      if (Q_SQL.FieldByName('TIPO').Value = 5) then begin
        Q_SQL2.Close;
        Q_SQL2.Sql.Text := 'select f.nome, f.favorecido, ' +
                  '(select sum(valor-valorpago-descontos-creditoutilizado) '+
                  ' from titulosareceber t' +
                  ' where cliente = f.favorecido and t.venda = s.saida and status > 0)' +
                  ' from Saidas s, Favorecidos f, titulosareceber t' +
                  ' where t.venda = s.saida and' +
                  ' s.favorecido = f.favorecido and s.tipopadrao = 1 and' +
                  ' tipofavorecido = 3 and desativado = ''N'' AND' +
                  ' (select sum(valor-valorpago-descontos-creditoutilizado)' +
                  ' from titulosareceber' +
                  ' where cliente = f.favorecido and t.venda = s.saida and' +
                  ' status > 0)' + Q_Sql.FieldByName('CONDICAO').AsString + ':pvalor'+
                  ' and f.favorecido in (select chave from alertasitens where alerta = :alerta)';

        Q_SQL2.Params[0].AsInteger := Q_Sql.FieldByName('valor').Value;
        Q_SQL2.Params[1].AsInteger := Q_Sql.FieldByName('alerta').Value;

        Q_SQL2.Open;
        while not Q_SQL2.Eof do begin
          C_Alerta.Append;
          C_AlertaCodigo.Value    := Q_Sql2.FieldByName('CODIGO').Value;
          C_AlertaDescricao.Value := Q_Sql2.FieldByName('NOME').Value;
          C_AlertaCondicao.Value  := 'Com saldo atual - '+
                                     Q_Sql.FieldByName('CONDICAO').AsString +
                                     Q_Sql.FieldByName('valor').AsString +
                                     ' - Funcionario';
          C_Alerta.Post;
          Q_SQL2.Next;
        end; // while not Q_Sql2.EOF
      end; // if Q_SQL.FieldByName('TIPO').Value = 5
//************************************

      Q_Sql.Next;
    end; // while not Q_Sql.EOF
 end; // with
end;

end.

